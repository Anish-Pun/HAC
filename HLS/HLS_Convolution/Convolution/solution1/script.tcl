############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project Convolution
set_top convolution
add_files Include/Convolution.c
add_files Include/Convolution.h
add_files -tb Include/Convolution_TB.c
add_files -tb Images/input1.png
add_files -tb Images/input10.png
add_files -tb Images/input2.png
add_files -tb Images/input3.png
add_files -tb Images/input4.png
add_files -tb Images/input5.png
add_files -tb Images/input6.png
add_files -tb Images/input7.png
add_files -tb Images/input8.png
add_files -tb Images/input9.png
add_files -tb Include/stb_image.h
add_files -tb Include/stb_image_resize.h
add_files -tb Include/stb_image_write.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./Convolution/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
