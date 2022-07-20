; ModuleID = 'vecadd.cpp'
source_filename = "vecadd.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.hip_impl::program_state" = type { %"class.hip_impl::program_state_impl"* }
%"class.hip_impl::program_state_impl" = type opaque
%"class.Kalmar::index" = type { %"struct.Kalmar::index_impl" }
%"struct.Kalmar::index_impl" = type { %"class.Kalmar::__index_leaf" }
%"class.Kalmar::__index_leaf" = type { i32, i32 }
%"class.Kalmar::index.0" = type { %"struct.Kalmar::index_impl.1" }
%"struct.Kalmar::index_impl.1" = type { %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf.2" }
%"class.Kalmar::__index_leaf.2" = type { i32, i32 }
%"class.Kalmar::index.3" = type { %"struct.Kalmar::index_impl.4" }
%"struct.Kalmar::index_impl.4" = type { %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.5" }
%"class.Kalmar::__index_leaf.5" = type { i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%"class.hip_impl::kernarg" = type { %"struct.hip_impl::kernarg_impl"* }
%"struct.hip_impl::kernarg_impl" = type opaque
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.6", %"struct.std::_Head_base.11" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Tuple_impl.7", %"struct.std::_Head_base.10" }
%"struct.std::_Tuple_impl.7" = type { %"struct.std::_Tuple_impl.8", %"struct.std::_Head_base.9" }
%"struct.std::_Tuple_impl.8" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { i32 }
%"struct.std::_Head_base.9" = type { double* }
%"struct.std::_Head_base.10" = type { double* }
%"struct.std::_Head_base.11" = type { double* }
%"class.hip_impl::kernargs_size_align" = type { i8* }
%struct.ihipModuleSymbol_t = type opaque
%struct.hsa_agent_s = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"__cxxamp_opencl_index\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [44 x i8] c"/opt/rocm/hcc/bin/../include/kalmar_index.h\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [24 x i8] c"__HIP_global_function__\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [11 x i8] c"vecadd.cpp\00", section "llvm.metadata"
@_ZSt4cout = external addrspace(1) global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr addrspace(4) constant [5 x i8] c"Done\00", align 1
@__hip_device_heap = external addrspace(1) global [0 x i8], align 1
@__hip_device_page_flag = external addrspace(1) global [0 x i32], align 4
@_ZZN8hip_impl17get_program_stateEvE2ps = linkonce_odr hidden addrspace(1) global %"class.hip_impl::program_state" zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double*, i32)* @_Z3addPdS_S_i to i8*)], section "llvm.metadata"
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC2Ev(%"class.Kalmar::index"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev(%"struct.Kalmar::index_impl"* %base_) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev(%"struct.Kalmar::index_impl"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC1Ev(%"class.Kalmar::index"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi1EEC2Ev(%"class.Kalmar::index"* %this1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC2ERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %other.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %other.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %other, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %0, i32 0, i32 0
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_(%"struct.Kalmar::index_impl"* %base_, %"struct.Kalmar::index_impl"* dereferenceable(8) %base_2) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_(%"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"* dereferenceable(8) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %other.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %other.addr to %"struct.Kalmar::index_impl"**
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl"* %other, %"struct.Kalmar::index_impl"** %other.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %other.addr.ascast, align 8
  %1 = bitcast %"struct.Kalmar::index_impl"* %0 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %1) #10
  %2 = load i32, i32* %call, align 4
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei(%"struct.Kalmar::index_impl"* %this1, i32 %2) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC1ERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %other.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %other.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %other, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %other.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi1EEC2ERKS1_(%"class.Kalmar::index"* %this1, %"class.Kalmar::index"* dereferenceable(8) %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC2Ei(%"class.Kalmar::index"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %i0.addr = alloca i32, align 4, addrspace(5)
  %i0.addr.ascast = addrspacecast i32 addrspace(5)* %i0.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %i0, i32* %i0.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %i0.addr.ascast, align 4
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei(%"struct.Kalmar::index_impl"* %this, i32 %component) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %component.addr = alloca i32, align 4, addrspace(5)
  %component.addr.ascast = addrspacecast i32 addrspace(5)* %component.addr to i32*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %component, i32* %component.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %component.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC1Ei(%"class.Kalmar::index"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %i0.addr = alloca i32, align 4, addrspace(5)
  %i0.addr.ascast = addrspacecast i32 addrspace(5)* %i0.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %i0, i32* %i0.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %0 = load i32, i32* %i0.addr.ascast, align 4
  call void @_ZN6Kalmar5indexILi1EEC2Ei(%"class.Kalmar::index"* %this1, i32 %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC2EPKi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi(%"struct.Kalmar::index_impl"* %base_, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi(%"struct.Kalmar::index_impl"* %this, i32* %components) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %2) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC1EPKi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi1EEC2EPKi(%"class.Kalmar::index"* %this1, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC2EPi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi(%"struct.Kalmar::index_impl"* %base_, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi(%"struct.Kalmar::index_impl"* %this, i32* %components) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %2) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEC1EPi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi1EEC2EPi(%"class.Kalmar::index"* %this1, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEaSERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %other.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %other.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %other, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %0, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_(%"struct.Kalmar::index_impl"* %base_, %"struct.Kalmar::index_impl"* dereferenceable(8) %base_2) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_(%"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"* dereferenceable(8) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl"* %__t, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEaSEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr i32 @_ZNK6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %this, i32 %c) #2 align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast i32 addrspace(5)* %retval to i32*
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %c.addr.ascast, align 4
  %call = call i32 @_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret i32 %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr i32 @_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj(%"struct.Kalmar::index_impl"* %this, i32 %c) #3 align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast i32 addrspace(5)* %retval to i32*
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %c.addr.ascast, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %0, i64 %idx.ext
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %add.ptr) #10
  %2 = load i32, i32* %call, align 4
  ret i32 %2
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %this, i32 %c) #2 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %c.addr.ascast, align 4
  %call = call dereferenceable(4) i32* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret i32* %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(4) i32* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj(%"struct.Kalmar::index_impl"* %this, i32 %c) #2 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %c.addr.ascast, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %0, i64 %idx.ext
  %call = call dereferenceable(4) i32* @_ZN6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %add.ptr) #10
  ret i32* %call
}
; Function Attrs: convergent noinline optnone
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi1EEeqERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %other.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %other.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %other, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %call = call zeroext i1 @_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_(%"class.Kalmar::index"* dereferenceable(8) %this1, %"class.Kalmar::index"* dereferenceable(8) %0) #10
  ret i1 %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr zeroext i1 @_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_(%"class.Kalmar::index"* dereferenceable(8) %_lhs, %"class.Kalmar::index"* dereferenceable(8) %_rhs) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %_lhs.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %_lhs.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %_lhs.addr to %"class.Kalmar::index"**
  %_rhs.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %_rhs.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %_rhs.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %_lhs, %"class.Kalmar::index"** %_lhs.addr.ascast, align 8
  store %"class.Kalmar::index"* %_rhs, %"class.Kalmar::index"** %_rhs.addr.ascast, align 8
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %_lhs.addr.ascast, align 8
  %call = call i32 @_ZNK6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %0, i32 0) #10
  %1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %_rhs.addr.ascast, align 8
  %call1 = call i32 @_ZNK6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %1, i32 0) #10
  %cmp = icmp eq i32 %call, %call1
  ret i1 %cmp
}
; Function Attrs: convergent noinline optnone
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi1EEneERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %other.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %other.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %other, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %other.addr.ascast, align 8
  %call = call zeroext i1 @_ZNK6Kalmar5indexILi1EEeqERKS1_(%"class.Kalmar::index"* %this1, %"class.Kalmar::index"* dereferenceable(8) %0) #10
  %lnot = xor i1 %call, true
  ret i1 %lnot
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEpLERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %rhs) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %rhs.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %rhs.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %rhs.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %rhs, %"class.Kalmar::index"** %rhs.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %rhs.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %0, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_(%"struct.Kalmar::index_impl"* %base_, %"struct.Kalmar::index_impl"* dereferenceable(8) %base_2) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_(%"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"* dereferenceable(8) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl"* %__t, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEpLEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmIERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %rhs) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %rhs.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %rhs.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %rhs.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %rhs, %"class.Kalmar::index"** %rhs.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %rhs.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %0, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_(%"struct.Kalmar::index_impl"* %base_, %"struct.Kalmar::index_impl"* dereferenceable(8) %base_2) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_(%"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"* dereferenceable(8) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl"* %__t, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmIEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmLERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %__r.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %__r.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %__r, %"class.Kalmar::index"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %0, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_(%"struct.Kalmar::index_impl"* %base_, %"struct.Kalmar::index_impl"* dereferenceable(8) %base_2) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_(%"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"* dereferenceable(8) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl"* %__t, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmLEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEdVERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %__r.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %__r.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %__r, %"class.Kalmar::index"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %0, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_(%"struct.Kalmar::index_impl"* %base_, %"struct.Kalmar::index_impl"* dereferenceable(8) %base_2) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_(%"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"* dereferenceable(8) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl"* %__t, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEdVEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EErMERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %__r.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %__r.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store %"class.Kalmar::index"* %__r, %"class.Kalmar::index"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %0, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_(%"struct.Kalmar::index_impl"* %base_, %"struct.Kalmar::index_impl"* dereferenceable(8) %base_2) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_(%"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"* dereferenceable(8) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl"* %__t, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EErMEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEpLEi(%"class.Kalmar::index"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi(%"struct.Kalmar::index_impl"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEpLEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmIEi(%"class.Kalmar::index"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi(%"struct.Kalmar::index_impl"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmIEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmLEi(%"class.Kalmar::index"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi(%"struct.Kalmar::index_impl"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmLEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEdVEi(%"class.Kalmar::index"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi(%"struct.Kalmar::index_impl"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEdVEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EErMEi(%"class.Kalmar::index"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi(%"struct.Kalmar::index_impl"* %base_, i32 %0) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi(%"struct.Kalmar::index_impl"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %retval to %"struct.Kalmar::index_impl"**
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EErMEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEppEv(%"class.Kalmar::index"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi(%"struct.Kalmar::index_impl"* %base_, i32 1) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEppEi(%"class.Kalmar::index"* noalias sret %agg.result, %"class.Kalmar::index"* %this, i32 %0) #2 align 2 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %.addr = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast i32 addrspace(5)* %.addr to i32*
  %1 = bitcast %"class.Kalmar::index"* %agg.result to i8*
  store i8* %1, i8** %result.ptr.ascast, align 8
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %0, i32* %.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi1EEC1ERKS1_(%"class.Kalmar::index"* %agg.result, %"class.Kalmar::index"* dereferenceable(8) %this1) #10
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi(%"struct.Kalmar::index_impl"* %base_, i32 1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmmEv(%"class.Kalmar::index"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %retval to %"class.Kalmar::index"**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi(%"struct.Kalmar::index_impl"* %base_, i32 1) #10
  ret %"class.Kalmar::index"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EEmmEi(%"class.Kalmar::index"* noalias sret %agg.result, %"class.Kalmar::index"* %this, i32 %0) #2 align 2 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  %.addr = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast i32 addrspace(5)* %.addr to i32*
  %1 = bitcast %"class.Kalmar::index"* %agg.result to i8*
  store i8* %1, i8** %result.ptr.ascast, align 8
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  store i32 %0, i32* %.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi1EEC1ERKS1_(%"class.Kalmar::index"* %agg.result, %"class.Kalmar::index"* dereferenceable(8) %this1) #10
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"struct.Kalmar::index_impl"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi(%"struct.Kalmar::index_impl"* %base_, i32 1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %this.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %this, %"class.Kalmar::index"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_(%"class.Kalmar::index"* dereferenceable(8) %this1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_(%"class.Kalmar::index"* dereferenceable(8) %now) #2 align 2 {
entry:
  %now.addr = alloca %"class.Kalmar::index"*, align 8, addrspace(5)
  %now.addr.ascast = addrspacecast %"class.Kalmar::index"* addrspace(5)* %now.addr to %"class.Kalmar::index"**
  store %"class.Kalmar::index"* %now, %"class.Kalmar::index"** %now.addr.ascast, align 8
  %call = call i32 @amp_get_global_id(i32 0) #11
  %0 = load %"class.Kalmar::index"*, %"class.Kalmar::index"** %now.addr.ascast, align 8
  %call1 = call dereferenceable(4) i32* @_ZN6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %0, i32 0) #10
  store i32 %call, i32* %call1, align 4
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC2Ev(%"class.Kalmar::index.0"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev(%"struct.Kalmar::index_impl.1"* %base_) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev(%"struct.Kalmar::index_impl.1"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 0) #10
  %1 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %2 = getelementptr inbounds i8, i8* %1, i64 8
  %3 = bitcast i8* %2 to %"class.Kalmar::__index_leaf.2"*
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %3, i32 0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC1Ev(%"class.Kalmar::index.0"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi2EEC2Ev(%"class.Kalmar::index.0"* %this1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC2ERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %other.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %other.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %other, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %0, i32 0, i32 0
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_(%"struct.Kalmar::index_impl.1"* %base_, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %base_2) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_(%"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %other.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %other.addr to %"struct.Kalmar::index_impl.1"**
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.1"* %other, %"struct.Kalmar::index_impl.1"** %other.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %other.addr.ascast, align 8
  %1 = bitcast %"struct.Kalmar::index_impl.1"* %0 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %1) #10
  %2 = load i32, i32* %call, align 4
  %3 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %other.addr.ascast, align 8
  %4 = bitcast %"struct.Kalmar::index_impl.1"* %3 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %call2 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %5) #10
  %6 = load i32, i32* %call2, align 4
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_(%"struct.Kalmar::index_impl.1"* %this1, i32 %2, i32 %6) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC1ERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %other.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %other.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %other, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi2EEC2ERKS1_(%"class.Kalmar::index.0"* %this1, %"class.Kalmar::index.0"* dereferenceable(16) %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC2Ei(%"class.Kalmar::index.0"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %i0.addr = alloca i32, align 4, addrspace(5)
  %i0.addr.ascast = addrspacecast i32 addrspace(5)* %i0.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %i0, i32* %i0.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %i0.addr.ascast, align 4
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei(%"struct.Kalmar::index_impl.1"* %this, i32 %component) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %component.addr = alloca i32, align 4, addrspace(5)
  %component.addr.ascast = addrspacecast i32 addrspace(5)* %component.addr to i32*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %component, i32* %component.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %component.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"class.Kalmar::__index_leaf.2"*
  %5 = load i32, i32* %component.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %4, i32 %5) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC1Ei(%"class.Kalmar::index.0"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %i0.addr = alloca i32, align 4, addrspace(5)
  %i0.addr.ascast = addrspacecast i32 addrspace(5)* %i0.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %i0, i32* %i0.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %0 = load i32, i32* %i0.addr.ascast, align 4
  call void @_ZN6Kalmar5indexILi2EEC2Ei(%"class.Kalmar::index.0"* %this1, i32 %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC2EPKi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi(%"struct.Kalmar::index_impl.1"* %base_, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi(%"struct.Kalmar::index_impl.1"* %this, i32* %components) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %2) #10
  %3 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx2, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %5, i32 %7) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC1EPKi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi2EEC2EPKi(%"class.Kalmar::index.0"* %this1, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC2EPi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi(%"struct.Kalmar::index_impl.1"* %base_, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi(%"struct.Kalmar::index_impl.1"* %this, i32* %components) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %2) #10
  %3 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx2, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %5, i32 %7) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEC1EPi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi2EEC2EPi(%"class.Kalmar::index.0"* %this1, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEaSERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %other.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %other.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %other, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %0, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_(%"struct.Kalmar::index_impl.1"* %base_, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %base_2) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_(%"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.1"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.1"* %__t, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEaSEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.1"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEaSEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr i32 @_ZNK6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %this, i32 %c) #2 align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast i32 addrspace(5)* %retval to i32*
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %c.addr.ascast, align 4
  %call = call i32 @_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret i32 %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr i32 @_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj(%"struct.Kalmar::index_impl.1"* %this, i32 %c) #3 align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast i32 addrspace(5)* %retval to i32*
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %c.addr.ascast, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %0, i64 %idx.ext
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %add.ptr) #10
  %2 = load i32, i32* %call, align 4
  ret i32 %2
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %this, i32 %c) #2 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %c.addr.ascast, align 4
  %call = call dereferenceable(4) i32* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret i32* %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj(%"struct.Kalmar::index_impl.1"* %this, i32 %c) #3 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %c.addr.ascast, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %0, i64 %idx.ext
  %call = call dereferenceable(4) i32* @_ZN6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %add.ptr) #10
  ret i32* %call
}
; Function Attrs: convergent noinline optnone
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi2EEeqERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %other.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %other.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %other, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %call = call zeroext i1 @_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_(%"class.Kalmar::index.0"* dereferenceable(16) %this1, %"class.Kalmar::index.0"* dereferenceable(16) %0) #10
  ret i1 %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr zeroext i1 @_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_(%"class.Kalmar::index.0"* dereferenceable(16) %_lhs, %"class.Kalmar::index.0"* dereferenceable(16) %_rhs) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %_lhs.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %_lhs.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %_lhs.addr to %"class.Kalmar::index.0"**
  %_rhs.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %_rhs.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %_rhs.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %_lhs, %"class.Kalmar::index.0"** %_lhs.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %_rhs, %"class.Kalmar::index.0"** %_rhs.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %_lhs.addr.ascast, align 8
  %call = call i32 @_ZNK6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %0, i32 1) #10
  %1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %_rhs.addr.ascast, align 8
  %call1 = call i32 @_ZNK6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %1, i32 1) #10
  %cmp = icmp eq i32 %call, %call1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %_lhs.addr.ascast, align 8
  %3 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %_rhs.addr.ascast, align 8
  %call2 = call zeroext i1 @_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_(%"class.Kalmar::index.0"* dereferenceable(16) %2, %"class.Kalmar::index.0"* dereferenceable(16) %3) #10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %call2, %land.rhs ]
  ret i1 %4
}
; Function Attrs: convergent noinline optnone
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi2EEneERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %other.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %other.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %other, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %other.addr.ascast, align 8
  %call = call zeroext i1 @_ZNK6Kalmar5indexILi2EEeqERKS1_(%"class.Kalmar::index.0"* %this1, %"class.Kalmar::index.0"* dereferenceable(16) %0) #10
  %lnot = xor i1 %call, true
  ret i1 %lnot
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEpLERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %rhs) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %rhs.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %rhs.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %rhs.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %rhs, %"class.Kalmar::index.0"** %rhs.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %rhs.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %0, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_(%"struct.Kalmar::index_impl.1"* %base_, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %base_2) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_(%"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.1"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.1"* %__t, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEpLEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.1"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEpLEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmIERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %rhs) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %rhs.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %rhs.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %rhs.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %rhs, %"class.Kalmar::index.0"** %rhs.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %rhs.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %0, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_(%"struct.Kalmar::index_impl.1"* %base_, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %base_2) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_(%"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.1"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.1"* %__t, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmIEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.1"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmIEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmLERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %__r.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %__r.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %__r, %"class.Kalmar::index.0"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %0, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_(%"struct.Kalmar::index_impl.1"* %base_, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %base_2) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_(%"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.1"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.1"* %__t, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmLEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.1"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmLEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEdVERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %__r.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %__r.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %__r, %"class.Kalmar::index.0"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %0, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_(%"struct.Kalmar::index_impl.1"* %base_, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %base_2) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_(%"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.1"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.1"* %__t, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEdVEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.1"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEdVEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EErMERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %__r.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %__r.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %__r, %"class.Kalmar::index.0"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %0, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_(%"struct.Kalmar::index_impl.1"* %base_, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %base_2) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_(%"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"* dereferenceable(16) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.1"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.1"* %__t, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EErMEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.1"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EErMEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEpLEi(%"class.Kalmar::index.0"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi(%"struct.Kalmar::index_impl.1"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEpLEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEpLEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmIEi(%"class.Kalmar::index.0"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi(%"struct.Kalmar::index_impl.1"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmIEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmIEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmLEi(%"class.Kalmar::index.0"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi(%"struct.Kalmar::index_impl.1"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmLEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmLEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEdVEi(%"class.Kalmar::index.0"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi(%"struct.Kalmar::index_impl.1"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEdVEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEdVEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EErMEi(%"class.Kalmar::index.0"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi(%"struct.Kalmar::index_impl.1"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi(%"struct.Kalmar::index_impl.1"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.1"**
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EErMEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.1"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EErMEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.1"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEppEv(%"class.Kalmar::index.0"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi(%"struct.Kalmar::index_impl.1"* %base_, i32 1) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEppEi(%"class.Kalmar::index.0"* noalias sret %agg.result, %"class.Kalmar::index.0"* %this, i32 %0) #2 align 2 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %.addr = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast i32 addrspace(5)* %.addr to i32*
  %1 = bitcast %"class.Kalmar::index.0"* %agg.result to i8*
  store i8* %1, i8** %result.ptr.ascast, align 8
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %0, i32* %.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi2EEC1ERKS1_(%"class.Kalmar::index.0"* %agg.result, %"class.Kalmar::index.0"* dereferenceable(16) %this1) #10
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi(%"struct.Kalmar::index_impl.1"* %base_, i32 1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmmEv(%"class.Kalmar::index.0"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %retval to %"class.Kalmar::index.0"**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi(%"struct.Kalmar::index_impl.1"* %base_, i32 1) #10
  ret %"class.Kalmar::index.0"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EEmmEi(%"class.Kalmar::index.0"* noalias sret %agg.result, %"class.Kalmar::index.0"* %this, i32 %0) #2 align 2 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  %.addr = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast i32 addrspace(5)* %.addr to i32*
  %1 = bitcast %"class.Kalmar::index.0"* %agg.result to i8*
  store i8* %1, i8** %result.ptr.ascast, align 8
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  store i32 %0, i32* %.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi2EEC1ERKS1_(%"class.Kalmar::index.0"* %agg.result, %"class.Kalmar::index.0"* dereferenceable(16) %this1) #10
  %base_ = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this1, i32 0, i32 0
  %call = call dereferenceable(16) %"struct.Kalmar::index_impl.1"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi(%"struct.Kalmar::index_impl.1"* %base_, i32 1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index.0"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %this.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_(%"class.Kalmar::index.0"* dereferenceable(16) %this1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_(%"class.Kalmar::index.0"* dereferenceable(16) %now) #2 align 2 {
entry:
  %now.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %now.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %now.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %now, %"class.Kalmar::index.0"** %now.addr.ascast, align 8
  %call = call i32 @amp_get_global_id(i32 0) #11
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %now.addr.ascast, align 8
  %call1 = call dereferenceable(4) i32* @_ZN6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %0, i32 1) #10
  store i32 %call, i32* %call1, align 4
  %1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %now.addr.ascast, align 8
  call void @_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_(%"class.Kalmar::index.0"* dereferenceable(16) %1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC2Ev(%"class.Kalmar::index.3"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev(%"struct.Kalmar::index_impl.4"* %base_) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev(%"struct.Kalmar::index_impl.4"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 0) #10
  %1 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %2 = getelementptr inbounds i8, i8* %1, i64 8
  %3 = bitcast i8* %2 to %"class.Kalmar::__index_leaf.2"*
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %3, i32 0) #10
  %4 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 16
  %6 = bitcast i8* %5 to %"class.Kalmar::__index_leaf.5"*
  call void @_ZN6Kalmar12__index_leafILi2EEC2Ei(%"class.Kalmar::__index_leaf.5"* %6, i32 0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC1Ev(%"class.Kalmar::index.3"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi3EEC2Ev(%"class.Kalmar::index.3"* %this1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC2ERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %other.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %other.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %other, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %0, i32 0, i32 0
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_(%"struct.Kalmar::index_impl.4"* %base_, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %base_2) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_(%"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %other.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %other.addr to %"struct.Kalmar::index_impl.4"**
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.4"* %other, %"struct.Kalmar::index_impl.4"** %other.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %other.addr.ascast, align 8
  %1 = bitcast %"struct.Kalmar::index_impl.4"* %0 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %1) #10
  %2 = load i32, i32* %call, align 4
  %3 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %other.addr.ascast, align 8
  %4 = bitcast %"struct.Kalmar::index_impl.4"* %3 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %call2 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %5) #10
  %6 = load i32, i32* %call2, align 4
  %7 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %other.addr.ascast, align 8
  %8 = bitcast %"struct.Kalmar::index_impl.4"* %7 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 16
  %9 = bitcast i8* %add.ptr3 to %"class.Kalmar::__index_leaf.5"*
  %call4 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %9) #10
  %10 = load i32, i32* %call4, align 4
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_(%"struct.Kalmar::index_impl.4"* %this1, i32 %2, i32 %6, i32 %10) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC1ERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %other.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %other.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %other, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi3EEC2ERKS1_(%"class.Kalmar::index.3"* %this1, %"class.Kalmar::index.3"* dereferenceable(24) %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC2Ei(%"class.Kalmar::index.3"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %i0.addr = alloca i32, align 4, addrspace(5)
  %i0.addr.ascast = addrspacecast i32 addrspace(5)* %i0.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %i0, i32* %i0.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %i0.addr.ascast, align 4
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei(%"struct.Kalmar::index_impl.4"* %this, i32 %component) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %component.addr = alloca i32, align 4, addrspace(5)
  %component.addr.ascast = addrspacecast i32 addrspace(5)* %component.addr to i32*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %component, i32* %component.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %component.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"class.Kalmar::__index_leaf.2"*
  %5 = load i32, i32* %component.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %4, i32 %5) #10
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 16
  %8 = bitcast i8* %7 to %"class.Kalmar::__index_leaf.5"*
  %9 = load i32, i32* %component.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi2EEC2Ei(%"class.Kalmar::__index_leaf.5"* %8, i32 %9) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC1Ei(%"class.Kalmar::index.3"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %i0.addr = alloca i32, align 4, addrspace(5)
  %i0.addr.ascast = addrspacecast i32 addrspace(5)* %i0.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %i0, i32* %i0.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %0 = load i32, i32* %i0.addr.ascast, align 4
  call void @_ZN6Kalmar5indexILi3EEC2Ei(%"class.Kalmar::index.3"* %this1, i32 %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC2EPKi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi(%"struct.Kalmar::index_impl.4"* %base_, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi(%"struct.Kalmar::index_impl.4"* %this, i32* %components) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %2) #10
  %3 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx2, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %5, i32 %7) #10
  %8 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 16
  %10 = bitcast i8* %9 to %"class.Kalmar::__index_leaf.5"*
  %11 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 2
  %12 = load i32, i32* %arrayidx3, align 4
  call void @_ZN6Kalmar12__index_leafILi2EEC2Ei(%"class.Kalmar::__index_leaf.5"* %10, i32 %12) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC1EPKi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi3EEC2EPKi(%"class.Kalmar::index.3"* %this1, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC2EPi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi(%"struct.Kalmar::index_impl.4"* %base_, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi(%"struct.Kalmar::index_impl.4"* %this, i32* %components) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %2) #10
  %3 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx2, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %5, i32 %7) #10
  %8 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 16
  %10 = bitcast i8* %9 to %"class.Kalmar::__index_leaf.5"*
  %11 = load i32*, i32** %components.addr.ascast, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 2
  %12 = load i32, i32* %arrayidx3, align 4
  call void @_ZN6Kalmar12__index_leafILi2EEC2Ei(%"class.Kalmar::__index_leaf.5"* %10, i32 %12) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEC1EPi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %components.addr = alloca i32*, align 8, addrspace(5)
  %components.addr.ascast = addrspacecast i32* addrspace(5)* %components.addr to i32**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32* %components, i32** %components.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %0 = load i32*, i32** %components.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi3EEC2EPi(%"class.Kalmar::index.3"* %this1, i32* %0) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEaSERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %other.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %other.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %other, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %0, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_(%"struct.Kalmar::index_impl.4"* %base_, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %base_2) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_(%"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.4"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp7 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp7.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp7 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.4"* %__t, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEaSEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEaSEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 16
  %15 = bitcast i8* %add.ptr8 to %"class.Kalmar::__index_leaf.5"*
  %16 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %17 = bitcast %"struct.Kalmar::index_impl.4"* %16 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 16
  %18 = bitcast i8* %add.ptr9 to %"class.Kalmar::__index_leaf.5"*
  %call10 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %18) #10
  %19 = load i32, i32* %call10, align 4
  %call11 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEaSEi(%"class.Kalmar::__index_leaf.5"* %15, i32 %19) #10
  %20 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to i8*
  %21 = bitcast %"class.Kalmar::__index_leaf.5"* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp7.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp7.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %this, i32 %c) #2 align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast i32 addrspace(5)* %retval to i32*
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %c.addr.ascast, align 4
  %call = call i32 @_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret i32 %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr i32 @_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj(%"struct.Kalmar::index_impl.4"* %this, i32 %c) #3 align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast i32 addrspace(5)* %retval to i32*
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %c.addr.ascast, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %0, i64 %idx.ext
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %add.ptr) #10
  %2 = load i32, i32* %call, align 4
  ret i32 %2
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %this, i32 %c) #2 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %c.addr.ascast, align 4
  %call = call dereferenceable(4) i32* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret i32* %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj(%"struct.Kalmar::index_impl.4"* %this, i32 %c) #3 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %c.addr = alloca i32, align 4, addrspace(5)
  %c.addr.ascast = addrspacecast i32 addrspace(5)* %c.addr to i32*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %c, i32* %c.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %c.addr.ascast, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %0, i64 %idx.ext
  %call = call dereferenceable(4) i32* @_ZN6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %add.ptr) #10
  ret i32* %call
}
; Function Attrs: convergent noinline optnone
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi3EEeqERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %other.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %other.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %other, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %call = call zeroext i1 @_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_(%"class.Kalmar::index.3"* dereferenceable(24) %this1, %"class.Kalmar::index.3"* dereferenceable(24) %0) #10
  ret i1 %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr zeroext i1 @_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_(%"class.Kalmar::index.3"* dereferenceable(24) %_lhs, %"class.Kalmar::index.3"* dereferenceable(24) %_rhs) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %_lhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %_lhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %_lhs.addr to %"class.Kalmar::index.3"**
  %_rhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %_rhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %_rhs.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %_lhs, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %_rhs, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  %call = call i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %0, i32 2) #10
  %1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %call1 = call i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %1, i32 2) #10
  %cmp = icmp eq i32 %call, %call1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  %3 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %call2 = call zeroext i1 @_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_(%"class.Kalmar::index.3"* dereferenceable(24) %2, %"class.Kalmar::index.3"* dereferenceable(24) %3) #10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %call2, %land.rhs ]
  ret i1 %4
}
; Function Attrs: convergent noinline optnone
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi3EEneERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %other.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %other.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %other.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %other, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %other.addr.ascast, align 8
  %call = call zeroext i1 @_ZNK6Kalmar5indexILi3EEeqERKS1_(%"class.Kalmar::index.3"* %this1, %"class.Kalmar::index.3"* dereferenceable(24) %0) #10
  %lnot = xor i1 %call, true
  ret i1 %lnot
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEpLERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %rhs) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %rhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %rhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %rhs.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %rhs, %"class.Kalmar::index.3"** %rhs.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %rhs.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %0, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_(%"struct.Kalmar::index_impl.4"* %base_, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %base_2) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_(%"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.4"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp7 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp7.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp7 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.4"* %__t, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEpLEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEpLEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 16
  %15 = bitcast i8* %add.ptr8 to %"class.Kalmar::__index_leaf.5"*
  %16 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %17 = bitcast %"struct.Kalmar::index_impl.4"* %16 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 16
  %18 = bitcast i8* %add.ptr9 to %"class.Kalmar::__index_leaf.5"*
  %call10 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %18) #10
  %19 = load i32, i32* %call10, align 4
  %call11 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEpLEi(%"class.Kalmar::__index_leaf.5"* %15, i32 %19) #10
  %20 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to i8*
  %21 = bitcast %"class.Kalmar::__index_leaf.5"* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp7.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp7.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmIERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %rhs) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %rhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %rhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %rhs.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %rhs, %"class.Kalmar::index.3"** %rhs.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %rhs.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %0, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_(%"struct.Kalmar::index_impl.4"* %base_, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %base_2) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_(%"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.4"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp7 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp7.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp7 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.4"* %__t, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmIEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmIEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 16
  %15 = bitcast i8* %add.ptr8 to %"class.Kalmar::__index_leaf.5"*
  %16 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %17 = bitcast %"struct.Kalmar::index_impl.4"* %16 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 16
  %18 = bitcast i8* %add.ptr9 to %"class.Kalmar::__index_leaf.5"*
  %call10 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %18) #10
  %19 = load i32, i32* %call10, align 4
  %call11 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEmIEi(%"class.Kalmar::__index_leaf.5"* %15, i32 %19) #10
  %20 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to i8*
  %21 = bitcast %"class.Kalmar::__index_leaf.5"* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp7.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp7.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmLERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %__r.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %__r.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %__r, %"class.Kalmar::index.3"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %0, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_(%"struct.Kalmar::index_impl.4"* %base_, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %base_2) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_(%"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.4"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp7 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp7.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp7 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.4"* %__t, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmLEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmLEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 16
  %15 = bitcast i8* %add.ptr8 to %"class.Kalmar::__index_leaf.5"*
  %16 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %17 = bitcast %"struct.Kalmar::index_impl.4"* %16 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 16
  %18 = bitcast i8* %add.ptr9 to %"class.Kalmar::__index_leaf.5"*
  %call10 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %18) #10
  %19 = load i32, i32* %call10, align 4
  %call11 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEmLEi(%"class.Kalmar::__index_leaf.5"* %15, i32 %19) #10
  %20 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to i8*
  %21 = bitcast %"class.Kalmar::__index_leaf.5"* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp7.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp7.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEdVERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %__r.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %__r.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %__r, %"class.Kalmar::index.3"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %0, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_(%"struct.Kalmar::index_impl.4"* %base_, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %base_2) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_(%"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.4"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp7 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp7.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp7 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.4"* %__t, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEdVEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEdVEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 16
  %15 = bitcast i8* %add.ptr8 to %"class.Kalmar::__index_leaf.5"*
  %16 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %17 = bitcast %"struct.Kalmar::index_impl.4"* %16 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 16
  %18 = bitcast i8* %add.ptr9 to %"class.Kalmar::__index_leaf.5"*
  %call10 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %18) #10
  %19 = load i32, i32* %call10, align 4
  %call11 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEdVEi(%"class.Kalmar::__index_leaf.5"* %15, i32 %19) #10
  %20 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to i8*
  %21 = bitcast %"class.Kalmar::__index_leaf.5"* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp7.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp7.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EErMERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %__r.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %__r.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %__r.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %__r, %"class.Kalmar::index.3"** %__r.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %__r.addr.ascast, align 8
  %base_2 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %0, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_(%"struct.Kalmar::index_impl.4"* %base_, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %base_2) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_(%"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"* dereferenceable(24) %__t) #2 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %__t.addr to %"struct.Kalmar::index_impl.4"**
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp3 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp3.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp3 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp7 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp7.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp7 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store %"struct.Kalmar::index_impl.4"* %__t, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %1 to %"class.Kalmar::__index_leaf"*
  %call = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %2) #10
  %3 = load i32, i32* %call, align 4
  %call2 = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EErMEi(%"class.Kalmar::__index_leaf"* %0, i32 %3) #10
  %4 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %5 = bitcast %"class.Kalmar::__index_leaf"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %8 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %8 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 8
  %10 = bitcast i8* %add.ptr4 to %"class.Kalmar::__index_leaf.2"*
  %call5 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %10) #10
  %11 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EErMEi(%"class.Kalmar::__index_leaf.2"* %7, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.2"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 16
  %15 = bitcast i8* %add.ptr8 to %"class.Kalmar::__index_leaf.5"*
  %16 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %__t.addr.ascast, align 8
  %17 = bitcast %"struct.Kalmar::index_impl.4"* %16 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 16
  %18 = bitcast i8* %add.ptr9 to %"class.Kalmar::__index_leaf.5"*
  %call10 = call dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %18) #10
  %19 = load i32, i32* %call10, align 4
  %call11 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EErMEi(%"class.Kalmar::__index_leaf.5"* %15, i32 %19) #10
  %20 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to i8*
  %21 = bitcast %"class.Kalmar::__index_leaf.5"* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp3.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp3.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp7.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp7.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp3.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp7.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEpLEi(%"class.Kalmar::index.3"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi(%"struct.Kalmar::index_impl.4"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp4 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp4.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp4 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEpLEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEpLEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 16
  %10 = bitcast i8* %add.ptr5 to %"class.Kalmar::__index_leaf.5"*
  %11 = load i32, i32* %__t.addr.ascast, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEpLEi(%"class.Kalmar::__index_leaf.5"* %10, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.5"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp4.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp4.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmIEi(%"class.Kalmar::index.3"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi(%"struct.Kalmar::index_impl.4"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp4 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp4.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp4 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmIEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmIEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 16
  %10 = bitcast i8* %add.ptr5 to %"class.Kalmar::__index_leaf.5"*
  %11 = load i32, i32* %__t.addr.ascast, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEmIEi(%"class.Kalmar::__index_leaf.5"* %10, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.5"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp4.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp4.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmLEi(%"class.Kalmar::index.3"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi(%"struct.Kalmar::index_impl.4"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp4 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp4.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp4 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmLEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmLEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 16
  %10 = bitcast i8* %add.ptr5 to %"class.Kalmar::__index_leaf.5"*
  %11 = load i32, i32* %__t.addr.ascast, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEmLEi(%"class.Kalmar::__index_leaf.5"* %10, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.5"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp4.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp4.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEdVEi(%"class.Kalmar::index.3"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi(%"struct.Kalmar::index_impl.4"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp4 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp4.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp4 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEdVEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEdVEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 16
  %10 = bitcast i8* %add.ptr5 to %"class.Kalmar::__index_leaf.5"*
  %11 = load i32, i32* %__t.addr.ascast, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEdVEi(%"class.Kalmar::__index_leaf.5"* %10, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.5"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp4.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp4.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EErMEi(%"class.Kalmar::index.3"* %this, i32 %value) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %value.addr = alloca i32, align 4, addrspace(5)
  %value.addr.ascast = addrspacecast i32 addrspace(5)* %value.addr to i32*
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %value, i32* %value.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %0 = load i32, i32* %value.addr.ascast, align 4
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi(%"struct.Kalmar::index_impl.4"* %base_, i32 %0) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi(%"struct.Kalmar::index_impl.4"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %retval to %"struct.Kalmar::index_impl.4"**
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  %agg.tmp = alloca %"class.Kalmar::__index_leaf", align 4, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %agg.tmp to %"class.Kalmar::__index_leaf"*
  %agg.tmp2 = alloca %"class.Kalmar::__index_leaf.2", align 4, addrspace(5)
  %agg.tmp2.ascast = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %agg.tmp2 to %"class.Kalmar::__index_leaf.2"*
  %agg.tmp4 = alloca %"class.Kalmar::__index_leaf.5", align 4, addrspace(5)
  %agg.tmp4.ascast = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %agg.tmp4 to %"class.Kalmar::__index_leaf.5"*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__t.addr.ascast, align 4
  %call = call dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EErMEi(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to i8*
  %3 = bitcast %"class.Kalmar::__index_leaf"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %5 = bitcast i8* %add.ptr to %"class.Kalmar::__index_leaf.2"*
  %6 = load i32, i32* %__t.addr.ascast, align 4
  %call3 = call dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EErMEi(%"class.Kalmar::__index_leaf.2"* %5, i32 %6) #10
  %7 = bitcast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to i8*
  %8 = bitcast %"class.Kalmar::__index_leaf.2"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = bitcast %"struct.Kalmar::index_impl.4"* %this1 to i8*
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 16
  %10 = bitcast i8* %add.ptr5 to %"class.Kalmar::__index_leaf.5"*
  %11 = load i32, i32* %__t.addr.ascast, align 4
  %call6 = call dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EErMEi(%"class.Kalmar::__index_leaf.5"* %10, i32 %11) #10
  %12 = bitcast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to i8*
  %13 = bitcast %"class.Kalmar::__index_leaf.5"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %agg.tmp.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf"* %agg.tmp.ascast to %"class.Kalmar::__index_leaf" addrspace(5)*
  %agg.tmp2.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* %agg.tmp2.ascast to %"class.Kalmar::__index_leaf.2" addrspace(5)*
  %agg.tmp4.ascast.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* %agg.tmp4.ascast to %"class.Kalmar::__index_leaf.5" addrspace(5)*
  call void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this1, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %agg.tmp.ascast.ascast, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %agg.tmp2.ascast.ascast, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %agg.tmp4.ascast.ascast) #10
  ret %"struct.Kalmar::index_impl.4"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEppEv(%"class.Kalmar::index.3"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi(%"struct.Kalmar::index_impl.4"* %base_, i32 1) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEppEi(%"class.Kalmar::index.3"* noalias sret %agg.result, %"class.Kalmar::index.3"* %this, i32 %0) #2 align 2 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %.addr = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast i32 addrspace(5)* %.addr to i32*
  %1 = bitcast %"class.Kalmar::index.3"* %agg.result to i8*
  store i8* %1, i8** %result.ptr.ascast, align 8
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %0, i32* %.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi3EEC1ERKS1_(%"class.Kalmar::index.3"* %agg.result, %"class.Kalmar::index.3"* dereferenceable(24) %this1) #10
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi(%"struct.Kalmar::index_impl.4"* %base_, i32 1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmmEv(%"class.Kalmar::index.3"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %retval to %"class.Kalmar::index.3"**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi(%"struct.Kalmar::index_impl.4"* %base_, i32 1) #10
  ret %"class.Kalmar::index.3"* %this1
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EEmmEi(%"class.Kalmar::index.3"* noalias sret %agg.result, %"class.Kalmar::index.3"* %this, i32 %0) #2 align 2 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  %.addr = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast i32 addrspace(5)* %.addr to i32*
  %1 = bitcast %"class.Kalmar::index.3"* %agg.result to i8*
  store i8* %1, i8** %result.ptr.ascast, align 8
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  store i32 %0, i32* %.addr.ascast, align 4
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar5indexILi3EEC1ERKS1_(%"class.Kalmar::index.3"* %agg.result, %"class.Kalmar::index.3"* dereferenceable(24) %this1) #10
  %base_ = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.Kalmar::index_impl.4"* @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi(%"struct.Kalmar::index_impl.4"* %base_, i32 1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define weak_odr void @_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index.3"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %this.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %this.addr.ascast, align 8
  call void @_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_(%"class.Kalmar::index.3"* dereferenceable(24) %this1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_(%"class.Kalmar::index.3"* dereferenceable(24) %now) #2 align 2 {
entry:
  %now.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %now.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %now.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %now, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  %call = call i32 @amp_get_global_id(i32 0) #11
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  %call1 = call dereferenceable(4) i32* @_ZN6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %0, i32 2) #10
  store i32 %call, i32* %call1, align 4
  %1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  call void @_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_(%"class.Kalmar::index.3"* dereferenceable(24) %1) #10
  ret void
}
; Function Attrs: convergent noinline norecurse nounwind optnone
define weak_odr amdgpu_kernel void @_Z3addPdS_S_i(double* %a, double* %b, double* %c, i32 %n) #4 {
entry:
  %a.addr = alloca double*, align 8, addrspace(5)
  %a.addr.ascast = addrspacecast double* addrspace(5)* %a.addr to double**
  %b.addr = alloca double*, align 8, addrspace(5)
  %b.addr.ascast = addrspacecast double* addrspace(5)* %b.addr to double**
  %c.addr = alloca double*, align 8, addrspace(5)
  %c.addr.ascast = addrspacecast double* addrspace(5)* %c.addr to double**
  %n.addr = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast i32 addrspace(5)* %n.addr to i32*
  %idx = alloca i32, align 4, addrspace(5)
  %idx.ascast = addrspacecast i32 addrspace(5)* %idx to i32*
  store double* %a, double** %a.addr.ascast, align 8
  store double* %b, double** %b.addr.ascast, align 8
  store double* %c, double** %c.addr.ascast, align 8
  store i32 %n, i32* %n.addr.ascast, align 4
  %call = call i32 @hc_get_workitem_id(i32 0) #11
  %call1 = call i32 @hc_get_group_size(i32 0) #11
  %call2 = call i32 @hc_get_group_id(i32 0) #11
  %mul = mul i32 %call1, %call2
  %add = add i32 %call, %mul
  store i32 %add, i32* %idx.ascast, align 4
  %0 = load double*, double** %a.addr.ascast, align 8
  %1 = load i32, i32* %idx.ascast, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  %3 = load double*, double** %b.addr.ascast, align 8
  %4 = load i32, i32* %idx.ascast, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds double, double* %3, i64 %idxprom3
  %5 = load double, double* %arrayidx4, align 8
  %add5 = fadd double %2, %5
  %6 = load double*, double** %c.addr.ascast, align 8
  %7 = load i32, i32* %idx.ascast, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds double, double* %6, i64 %idxprom6
  store double %add5, double* %arrayidx7, align 8
  ret void
}
; Function Attrs: convergent nounwind readnone
declare i32 @hc_get_workitem_id(i32) #5
; Function Attrs: convergent nounwind readnone
declare i32 @hc_get_group_size(i32) #5
; Function Attrs: convergent nounwind readnone
declare i32 @hc_get_group_id(i32) #5
; Function Attrs: convergent noinline nounwind optnone
define void @_Z8InitHostPdS_S_i(double* %va, double* %vb, double* %ref, i32 %n) #1 {
entry:
  %va.addr = alloca double*, align 8, addrspace(5)
  %va.addr.ascast = addrspacecast double* addrspace(5)* %va.addr to double**
  %vb.addr = alloca double*, align 8, addrspace(5)
  %vb.addr.ascast = addrspacecast double* addrspace(5)* %vb.addr to double**
  %ref.addr = alloca double*, align 8, addrspace(5)
  %ref.addr.ascast = addrspacecast double* addrspace(5)* %ref.addr to double**
  %n.addr = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast i32 addrspace(5)* %n.addr to i32*
  %ii = alloca i32, align 4, addrspace(5)
  %ii.ascast = addrspacecast i32 addrspace(5)* %ii to i32*
  store double* %va, double** %va.addr.ascast, align 8
  store double* %vb, double** %vb.addr.ascast, align 8
  store double* %ref, double** %ref.addr.ascast, align 8
  store i32 %n, i32* %n.addr.ascast, align 4
  store i32 0, i32* %ii.ascast, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii.ascast, align 4
  %1 = load i32, i32* %n.addr.ascast, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ii.ascast, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double*, double** %va.addr.ascast, align 8
  %4 = load i32, i32* %ii.ascast, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %5 = load i32, i32* %n.addr.ascast, align 4
  %6 = load i32, i32* %ii.ascast, align 4
  %sub = sub nsw i32 %5, %6
  %conv1 = sitofp i32 %sub to double
  %7 = load double*, double** %vb.addr.ascast, align 8
  %8 = load i32, i32* %ii.ascast, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds double, double* %7, i64 %idxprom2
  store double %conv1, double* %arrayidx3, align 8
  %9 = load i32, i32* %n.addr.ascast, align 4
  %conv4 = sitofp i32 %9 to double
  %10 = load double*, double** %ref.addr.ascast, align 8
  %11 = load i32, i32* %ii.ascast, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 %idxprom5
  store double %conv4, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %ii.ascast, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %ii.ascast, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}
; Function Attrs: convergent noinline norecurse optnone
define i32 @main() #6 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast i32 addrspace(5)* %retval to i32*
  %n = alloca i32, align 4, addrspace(5)
  %n.ascast = addrspacecast i32 addrspace(5)* %n to i32*
  %h_va = alloca double*, align 8, addrspace(5)
  %h_va.ascast = addrspacecast double* addrspace(5)* %h_va to double**
  %h_vb = alloca double*, align 8, addrspace(5)
  %h_vb.ascast = addrspacecast double* addrspace(5)* %h_vb to double**
  %h_out = alloca double*, align 8, addrspace(5)
  %h_out.ascast = addrspacecast double* addrspace(5)* %h_out to double**
  %h_ref = alloca double*, align 8, addrspace(5)
  %h_ref.ascast = addrspacecast double* addrspace(5)* %h_ref to double**
  %d_va = alloca double*, align 8, addrspace(5)
  %d_va.ascast = addrspacecast double* addrspace(5)* %d_va to double**
  %d_vb = alloca double*, align 8, addrspace(5)
  %d_vb.ascast = addrspacecast double* addrspace(5)* %d_vb to double**
  %d_out = alloca double*, align 8, addrspace(5)
  %d_out.ascast = addrspacecast double* addrspace(5)* %d_out to double**
  %TPB = alloca %struct.dim3, align 4, addrspace(5)
  %TPB.ascast = addrspacecast %struct.dim3 addrspace(5)* %TPB to %struct.dim3*
  %BPG = alloca %struct.dim3, align 4, addrspace(5)
  %BPG.ascast = addrspacecast %struct.dim3 addrspace(5)* %BPG to %struct.dim3*
  %err = alloca i32, align 4, addrspace(5)
  %err.ascast = addrspacecast i32 addrspace(5)* %err to i32*
  store i32 0, i32* %retval.ascast, align 4
  store i32 2048, i32* %n.ascast, align 4
  %0 = load i32, i32* %n.ascast, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @_ZL6mallocm(i64 %mul) #10
  %1 = bitcast i8* %call to double*
  store double* %1, double** %h_va.ascast, align 8
  %2 = load i32, i32* %n.ascast, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call i8* @_ZL6mallocm(i64 %mul2) #10
  %3 = bitcast i8* %call3 to double*
  store double* %3, double** %h_vb.ascast, align 8
  %4 = load i32, i32* %n.ascast, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 %conv4, 8
  %call6 = call i8* @_ZL6mallocm(i64 %mul5) #10
  %5 = bitcast i8* %call6 to double*
  store double* %5, double** %h_out.ascast, align 8
  %6 = load i32, i32* %n.ascast, align 4
  %conv7 = sext i32 %6 to i64
  %mul8 = mul i64 %conv7, 8
  %call9 = call i8* @_ZL6mallocm(i64 %mul8) #10
  %7 = bitcast i8* %call9 to double*
  store double* %7, double** %h_ref.ascast, align 8
  %8 = load double*, double** %h_va.ascast, align 8
  %9 = load double*, double** %h_vb.ascast, align 8
  %10 = load double*, double** %h_ref.ascast, align 8
  %11 = load i32, i32* %n.ascast, align 4
  call void @_Z8InitHostPdS_S_i(double* %8, double* %9, double* %10, i32 %11) #10
  %12 = bitcast double** %d_va.ascast to i8**
  %13 = load i32, i32* %n.ascast, align 4
  %conv10 = sext i32 %13 to i64
  %mul11 = mul i64 %conv10, 8
  %call12 = call i32 @hipMalloc(i8** %12, i64 %mul11) #10
  %14 = bitcast double** %d_vb.ascast to i8**
  %15 = load i32, i32* %n.ascast, align 4
  %conv13 = sext i32 %15 to i64
  %mul14 = mul i64 %conv13, 8
  %call15 = call i32 @hipMalloc(i8** %14, i64 %mul14) #10
  %16 = bitcast double** %d_out.ascast to i8**
  %17 = load i32, i32* %n.ascast, align 4
  %conv16 = sext i32 %17 to i64
  %mul17 = mul i64 %conv16, 8
  %call18 = call i32 @hipMalloc(i8** %16, i64 %mul17) #10
  %18 = load double*, double** %d_va.ascast, align 8
  %19 = bitcast double* %18 to i8*
  %20 = load double*, double** %h_va.ascast, align 8
  %21 = bitcast double* %20 to i8*
  %22 = load i32, i32* %n.ascast, align 4
  %conv19 = sext i32 %22 to i64
  %mul20 = mul i64 %conv19, 8
  %call21 = call i32 @hipMemcpy(i8* %19, i8* %21, i64 %mul20, i32 1) #10
  %23 = load double*, double** %d_vb.ascast, align 8
  %24 = bitcast double* %23 to i8*
  %25 = load double*, double** %h_vb.ascast, align 8
  %26 = bitcast double* %25 to i8*
  %27 = load i32, i32* %n.ascast, align 4
  %conv22 = sext i32 %27 to i64
  %mul23 = mul i64 %conv22, 8
  %call24 = call i32 @hipMemcpy(i8* %24, i8* %26, i64 %mul23, i32 1) #10
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %TPB.ascast, i32 128, i32 1, i32 1) #10
  %28 = load i32, i32* %n.ascast, align 4
  %add = add nsw i32 %28, 127
  %div = sdiv i32 %add, 128
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %BPG.ascast, i32 %div, i32 1, i32 1) #10
  %29 = load double*, double** %d_va.ascast, align 8
  %30 = load double*, double** %d_vb.ascast, align 8
  %31 = load double*, double** %d_out.ascast, align 8
  %32 = load i32, i32* %n.ascast, align 4
  call void @_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_(void (double*, double*, double*, i32)* @_Z3addPdS_S_i, %struct.dim3* dereferenceable(12) %BPG.ascast, %struct.dim3* dereferenceable(12) %TPB.ascast, i32 0, %struct.ihipStream_t* null, double* %29, double* %30, double* %31, i32 %32) #10
  %call25 = call i32 @hipGetLastError() #10
  store i32 %call25, i32* %err.ascast, align 4
  %33 = load i32, i32* %err.ascast, align 4
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) addrspacecast (%"class.std::basic_ostream" addrspace(1)* @_ZSt4cout to %"class.std::basic_ostream"*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* addrspacecast ([5 x i8] addrspace(4)* @.str.4 to [5 x i8]*), i64 0, i64 0)) #10
  %call27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call26, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}
; Function Attrs: convergent noinline optnone
define internal i8* @_ZL6mallocm(i64 %size) #2 {
entry:
  %retval = alloca i8*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i8* addrspace(5)* %retval to i8**
  %size.addr = alloca i64, align 8, addrspace(5)
  %size.addr.ascast = addrspacecast i64 addrspace(5)* %size.addr to i64*
  store i64 %size, i64* %size.addr.ascast, align 8
  %0 = load i64, i64* %size.addr.ascast, align 8
  %call = call i8* @__hip_malloc(i64 %0) #10
  ret i8* %call
}
; Function Attrs: convergent
declare i32 @hipMalloc(i8**, i64) #7
; Function Attrs: convergent
declare i32 @hipMemcpy(i8*, i8*, i64, i32) #7
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN4dim3C2Ejjj(%struct.dim3* %this, i32 %_x, i32 %_y, i32 %_z) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %struct.dim3*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %struct.dim3* addrspace(5)* %this.addr to %struct.dim3**
  %_x.addr = alloca i32, align 4, addrspace(5)
  %_x.addr.ascast = addrspacecast i32 addrspace(5)* %_x.addr to i32*
  %_y.addr = alloca i32, align 4, addrspace(5)
  %_y.addr.ascast = addrspacecast i32 addrspace(5)* %_y.addr to i32*
  %_z.addr = alloca i32, align 4, addrspace(5)
  %_z.addr.ascast = addrspacecast i32 addrspace(5)* %_z.addr to i32*
  store %struct.dim3* %this, %struct.dim3** %this.addr.ascast, align 8
  store i32 %_x, i32* %_x.addr.ascast, align 4
  store i32 %_y, i32* %_y.addr.ascast, align 4
  store i32 %_z, i32* %_z.addr.ascast, align 4
  %this1 = load %struct.dim3*, %struct.dim3** %this.addr.ascast, align 8
  %x = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 0
  %0 = load i32, i32* %_x.addr.ascast, align 4
  store i32 %0, i32* %x, align 4
  %y = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 1
  %1 = load i32, i32* %_y.addr.ascast, align 4
  store i32 %1, i32* %y, align 4
  %z = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 2
  %2 = load i32, i32* %_z.addr.ascast, align 4
  store i32 %2, i32* %z, align 4
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_(void (double*, double*, double*, i32)* %kernel, %struct.dim3* dereferenceable(12) %numBlocks, %struct.dim3* dereferenceable(12) %dimBlocks, i32 %sharedMemBytes, %struct.ihipStream_t* %stream, double* %args, double* %args1, double* %args3, i32 %args5) #0 {
entry:
  %kernel.addr = alloca void (double*, double*, double*, i32)*, align 8, addrspace(5)
  %kernel.addr.ascast = addrspacecast void (double*, double*, double*, i32)* addrspace(5)* %kernel.addr to void (double*, double*, double*, i32)**
  %numBlocks.addr = alloca %struct.dim3*, align 8, addrspace(5)
  %numBlocks.addr.ascast = addrspacecast %struct.dim3* addrspace(5)* %numBlocks.addr to %struct.dim3**
  %dimBlocks.addr = alloca %struct.dim3*, align 8, addrspace(5)
  %dimBlocks.addr.ascast = addrspacecast %struct.dim3* addrspace(5)* %dimBlocks.addr to %struct.dim3**
  %sharedMemBytes.addr = alloca i32, align 4, addrspace(5)
  %sharedMemBytes.addr.ascast = addrspacecast i32 addrspace(5)* %sharedMemBytes.addr to i32*
  %stream.addr = alloca %struct.ihipStream_t*, align 8, addrspace(5)
  %stream.addr.ascast = addrspacecast %struct.ihipStream_t* addrspace(5)* %stream.addr to %struct.ihipStream_t**
  %args.addr = alloca double*, align 8, addrspace(5)
  %args.addr.ascast = addrspacecast double* addrspace(5)* %args.addr to double**
  %args.addr2 = alloca double*, align 8, addrspace(5)
  %args.addr2.ascast = addrspacecast double* addrspace(5)* %args.addr2 to double**
  %args.addr4 = alloca double*, align 8, addrspace(5)
  %args.addr4.ascast = addrspacecast double* addrspace(5)* %args.addr4 to double**
  %args.addr6 = alloca i32, align 4, addrspace(5)
  %args.addr6.ascast = addrspacecast i32 addrspace(5)* %args.addr6 to i32*
  %kernarg = alloca %"class.hip_impl::kernarg", align 8, addrspace(5)
  %kernarg.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %kernarg to %"class.hip_impl::kernarg"*
  %agg.tmp = alloca %"class.std::tuple", align 8, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.std::tuple" addrspace(5)* %agg.tmp to %"class.std::tuple"*
  %kernarg_size = alloca i64, align 8, addrspace(5)
  %kernarg_size.ascast = addrspacecast i64 addrspace(5)* %kernarg_size to i64*
  %config = alloca [5 x i8*], align 16, addrspace(5)
  %config.ascast = addrspacecast [5 x i8*] addrspace(5)* %config to [5 x i8*]*
  store void (double*, double*, double*, i32)* %kernel, void (double*, double*, double*, i32)** %kernel.addr.ascast, align 8
  store %struct.dim3* %numBlocks, %struct.dim3** %numBlocks.addr.ascast, align 8
  store %struct.dim3* %dimBlocks, %struct.dim3** %dimBlocks.addr.ascast, align 8
  store i32 %sharedMemBytes, i32* %sharedMemBytes.addr.ascast, align 4
  store %struct.ihipStream_t* %stream, %struct.ihipStream_t** %stream.addr.ascast, align 8
  store double* %args, double** %args.addr.ascast, align 8
  store double* %args1, double** %args.addr2.ascast, align 8
  store double* %args3, double** %args.addr4.ascast, align 8
  store i32 %args5, i32* %args.addr6.ascast, align 4
  %call = call i32 @_ZN8hip_impl8hip_initEv() #10
  %0 = load void (double*, double*, double*, i32)*, void (double*, double*, double*, i32)** %kernel.addr.ascast, align 8
  %call7 = call dereferenceable(8) double** @_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_(double** dereferenceable(8) %args.addr.ascast) #12
  %call8 = call dereferenceable(8) double** @_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_(double** dereferenceable(8) %args.addr2.ascast) #12
  %call9 = call dereferenceable(8) double** @_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_(double** dereferenceable(8) %args.addr4.ascast) #12
  %call10 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %args.addr6.ascast) #12
  call void @_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_(%"class.std::tuple"* %agg.tmp.ascast, double** dereferenceable(8) %call7, double** dereferenceable(8) %call8, double** dereferenceable(8) %call9, i32* dereferenceable(4) %call10) #10
  %agg.tmp.ascast.ascast = addrspacecast %"class.std::tuple"* %agg.tmp.ascast to %"class.std::tuple" addrspace(5)*
  call void @_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE(%"class.hip_impl::kernarg"* sret %kernarg.ascast, void (double*, double*, double*, i32)* %0, %"class.std::tuple" addrspace(5)* %agg.tmp.ascast.ascast) #10
  %call11 = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  store i64 %call11, i64* %kernarg_size.ascast, align 8
  %arrayinit.begin = getelementptr inbounds [5 x i8*], [5 x i8*]* %config.ascast, i64 0, i64 0
  store i8* inttoptr (i64 1 to i8*), i8** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  %call12 = call i8* @_ZN8hip_impl7kernarg4dataEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  store i8* %call12, i8** %arrayinit.element, align 8
  %arrayinit.element13 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  store i8* inttoptr (i64 2 to i8*), i8** %arrayinit.element13, align 8
  %arrayinit.element14 = getelementptr inbounds i8*, i8** %arrayinit.element13, i64 1
  %1 = bitcast i64* %kernarg_size.ascast to i8*
  store i8* %1, i8** %arrayinit.element14, align 8
  %arrayinit.element15 = getelementptr inbounds i8*, i8** %arrayinit.element14, i64 1
  store i8* inttoptr (i64 3 to i8*), i8** %arrayinit.element15, align 8
  %2 = load void (double*, double*, double*, i32)*, void (double*, double*, double*, i32)** %kernel.addr.ascast, align 8
  %3 = ptrtoint void (double*, double*, double*, i32)* %2 to i64
  %4 = load %struct.dim3*, %struct.dim3** %numBlocks.addr.ascast, align 8
  %5 = load %struct.dim3*, %struct.dim3** %dimBlocks.addr.ascast, align 8
  %6 = load i32, i32* %sharedMemBytes.addr.ascast, align 4
  %7 = load %struct.ihipStream_t*, %struct.ihipStream_t** %stream.addr.ascast, align 8
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %config.ascast, i64 0, i64 0
  call void @_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv(i64 %3, %struct.dim3* dereferenceable(12) %4, %struct.dim3* dereferenceable(12) %5, i32 %6, %struct.ihipStream_t* %7, i8** %arrayidx) #10
  call void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"* %kernarg.ascast) #12
  ret void
}
; Function Attrs: convergent
declare i32 @hipGetLastError() #7
; Function Attrs: convergent
declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #7
; Function Attrs: convergent
declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #7
; Function Attrs: convergent
declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #7
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr i8* @__hip_malloc(i64 %size) #3 {
entry:
  %retval = alloca i8*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i8* addrspace(5)* %retval to i8**
  %size.addr = alloca i64, align 8, addrspace(5)
  %size.addr.ascast = addrspacecast i64 addrspace(5)* %size.addr to i64*
  %heap = alloca i8*, align 8, addrspace(5)
  %heap.ascast = addrspacecast i8* addrspace(5)* %heap to i8**
  %totalThreads = alloca i32, align 4, addrspace(5)
  %totalThreads.ascast = addrspacecast i32 addrspace(5)* %totalThreads to i32*
  %currentWorkItem = alloca i32, align 4, addrspace(5)
  %currentWorkItem.ascast = addrspacecast i32 addrspace(5)* %currentWorkItem to i32*
  %numHeapsPerWorkItem = alloca i32, align 4, addrspace(5)
  %numHeapsPerWorkItem.ascast = addrspacecast i32 addrspace(5)* %numHeapsPerWorkItem to i32*
  %heapSizePerWorkItem = alloca i32, align 4, addrspace(5)
  %heapSizePerWorkItem.ascast = addrspacecast i32 addrspace(5)* %heapSizePerWorkItem to i32*
  %stride = alloca i32, align 4, addrspace(5)
  %stride.ascast = addrspacecast i32 addrspace(5)* %stride to i32*
  %start = alloca i32, align 4, addrspace(5)
  %start.ascast = addrspacecast i32 addrspace(5)* %start to i32*
  %k = alloca i32, align 4, addrspace(5)
  %k.ascast = addrspacecast i32 addrspace(5)* %k to i32*
  %i = alloca i32, align 4, addrspace(5)
  %i.ascast = addrspacecast i32 addrspace(5)* %i to i32*
  %ptr = alloca i8*, align 8, addrspace(5)
  %ptr.ascast = addrspacecast i8* addrspace(5)* %ptr to i8**
  store i64 %size, i64* %size.addr.ascast, align 8
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* addrspacecast ([0 x i8] addrspace(1)* @__hip_device_heap to [0 x i8]*), i64 0, i64 0), i8** %heap.ascast, align 8
  %0 = load i64, i64* %size.addr.ascast, align 8
  %cmp = icmp ugt i64 %0, 4194304
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval.ascast, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @hc_get_group_size(i32 0) #11
  %call1 = call i32 @hc_get_num_groups(i32 0) #11
  %mul = mul i32 %call, %call1
  %call2 = call i32 @hc_get_group_size(i32 1) #11
  %mul3 = mul i32 %mul, %call2
  %call4 = call i32 @hc_get_num_groups(i32 1) #11
  %mul5 = mul i32 %mul3, %call4
  %call6 = call i32 @hc_get_group_size(i32 2) #11
  %mul7 = mul i32 %mul5, %call6
  %call8 = call i32 @hc_get_num_groups(i32 2) #11
  %mul9 = mul i32 %mul7, %call8
  store i32 %mul9, i32* %totalThreads.ascast, align 4
  %call10 = call i32 @hc_get_workitem_id(i32 0) #11
  %call11 = call i32 @hc_get_group_size(i32 0) #11
  %call12 = call i32 @hc_get_group_id(i32 0) #11
  %mul13 = mul i32 %call11, %call12
  %add = add i32 %call10, %mul13
  %call14 = call i32 @hc_get_workitem_id(i32 1) #11
  %call15 = call i32 @hc_get_group_size(i32 1) #11
  %call16 = call i32 @hc_get_group_id(i32 1) #11
  %mul17 = mul i32 %call15, %call16
  %add18 = add i32 %call14, %mul17
  %call19 = call i32 @hc_get_group_size(i32 0) #11
  %mul20 = mul i32 %add18, %call19
  %add21 = add i32 %add, %mul20
  %call22 = call i32 @hc_get_workitem_id(i32 2) #11
  %call23 = call i32 @hc_get_group_size(i32 2) #11
  %call24 = call i32 @hc_get_group_id(i32 2) #11
  %mul25 = mul i32 %call23, %call24
  %add26 = add i32 %call22, %mul25
  %call27 = call i32 @hc_get_group_size(i32 0) #11
  %mul28 = mul i32 %add26, %call27
  %call29 = call i32 @hc_get_group_size(i32 1) #11
  %mul30 = mul i32 %mul28, %call29
  %add31 = add i32 %add21, %mul30
  store i32 %add31, i32* %currentWorkItem.ascast, align 4
  %1 = load i32, i32* %totalThreads.ascast, align 4
  %div = udiv i32 65536, %1
  store i32 %div, i32* %numHeapsPerWorkItem.ascast, align 4
  %2 = load i32, i32* %totalThreads.ascast, align 4
  %div32 = udiv i32 4194304, %2
  store i32 %div32, i32* %heapSizePerWorkItem.ascast, align 4
  %3 = load i64, i64* %size.addr.ascast, align 8
  %div33 = udiv i64 %3, 64
  %conv = trunc i64 %div33 to i32
  store i32 %conv, i32* %stride.ascast, align 4
  %4 = load i32, i32* %numHeapsPerWorkItem.ascast, align 4
  %5 = load i32, i32* %currentWorkItem.ascast, align 4
  %mul34 = mul i32 %4, %5
  store i32 %mul34, i32* %start.ascast, align 4
  store i32 0, i32* %k.ascast, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %k.ascast, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* addrspacecast ([0 x i32] addrspace(1)* @__hip_device_page_flag to [0 x i32]*), i64 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp35 = icmp ugt i32 %7, 0
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %k.ascast, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %k.ascast, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i.ascast, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %9 = load i32, i32* %i.ascast, align 4
  %10 = load i32, i32* %stride.ascast, align 4
  %sub = sub i32 %10, 1
  %cmp36 = icmp ult i32 %9, %sub
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i.ascast, align 4
  %12 = load i32, i32* %start.ascast, align 4
  %add37 = add i32 %11, %12
  %13 = load i32, i32* %k.ascast, align 4
  %add38 = add i32 %add37, %13
  %idxprom39 = zext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [0 x i32], [0 x i32]* addrspacecast ([0 x i32] addrspace(1)* @__hip_device_page_flag to [0 x i32]*), i64 0, i64 %idxprom39
  store i32 1, i32* %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i.ascast, align 4
  %inc41 = add i32 %14, 1
  store i32 %inc41, i32* %i.ascast, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %start.ascast, align 4
  %16 = load i32, i32* %stride.ascast, align 4
  %add42 = add i32 %15, %16
  %sub43 = sub i32 %add42, 1
  %17 = load i32, i32* %k.ascast, align 4
  %add44 = add i32 %sub43, %17
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [0 x i32], [0 x i32]* addrspacecast ([0 x i32] addrspace(1)* @__hip_device_page_flag to [0 x i32]*), i64 0, i64 %idxprom45
  store i32 2, i32* %arrayidx46, align 4
  %18 = load i8*, i8** %heap.ascast, align 8
  %19 = load i32, i32* %heapSizePerWorkItem.ascast, align 4
  %20 = load i32, i32* %currentWorkItem.ascast, align 4
  %mul47 = mul i32 %19, %20
  %idx.ext = zext i32 %mul47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %21 = load i32, i32* %k.ascast, align 4
  %mul48 = mul i32 %21, 64
  %idx.ext49 = zext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext49
  store i8* %add.ptr50, i8** %ptr.ascast, align 8
  %22 = load i8*, i8** %ptr.ascast, align 8
  store i8* %22, i8** %retval.ascast, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load i8*, i8** %retval.ascast, align 8
  ret i8* %23
}
; Function Attrs: convergent nounwind readnone
declare i32 @hc_get_num_groups(i32) #5
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %this, i32 %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  %0 = load i32, i32* %__t.addr.ascast, align 4
  store i32 %0, i32* %__idx, align 4
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %this) #3 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  ret i32* %__idx
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_(%"struct.Kalmar::index_impl"* %this, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %0) #3 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl"**
  store %"struct.Kalmar::index_impl"* %this, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  %1 = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %0 to %"class.Kalmar::__index_leaf"*
  %this1 = load %"struct.Kalmar::index_impl"*, %"struct.Kalmar::index_impl"** %this.addr.ascast, align 8
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEaSEi(%"class.Kalmar::__index_leaf"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf"**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  store i32 %0, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf"* %this1
}
; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZN6Kalmar12__index_leafILi0EE3getEv(%"class.Kalmar::__index_leaf"* %this) #3 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  ret i32* %__idx
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEpLEi(%"class.Kalmar::__index_leaf"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf"**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmIEi(%"class.Kalmar::__index_leaf"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf"**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEmLEi(%"class.Kalmar::__index_leaf"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf"**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %mul = mul nsw i32 %1, %0
  store i32 %mul, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EEdVEi(%"class.Kalmar::__index_leaf"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf"**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %div = sdiv i32 %1, %0
  store i32 %div, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf"* @_ZN6Kalmar12__index_leafILi0EErMEi(%"class.Kalmar::__index_leaf"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf"**
  %this.addr = alloca %"class.Kalmar::__index_leaf"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf"* %this, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf"*, %"class.Kalmar::__index_leaf"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %rem = srem i32 %1, %0
  store i32 %rem, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf"* %this1
}
; Function Attrs: convergent nounwind readnone
declare i32 @amp_get_global_id(i32) #5
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %this, i32 %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  %0 = load i32, i32* %__t.addr.ascast, align 4
  store i32 %0, i32* %__idx, align 4
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi1EE3getEv(%"class.Kalmar::__index_leaf.2"* %this) #3 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  ret i32* %__idx
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_(%"struct.Kalmar::index_impl.1"* %this, i32 %__u, i32 %__u1) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  %__u.addr = alloca i32, align 4, addrspace(5)
  %__u.addr.ascast = addrspacecast i32 addrspace(5)* %__u.addr to i32*
  %__u.addr2 = alloca i32, align 4, addrspace(5)
  %__u.addr2.ascast = addrspacecast i32 addrspace(5)* %__u.addr2 to i32*
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  store i32 %__u, i32* %__u.addr.ascast, align 4
  store i32 %__u1, i32* %__u.addr2.ascast, align 4
  %this3 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.1"* %this3 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__u.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"struct.Kalmar::index_impl.1"* %this3 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"class.Kalmar::__index_leaf.2"*
  %5 = load i32, i32* %__u.addr2.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %4, i32 %5) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_(%"struct.Kalmar::index_impl.1"* %this, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %0, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %1) #3 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.1"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.1"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.1"**
  store %"struct.Kalmar::index_impl.1"* %this, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  %2 = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %0 to %"class.Kalmar::__index_leaf"*
  %3 = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %1 to %"class.Kalmar::__index_leaf.2"*
  %this1 = load %"struct.Kalmar::index_impl.1"*, %"struct.Kalmar::index_impl.1"** %this.addr.ascast, align 8
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEaSEi(%"class.Kalmar::__index_leaf.2"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.2"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  store i32 %0, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.2"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr zeroext i1 @_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_(%"class.Kalmar::index.0"* dereferenceable(16) %_lhs, %"class.Kalmar::index.0"* dereferenceable(16) %_rhs) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %_lhs.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %_lhs.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %_lhs.addr to %"class.Kalmar::index.0"**
  %_rhs.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %_rhs.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %_rhs.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %_lhs, %"class.Kalmar::index.0"** %_lhs.addr.ascast, align 8
  store %"class.Kalmar::index.0"* %_rhs, %"class.Kalmar::index.0"** %_rhs.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %_lhs.addr.ascast, align 8
  %call = call i32 @_ZNK6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %0, i32 0) #10
  %1 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %_rhs.addr.ascast, align 8
  %call1 = call i32 @_ZNK6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %1, i32 0) #10
  %cmp = icmp eq i32 %call, %call1
  ret i1 %cmp
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEpLEi(%"class.Kalmar::__index_leaf.2"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.2"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.2"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmIEi(%"class.Kalmar::__index_leaf.2"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.2"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.2"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEmLEi(%"class.Kalmar::__index_leaf.2"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.2"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %mul = mul nsw i32 %1, %0
  store i32 %mul, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.2"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EEdVEi(%"class.Kalmar::__index_leaf.2"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.2"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %div = sdiv i32 %1, %0
  store i32 %div, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.2"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.2"* @_ZN6Kalmar12__index_leafILi1EErMEi(%"class.Kalmar::__index_leaf.2"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.2"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.2"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.2"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.2"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.2"* %this, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.2"*, %"class.Kalmar::__index_leaf.2"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.2"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %rem = srem i32 %1, %0
  store i32 %rem, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.2"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_(%"class.Kalmar::index.0"* dereferenceable(16) %now) #2 align 2 {
entry:
  %now.addr = alloca %"class.Kalmar::index.0"*, align 8, addrspace(5)
  %now.addr.ascast = addrspacecast %"class.Kalmar::index.0"* addrspace(5)* %now.addr to %"class.Kalmar::index.0"**
  store %"class.Kalmar::index.0"* %now, %"class.Kalmar::index.0"** %now.addr.ascast, align 8
  %call = call i32 @amp_get_global_id(i32 1) #11
  %0 = load %"class.Kalmar::index.0"*, %"class.Kalmar::index.0"** %now.addr.ascast, align 8
  %call1 = call dereferenceable(4) i32* @_ZN6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %0, i32 0) #10
  store i32 %call, i32* %call1, align 4
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar12__index_leafILi2EEC2Ei(%"class.Kalmar::__index_leaf.5"* %this, i32 %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  %0 = load i32, i32* %__t.addr.ascast, align 4
  store i32 %0, i32* %__idx, align 4
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZNK6Kalmar12__index_leafILi2EE3getEv(%"class.Kalmar::__index_leaf.5"* %this) #3 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  ret i32* %__idx
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_(%"struct.Kalmar::index_impl.4"* %this, i32 %__u, i32 %__u1, i32 %__u3) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  %__u.addr = alloca i32, align 4, addrspace(5)
  %__u.addr.ascast = addrspacecast i32 addrspace(5)* %__u.addr to i32*
  %__u.addr2 = alloca i32, align 4, addrspace(5)
  %__u.addr2.ascast = addrspacecast i32 addrspace(5)* %__u.addr2 to i32*
  %__u.addr4 = alloca i32, align 4, addrspace(5)
  %__u.addr4.ascast = addrspacecast i32 addrspace(5)* %__u.addr4 to i32*
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  store i32 %__u, i32* %__u.addr.ascast, align 4
  store i32 %__u1, i32* %__u.addr2.ascast, align 4
  store i32 %__u3, i32* %__u.addr4.ascast, align 4
  %this5 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.Kalmar::index_impl.4"* %this5 to %"class.Kalmar::__index_leaf"*
  %1 = load i32, i32* %__u.addr.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi0EEC2Ei(%"class.Kalmar::__index_leaf"* %0, i32 %1) #10
  %2 = bitcast %"struct.Kalmar::index_impl.4"* %this5 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"class.Kalmar::__index_leaf.2"*
  %5 = load i32, i32* %__u.addr2.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi1EEC2Ei(%"class.Kalmar::__index_leaf.2"* %4, i32 %5) #10
  %6 = bitcast %"struct.Kalmar::index_impl.4"* %this5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 16
  %8 = bitcast i8* %7 to %"class.Kalmar::__index_leaf.5"*
  %9 = load i32, i32* %__u.addr4.ascast, align 4
  call void @_ZN6Kalmar12__index_leafILi2EEC2Ei(%"class.Kalmar::__index_leaf.5"* %8, i32 %9) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_(%"struct.Kalmar::index_impl.4"* %this, %"class.Kalmar::__index_leaf" addrspace(5)* byval(%"class.Kalmar::__index_leaf") align 4 %0, %"class.Kalmar::__index_leaf.2" addrspace(5)* byval(%"class.Kalmar::__index_leaf.2") align 4 %1, %"class.Kalmar::__index_leaf.5" addrspace(5)* byval(%"class.Kalmar::__index_leaf.5") align 4 %2) #3 align 2 {
entry:
  %this.addr = alloca %"struct.Kalmar::index_impl.4"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.Kalmar::index_impl.4"* addrspace(5)* %this.addr to %"struct.Kalmar::index_impl.4"**
  store %"struct.Kalmar::index_impl.4"* %this, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  %3 = addrspacecast %"class.Kalmar::__index_leaf" addrspace(5)* %0 to %"class.Kalmar::__index_leaf"*
  %4 = addrspacecast %"class.Kalmar::__index_leaf.2" addrspace(5)* %1 to %"class.Kalmar::__index_leaf.2"*
  %5 = addrspacecast %"class.Kalmar::__index_leaf.5" addrspace(5)* %2 to %"class.Kalmar::__index_leaf.5"*
  %this1 = load %"struct.Kalmar::index_impl.4"*, %"struct.Kalmar::index_impl.4"** %this.addr.ascast, align 8
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEaSEi(%"class.Kalmar::__index_leaf.5"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.5"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  store i32 %0, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.5"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr zeroext i1 @_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_(%"class.Kalmar::index.3"* dereferenceable(24) %_lhs, %"class.Kalmar::index.3"* dereferenceable(24) %_rhs) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %_lhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %_lhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %_lhs.addr to %"class.Kalmar::index.3"**
  %_rhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %_rhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %_rhs.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %_lhs, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %_rhs, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  %call = call i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %0, i32 1) #10
  %1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %call1 = call i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %1, i32 1) #10
  %cmp = icmp eq i32 %call, %call1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  %3 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %call2 = call zeroext i1 @_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_(%"class.Kalmar::index.3"* dereferenceable(24) %2, %"class.Kalmar::index.3"* dereferenceable(24) %3) #10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %call2, %land.rhs ]
  ret i1 %4
}
; Function Attrs: convergent noinline optnone
define linkonce_odr zeroext i1 @_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_(%"class.Kalmar::index.3"* dereferenceable(24) %_lhs, %"class.Kalmar::index.3"* dereferenceable(24) %_rhs) #2 align 2 {
entry:
  %retval = alloca i1, align 1, addrspace(5)
  %retval.ascast = addrspacecast i1 addrspace(5)* %retval to i1*
  %_lhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %_lhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %_lhs.addr to %"class.Kalmar::index.3"**
  %_rhs.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %_rhs.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %_rhs.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %_lhs, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  store %"class.Kalmar::index.3"* %_rhs, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_lhs.addr.ascast, align 8
  %call = call i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %0, i32 0) #10
  %1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %_rhs.addr.ascast, align 8
  %call1 = call i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %1, i32 0) #10
  %cmp = icmp eq i32 %call, %call1
  ret i1 %cmp
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEpLEi(%"class.Kalmar::__index_leaf.5"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.5"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.5"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEmIEi(%"class.Kalmar::__index_leaf.5"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.5"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.5"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEmLEi(%"class.Kalmar::__index_leaf.5"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.5"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %mul = mul nsw i32 %1, %0
  store i32 %mul, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.5"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EEdVEi(%"class.Kalmar::__index_leaf.5"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.5"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %div = sdiv i32 %1, %0
  store i32 %div, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.5"* %this1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.Kalmar::__index_leaf.5"* @_ZN6Kalmar12__index_leafILi2EErMEi(%"class.Kalmar::__index_leaf.5"* %this, i32 %__t) #3 align 2 {
entry:
  %retval = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %retval to %"class.Kalmar::__index_leaf.5"**
  %this.addr = alloca %"class.Kalmar::__index_leaf.5"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.Kalmar::__index_leaf.5"* addrspace(5)* %this.addr to %"class.Kalmar::__index_leaf.5"**
  %__t.addr = alloca i32, align 4, addrspace(5)
  %__t.addr.ascast = addrspacecast i32 addrspace(5)* %__t.addr to i32*
  store %"class.Kalmar::__index_leaf.5"* %this, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  store i32 %__t, i32* %__t.addr.ascast, align 4
  %this1 = load %"class.Kalmar::__index_leaf.5"*, %"class.Kalmar::__index_leaf.5"** %this.addr.ascast, align 8
  %0 = load i32, i32* %__t.addr.ascast, align 4
  %__idx = getelementptr inbounds %"class.Kalmar::__index_leaf.5", %"class.Kalmar::__index_leaf.5"* %this1, i32 0, i32 0
  %1 = load i32, i32* %__idx, align 4
  %rem = srem i32 %1, %0
  store i32 %rem, i32* %__idx, align 4
  ret %"class.Kalmar::__index_leaf.5"* %this1
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_(%"class.Kalmar::index.3"* dereferenceable(24) %now) #2 align 2 {
entry:
  %now.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %now.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %now.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %now, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  %call = call i32 @amp_get_global_id(i32 1) #11
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  %call1 = call dereferenceable(4) i32* @_ZN6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %0, i32 1) #10
  store i32 %call, i32* %call1, align 4
  %1 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  call void @_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_(%"class.Kalmar::index.3"* dereferenceable(24) %1) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_(%"class.Kalmar::index.3"* dereferenceable(24) %now) #2 align 2 {
entry:
  %now.addr = alloca %"class.Kalmar::index.3"*, align 8, addrspace(5)
  %now.addr.ascast = addrspacecast %"class.Kalmar::index.3"* addrspace(5)* %now.addr to %"class.Kalmar::index.3"**
  store %"class.Kalmar::index.3"* %now, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  %call = call i32 @amp_get_global_id(i32 2) #11
  %0 = load %"class.Kalmar::index.3"*, %"class.Kalmar::index.3"** %now.addr.ascast, align 8
  %call1 = call dereferenceable(4) i32* @_ZN6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %0, i32 0) #10
  store i32 %call, i32* %call1, align 4
  ret void
}
; Function Attrs: convergent
declare i32 @_ZN8hip_impl8hip_initEv() #7
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE(%"class.hip_impl::kernarg"* noalias sret %agg.result, void (double*, double*, double*, i32)* %kernel, %"class.std::tuple" addrspace(5)* %actuals) #0 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %kernel.addr = alloca void (double*, double*, double*, i32)*, align 8, addrspace(5)
  %kernel.addr.ascast = addrspacecast void (double*, double*, double*, i32)* addrspace(5)* %kernel.addr to void (double*, double*, double*, i32)**
  %to_formals = alloca %"class.std::tuple", align 8, addrspace(5)
  %to_formals.ascast = addrspacecast %"class.std::tuple" addrspace(5)* %to_formals to %"class.std::tuple"*
  %kernarg = alloca %"class.hip_impl::kernarg", align 8, addrspace(5)
  %kernarg.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %kernarg to %"class.hip_impl::kernarg"*
  %ps = alloca %"class.hip_impl::program_state"*, align 8, addrspace(5)
  %ps.ascast = addrspacecast %"class.hip_impl::program_state"* addrspace(5)* %ps to %"class.hip_impl::program_state"**
  %ref.tmp = alloca %"class.hip_impl::kernargs_size_align", align 8, addrspace(5)
  %ref.tmp.ascast = addrspacecast %"class.hip_impl::kernargs_size_align" addrspace(5)* %ref.tmp to %"class.hip_impl::kernargs_size_align"*
  %agg.tmp = alloca %"class.hip_impl::kernarg", align 8, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp to %"class.hip_impl::kernarg"*
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %0 = bitcast %"class.hip_impl::kernarg"* %agg.result to i8*
  store i8* %0, i8** %result.ptr.ascast, align 8
  store void (double*, double*, double*, i32)* %kernel, void (double*, double*, double*, i32)** %kernel.addr.ascast, align 8
  %actuals.ascast = addrspacecast %"class.std::tuple" addrspace(5)* %actuals to %"class.std::tuple"*
  %call = call dereferenceable(32) %"class.std::tuple"* @_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::tuple"* dereferenceable(32) %actuals.ascast) #12
  call void @_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_(%"class.std::tuple"* %to_formals.ascast, %"class.std::tuple"* dereferenceable(32) %call) #12
  call void @_ZN8hip_impl7kernargC1Ev(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  call void @_ZN8hip_impl7kernarg7reserveEm(%"class.hip_impl::kernarg"* %kernarg.ascast, i64 32) #10
  %call1 = call dereferenceable(8) %"class.hip_impl::program_state"* @_ZN8hip_impl17get_program_stateEv() #10
  store %"class.hip_impl::program_state"* %call1, %"class.hip_impl::program_state"** %ps.ascast, align 8
  %1 = load %"class.hip_impl::program_state"*, %"class.hip_impl::program_state"** %ps.ascast, align 8
  %2 = load void (double*, double*, double*, i32)*, void (double*, double*, double*, i32)** %kernel.addr.ascast, align 8
  %3 = ptrtoint void (double*, double*, double*, i32)* %2 to i64
  %call2 = call i8* @_ZN8hip_impl13program_state23get_kernargs_size_alignEm(%"class.hip_impl::program_state"* %1, i64 %3) #10
  %coerce.dive = getelementptr inbounds %"class.hip_impl::kernargs_size_align", %"class.hip_impl::kernargs_size_align"* %ref.tmp.ascast, i32 0, i32 0
  store i8* %call2, i8** %coerce.dive, align 8
  %call3 = call dereferenceable(8) %"class.hip_impl::kernarg"* @_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_(%"class.hip_impl::kernarg"* dereferenceable(8) %kernarg.ascast) #12
  call void @_ZN8hip_impl7kernargC1EOS0_(%"class.hip_impl::kernarg"* %agg.tmp.ascast, %"class.hip_impl::kernarg"* dereferenceable(8) %call3) #10
  %agg.tmp.ascast.ascast = addrspacecast %"class.hip_impl::kernarg"* %agg.tmp.ascast to %"class.hip_impl::kernarg" addrspace(5)*
  call void @_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* sret %agg.result, %"class.std::tuple"* dereferenceable(32) %to_formals.ascast, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %ref.tmp.ascast, %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp.ascast.ascast) #10
  call void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"* %agg.tmp.ascast) #12
  call void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"* %kernarg.ascast) #12
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_(double** dereferenceable(8) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca double**, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast double** addrspace(5)* %__t.addr to double***
  store double** %__t, double*** %__t.addr.ascast, align 8
  %0 = load double**, double*** %__t.addr.ascast, align 8
  ret double** %0
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__t) #1 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__t.addr = alloca i32*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast i32* addrspace(5)* %__t.addr to i32**
  store i32* %__t, i32** %__t.addr.ascast, align 8
  %0 = load i32*, i32** %__t.addr.ascast, align 8
  ret i32* %0
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_(%"class.std::tuple"* %this, double** dereferenceable(8) %__elements, double** dereferenceable(8) %__elements1, double** dereferenceable(8) %__elements3, i32* dereferenceable(4) %__elements5) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %this.addr to %"class.std::tuple"**
  %__elements.addr = alloca double**, align 8, addrspace(5)
  %__elements.addr.ascast = addrspacecast double** addrspace(5)* %__elements.addr to double***
  %__elements.addr2 = alloca double**, align 8, addrspace(5)
  %__elements.addr2.ascast = addrspacecast double** addrspace(5)* %__elements.addr2 to double***
  %__elements.addr4 = alloca double**, align 8, addrspace(5)
  %__elements.addr4.ascast = addrspacecast double** addrspace(5)* %__elements.addr4 to double***
  %__elements.addr6 = alloca i32*, align 8, addrspace(5)
  %__elements.addr6.ascast = addrspacecast i32* addrspace(5)* %__elements.addr6 to i32**
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr.ascast, align 8
  store double** %__elements, double*** %__elements.addr.ascast, align 8
  store double** %__elements1, double*** %__elements.addr2.ascast, align 8
  store double** %__elements3, double*** %__elements.addr4.ascast, align 8
  store i32* %__elements5, i32** %__elements.addr6.ascast, align 8
  %this7 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr.ascast, align 8
  %0 = bitcast %"class.std::tuple"* %this7 to %"struct.std::_Tuple_impl"*
  %1 = load double**, double*** %__elements.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %1) #12
  %2 = load double**, double*** %__elements.addr2.ascast, align 8
  %call8 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %2) #12
  %3 = load double**, double*** %__elements.addr4.ascast, align 8
  %call9 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %3) #12
  %4 = load i32*, i32** %__elements.addr6.ascast, align 8
  %call10 = call dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %4) #12
  call void @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_(%"struct.std::_Tuple_impl"* %0, double** dereferenceable(8) %call, double** dereferenceable(8) %call8, double** dereferenceable(8) %call9, i32* dereferenceable(4) %call10) #10
  ret void
}
; Function Attrs: convergent
declare i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"*) #7
; Function Attrs: convergent
declare i8* @_ZN8hip_impl7kernarg4dataEv(%"class.hip_impl::kernarg"*) #7
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv(i64 %function_address, %struct.dim3* dereferenceable(12) %numBlocks, %struct.dim3* dereferenceable(12) %dimBlocks, i32 %sharedMemBytes, %struct.ihipStream_t* %stream, i8** %kernarg) #0 {
entry:
  %function_address.addr = alloca i64, align 8, addrspace(5)
  %function_address.addr.ascast = addrspacecast i64 addrspace(5)* %function_address.addr to i64*
  %numBlocks.addr = alloca %struct.dim3*, align 8, addrspace(5)
  %numBlocks.addr.ascast = addrspacecast %struct.dim3* addrspace(5)* %numBlocks.addr to %struct.dim3**
  %dimBlocks.addr = alloca %struct.dim3*, align 8, addrspace(5)
  %dimBlocks.addr.ascast = addrspacecast %struct.dim3* addrspace(5)* %dimBlocks.addr to %struct.dim3**
  %sharedMemBytes.addr = alloca i32, align 4, addrspace(5)
  %sharedMemBytes.addr.ascast = addrspacecast i32 addrspace(5)* %sharedMemBytes.addr to i32*
  %stream.addr = alloca %struct.ihipStream_t*, align 8, addrspace(5)
  %stream.addr.ascast = addrspacecast %struct.ihipStream_t* addrspace(5)* %stream.addr to %struct.ihipStream_t**
  %kernarg.addr = alloca i8**, align 8, addrspace(5)
  %kernarg.addr.ascast = addrspacecast i8** addrspace(5)* %kernarg.addr to i8***
  %kd = alloca %struct.ihipModuleSymbol_t**, align 8, addrspace(5)
  %kd.ascast = addrspacecast %struct.ihipModuleSymbol_t** addrspace(5)* %kd to %struct.ihipModuleSymbol_t***
  %ref.tmp = alloca %struct.ihipModuleSymbol_t*, align 8, addrspace(5)
  %ref.tmp.ascast = addrspacecast %struct.ihipModuleSymbol_t* addrspace(5)* %ref.tmp to %struct.ihipModuleSymbol_t**
  %agg.tmp = alloca %struct.hsa_agent_s, align 8, addrspace(5)
  %agg.tmp.ascast = addrspacecast %struct.hsa_agent_s addrspace(5)* %agg.tmp to %struct.hsa_agent_s*
  store i64 %function_address, i64* %function_address.addr.ascast, align 8
  store %struct.dim3* %numBlocks, %struct.dim3** %numBlocks.addr.ascast, align 8
  store %struct.dim3* %dimBlocks, %struct.dim3** %dimBlocks.addr.ascast, align 8
  store i32 %sharedMemBytes, i32* %sharedMemBytes.addr.ascast, align 4
  store %struct.ihipStream_t* %stream, %struct.ihipStream_t** %stream.addr.ascast, align 8
  store i8** %kernarg, i8*** %kernarg.addr.ascast, align 8
  %call = call dereferenceable(8) %"class.hip_impl::program_state"* @_ZN8hip_impl17get_program_stateEv() #10
  %0 = load i64, i64* %function_address.addr.ascast, align 8
  %1 = load %struct.ihipStream_t*, %struct.ihipStream_t** %stream.addr.ascast, align 8
  %call1 = call i64 @_ZN8hip_impl12target_agentEP12ihipStream_t(%struct.ihipStream_t* %1) #10
  %coerce.dive = getelementptr inbounds %struct.hsa_agent_s, %struct.hsa_agent_s* %agg.tmp.ascast, i32 0, i32 0
  store i64 %call1, i64* %coerce.dive, align 8
  %agg.tmp.ascast.ascast = addrspacecast %struct.hsa_agent_s* %agg.tmp.ascast to %struct.hsa_agent_s addrspace(5)*
  %call2 = call %struct.ihipModuleSymbol_t* @_ZN8hip_impl13program_state17kernel_descriptorEm11hsa_agent_s(%"class.hip_impl::program_state"* %call, i64 %0, %struct.hsa_agent_s addrspace(5)* byval(%struct.hsa_agent_s) align 8 %agg.tmp.ascast.ascast) #10
  store %struct.ihipModuleSymbol_t* %call2, %struct.ihipModuleSymbol_t** %ref.tmp.ascast, align 8
  store %struct.ihipModuleSymbol_t** %ref.tmp.ascast, %struct.ihipModuleSymbol_t*** %kd.ascast, align 8
  %2 = load %struct.ihipModuleSymbol_t**, %struct.ihipModuleSymbol_t*** %kd.ascast, align 8
  %3 = load %struct.ihipModuleSymbol_t*, %struct.ihipModuleSymbol_t** %2, align 8
  %4 = load %struct.dim3*, %struct.dim3** %numBlocks.addr.ascast, align 8
  %x = getelementptr inbounds %struct.dim3, %struct.dim3* %4, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.dim3*, %struct.dim3** %numBlocks.addr.ascast, align 8
  %y = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i32 0, i32 1
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.dim3*, %struct.dim3** %numBlocks.addr.ascast, align 8
  %z = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i32 0, i32 2
  %9 = load i32, i32* %z, align 4
  %10 = load %struct.dim3*, %struct.dim3** %dimBlocks.addr.ascast, align 8
  %x3 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i32 0, i32 0
  %11 = load i32, i32* %x3, align 4
  %12 = load %struct.dim3*, %struct.dim3** %dimBlocks.addr.ascast, align 8
  %y4 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i32 0, i32 1
  %13 = load i32, i32* %y4, align 4
  %14 = load %struct.dim3*, %struct.dim3** %dimBlocks.addr.ascast, align 8
  %z5 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i32 0, i32 2
  %15 = load i32, i32* %z5, align 4
  %16 = load i32, i32* %sharedMemBytes.addr.ascast, align 4
  %17 = load %struct.ihipStream_t*, %struct.ihipStream_t** %stream.addr.ascast, align 8
  %18 = load i8**, i8*** %kernarg.addr.ascast, align 8
  %call6 = call i32 @hipModuleLaunchKernel(%struct.ihipModuleSymbol_t* %3, i32 %5, i32 %7, i32 %9, i32 %11, i32 %13, i32 %15, i32 %16, %struct.ihipStream_t* %17, i8** null, i8** %18) #10
  ret void
}
; Function Attrs: convergent nounwind
declare void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"*) unnamed_addr #9
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(32) %"class.std::tuple"* @_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::tuple"* dereferenceable(32) %__t) #1 {
entry:
  %retval = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %retval to %"class.std::tuple"**
  %__t.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %__t.addr to %"class.std::tuple"**
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr.ascast, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr.ascast, align 8
  ret %"class.std::tuple"* %0
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_(%"class.std::tuple"* %this, %"class.std::tuple"* dereferenceable(32) %0) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %this.addr to %"class.std::tuple"**
  %.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %.addr to %"class.std::tuple"**
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr.ascast, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %.addr.ascast, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr.ascast, align 8
  %1 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  %2 = load %"class.std::tuple"*, %"class.std::tuple"** %.addr.ascast, align 8
  %3 = bitcast %"class.std::tuple"* %2 to %"struct.std::_Tuple_impl"*
  call void @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_(%"struct.std::_Tuple_impl"* %1, %"struct.std::_Tuple_impl"* dereferenceable(32) %3) #12
  ret void
}
; Function Attrs: convergent
declare void @_ZN8hip_impl7kernargC1Ev(%"class.hip_impl::kernarg"*) unnamed_addr #7
; Function Attrs: convergent
declare void @_ZN8hip_impl7kernarg7reserveEm(%"class.hip_impl::kernarg"*, i64) #7
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr hidden dereferenceable(8) %"class.hip_impl::program_state"* @_ZN8hip_impl17get_program_stateEv() #1 {
entry:
  %retval = alloca %"class.hip_impl::program_state"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.hip_impl::program_state"* addrspace(5)* %retval to %"class.hip_impl::program_state"**
  ret %"class.hip_impl::program_state"* addrspacecast (%"class.hip_impl::program_state" addrspace(1)* @_ZZN8hip_impl17get_program_stateEvE2ps to %"class.hip_impl::program_state"*)
}
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* noalias sret %agg.result, %"class.std::tuple"* dereferenceable(32) %formals, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %size_align, %"class.hip_impl::kernarg" addrspace(5)* %kernarg) #0 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %formals.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %formals.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %formals.addr to %"class.std::tuple"**
  %size_align.addr = alloca %"class.hip_impl::kernargs_size_align"*, align 8, addrspace(5)
  %size_align.addr.ascast = addrspacecast %"class.hip_impl::kernargs_size_align"* addrspace(5)* %size_align.addr to %"class.hip_impl::kernargs_size_align"**
  %agg.tmp = alloca %"class.hip_impl::kernarg", align 8, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp to %"class.hip_impl::kernarg"*
  %0 = bitcast %"class.hip_impl::kernarg"* %agg.result to i8*
  store i8* %0, i8** %result.ptr.ascast, align 8
  store %"class.std::tuple"* %formals, %"class.std::tuple"** %formals.addr.ascast, align 8
  store %"class.hip_impl::kernargs_size_align"* %size_align, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %kernarg.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %kernarg to %"class.hip_impl::kernarg"*
  %call = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %1 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call1 = call i64 @_ZNK8hip_impl19kernargs_size_align9alignmentEm(%"class.hip_impl::kernargs_size_align"* %1, i64 0) #10
  %call2 = call i64 @_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_(i64 %call, i64 %call1) #10
  %2 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call3 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %2, i64 0) #10
  %add = add i64 %call2, %call3
  call void @_ZN8hip_impl7kernarg6resizeEm(%"class.hip_impl::kernarg"* %kernarg.ascast, i64 %add) #10
  %call4 = call i8* @_ZN8hip_impl7kernarg4dataEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %call5 = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %call5
  %3 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call6 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %3, i64 0) #10
  %idx.neg = sub i64 0, %call6
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %call8 = call dereferenceable(8) double** @_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %4) #12
  %5 = bitcast double** %call8 to i8*
  %6 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call9 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %6, i64 0) #10
  %call10 = call i8* @memcpy(i8* %add.ptr7, i8* %5, i64 %call9) #12
  %7 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %8 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call11 = call dereferenceable(8) %"class.hip_impl::kernarg"* @_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_(%"class.hip_impl::kernarg"* dereferenceable(8) %kernarg.ascast) #12
  call void @_ZN8hip_impl7kernargC1EOS0_(%"class.hip_impl::kernarg"* %agg.tmp.ascast, %"class.hip_impl::kernarg"* dereferenceable(8) %call11) #10
  %agg.tmp.ascast.ascast = addrspacecast %"class.hip_impl::kernarg"* %agg.tmp.ascast to %"class.hip_impl::kernarg" addrspace(5)*
  call void @_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* sret %agg.result, %"class.std::tuple"* dereferenceable(32) %7, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %8, %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp.ascast.ascast) #10
  call void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"* %agg.tmp.ascast) #12
  ret void
}
; Function Attrs: convergent
declare i8* @_ZN8hip_impl13program_state23get_kernargs_size_alignEm(%"class.hip_impl::program_state"*, i64) #7
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) %"class.hip_impl::kernarg"* @_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_(%"class.hip_impl::kernarg"* dereferenceable(8) %__t) #1 {
entry:
  %retval = alloca %"class.hip_impl::kernarg"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"class.hip_impl::kernarg"* addrspace(5)* %retval to %"class.hip_impl::kernarg"**
  %__t.addr = alloca %"class.hip_impl::kernarg"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"class.hip_impl::kernarg"* addrspace(5)* %__t.addr to %"class.hip_impl::kernarg"**
  store %"class.hip_impl::kernarg"* %__t, %"class.hip_impl::kernarg"** %__t.addr.ascast, align 8
  %0 = load %"class.hip_impl::kernarg"*, %"class.hip_impl::kernarg"** %__t.addr.ascast, align 8
  ret %"class.hip_impl::kernarg"* %0
}
; Function Attrs: convergent
declare void @_ZN8hip_impl7kernargC1EOS0_(%"class.hip_impl::kernarg"*, %"class.hip_impl::kernarg"* dereferenceable(8)) unnamed_addr #7
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_(%"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"* dereferenceable(32) %__in) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl"**
  %__in.addr = alloca %"struct.std::_Tuple_impl"*, align 8, addrspace(5)
  %__in.addr.ascast = addrspacecast %"struct.std::_Tuple_impl"* addrspace(5)* %__in.addr to %"struct.std::_Tuple_impl"**
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr.ascast, align 8
  store %"struct.std::_Tuple_impl"* %__in, %"struct.std::_Tuple_impl"** %__in.addr.ascast, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.6"*
  %1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__in.addr.ascast, align 8
  %call = call dereferenceable(24) %"struct.std::_Tuple_impl.6"* @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_(%"struct.std::_Tuple_impl"* dereferenceable(32) %1) #12
  %call2 = call dereferenceable(24) %"struct.std::_Tuple_impl.6"* @_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %call) #12
  call void @_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_(%"struct.std::_Tuple_impl.6"* %0, %"struct.std::_Tuple_impl.6"* dereferenceable(24) %call2) #12
  %2 = bitcast %"struct.std::_Tuple_impl"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 24
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.11"*
  %5 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__in.addr.ascast, align 8
  %call3 = call dereferenceable(8) double** @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_(%"struct.std::_Tuple_impl"* dereferenceable(32) %5) #12
  %call4 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %call3) #12
  call void @_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.11"* %4, double** dereferenceable(8) %call4) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(24) %"struct.std::_Tuple_impl.6"* @_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %__t) #1 {
entry:
  %retval = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %retval to %"struct.std::_Tuple_impl.6"**
  %__t.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.6"**
  store %"struct.std::_Tuple_impl.6"* %__t, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  ret %"struct.std::_Tuple_impl.6"* %0
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(24) %"struct.std::_Tuple_impl.6"* @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_(%"struct.std::_Tuple_impl"* dereferenceable(32) %__t) #1 align 2 {
entry:
  %retval = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %retval to %"struct.std::_Tuple_impl.6"**
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl"**
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Tuple_impl.6"*
  ret %"struct.std::_Tuple_impl.6"* %1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_(%"struct.std::_Tuple_impl.6"* %this, %"struct.std::_Tuple_impl.6"* dereferenceable(24) %__in) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl.6"**
  %__in.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %__in.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %__in.addr to %"struct.std::_Tuple_impl.6"**
  store %"struct.std::_Tuple_impl.6"* %this, %"struct.std::_Tuple_impl.6"** %this.addr.ascast, align 8
  store %"struct.std::_Tuple_impl.6"* %__in, %"struct.std::_Tuple_impl.6"** %__in.addr.ascast, align 8
  %this1 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.6"* %this1 to %"struct.std::_Tuple_impl.7"*
  %1 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %__in.addr.ascast, align 8
  %call = call dereferenceable(16) %"struct.std::_Tuple_impl.7"* @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %1) #12
  %call2 = call dereferenceable(16) %"struct.std::_Tuple_impl.7"* @_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %call) #12
  call void @_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_(%"struct.std::_Tuple_impl.7"* %0, %"struct.std::_Tuple_impl.7"* dereferenceable(16) %call2) #12
  %2 = bitcast %"struct.std::_Tuple_impl.6"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 16
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.10"*
  %5 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %__in.addr.ascast, align 8
  %call3 = call dereferenceable(8) double** @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %5) #12
  %call4 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %call3) #12
  call void @_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.10"* %4, double** dereferenceable(8) %call4) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca double**, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast double** addrspace(5)* %__t.addr to double***
  store double** %__t, double*** %__t.addr.ascast, align 8
  %0 = load double**, double*** %__t.addr.ascast, align 8
  ret double** %0
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_(%"struct.std::_Tuple_impl"* dereferenceable(32) %__t) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl"**
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 24
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.11"*
  %call = call dereferenceable(8) double** @_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_(%"struct.std::_Head_base.11"* dereferenceable(8) %2) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.11"* %this, double** dereferenceable(8) %__h) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.11"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Head_base.11"* addrspace(5)* %this.addr to %"struct.std::_Head_base.11"**
  %__h.addr = alloca double**, align 8, addrspace(5)
  %__h.addr.ascast = addrspacecast double** addrspace(5)* %__h.addr to double***
  store %"struct.std::_Head_base.11"* %this, %"struct.std::_Head_base.11"** %this.addr.ascast, align 8
  store double** %__h, double*** %__h.addr.ascast, align 8
  %this1 = load %"struct.std::_Head_base.11"*, %"struct.std::_Head_base.11"** %this.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.11", %"struct.std::_Head_base.11"* %this1, i32 0, i32 0
  %0 = load double**, double*** %__h.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %0) #12
  %1 = load double*, double** %call, align 8
  store double* %1, double** %_M_head_impl, align 8
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(16) %"struct.std::_Tuple_impl.7"* @_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %__t) #1 {
entry:
  %retval = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %retval to %"struct.std::_Tuple_impl.7"**
  %__t.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.7"**
  store %"struct.std::_Tuple_impl.7"* %__t, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  ret %"struct.std::_Tuple_impl.7"* %0
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(16) %"struct.std::_Tuple_impl.7"* @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %__t) #1 align 2 {
entry:
  %retval = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %retval to %"struct.std::_Tuple_impl.7"**
  %__t.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.6"**
  store %"struct.std::_Tuple_impl.6"* %__t, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.6"* %0 to %"struct.std::_Tuple_impl.7"*
  ret %"struct.std::_Tuple_impl.7"* %1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_(%"struct.std::_Tuple_impl.7"* %this, %"struct.std::_Tuple_impl.7"* dereferenceable(16) %__in) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl.7"**
  %__in.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %__in.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %__in.addr to %"struct.std::_Tuple_impl.7"**
  store %"struct.std::_Tuple_impl.7"* %this, %"struct.std::_Tuple_impl.7"** %this.addr.ascast, align 8
  store %"struct.std::_Tuple_impl.7"* %__in, %"struct.std::_Tuple_impl.7"** %__in.addr.ascast, align 8
  %this1 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.7"* %this1 to %"struct.std::_Tuple_impl.8"*
  %1 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %__in.addr.ascast, align 8
  %call = call dereferenceable(4) %"struct.std::_Tuple_impl.8"* @_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %1) #12
  %call2 = call dereferenceable(4) %"struct.std::_Tuple_impl.8"* @_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %call) #12
  call void @_ZNSt11_Tuple_implILm3EJiEEC2EOS0_(%"struct.std::_Tuple_impl.8"* %0, %"struct.std::_Tuple_impl.8"* dereferenceable(4) %call2) #12
  %2 = bitcast %"struct.std::_Tuple_impl.7"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.9"*
  %5 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %__in.addr.ascast, align 8
  %call3 = call dereferenceable(8) double** @_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %5) #12
  %call4 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %call3) #12
  call void @_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.9"* %4, double** dereferenceable(8) %call4) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %__t) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.6"**
  store %"struct.std::_Tuple_impl.6"* %__t, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.6"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 16
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.10"*
  %call = call dereferenceable(8) double** @_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_(%"struct.std::_Head_base.10"* dereferenceable(8) %2) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.10"* %this, double** dereferenceable(8) %__h) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.10"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Head_base.10"* addrspace(5)* %this.addr to %"struct.std::_Head_base.10"**
  %__h.addr = alloca double**, align 8, addrspace(5)
  %__h.addr.ascast = addrspacecast double** addrspace(5)* %__h.addr to double***
  store %"struct.std::_Head_base.10"* %this, %"struct.std::_Head_base.10"** %this.addr.ascast, align 8
  store double** %__h, double*** %__h.addr.ascast, align 8
  %this1 = load %"struct.std::_Head_base.10"*, %"struct.std::_Head_base.10"** %this.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.10", %"struct.std::_Head_base.10"* %this1, i32 0, i32 0
  %0 = load double**, double*** %__h.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %0) #12
  %1 = load double*, double** %call, align 8
  store double* %1, double** %_M_head_impl, align 8
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) %"struct.std::_Tuple_impl.8"* @_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %__t) #1 {
entry:
  %retval = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %retval to %"struct.std::_Tuple_impl.8"**
  %__t.addr = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.8"**
  store %"struct.std::_Tuple_impl.8"* %__t, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.8"*, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  ret %"struct.std::_Tuple_impl.8"* %0
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) %"struct.std::_Tuple_impl.8"* @_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %__t) #1 align 2 {
entry:
  %retval = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %retval.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %retval to %"struct.std::_Tuple_impl.8"**
  %__t.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.7"**
  store %"struct.std::_Tuple_impl.7"* %__t, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.7"* %0 to %"struct.std::_Tuple_impl.8"*
  ret %"struct.std::_Tuple_impl.8"* %1
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm3EJiEEC2EOS0_(%"struct.std::_Tuple_impl.8"* %this, %"struct.std::_Tuple_impl.8"* dereferenceable(4) %__in) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl.8"**
  %__in.addr = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %__in.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %__in.addr to %"struct.std::_Tuple_impl.8"**
  store %"struct.std::_Tuple_impl.8"* %this, %"struct.std::_Tuple_impl.8"** %this.addr.ascast, align 8
  store %"struct.std::_Tuple_impl.8"* %__in, %"struct.std::_Tuple_impl.8"** %__in.addr.ascast, align 8
  %this1 = load %"struct.std::_Tuple_impl.8"*, %"struct.std::_Tuple_impl.8"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.8"* %this1 to %"struct.std::_Head_base"*
  %1 = load %"struct.std::_Tuple_impl.8"*, %"struct.std::_Tuple_impl.8"** %__in.addr.ascast, align 8
  %call = call dereferenceable(4) i32* @_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %1) #12
  %call2 = call dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %call) #12
  call void @_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_(%"struct.std::_Head_base"* %0, i32* dereferenceable(4) %call2) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %__t) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.7"**
  store %"struct.std::_Tuple_impl.7"* %__t, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.7"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.9"*
  %call = call dereferenceable(8) double** @_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_(%"struct.std::_Head_base.9"* dereferenceable(8) %2) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.9"* %this, double** dereferenceable(8) %__h) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.9"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Head_base.9"* addrspace(5)* %this.addr to %"struct.std::_Head_base.9"**
  %__h.addr = alloca double**, align 8, addrspace(5)
  %__h.addr.ascast = addrspacecast double** addrspace(5)* %__h.addr to double***
  store %"struct.std::_Head_base.9"* %this, %"struct.std::_Head_base.9"** %this.addr.ascast, align 8
  store double** %__h, double*** %__h.addr.ascast, align 8
  %this1 = load %"struct.std::_Head_base.9"*, %"struct.std::_Head_base.9"** %this.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.9", %"struct.std::_Head_base.9"* %this1, i32 0, i32 0
  %0 = load double**, double*** %__h.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %0) #12
  %1 = load double*, double** %call, align 8
  store double* %1, double** %_M_head_impl, align 8
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %__t) #1 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__t.addr = alloca i32*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast i32* addrspace(5)* %__t.addr to i32**
  store i32* %__t, i32** %__t.addr.ascast, align 8
  %0 = load i32*, i32** %__t.addr.ascast, align 8
  ret i32* %0
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %__t) #1 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__t.addr = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.8"**
  store %"struct.std::_Tuple_impl.8"* %__t, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.8"*, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.8"* %0 to %"struct.std::_Head_base"*
  %call = call dereferenceable(4) i32* @_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_(%"struct.std::_Head_base"* dereferenceable(4) %1) #12
  ret i32* %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_(%"struct.std::_Head_base"* %this, i32* dereferenceable(4) %__h) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Head_base"* addrspace(5)* %this.addr to %"struct.std::_Head_base"**
  %__h.addr = alloca i32*, align 8, addrspace(5)
  %__h.addr.ascast = addrspacecast i32* addrspace(5)* %__h.addr to i32**
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr.ascast, align 8
  store i32* %__h, i32** %__h.addr.ascast, align 8
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__h.addr.ascast, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %0) #12
  %1 = load i32, i32* %call, align 4
  store i32 %1, i32* %_M_head_impl, align 4
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_(%"struct.std::_Head_base"* dereferenceable(4) %__b) #1 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base"* addrspace(5)* %__b.addr to %"struct.std::_Head_base"**
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %0, i32 0, i32 0
  ret i32* %_M_head_impl
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_(%"struct.std::_Head_base.9"* dereferenceable(8) %__b) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__b.addr = alloca %"struct.std::_Head_base.9"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base.9"* addrspace(5)* %__b.addr to %"struct.std::_Head_base.9"**
  store %"struct.std::_Head_base.9"* %__b, %"struct.std::_Head_base.9"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base.9"*, %"struct.std::_Head_base.9"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.9", %"struct.std::_Head_base.9"* %0, i32 0, i32 0
  ret double** %_M_head_impl
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_(%"struct.std::_Head_base.10"* dereferenceable(8) %__b) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__b.addr = alloca %"struct.std::_Head_base.10"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base.10"* addrspace(5)* %__b.addr to %"struct.std::_Head_base.10"**
  store %"struct.std::_Head_base.10"* %__b, %"struct.std::_Head_base.10"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base.10"*, %"struct.std::_Head_base.10"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.10", %"struct.std::_Head_base.10"* %0, i32 0, i32 0
  ret double** %_M_head_impl
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_(%"struct.std::_Head_base.11"* dereferenceable(8) %__b) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__b.addr = alloca %"struct.std::_Head_base.11"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base.11"* addrspace(5)* %__b.addr to %"struct.std::_Head_base.11"**
  store %"struct.std::_Head_base.11"* %__b, %"struct.std::_Head_base.11"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base.11"*, %"struct.std::_Head_base.11"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.11", %"struct.std::_Head_base.11"* %0, i32 0, i32 0
  ret double** %_M_head_impl
}
; Function Attrs: convergent
declare void @_ZN8hip_impl7kernarg6resizeEm(%"class.hip_impl::kernarg"*, i64) #7
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr hidden i64 @_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_(i64 %x, i64 %y) #1 {
entry:
  %retval = alloca i64, align 8, addrspace(5)
  %retval.ascast = addrspacecast i64 addrspace(5)* %retval to i64*
  %x.addr = alloca i64, align 8, addrspace(5)
  %x.addr.ascast = addrspacecast i64 addrspace(5)* %x.addr to i64*
  %y.addr = alloca i64, align 8, addrspace(5)
  %y.addr.ascast = addrspacecast i64 addrspace(5)* %y.addr to i64*
  %tmp = alloca i64, align 8, addrspace(5)
  %tmp.ascast = addrspacecast i64 addrspace(5)* %tmp to i64*
  store i64 %x, i64* %x.addr.ascast, align 8
  store i64 %y, i64* %y.addr.ascast, align 8
  %0 = load i64, i64* %x.addr.ascast, align 8
  %1 = load i64, i64* %y.addr.ascast, align 8
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  store i64 %sub, i64* %tmp.ascast, align 8
  %2 = load i64, i64* %tmp.ascast, align 8
  %3 = load i64, i64* %tmp.ascast, align 8
  %4 = load i64, i64* %y.addr.ascast, align 8
  %rem = urem i64 %3, %4
  %sub1 = sub i64 %2, %rem
  ret i64 %sub1
}
; Function Attrs: convergent
declare i64 @_ZNK8hip_impl19kernargs_size_align9alignmentEm(%"class.hip_impl::kernargs_size_align"*, i64) #7
; Function Attrs: convergent
declare i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"*, i64) #7
; Function Attrs: convergent nounwind
declare i8* @memcpy(i8*, i8*, i64) #9
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %__t.addr to %"class.std::tuple"**
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr.ascast, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr.ascast, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call dereferenceable(8) double** @_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(32) %1) #12
  ret double** %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* noalias sret %agg.result, %"class.std::tuple"* dereferenceable(32) %formals, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %size_align, %"class.hip_impl::kernarg" addrspace(5)* %kernarg) #0 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %formals.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %formals.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %formals.addr to %"class.std::tuple"**
  %size_align.addr = alloca %"class.hip_impl::kernargs_size_align"*, align 8, addrspace(5)
  %size_align.addr.ascast = addrspacecast %"class.hip_impl::kernargs_size_align"* addrspace(5)* %size_align.addr to %"class.hip_impl::kernargs_size_align"**
  %agg.tmp = alloca %"class.hip_impl::kernarg", align 8, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp to %"class.hip_impl::kernarg"*
  %0 = bitcast %"class.hip_impl::kernarg"* %agg.result to i8*
  store i8* %0, i8** %result.ptr.ascast, align 8
  store %"class.std::tuple"* %formals, %"class.std::tuple"** %formals.addr.ascast, align 8
  store %"class.hip_impl::kernargs_size_align"* %size_align, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %kernarg.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %kernarg to %"class.hip_impl::kernarg"*
  %call = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %1 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call1 = call i64 @_ZNK8hip_impl19kernargs_size_align9alignmentEm(%"class.hip_impl::kernargs_size_align"* %1, i64 1) #10
  %call2 = call i64 @_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_(i64 %call, i64 %call1) #10
  %2 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call3 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %2, i64 1) #10
  %add = add i64 %call2, %call3
  call void @_ZN8hip_impl7kernarg6resizeEm(%"class.hip_impl::kernarg"* %kernarg.ascast, i64 %add) #10
  %call4 = call i8* @_ZN8hip_impl7kernarg4dataEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %call5 = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %call5
  %3 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call6 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %3, i64 1) #10
  %idx.neg = sub i64 0, %call6
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %call8 = call dereferenceable(8) double** @_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %4) #12
  %5 = bitcast double** %call8 to i8*
  %6 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call9 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %6, i64 1) #10
  %call10 = call i8* @memcpy(i8* %add.ptr7, i8* %5, i64 %call9) #12
  %7 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %8 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call11 = call dereferenceable(8) %"class.hip_impl::kernarg"* @_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_(%"class.hip_impl::kernarg"* dereferenceable(8) %kernarg.ascast) #12
  call void @_ZN8hip_impl7kernargC1EOS0_(%"class.hip_impl::kernarg"* %agg.tmp.ascast, %"class.hip_impl::kernarg"* dereferenceable(8) %call11) #10
  %agg.tmp.ascast.ascast = addrspacecast %"class.hip_impl::kernarg"* %agg.tmp.ascast to %"class.hip_impl::kernarg" addrspace(5)*
  call void @_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* sret %agg.result, %"class.std::tuple"* dereferenceable(32) %7, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %8, %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp.ascast.ascast) #10
  call void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"* %agg.tmp.ascast) #12
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(32) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl"**
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_(%"struct.std::_Tuple_impl"* dereferenceable(32) %0) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_(%"struct.std::_Tuple_impl"* dereferenceable(32) %__t) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl"**
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 24
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.11"*
  %call = call dereferenceable(8) double** @_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_(%"struct.std::_Head_base.11"* dereferenceable(8) %2) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_(%"struct.std::_Head_base.11"* dereferenceable(8) %__b) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__b.addr = alloca %"struct.std::_Head_base.11"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base.11"* addrspace(5)* %__b.addr to %"struct.std::_Head_base.11"**
  store %"struct.std::_Head_base.11"* %__b, %"struct.std::_Head_base.11"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base.11"*, %"struct.std::_Head_base.11"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.11", %"struct.std::_Head_base.11"* %0, i32 0, i32 0
  ret double** %_M_head_impl
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %__t.addr to %"class.std::tuple"**
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr.ascast, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr.ascast, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.6"*
  %call = call dereferenceable(8) double** @_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %1) #12
  ret double** %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* noalias sret %agg.result, %"class.std::tuple"* dereferenceable(32) %formals, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %size_align, %"class.hip_impl::kernarg" addrspace(5)* %kernarg) #0 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %formals.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %formals.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %formals.addr to %"class.std::tuple"**
  %size_align.addr = alloca %"class.hip_impl::kernargs_size_align"*, align 8, addrspace(5)
  %size_align.addr.ascast = addrspacecast %"class.hip_impl::kernargs_size_align"* addrspace(5)* %size_align.addr to %"class.hip_impl::kernargs_size_align"**
  %agg.tmp = alloca %"class.hip_impl::kernarg", align 8, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp to %"class.hip_impl::kernarg"*
  %0 = bitcast %"class.hip_impl::kernarg"* %agg.result to i8*
  store i8* %0, i8** %result.ptr.ascast, align 8
  store %"class.std::tuple"* %formals, %"class.std::tuple"** %formals.addr.ascast, align 8
  store %"class.hip_impl::kernargs_size_align"* %size_align, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %kernarg.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %kernarg to %"class.hip_impl::kernarg"*
  %call = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %1 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call1 = call i64 @_ZNK8hip_impl19kernargs_size_align9alignmentEm(%"class.hip_impl::kernargs_size_align"* %1, i64 2) #10
  %call2 = call i64 @_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_(i64 %call, i64 %call1) #10
  %2 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call3 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %2, i64 2) #10
  %add = add i64 %call2, %call3
  call void @_ZN8hip_impl7kernarg6resizeEm(%"class.hip_impl::kernarg"* %kernarg.ascast, i64 %add) #10
  %call4 = call i8* @_ZN8hip_impl7kernarg4dataEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %call5 = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %call5
  %3 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call6 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %3, i64 2) #10
  %idx.neg = sub i64 0, %call6
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %call8 = call dereferenceable(8) double** @_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %4) #12
  %5 = bitcast double** %call8 to i8*
  %6 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call9 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %6, i64 2) #10
  %call10 = call i8* @memcpy(i8* %add.ptr7, i8* %5, i64 %call9) #12
  %7 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %8 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call11 = call dereferenceable(8) %"class.hip_impl::kernarg"* @_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_(%"class.hip_impl::kernarg"* dereferenceable(8) %kernarg.ascast) #12
  call void @_ZN8hip_impl7kernargC1EOS0_(%"class.hip_impl::kernarg"* %agg.tmp.ascast, %"class.hip_impl::kernarg"* dereferenceable(8) %call11) #10
  %agg.tmp.ascast.ascast = addrspacecast %"class.hip_impl::kernarg"* %agg.tmp.ascast to %"class.hip_impl::kernarg" addrspace(5)*
  call void @_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* sret %agg.result, %"class.std::tuple"* dereferenceable(32) %7, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %8, %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp.ascast.ascast) #10
  call void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"* %agg.tmp.ascast) #12
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.6"**
  store %"struct.std::_Tuple_impl.6"* %__t, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %0) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_(%"struct.std::_Tuple_impl.6"* dereferenceable(24) %__t) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.6"**
  store %"struct.std::_Tuple_impl.6"* %__t, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.6"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 16
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.10"*
  %call = call dereferenceable(8) double** @_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_(%"struct.std::_Head_base.10"* dereferenceable(8) %2) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_(%"struct.std::_Head_base.10"* dereferenceable(8) %__b) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__b.addr = alloca %"struct.std::_Head_base.10"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base.10"* addrspace(5)* %__b.addr to %"struct.std::_Head_base.10"**
  store %"struct.std::_Head_base.10"* %__b, %"struct.std::_Head_base.10"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base.10"*, %"struct.std::_Head_base.10"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.10", %"struct.std::_Head_base.10"* %0, i32 0, i32 0
  ret double** %_M_head_impl
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %__t.addr to %"class.std::tuple"**
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr.ascast, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr.ascast, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.7"*
  %call = call dereferenceable(8) double** @_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %1) #12
  ret double** %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* noalias sret %agg.result, %"class.std::tuple"* dereferenceable(32) %formals, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %size_align, %"class.hip_impl::kernarg" addrspace(5)* %kernarg) #0 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %formals.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %formals.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %formals.addr to %"class.std::tuple"**
  %size_align.addr = alloca %"class.hip_impl::kernargs_size_align"*, align 8, addrspace(5)
  %size_align.addr.ascast = addrspacecast %"class.hip_impl::kernargs_size_align"* addrspace(5)* %size_align.addr to %"class.hip_impl::kernargs_size_align"**
  %agg.tmp = alloca %"class.hip_impl::kernarg", align 8, addrspace(5)
  %agg.tmp.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp to %"class.hip_impl::kernarg"*
  %0 = bitcast %"class.hip_impl::kernarg"* %agg.result to i8*
  store i8* %0, i8** %result.ptr.ascast, align 8
  store %"class.std::tuple"* %formals, %"class.std::tuple"** %formals.addr.ascast, align 8
  store %"class.hip_impl::kernargs_size_align"* %size_align, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %kernarg.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %kernarg to %"class.hip_impl::kernarg"*
  %call = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %1 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call1 = call i64 @_ZNK8hip_impl19kernargs_size_align9alignmentEm(%"class.hip_impl::kernargs_size_align"* %1, i64 3) #10
  %call2 = call i64 @_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_(i64 %call, i64 %call1) #10
  %2 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call3 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %2, i64 3) #10
  %add = add i64 %call2, %call3
  call void @_ZN8hip_impl7kernarg6resizeEm(%"class.hip_impl::kernarg"* %kernarg.ascast, i64 %add) #10
  %call4 = call i8* @_ZN8hip_impl7kernarg4dataEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %call5 = call i64 @_ZN8hip_impl7kernarg4sizeEv(%"class.hip_impl::kernarg"* %kernarg.ascast) #10
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %call5
  %3 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call6 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %3, i64 3) #10
  %idx.neg = sub i64 0, %call6
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %call8 = call dereferenceable(4) i32* @_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %4) #12
  %5 = bitcast i32* %call8 to i8*
  %6 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call9 = call i64 @_ZNK8hip_impl19kernargs_size_align4sizeEm(%"class.hip_impl::kernargs_size_align"* %6, i64 3) #10
  %call10 = call i8* @memcpy(i8* %add.ptr7, i8* %5, i64 %call9) #12
  %7 = load %"class.std::tuple"*, %"class.std::tuple"** %formals.addr.ascast, align 8
  %8 = load %"class.hip_impl::kernargs_size_align"*, %"class.hip_impl::kernargs_size_align"** %size_align.addr.ascast, align 8
  %call11 = call dereferenceable(8) %"class.hip_impl::kernarg"* @_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_(%"class.hip_impl::kernarg"* dereferenceable(8) %kernarg.ascast) #12
  call void @_ZN8hip_impl7kernargC1EOS0_(%"class.hip_impl::kernarg"* %agg.tmp.ascast, %"class.hip_impl::kernarg"* dereferenceable(8) %call11) #10
  %agg.tmp.ascast.ascast = addrspacecast %"class.hip_impl::kernarg"* %agg.tmp.ascast to %"class.hip_impl::kernarg" addrspace(5)*
  call void @_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* sret %agg.result, %"class.std::tuple"* dereferenceable(32) %7, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %8, %"class.hip_impl::kernarg" addrspace(5)* %agg.tmp.ascast.ascast) #10
  call void @_ZN8hip_impl7kernargD1Ev(%"class.hip_impl::kernarg"* %agg.tmp.ascast) #12
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %__t) #1 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.7"**
  store %"struct.std::_Tuple_impl.7"* %__t, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %0) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_(%"struct.std::_Tuple_impl.7"* dereferenceable(16) %__t) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__t.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.7"**
  store %"struct.std::_Tuple_impl.7"* %__t, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.7"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.9"*
  %call = call dereferenceable(8) double** @_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_(%"struct.std::_Head_base.9"* dereferenceable(8) %2) #12
  ret double** %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(8) double** @_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_(%"struct.std::_Head_base.9"* dereferenceable(8) %__b) #1 align 2 {
entry:
  %retval = alloca double**, align 8, addrspace(5)
  %retval.ascast = addrspacecast double** addrspace(5)* %retval to double***
  %__b.addr = alloca %"struct.std::_Head_base.9"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base.9"* addrspace(5)* %__b.addr to %"struct.std::_Head_base.9"**
  store %"struct.std::_Head_base.9"* %__b, %"struct.std::_Head_base.9"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base.9"*, %"struct.std::_Head_base.9"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.9", %"struct.std::_Head_base.9"* %0, i32 0, i32 0
  ret double** %_M_head_impl
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_(%"class.std::tuple"* dereferenceable(32) %__t) #1 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__t.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %__t.addr to %"class.std::tuple"**
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr.ascast, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr.ascast, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.8"*
  %call = call dereferenceable(4) i32* @_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %1) #12
  ret i32* %call
}
; Function Attrs: convergent noinline optnone
define linkonce_odr hidden void @_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_(%"class.hip_impl::kernarg"* noalias sret %agg.result, %"class.std::tuple"* dereferenceable(32) %0, %"class.hip_impl::kernargs_size_align"* dereferenceable(8) %1, %"class.hip_impl::kernarg" addrspace(5)* %kernarg) #0 {
entry:
  %result.ptr = alloca i8*, align 8, addrspace(5)
  %result.ptr.ascast = addrspacecast i8* addrspace(5)* %result.ptr to i8**
  %.addr = alloca %"class.std::tuple"*, align 8, addrspace(5)
  %.addr.ascast = addrspacecast %"class.std::tuple"* addrspace(5)* %.addr to %"class.std::tuple"**
  %.addr1 = alloca %"class.hip_impl::kernargs_size_align"*, align 8, addrspace(5)
  %.addr1.ascast = addrspacecast %"class.hip_impl::kernargs_size_align"* addrspace(5)* %.addr1 to %"class.hip_impl::kernargs_size_align"**
  %2 = bitcast %"class.hip_impl::kernarg"* %agg.result to i8*
  store i8* %2, i8** %result.ptr.ascast, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %.addr.ascast, align 8
  store %"class.hip_impl::kernargs_size_align"* %1, %"class.hip_impl::kernargs_size_align"** %.addr1.ascast, align 8
  %kernarg.ascast = addrspacecast %"class.hip_impl::kernarg" addrspace(5)* %kernarg to %"class.hip_impl::kernarg"*
  call void @_ZN8hip_impl7kernargC1EOS0_(%"class.hip_impl::kernarg"* %agg.result, %"class.hip_impl::kernarg"* dereferenceable(8) %kernarg.ascast) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %__t) #1 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__t.addr = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.8"**
  store %"struct.std::_Tuple_impl.8"* %__t, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.8"*, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  %call = call dereferenceable(4) i32* @_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %0) #12
  ret i32* %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_(%"struct.std::_Tuple_impl.8"* dereferenceable(4) %__t) #1 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__t.addr = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %__t.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %__t.addr to %"struct.std::_Tuple_impl.8"**
  store %"struct.std::_Tuple_impl.8"* %__t, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  %0 = load %"struct.std::_Tuple_impl.8"*, %"struct.std::_Tuple_impl.8"** %__t.addr.ascast, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.8"* %0 to %"struct.std::_Head_base"*
  %call = call dereferenceable(4) i32* @_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_(%"struct.std::_Head_base"* dereferenceable(4) %1) #12
  ret i32* %call
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr dereferenceable(4) i32* @_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_(%"struct.std::_Head_base"* dereferenceable(4) %__b) #1 align 2 {
entry:
  %retval = alloca i32*, align 8, addrspace(5)
  %retval.ascast = addrspacecast i32* addrspace(5)* %retval to i32**
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8, addrspace(5)
  %__b.addr.ascast = addrspacecast %"struct.std::_Head_base"* addrspace(5)* %__b.addr to %"struct.std::_Head_base"**
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr.ascast, align 8
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr.ascast, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %0, i32 0, i32 0
  ret i32* %_M_head_impl
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_(%"struct.std::_Tuple_impl"* %this, double** dereferenceable(8) %__head, double** dereferenceable(8) %__tail, double** dereferenceable(8) %__tail1, i32* dereferenceable(4) %__tail3) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl"**
  %__head.addr = alloca double**, align 8, addrspace(5)
  %__head.addr.ascast = addrspacecast double** addrspace(5)* %__head.addr to double***
  %__tail.addr = alloca double**, align 8, addrspace(5)
  %__tail.addr.ascast = addrspacecast double** addrspace(5)* %__tail.addr to double***
  %__tail.addr2 = alloca double**, align 8, addrspace(5)
  %__tail.addr2.ascast = addrspacecast double** addrspace(5)* %__tail.addr2 to double***
  %__tail.addr4 = alloca i32*, align 8, addrspace(5)
  %__tail.addr4.ascast = addrspacecast i32* addrspace(5)* %__tail.addr4 to i32**
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr.ascast, align 8
  store double** %__head, double*** %__head.addr.ascast, align 8
  store double** %__tail, double*** %__tail.addr.ascast, align 8
  store double** %__tail1, double*** %__tail.addr2.ascast, align 8
  store i32* %__tail3, i32** %__tail.addr4.ascast, align 8
  %this5 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this5 to %"struct.std::_Tuple_impl.6"*
  %1 = load double**, double*** %__tail.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %1) #12
  %2 = load double**, double*** %__tail.addr2.ascast, align 8
  %call6 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %2) #12
  %3 = load i32*, i32** %__tail.addr4.ascast, align 8
  %call7 = call dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %3) #12
  call void @_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_(%"struct.std::_Tuple_impl.6"* %0, double** dereferenceable(8) %call, double** dereferenceable(8) %call6, i32* dereferenceable(4) %call7) #10
  %4 = bitcast %"struct.std::_Tuple_impl"* %this5 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 24
  %6 = bitcast i8* %5 to %"struct.std::_Head_base.11"*
  %7 = load double**, double*** %__head.addr.ascast, align 8
  %call8 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %7) #12
  call void @_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.11"* %6, double** dereferenceable(8) %call8) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_(%"struct.std::_Tuple_impl.6"* %this, double** dereferenceable(8) %__head, double** dereferenceable(8) %__tail, i32* dereferenceable(4) %__tail1) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.6"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.6"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl.6"**
  %__head.addr = alloca double**, align 8, addrspace(5)
  %__head.addr.ascast = addrspacecast double** addrspace(5)* %__head.addr to double***
  %__tail.addr = alloca double**, align 8, addrspace(5)
  %__tail.addr.ascast = addrspacecast double** addrspace(5)* %__tail.addr to double***
  %__tail.addr2 = alloca i32*, align 8, addrspace(5)
  %__tail.addr2.ascast = addrspacecast i32* addrspace(5)* %__tail.addr2 to i32**
  store %"struct.std::_Tuple_impl.6"* %this, %"struct.std::_Tuple_impl.6"** %this.addr.ascast, align 8
  store double** %__head, double*** %__head.addr.ascast, align 8
  store double** %__tail, double*** %__tail.addr.ascast, align 8
  store i32* %__tail1, i32** %__tail.addr2.ascast, align 8
  %this3 = load %"struct.std::_Tuple_impl.6"*, %"struct.std::_Tuple_impl.6"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.6"* %this3 to %"struct.std::_Tuple_impl.7"*
  %1 = load double**, double*** %__tail.addr.ascast, align 8
  %call = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %1) #12
  %2 = load i32*, i32** %__tail.addr2.ascast, align 8
  %call4 = call dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %2) #12
  call void @_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_(%"struct.std::_Tuple_impl.7"* %0, double** dereferenceable(8) %call, i32* dereferenceable(4) %call4) #10
  %3 = bitcast %"struct.std::_Tuple_impl.6"* %this3 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i64 16
  %5 = bitcast i8* %4 to %"struct.std::_Head_base.10"*
  %6 = load double**, double*** %__head.addr.ascast, align 8
  %call5 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %6) #12
  call void @_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.10"* %5, double** dereferenceable(8) %call5) #10
  ret void
}
; Function Attrs: convergent noinline optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_(%"struct.std::_Tuple_impl.7"* %this, double** dereferenceable(8) %__head, i32* dereferenceable(4) %__tail) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.7"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.7"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl.7"**
  %__head.addr = alloca double**, align 8, addrspace(5)
  %__head.addr.ascast = addrspacecast double** addrspace(5)* %__head.addr to double***
  %__tail.addr = alloca i32*, align 8, addrspace(5)
  %__tail.addr.ascast = addrspacecast i32* addrspace(5)* %__tail.addr to i32**
  store %"struct.std::_Tuple_impl.7"* %this, %"struct.std::_Tuple_impl.7"** %this.addr.ascast, align 8
  store double** %__head, double*** %__head.addr.ascast, align 8
  store i32* %__tail, i32** %__tail.addr.ascast, align 8
  %this1 = load %"struct.std::_Tuple_impl.7"*, %"struct.std::_Tuple_impl.7"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.7"* %this1 to %"struct.std::_Tuple_impl.8"*
  %1 = load i32*, i32** %__tail.addr.ascast, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %1) #12
  call void @_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_(%"struct.std::_Tuple_impl.8"* %0, i32* dereferenceable(4) %call) #10
  %2 = bitcast %"struct.std::_Tuple_impl.7"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.9"*
  %5 = load double**, double*** %__head.addr.ascast, align 8
  %call2 = call dereferenceable(8) double** @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE(double** dereferenceable(8) %5) #12
  call void @_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.9"* %4, double** dereferenceable(8) %call2) #10
  ret void
}
; Function Attrs: convergent noinline nounwind optnone
define linkonce_odr void @_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_(%"struct.std::_Tuple_impl.8"* %this, i32* dereferenceable(4) %__head) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.8"*, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast %"struct.std::_Tuple_impl.8"* addrspace(5)* %this.addr to %"struct.std::_Tuple_impl.8"**
  %__head.addr = alloca i32*, align 8, addrspace(5)
  %__head.addr.ascast = addrspacecast i32* addrspace(5)* %__head.addr to i32**
  store %"struct.std::_Tuple_impl.8"* %this, %"struct.std::_Tuple_impl.8"** %this.addr.ascast, align 8
  store i32* %__head, i32** %__head.addr.ascast, align 8
  %this1 = load %"struct.std::_Tuple_impl.8"*, %"struct.std::_Tuple_impl.8"** %this.addr.ascast, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.8"* %this1 to %"struct.std::_Head_base"*
  %1 = load i32*, i32** %__head.addr.ascast, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* dereferenceable(4) %1) #12
  call void @_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_(%"struct.std::_Head_base"* %0, i32* dereferenceable(4) %call) #10
  ret void
}
; Function Attrs: convergent
declare %struct.ihipModuleSymbol_t* @_ZN8hip_impl13program_state17kernel_descriptorEm11hsa_agent_s(%"class.hip_impl::program_state"*, i64, %struct.hsa_agent_s addrspace(5)* byval(%struct.hsa_agent_s) align 8) #7
; Function Attrs: convergent
declare i64 @_ZN8hip_impl12target_agentEP12ihipStream_t(%struct.ihipStream_t*) #7
; Function Attrs: convergent
declare i32 @hipModuleLaunchKernel(%struct.ihipModuleSymbol_t*, i32, i32, i32, i32, i32, i32, i32, %struct.ihipStream_t*, i8**, i8**) #7

attributes #0 = { convergent noinline optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent noinline optnone "HC" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent noinline nounwind optnone "HC" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent noinline norecurse nounwind optnone "HC" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { convergent noinline norecurse optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { convergent nobuiltin "no-builtins" }
attributes #11 = { convergent nobuiltin nounwind readnone "no-builtins" }
attributes #12 = { convergent nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"HCC clang version 10.0.0 (/home/jiahan/rocmv26-dp4x/rocm_build/hcc/llvm-project/clang f72acb546e012dcf4114982bea9fda46b7f9b198) (based on HCC 3.1.21091-9ded44fd-f72acb546e01 )"}
