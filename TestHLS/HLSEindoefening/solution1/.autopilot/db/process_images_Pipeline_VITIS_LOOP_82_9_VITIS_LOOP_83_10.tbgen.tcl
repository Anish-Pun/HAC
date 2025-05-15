set moduleName process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10
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
set C_modelName {process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict conv_result { MEM_WIDTH 8 MEM_SIZE 65536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ img_width int 32 regular  }
	{ mul_ln3 int 62 regular  }
	{ sub int 32 regular  }
	{ conv_result int 8 regular {array 65536 { 1 3 } 1 1 }  }
	{ sub17 int 32 regular  }
	{ conv_out_V_data_V int 8 regular {axi_s 1 volatile  { conv_out Data } }  }
	{ conv_out_V_keep_V int 1 regular {axi_s 1 volatile  { conv_out Keep } }  }
	{ conv_out_V_strb_V int 1 regular {axi_s 1 volatile  { conv_out Strb } }  }
	{ conv_out_V_user_V int 1 regular {axi_s 1 volatile  { conv_out User } }  }
	{ conv_out_V_last_V int 1 regular {axi_s 1 volatile  { conv_out Last } }  }
	{ conv_out_V_id_V int 1 regular {axi_s 1 volatile  { conv_out ID } }  }
	{ conv_out_V_dest_V int 1 regular {axi_s 1 volatile  { conv_out Dest } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln3", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sub", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sub17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv_out_TREADY sc_in sc_logic 1 outacc 5 } 
	{ img_width sc_in sc_lv 32 signal 0 } 
	{ mul_ln3 sc_in sc_lv 62 signal 1 } 
	{ sub sc_in sc_lv 32 signal 2 } 
	{ conv_result_address0 sc_out sc_lv 16 signal 3 } 
	{ conv_result_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv_result_q0 sc_in sc_lv 8 signal 3 } 
	{ sub17 sc_in sc_lv 32 signal 4 } 
	{ conv_out_TDATA sc_out sc_lv 8 signal 5 } 
	{ conv_out_TVALID sc_out sc_logic 1 outvld 11 } 
	{ conv_out_TKEEP sc_out sc_lv 1 signal 6 } 
	{ conv_out_TSTRB sc_out sc_lv 1 signal 7 } 
	{ conv_out_TUSER sc_out sc_lv 1 signal 8 } 
	{ conv_out_TLAST sc_out sc_lv 1 signal 9 } 
	{ conv_out_TID sc_out sc_lv 1 signal 10 } 
	{ conv_out_TDEST sc_out sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "conv_out_V_data_V", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "mul_ln3", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln3", "role": "default" }} , 
 	{ "name": "sub", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub", "role": "default" }} , 
 	{ "name": "conv_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_result", "role": "address0" }} , 
 	{ "name": "conv_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_result", "role": "ce0" }} , 
 	{ "name": "conv_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_result", "role": "q0" }} , 
 	{ "name": "sub17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub17", "role": "default" }} , 
 	{ "name": "conv_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_out_V_data_V", "role": "default" }} , 
 	{ "name": "conv_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv_out_V_dest_V", "role": "default" }} , 
 	{ "name": "conv_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_keep_V", "role": "default" }} , 
 	{ "name": "conv_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_strb_V", "role": "default" }} , 
 	{ "name": "conv_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_user_V", "role": "default" }} , 
 	{ "name": "conv_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_last_V", "role": "default" }} , 
 	{ "name": "conv_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_id_V", "role": "default" }} , 
 	{ "name": "conv_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10",
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
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_result", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub17", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"BlockSignal" : [
					{"Name" : "conv_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out"},
			{"Name" : "conv_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out"},
			{"Name" : "conv_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out"},
			{"Name" : "conv_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out"},
			{"Name" : "conv_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out"},
			{"Name" : "conv_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_82_9_VITIS_LOOP_83_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10 {
		img_width {Type I LastRead 0 FirstWrite -1}
		mul_ln3 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		conv_result {Type I LastRead 4 FirstWrite -1}
		sub17 {Type I LastRead 0 FirstWrite -1}
		conv_out_V_data_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_keep_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_strb_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_user_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_id_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_dest_V {Type O LastRead -1 FirstWrite 5}}}

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
	sub { ap_none {  { sub in_data 0 32 } } }
	conv_result { ap_memory {  { conv_result_address0 mem_address 1 16 }  { conv_result_ce0 mem_ce 1 1 }  { conv_result_q0 mem_dout 0 8 } } }
	sub17 { ap_none {  { sub17 in_data 0 32 } } }
	conv_out_V_data_V { axis {  { conv_out_TREADY out_acc 0 1 }  { conv_out_TDATA out_data 1 8 } } }
	conv_out_V_keep_V { axis {  { conv_out_TKEEP out_data 1 1 } } }
	conv_out_V_strb_V { axis {  { conv_out_TSTRB out_data 1 1 } } }
	conv_out_V_user_V { axis {  { conv_out_TUSER out_data 1 1 } } }
	conv_out_V_last_V { axis {  { conv_out_TLAST out_data 1 1 } } }
	conv_out_V_id_V { axis {  { conv_out_TID out_data 1 1 } } }
	conv_out_V_dest_V { axis {  { conv_out_TVALID out_vld 1 1 }  { conv_out_TDEST out_data 1 1 } } }
}
