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

#define CONTROL_R_ADDR_INPUT_R_DATA     0x10
#define CONTROL_R_BITS_INPUT_R_DATA     64
#define CONTROL_R_ADDR_CONV_OUTPUT_DATA 0x1c
#define CONTROL_R_BITS_CONV_OUTPUT_DATA 64
#define CONTROL_R_ADDR_MAX_OUTPUT_DATA  0x28
#define CONTROL_R_BITS_MAX_OUTPUT_DATA  64
#define CONTROL_R_ADDR_MIN_OUTPUT_DATA  0x34
#define CONTROL_R_BITS_MIN_OUTPUT_DATA  64
#define CONTROL_R_ADDR_AVG_OUTPUT_DATA  0x40
#define CONTROL_R_BITS_AVG_OUTPUT_DATA  64
