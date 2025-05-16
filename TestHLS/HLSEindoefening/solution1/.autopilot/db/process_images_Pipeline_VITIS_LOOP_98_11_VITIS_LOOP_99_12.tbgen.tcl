set moduleName process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12
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
set C_modelName {process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict max_result { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict min_result { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict avg_result { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ out_w int 31 regular  }
	{ mul_ln82 int 60 regular  }
	{ sub199 int 32 regular  }
	{ max_result int 8 regular {array 16384 { 1 3 } 1 1 }  }
	{ min_result int 8 regular {array 16384 { 1 3 } 1 1 }  }
	{ avg_result int 8 regular {array 16384 { 1 3 } 1 1 }  }
	{ sub202 int 32 regular  }
	{ max_out_V_data_V int 8 regular {axi_s 1 volatile  { max_out Data } }  }
	{ max_out_V_keep_V int 1 regular {axi_s 1 volatile  { max_out Keep } }  }
	{ max_out_V_strb_V int 1 regular {axi_s 1 volatile  { max_out Strb } }  }
	{ max_out_V_user_V int 1 regular {axi_s 1 volatile  { max_out User } }  }
	{ max_out_V_last_V int 1 regular {axi_s 1 volatile  { max_out Last } }  }
	{ max_out_V_id_V int 1 regular {axi_s 1 volatile  { max_out ID } }  }
	{ max_out_V_dest_V int 1 regular {axi_s 1 volatile  { max_out Dest } }  }
	{ min_out_V_data_V int 8 regular {axi_s 1 volatile  { min_out Data } }  }
	{ min_out_V_keep_V int 1 regular {axi_s 1 volatile  { min_out Keep } }  }
	{ min_out_V_strb_V int 1 regular {axi_s 1 volatile  { min_out Strb } }  }
	{ min_out_V_user_V int 1 regular {axi_s 1 volatile  { min_out User } }  }
	{ min_out_V_last_V int 1 regular {axi_s 1 volatile  { min_out Last } }  }
	{ min_out_V_id_V int 1 regular {axi_s 1 volatile  { min_out ID } }  }
	{ min_out_V_dest_V int 1 regular {axi_s 1 volatile  { min_out Dest } }  }
	{ avg_out_V_data_V int 8 regular {axi_s 1 volatile  { avg_out Data } }  }
	{ avg_out_V_keep_V int 1 regular {axi_s 1 volatile  { avg_out Keep } }  }
	{ avg_out_V_strb_V int 1 regular {axi_s 1 volatile  { avg_out Strb } }  }
	{ avg_out_V_user_V int 1 regular {axi_s 1 volatile  { avg_out User } }  }
	{ avg_out_V_last_V int 1 regular {axi_s 1 volatile  { avg_out Last } }  }
	{ avg_out_V_id_V int 1 regular {axi_s 1 volatile  { avg_out ID } }  }
	{ avg_out_V_dest_V int 1 regular {axi_s 1 volatile  { avg_out Dest } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "out_w", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln82", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "sub199", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "min_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "avg_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sub202", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ max_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ min_out_TREADY sc_in sc_logic 1 outacc 14 } 
	{ avg_out_TREADY sc_in sc_logic 1 outacc 21 } 
	{ out_w sc_in sc_lv 31 signal 0 } 
	{ mul_ln82 sc_in sc_lv 60 signal 1 } 
	{ sub199 sc_in sc_lv 32 signal 2 } 
	{ max_result_address0 sc_out sc_lv 14 signal 3 } 
	{ max_result_ce0 sc_out sc_logic 1 signal 3 } 
	{ max_result_q0 sc_in sc_lv 8 signal 3 } 
	{ min_result_address0 sc_out sc_lv 14 signal 4 } 
	{ min_result_ce0 sc_out sc_logic 1 signal 4 } 
	{ min_result_q0 sc_in sc_lv 8 signal 4 } 
	{ avg_result_address0 sc_out sc_lv 14 signal 5 } 
	{ avg_result_ce0 sc_out sc_logic 1 signal 5 } 
	{ avg_result_q0 sc_in sc_lv 8 signal 5 } 
	{ sub202 sc_in sc_lv 32 signal 6 } 
	{ max_out_TDATA sc_out sc_lv 8 signal 7 } 
	{ max_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ max_out_TKEEP sc_out sc_lv 1 signal 8 } 
	{ max_out_TSTRB sc_out sc_lv 1 signal 9 } 
	{ max_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ max_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ max_out_TID sc_out sc_lv 1 signal 12 } 
	{ max_out_TDEST sc_out sc_lv 1 signal 13 } 
	{ min_out_TDATA sc_out sc_lv 8 signal 14 } 
	{ min_out_TVALID sc_out sc_logic 1 outvld 20 } 
	{ min_out_TKEEP sc_out sc_lv 1 signal 15 } 
	{ min_out_TSTRB sc_out sc_lv 1 signal 16 } 
	{ min_out_TUSER sc_out sc_lv 1 signal 17 } 
	{ min_out_TLAST sc_out sc_lv 1 signal 18 } 
	{ min_out_TID sc_out sc_lv 1 signal 19 } 
	{ min_out_TDEST sc_out sc_lv 1 signal 20 } 
	{ avg_out_TDATA sc_out sc_lv 8 signal 21 } 
	{ avg_out_TVALID sc_out sc_logic 1 outvld 27 } 
	{ avg_out_TKEEP sc_out sc_lv 1 signal 22 } 
	{ avg_out_TSTRB sc_out sc_lv 1 signal 23 } 
	{ avg_out_TUSER sc_out sc_lv 1 signal 24 } 
	{ avg_out_TLAST sc_out sc_lv 1 signal 25 } 
	{ avg_out_TID sc_out sc_lv 1 signal 26 } 
	{ avg_out_TDEST sc_out sc_lv 1 signal 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "max_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "max_out_V_data_V", "role": "default" }} , 
 	{ "name": "min_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "min_out_V_data_V", "role": "default" }} , 
 	{ "name": "avg_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "avg_out_V_data_V", "role": "default" }} , 
 	{ "name": "out_w", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "out_w", "role": "default" }} , 
 	{ "name": "mul_ln82", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "mul_ln82", "role": "default" }} , 
 	{ "name": "sub199", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub199", "role": "default" }} , 
 	{ "name": "max_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "max_result", "role": "address0" }} , 
 	{ "name": "max_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_result", "role": "ce0" }} , 
 	{ "name": "max_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "max_result", "role": "q0" }} , 
 	{ "name": "min_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "min_result", "role": "address0" }} , 
 	{ "name": "min_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_result", "role": "ce0" }} , 
 	{ "name": "min_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "min_result", "role": "q0" }} , 
 	{ "name": "avg_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "avg_result", "role": "address0" }} , 
 	{ "name": "avg_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_result", "role": "ce0" }} , 
 	{ "name": "avg_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "avg_result", "role": "q0" }} , 
 	{ "name": "sub202", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub202", "role": "default" }} , 
 	{ "name": "max_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "max_out_V_data_V", "role": "default" }} , 
 	{ "name": "max_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_out_V_dest_V", "role": "default" }} , 
 	{ "name": "max_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_keep_V", "role": "default" }} , 
 	{ "name": "max_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_strb_V", "role": "default" }} , 
 	{ "name": "max_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_user_V", "role": "default" }} , 
 	{ "name": "max_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_last_V", "role": "default" }} , 
 	{ "name": "max_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_id_V", "role": "default" }} , 
 	{ "name": "max_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_dest_V", "role": "default" }} , 
 	{ "name": "min_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "min_out_V_data_V", "role": "default" }} , 
 	{ "name": "min_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "min_out_V_dest_V", "role": "default" }} , 
 	{ "name": "min_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_keep_V", "role": "default" }} , 
 	{ "name": "min_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_strb_V", "role": "default" }} , 
 	{ "name": "min_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_user_V", "role": "default" }} , 
 	{ "name": "min_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_last_V", "role": "default" }} , 
 	{ "name": "min_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_id_V", "role": "default" }} , 
 	{ "name": "min_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_dest_V", "role": "default" }} , 
 	{ "name": "avg_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "avg_out_V_data_V", "role": "default" }} , 
 	{ "name": "avg_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "avg_out_V_dest_V", "role": "default" }} , 
 	{ "name": "avg_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_keep_V", "role": "default" }} , 
 	{ "name": "avg_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_strb_V", "role": "default" }} , 
 	{ "name": "avg_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_user_V", "role": "default" }} , 
 	{ "name": "avg_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_last_V", "role": "default" }} , 
 	{ "name": "avg_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_id_V", "role": "default" }} , 
 	{ "name": "avg_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "1152921502459363334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln82", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub199", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_result", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "min_result", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "avg_result", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub202", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"BlockSignal" : [
					{"Name" : "max_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out"},
			{"Name" : "max_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out"},
			{"Name" : "max_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out"},
			{"Name" : "max_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out"},
			{"Name" : "max_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out"},
			{"Name" : "max_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out"},
			{"Name" : "min_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"BlockSignal" : [
					{"Name" : "min_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out"},
			{"Name" : "min_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out"},
			{"Name" : "min_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out"},
			{"Name" : "min_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out"},
			{"Name" : "min_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out"},
			{"Name" : "min_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out"},
			{"Name" : "avg_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"BlockSignal" : [
					{"Name" : "avg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "avg_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out"},
			{"Name" : "avg_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out"},
			{"Name" : "avg_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out"},
			{"Name" : "avg_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out"},
			{"Name" : "avg_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out"},
			{"Name" : "avg_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_11_VITIS_LOOP_99_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12 {
		out_w {Type I LastRead 0 FirstWrite -1}
		mul_ln82 {Type I LastRead 0 FirstWrite -1}
		sub199 {Type I LastRead 0 FirstWrite -1}
		max_result {Type I LastRead 4 FirstWrite -1}
		min_result {Type I LastRead 4 FirstWrite -1}
		avg_result {Type I LastRead 4 FirstWrite -1}
		sub202 {Type I LastRead 0 FirstWrite -1}
		max_out_V_data_V {Type O LastRead -1 FirstWrite 5}
		max_out_V_keep_V {Type O LastRead -1 FirstWrite 5}
		max_out_V_strb_V {Type O LastRead -1 FirstWrite 5}
		max_out_V_user_V {Type O LastRead -1 FirstWrite 5}
		max_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		max_out_V_id_V {Type O LastRead -1 FirstWrite 5}
		max_out_V_dest_V {Type O LastRead -1 FirstWrite 5}
		min_out_V_data_V {Type O LastRead -1 FirstWrite 5}
		min_out_V_keep_V {Type O LastRead -1 FirstWrite 5}
		min_out_V_strb_V {Type O LastRead -1 FirstWrite 5}
		min_out_V_user_V {Type O LastRead -1 FirstWrite 5}
		min_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		min_out_V_id_V {Type O LastRead -1 FirstWrite 5}
		min_out_V_dest_V {Type O LastRead -1 FirstWrite 5}
		avg_out_V_data_V {Type O LastRead -1 FirstWrite 5}
		avg_out_V_keep_V {Type O LastRead -1 FirstWrite 5}
		avg_out_V_strb_V {Type O LastRead -1 FirstWrite 5}
		avg_out_V_user_V {Type O LastRead -1 FirstWrite 5}
		avg_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		avg_out_V_id_V {Type O LastRead -1 FirstWrite 5}
		avg_out_V_dest_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "1152921502459363334"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "1152921502459363334"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_w { ap_none {  { out_w in_data 0 31 } } }
	mul_ln82 { ap_none {  { mul_ln82 in_data 0 60 } } }
	sub199 { ap_none {  { sub199 in_data 0 32 } } }
	max_result { ap_memory {  { max_result_address0 mem_address 1 14 }  { max_result_ce0 mem_ce 1 1 }  { max_result_q0 mem_dout 0 8 } } }
	min_result { ap_memory {  { min_result_address0 mem_address 1 14 }  { min_result_ce0 mem_ce 1 1 }  { min_result_q0 mem_dout 0 8 } } }
	avg_result { ap_memory {  { avg_result_address0 mem_address 1 14 }  { avg_result_ce0 mem_ce 1 1 }  { avg_result_q0 mem_dout 0 8 } } }
	sub202 { ap_none {  { sub202 in_data 0 32 } } }
	max_out_V_data_V { axis {  { max_out_TREADY out_acc 0 1 }  { max_out_TDATA out_data 1 8 } } }
	max_out_V_keep_V { axis {  { max_out_TKEEP out_data 1 1 } } }
	max_out_V_strb_V { axis {  { max_out_TSTRB out_data 1 1 } } }
	max_out_V_user_V { axis {  { max_out_TUSER out_data 1 1 } } }
	max_out_V_last_V { axis {  { max_out_TLAST out_data 1 1 } } }
	max_out_V_id_V { axis {  { max_out_TID out_data 1 1 } } }
	max_out_V_dest_V { axis {  { max_out_TVALID out_vld 1 1 }  { max_out_TDEST out_data 1 1 } } }
	min_out_V_data_V { axis {  { min_out_TREADY out_acc 0 1 }  { min_out_TDATA out_data 1 8 } } }
	min_out_V_keep_V { axis {  { min_out_TKEEP out_data 1 1 } } }
	min_out_V_strb_V { axis {  { min_out_TSTRB out_data 1 1 } } }
	min_out_V_user_V { axis {  { min_out_TUSER out_data 1 1 } } }
	min_out_V_last_V { axis {  { min_out_TLAST out_data 1 1 } } }
	min_out_V_id_V { axis {  { min_out_TID out_data 1 1 } } }
	min_out_V_dest_V { axis {  { min_out_TVALID out_vld 1 1 }  { min_out_TDEST out_data 1 1 } } }
	avg_out_V_data_V { axis {  { avg_out_TREADY out_acc 0 1 }  { avg_out_TDATA out_data 1 8 } } }
	avg_out_V_keep_V { axis {  { avg_out_TKEEP out_data 1 1 } } }
	avg_out_V_strb_V { axis {  { avg_out_TSTRB out_data 1 1 } } }
	avg_out_V_user_V { axis {  { avg_out_TUSER out_data 1 1 } } }
	avg_out_V_last_V { axis {  { avg_out_TLAST out_data 1 1 } } }
	avg_out_V_id_V { axis {  { avg_out_TID out_data 1 1 } } }
	avg_out_V_dest_V { axis {  { avg_out_TVALID out_vld 1 1 }  { avg_out_TDEST out_data 1 1 } } }
}
