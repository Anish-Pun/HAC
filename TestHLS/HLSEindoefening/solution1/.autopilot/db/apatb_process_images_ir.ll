; ModuleID = 'C:/SchoolWerk/HAC/HLSEindoefening/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<8>, 1, 1, 1, '8', false>" }
%"struct.hls::axis<ap_uint<8>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_process_images_ir(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(7) %in_stream, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(7) %conv_out, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(7) %max_out, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(7) %min_out, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(7) %avg_out, i32 %img_height, i32 %img_width) local_unnamed_addr #0 {
entry:
  %in_stream_copy.data = alloca i8, align 512
  %in_stream_copy.keep = alloca i1, align 512
  %in_stream_copy.strb = alloca i1, align 512
  %in_stream_copy.user = alloca i1, align 512
  %in_stream_copy.last = alloca i1, align 512
  %in_stream_copy.id = alloca i1, align 512
  %in_stream_copy.dest = alloca i1, align 512
  %conv_out_copy.data = alloca i8, align 512
  %conv_out_copy.keep = alloca i1, align 512
  %conv_out_copy.strb = alloca i1, align 512
  %conv_out_copy.user = alloca i1, align 512
  %conv_out_copy.last = alloca i1, align 512
  %conv_out_copy.id = alloca i1, align 512
  %conv_out_copy.dest = alloca i1, align 512
  %max_out_copy.data = alloca i8, align 512
  %max_out_copy.keep = alloca i1, align 512
  %max_out_copy.strb = alloca i1, align 512
  %max_out_copy.user = alloca i1, align 512
  %max_out_copy.last = alloca i1, align 512
  %max_out_copy.id = alloca i1, align 512
  %max_out_copy.dest = alloca i1, align 512
  %min_out_copy.data = alloca i8, align 512
  %min_out_copy.keep = alloca i1, align 512
  %min_out_copy.strb = alloca i1, align 512
  %min_out_copy.user = alloca i1, align 512
  %min_out_copy.last = alloca i1, align 512
  %min_out_copy.id = alloca i1, align 512
  %min_out_copy.dest = alloca i1, align 512
  %avg_out_copy.data = alloca i8, align 512
  %avg_out_copy.keep = alloca i1, align 512
  %avg_out_copy.strb = alloca i1, align 512
  %avg_out_copy.user = alloca i1, align 512
  %avg_out_copy.last = alloca i1, align 512
  %avg_out_copy.id = alloca i1, align 512
  %avg_out_copy.dest = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* nonnull %in_stream, i8* nonnull align 512 %in_stream_copy.data, i1* nonnull align 512 %in_stream_copy.keep, i1* nonnull align 512 %in_stream_copy.strb, i1* nonnull align 512 %in_stream_copy.user, i1* nonnull align 512 %in_stream_copy.last, i1* nonnull align 512 %in_stream_copy.id, i1* nonnull align 512 %in_stream_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* nonnull %conv_out, i8* nonnull align 512 %conv_out_copy.data, i1* nonnull align 512 %conv_out_copy.keep, i1* nonnull align 512 %conv_out_copy.strb, i1* nonnull align 512 %conv_out_copy.user, i1* nonnull align 512 %conv_out_copy.last, i1* nonnull align 512 %conv_out_copy.id, i1* nonnull align 512 %conv_out_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* nonnull %max_out, i8* nonnull align 512 %max_out_copy.data, i1* nonnull align 512 %max_out_copy.keep, i1* nonnull align 512 %max_out_copy.strb, i1* nonnull align 512 %max_out_copy.user, i1* nonnull align 512 %max_out_copy.last, i1* nonnull align 512 %max_out_copy.id, i1* nonnull align 512 %max_out_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* nonnull %min_out, i8* nonnull align 512 %min_out_copy.data, i1* nonnull align 512 %min_out_copy.keep, i1* nonnull align 512 %min_out_copy.strb, i1* nonnull align 512 %min_out_copy.user, i1* nonnull align 512 %min_out_copy.last, i1* nonnull align 512 %min_out_copy.id, i1* nonnull align 512 %min_out_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* nonnull %avg_out, i8* nonnull align 512 %avg_out_copy.data, i1* nonnull align 512 %avg_out_copy.keep, i1* nonnull align 512 %avg_out_copy.strb, i1* nonnull align 512 %avg_out_copy.user, i1* nonnull align 512 %avg_out_copy.last, i1* nonnull align 512 %avg_out_copy.id, i1* nonnull align 512 %avg_out_copy.dest)
  call void @apatb_process_images_hw(i8* %in_stream_copy.data, i1* %in_stream_copy.keep, i1* %in_stream_copy.strb, i1* %in_stream_copy.user, i1* %in_stream_copy.last, i1* %in_stream_copy.id, i1* %in_stream_copy.dest, i8* %conv_out_copy.data, i1* %conv_out_copy.keep, i1* %conv_out_copy.strb, i1* %conv_out_copy.user, i1* %conv_out_copy.last, i1* %conv_out_copy.id, i1* %conv_out_copy.dest, i8* %max_out_copy.data, i1* %max_out_copy.keep, i1* %max_out_copy.strb, i1* %max_out_copy.user, i1* %max_out_copy.last, i1* %max_out_copy.id, i1* %max_out_copy.dest, i8* %min_out_copy.data, i1* %min_out_copy.keep, i1* %min_out_copy.strb, i1* %min_out_copy.user, i1* %min_out_copy.last, i1* %min_out_copy.id, i1* %min_out_copy.dest, i8* %avg_out_copy.data, i1* %avg_out_copy.keep, i1* %avg_out_copy.strb, i1* %avg_out_copy.user, i1* %avg_out_copy.last, i1* %avg_out_copy.id, i1* %avg_out_copy.dest, i32 %img_height, i32 %img_width)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %in_stream, i8* %in_stream_copy.data, i1* %in_stream_copy.keep, i1* %in_stream_copy.strb, i1* %in_stream_copy.user, i1* %in_stream_copy.last, i1* %in_stream_copy.id, i1* %in_stream_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %conv_out, i8* %conv_out_copy.data, i1* %conv_out_copy.keep, i1* %conv_out_copy.strb, i1* %conv_out_copy.user, i1* %conv_out_copy.last, i1* %conv_out_copy.id, i1* %conv_out_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %max_out, i8* %max_out_copy.data, i1* %max_out_copy.keep, i1* %max_out_copy.strb, i1* %max_out_copy.user, i1* %max_out_copy.last, i1* %max_out_copy.id, i1* %max_out_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %min_out, i8* %min_out_copy.data, i1* %min_out_copy.keep, i1* %min_out_copy.strb, i1* %min_out_copy.user, i1* %min_out_copy.last, i1* %min_out_copy.id, i1* %min_out_copy.dest, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %avg_out, i8* %avg_out_copy.data, i1* %avg_out_copy.keep, i1* %avg_out_copy.strb, i1* %avg_out_copy.user, i1* %avg_out_copy.last, i1* %avg_out_copy.id, i1* %avg_out_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="1.0" %_V_data_V, i1* noalias align 512 "unpacked"="1.1" %_V_keep_V, i1* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="3.0" %_V_data_V1, i1* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i1* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="11.0" %_V_data_V18, i1* noalias align 512 "unpacked"="11.1" %_V_keep_V29, i1* noalias align 512 "unpacked"="11.2" %_V_strb_V310, i1* noalias align 512 "unpacked"="11.3" %_V_user_V411, i1* noalias align 512 "unpacked"="11.4" %_V_last_V512, i1* noalias align 512 "unpacked"="11.5" %_V_id_V613, i1* noalias align 512 "unpacked"="11.6" %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="19.0" %_V_data_V2, i1* noalias align 512 "unpacked"="19.1" %_V_keep_V3, i1* noalias align 512 "unpacked"="19.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="19.3" %_V_user_V5, i1* noalias align 512 "unpacked"="19.4" %_V_last_V6, i1* noalias align 512 "unpacked"="19.5" %_V_id_V7, i1* noalias align 512 "unpacked"="19.6" %_V_dest_V8, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="27.0" %_V_data_V3, i1* noalias align 512 "unpacked"="27.1" %_V_keep_V4, i1* noalias align 512 "unpacked"="27.2" %_V_strb_V5, i1* noalias align 512 "unpacked"="27.3" %_V_user_V6, i1* noalias align 512 "unpacked"="27.4" %_V_last_V7, i1* noalias align 512 "unpacked"="27.5" %_V_id_V8, i1* noalias align 512 "unpacked"="27.6" %_V_dest_V9) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"(i8* align 512 %_V_data_V, i1* align 512 %_V_keep_V, i1* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"(i8* align 512 %_V_data_V1, i1* align 512 %_V_keep_V2, i1* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"(i8* align 512 %_V_data_V18, i1* align 512 %_V_keep_V29, i1* align 512 %_V_strb_V310, i1* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i1* align 512 %_V_id_V613, i1* align 512 %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"(i8* align 512 %_V_data_V2, i1* align 512 %_V_keep_V3, i1* align 512 %_V_strb_V4, i1* align 512 %_V_user_V5, i1* align 512 %_V_last_V6, i1* align 512 %_V_id_V7, i1* align 512 %_V_dest_V8, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"(i8* align 512 %_V_data_V3, i1* align 512 %_V_keep_V4, i1* align 512 %_V_strb_V5, i1* align 512 %_V_user_V6, i1* align 512 %_V_last_V7, i1* align 512 %_V_id_V8, i1* align 512 %_V_dest_V9, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="1.0" %_V_data_V, i1* noalias align 512 "unpacked"="1.1" %_V_keep_V, i1* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="3.0" %_V_data_V1, i1* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i1* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="11.0" %_V_data_V18, i1* noalias align 512 "unpacked"="11.1" %_V_keep_V29, i1* noalias align 512 "unpacked"="11.2" %_V_strb_V310, i1* noalias align 512 "unpacked"="11.3" %_V_user_V411, i1* noalias align 512 "unpacked"="11.4" %_V_last_V512, i1* noalias align 512 "unpacked"="11.5" %_V_id_V613, i1* noalias align 512 "unpacked"="11.6" %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="19.0" %_V_data_V2, i1* noalias align 512 "unpacked"="19.1" %_V_keep_V3, i1* noalias align 512 "unpacked"="19.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="19.3" %_V_user_V5, i1* noalias align 512 "unpacked"="19.4" %_V_last_V6, i1* noalias align 512 "unpacked"="19.5" %_V_id_V7, i1* noalias align 512 "unpacked"="19.6" %_V_dest_V8, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="27.0" %_V_data_V3, i1* noalias align 512 "unpacked"="27.1" %_V_keep_V4, i1* noalias align 512 "unpacked"="27.2" %_V_strb_V5, i1* noalias align 512 "unpacked"="27.3" %_V_user_V6, i1* noalias align 512 "unpacked"="27.4" %_V_last_V7, i1* noalias align 512 "unpacked"="27.5" %_V_id_V8, i1* noalias align 512 "unpacked"="27.6" %_V_dest_V9) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %0, i8* align 512 %_V_data_V, i1* align 512 %_V_keep_V, i1* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %1, i8* align 512 %_V_data_V1, i1* align 512 %_V_keep_V2, i1* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %2, i8* align 512 %_V_data_V18, i1* align 512 %_V_keep_V29, i1* align 512 %_V_strb_V310, i1* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i1* align 512 %_V_id_V613, i1* align 512 %_V_dest_V714)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %3, i8* align 512 %_V_data_V2, i1* align 512 %_V_keep_V3, i1* align 512 %_V_strb_V4, i1* align 512 %_V_user_V5, i1* align 512 %_V_last_V6, i1* align 512 %_V_id_V7, i1* align 512 %_V_dest_V8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %4, i8* align 512 %_V_data_V3, i1* align 512 %_V_keep_V4, i1* align 512 %_V_strb_V5, i1* align 512 %_V_user_V6, i1* align 512 %_V_last_V7, i1* align 512 %_V_id_V8, i1* align 512 %_V_dest_V9)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias %dst, i8* noalias align 512 "unpacked"="1.0" %src_V_data_V, i1* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i1* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i1* noalias align 512 "unpacked"="1.5" %src_V_id_V, i1* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.7"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* nonnull %dst, i8* align 512 %src_V_data_V, i1* align 512 %src_V_keep_V, i1* align 512 %src_V_strb_V, i1* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i1* align 512 %src_V_id_V, i1* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.7"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nocapture, i8* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i1* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i1* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca i8
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = call i1 @fpga_fifo_not_empty_1(i8* %_V_data_V)
  br i1 %9, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %1, i8* %_V_data_V)
  %10 = load volatile i8, i8* %1
  %11 = bitcast i1* %7 to i8*
  %12 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %11, i8* %12)
  %13 = bitcast i1* %7 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i1
  %16 = bitcast i1* %6 to i8*
  %17 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i1* %6 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i1
  %21 = bitcast i1* %5 to i8*
  %22 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %5 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %26 = bitcast i1* %4 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %26, i8* %27)
  %28 = bitcast i1* %4 to i8*
  %29 = load i8, i8* %28
  %30 = trunc i8 %29 to i1
  %31 = bitcast i1* %3 to i8*
  %32 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %31, i8* %32)
  %33 = bitcast i1* %3 to i8*
  %34 = load i8, i8* %33
  %35 = trunc i8 %34 to i1
  %36 = bitcast i1* %2 to i8*
  %37 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %36, i8* %37)
  %38 = bitcast i1* %2 to i8*
  %39 = load i8, i8* %38
  %40 = trunc i8 %39 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" undef, i8 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i1 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i1 %20, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %30, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i1 %35, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i1 %40, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %8
  %41 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %8 to i8*
  %42 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_7(i8* %41, i8* %42)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"(i8* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i1* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i1* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i1* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i1* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.15"(i8* align 512 %dst_V_data_V, i1* align 512 %dst_V_keep_V, i1* align 512 %dst_V_strb_V, i1* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i1* align 512 %dst_V_id_V, i1* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.15"(i8* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i1* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i1* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"
  %2 = alloca i8
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_7(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_7(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i8 %.fca.0.0.0.0.0.extract, i8* %2
  call void @fpga_fifo_push_1(i8* %2, i8* %_V_data_V)
  store i1 %.fca.0.1.0.0.0.extract, i1* %8
  %14 = bitcast i1* %8 to i8*
  %15 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  store i1 %.fca.0.2.0.0.0.extract, i1* %7
  %16 = bitcast i1* %7 to i8*
  %17 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i1 %.fca.0.3.0.0.0.extract, i1* %6
  %18 = bitcast i1* %6 to i8*
  %19 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %20 = bitcast i1* %5 to i8*
  %21 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.5.0.0.0.extract, i1* %4
  %22 = bitcast i1* %4 to i8*
  %23 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i1 %.fca.0.6.0.0.0.extract, i1* %3
  %24 = bitcast i1* %3 to i8*
  %25 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_process_images_hw(i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i32, i32)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="1.0" %_V_data_V, i1* noalias align 512 "unpacked"="1.1" %_V_keep_V, i1* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="3.0" %_V_data_V1, i1* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i1* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="11.0" %_V_data_V18, i1* noalias align 512 "unpacked"="11.1" %_V_keep_V29, i1* noalias align 512 "unpacked"="11.2" %_V_strb_V310, i1* noalias align 512 "unpacked"="11.3" %_V_user_V411, i1* noalias align 512 "unpacked"="11.4" %_V_last_V512, i1* noalias align 512 "unpacked"="11.5" %_V_id_V613, i1* noalias align 512 "unpacked"="11.6" %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="19.0" %_V_data_V2, i1* noalias align 512 "unpacked"="19.1" %_V_keep_V3, i1* noalias align 512 "unpacked"="19.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="19.3" %_V_user_V5, i1* noalias align 512 "unpacked"="19.4" %_V_last_V6, i1* noalias align 512 "unpacked"="19.5" %_V_id_V7, i1* noalias align 512 "unpacked"="19.6" %_V_dest_V8, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias, i8* noalias align 512 "unpacked"="27.0" %_V_data_V3, i1* noalias align 512 "unpacked"="27.1" %_V_keep_V4, i1* noalias align 512 "unpacked"="27.2" %_V_strb_V5, i1* noalias align 512 "unpacked"="27.3" %_V_user_V6, i1* noalias align 512 "unpacked"="27.4" %_V_last_V7, i1* noalias align 512 "unpacked"="27.5" %_V_id_V8, i1* noalias align 512 "unpacked"="27.6" %_V_dest_V9) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %0, i8* align 512 %_V_data_V, i1* align 512 %_V_keep_V, i1* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %1, i8* align 512 %_V_data_V1, i1* align 512 %_V_keep_V2, i1* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %2, i8* align 512 %_V_data_V18, i1* align 512 %_V_keep_V29, i1* align 512 %_V_strb_V310, i1* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i1* align 512 %_V_id_V613, i1* align 512 %_V_dest_V714)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %3, i8* align 512 %_V_data_V2, i1* align 512 %_V_keep_V3, i1* align 512 %_V_strb_V4, i1* align 512 %_V_user_V5, i1* align 512 %_V_last_V6, i1* align 512 %_V_id_V7, i1* align 512 %_V_dest_V8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %4, i8* align 512 %_V_data_V3, i1* align 512 %_V_keep_V4, i1* align 512 %_V_strb_V5, i1* align 512 %_V_user_V6, i1* align 512 %_V_last_V7, i1* align 512 %_V_id_V8, i1* align 512 %_V_dest_V9)
  ret void
}

declare void @process_images_hw_stub(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, i32, i32)

define void @process_images_hw_stub_wrapper(i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i32, i32) #5 {
entry:
  %37 = call i8* @malloc(i64 7)
  %38 = bitcast i8* %37 to %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"*
  %39 = call i8* @malloc(i64 7)
  %40 = bitcast i8* %39 to %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"*
  %41 = call i8* @malloc(i64 7)
  %42 = bitcast i8* %41 to %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"*
  %43 = call i8* @malloc(i64 7)
  %44 = bitcast i8* %43 to %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"*
  %45 = call i8* @malloc(i64 7)
  %46 = bitcast i8* %45 to %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %38, i8* %0, i1* %1, i1* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %40, i8* %7, i1* %8, i1* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %42, i8* %14, i1* %15, i1* %16, i1* %17, i1* %18, i1* %19, i1* %20, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %44, i8* %21, i1* %22, i1* %23, i1* %24, i1* %25, i1* %26, i1* %27, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %46, i8* %28, i1* %29, i1* %30, i1* %31, i1* %32, i1* %33, i1* %34)
  call void @process_images_hw_stub(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %38, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %40, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %42, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %44, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %46, i32 %35, i32 %36)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %38, i8* %0, i1* %1, i1* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %40, i8* %7, i1* %8, i1* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %42, i8* %14, i1* %15, i1* %16, i1* %17, i1* %18, i1* %19, i1* %20, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %44, i8* %21, i1* %22, i1* %23, i1* %24, i1* %25, i1* %26, i1* %27, %"class.hls::stream<hls::axis<ap_uint<8>, 1, 1, 1, '8', false>, 0>"* %46, i8* %28, i1* %29, i1* %30, i1* %31, i1* %32, i1* %33, i1* %34)
  call void @free(i8* %37)
  call void @free(i8* %39)
  call void @free(i8* %41)
  call void @free(i8* %43)
  call void @free(i8* %45)
  ret void
}

declare i1 @fpga_fifo_not_empty_7(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_7(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_7(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
