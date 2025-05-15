############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project HLS_Eindoefening
set_top full_pipeline
add_files Include/HLS.c
add_files Include/HLS.h
add_files Include/stb_image.h
add_files Include/stb_image_write.h
add_files -tb Include/HLS_TB.c
add_files -tb Include/input1.png
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./HLS_Eindoefening/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
