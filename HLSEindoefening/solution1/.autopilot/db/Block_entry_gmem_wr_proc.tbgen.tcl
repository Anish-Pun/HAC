set moduleName Block_entry_gmem_wr_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 11
set C_modelName {Block_entry_gmem_wr_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict conv_result { MEM_WIDTH 8 MEM_SIZE 4194304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict max_result { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict min_result { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict avg_result { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ p_read int 1 regular  }
	{ p_read1 int 32 regular  }
	{ gmem int 8 regular {axi_master 1}  }
	{ conv_output int 64 regular {fifo 0}  }
	{ conv_result int 8 regular {array 4194304 { 1 3 } 1 1 }  }
	{ p_read2 int 1 regular  }
	{ p_read3 int 32 regular  }
	{ max_result int 8 regular {array 1048576 { 1 3 } 1 1 }  }
	{ max_output int 64 regular {fifo 0}  }
	{ min_result int 8 regular {array 1048576 { 1 3 } 1 1 }  }
	{ min_output int 64 regular {fifo 0}  }
	{ avg_result int 8 regular {array 1048576 { 1 3 } 1 1 }  }
	{ avg_output int 64 regular {fifo 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control_r"},"direction": "READONLY"},{"cName": "conv_output","offset": { "type": "dynamic","port_name": "conv_output","bundle": "control_r"},"direction": "WRITEONLY"},{"cName": "max_output","offset": { "type": "dynamic","port_name": "max_output","bundle": "control_r"},"direction": "WRITEONLY"},{"cName": "min_output","offset": { "type": "dynamic","port_name": "min_output","bundle": "control_r"},"direction": "WRITEONLY"},{"cName": "avg_output","offset": { "type": "dynamic","port_name": "avg_output","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "conv_output", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "max_output", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "min_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "min_output", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "avg_result", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "avg_output", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 89
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 1 signal 0 } 
	{ p_read1 sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 8 signal 2 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 11 signal 2 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ conv_output_dout sc_in sc_lv 64 signal 3 } 
	{ conv_output_empty_n sc_in sc_logic 1 signal 3 } 
	{ conv_output_read sc_out sc_logic 1 signal 3 } 
	{ conv_output_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ conv_output_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ conv_result_address0 sc_out sc_lv 22 signal 4 } 
	{ conv_result_ce0 sc_out sc_logic 1 signal 4 } 
	{ conv_result_q0 sc_in sc_lv 8 signal 4 } 
	{ p_read2 sc_in sc_lv 1 signal 5 } 
	{ p_read3 sc_in sc_lv 32 signal 6 } 
	{ max_result_address0 sc_out sc_lv 20 signal 7 } 
	{ max_result_ce0 sc_out sc_logic 1 signal 7 } 
	{ max_result_q0 sc_in sc_lv 8 signal 7 } 
	{ max_output_dout sc_in sc_lv 64 signal 8 } 
	{ max_output_empty_n sc_in sc_logic 1 signal 8 } 
	{ max_output_read sc_out sc_logic 1 signal 8 } 
	{ max_output_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ max_output_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ min_result_address0 sc_out sc_lv 20 signal 9 } 
	{ min_result_ce0 sc_out sc_logic 1 signal 9 } 
	{ min_result_q0 sc_in sc_lv 8 signal 9 } 
	{ min_output_dout sc_in sc_lv 64 signal 10 } 
	{ min_output_empty_n sc_in sc_logic 1 signal 10 } 
	{ min_output_read sc_out sc_logic 1 signal 10 } 
	{ min_output_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ min_output_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ avg_result_address0 sc_out sc_lv 20 signal 11 } 
	{ avg_result_ce0 sc_out sc_logic 1 signal 11 } 
	{ avg_result_q0 sc_in sc_lv 8 signal 11 } 
	{ avg_output_dout sc_in sc_lv 64 signal 12 } 
	{ avg_output_empty_n sc_in sc_logic 1 signal 12 } 
	{ avg_output_read sc_out sc_logic 1 signal 12 } 
	{ avg_output_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ avg_output_fifo_cap sc_in sc_lv 3 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BUSER" }} , 
 	{ "name": "conv_output_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv_output", "role": "dout" }} , 
 	{ "name": "conv_output_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output", "role": "empty_n" }} , 
 	{ "name": "conv_output_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output", "role": "read" }} , 
 	{ "name": "conv_output_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv_output", "role": "num_data_valid" }} , 
 	{ "name": "conv_output_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv_output", "role": "fifo_cap" }} , 
 	{ "name": "conv_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "conv_result", "role": "address0" }} , 
 	{ "name": "conv_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_result", "role": "ce0" }} , 
 	{ "name": "conv_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_result", "role": "q0" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "max_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "max_result", "role": "address0" }} , 
 	{ "name": "max_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_result", "role": "ce0" }} , 
 	{ "name": "max_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "max_result", "role": "q0" }} , 
 	{ "name": "max_output_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_output", "role": "dout" }} , 
 	{ "name": "max_output_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_output", "role": "empty_n" }} , 
 	{ "name": "max_output_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_output", "role": "read" }} , 
 	{ "name": "max_output_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "max_output", "role": "num_data_valid" }} , 
 	{ "name": "max_output_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "max_output", "role": "fifo_cap" }} , 
 	{ "name": "min_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "min_result", "role": "address0" }} , 
 	{ "name": "min_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_result", "role": "ce0" }} , 
 	{ "name": "min_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "min_result", "role": "q0" }} , 
 	{ "name": "min_output_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "min_output", "role": "dout" }} , 
 	{ "name": "min_output_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_output", "role": "empty_n" }} , 
 	{ "name": "min_output_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_output", "role": "read" }} , 
 	{ "name": "min_output_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "min_output", "role": "num_data_valid" }} , 
 	{ "name": "min_output_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "min_output", "role": "fifo_cap" }} , 
 	{ "name": "avg_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "avg_result", "role": "address0" }} , 
 	{ "name": "avg_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_result", "role": "ce0" }} , 
 	{ "name": "avg_result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "avg_result", "role": "q0" }} , 
 	{ "name": "avg_output_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "avg_output", "role": "dout" }} , 
 	{ "name": "avg_output_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_output", "role": "empty_n" }} , 
 	{ "name": "avg_output_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_output", "role": "read" }} , 
 	{ "name": "avg_output_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "avg_output", "role": "num_data_valid" }} , 
 	{ "name": "avg_output_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "avg_output", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_entry_gmem_wr_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "conv_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "conv_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_result", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "max_result", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "max_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "max_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_result", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "min_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "min_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "avg_result", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "avg_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "avg_output_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_83_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_91_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	Block_entry_gmem_wr_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 13 FirstWrite 4}
		conv_output {Type I LastRead 0 FirstWrite -1}
		conv_result {Type I LastRead 2 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		max_result {Type I LastRead 8 FirstWrite -1}
		max_output {Type I LastRead 0 FirstWrite -1}
		min_result {Type I LastRead 8 FirstWrite -1}
		min_output {Type I LastRead 0 FirstWrite -1}
		avg_result {Type I LastRead 8 FirstWrite -1}
		avg_output {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 8 }  { m_axi_gmem_0_WSTRB STRB 1 1 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 8 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 11 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	conv_output { ap_fifo {  { conv_output_dout fifo_data_in 0 64 }  { conv_output_empty_n fifo_status 0 1 }  { conv_output_read fifo_port_we 1 1 }  { conv_output_num_data_valid fifo_status_num_data_valid 0 3 }  { conv_output_fifo_cap fifo_update 0 3 } } }
	conv_result { ap_memory {  { conv_result_address0 mem_address 1 22 }  { conv_result_ce0 mem_ce 1 1 }  { conv_result_q0 mem_dout 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 1 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	max_result { ap_memory {  { max_result_address0 mem_address 1 20 }  { max_result_ce0 mem_ce 1 1 }  { max_result_q0 mem_dout 0 8 } } }
	max_output { ap_fifo {  { max_output_dout fifo_data_in 0 64 }  { max_output_empty_n fifo_status 0 1 }  { max_output_read fifo_port_we 1 1 }  { max_output_num_data_valid fifo_status_num_data_valid 0 3 }  { max_output_fifo_cap fifo_update 0 3 } } }
	min_result { ap_memory {  { min_result_address0 mem_address 1 20 }  { min_result_ce0 mem_ce 1 1 }  { min_result_q0 mem_dout 0 8 } } }
	min_output { ap_fifo {  { min_output_dout fifo_data_in 0 64 }  { min_output_empty_n fifo_status 0 1 }  { min_output_read fifo_port_we 1 1 }  { min_output_num_data_valid fifo_status_num_data_valid 0 3 }  { min_output_fifo_cap fifo_update 0 3 } } }
	avg_result { ap_memory {  { avg_result_address0 mem_address 1 20 }  { avg_result_ce0 mem_ce 1 1 }  { avg_result_q0 mem_dout 0 8 } } }
	avg_output { ap_fifo {  { avg_output_dout fifo_data_in 0 64 }  { avg_output_empty_n fifo_status 0 1 }  { avg_output_read fifo_port_we 1 1 }  { avg_output_num_data_valid fifo_status_num_data_valid 0 3 }  { avg_output_fifo_cap fifo_update 0 3 } } }
}
