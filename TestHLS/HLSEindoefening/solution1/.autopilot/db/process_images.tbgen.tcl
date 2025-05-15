set moduleName process_images
set isTopModule 1
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
set cdfgNum 8
set C_modelName {process_images}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_stream_V_data_V int 8 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 1 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 1 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ conv_out_V_data_V int 8 regular {axi_s 1 volatile  { conv_out Data } }  }
	{ conv_out_V_keep_V int 1 regular {axi_s 1 volatile  { conv_out Keep } }  }
	{ conv_out_V_strb_V int 1 regular {axi_s 1 volatile  { conv_out Strb } }  }
	{ conv_out_V_user_V int 1 regular {axi_s 1 volatile  { conv_out User } }  }
	{ conv_out_V_last_V int 1 regular {axi_s 1 volatile  { conv_out Last } }  }
	{ conv_out_V_id_V int 1 regular {axi_s 1 volatile  { conv_out ID } }  }
	{ conv_out_V_dest_V int 1 regular {axi_s 1 volatile  { conv_out Dest } }  }
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
	{ img_height int 32 regular {axi_slave 0}  }
	{ img_width int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conv_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
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
 	{ "Name" : "avg_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_height", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "img_width", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TDATA sc_in sc_lv 8 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 1 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 1 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ conv_out_TDATA sc_out sc_lv 8 signal 7 } 
	{ conv_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ conv_out_TREADY sc_in sc_logic 1 outacc 13 } 
	{ conv_out_TKEEP sc_out sc_lv 1 signal 8 } 
	{ conv_out_TSTRB sc_out sc_lv 1 signal 9 } 
	{ conv_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ conv_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ conv_out_TID sc_out sc_lv 1 signal 12 } 
	{ conv_out_TDEST sc_out sc_lv 1 signal 13 } 
	{ max_out_TDATA sc_out sc_lv 8 signal 14 } 
	{ max_out_TVALID sc_out sc_logic 1 outvld 20 } 
	{ max_out_TREADY sc_in sc_logic 1 outacc 20 } 
	{ max_out_TKEEP sc_out sc_lv 1 signal 15 } 
	{ max_out_TSTRB sc_out sc_lv 1 signal 16 } 
	{ max_out_TUSER sc_out sc_lv 1 signal 17 } 
	{ max_out_TLAST sc_out sc_lv 1 signal 18 } 
	{ max_out_TID sc_out sc_lv 1 signal 19 } 
	{ max_out_TDEST sc_out sc_lv 1 signal 20 } 
	{ min_out_TDATA sc_out sc_lv 8 signal 21 } 
	{ min_out_TVALID sc_out sc_logic 1 outvld 27 } 
	{ min_out_TREADY sc_in sc_logic 1 outacc 27 } 
	{ min_out_TKEEP sc_out sc_lv 1 signal 22 } 
	{ min_out_TSTRB sc_out sc_lv 1 signal 23 } 
	{ min_out_TUSER sc_out sc_lv 1 signal 24 } 
	{ min_out_TLAST sc_out sc_lv 1 signal 25 } 
	{ min_out_TID sc_out sc_lv 1 signal 26 } 
	{ min_out_TDEST sc_out sc_lv 1 signal 27 } 
	{ avg_out_TDATA sc_out sc_lv 8 signal 28 } 
	{ avg_out_TVALID sc_out sc_logic 1 outvld 34 } 
	{ avg_out_TREADY sc_in sc_logic 1 outacc 34 } 
	{ avg_out_TKEEP sc_out sc_lv 1 signal 29 } 
	{ avg_out_TSTRB sc_out sc_lv 1 signal 30 } 
	{ avg_out_TUSER sc_out sc_lv 1 signal 31 } 
	{ avg_out_TLAST sc_out sc_lv 1 signal 32 } 
	{ avg_out_TID sc_out sc_lv 1 signal 33 } 
	{ avg_out_TDEST sc_out sc_lv 1 signal 34 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"process_images","role":"start","value":"0","valid_bit":"0"},{"name":"process_images","role":"continue","value":"0","valid_bit":"4"},{"name":"process_images","role":"auto_start","value":"0","valid_bit":"7"},{"name":"img_height","role":"data","value":"16"},{"name":"img_width","role":"data","value":"24"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"process_images","role":"start","value":"0","valid_bit":"0"},{"name":"process_images","role":"done","value":"0","valid_bit":"1"},{"name":"process_images","role":"idle","value":"0","valid_bit":"2"},{"name":"process_images","role":"ready","value":"0","valid_bit":"3"},{"name":"process_images","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "conv_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_out_V_data_V", "role": "default" }} , 
 	{ "name": "conv_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv_out_V_dest_V", "role": "default" }} , 
 	{ "name": "conv_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "conv_out_V_dest_V", "role": "default" }} , 
 	{ "name": "conv_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_keep_V", "role": "default" }} , 
 	{ "name": "conv_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_strb_V", "role": "default" }} , 
 	{ "name": "conv_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_user_V", "role": "default" }} , 
 	{ "name": "conv_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_last_V", "role": "default" }} , 
 	{ "name": "conv_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_id_V", "role": "default" }} , 
 	{ "name": "conv_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V_dest_V", "role": "default" }} , 
 	{ "name": "max_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "max_out_V_data_V", "role": "default" }} , 
 	{ "name": "max_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_out_V_dest_V", "role": "default" }} , 
 	{ "name": "max_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "max_out_V_dest_V", "role": "default" }} , 
 	{ "name": "max_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_keep_V", "role": "default" }} , 
 	{ "name": "max_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_strb_V", "role": "default" }} , 
 	{ "name": "max_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_user_V", "role": "default" }} , 
 	{ "name": "max_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_last_V", "role": "default" }} , 
 	{ "name": "max_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_id_V", "role": "default" }} , 
 	{ "name": "max_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "max_out_V_dest_V", "role": "default" }} , 
 	{ "name": "min_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "min_out_V_data_V", "role": "default" }} , 
 	{ "name": "min_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "min_out_V_dest_V", "role": "default" }} , 
 	{ "name": "min_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "min_out_V_dest_V", "role": "default" }} , 
 	{ "name": "min_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_keep_V", "role": "default" }} , 
 	{ "name": "min_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_strb_V", "role": "default" }} , 
 	{ "name": "min_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_user_V", "role": "default" }} , 
 	{ "name": "min_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_last_V", "role": "default" }} , 
 	{ "name": "min_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_id_V", "role": "default" }} , 
 	{ "name": "min_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "min_out_V_dest_V", "role": "default" }} , 
 	{ "name": "avg_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "avg_out_V_data_V", "role": "default" }} , 
 	{ "name": "avg_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "avg_out_V_dest_V", "role": "default" }} , 
 	{ "name": "avg_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "avg_out_V_dest_V", "role": "default" }} , 
 	{ "name": "avg_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_keep_V", "role": "default" }} , 
 	{ "name": "avg_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_strb_V", "role": "default" }} , 
 	{ "name": "avg_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_user_V", "role": "default" }} , 
 	{ "name": "avg_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_last_V", "role": "default" }} , 
 	{ "name": "avg_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_id_V", "role": "default" }} , 
 	{ "name": "avg_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "avg_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "14", "25", "33", "35", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "process_images",
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
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Port" : "in_stream_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Port" : "in_stream_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Port" : "in_stream_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Port" : "in_stream_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Port" : "in_stream_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "conv_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Port" : "conv_out_V_data_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "conv_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Port" : "conv_out_V_keep_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "conv_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Port" : "conv_out_V_strb_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "conv_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Port" : "conv_out_V_user_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "conv_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Port" : "conv_out_V_last_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "conv_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Port" : "conv_out_V_id_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "conv_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "conv_out",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Port" : "conv_out_V_dest_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "max_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "max_out_V_data_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "max_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "max_out_V_keep_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "max_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "max_out_V_strb_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "max_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "max_out_V_user_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "max_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "max_out_V_last_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "max_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "max_out_V_id_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "max_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "max_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "max_out_V_dest_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "min_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "min_out_V_data_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "min_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "min_out_V_keep_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "min_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "min_out_V_strb_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "min_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "min_out_V_user_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "min_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "min_out_V_last_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "min_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "min_out_V_id_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "min_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "min_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "min_out_V_dest_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "avg_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "avg_out_V_data_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "avg_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "avg_out_V_keep_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "avg_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "avg_out_V_strb_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "avg_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "avg_out_V_user_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "avg_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "avg_out_V_last_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "avg_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "avg_out_V_id_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "avg_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "avg_out",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Port" : "avg_out_V_dest_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_result_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_result_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.min_result_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avg_result_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198", "Parent" : "0", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198.urem_31ns_3ns_2_35_1_U2", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4",
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
			{"Name" : "sub17", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_result", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_37_3_VITIS_LOOP_38_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter45", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter45", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.mul_31ns_33ns_63_3_1_U20", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.mul_31ns_33ns_63_3_1_U21", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.urem_31ns_3ns_2_35_1_U22", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.sparsemux_7_2_8_1_1_U23", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.sparsemux_7_2_8_1_1_U24", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.sparsemux_7_2_8_1_1_U25", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.sparsemux_7_2_8_1_1_U26", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.sparsemux_7_2_8_1_1_U27", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.sparsemux_7_2_8_1_1_U28", "Parent" : "14"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_224.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237", "Parent" : "0", "Child" : ["26", "27", "28", "29", "30", "31", "32"],
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
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237.mul_32ns_34ns_65_3_1_U42", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237.urem_32ns_3ns_2_36_1_U43", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237.sparsemux_7_2_8_1_1_U44", "Parent" : "25"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237.sparsemux_7_2_8_1_1_U45", "Parent" : "25"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237.sparsemux_7_2_8_1_1_U46", "Parent" : "25"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237.sparsemux_7_2_8_1_1_U47", "Parent" : "25"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252", "Parent" : "0", "Child" : ["34"],
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
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275", "Parent" : "0", "Child" : ["36"],
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_30ns_60_3_1_U101", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_31ns_61_3_1_U102", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_31ns_62_3_1_U103", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_3_1_U104", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_3_1_U105", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_conv_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_conv_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_conv_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_conv_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_conv_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_conv_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_conv_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_max_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_max_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_max_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_max_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_max_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_max_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_max_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_min_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_min_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_min_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_min_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_min_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_min_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_min_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_avg_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_avg_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_avg_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_avg_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_avg_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_avg_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_avg_out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_images {
		in_stream_V_data_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 39 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 39 FirstWrite -1}
		conv_out_V_data_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_keep_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_strb_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_user_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_id_V {Type O LastRead -1 FirstWrite 5}
		conv_out_V_dest_V {Type O LastRead -1 FirstWrite 5}
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
		avg_out_V_dest_V {Type O LastRead -1 FirstWrite 5}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
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
		in_stream_V_dest_V {Type I LastRead 39 FirstWrite -1}}
	process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4 {
		sub17 {Type I LastRead 0 FirstWrite -1}
		mul_ln21 {Type I LastRead 0 FirstWrite -1}
		conv_result {Type O LastRead -1 FirstWrite 45}
		image_r {Type I LastRead 40 FirstWrite -1}
		image_1 {Type I LastRead 40 FirstWrite -1}
		image_2 {Type I LastRead 40 FirstWrite -1}
		image_3 {Type I LastRead 40 FirstWrite -1}
		image_4 {Type I LastRead 40 FirstWrite -1}
		image_5 {Type I LastRead 40 FirstWrite -1}}
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
		avg_result {Type O LastRead -1 FirstWrite 41}}
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
		conv_out_V_dest_V {Type O LastRead -1 FirstWrite 5}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 8 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 1 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 1 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
	conv_out_V_data_V { axis {  { conv_out_TDATA out_data 1 8 } } }
	conv_out_V_keep_V { axis {  { conv_out_TKEEP out_data 1 1 } } }
	conv_out_V_strb_V { axis {  { conv_out_TSTRB out_data 1 1 } } }
	conv_out_V_user_V { axis {  { conv_out_TUSER out_data 1 1 } } }
	conv_out_V_last_V { axis {  { conv_out_TLAST out_data 1 1 } } }
	conv_out_V_id_V { axis {  { conv_out_TID out_data 1 1 } } }
	conv_out_V_dest_V { axis {  { conv_out_TVALID out_vld 1 1 }  { conv_out_TREADY out_acc 0 1 }  { conv_out_TDEST out_data 1 1 } } }
	max_out_V_data_V { axis {  { max_out_TDATA out_data 1 8 } } }
	max_out_V_keep_V { axis {  { max_out_TKEEP out_data 1 1 } } }
	max_out_V_strb_V { axis {  { max_out_TSTRB out_data 1 1 } } }
	max_out_V_user_V { axis {  { max_out_TUSER out_data 1 1 } } }
	max_out_V_last_V { axis {  { max_out_TLAST out_data 1 1 } } }
	max_out_V_id_V { axis {  { max_out_TID out_data 1 1 } } }
	max_out_V_dest_V { axis {  { max_out_TVALID out_vld 1 1 }  { max_out_TREADY out_acc 0 1 }  { max_out_TDEST out_data 1 1 } } }
	min_out_V_data_V { axis {  { min_out_TDATA out_data 1 8 } } }
	min_out_V_keep_V { axis {  { min_out_TKEEP out_data 1 1 } } }
	min_out_V_strb_V { axis {  { min_out_TSTRB out_data 1 1 } } }
	min_out_V_user_V { axis {  { min_out_TUSER out_data 1 1 } } }
	min_out_V_last_V { axis {  { min_out_TLAST out_data 1 1 } } }
	min_out_V_id_V { axis {  { min_out_TID out_data 1 1 } } }
	min_out_V_dest_V { axis {  { min_out_TVALID out_vld 1 1 }  { min_out_TREADY out_acc 0 1 }  { min_out_TDEST out_data 1 1 } } }
	avg_out_V_data_V { axis {  { avg_out_TDATA out_data 1 8 } } }
	avg_out_V_keep_V { axis {  { avg_out_TKEEP out_data 1 1 } } }
	avg_out_V_strb_V { axis {  { avg_out_TSTRB out_data 1 1 } } }
	avg_out_V_user_V { axis {  { avg_out_TUSER out_data 1 1 } } }
	avg_out_V_last_V { axis {  { avg_out_TLAST out_data 1 1 } } }
	avg_out_V_id_V { axis {  { avg_out_TID out_data 1 1 } } }
	avg_out_V_dest_V { axis {  { avg_out_TVALID out_vld 1 1 }  { avg_out_TREADY out_acc 0 1 }  { avg_out_TDEST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
