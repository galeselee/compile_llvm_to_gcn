cmake_minimum_required(VERSION 3.15)

project(compile_llvm_to_gcn)

SET(CMAKE_BUILD_TYPE "Debug")
SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -g -ggdb")

set(CMAKE_PREFIX_PATH /home/taichigraphics/zeyuli/pr/part/llvm/taichi-llvm-15.0.0-linux/lib/cmake)
find_package(LLVM REQUIRED)
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
message(${LLVM_INCLUDE_DIRS})
llvm_map_components_to_libnames(libs_amdgpu AMDGPU)

add_executable(run 
               src/main.cpp 
               )
target_link_libraries(run ${libs_amdgpu})
