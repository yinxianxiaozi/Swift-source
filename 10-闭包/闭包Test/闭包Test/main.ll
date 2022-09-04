; ModuleID = '<swift-imported-modules>'
source_filename = "<swift-imported-modules>"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

%swift.function = type { i8*, %swift.refcounted* }
%swift.refcounted = type { %swift.type*, i64 }
%swift.type = type { i64 }
%swift.full_type = type { i8**, %swift.type }
%swift.full_boxmetadata = type { void (%swift.refcounted*)*, i8**, %swift.type, i32, i8* }
%swift.bridge = type opaque
%Any = type { [24 x i8], %swift.type* }
%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ %swift.bridge* }>
%swift.metadata_response = type { %swift.type*, i64 }

@"$s4main7makeIncSiycvp" = hidden global %swift.function zeroinitializer, align 8
@"$sypN" = external global %swift.full_type
@"$sSiN" = external global %swift.type, align 8
@"symbolic Si" = linkonce_odr hidden constant <{ [2 x i8], i8 }> <{ [2 x i8] c"Si", i8 0 }>, section "__TEXT,__swift5_typeref, regular, no_dead_strip", align 2
@"\01l__swift5_reflection_descriptor" = private constant { i32, i32, i32, i32 } { i32 1, i32 0, i32 0, i32 trunc (i64 sub (i64 ptrtoint (<{ [2 x i8], i8 }>* @"symbolic Si" to i64), i64 ptrtoint (i32* getelementptr inbounds ({ i32, i32, i32, i32 }, { i32, i32, i32, i32 }* @"\01l__swift5_reflection_descriptor", i32 0, i32 3) to i64)) to i32) }, section "__TEXT,__swift5_capture, regular, no_dead_strip", align 4
@metadata = private constant %swift.full_boxmetadata { void (%swift.refcounted*)* @objectdestroy, i8** null, %swift.type { i64 1024 }, i32 16, i8* bitcast ({ i32, i32, i32, i32 }* @"\01l__swift5_reflection_descriptor" to i8*) }, align 8
@"\01l_entry_point" = private constant { i32 } { i32 trunc (i64 sub (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 ptrtoint ({ i32 }* @"\01l_entry_point" to i64)) to i32) }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftDarwin_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDarwin"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftIOKit"
@"_swift_FORCE_LOAD_$_swiftCoreGraphics_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCoreGraphics"
@0 = private unnamed_addr constant [2 x i8] c"\0A\00"
@1 = private unnamed_addr constant [2 x i8] c" \00"
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@llvm.used = appending global [12 x i8*] [i8* bitcast (i32 (i32, i8**)* @main to i8*), i8* bitcast ({ i32, i32, i32, i32 }* @"\01l__swift5_reflection_descriptor" to i8*), i8* bitcast ({ i32 }* @"\01l_entry_point" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDarwin_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDispatch_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftXPC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftIOKit_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCoreGraphics_$_main" to i8*), i8* bitcast (i16* @__swift_reflection_version to i8*)], section "llvm.metadata"

define i32 @main(i32 %0, i8** %1) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  %3 = call swiftcc { i8*, %swift.refcounted* } @"$s4main15makeIncrementerSiycyF"()
  %4 = extractvalue { i8*, %swift.refcounted* } %3, 0
  %5 = extractvalue { i8*, %swift.refcounted* } %3, 1
  store i8* %4, i8** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 0), align 8
  store %swift.refcounted* %5, %swift.refcounted** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 1), align 8
  %6 = call swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64 1, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1))
  %7 = extractvalue { %swift.bridge*, i8* } %6, 0
  %8 = extractvalue { %swift.bridge*, i8* } %6, 1
  %9 = bitcast i8* %8 to %Any*
  %10 = load i8*, i8** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 0), align 8
  %11 = load %swift.refcounted*, %swift.refcounted** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 1), align 8
  %12 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %11) #2
  %13 = bitcast i8* %10 to i64 (%swift.refcounted*)*
  %14 = call swiftcc i64 %13(%swift.refcounted* swiftself %11)
  %15 = getelementptr inbounds %Any, %Any* %9, i32 0, i32 1
  store %swift.type* @"$sSiN", %swift.type** %15, align 8
  %16 = getelementptr inbounds %Any, %Any* %9, i32 0, i32 0
  %17 = getelementptr inbounds %Any, %Any* %9, i32 0, i32 0
  %18 = bitcast [24 x i8]* %17 to %TSi*
  %._value = getelementptr inbounds %TSi, %TSi* %18, i32 0, i32 0
  store i64 %14, i64* %._value, align 8
  %19 = call swiftcc %swift.bridge* @"$ss27_finalizeUninitializedArrayySayxGABnlF"(%swift.bridge* %7, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1))
  call void @swift_release(%swift.refcounted* %11) #2
  %20 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"()
  %21 = extractvalue { i64, %swift.bridge* } %20, 0
  %22 = extractvalue { i64, %swift.bridge* } %20, 1
  %23 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"()
  %24 = extractvalue { i64, %swift.bridge* } %23, 0
  %25 = extractvalue { i64, %swift.bridge* } %23, 1
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge* %19, i64 %21, %swift.bridge* %22, i64 %24, %swift.bridge* %25)
  call void @swift_bridgeObjectRelease(%swift.bridge* %25) #2
  call void @swift_bridgeObjectRelease(%swift.bridge* %22) #2
  call void @swift_bridgeObjectRelease(%swift.bridge* %19) #2
  %26 = call swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64 1, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1))
  %27 = extractvalue { %swift.bridge*, i8* } %26, 0
  %28 = extractvalue { %swift.bridge*, i8* } %26, 1
  %29 = bitcast i8* %28 to %Any*
  %30 = load i8*, i8** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 0), align 8
  %31 = load %swift.refcounted*, %swift.refcounted** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 1), align 8
  %32 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %31) #2
  %33 = bitcast i8* %30 to i64 (%swift.refcounted*)*
  %34 = call swiftcc i64 %33(%swift.refcounted* swiftself %31)
  %35 = getelementptr inbounds %Any, %Any* %29, i32 0, i32 1
  store %swift.type* @"$sSiN", %swift.type** %35, align 8
  %36 = getelementptr inbounds %Any, %Any* %29, i32 0, i32 0
  %37 = getelementptr inbounds %Any, %Any* %29, i32 0, i32 0
  %38 = bitcast [24 x i8]* %37 to %TSi*
  %._value1 = getelementptr inbounds %TSi, %TSi* %38, i32 0, i32 0
  store i64 %34, i64* %._value1, align 8
  %39 = call swiftcc %swift.bridge* @"$ss27_finalizeUninitializedArrayySayxGABnlF"(%swift.bridge* %27, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1))
  call void @swift_release(%swift.refcounted* %31) #2
  %40 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"()
  %41 = extractvalue { i64, %swift.bridge* } %40, 0
  %42 = extractvalue { i64, %swift.bridge* } %40, 1
  %43 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"()
  %44 = extractvalue { i64, %swift.bridge* } %43, 0
  %45 = extractvalue { i64, %swift.bridge* } %43, 1
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge* %39, i64 %41, %swift.bridge* %42, i64 %44, %swift.bridge* %45)
  call void @swift_bridgeObjectRelease(%swift.bridge* %45) #2
  call void @swift_bridgeObjectRelease(%swift.bridge* %42) #2
  call void @swift_bridgeObjectRelease(%swift.bridge* %39) #2
  %46 = call swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64 1, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1))
  %47 = extractvalue { %swift.bridge*, i8* } %46, 0
  %48 = extractvalue { %swift.bridge*, i8* } %46, 1
  %49 = bitcast i8* %48 to %Any*
  %50 = load i8*, i8** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 0), align 8
  %51 = load %swift.refcounted*, %swift.refcounted** getelementptr inbounds (%swift.function, %swift.function* @"$s4main7makeIncSiycvp", i32 0, i32 1), align 8
  %52 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %51) #2
  %53 = bitcast i8* %50 to i64 (%swift.refcounted*)*
  %54 = call swiftcc i64 %53(%swift.refcounted* swiftself %51)
  %55 = getelementptr inbounds %Any, %Any* %49, i32 0, i32 1
  store %swift.type* @"$sSiN", %swift.type** %55, align 8
  %56 = getelementptr inbounds %Any, %Any* %49, i32 0, i32 0
  %57 = getelementptr inbounds %Any, %Any* %49, i32 0, i32 0
  %58 = bitcast [24 x i8]* %57 to %TSi*
  %._value2 = getelementptr inbounds %TSi, %TSi* %58, i32 0, i32 0
  store i64 %54, i64* %._value2, align 8
  %59 = call swiftcc %swift.bridge* @"$ss27_finalizeUninitializedArrayySayxGABnlF"(%swift.bridge* %47, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1))
  call void @swift_release(%swift.refcounted* %51) #2
  %60 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"()
  %61 = extractvalue { i64, %swift.bridge* } %60, 0
  %62 = extractvalue { i64, %swift.bridge* } %60, 1
  %63 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"()
  %64 = extractvalue { i64, %swift.bridge* } %63, 0
  %65 = extractvalue { i64, %swift.bridge* } %63, 1
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge* %59, i64 %61, %swift.bridge* %62, i64 %64, %swift.bridge* %65)
  call void @swift_bridgeObjectRelease(%swift.bridge* %65) #2
  call void @swift_bridgeObjectRelease(%swift.bridge* %62) #2
  call void @swift_bridgeObjectRelease(%swift.bridge* %59) #2
  ret i32 0
}

define hidden swiftcc { i8*, %swift.refcounted* } @"$s4main15makeIncrementerSiycyF"() #0 {
entry:
  %runningTotal.debug = alloca %TSi*, align 8
  %0 = bitcast %TSi** %runningTotal.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %1 = call noalias %swift.refcounted* @swift_allocObject(%swift.type* getelementptr inbounds (%swift.full_boxmetadata, %swift.full_boxmetadata* @metadata, i32 0, i32 2), i64 24, i64 7) #2
  %2 = bitcast %swift.refcounted* %1 to <{ %swift.refcounted, [8 x i8] }>*
  %3 = getelementptr inbounds <{ %swift.refcounted, [8 x i8] }>, <{ %swift.refcounted, [8 x i8] }>* %2, i32 0, i32 1
  %4 = bitcast [8 x i8]* %3 to %TSi*
  store %TSi* %4, %TSi** %runningTotal.debug, align 8
  %._value = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0
  store i64 10, i64* %._value, align 8
  %5 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %1) #2
  call void @swift_release(%swift.refcounted* %1) #2
  %6 = insertvalue { i8*, %swift.refcounted* } { i8* bitcast (i64 (%swift.refcounted*)* @"$s4main15makeIncrementerSiycyF11incrementerL_SiyFTA" to i8*), %swift.refcounted* undef }, %swift.refcounted* %1, 1
  ret { i8*, %swift.refcounted* } %6
}

declare swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64, %swift.type*) #0

; Function Attrs: nounwind willreturn
declare %swift.refcounted* @swift_retain(%swift.refcounted* returned) #1

define internal swiftcc i64 @"$s4main15makeIncrementerSiycyF11incrementerL_SiyF"(%swift.refcounted* %0) #0 {
entry:
  %runningTotal.debug = alloca %TSi*, align 8
  %1 = bitcast %TSi** %runningTotal.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch2 = alloca [24 x i8], align 8
  %2 = bitcast %swift.refcounted* %0 to <{ %swift.refcounted, [8 x i8] }>*
  %3 = getelementptr inbounds <{ %swift.refcounted, [8 x i8] }>, <{ %swift.refcounted, [8 x i8] }>* %2, i32 0, i32 1
  %4 = bitcast [8 x i8]* %3 to %TSi*
  store %TSi* %4, %TSi** %runningTotal.debug, align 8
  %5 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %5)
  %6 = bitcast %TSi* %4 to i8*
  call void @swift_beginAccess(i8* %6, [24 x i8]* %access-scratch, i64 33, i8* null) #2
  %._value = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0
  %7 = load i64, i64* %._value, align 8
  %8 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 1)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  %11 = call i1 @llvm.expect.i1(i1 %10, i1 false)
  br i1 %11, label %18, label %12

12:                                               ; preds = %entry
  %._value1 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0
  store i64 %9, i64* %._value1, align 8
  call void @swift_endAccess([24 x i8]* %access-scratch) #2
  %13 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %13)
  %14 = bitcast [24 x i8]* %access-scratch2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %14)
  %15 = bitcast %TSi* %4 to i8*
  call void @swift_beginAccess(i8* %15, [24 x i8]* %access-scratch2, i64 32, i8* null) #2
  %._value3 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0
  %16 = load i64, i64* %._value3, align 8
  call void @swift_endAccess([24 x i8]* %access-scratch2) #2
  %17 = bitcast [24 x i8]* %access-scratch2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %17)
  ret i64 %16

18:                                               ; preds = %entry
  call void @llvm.trap()
  unreachable
}

define linkonce_odr hidden swiftcc %swift.bridge* @"$ss27_finalizeUninitializedArrayySayxGABnlF"(%swift.bridge* %0, %swift.type* %Element) #0 {
entry:
  %Element1 = alloca %swift.type*, align 8
  %1 = alloca %TSa, align 8
  store %swift.type* %Element, %swift.type** %Element1, align 8
  %2 = bitcast %TSa* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2)
  %._buffer = getelementptr inbounds %TSa, %TSa* %1, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer, i32 0, i32 0
  %._buffer._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer._storage, i32 0, i32 0
  store %swift.bridge* %0, %swift.bridge** %._buffer._storage.rawValue, align 8
  %3 = call swiftcc %swift.metadata_response @"$sSaMa"(i64 0, %swift.type* %Element) #8
  %4 = extractvalue %swift.metadata_response %3, 0
  call swiftcc void @"$sSa12_endMutationyyF"(%swift.type* %4, %TSa* nocapture swiftself dereferenceable(8) %1)
  %._buffer2 = getelementptr inbounds %TSa, %TSa* %1, i32 0, i32 0
  %._buffer2._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer2, i32 0, i32 0
  %._buffer2._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer2._storage, i32 0, i32 0
  %5 = load %swift.bridge*, %swift.bridge** %._buffer2._storage.rawValue, align 8
  %._buffer3 = getelementptr inbounds %TSa, %TSa* %1, i32 0, i32 0
  %._buffer3._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer3, i32 0, i32 0
  %._buffer3._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer3._storage, i32 0, i32 0
  %6 = load %swift.bridge*, %swift.bridge** %._buffer3._storage.rawValue, align 8
  %7 = call %swift.bridge* @swift_bridgeObjectRetain(%swift.bridge* returned %5) #2
  call void @swift_bridgeObjectRelease(%swift.bridge* %6) #2
  %8 = bitcast %TSa* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8)
  ret %swift.bridge* %5
}

; Function Attrs: nounwind
declare void @swift_release(%swift.refcounted*) #2

define linkonce_odr hidden swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"() #0 {
entry:
  %0 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i64 0, i64 0), i64 1, i1 true)
  %1 = extractvalue { i64, %swift.bridge* } %0, 0
  %2 = extractvalue { i64, %swift.bridge* } %0, 1
  %3 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0
  %4 = insertvalue { i64, %swift.bridge* } %3, %swift.bridge* %2, 1
  ret { i64, %swift.bridge* } %4
}

define linkonce_odr hidden swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"() #0 {
entry:
  %0 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i64 0, i64 0), i64 1, i1 true)
  %1 = extractvalue { i64, %swift.bridge* } %0, 0
  %2 = extractvalue { i64, %swift.bridge* } %0, 1
  %3 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0
  %4 = insertvalue { i64, %swift.bridge* } %3, %swift.bridge* %2, 1
  ret { i64, %swift.bridge* } %4
}

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge*, i64, %swift.bridge*, i64, %swift.bridge*) #0

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(%swift.bridge*) #2

define private swiftcc void @objectdestroy(%swift.refcounted* swiftself %0) #0 {
entry:
  %1 = bitcast %swift.refcounted* %0 to <{ %swift.refcounted, [8 x i8] }>*
  call void @swift_deallocObject(%swift.refcounted* %0, i64 24, i64 7)
  ret void
}

; Function Attrs: nounwind
declare void @swift_deallocObject(%swift.refcounted*, i64, i64) #2

; Function Attrs: nounwind
declare %swift.refcounted* @swift_allocObject(%swift.type*, i64, i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

define internal swiftcc i64 @"$s4main15makeIncrementerSiycyF11incrementerL_SiyFTA"(%swift.refcounted* swiftself %0) #0 {
entry:
  %1 = tail call swiftcc i64 @"$s4main15makeIncrementerSiycyF11incrementerL_SiyF"(%swift.refcounted* %0)
  ret i64 %1
}

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDarwin"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreGraphics"()

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare void @swift_beginAccess(i8*, [24 x i8]*, i64, i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: nounwind
declare void @swift_endAccess([24 x i8]*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8*, i64, i1) #0

define linkonce_odr hidden swiftcc void @"$sSa12_endMutationyyF"(%swift.type* %"Array<Element>", %TSa* nocapture swiftself dereferenceable(8) %0) #0 {
entry:
  %._buffer = getelementptr inbounds %TSa, %TSa* %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer, i32 0, i32 0
  %._buffer._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer._storage, i32 0, i32 0
  %1 = load %swift.bridge*, %swift.bridge** %._buffer._storage.rawValue, align 8
  %._buffer1 = getelementptr inbounds %TSa, %TSa* %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer1, i32 0, i32 0
  %._buffer1._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer1._storage, i32 0, i32 0
  store %swift.bridge* %1, %swift.bridge** %._buffer1._storage.rawValue, align 8
  ret void
}

declare swiftcc %swift.metadata_response @"$sSaMa"(i64, %swift.type*) #0

; Function Attrs: nounwind
declare %swift.bridge* @swift_bridgeObjectRetain(%swift.bridge* returned) #2

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!swift.module.flags = !{!12}
!llvm.asan.globals = !{!13, !14}
!llvm.linker.options = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 3]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 4, !"Objective-C Garbage Collection", i32 84281088}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"Objective-C Enforce ClassRO Pointer Signing", i8 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{i32 1, !"Swift Version", i32 7}
!12 = !{!"standard-library", i1 false}
!13 = !{<{ [2 x i8], i8 }>* @"symbolic Si", null, null, i1 false, i1 true}
!14 = !{{ i32, i32, i32, i32 }* @"\01l__swift5_reflection_descriptor", null, null, i1 false, i1 true}
!15 = !{!"-lswiftFoundation"}
!16 = !{!"-lswiftCore"}
!17 = !{!"-lswift_Concurrency"}
!18 = !{!"-lswiftObjectiveC"}
!19 = !{!"-lswiftDarwin"}
!20 = !{!"-framework", !"Foundation"}
!21 = !{!"-lswiftCoreFoundation"}
!22 = !{!"-framework", !"CoreFoundation"}
!23 = !{!"-lswiftDispatch"}
!24 = !{!"-framework", !"Combine"}
!25 = !{!"-framework", !"CoreServices"}
!26 = !{!"-framework", !"Security"}
!27 = !{!"-lswiftXPC"}
!28 = !{!"-framework", !"CFNetwork"}
!29 = !{!"-framework", !"DiskArbitration"}
!30 = !{!"-lswiftIOKit"}
!31 = !{!"-framework", !"IOKit"}
!32 = !{!"-lswiftCoreGraphics"}
!33 = !{!"-framework", !"CoreGraphics"}
!34 = !{!"-lswiftSwiftOnoneSupport"}
!35 = !{!"-lobjc"}
