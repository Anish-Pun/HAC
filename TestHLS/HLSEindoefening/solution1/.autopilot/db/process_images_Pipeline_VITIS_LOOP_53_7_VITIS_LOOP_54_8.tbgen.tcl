set moduleName process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8
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
set C_modelName {process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict image_r { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict image_1 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict image_2 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict image_3 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict image_4 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict image_5 { MEM_WIDTH 8 MEM_SIZE 11008 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict max_result { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict min_result { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict avg_result { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ sext_ln37 int 32 regular  }
	{ mul_ln37 int 61 regular  }
	{ image_r int 8 regular {array 11008 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ image_1 int 8 regular {array 11008 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ image_2 int 8 regular {array 11008 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ image_3 int 8 regular {array 11008 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ image_4 int 8 regular {array 11008 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ image_5 int 8 regular {array 11008 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ max_result int 8 regular {array 16384 { 0 3 } 0 1 }  }
	{ min_result int 8 regular {array 16384 { 0 3 } 0 1 }  }
	{ avg_result int 8 regular {array 16384 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln37", "interface" : "wire", "bitwidth" : 61, "direction" : "READONLY"} , 
 	{ "Name" : "image_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "image_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "image_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "image_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "image_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "image_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "max_result", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_result", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_result", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln37 sc_in sc_lv 32 signal 0 } 
	{ mul_ln37 sc_in sc_lv 61 signal 1 } 
	{ image_r_address0 sc_out sc_lv 14 signal 2 } 
	{ image_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ image_r_q0 sc_in sc_lv 8 signal 2 } 
	{ image_r_address1 sc_out sc_lv 14 signal 2 } 
	{ image_r_ce1 sc_out sc_logic 1 signal 2 } 
	{ image_r_q1 sc_in sc_lv 8 signal 2 } 
	{ image_1_address0 sc_out sc_lv 14 signal 3 } 
	{ image_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ image_1_q0 sc_in sc_lv 8 signal 3 } 
	{ image_1_address1 sc_out sc_lv 14 signal 3 } 
	{ image_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ image_1_q1 sc_in sc_lv 8 signal 3 } 
	{ image_2_address0 sc_out sc_lv 14 signal 4 } 
	{ image_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ image_2_q0 sc_in sc_lv 8 signal 4 } 
	{ image_2_address1 sc_out sc_lv 14 signal 4 } 
	{ image_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ image_2_q1 sc_in sc_lv 8 signal 4 } 
	{ image_3_address0 sc_out sc_lv 14 signal 5 } 
	{ image_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ image_3_q0 sc_in sc_lv 8 signal 5 } 
	{ image_3_address1 sc_out sc_lv 14 signal 5 } 
	{ image_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ image_3_q1 sc_in sc_lv 8 signal 5 } 
	{ image_4_address0 sc_out sc_lv 14 signal 6 } 
	{ image_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ image_4_q0 sc_in sc_lv 8 signal 6 } 
	{ image_4_address1 sc_out sc_lv 14 signal 6 } 
	{ image_4_ce1 sc_out sc_logic 1 signal 6 } 
	{ image_4_q1 sc_in sc_lv 8 signal 6 } 
	{ image_5_address0 sc_out sc_lv 14 signal 7 } 
	{ image_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ image_5_q0 sc_in sc_lv 8 signal 7 } 
	{ image_5_address1 sc_out sc_lv 14 signal 7 } 
	{ image_5_ce1 sc_out sc_logic 1 signal 7 } 
	{ image_5_q1 sc_in sc_lv 8 signal 7 } 
	{ max_result_address0 sc_out sc_lv 14 signal 8 } 
	{ max_result_ce0 sc_out sc_logic 1 signal 8 } 
	{ max_result_we0 sc_out sc_logic 1 signal 8 } 
	{ max_result_d0 sc_out sc_lv 8 signal 8 } 
	{ min_result_address0 sc_out sc_lv 14 signal 9 } 
	{ min_result_ce0 sc_out sc_logic 1 signal 9 } 
	{ min_result_we0 sc_out sc_logic 1 signal 9 } 
	{ min_result_d0 sc_out sc_lv 8 signal 9 } 
	{ avg_result_address0 sc_out sc_lv 14 signal 10 } 
	{ avg_result_ce0 sc_out sc_logic 1 signal 10 } 
	{ avg_result_we0 sc_out sc_logic 1 signal 10 } 
	{ avg_result_d0 sc_out sc_lv 8 signal 10 } 
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
 	{ "name": "sext_ln37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln37", "role": "default" }} , 
 	{ "name": "mul_ln37", "direction": "in", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "mul_ln37", "role": "default" }} , 
 	{ "name": "image_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_r", "role": "address0" }} , 
 	{ "name": "image_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_r", "role": "ce0" }} , 
 	{ "name": "image_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_r", "role": "q0" }} , 
 	{ "name": "image_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_r", "role": "address1" }} , 
 	{ "name": "image_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_r", "role": "ce1" }} , 
 	{ "name": "image_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_r", "role": "q1" }} , 
 	{ "name": "image_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_1", "role": "address0" }} , 
 	{ "name": "image_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_1", "role": "ce0" }} , 
 	{ "name": "image_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_1", "role": "q0" }} , 
 	{ "name": "image_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_1", "role": "address1" }} , 
 	{ "name": "image_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_1", "role": "ce1" }} , 
 	{ "name": "image_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_1", "role": "q1" }} , 
 	{ "name": "image_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_2", "role": "address0" }} , 
 	{ "name": "image_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_2", "role": "ce0" }} , 
 	{ "name": "image_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_2", "role": "q0" }} , 
 	{ "name": "image_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_2", "role": "address1" }} , 
 	{ "name": "image_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_2", "role": "ce1" }} , 
 	{ "name": "image_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_2", "role": "q1" }} , 
 	{ "name": "image_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_3", "role": "address0" }} , 
 	{ "name": "image_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_3", "role": "ce0" }} , 
 	{ "name": "image_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_3", "role": "q0" }} , 
 	{ "name": "image_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_3", "role": "address1" }} , 
 	{ "name": "image_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_3", "role": "ce1" }} , 
 	{ "name": "image_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_3", "role": "q1" }} , 
 	{ "name": "image_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_4", "role": "address0" }} , 
 	{ "name": "image_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_4", "role": "ce0" }} , 
 	{ "name": "image_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_4", "role": "q0" }} , 
 	{ "name": "image_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_4", "role": "address1" }} , 
 	{ "name": "image_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_4", "role": "ce1" }} , 
 	{ "name": "image_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_4", "role": "q1" }} , 
 	{ "name": "image_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_5", "role": "address0" }} , 
 	{ "name": "image_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_5", "role": "ce0" }} , 
 	{ "name": "image_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_5", "role": "q0" }} , 
 	{ "name": "image_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "image_5", "role": "address1" }} , 
 	{ "name": "image_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_5", "role": "ce1" }} , 
 	{ "name": "image_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_5", "role": "q1" }} , 
 	{ "name": "max_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "max_result", "role": "address0" }} , 
 	{ "name": "max_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_result", "role": "ce0" }} , 
 	{ "name": "max_result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_result", "role": "we0" }} , 
 	{ "name": "max_result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "max_result", "role": "d0" }} , 
 	{ "name": "min_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "min_result", "role": "address0" }} , 
 	{ "name": "min_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_result", "role": "ce0" }} , 
 	{ "name": "min_result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_result", "role": "we0" }} , 
 	{ "name": "min_result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "min_result", "role": "d0" }} , 
 	{ "name": "avg_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "avg_result", "role": "address0" }} , 
 	{ "name": "avg_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_result", "role": "ce0" }} , 
 	{ "name": "avg_result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_result", "role": "we0" }} , 
 	{ "name": "avg_result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "avg_result", "role": "d0" }} , 
 	{ "name": "grp_fu_873_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "grp_fu_873_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "grp_fu_873_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "grp_fu_873_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_873_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8",
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
			{"Name" : "sext_ln37", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln37", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max_result", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "min_result", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "avg_result", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_7_VITIS_LOOP_54_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter42", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter42", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_34ns_65_3_1_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_3ns_2_36_1_U43", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U44", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U45", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U46", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U47", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8 {
		sext_ln37 {Type I LastRead 0 FirstWrite -1}
		mul_ln37 {Type I LastRead 0 FirstWrite -1}
		image_r {Type I LastRead 8 FirstWrite -1}
		image_1 {Type I LastRead 8 FirstWrite -1}
		image_2 {Type I LastRead 8 FirstWrite -1}
		image_3 {Type I LastRead 8 FirstWrite -1}
		image_4 {Type I LastRead 8 FirstWrite -1}
		image_5 {Type I LastRead 8 FirstWrite -1}
		max_result {Type O LastRead -1 FirstWrite 42}
		min_result {Type O LastRead -1 FirstWrite 42}
		avg_result {Type O LastRead -1 FirstWrite 41}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln37 { ap_none {  { sext_ln37 in_data 0 32 } } }
	mul_ln37 { ap_none {  { mul_ln37 in_data 0 61 } } }
	image_r { ap_memory {  { image_r_address0 mem_address 1 14 }  { image_r_ce0 mem_ce 1 1 }  { image_r_q0 mem_dout 0 8 }  { image_r_address1 MemPortADDR2 1 14 }  { image_r_ce1 MemPortCE2 1 1 }  { image_r_q1 MemPortDOUT2 0 8 } } }
	image_1 { ap_memory {  { image_1_address0 mem_address 1 14 }  { image_1_ce0 mem_ce 1 1 }  { image_1_q0 mem_dout 0 8 }  { image_1_address1 MemPortADDR2 1 14 }  { image_1_ce1 MemPortCE2 1 1 }  { image_1_q1 MemPortDOUT2 0 8 } } }
	image_2 { ap_memory {  { image_2_address0 mem_address 1 14 }  { image_2_ce0 mem_ce 1 1 }  { image_2_q0 mem_dout 0 8 }  { image_2_address1 MemPortADDR2 1 14 }  { image_2_ce1 MemPortCE2 1 1 }  { image_2_q1 MemPortDOUT2 0 8 } } }
	image_3 { ap_memory {  { image_3_address0 mem_address 1 14 }  { image_3_ce0 mem_ce 1 1 }  { image_3_q0 mem_dout 0 8 }  { image_3_address1 MemPortADDR2 1 14 }  { image_3_ce1 MemPortCE2 1 1 }  { image_3_q1 MemPortDOUT2 0 8 } } }
	image_4 { ap_memory {  { image_4_address0 mem_address 1 14 }  { image_4_ce0 mem_ce 1 1 }  { image_4_q0 mem_dout 0 8 }  { image_4_address1 MemPortADDR2 1 14 }  { image_4_ce1 MemPortCE2 1 1 }  { image_4_q1 MemPortDOUT2 0 8 } } }
	image_5 { ap_memory {  { image_5_address0 mem_address 1 14 }  { image_5_ce0 mem_ce 1 1 }  { image_5_q0 mem_dout 0 8 }  { image_5_address1 MemPortADDR2 1 14 }  { image_5_ce1 MemPortCE2 1 1 }  { image_5_q1 MemPortDOUT2 0 8 } } }
	max_result { ap_memory {  { max_result_address0 mem_address 1 14 }  { max_result_ce0 mem_ce 1 1 }  { max_result_we0 mem_we 1 1 }  { max_result_d0 mem_din 1 8 } } }
	min_result { ap_memory {  { min_result_address0 mem_address 1 14 }  { min_result_ce0 mem_ce 1 1 }  { min_result_we0 mem_we 1 1 }  { min_result_d0 mem_din 1 8 } } }
	avg_result { ap_memory {  { avg_result_address0 mem_address 1 14 }  { avg_result_ce0 mem_ce 1 1 }  { avg_result_we0 mem_we 1 1 }  { avg_result_d0 mem_din 1 8 } } }
}
