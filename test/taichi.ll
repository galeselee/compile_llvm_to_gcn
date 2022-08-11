; ModuleID = 'runtime_bitcode'
source_filename = "runtime.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn--amdhsa-hcc"

%struct.LLVMRuntime = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager*], [1024 x %struct.NodeManager*], [1024 x i8*], i8*, %struct.RandState*, %struct.MemRequestQueue*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ListManager = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime* }
%struct.NodeManager = type <{ %struct.LLVMRuntime*, i32, i32, i32, i32, %struct.ListManager*, %struct.ListManager*, %struct.ListManager*, i32, [4 x i8] }>
%struct.RandState = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue = type { [65536 x %struct.MemRequest], i32, i32 }
%struct.MemRequest = type { i64, i64, i8*, i64 }

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_retrieve_and_reset_error_code(%struct.LLVMRuntime* nocapture %0) local_unnamed_addr #0 {
  %runtime_retrieve_and_reset_error_code.kernarg.segment = call nonnull align 16 dereferenceable(8) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_retrieve_error_message(%struct.LLVMRuntime* nocapture %0, i32 %1) local_unnamed_addr #0 {
  %runtime_retrieve_error_message.kernarg.segment = call nonnull align 16 dereferenceable(12) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_retrieve_error_message_argument(%struct.LLVMRuntime* nocapture %0, i32 %1) local_unnamed_addr #0 {
  %runtime_retrieve_error_message_argument.kernarg.segment = call nonnull align 16 dereferenceable(12) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_ListManager_get_num_active_chunks(%struct.LLVMRuntime* nocapture %0, %struct.ListManager* nocapture %1) local_unnamed_addr #0 {
  %runtime_ListManager_get_num_active_chunks.kernarg.segment = call nonnull align 16 dereferenceable(16) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_memory_allocate_aligned(%struct.LLVMRuntime* nocapture %0, i64 %1, i64 %2) local_unnamed_addr #0 {
  %runtime_memory_allocate_aligned.kernarg.segment = call nonnull align 16 dereferenceable(24) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_get_mem_req_queue(%struct.LLVMRuntime* nocapture %0) local_unnamed_addr #0 {
  %runtime_get_mem_req_queue.kernarg.segment = call nonnull align 16 dereferenceable(8) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_initialize(i8* nocapture %0, i8* nocapture %1, i64 %2, i8* nocapture %3, i32 %4, i32 %5, i8* nocapture %6, i8* nocapture %7, i8* nocapture %8) local_unnamed_addr #0 {
  %runtime_initialize.kernarg.segment = call nonnull align 16 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_initialize_snodes(%struct.LLVMRuntime* nocapture %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5, i8* nocapture %6, i1 zeroext %7) local_unnamed_addr #0 {
  %runtime_initialize_snodes.kernarg.segment = call nonnull align 16 dereferenceable(52) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_NodeAllocator_initialize(%struct.LLVMRuntime* nocapture %0, i32 %1, i64 %2) local_unnamed_addr #0 {
  %runtime_NodeAllocator_initialize.kernarg.segment = call nonnull align 16 dereferenceable(24) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define dso_local amdgpu_kernel void @runtime_allocate_ambient(%struct.LLVMRuntime* nocapture %0, i32 %1, i64 %2) local_unnamed_addr #0 {
  %runtime_allocate_ambient.kernarg.segment = call nonnull align 16 dereferenceable(24) i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr()
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i8 addrspace(4)* @llvm.amdgcn.kernarg.segment.ptr() #1

; Function Attrs: convergent nounwind
declare { i1, i64 } @llvm.amdgcn.if.i64(i1) #2

; Function Attrs: convergent nounwind
declare { i1, i64 } @llvm.amdgcn.else.i64.i64(i64) #2

; Function Attrs: convergent nounwind readnone
declare i64 @llvm.amdgcn.if.break.i64.i64(i1, i64) #3

; Function Attrs: convergent nounwind
declare i1 @llvm.amdgcn.loop.i64(i64) #2

; Function Attrs: convergent nounwind
declare void @llvm.amdgcn.end.cf.i64(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #4

attributes #0 = { alwaysinline norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="true" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { convergent nounwind }
attributes #3 = { convergent nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"HCC clang version 10.0.0 (/home/jiahan/rocmv26-dp4x/rocm_build/hcc/llvm-project/clang f72acb546e012dcf4114982bea9fda46b7f9b198) (based on HCC 3.1.21091-9ded44fd-f72acb546e01 )"}
