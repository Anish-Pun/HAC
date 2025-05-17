// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of in_img
//        bit 31~0 - in_img[31:0] (Read/Write)
// 0x14 : Data signal of in_img
//        bit 31~0 - in_img[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of max_pool
//        bit 31~0 - max_pool[31:0] (Read/Write)
// 0x20 : Data signal of max_pool
//        bit 31~0 - max_pool[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of min_pool
//        bit 31~0 - min_pool[31:0] (Read/Write)
// 0x2c : Data signal of min_pool
//        bit 31~0 - min_pool[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of avg_pool
//        bit 31~0 - avg_pool[31:0] (Read/Write)
// 0x38 : Data signal of avg_pool
//        bit 31~0 - avg_pool[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_IN_IMG_DATA   0x10
#define CONTROL_R_BITS_IN_IMG_DATA   64
#define CONTROL_R_ADDR_MAX_POOL_DATA 0x1c
#define CONTROL_R_BITS_MAX_POOL_DATA 64
#define CONTROL_R_ADDR_MIN_POOL_DATA 0x28
#define CONTROL_R_BITS_MIN_POOL_DATA 64
#define CONTROL_R_ADDR_AVG_POOL_DATA 0x34
#define CONTROL_R_BITS_AVG_POOL_DATA 64
