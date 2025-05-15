; ModuleID = 'C:/HAC/HLS_Image_Proc/HLS_Eindoefening/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_full_pipeline_ir([2132 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4408" "maxi" %input, i32 %height, i32 %width, [3 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "maxi" %kernel, [2132 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4408" "maxi" %conv_out, [2132 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4408" "maxi" %max_out, [2132 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4408" "maxi" %min_out, [2132 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4408" "maxi" %avg_out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 37591424)
  %input_copy = bitcast i8* %malloccall to [4408 x [2132 x i32]]*
  %kernel_copy = alloca [3 x [3 x i32]], align 512
  %malloccall1 = tail call i8* @malloc(i64 37591424)
  %conv_out_copy = bitcast i8* %malloccall1 to [4408 x [2132 x i32]]*
  %malloccall2 = tail call i8* @malloc(i64 37591424)
  %max_out_copy = bitcast i8* %malloccall2 to [4408 x [2132 x i32]]*
  %malloccall3 = tail call i8* @malloc(i64 37591424)
  %min_out_copy = bitcast i8* %malloccall3 to [4408 x [2132 x i32]]*
  %malloccall4 = tail call i8* @malloc(i64 37591424)
  %avg_out_copy = bitcast i8* %malloccall4 to [4408 x [2132 x i32]]*
  %0 = bitcast [2132 x i32]* %input to [4408 x [2132 x i32]]*
  %1 = bitcast [3 x i32]* %kernel to [3 x [3 x i32]]*
  %2 = bitcast [2132 x i32]* %conv_out to [4408 x [2132 x i32]]*
  %3 = bitcast [2132 x i32]* %max_out to [4408 x [2132 x i32]]*
  %4 = bitcast [2132 x i32]* %min_out to [4408 x [2132 x i32]]*
  %5 = bitcast [2132 x i32]* %avg_out to [4408 x [2132 x i32]]*
  call fastcc void @copy_in([4408 x [2132 x i32]]* nonnull %0, [4408 x [2132 x i32]]* %input_copy, [3 x [3 x i32]]* nonnull %1, [3 x [3 x i32]]* nonnull align 512 %kernel_copy, [4408 x [2132 x i32]]* nonnull %2, [4408 x [2132 x i32]]* %conv_out_copy, [4408 x [2132 x i32]]* nonnull %3, [4408 x [2132 x i32]]* %max_out_copy, [4408 x [2132 x i32]]* nonnull %4, [4408 x [2132 x i32]]* %min_out_copy, [4408 x [2132 x i32]]* nonnull %5, [4408 x [2132 x i32]]* %avg_out_copy)
  call void @apatb_full_pipeline_hw([4408 x [2132 x i32]]* %input_copy, i32 %height, i32 %width, [3 x [3 x i32]]* %kernel_copy, [4408 x [2132 x i32]]* %conv_out_copy, [4408 x [2132 x i32]]* %max_out_copy, [4408 x [2132 x i32]]* %min_out_copy, [4408 x [2132 x i32]]* %avg_out_copy)
  call void @copy_back([4408 x [2132 x i32]]* %0, [4408 x [2132 x i32]]* %input_copy, [3 x [3 x i32]]* %1, [3 x [3 x i32]]* %kernel_copy, [4408 x [2132 x i32]]* %2, [4408 x [2132 x i32]]* %conv_out_copy, [4408 x [2132 x i32]]* %3, [4408 x [2132 x i32]]* %max_out_copy, [4408 x [2132 x i32]]* %4, [4408 x [2132 x i32]]* %min_out_copy, [4408 x [2132 x i32]]* %5, [4408 x [2132 x i32]]* %avg_out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [3 x [3 x i32]]* noalias readonly, [3 x [3 x i32]]* noalias align 512, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %1, [4408 x [2132 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a3a3i32([3 x [3 x i32]]* align 512 %3, [3 x [3 x i32]]* %2)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %5, [4408 x [2132 x i32]]* %4)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %7, [4408 x [2132 x i32]]* %6)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %9, [4408 x [2132 x i32]]* %8)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %11, [4408 x [2132 x i32]]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* noalias %dst, [4408 x [2132 x i32]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4408 x [2132 x i32]]* %dst, null
  %1 = icmp eq [4408 x [2132 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* nonnull %dst, [4408 x [2132 x i32]]* nonnull %src, i64 4408)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %dst, [4408 x [2132 x i32]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4408 x [2132 x i32]]* %src, null
  %1 = icmp eq [4408 x [2132 x i32]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4408 x [2132 x i32]], [4408 x [2132 x i32]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4408 x [2132 x i32]], [4408 x [2132 x i32]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a2132i32([2132 x i32]* %dst.addr, [2132 x i32]* %src.addr, i64 2132)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2132i32([2132 x i32]* %dst, [2132 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2132 x i32]* %src, null
  %1 = icmp eq [2132 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2132 x i32], [2132 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2132 x i32], [2132 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a3a3i32([3 x [3 x i32]]* noalias align 512 %dst, [3 x [3 x i32]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [3 x i32]]* %dst, null
  %1 = icmp eq [3 x [3 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3a3i32([3 x [3 x i32]]* nonnull %dst, [3 x [3 x i32]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3a3i32([3 x [3 x i32]]* %dst, [3 x [3 x i32]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [3 x i32]]* %src, null
  %1 = icmp eq [3 x [3 x i32]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3i32([3 x i32]* %dst.addr, [3 x i32]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i32([3 x i32]* %dst, [3 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x i32]* %src, null
  %1 = icmp eq [3 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i32], [3 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i32], [3 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [3 x [3 x i32]]* noalias, [3 x [3 x i32]]* noalias readonly align 512, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %0, [4408 x [2132 x i32]]* %1)
  call fastcc void @onebyonecpy_hls.p0a3a3i32([3 x [3 x i32]]* %2, [3 x [3 x i32]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %4, [4408 x [2132 x i32]]* %5)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %6, [4408 x [2132 x i32]]* %7)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %8, [4408 x [2132 x i32]]* %9)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %10, [4408 x [2132 x i32]]* %11)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_full_pipeline_hw([4408 x [2132 x i32]]*, i32, i32, [3 x [3 x i32]]*, [4408 x [2132 x i32]]*, [4408 x [2132 x i32]]*, [4408 x [2132 x i32]]*, [4408 x [2132 x i32]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [3 x [3 x i32]]* noalias, [3 x [3 x i32]]* noalias readonly align 512, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly, [4408 x [2132 x i32]]* noalias, [4408 x [2132 x i32]]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %4, [4408 x [2132 x i32]]* %5)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %6, [4408 x [2132 x i32]]* %7)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %8, [4408 x [2132 x i32]]* %9)
  call fastcc void @onebyonecpy_hls.p0a4408a2132i32([4408 x [2132 x i32]]* %10, [4408 x [2132 x i32]]* %11)
  ret void
}

define void @full_pipeline_hw_stub_wrapper([4408 x [2132 x i32]]*, i32, i32, [3 x [3 x i32]]*, [4408 x [2132 x i32]]*, [4408 x [2132 x i32]]*, [4408 x [2132 x i32]]*, [4408 x [2132 x i32]]*) #5 {
entry:
  call void @copy_out([4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %0, [3 x [3 x i32]]* null, [3 x [3 x i32]]* %3, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %4, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %5, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %6, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %7)
  %8 = bitcast [4408 x [2132 x i32]]* %0 to [2132 x i32]*
  %9 = bitcast [3 x [3 x i32]]* %3 to [3 x i32]*
  %10 = bitcast [4408 x [2132 x i32]]* %4 to [2132 x i32]*
  %11 = bitcast [4408 x [2132 x i32]]* %5 to [2132 x i32]*
  %12 = bitcast [4408 x [2132 x i32]]* %6 to [2132 x i32]*
  %13 = bitcast [4408 x [2132 x i32]]* %7 to [2132 x i32]*
  call void @full_pipeline_hw_stub([2132 x i32]* %8, i32 %1, i32 %2, [3 x i32]* %9, [2132 x i32]* %10, [2132 x i32]* %11, [2132 x i32]* %12, [2132 x i32]* %13)
  call void @copy_in([4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %0, [3 x [3 x i32]]* null, [3 x [3 x i32]]* %3, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %4, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %5, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %6, [4408 x [2132 x i32]]* null, [4408 x [2132 x i32]]* %7)
  ret void
}

declare void @full_pipeline_hw_stub([2132 x i32]* noalias nocapture nonnull readonly, i32, i32, [3 x i32]* noalias nocapture nonnull readonly, [2132 x i32]* noalias nocapture nonnull, [2132 x i32]* noalias nocapture nonnull, [2132 x i32]* noalias nocapture nonnull, [2132 x i32]* noalias nocapture nonnull)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
