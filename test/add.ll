; ModuleID = 'add.cpp'
source_filename = "add.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%0 = type { %1 addrspace(1)*, %2 addrspace(1)*, %3, i64, i64, i64 }
%1 = type { i64, i64, i32, i32 }
%2 = type { [64 x [8 x i64]] }
%3 = type { i64 }
%4 = type { i64, %3, i64, i32, i32, i64, i64, %5, [2 x i32] }
%5 = type { %6 addrspace(1)* }
%6 = type { %7, [4 x i32], i64, i32, i32, i32, i32, i64, i32, [9 x i32], i64, i32, i32, [4 x i32], i64, i64, i32, i32, [2 x i32], %3, [14 x i32] }
%7 = type { i32, i32, i8 addrspace(1)*, %3, i32, i32, i64 }

@__const.__assert_fail.fmt = private unnamed_addr addrspace(4) constant [47 x i8] c"%s:%u: %s: Device-side assertion `%s' failed.\0A\00", align 16
@__oclc_wavefrontsize64 = internal local_unnamed_addr addrspace(4) constant i8 0, align 1

; Function Attrs: convergent mustprogress noinline noreturn nounwind optnone
define weak void @__cxa_pure_virtual() #0 {
  call void @llvm.trap()
  unreachable
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: convergent mustprogress noinline noreturn nounwind optnone
define weak void @__cxa_deleted_virtual() #0 {
  call void @llvm.trap()
  unreachable
}

; Function Attrs: convergent mustprogress noinline nounwind optnone
define weak hidden void @__assert_fail(i8* %0, i8* %1, i32 %2, i8* %3) #2 {
  %5 = alloca i8*, align 8, addrspace(5)
  %6 = alloca i8*, align 8, addrspace(5)
  %7 = alloca i32, align 4, addrspace(5)
  %8 = alloca i8*, align 8, addrspace(5)
  %9 = alloca [47 x i8], align 16, addrspace(5)
  %10 = alloca i64, align 8, addrspace(5)
  %11 = alloca i32, align 4, addrspace(5)
  %12 = alloca i8*, align 8, addrspace(5)
  %13 = alloca i8*, align 8, addrspace(5)
  %14 = alloca i8*, align 8, addrspace(5)
  %15 = alloca i8*, align 8, addrspace(5)
  %16 = addrspacecast i8* addrspace(5)* %5 to i8**
  %17 = addrspacecast i8* addrspace(5)* %6 to i8**
  %18 = addrspacecast i32 addrspace(5)* %7 to i32*
  %19 = addrspacecast i8* addrspace(5)* %8 to i8**
  %20 = addrspacecast [47 x i8] addrspace(5)* %9 to [47 x i8]*
  %21 = addrspacecast i64 addrspace(5)* %10 to i64*
  %22 = addrspacecast i32 addrspace(5)* %11 to i32*
  %23 = addrspacecast i8* addrspace(5)* %12 to i8**
  %24 = addrspacecast i8* addrspace(5)* %13 to i8**
  %25 = addrspacecast i8* addrspace(5)* %14 to i8**
  %26 = addrspacecast i8* addrspace(5)* %15 to i8**
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i32 %2, i32* %18, align 4
  store i8* %3, i8** %19, align 8
  %27 = bitcast [47 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p4i8.i64(i8* align 16 %27, i8 addrspace(4)* align 16 getelementptr inbounds ([47 x i8], [47 x i8] addrspace(4)* @__const.__assert_fail.fmt, i32 0, i32 0), i64 47, i1 false)
  %28 = call i64 @__ockl_fprintf_stderr_begin() #17
  store i64 %28, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %29

29:                                               ; preds = %4
  %30 = getelementptr inbounds [47 x i8], [47 x i8]* %20, i64 0, i64 0
  store i8* %30, i8** %23, align 8
  br label %31

31:                                               ; preds = %36, %29
  %32 = load i8*, i8** %23, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %23, align 8
  %34 = load i8, i8* %32, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %31, !llvm.loop !5

37:                                               ; preds = %31
  %38 = load i8*, i8** %23, align 8
  %39 = getelementptr inbounds [47 x i8], [47 x i8]* %20, i64 0, i64 0
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %22, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %21, align 8
  %46 = getelementptr inbounds [47 x i8], [47 x i8]* %20, i64 0, i64 0
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  %49 = call i64 @__ockl_fprintf_append_string_n(i64 %45, i8* %46, i64 %48, i32 0) #17
  store i64 %49, i64* %21, align 8
  br label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %17, align 8
  store i8* %51, i8** %24, align 8
  br label %52

52:                                               ; preds = %57, %50
  %53 = load i8*, i8** %24, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %24, align 8
  %55 = load i8, i8* %53, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %52, !llvm.loop !7

58:                                               ; preds = %52
  %59 = load i8*, i8** %24, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %22, align 4
  br label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %21, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = load i32, i32* %22, align 4
  %69 = sext i32 %68 to i64
  %70 = call i64 @__ockl_fprintf_append_string_n(i64 %66, i8* %67, i64 %69, i32 0) #17
  store i64 %70, i64* %21, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i32, i32* %18, align 4
  %73 = zext i32 %72 to i64
  %74 = call i64 @__ockl_fprintf_append_args(i64 %71, i32 1, i64 %73, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i32 0) #17
  store i64 %74, i64* %21, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i8*, i8** %19, align 8
  store i8* %76, i8** %25, align 8
  br label %77

77:                                               ; preds = %82, %75
  %78 = load i8*, i8** %25, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %25, align 8
  %80 = load i8, i8* %78, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %77, !llvm.loop !8

83:                                               ; preds = %77
  %84 = load i8*, i8** %25, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %22, align 4
  br label %90

90:                                               ; preds = %83
  %91 = load i64, i64* %21, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = call i64 @__ockl_fprintf_append_string_n(i64 %91, i8* %92, i64 %94, i32 0) #17
  store i64 %95, i64* %21, align 8
  br label %96

96:                                               ; preds = %90
  %97 = load i8*, i8** %16, align 8
  store i8* %97, i8** %26, align 8
  br label %98

98:                                               ; preds = %103, %96
  %99 = load i8*, i8** %26, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %26, align 8
  %101 = load i8, i8* %99, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %98, !llvm.loop !9

104:                                              ; preds = %98
  %105 = load i8*, i8** %26, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %22, align 4
  br label %111

111:                                              ; preds = %104
  %112 = load i64, i64* %21, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = call i64 @__ockl_fprintf_append_string_n(i64 %112, i8* %113, i64 %115, i32 1) #17
  call void @llvm.trap()
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p4i8.i64(i8* noalias nocapture writeonly, i8 addrspace(4)* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: convergent mustprogress noinline nounwind optnone
define weak hidden void @__assertfail(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #2 {
  %6 = alloca i8*, align 8, addrspace(5)
  %7 = alloca i8*, align 8, addrspace(5)
  %8 = alloca i32, align 4, addrspace(5)
  %9 = alloca i8*, align 8, addrspace(5)
  %10 = alloca i64, align 8, addrspace(5)
  %11 = addrspacecast i8* addrspace(5)* %6 to i8**
  %12 = addrspacecast i8* addrspace(5)* %7 to i8**
  %13 = addrspacecast i32 addrspace(5)* %8 to i32*
  %14 = addrspacecast i8* addrspace(5)* %9 to i8**
  %15 = addrspacecast i64 addrspace(5)* %10 to i64*
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  call void @llvm.trap()
  ret void
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define protected amdgpu_kernel void @add(double addrspace(1)* %0, double addrspace(1)* %1, double addrspace(1)* %2) #4 {
  %4 = alloca double*, align 8, addrspace(5)
  %5 = alloca double*, align 8, addrspace(5)
  %6 = alloca double*, align 8, addrspace(5)
  %7 = alloca double*, align 8, addrspace(5)
  %8 = alloca double*, align 8, addrspace(5)
  %9 = alloca double*, align 8, addrspace(5)
  %10 = addrspacecast double* addrspace(5)* %4 to double**
  %11 = addrspacecast double* addrspace(5)* %5 to double**
  %12 = addrspacecast double* addrspace(5)* %6 to double**
  %13 = addrspacecast double* addrspace(5)* %7 to double**
  %14 = addrspacecast double* addrspace(5)* %8 to double**
  %15 = addrspacecast double* addrspace(5)* %9 to double**
  %16 = addrspacecast double addrspace(1)* %0 to double*
  store double* %16, double** %10, align 8
  %17 = load double*, double** %10, align 8
  %18 = addrspacecast double addrspace(1)* %1 to double*
  store double* %18, double** %11, align 8
  %19 = load double*, double** %11, align 8
  %20 = addrspacecast double addrspace(1)* %2 to double*
  store double* %20, double** %12, align 8
  %21 = load double*, double** %12, align 8
  store double* %17, double** %13, align 8
  store double* %19, double** %14, align 8
  store double* %21, double** %15, align 8
  %22 = load double*, double** %13, align 8
  %23 = load double, double* %22, align 8
  %24 = load double*, double** %14, align 8
  %25 = load double, double* %24, align 8
  %26 = fadd contract double %23, %25
  %27 = load double*, double** %15, align 8
  store double %26, double* %27, align 8
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_fprintf_stderr_begin() #5 {
  %1 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 33, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #17
  %2 = extractelement <2 x i64> %1, i64 0
  ret i64 %2
}

; Function Attrs: convergent norecurse nounwind
define internal <2 x i64> @__ockl_hostcall_preview(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #5 {
  %10 = tail call i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr()
  %11 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 24
  %12 = bitcast i8 addrspace(4)* %11 to i64 addrspace(4)*
  %13 = load i64, i64 addrspace(4)* %12, align 8, !tbaa !10
  %14 = inttoptr i64 %13 to i8*
  %15 = tail call <2 x i64> @__ockl_hostcall_internal(i8* %14, i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #17
  ret <2 x i64> %15
}

; Function Attrs: nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr() #6

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal <2 x i64> @__ockl_hostcall_internal(i8* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #7 {
  %11 = alloca i8*, align 8, addrspace(5)
  %12 = alloca i32, align 4, addrspace(5)
  %13 = alloca i64, align 8, addrspace(5)
  %14 = alloca i64, align 8, addrspace(5)
  %15 = alloca i64, align 8, addrspace(5)
  %16 = alloca i64, align 8, addrspace(5)
  %17 = alloca i64, align 8, addrspace(5)
  %18 = alloca i64, align 8, addrspace(5)
  %19 = alloca i64, align 8, addrspace(5)
  %20 = alloca i64, align 8, addrspace(5)
  %21 = alloca i32, align 4, addrspace(5)
  %22 = alloca i32, align 4, addrspace(5)
  %23 = alloca %0 addrspace(1)*, align 8, addrspace(5)
  %24 = alloca i64, align 8, addrspace(5)
  %25 = alloca %1 addrspace(1)*, align 8, addrspace(5)
  %26 = alloca %2 addrspace(1)*, align 8, addrspace(5)
  %27 = alloca <2 x i64>, align 16, addrspace(5)
  store i8* %0, i8* addrspace(5)* %11, align 8, !tbaa !14
  store i32 %1, i32 addrspace(5)* %12, align 4, !tbaa !16
  store i64 %2, i64 addrspace(5)* %13, align 8, !tbaa !10
  store i64 %3, i64 addrspace(5)* %14, align 8, !tbaa !10
  store i64 %4, i64 addrspace(5)* %15, align 8, !tbaa !10
  store i64 %5, i64 addrspace(5)* %16, align 8, !tbaa !10
  store i64 %6, i64 addrspace(5)* %17, align 8, !tbaa !10
  store i64 %7, i64 addrspace(5)* %18, align 8, !tbaa !10
  store i64 %8, i64 addrspace(5)* %19, align 8, !tbaa !10
  store i64 %9, i64 addrspace(5)* %20, align 8, !tbaa !10
  %28 = bitcast i32 addrspace(5)* %21 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %28) #14
  %29 = call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0) #14
  store i32 %29, i32 addrspace(5)* %21, align 4, !tbaa !16
  %30 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !16
  %31 = call fastcc i32 @0(i32 %30) #18
  store i32 %31, i32 addrspace(5)* %21, align 4, !tbaa !16
  %32 = bitcast i32 addrspace(5)* %22 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %32) #14
  %33 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !16
  %34 = call i32 @llvm.amdgcn.readfirstlane(i32 %33)
  store i32 %34, i32 addrspace(5)* %22, align 4, !tbaa !16
  %35 = bitcast %0 addrspace(1)* addrspace(5)* %23 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %35) #14
  %36 = load i8*, i8* addrspace(5)* %11, align 8, !tbaa !14
  %37 = addrspacecast i8* %36 to %0 addrspace(1)*
  store %0 addrspace(1)* %37, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !14
  %38 = bitcast i64 addrspace(5)* %24 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %38) #14
  %39 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !14
  %40 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !16
  %41 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !16
  %42 = call fastcc i64 @1(%0 addrspace(1)* %39, i32 %40, i32 %41) #18
  store i64 %42, i64 addrspace(5)* %24, align 8, !tbaa !10
  %43 = bitcast %1 addrspace(1)* addrspace(5)* %25 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %43) #14
  %44 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !14
  %45 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !10
  %46 = getelementptr %0, %0 addrspace(1)* %44, i64 0, i32 0
  %47 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %46, align 8, !tbaa !18
  %48 = getelementptr %0, %0 addrspace(1)* %44, i64 0, i32 5
  %49 = load i64, i64 addrspace(1)* %48, align 8, !tbaa !21
  %50 = call fastcc %1 addrspace(1)* @2(%1 addrspace(1)* %47, i64 %49, i64 %45) #18
  store %1 addrspace(1)* %50, %1 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !14
  %51 = bitcast %2 addrspace(1)* addrspace(5)* %26 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %51) #14
  %52 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !14
  %53 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !10
  %54 = getelementptr %0, %0 addrspace(1)* %52, i64 0, i32 1
  %55 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(1)* %54, align 8, !tbaa !22
  %56 = getelementptr %0, %0 addrspace(1)* %52, i64 0, i32 5
  %57 = load i64, i64 addrspace(1)* %56, align 8, !tbaa !21
  %58 = call fastcc %2 addrspace(1)* @3(%2 addrspace(1)* %55, i64 %57, i64 %53) #18
  store %2 addrspace(1)* %58, %2 addrspace(1)* addrspace(5)* %26, align 8, !tbaa !14
  %59 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !14
  %60 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(5)* %26, align 8, !tbaa !14
  %61 = load i32, i32 addrspace(5)* %12, align 4, !tbaa !16
  %62 = load i64, i64 addrspace(5)* %13, align 8, !tbaa !10
  %63 = load i64, i64 addrspace(5)* %14, align 8, !tbaa !10
  %64 = load i64, i64 addrspace(5)* %15, align 8, !tbaa !10
  %65 = load i64, i64 addrspace(5)* %16, align 8, !tbaa !10
  %66 = load i64, i64 addrspace(5)* %17, align 8, !tbaa !10
  %67 = load i64, i64 addrspace(5)* %18, align 8, !tbaa !10
  %68 = load i64, i64 addrspace(5)* %19, align 8, !tbaa !10
  %69 = load i64, i64 addrspace(5)* %20, align 8, !tbaa !10
  %70 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !16
  %71 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !16
  call fastcc void @4(%1 addrspace(1)* %59, %2 addrspace(1)* %60, i32 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i32 %70, i32 %71) #18
  %72 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !14
  %73 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !10
  %74 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !16
  %75 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !16
  call fastcc void @5(%0 addrspace(1)* %72, i64 %73, i32 %74, i32 %75) #18
  %76 = bitcast <2 x i64> addrspace(5)* %27 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 16, i8 addrspace(5)* %76) #14
  %77 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !14
  %78 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(5)* %26, align 8, !tbaa !14
  %79 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !16
  %80 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !16
  %81 = call fastcc <2 x i64> @6(%1 addrspace(1)* %77, %2 addrspace(1)* %78, i32 %79, i32 %80) #18
  store <2 x i64> %81, <2 x i64> addrspace(5)* %27, align 16, !tbaa !23
  %82 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !14
  %83 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !10
  %84 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !16
  %85 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !16
  call fastcc void @7(%0 addrspace(1)* %82, i64 %83, i32 %84, i32 %85) #18
  %86 = load <2 x i64>, <2 x i64> addrspace(5)* %27, align 16, !tbaa !23
  %87 = bitcast <2 x i64> addrspace(5)* %27 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 16, i8 addrspace(5)* %87) #14
  %88 = bitcast %2 addrspace(1)* addrspace(5)* %26 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %88) #14
  %89 = bitcast %1 addrspace(1)* addrspace(5)* %25 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %89) #14
  %90 = bitcast i64 addrspace(5)* %24 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %90) #14
  %91 = bitcast %0 addrspace(1)* addrspace(5)* %23 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %91) #14
  %92 = bitcast i32 addrspace(5)* %22 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %92) #14
  %93 = bitcast i32 addrspace(5)* %21 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %93) #14
  ret <2 x i64> %86
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #8

; Function Attrs: convergent norecurse nounwind
define internal fastcc i32 @0(i32 %0) unnamed_addr #9 {
  %2 = tail call i32 asm sideeffect "; ockl readfirstlane hoisting hack $0", "=v,0"(i32 %0) #17, !srcloc !24
  ret i32 %2
}

; Function Attrs: convergent nounwind readnone willreturn
declare i32 @llvm.amdgcn.readfirstlane(i32) #10

; Function Attrs: convergent norecurse nounwind
define internal fastcc i64 @1(%0 addrspace(1)* nocapture %0, i32 %1, i32 %2) unnamed_addr #9 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 3
  %7 = load atomic i64, i64 addrspace(1)* %6 syncscope("one-as") acquire, align 8
  %8 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %9 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %10 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %8, align 8, !tbaa !18
  %11 = load i64, i64 addrspace(1)* %9, align 8, !tbaa !21
  %12 = and i64 %11, %7
  %13 = getelementptr inbounds %1, %1 addrspace(1)* %10, i64 %12, i32 0
  %14 = load atomic i64, i64 addrspace(1)* %13 syncscope("one-as") monotonic, align 8
  %15 = cmpxchg i64 addrspace(1)* %6, i64 %7, i64 %14 syncscope("one-as") acquire monotonic, align 8
  %16 = extractvalue { i64, i1 } %15, 1
  br i1 %16, label %29, label %17

17:                                               ; preds = %17, %5
  %18 = phi { i64, i1 } [ %25, %17 ], [ %15, %5 ]
  %19 = extractvalue { i64, i1 } %18, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #14
  %20 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %8, align 8, !tbaa !18
  %21 = load i64, i64 addrspace(1)* %9, align 8, !tbaa !21
  %22 = and i64 %21, %19
  %23 = getelementptr inbounds %1, %1 addrspace(1)* %20, i64 %22, i32 0
  %24 = load atomic i64, i64 addrspace(1)* %23 syncscope("one-as") monotonic, align 8
  %25 = cmpxchg i64 addrspace(1)* %6, i64 %19, i64 %24 syncscope("one-as") acquire monotonic, align 8
  %26 = extractvalue { i64, i1 } %25, 1
  br i1 %26, label %27, label %17

27:                                               ; preds = %17
  %28 = extractvalue { i64, i1 } %18, 0
  br label %29

29:                                               ; preds = %27, %5, %3
  %30 = phi i64 [ 0, %3 ], [ %7, %5 ], [ %28, %27 ]
  %31 = trunc i64 %30 to i32
  %32 = lshr i64 %30, 32
  %33 = trunc i64 %32 to i32
  %34 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %31)
  %35 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %33)
  %36 = zext i32 %35 to i64
  %37 = shl nuw i64 %36, 32
  %38 = zext i32 %34 to i64
  %39 = or i64 %37, %38
  ret i64 %39
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind readonly willreturn
define internal fastcc %1 addrspace(1)* @2(%1 addrspace(1)* %0, i64 %1, i64 %2) unnamed_addr #11 {
  %4 = and i64 %2, %1
  %5 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 %4
  ret %1 addrspace(1)* %5
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind readonly willreturn
define internal fastcc %2 addrspace(1)* @3(%2 addrspace(1)* %0, i64 %1, i64 %2) unnamed_addr #11 {
  %4 = and i64 %2, %1
  %5 = getelementptr inbounds %2, %2 addrspace(1)* %0, i64 %4
  ret %2 addrspace(1)* %5
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn
define internal fastcc void @4(%1 addrspace(1)* nocapture writeonly %0, %2 addrspace(1)* nocapture writeonly %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i32 %11, i32 %12) unnamed_addr #12 {
  %14 = tail call i64 @llvm.read_register.i64(metadata !25) #18
  %15 = icmp eq i32 %11, %12
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 3
  %18 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 1
  %19 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 2
  store i32 %2, i32 addrspace(1)* %19, align 8, !tbaa !26
  store i64 %14, i64 addrspace(1)* %18, align 8, !tbaa !28
  store i32 1, i32 addrspace(1)* %17, align 4, !tbaa !29
  br label %20

20:                                               ; preds = %16, %13
  %21 = zext i32 %11 to i64
  %22 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 0
  store i64 %3, i64 addrspace(1)* %22, align 8, !tbaa !10
  %23 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 1
  store i64 %4, i64 addrspace(1)* %23, align 8, !tbaa !10
  %24 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 2
  store i64 %5, i64 addrspace(1)* %24, align 8, !tbaa !10
  %25 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 3
  store i64 %6, i64 addrspace(1)* %25, align 8, !tbaa !10
  %26 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 4
  store i64 %7, i64 addrspace(1)* %26, align 8, !tbaa !10
  %27 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 5
  store i64 %8, i64 addrspace(1)* %27, align 8, !tbaa !10
  %28 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 6
  store i64 %9, i64 addrspace(1)* %28, align 8, !tbaa !10
  %29 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 7
  store i64 %10, i64 addrspace(1)* %29, align 8, !tbaa !10
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc void @5(%0 addrspace(1)* nocapture %0, i64 %1, i32 %2, i32 %3) unnamed_addr #9 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 4
  %8 = load atomic i64, i64 addrspace(1)* %7 syncscope("one-as") monotonic, align 8
  %9 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %10 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %9, align 8, !tbaa !18
  %11 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %12 = load i64, i64 addrspace(1)* %11, align 8, !tbaa !21
  %13 = and i64 %12, %1
  %14 = getelementptr inbounds %1, %1 addrspace(1)* %10, i64 %13, i32 0
  store i64 %8, i64 addrspace(1)* %14, align 8, !tbaa !30
  %15 = cmpxchg i64 addrspace(1)* %7, i64 %8, i64 %1 syncscope("one-as") release monotonic, align 8
  %16 = extractvalue { i64, i1 } %15, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %6
  %18 = phi { i64, i1 } [ %20, %17 ], [ %15, %6 ]
  %19 = extractvalue { i64, i1 } %18, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #14
  store i64 %19, i64 addrspace(1)* %14, align 8, !tbaa !30
  %20 = cmpxchg i64 addrspace(1)* %7, i64 %19, i64 %1 syncscope("one-as") release monotonic, align 8
  %21 = extractvalue { i64, i1 } %20, 1
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %6
  %23 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 2, i32 0
  %24 = load i64, i64 addrspace(1)* %23, align 8
  tail call void @__ockl_hsa_signal_add(i64 %24, i64 1, i32 3) #17
  br label %25

25:                                               ; preds = %22, %4
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc <2 x i64> @6(%1 addrspace(1)* nocapture readonly %0, %2 addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) unnamed_addr #5 {
  %5 = icmp eq i32 %2, %3
  %6 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %15, %4
  br i1 %5, label %8, label %11

8:                                                ; preds = %7
  %9 = load atomic i32, i32 addrspace(1)* %6 syncscope("one-as") acquire, align 4
  %10 = and i32 %9, 1
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ %10, %8 ], [ 1, %7 ]
  %13 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  br label %7

16:                                               ; preds = %11
  %17 = zext i32 %2 to i64
  %18 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %17, i64 0
  %19 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %17, i64 1
  %20 = load i64, i64 addrspace(1)* %18, align 8, !tbaa !10
  %21 = load i64, i64 addrspace(1)* %19, align 8, !tbaa !10
  %22 = insertelement <2 x i64> undef, i64 %20, i64 0
  %23 = insertelement <2 x i64> %22, i64 %21, i64 1
  ret <2 x i64> %23
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc void @7(%0 addrspace(1)* nocapture %0, i64 %1, i32 %2, i32 %3) unnamed_addr #9 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 5
  %8 = load i64, i64 addrspace(1)* %7, align 8, !tbaa !21
  %9 = add i64 %8, 1
  %10 = add i64 %9, %1
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 %9, i64 %10
  %13 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 3
  %14 = load atomic i64, i64 addrspace(1)* %13 syncscope("one-as") monotonic, align 8
  %15 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %16 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %15, align 8, !tbaa !18
  %17 = and i64 %12, %8
  %18 = getelementptr inbounds %1, %1 addrspace(1)* %16, i64 %17, i32 0
  store i64 %14, i64 addrspace(1)* %18, align 8, !tbaa !30
  %19 = cmpxchg i64 addrspace(1)* %13, i64 %14, i64 %12 syncscope("one-as") release monotonic, align 8
  %20 = extractvalue { i64, i1 } %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %21, %6
  %22 = phi { i64, i1 } [ %24, %21 ], [ %19, %6 ]
  %23 = extractvalue { i64, i1 } %22, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #14
  store i64 %23, i64 addrspace(1)* %18, align 8, !tbaa !30
  %24 = cmpxchg i64 addrspace(1)* %13, i64 %23, i64 %12 syncscope("one-as") release monotonic, align 8
  %25 = extractvalue { i64, i1 } %24, 1
  br i1 %25, label %26, label %21

26:                                               ; preds = %21, %6, %4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #8

; Function Attrs: nounwind willreturn
declare void @llvm.amdgcn.s.sleep(i32 immarg) #13

; Function Attrs: convergent norecurse nounwind
define internal void @__ockl_hsa_signal_add(i64 %0, i64 %1, i32 %2) local_unnamed_addr #9 {
  %4 = inttoptr i64 %0 to %4 addrspace(1)*
  %5 = getelementptr inbounds %4, %4 addrspace(1)* %4, i64 0, i32 1, i32 0
  switch i32 %2, label %6 [
    i32 1, label %8
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
  ]

6:                                                ; preds = %3
  %7 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") monotonic, align 8
  br label %16

8:                                                ; preds = %3, %3
  %9 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") acquire, align 8
  br label %16

10:                                               ; preds = %3
  %11 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") release, align 8
  br label %16

12:                                               ; preds = %3
  %13 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") acq_rel, align 8
  br label %16

14:                                               ; preds = %3
  %15 = atomicrmw add i64 addrspace(1)* %5, i64 %1 seq_cst, align 8
  br label %16

16:                                               ; preds = %14, %12, %10, %8, %6
  %17 = getelementptr inbounds %4, %4 addrspace(1)* %4, i64 0, i32 2
  %18 = load i64, i64 addrspace(1)* %17, align 16, !tbaa !31
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = inttoptr i64 %18 to i64 addrspace(1)*
  %22 = getelementptr inbounds %4, %4 addrspace(1)* %4, i64 0, i32 3
  %23 = load i32, i32 addrspace(1)* %22, align 8, !tbaa !33
  %24 = zext i32 %23 to i64
  store atomic i64 %24, i64 addrspace(1)* %21 syncscope("one-as") release, align 8
  %25 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %23) #14
  %26 = and i32 %25, 255
  tail call void @llvm.amdgcn.s.sendmsg(i32 1, i32 %26) #14
  br label %27

27:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.amdgcn.s.sendmsg(i32 immarg, i32) #14

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.amdgcn.mbcnt.lo(i32, i32) #16

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.amdgcn.mbcnt.hi(i32, i32) #16

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_fprintf_append_args(i64 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i32 %9) #5 {
  %11 = icmp eq i32 %9, 0
  %12 = or i64 %0, 2
  %13 = select i1 %11, i64 %0, i64 %12
  %14 = and i64 %13, -225
  %15 = zext i32 %1 to i64
  %16 = shl nuw nsw i64 %15, 5
  %17 = or i64 %14, %16
  %18 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 %17, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #17
  %19 = extractelement <2 x i64> %18, i64 0
  ret i64 %19
}

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_fprintf_append_string_n(i64 %0, i8* readonly %1, i64 %2, i32 %3) #5 {
  %5 = icmp eq i32 %3, 0
  %6 = or i64 %0, 2
  %7 = select i1 %5, i64 %0, i64 %6
  %8 = icmp eq i8* %1, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = and i64 %7, -225
  %11 = or i64 %10, 32
  %12 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 %11, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #17
  br label %455

13:                                               ; preds = %4
  %14 = and i64 %7, 2
  %15 = and i64 %7, -3
  %16 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %15, i64 0
  br label %17

17:                                               ; preds = %444, %13
  %18 = phi i64 [ %2, %13 ], [ %452, %444 ]
  %19 = phi i8* [ %1, %13 ], [ %453, %444 ]
  %20 = phi <2 x i64> [ %16, %13 ], [ %451, %444 ]
  %21 = icmp ugt i64 %18, 56
  %22 = extractelement <2 x i64> %20, i64 0
  %23 = or i64 %22, %14
  %24 = insertelement <2 x i64> poison, i64 %23, i64 0
  %25 = select i1 %21, <2 x i64> %20, <2 x i64> %24
  %26 = icmp ult i64 %18, 56
  %27 = select i1 %26, i64 %18, i64 56
  %28 = trunc i64 %27 to i32
  %29 = extractelement <2 x i64> %25, i64 0
  %30 = icmp ugt i32 %28, 7
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %86, label %73

33:                                               ; preds = %17
  %34 = load i8, i8* %19, align 1, !tbaa !23
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i8, i8* %19, i64 1
  %37 = load i8, i8* %36, align 1, !tbaa !23
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = or i64 %39, %35
  %41 = getelementptr inbounds i8, i8* %19, i64 2
  %42 = load i8, i8* %41, align 1, !tbaa !23
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 16
  %45 = or i64 %40, %44
  %46 = getelementptr inbounds i8, i8* %19, i64 3
  %47 = load i8, i8* %46, align 1, !tbaa !23
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 24
  %50 = or i64 %45, %49
  %51 = getelementptr inbounds i8, i8* %19, i64 4
  %52 = load i8, i8* %51, align 1, !tbaa !23
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 32
  %55 = or i64 %50, %54
  %56 = getelementptr inbounds i8, i8* %19, i64 5
  %57 = load i8, i8* %56, align 1, !tbaa !23
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 40
  %60 = or i64 %55, %59
  %61 = getelementptr inbounds i8, i8* %19, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !23
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 48
  %65 = or i64 %60, %64
  %66 = getelementptr inbounds i8, i8* %19, i64 7
  %67 = load i8, i8* %66, align 1, !tbaa !23
  %68 = zext i8 %67 to i64
  %69 = shl nuw i64 %68, 56
  %70 = or i64 %65, %69
  %71 = add nsw i32 %28, -8
  %72 = getelementptr inbounds i8, i8* %19, i64 8
  br label %86

73:                                               ; preds = %73, %31
  %74 = phi i32 [ %84, %73 ], [ 0, %31 ]
  %75 = phi i64 [ %83, %73 ], [ 0, %31 ]
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %19, i64 %76
  %78 = load i8, i8* %77, align 1, !tbaa !23
  %79 = zext i8 %78 to i64
  %80 = shl i32 %74, 3
  %81 = zext i32 %80 to i64
  %82 = shl nuw i64 %79, %81
  %83 = or i64 %82, %75
  %84 = add nuw nsw i32 %74, 1
  %85 = icmp eq i32 %84, %28
  br i1 %85, label %86, label %73

86:                                               ; preds = %73, %33, %31
  %87 = phi i8* [ %72, %33 ], [ %19, %31 ], [ %19, %73 ]
  %88 = phi i32 [ %71, %33 ], [ 0, %31 ], [ 0, %73 ]
  %89 = phi i64 [ %70, %33 ], [ 0, %31 ], [ %83, %73 ]
  %90 = icmp ugt i32 %88, 7
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %146, label %133

93:                                               ; preds = %86
  %94 = load i8, i8* %87, align 1, !tbaa !23
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds i8, i8* %87, i64 1
  %97 = load i8, i8* %96, align 1, !tbaa !23
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 8
  %100 = or i64 %99, %95
  %101 = getelementptr inbounds i8, i8* %87, i64 2
  %102 = load i8, i8* %101, align 1, !tbaa !23
  %103 = zext i8 %102 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = or i64 %100, %104
  %106 = getelementptr inbounds i8, i8* %87, i64 3
  %107 = load i8, i8* %106, align 1, !tbaa !23
  %108 = zext i8 %107 to i64
  %109 = shl nuw nsw i64 %108, 24
  %110 = or i64 %105, %109
  %111 = getelementptr inbounds i8, i8* %87, i64 4
  %112 = load i8, i8* %111, align 1, !tbaa !23
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 32
  %115 = or i64 %110, %114
  %116 = getelementptr inbounds i8, i8* %87, i64 5
  %117 = load i8, i8* %116, align 1, !tbaa !23
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 40
  %120 = or i64 %115, %119
  %121 = getelementptr inbounds i8, i8* %87, i64 6
  %122 = load i8, i8* %121, align 1, !tbaa !23
  %123 = zext i8 %122 to i64
  %124 = shl nuw nsw i64 %123, 48
  %125 = or i64 %120, %124
  %126 = getelementptr inbounds i8, i8* %87, i64 7
  %127 = load i8, i8* %126, align 1, !tbaa !23
  %128 = zext i8 %127 to i64
  %129 = shl nuw i64 %128, 56
  %130 = or i64 %125, %129
  %131 = add nsw i32 %88, -8
  %132 = getelementptr inbounds i8, i8* %87, i64 8
  br label %146

133:                                              ; preds = %133, %91
  %134 = phi i32 [ %144, %133 ], [ 0, %91 ]
  %135 = phi i64 [ %143, %133 ], [ 0, %91 ]
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %87, i64 %136
  %138 = load i8, i8* %137, align 1, !tbaa !23
  %139 = zext i8 %138 to i64
  %140 = shl i32 %134, 3
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %139, %141
  %143 = or i64 %142, %135
  %144 = add nuw nsw i32 %134, 1
  %145 = icmp eq i32 %144, %88
  br i1 %145, label %146, label %133

146:                                              ; preds = %133, %93, %91
  %147 = phi i8* [ %132, %93 ], [ %87, %91 ], [ %87, %133 ]
  %148 = phi i32 [ %131, %93 ], [ 0, %91 ], [ 0, %133 ]
  %149 = phi i64 [ %130, %93 ], [ 0, %91 ], [ %143, %133 ]
  %150 = icmp ugt i32 %148, 7
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = icmp eq i32 %148, 0
  br i1 %152, label %206, label %193

153:                                              ; preds = %146
  %154 = load i8, i8* %147, align 1, !tbaa !23
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds i8, i8* %147, i64 1
  %157 = load i8, i8* %156, align 1, !tbaa !23
  %158 = zext i8 %157 to i64
  %159 = shl nuw nsw i64 %158, 8
  %160 = or i64 %159, %155
  %161 = getelementptr inbounds i8, i8* %147, i64 2
  %162 = load i8, i8* %161, align 1, !tbaa !23
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 16
  %165 = or i64 %160, %164
  %166 = getelementptr inbounds i8, i8* %147, i64 3
  %167 = load i8, i8* %166, align 1, !tbaa !23
  %168 = zext i8 %167 to i64
  %169 = shl nuw nsw i64 %168, 24
  %170 = or i64 %165, %169
  %171 = getelementptr inbounds i8, i8* %147, i64 4
  %172 = load i8, i8* %171, align 1, !tbaa !23
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 32
  %175 = or i64 %170, %174
  %176 = getelementptr inbounds i8, i8* %147, i64 5
  %177 = load i8, i8* %176, align 1, !tbaa !23
  %178 = zext i8 %177 to i64
  %179 = shl nuw nsw i64 %178, 40
  %180 = or i64 %175, %179
  %181 = getelementptr inbounds i8, i8* %147, i64 6
  %182 = load i8, i8* %181, align 1, !tbaa !23
  %183 = zext i8 %182 to i64
  %184 = shl nuw nsw i64 %183, 48
  %185 = or i64 %180, %184
  %186 = getelementptr inbounds i8, i8* %147, i64 7
  %187 = load i8, i8* %186, align 1, !tbaa !23
  %188 = zext i8 %187 to i64
  %189 = shl nuw i64 %188, 56
  %190 = or i64 %185, %189
  %191 = add nsw i32 %148, -8
  %192 = getelementptr inbounds i8, i8* %147, i64 8
  br label %206

193:                                              ; preds = %193, %151
  %194 = phi i32 [ %204, %193 ], [ 0, %151 ]
  %195 = phi i64 [ %203, %193 ], [ 0, %151 ]
  %196 = zext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %147, i64 %196
  %198 = load i8, i8* %197, align 1, !tbaa !23
  %199 = zext i8 %198 to i64
  %200 = shl i32 %194, 3
  %201 = zext i32 %200 to i64
  %202 = shl nuw i64 %199, %201
  %203 = or i64 %202, %195
  %204 = add nuw nsw i32 %194, 1
  %205 = icmp eq i32 %204, %148
  br i1 %205, label %206, label %193

206:                                              ; preds = %193, %153, %151
  %207 = phi i8* [ %192, %153 ], [ %147, %151 ], [ %147, %193 ]
  %208 = phi i32 [ %191, %153 ], [ 0, %151 ], [ 0, %193 ]
  %209 = phi i64 [ %190, %153 ], [ 0, %151 ], [ %203, %193 ]
  %210 = icmp ugt i32 %208, 7
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  %212 = icmp eq i32 %208, 0
  br i1 %212, label %266, label %253

213:                                              ; preds = %206
  %214 = load i8, i8* %207, align 1, !tbaa !23
  %215 = zext i8 %214 to i64
  %216 = getelementptr inbounds i8, i8* %207, i64 1
  %217 = load i8, i8* %216, align 1, !tbaa !23
  %218 = zext i8 %217 to i64
  %219 = shl nuw nsw i64 %218, 8
  %220 = or i64 %219, %215
  %221 = getelementptr inbounds i8, i8* %207, i64 2
  %222 = load i8, i8* %221, align 1, !tbaa !23
  %223 = zext i8 %222 to i64
  %224 = shl nuw nsw i64 %223, 16
  %225 = or i64 %220, %224
  %226 = getelementptr inbounds i8, i8* %207, i64 3
  %227 = load i8, i8* %226, align 1, !tbaa !23
  %228 = zext i8 %227 to i64
  %229 = shl nuw nsw i64 %228, 24
  %230 = or i64 %225, %229
  %231 = getelementptr inbounds i8, i8* %207, i64 4
  %232 = load i8, i8* %231, align 1, !tbaa !23
  %233 = zext i8 %232 to i64
  %234 = shl nuw nsw i64 %233, 32
  %235 = or i64 %230, %234
  %236 = getelementptr inbounds i8, i8* %207, i64 5
  %237 = load i8, i8* %236, align 1, !tbaa !23
  %238 = zext i8 %237 to i64
  %239 = shl nuw nsw i64 %238, 40
  %240 = or i64 %235, %239
  %241 = getelementptr inbounds i8, i8* %207, i64 6
  %242 = load i8, i8* %241, align 1, !tbaa !23
  %243 = zext i8 %242 to i64
  %244 = shl nuw nsw i64 %243, 48
  %245 = or i64 %240, %244
  %246 = getelementptr inbounds i8, i8* %207, i64 7
  %247 = load i8, i8* %246, align 1, !tbaa !23
  %248 = zext i8 %247 to i64
  %249 = shl nuw i64 %248, 56
  %250 = or i64 %245, %249
  %251 = add nsw i32 %208, -8
  %252 = getelementptr inbounds i8, i8* %207, i64 8
  br label %266

253:                                              ; preds = %253, %211
  %254 = phi i32 [ %264, %253 ], [ 0, %211 ]
  %255 = phi i64 [ %263, %253 ], [ 0, %211 ]
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %207, i64 %256
  %258 = load i8, i8* %257, align 1, !tbaa !23
  %259 = zext i8 %258 to i64
  %260 = shl i32 %254, 3
  %261 = zext i32 %260 to i64
  %262 = shl nuw i64 %259, %261
  %263 = or i64 %262, %255
  %264 = add nuw nsw i32 %254, 1
  %265 = icmp eq i32 %264, %208
  br i1 %265, label %266, label %253

266:                                              ; preds = %253, %213, %211
  %267 = phi i8* [ %252, %213 ], [ %207, %211 ], [ %207, %253 ]
  %268 = phi i32 [ %251, %213 ], [ 0, %211 ], [ 0, %253 ]
  %269 = phi i64 [ %250, %213 ], [ 0, %211 ], [ %263, %253 ]
  %270 = icmp ugt i32 %268, 7
  br i1 %270, label %273, label %271

271:                                              ; preds = %266
  %272 = icmp eq i32 %268, 0
  br i1 %272, label %326, label %313

273:                                              ; preds = %266
  %274 = load i8, i8* %267, align 1, !tbaa !23
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds i8, i8* %267, i64 1
  %277 = load i8, i8* %276, align 1, !tbaa !23
  %278 = zext i8 %277 to i64
  %279 = shl nuw nsw i64 %278, 8
  %280 = or i64 %279, %275
  %281 = getelementptr inbounds i8, i8* %267, i64 2
  %282 = load i8, i8* %281, align 1, !tbaa !23
  %283 = zext i8 %282 to i64
  %284 = shl nuw nsw i64 %283, 16
  %285 = or i64 %280, %284
  %286 = getelementptr inbounds i8, i8* %267, i64 3
  %287 = load i8, i8* %286, align 1, !tbaa !23
  %288 = zext i8 %287 to i64
  %289 = shl nuw nsw i64 %288, 24
  %290 = or i64 %285, %289
  %291 = getelementptr inbounds i8, i8* %267, i64 4
  %292 = load i8, i8* %291, align 1, !tbaa !23
  %293 = zext i8 %292 to i64
  %294 = shl nuw nsw i64 %293, 32
  %295 = or i64 %290, %294
  %296 = getelementptr inbounds i8, i8* %267, i64 5
  %297 = load i8, i8* %296, align 1, !tbaa !23
  %298 = zext i8 %297 to i64
  %299 = shl nuw nsw i64 %298, 40
  %300 = or i64 %295, %299
  %301 = getelementptr inbounds i8, i8* %267, i64 6
  %302 = load i8, i8* %301, align 1, !tbaa !23
  %303 = zext i8 %302 to i64
  %304 = shl nuw nsw i64 %303, 48
  %305 = or i64 %300, %304
  %306 = getelementptr inbounds i8, i8* %267, i64 7
  %307 = load i8, i8* %306, align 1, !tbaa !23
  %308 = zext i8 %307 to i64
  %309 = shl nuw i64 %308, 56
  %310 = or i64 %305, %309
  %311 = add nsw i32 %268, -8
  %312 = getelementptr inbounds i8, i8* %267, i64 8
  br label %326

313:                                              ; preds = %313, %271
  %314 = phi i32 [ %324, %313 ], [ 0, %271 ]
  %315 = phi i64 [ %323, %313 ], [ 0, %271 ]
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %267, i64 %316
  %318 = load i8, i8* %317, align 1, !tbaa !23
  %319 = zext i8 %318 to i64
  %320 = shl i32 %314, 3
  %321 = zext i32 %320 to i64
  %322 = shl nuw i64 %319, %321
  %323 = or i64 %322, %315
  %324 = add nuw nsw i32 %314, 1
  %325 = icmp eq i32 %324, %268
  br i1 %325, label %326, label %313

326:                                              ; preds = %313, %273, %271
  %327 = phi i8* [ %312, %273 ], [ %267, %271 ], [ %267, %313 ]
  %328 = phi i32 [ %311, %273 ], [ 0, %271 ], [ 0, %313 ]
  %329 = phi i64 [ %310, %273 ], [ 0, %271 ], [ %323, %313 ]
  %330 = icmp ugt i32 %328, 7
  br i1 %330, label %333, label %331

331:                                              ; preds = %326
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %386, label %373

333:                                              ; preds = %326
  %334 = load i8, i8* %327, align 1, !tbaa !23
  %335 = zext i8 %334 to i64
  %336 = getelementptr inbounds i8, i8* %327, i64 1
  %337 = load i8, i8* %336, align 1, !tbaa !23
  %338 = zext i8 %337 to i64
  %339 = shl nuw nsw i64 %338, 8
  %340 = or i64 %339, %335
  %341 = getelementptr inbounds i8, i8* %327, i64 2
  %342 = load i8, i8* %341, align 1, !tbaa !23
  %343 = zext i8 %342 to i64
  %344 = shl nuw nsw i64 %343, 16
  %345 = or i64 %340, %344
  %346 = getelementptr inbounds i8, i8* %327, i64 3
  %347 = load i8, i8* %346, align 1, !tbaa !23
  %348 = zext i8 %347 to i64
  %349 = shl nuw nsw i64 %348, 24
  %350 = or i64 %345, %349
  %351 = getelementptr inbounds i8, i8* %327, i64 4
  %352 = load i8, i8* %351, align 1, !tbaa !23
  %353 = zext i8 %352 to i64
  %354 = shl nuw nsw i64 %353, 32
  %355 = or i64 %350, %354
  %356 = getelementptr inbounds i8, i8* %327, i64 5
  %357 = load i8, i8* %356, align 1, !tbaa !23
  %358 = zext i8 %357 to i64
  %359 = shl nuw nsw i64 %358, 40
  %360 = or i64 %355, %359
  %361 = getelementptr inbounds i8, i8* %327, i64 6
  %362 = load i8, i8* %361, align 1, !tbaa !23
  %363 = zext i8 %362 to i64
  %364 = shl nuw nsw i64 %363, 48
  %365 = or i64 %360, %364
  %366 = getelementptr inbounds i8, i8* %327, i64 7
  %367 = load i8, i8* %366, align 1, !tbaa !23
  %368 = zext i8 %367 to i64
  %369 = shl nuw i64 %368, 56
  %370 = or i64 %365, %369
  %371 = add nsw i32 %328, -8
  %372 = getelementptr inbounds i8, i8* %327, i64 8
  br label %386

373:                                              ; preds = %373, %331
  %374 = phi i32 [ %384, %373 ], [ 0, %331 ]
  %375 = phi i64 [ %383, %373 ], [ 0, %331 ]
  %376 = zext i32 %374 to i64
  %377 = getelementptr inbounds i8, i8* %327, i64 %376
  %378 = load i8, i8* %377, align 1, !tbaa !23
  %379 = zext i8 %378 to i64
  %380 = shl i32 %374, 3
  %381 = zext i32 %380 to i64
  %382 = shl nuw i64 %379, %381
  %383 = or i64 %382, %375
  %384 = add nuw nsw i32 %374, 1
  %385 = icmp eq i32 %384, %328
  br i1 %385, label %386, label %373

386:                                              ; preds = %373, %333, %331
  %387 = phi i8* [ %372, %333 ], [ %327, %331 ], [ %327, %373 ]
  %388 = phi i32 [ %371, %333 ], [ 0, %331 ], [ 0, %373 ]
  %389 = phi i64 [ %370, %333 ], [ 0, %331 ], [ %383, %373 ]
  %390 = icmp ugt i32 %388, 7
  br i1 %390, label %393, label %391

391:                                              ; preds = %386
  %392 = icmp eq i32 %388, 0
  br i1 %392, label %444, label %431

393:                                              ; preds = %386
  %394 = load i8, i8* %387, align 1, !tbaa !23
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds i8, i8* %387, i64 1
  %397 = load i8, i8* %396, align 1, !tbaa !23
  %398 = zext i8 %397 to i64
  %399 = shl nuw nsw i64 %398, 8
  %400 = or i64 %399, %395
  %401 = getelementptr inbounds i8, i8* %387, i64 2
  %402 = load i8, i8* %401, align 1, !tbaa !23
  %403 = zext i8 %402 to i64
  %404 = shl nuw nsw i64 %403, 16
  %405 = or i64 %400, %404
  %406 = getelementptr inbounds i8, i8* %387, i64 3
  %407 = load i8, i8* %406, align 1, !tbaa !23
  %408 = zext i8 %407 to i64
  %409 = shl nuw nsw i64 %408, 24
  %410 = or i64 %405, %409
  %411 = getelementptr inbounds i8, i8* %387, i64 4
  %412 = load i8, i8* %411, align 1, !tbaa !23
  %413 = zext i8 %412 to i64
  %414 = shl nuw nsw i64 %413, 32
  %415 = or i64 %410, %414
  %416 = getelementptr inbounds i8, i8* %387, i64 5
  %417 = load i8, i8* %416, align 1, !tbaa !23
  %418 = zext i8 %417 to i64
  %419 = shl nuw nsw i64 %418, 40
  %420 = or i64 %415, %419
  %421 = getelementptr inbounds i8, i8* %387, i64 6
  %422 = load i8, i8* %421, align 1, !tbaa !23
  %423 = zext i8 %422 to i64
  %424 = shl nuw nsw i64 %423, 48
  %425 = or i64 %420, %424
  %426 = getelementptr inbounds i8, i8* %387, i64 7
  %427 = load i8, i8* %426, align 1, !tbaa !23
  %428 = zext i8 %427 to i64
  %429 = shl nuw i64 %428, 56
  %430 = or i64 %425, %429
  br label %444

431:                                              ; preds = %431, %391
  %432 = phi i32 [ %442, %431 ], [ 0, %391 ]
  %433 = phi i64 [ %441, %431 ], [ 0, %391 ]
  %434 = zext i32 %432 to i64
  %435 = getelementptr inbounds i8, i8* %387, i64 %434
  %436 = load i8, i8* %435, align 1, !tbaa !23
  %437 = zext i8 %436 to i64
  %438 = shl i32 %432, 3
  %439 = zext i32 %438 to i64
  %440 = shl nuw i64 %437, %439
  %441 = or i64 %440, %433
  %442 = add nuw nsw i32 %432, 1
  %443 = icmp eq i32 %442, %388
  br i1 %443, label %444, label %431

444:                                              ; preds = %431, %393, %391
  %445 = phi i64 [ %430, %393 ], [ 0, %391 ], [ %441, %431 ]
  %446 = shl nuw nsw i64 %27, 2
  %447 = add nuw nsw i64 %446, 28
  %448 = and i64 %447, 480
  %449 = and i64 %29, -225
  %450 = or i64 %449, %448
  %451 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 %450, i64 %89, i64 %149, i64 %209, i64 %269, i64 %329, i64 %389, i64 %445) #17
  %452 = sub i64 %18, %27
  %453 = getelementptr inbounds i8, i8* %19, i64 %27
  %454 = icmp eq i64 %452, 0
  br i1 %454, label %455, label %17

455:                                              ; preds = %444, %9
  %456 = phi <2 x i64> [ %12, %9 ], [ %451, %444 ]
  %457 = extractelement <2 x i64> %456, i64 0
  ret i64 %457
}

attributes #0 = { convergent mustprogress noinline noreturn nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx1030" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx10-3-insts,+gfx10-insts,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { convergent mustprogress noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx1030" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx10-3-insts,+gfx10-insts,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { convergent mustprogress noinline norecurse nounwind optnone "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx1030" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx10-3-insts,+gfx10-insts,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #5 = { convergent norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { convergent norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #10 = { convergent nounwind readnone willreturn }
attributes #11 = { convergent mustprogress nofree norecurse nosync nounwind readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #12 = { convergent mustprogress nofree norecurse nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #13 = { nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { convergent nounwind }
attributes #18 = { convergent }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!opencl.ocl.version = !{!4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"AMD clang version 14.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.1.2 22114 5cba46feb6af367b1cafaa183ec42dbfb8207b14)"}
!4 = !{i32 2, i32 0}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !12, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !12, i64 0}
!18 = !{!19, !15, i64 0}
!19 = !{!"", !15, i64 0, !15, i64 8, !20, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!20 = !{!"hsa_signal_s", !11, i64 0}
!21 = !{!19, !11, i64 40}
!22 = !{!19, !15, i64 8}
!23 = !{!12, !12, i64 0}
!24 = !{i64 2509}
!25 = !{!"exec"}
!26 = !{!27, !17, i64 16}
!27 = !{!"", !11, i64 0, !11, i64 8, !17, i64 16, !17, i64 20}
!28 = !{!27, !11, i64 8}
!29 = !{!27, !17, i64 20}
!30 = !{!27, !11, i64 0}
!31 = !{!32, !11, i64 16}
!32 = !{!"amd_signal_s", !11, i64 0, !12, i64 8, !11, i64 16, !17, i64 24, !17, i64 28, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56}
!33 = !{!32, !17, i64 24}
