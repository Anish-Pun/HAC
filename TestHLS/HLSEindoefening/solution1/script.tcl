############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project HLSEindoefening
set_top process_images
add_files HLSEindoefening/hls_process_images.cpp
add_files HLSEindoefening/hls_process_images.hpp
add_files -tb HLSEindoefening/hls_process_images_tb.cpp
add_files -tb HLSEindoefening/input.png
add_files -tb HLSEindoefening/stb_image.h
add_files -tb HLSEindoefening/stb_image_write.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 8 -name default
config_export -format ip_catalog -rtl verilog
source "./HLSEindoefening/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
