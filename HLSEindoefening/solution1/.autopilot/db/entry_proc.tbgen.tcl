set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 11
set C_modelName {entry_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ conv_output int 64 regular  }
	{ conv_output_c int 64 regular {fifo 1}  }
	{ max_output int 64 regular  }
	{ max_output_c int 64 regular {fifo 1}  }
	{ min_output int 64 regular  }
	{ min_output_c int 64 regular {fifo 1}  }
	{ avg_output int 64 regular  }
	{ avg_output_c int 64 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "conv_output", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv_output_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_output", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "max_output_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_output", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "min_output_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "avg_output", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "avg_output_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv_output sc_in sc_lv 64 signal 0 } 
	{ conv_output_c_din sc_out sc_lv 64 signal 1 } 
	{ conv_output_c_full_n sc_in sc_logic 1 signal 1 } 
	{ conv_output_c_write sc_out sc_logic 1 signal 1 } 
	{ conv_output_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ conv_output_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ max_output sc_in sc_lv 64 signal 2 } 
	{ max_output_c_din sc_out sc_lv 64 signal 3 } 
	{ max_output_c_full_n sc_in sc_logic 1 signal 3 } 
	{ max_output_c_write sc_out sc_logic 1 signal 3 } 
	{ max_output_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ max_output_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ min_output sc_in sc_lv 64 signal 4 } 
	{ min_output_c_din sc_out sc_lv 64 signal 5 } 
	{ min_output_c_full_n sc_in sc_logic 1 signal 5 } 
	{ min_output_c_write sc_out sc_logic 1 signal 5 } 
	{ min_output_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ min_output_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ avg_output sc_in sc_lv 64 signal 6 } 
	{ avg_output_c_din sc_out sc_lv 64 signal 7 } 
	{ avg_output_c_full_n sc_in sc_logic 1 signal 7 } 
	{ avg_output_c_write sc_out sc_logic 1 signal 7 } 
	{ avg_output_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ avg_output_c_fifo_cap sc_in sc_lv 3 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv_output", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv_output", "role": "default" }} , 
 	{ "name": "conv_output_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv_output_c", "role": "din" }} , 
 	{ "name": "conv_output_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_c", "role": "full_n" }} , 
 	{ "name": "conv_output_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_c", "role": "write" }} , 
 	{ "name": "conv_output_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv_output_c", "role": "num_data_valid" }} , 
 	{ "name": "conv_output_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv_output_c", "role": "fifo_cap" }} , 
 	{ "name": "max_output", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_output", "role": "default" }} , 
 	{ "name": "max_output_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_output_c", "role": "din" }} , 
 	{ "name": "max_output_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_output_c", "role": "full_n" }} , 
 	{ "name": "max_output_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_output_c", "role": "write" }} , 
 	{ "name": "max_output_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "max_output_c", "role": "num_data_valid" }} , 
 	{ "name": "max_output_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "max_output_c", "role": "fifo_cap" }} , 
 	{ "name": "min_output", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "min_output", "role": "default" }} , 
 	{ "name": "min_output_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "min_output_c", "role": "din" }} , 
 	{ "name": "min_output_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_output_c", "role": "full_n" }} , 
 	{ "name": "min_output_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_output_c", "role": "write" }} , 
 	{ "name": "min_output_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "min_output_c", "role": "num_data_valid" }} , 
 	{ "name": "min_output_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "min_output_c", "role": "fifo_cap" }} , 
 	{ "name": "avg_output", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "avg_output", "role": "default" }} , 
 	{ "name": "avg_output_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "avg_output_c", "role": "din" }} , 
 	{ "name": "avg_output_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_output_c", "role": "full_n" }} , 
 	{ "name": "avg_output_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_output_c", "role": "write" }} , 
 	{ "name": "avg_output_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "avg_output_c", "role": "num_data_valid" }} , 
 	{ "name": "avg_output_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "avg_output_c", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_output_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "conv_output_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_output_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "max_output_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_output_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "min_output_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "avg_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "avg_output_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "avg_output_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		conv_output {Type I LastRead 0 FirstWrite -1}
		conv_output_c {Type O LastRead -1 FirstWrite 0}
		max_output {Type I LastRead 0 FirstWrite -1}
		max_output_c {Type O LastRead -1 FirstWrite 0}
		min_output {Type I LastRead 0 FirstWrite -1}
		min_output_c {Type O LastRead -1 FirstWrite 0}
		avg_output {Type I LastRead 0 FirstWrite -1}
		avg_output_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv_output { ap_none {  { conv_output in_data 0 64 } } }
	conv_output_c { ap_fifo {  { conv_output_c_din fifo_data_in 1 64 }  { conv_output_c_full_n fifo_status 0 1 }  { conv_output_c_write fifo_port_we 1 1 }  { conv_output_c_num_data_valid fifo_status_num_data_valid 0 3 }  { conv_output_c_fifo_cap fifo_update 0 3 } } }
	max_output { ap_none {  { max_output in_data 0 64 } } }
	max_output_c { ap_fifo {  { max_output_c_din fifo_data_in 1 64 }  { max_output_c_full_n fifo_status 0 1 }  { max_output_c_write fifo_port_we 1 1 }  { max_output_c_num_data_valid fifo_status_num_data_valid 0 3 }  { max_output_c_fifo_cap fifo_update 0 3 } } }
	min_output { ap_none {  { min_output in_data 0 64 } } }
	min_output_c { ap_fifo {  { min_output_c_din fifo_data_in 1 64 }  { min_output_c_full_n fifo_status 0 1 }  { min_output_c_write fifo_port_we 1 1 }  { min_output_c_num_data_valid fifo_status_num_data_valid 0 3 }  { min_output_c_fifo_cap fifo_update 0 3 } } }
	avg_output { ap_none {  { avg_output in_data 0 64 } } }
	avg_output_c { ap_fifo {  { avg_output_c_din fifo_data_in 1 64 }  { avg_output_c_full_n fifo_status 0 1 }  { avg_output_c_write fifo_port_we 1 1 }  { avg_output_c_num_data_valid fifo_status_num_data_valid 0 3 }  { avg_output_c_fifo_cap fifo_update 0 3 } } }
}
