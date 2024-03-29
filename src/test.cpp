#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include <llvm/Analysis/TargetTransformInfo.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Linker/Linker.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/MC/TargetRegistry.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/CodeGen.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Target/TargetMachine.h>
#include <llvm/Transforms/IPO.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>
#include <iostream>
using namespace llvm;

inline bool starts_with(std::string const &str, std::string const &ending) {
  if (ending.size() > str.size())
    return false;
  else
    return std::equal(ending.begin(), ending.end(), str.begin());
}

struct AMDGPUConvertAllocaInstAddressSpacePass : public FunctionPass {
  static char ID;
  AMDGPUConvertAllocaInstAddressSpacePass() : FunctionPass(ID) {
  }
  bool runOnFunction(llvm::Function &f) override {
    f.addFnAttr("target-cpu",
                "gfx1030" );
    f.addFnAttr("target-features", "");
    for (auto &bb : f) {
      std::vector<AllocaInst *> alloca_inst_vec;
      for (Instruction &inst : bb) {
        AllocaInst *now_alloca = dyn_cast<AllocaInst>(&inst);
        if (!now_alloca ||
            now_alloca->getType()->getAddressSpace() != (unsigned)0) {
          continue;
        }
        alloca_inst_vec.push_back(now_alloca);
      }
      for (auto &allocainst : alloca_inst_vec) {
        auto alloca_type = allocainst->getAllocatedType();
        IRBuilder<> builder(allocainst);
        auto *new_alloca = builder.CreateAlloca(alloca_type, (unsigned)5);
        auto new_type = llvm::PointerType::get(alloca_type, (unsigned)0);
        new_alloca->setAlignment(Align(allocainst->getAlign().value()));
        auto *addrspacecast = builder.CreateAddrSpaceCast(new_alloca, new_type);
        allocainst->replaceAllUsesWith(addrspacecast);
        allocainst->eraseFromParent();
      }
    }
    return false;
  }
};

struct AMDGPUConvertFuncParamAddressSpacePass : public ModulePass {
  static char ID;
  AMDGPUConvertFuncParamAddressSpacePass() : ModulePass(ID) {
  }
  bool runOnModule(llvm::Module &M) override {
    for (auto &f : M) {
      bool is_kernel = false;
      const std::string func_name = f.getName().str();
      if (starts_with(func_name, "runtime_")) {
        f.setCallingConv(llvm::CallingConv::AMDGPU_KERNEL);
        // ref https://llvm.org/docs/AMDGPUUsage.html
        // “amdgpu-flat-work-group-size”=”min,max”
        // Specify the minimum and maximum flat work group sizes that will be
        // specified when the kernel is dispatched. Generated by the
        // amdgpu_flat_work_group_size CLANG attribute [CLANG-ATTR]. The implied
        // default value is 1,1024.
        f.addFnAttr("amdgpu-flat-work-group-size", "1, 1024");
        is_kernel = true;
      }
      if (!is_kernel && !f.isDeclaration())
        f.setLinkage(llvm::Function::PrivateLinkage);
    }
    std::vector<llvm::Function *> kernel_function;
    for (auto &f : M) {
      if (f.getCallingConv() == llvm::CallingConv::AMDGPU_KERNEL)
        kernel_function.push_back(&f);
    }
    for (auto &f : kernel_function) {
      llvm::FunctionType *func_type = f->getFunctionType();
      std::vector<llvm::Type *> new_func_params;
      for (auto &arg : f->args()) {
        if (arg.getType()->getTypeID() == llvm::Type::PointerTyID) {
          auto new_type = llvm::PointerType::get(
              arg.getType()->getPointerElementType(), unsigned(1));
          new_func_params.push_back(new_type);
        } else {
          new_func_params.push_back(arg.getType());
        }
      }
      auto new_func_type = llvm::FunctionType::get(func_type->getReturnType(),
                                                   new_func_params, false);
      auto new_func = llvm::Function::Create(new_func_type, f->getLinkage(),
                                             f->getAddressSpace());
      new_func->setCallingConv(llvm::CallingConv::AMDGPU_KERNEL);
      new_func->addFnAttr("amdgpu-flat-work-group-size", "1, 1024");
      new_func->addFnAttr(
          "target-cpu",
          "gfx1030");
      new_func->setComdat(f->getComdat());
      f->getParent()->getFunctionList().insert(f->getIterator(), new_func);
      new_func->takeName(f);
      new_func->getBasicBlockList().splice(new_func->begin(),
                                           f->getBasicBlockList());
      for (llvm::Function::arg_iterator I = f->arg_begin(), E = f->arg_end(),
                                        I2 = new_func->arg_begin();
           I != E; ++I, ++I2) {
        if (I->getType()->getTypeID() == llvm::Type::PointerTyID) {
          auto &front_bb = new_func->getBasicBlockList().front();
          llvm::Instruction *addrspacecast =
              new AddrSpaceCastInst(I2, I->getType());
          front_bb.getInstList().insertAfter(front_bb.getFirstInsertionPt(),
                                             addrspacecast);
          I->replaceAllUsesWith(addrspacecast);
          I2->takeName(&*I);
        } else {
          I->replaceAllUsesWith(&*I2);
          I2->takeName(&*I);
        }
      }

      f->eraseFromParent();
    }
    return false;
  }
};

char AMDGPUConvertAllocaInstAddressSpacePass::ID = 0;
char AMDGPUConvertFuncParamAddressSpacePass::ID = 0;


int main() {
    const std::string program = 
        "define dso_local void @runtime_add(double* %0, double* %1, double* %2) #4 {\n"
        "%4 = alloca double*, align 8\n"
        "%5 = alloca double*, align 8\n"
        "%6 = alloca double*, align 8\n"
        "store double* %0, double** %4, align 8\n"
        "store double* %1, double** %5, align 8\n"
        "store double* %2, double** %6, align 8\n"
        "%7 = load double*, double** %4, align 8\n"
        "%8 = load double, double* %7, align 8\n"
        "%9 = load double*, double** %5, align 8\n"
        "%10 = load double, double* %9, align 8\n"
        "%11 = fadd contract double %8, %10\n"
        "%12 = load double*, double** %6, align 8\n"
        "store double %11, double* %12, align 8\n"
        "ret void\n"
        "}\n";
    llvm::LLVMContext llvm_context;
    llvm::SMDiagnostic diagnostic_err;
    std::unique_ptr<llvm::Module> llvm_module = 
        llvm::parseIR(llvm::MemoryBuffer::getMemBuffer(program)->getMemBufferRef(), diagnostic_err, llvm_context);
    llvm::legacy::FunctionPassManager function_pass_manager(llvm_module.get());
    function_pass_manager.add(new AMDGPUConvertAllocaInstAddressSpacePass());
    function_pass_manager.doInitialization();
    for (auto func = llvm_module->begin(); func != llvm_module->end(); ++func) {
      function_pass_manager.run(*func);
    }
    function_pass_manager.doFinalization();
    auto func = llvm_module->getFunction("runtime_add");
    for (auto &bb : *func) {
      for (llvm::Instruction &inst : bb) {
        auto now_alloca = llvm::dyn_cast<AllocaInst>(&inst);
        if (!now_alloca)
          continue;
        std::cout << now_alloca->getAddressSpace() << std::endl;
      }
      int cast_num = 0;
      for (llvm::Instruction &inst : bb) {
        auto cast_inst = llvm::dyn_cast<AddrSpaceCastInst>(&inst);
        if (!cast_inst)
          continue;
        cast_num ++;
      }
      std::cout << cast_num << std::endl;
    }

    llvm::legacy::PassManager module_pass_manager;
    module_pass_manager.add(new AMDGPUConvertFuncParamAddressSpacePass());
    module_pass_manager.run(*llvm_module);
    func = llvm_module->getFunction("runtime_add");

    for (llvm::Function::arg_iterator I = func->arg_begin(), E = func->arg_end();
          I != E; ++I) {
      if (I->getType()->getTypeID() == llvm::Type::PointerTyID) {
        std::cout << I->getType()->getPointerAddressSpace() << std::endl;
      }
    }

    std::string Str;
    raw_string_ostream OS(Str);
    OS << *llvm_module;
    OS.flush();
    std::cout << Str<< std::endl;

}
