# compile_llvm_to_gcn
This repo is based on llvm-10(x86;AMDGPU)

```
mkdir build
cd build
cmake .. && make
```

1. test the GCN result on DCU
Change the code in compile_gcn.cpp 
```
machine->addPassesToEmitFile(module_pass_manager, llvm_stream, nullptr, llvm::CGFT_ObjectFile, true);
machine->addPassesToEmitFile(module_pass_manager, llvm_stream, nullptr, llvm::CGFT_AssemblyFile, true);
```

```
cd test
"/opt/rocm_install/hcc/bin/clang-10" "-cc1" "-D__KALMAR_HC__=1" "-D__HCC_HC__=1" "-famp-is-device" "-fno-builtin" "-fno-common" "-O2" "-triple" "amdgcn--amdhsa-hcc" "-aux-triple" "x86_64-unknown-linux-gnu" "-S" "-disable-free" "-disable-llvm-verifier" "-main-file-name" "vecadd.cpp" "-mrelocation-model" "pic" "-pic-level" "1" "-mthread-model" "posix" "-mframe-pointer=all" "-fmath-errno" "-fno-rounding-math" "-no-integrated-as" "-mconstructor-aliases" "-dwarf-column-info" "-fno-split-dwarf-inlining" "-debugger-tuning=gdb" "-resource-dir" "/opt/rocm_install/hcc/lib/clang/10.0.0" "-I/opt/rocm/hcc/bin/../include" "-I/opt/rocm/hcc/bin/../hcc/include" "-isystem" "/opt/rocm/hcc/include" "-isystem" "/opt/rocm_install/hip/include/hip/hcc_detail/cuda" "-isystem" "/opt/rocm/hsa/include" "-isystem" "/opt/rocm_install/hip/include" "-D" "__HIPCC__" "-D" "__HIP_ARCH_GFX906__=1" "-I/opt/hpc/software/mpi/hpcx/v2.4.1/gcc-7.3.1/include" "-I/opt/hpc/software/mpi/hpcx/v2.4.1/ucx_without_rocm/include" "-I/opt/hpc/software/mpi/hpcx/v2.4.1/sharp/include" "-I/opt/hpc/software/mpi/hpcx/v2.4.1/hcoll/include" "-c-isystem" "/opt/rocm/include" "-c-isystem" "/opt/rh/devtoolset-7/root/usr/include/c++/7" "-c-isystem" "/opt/rh/devtoolset-7/root/usr/include/c++/7/x86_64-redhat-linux" "-c-isystem" "/opt/hpc/software/mpi/pmix/include" "-c-isystem" "/opt/gridview/slurm/include" "-c-isystem" "/opt/gridview/munge/include" "-cxx-isystem" "/opt/rocm/include" "-cxx-isystem" "/opt/rh/devtoolset-7/root/usr/include/c++/7" "-cxx-isystem" "/opt/rh/devtoolset-7/root/usr/include/c++/7/x86_64-redhat-linux" "-internal-isystem" "/opt/rh/devtoolset-7/root/usr/lib/gcc/x86_64-redhat-linux/7/../../../../include/c++/7" "-internal-isystem" "/opt/rh/devtoolset-7/root/usr/lib/gcc/x86_64-redhat-linux/7/../../../../include/c++/7/x86_64-redhat-linux" "-internal-isystem" "/opt/rh/devtoolset-7/root/usr/lib/gcc/x86_64-redhat-linux/7/../../../../include/c++/7/backward" "-internal-isystem" "/usr/local/include" "-internal-isystem" "/opt/rocm_install/hcc/lib/clang/10.0.0/include" "-internal-externc-isystem" "/include" "-internal-externc-isystem" "/usr/include" "-Wno-deprecated-register" "-std=c++amp" "-fdeprecated-macro" "-fno-dwarf-directory-asm" "-fdebug-compilation-dir" "/xddata/home/acelk16z9x/workspace/vecadd" "-ferror-limit" "19" "-fmessage-length" "0" "-fgnuc-version=4.2.1" "-fobjc-runtime=gcc" "-fcxx-exceptions" "-fexceptions" "-fdiagnostics-show-option" "-fcolor-diagnostics" "-famp" "-fhsa-ext" "-fgpu-rdc" "-emit-llvm" "-o" "vecadd-device.ll" "-x" "hc-kernel" "vecadd.cpp"
cp ../build/run .
./run vecadd-device.ll gfx906 0
llc -mcpu=gfx906 vecadd-device.ll
diff vecadd-device.ll.s vecadd-device.s
```
2. compile llvm ir to hsaco
```
run taichi.ll // you will find taichi.o and taichi.hsaco
```

3. load Module from hsaco
```
hipcc load.cpp -o load
./load taichi.hsaco
```

