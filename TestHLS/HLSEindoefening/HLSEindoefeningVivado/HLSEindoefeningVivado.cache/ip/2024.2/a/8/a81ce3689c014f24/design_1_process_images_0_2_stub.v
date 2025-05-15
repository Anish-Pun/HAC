// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri May 16 00:12:44 2025
// Host        : Bowen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_process_images_0_2_stub.v
// Design      : design_1_process_images_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_process_images_0_2,process_images,{}" *) (* CORE_GENERATION_INFO = "design_1_process_images_0_2,process_images,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=process_images,x_ipVersion=1.0,x_ipCoreRevision=2114084949,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=5,C_S_AXI_CONTROL_DATA_WIDTH=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "process_images,Vivado 2024.2" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, in_stream_TDATA, 
  in_stream_TDEST, in_stream_TID, in_stream_TKEEP, in_stream_TLAST, in_stream_TREADY, 
  in_stream_TSTRB, in_stream_TUSER, in_stream_TVALID, conv_out_TDATA, conv_out_TDEST, 
  conv_out_TID, conv_out_TKEEP, conv_out_TLAST, conv_out_TREADY, conv_out_TSTRB, 
  conv_out_TUSER, conv_out_TVALID, max_out_TDATA, max_out_TDEST, max_out_TID, max_out_TKEEP, 
  max_out_TLAST, max_out_TREADY, max_out_TSTRB, max_out_TUSER, max_out_TVALID, min_out_TDATA, 
  min_out_TDEST, min_out_TID, min_out_TKEEP, min_out_TLAST, min_out_TREADY, min_out_TSTRB, 
  min_out_TUSER, min_out_TVALID, avg_out_TDATA, avg_out_TDEST, avg_out_TID, avg_out_TKEEP, 
  avg_out_TLAST, avg_out_TREADY, avg_out_TSTRB, avg_out_TUSER, avg_out_TVALID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[4:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[4:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,in_stream_TDATA[7:0],in_stream_TDEST[0:0],in_stream_TID[0:0],in_stream_TKEEP[0:0],in_stream_TLAST[0:0],in_stream_TREADY,in_stream_TSTRB[0:0],in_stream_TUSER[0:0],in_stream_TVALID,conv_out_TDATA[7:0],conv_out_TDEST[0:0],conv_out_TID[0:0],conv_out_TKEEP[0:0],conv_out_TLAST[0:0],conv_out_TREADY,conv_out_TSTRB[0:0],conv_out_TUSER[0:0],conv_out_TVALID,max_out_TDATA[7:0],max_out_TDEST[0:0],max_out_TID[0:0],max_out_TKEEP[0:0],max_out_TLAST[0:0],max_out_TREADY,max_out_TSTRB[0:0],max_out_TUSER[0:0],max_out_TVALID,min_out_TDATA[7:0],min_out_TDEST[0:0],min_out_TID[0:0],min_out_TKEEP[0:0],min_out_TLAST[0:0],min_out_TREADY,min_out_TSTRB[0:0],min_out_TUSER[0:0],min_out_TVALID,avg_out_TDATA[7:0],avg_out_TDEST[0:0],avg_out_TID[0:0],avg_out_TKEEP[0:0],avg_out_TLAST[0:0],avg_out_TREADY,avg_out_TSTRB[0:0],avg_out_TUSER[0:0],avg_out_TVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [4:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:in_stream:conv_out:max_out:min_out:avg_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream, TUSER_WIDTH 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]in_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TDEST" *) input [0:0]in_stream_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TID" *) input [0:0]in_stream_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TKEEP" *) input [0:0]in_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TLAST" *) input [0:0]in_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TREADY" *) output in_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TSTRB" *) input [0:0]in_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TUSER" *) input [0:0]in_stream_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TVALID" *) input in_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME conv_out, TUSER_WIDTH 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]conv_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TDEST" *) output [0:0]conv_out_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TID" *) output [0:0]conv_out_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TKEEP" *) output [0:0]conv_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TLAST" *) output [0:0]conv_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TREADY" *) input conv_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TSTRB" *) output [0:0]conv_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TUSER" *) output [0:0]conv_out_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 conv_out TVALID" *) output conv_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME max_out, TUSER_WIDTH 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]max_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TDEST" *) output [0:0]max_out_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TID" *) output [0:0]max_out_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TKEEP" *) output [0:0]max_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TLAST" *) output [0:0]max_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TREADY" *) input max_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TSTRB" *) output [0:0]max_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TUSER" *) output [0:0]max_out_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 max_out TVALID" *) output max_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME min_out, TUSER_WIDTH 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]min_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TDEST" *) output [0:0]min_out_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TID" *) output [0:0]min_out_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TKEEP" *) output [0:0]min_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TLAST" *) output [0:0]min_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TREADY" *) input min_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TSTRB" *) output [0:0]min_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TUSER" *) output [0:0]min_out_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 min_out TVALID" *) output min_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME avg_out, TUSER_WIDTH 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]avg_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TDEST" *) output [0:0]avg_out_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TID" *) output [0:0]avg_out_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TKEEP" *) output [0:0]avg_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TLAST" *) output [0:0]avg_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TREADY" *) input avg_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TSTRB" *) output [0:0]avg_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TUSER" *) output [0:0]avg_out_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 avg_out TVALID" *) output avg_out_TVALID;
endmodule
