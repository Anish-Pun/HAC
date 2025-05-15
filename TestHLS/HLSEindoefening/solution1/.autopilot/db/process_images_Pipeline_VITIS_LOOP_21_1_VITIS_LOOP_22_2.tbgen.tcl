set moduleName process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 8
set C_modelName {process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict image_r { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_1 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_2 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_3 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_4 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_5 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ img_width int 32 regular  }
	{ mul_ln3 int 62 regular  }
	{ image_r int 8 regular {array 11008 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_1 int 8 regular {array 11008 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_2 int 8 regular {array 11008 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_3 int 8 regular {array 11008 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_4 int 8 regular {array 11008 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_5 int 8 regular {array 11008 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_stream_V_data_V int 8 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 1 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 1 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln3", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "image_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 8 } 
	{ img_width sc_in sc_lv 32 signal 0 } 
	{ mul_ln3 sc_in sc_lv 62 signal 1 } 
	{ image_r_address0 sc_out sc_lv 14 signal 2 } 
	{ image_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ image_r_we0 sc_out sc_logic 1 signal 2 } 
	{ image_r_d0 sc_out sc_lv 8 signal 2 } 
	{ image_1_address0 sc_out sc_lv 14 signal 3 } 
	{ image_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ image_1_we0 sc_out sc_logic 1 signal 3 } 
	{ image_1_d0 sc_out sc_lv 8 signal 3 } 
	{ image_2_address0 sc_out sc_lv 14 signal 4 } 
	{ image_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ image_2_we0 sc_out sc_logic 1 signal 4 } 
	{ image_2_d0 sc_out sc_lv 8 signal 4 } 
	{ image_3_address0 sc_out sc_lv 14 signal 5 } 
	{ image_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ image_3_we0 sc_out sc_logic 1 signal 5 } 
	{ image_3_d0 sc_out sc_lv 8 signal 5 } 
	{ image_4_address0 sc_out sc_lv 14 signal 6 } 
	{ image_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ image_4_we0 sc_out sc_logic 1 signal 6 } 
	{ image_4_d0 sc_out sc_lv 8 signal 6 } 
	{ image_5_address0 sc_out sc_lv 14 signal 7 } 
	{ image_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ image_5_we0 sc_out sc_logic 1 signal 7 } 
	{ image_5_d0 sc_out sc_lv 8 signal 7 } 
	{ in_stream_TDATA sc_in sc_lv 8 signal 8 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 14 } 
	{ in_stream_TKEEP sc_in sc_lv 1 signal 9 } 
	{ in_stream_TSTRB sc_in sc_lv 1 signal 10 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 11 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 12 } 
	{ in_stream_TID sc_in sc_lv 1 signal 13 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 14 } 
	{ grp_fu_873_p_din0 sc_out sc_lv 31 signal -1 } 
	{ grp_fu_873_p_din1 sc_out sc_lv 33 signal -1 } 
	{ grp_fu_873_p_dout0 sc_in sc_lv 63 signal -1 } 
	{ grp_fu_873_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "mul_ln3", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln3", "role": "default" }} , 
 	{ "name": "image_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_r", "role": "address0" }} , 
 	{ "name": "image_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_r", "role": "ce0" }} , 
 	{ "name": "image_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_r", "role": "we0" }} , 
 	{ "name": "image_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_r", "role": "d0" }} , 
 	{ "name": "image_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_1", "role": "address0" }} , 
 	{ "name": "image_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_1", "role": "ce0" }} , 
 	{ "name": "image_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_1", "role": "we0" }} , 
 	{ "name": "image_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_1", "role": "d0" }} , 
 	{ "name": "image_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_2", "role": "address0" }} , 
 	{ "name": "image_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_2", "role": "ce0" }} , 
 	{ "name": "image_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_2", "role": "we0" }} , 
 	{ "name": "image_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_2", "role": "d0" }} , 
 	{ "name": "image_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_3", "role": "address0" }} , 
 	{ "name": "image_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_3", "role": "ce0" }} , 
 	{ "name": "image_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_3", "role": "we0" }} , 
 	{ "name": "image_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_3", "role": "d0" }} , 
 	{ "name": "image_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_4", "role": "address0" }} , 
 	{ "name": "image_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_4", "role": "ce0" }} , 
 	{ "name": "image_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_4", "role": "we0" }} , 
 	{ "name": "image_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_4", "role": "d0" }} , 
 	{ "name": "image_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_5", "role": "address0" }} , 
 	{ "name": "image_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_5", "role": "ce0" }} , 
 	{ "name": "image_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_5", "role": "we0" }} , 
 	{ "name": "image_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_5", "role": "d0" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "grp_fu_873_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "grp_fu_873_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "grp_fu_873_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_873_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln3", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1_VITIS_LOOP_22_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter39", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter39", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_31ns_3ns_2_35_1_U2", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2 {
		img_width {Type I LastRead 0 FirstWrite -1}
		mul_ln3 {Type I LastRead 0 FirstWrite -1}
		image_r {Type O LastRead -1 FirstWrite 39}
		image_1 {Type O LastRead -1 FirstWrite 39}
		image_2 {Type O LastRead -1 FirstWrite 39}
		image_3 {Type O LastRead -1 FirstWrite 39}
		image_4 {Type O LastRead -1 FirstWrite 39}
		image_5 {Type O LastRead -1 FirstWrite 39}
		in_stream_V_data_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 39 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width { ap_none {  { img_width in_data 0 32 } } }
	mul_ln3 { ap_none {  { mul_ln3 in_data 0 62 } } }
	image_r { ap_memory {  { image_r_address0 mem_address 1 14 }  { image_r_ce0 mem_ce 1 1 }  { image_r_we0 mem_we 1 1 }  { image_r_d0 mem_din 1 8 } } }
	image_1 { ap_memory {  { image_1_address0 mem_address 1 14 }  { image_1_ce0 mem_ce 1 1 }  { image_1_we0 mem_we 1 1 }  { image_1_d0 mem_din 1 8 } } }
	image_2 { ap_memory {  { image_2_address0 mem_address 1 14 }  { image_2_ce0 mem_ce 1 1 }  { image_2_we0 mem_we 1 1 }  { image_2_d0 mem_din 1 8 } } }
	image_3 { ap_memory {  { image_3_address0 mem_address 1 14 }  { image_3_ce0 mem_ce 1 1 }  { image_3_we0 mem_we 1 1 }  { image_3_d0 mem_din 1 8 } } }
	image_4 { ap_memory {  { image_4_address0 mem_address 1 14 }  { image_4_ce0 mem_ce 1 1 }  { image_4_we0 mem_we 1 1 }  { image_4_d0 mem_din 1 8 } } }
	image_5 { ap_memory {  { image_5_address0 mem_address 1 14 }  { image_5_ce0 mem_ce 1 1 }  { image_5_we0 mem_we 1 1 }  { image_5_d0 mem_din 1 8 } } }
	in_stream_V_data_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TDATA in_data 0 8 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 1 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 1 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
}
