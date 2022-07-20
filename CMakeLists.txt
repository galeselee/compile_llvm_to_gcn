cmake_minimum_required(VERSION 3.15)

project(compile_llvm_to_gcn)

find_package(LLVM REQUIRED)
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
llvm_map_components_to_libnames(libs_amdgpu AMDGPU)

add_executable(run 
               src/main.cpp 
               src/logger.h)
target_link_libraries(run ${libs_amdgpu})
