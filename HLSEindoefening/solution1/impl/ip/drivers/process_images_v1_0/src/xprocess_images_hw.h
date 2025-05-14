// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of img_height
//        bit 31~0 - img_height[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of img_width
//        bit 31~0 - img_width[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL         0x00
#define XPROCESS_IMAGES_CONTROL_ADDR_GIE             0x04
#define XPROCESS_IMAGES_CONTROL_ADDR_IER             0x08
#define XPROCESS_IMAGES_CONTROL_ADDR_ISR             0x0c
#define XPROCESS_IMAGES_CONTROL_ADDR_IMG_HEIGHT_DATA 0x10
#define XPROCESS_IMAGES_CONTROL_BITS_IMG_HEIGHT_DATA 32
#define XPROCESS_IMAGES_CONTROL_ADDR_IMG_WIDTH_DATA  0x18
#define XPROCESS_IMAGES_CONTROL_BITS_IMG_WIDTH_DATA  32

// control_r
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of conv_output
//        bit 31~0 - conv_output[31:0] (Read/Write)
// 0x20 : Data signal of conv_output
//        bit 31~0 - conv_output[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of max_output
//        bit 31~0 - max_output[31:0] (Read/Write)
// 0x2c : Data signal of max_output
//        bit 31~0 - max_output[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of min_output
//        bit 31~0 - min_output[31:0] (Read/Write)
// 0x38 : Data signal of min_output
//        bit 31~0 - min_output[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of avg_output
//        bit 31~0 - avg_output[31:0] (Read/Write)
// 0x44 : Data signal of avg_output
//        bit 31~0 - avg_output[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XPROCESS_IMAGES_CONTROL_R_ADDR_INPUT_R_DATA     0x10
#define XPROCESS_IMAGES_CONTROL_R_BITS_INPUT_R_DATA     64
#define XPROCESS_IMAGES_CONTROL_R_ADDR_CONV_OUTPUT_DATA 0x1c
#define XPROCESS_IMAGES_CONTROL_R_BITS_CONV_OUTPUT_DATA 64
#define XPROCESS_IMAGES_CONTROL_R_ADDR_MAX_OUTPUT_DATA  0x28
#define XPROCESS_IMAGES_CONTROL_R_BITS_MAX_OUTPUT_DATA  64
#define XPROCESS_IMAGES_CONTROL_R_ADDR_MIN_OUTPUT_DATA  0x34
#define XPROCESS_IMAGES_CONTROL_R_BITS_MIN_OUTPUT_DATA  64
#define XPROCESS_IMAGES_CONTROL_R_ADDR_AVG_OUTPUT_DATA  0x40
#define XPROCESS_IMAGES_CONTROL_R_BITS_AVG_OUTPUT_DATA  64

