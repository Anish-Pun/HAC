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
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of height
//        bit 31~0 - height[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of width
//        bit 31~0 - width[31:0] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of kernel
//        bit 31~0 - kernel[31:0] (Read/Write)
// 0x30 : Data signal of kernel
//        bit 31~0 - kernel[63:32] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of conv_out
//        bit 31~0 - conv_out[31:0] (Read/Write)
// 0x3c : Data signal of conv_out
//        bit 31~0 - conv_out[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of max_out
//        bit 31~0 - max_out[31:0] (Read/Write)
// 0x48 : Data signal of max_out
//        bit 31~0 - max_out[63:32] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of min_out
//        bit 31~0 - min_out[31:0] (Read/Write)
// 0x54 : Data signal of min_out
//        bit 31~0 - min_out[63:32] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of avg_out
//        bit 31~0 - avg_out[31:0] (Read/Write)
// 0x60 : Data signal of avg_out
//        bit 31~0 - avg_out[63:32] (Read/Write)
// 0x64 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL       0x00
#define CONTROL_ADDR_GIE           0x04
#define CONTROL_ADDR_IER           0x08
#define CONTROL_ADDR_ISR           0x0c
#define CONTROL_ADDR_INPUT_R_DATA  0x10
#define CONTROL_BITS_INPUT_R_DATA  64
#define CONTROL_ADDR_HEIGHT_DATA   0x1c
#define CONTROL_BITS_HEIGHT_DATA   32
#define CONTROL_ADDR_WIDTH_DATA    0x24
#define CONTROL_BITS_WIDTH_DATA    32
#define CONTROL_ADDR_KERNEL_DATA   0x2c
#define CONTROL_BITS_KERNEL_DATA   64
#define CONTROL_ADDR_CONV_OUT_DATA 0x38
#define CONTROL_BITS_CONV_OUT_DATA 64
#define CONTROL_ADDR_MAX_OUT_DATA  0x44
#define CONTROL_BITS_MAX_OUT_DATA  64
#define CONTROL_ADDR_MIN_OUT_DATA  0x50
#define CONTROL_BITS_MIN_OUT_DATA  64
#define CONTROL_ADDR_AVG_OUT_DATA  0x5c
#define CONTROL_BITS_AVG_OUT_DATA  64
