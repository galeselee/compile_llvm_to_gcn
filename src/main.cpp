#include <iostream>
#include <algorithm>
#include <string>
#include <cstring>
#include <sstream>
#include <fstream>
#include <cstdlib>
#include <assert.h>

#include <llvm/Analysis/TargetTransformInfo.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Linker/Linker.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/TargetRegistry.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/CodeGen.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Target/TargetMachine.h>
#include <llvm/Transforms/IPO.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>

#include "logger.h"

void store_file(const std::string& filename, const std::string& str);
std::string load_file(const std::string& filename);
std::string emit_gcn(const std::string &filename, const std::string& mcpu, int opt_level);

int main(int argc, char** argv) {
    assert(argc == 4);
    std::string filename = argv[1];
    std::string mcpu = argv[2];
    int opt_level = std::stoi(argv[3]);
    emit_gcn(filename, mcpu, opt_level);
    return 0;
}

void store_file(const std::string& filename, const std::string& str) {
    std::ofstream dst_file(filename);
    if (!dst_file)
        exit(1);
    dst_file << str;
    dst_file.close();
}

std::string load_file(const std::string& filename) {
    std::ifstream src_file(filename);
    if (!src_file.is_open())
        exit(1);

    return std::string(std::istreambuf_iterator<char>(src_file), (std::istreambuf_iterator<char>()));
}

static std::string get_ocml_config(int target) {
    std::string config = R"(
        ; Module anydsl ocml config
        @__oclc_finite_only_opt = addrspace(4) constant i8 0
        @__oclc_unsafe_math_opt = addrspace(4) constant i8 0
        @__oclc_daz_opt = addrspace(4) constant i8 0
        @__oclc_correctly_rounded_sqrt32 = addrspace(4) constant i8 0
        @__oclc_ISA_version = addrspace(4) constant i32 )";
    return config + std::to_string(target);
}

std::string emit_gcn(const std::string &filename, const std::string& mcpu, int opt_level) {
    std::vector<const char*> llvm_args = { "gcn"};
    llvm::cl::ParseCommandLineOptions(llvm_args.size(), llvm_args.data(), "LLVM IR to GCN\n");

    LLVMInitializeAMDGPUTarget();
    LLVMInitializeAMDGPUTargetInfo();
    LLVMInitializeAMDGPUTargetMC();
    LLVMInitializeAMDGPUAsmPrinter();

    const std::string& program = load_file(filename);

    llvm::LLVMContext llvm_context;
    llvm::SMDiagnostic diagnostic_err;
    std::unique_ptr<llvm::Module> llvm_module = llvm::parseIR(llvm::MemoryBuffer::getMemBuffer(program)->getMemBufferRef(), diagnostic_err, llvm_context);

    if (!llvm_module) {
        std::string stream;
        llvm::raw_string_ostream llvm_stream(stream);
        diagnostic_err.print("", llvm_stream);
        exit(1);
    }

    auto triple_str = llvm_module->getTargetTriple();
    std::string error_str;
    auto target = llvm::TargetRegistry::lookupTarget(triple_str, error_str);
    llvm::TargetOptions options;
    options.AllowFPOpFusion = llvm::FPOpFusion::Fast;
    options.NoTrappingFPMath = true;
    std::unique_ptr<llvm::TargetMachine> machine(target->createTargetMachine(triple_str, mcpu, "-trap-handler", options, llvm::Reloc::PIC_, llvm::CodeModel::Small, llvm::CodeGenOpt::Aggressive));

    // link ocml.amdgcn and ocml config
    std::string ocml_file = "/opt/rocm/lib/ocml.amdgcn.bc";
    std::string ocml_config = get_ocml_config(std::stoi(&mcpu[3]));
    std::unique_ptr<llvm::Module> ocml_module(llvm::parseIRFile(ocml_file, diagnostic_err, llvm_context));

    if (ocml_module == nullptr)
        exit(1);

    std::unique_ptr<llvm::Module> config_module = llvm::parseIR(llvm::MemoryBuffer::getMemBuffer(ocml_config)->getMemBufferRef(), diagnostic_err, llvm_context);

    if (config_module == nullptr)
        exit(1);

    // override data layout with the one coming from the target machine
    llvm_module->setDataLayout(machine->createDataLayout());
    ocml_module->setDataLayout(machine->createDataLayout());
    config_module->setDataLayout(machine->createDataLayout());

    llvm::Linker linker(*llvm_module.get());
    if (linker.linkInModule(std::move(config_module), llvm::Linker::Flags::None))
        exit(1);
    if (linker.linkInModule(std::move(ocml_module), llvm::Linker::Flags::LinkOnlyNeeded))
        exit(1);

    llvm::legacy::FunctionPassManager function_pass_manager(llvm_module.get());
    llvm::legacy::PassManager module_pass_manager;

    module_pass_manager.add(llvm::createTargetTransformInfoWrapperPass(machine->getTargetIRAnalysis()));
    function_pass_manager.add(llvm::createTargetTransformInfoWrapperPass(machine->getTargetIRAnalysis()));

    llvm::PassManagerBuilder builder;
    builder.OptLevel = opt_level;
    builder.Inliner = llvm::createFunctionInliningPass(builder.OptLevel, 0, false);
    machine->adjustPassManager(builder);
    builder.populateFunctionPassManager(function_pass_manager);
    builder.populateModulePassManager(module_pass_manager);

    machine->Options.MCOptions.AsmVerbose = true;

    llvm::SmallString<0> outstr;
    llvm::raw_svector_ostream llvm_stream(outstr);

    machine->addPassesToEmitFile(module_pass_manager, llvm_stream, nullptr, llvm::CGFT_ObjectFile, true);

    function_pass_manager.doInitialization();
    for (auto func = llvm_module->begin(); func != llvm_module->end(); ++func)
        function_pass_manager.run(*func);
    function_pass_manager.doFinalization();
    module_pass_manager.run(*llvm_module);

    std::string obj(outstr.begin(), outstr.end());
    std::string obj_file = filename + ".o";
    std::string gcn_file = filename + ".gcn";
    store_file(obj_file, obj);
    std::string lld_cmd = "ld.lld -shared " + obj_file + " -o " + gcn_file;
    if (std::system(lld_cmd.c_str()))
        exit(1);

    return load_file(gcn_file);
}
















