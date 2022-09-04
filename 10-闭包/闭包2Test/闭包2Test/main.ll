; ModuleID = 'main.m'
source_filename = "main.m"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

%struct.munger_struct = type { i32, i32 }

@array = common global [3 x %struct.munger_struct*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @munge(%struct.munger_struct* %0) #0 {
  %2 = alloca %struct.munger_struct*, align 8
  store %struct.munger_struct* %0, %struct.munger_struct** %2, align 8
  %3 = load %struct.munger_struct*, %struct.munger_struct** %2, align 8
  %4 = getelementptr inbounds %struct.munger_struct, %struct.munger_struct* %3, i64 1
  %5 = getelementptr inbounds %struct.munger_struct, %struct.munger_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.munger_struct*, %struct.munger_struct** %2, align 8
  %8 = getelementptr inbounds %struct.munger_struct, %struct.munger_struct* %7, i64 2
  %9 = getelementptr inbounds %struct.munger_struct, %struct.munger_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %6, %10
  %12 = load %struct.munger_struct*, %struct.munger_struct** %2, align 8
  %13 = getelementptr inbounds %struct.munger_struct, %struct.munger_struct* %12, i64 0
  %14 = getelementptr inbounds %struct.munger_struct, %struct.munger_struct* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "darwin-stkchk-strong-link" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 3]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 1, !"Objective-C Garbage Collection", i8 0}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"Objective-C Enforce ClassRO Pointer Signing", i8 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Apple clang version 13.1.6 (clang-1316.0.21.2.5)"}
