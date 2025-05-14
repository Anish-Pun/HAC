# 1 "HLSEindoefening/hls_process_images.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 360 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Xilinx/Vitis/2024.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 263 "C:/Xilinx/Vitis/2024.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));
    void _ssdm_op_ReadReq() __attribute__ ((nothrow));
    void _ssdm_op_Read() __attribute__ ((nothrow));
    void _ssdm_op_WriteReq() __attribute__ ((nothrow));
    void _ssdm_op_Write() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_PrintNone() __attribute__ ((nothrow));
    void _ssdm_op_PrintInt() __attribute__ ((nothrow));
    void _ssdm_op_PrintDouble() __attribute__ ((nothrow));

    void _ssdm_op_Wait(int) __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecBindPort() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 2 "<built-in>" 2
# 1 "HLSEindoefening/hls_process_images.c" 2
# 1 "HLSEindoefening/hls_process_images.h" 1




void convolution(unsigned char *input, unsigned char *output, int img_height, int img_width, char kernel[3][3]);
void max_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width);
void min_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width);
void average_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width);
__attribute__((sdx_kernel("process_images", 0))) void process_images(unsigned char *input, unsigned char *conv_output, unsigned char *max_output, unsigned char *min_output, unsigned char *avg_output, int img_height, int img_width);
# 2 "HLSEindoefening/hls_process_images.c" 2


void convolution(unsigned char *input, unsigned char *output, int img_height, int img_width, char kernel[3][3]) {
    VITIS_LOOP_5_1: for (int y = 1; y < img_height - 1; y++) {
        VITIS_LOOP_6_2: for (int x = 1; x < img_width - 1; x++) {
            int sum = 0;
            VITIS_LOOP_8_3: for (int ky = -1; ky <= 1; ky++) {
                VITIS_LOOP_9_4: for (int kx = -1; kx <= 1; kx++) {
                    sum += input[(y + ky) * img_width + (x + kx)] * kernel[ky + 1][kx + 1];
                }
            }
            if (sum < 0) sum = 0;
            if (sum > 255) sum = 255;
            output[y * img_width + x] = (unsigned char)sum;
        }
    }
}


void max_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width) {
    VITIS_LOOP_22_1: for (int y = 0; y < img_height; y += 2) {
        VITIS_LOOP_23_2: for (int x = 0; x < img_width; x += 2) {
            unsigned char max_val = input[y * img_width + x];
            if (input[y * img_width + (x + 1)] > max_val) max_val = input[y * img_width + (x + 1)];
            if (input[(y + 1) * img_width + x] > max_val) max_val = input[(y + 1) * img_width + x];
            if (input[(y + 1) * img_width + (x + 1)] > max_val) max_val = input[(y + 1) * img_width + (x + 1)];
            output[(y / 2) * (img_width / 2) + (x / 2)] = max_val;
        }
    }
}


void min_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width) {
    VITIS_LOOP_35_1: for (int y = 0; y < img_height; y += 2) {
        VITIS_LOOP_36_2: for (int x = 0; x < img_width; x += 2) {
            unsigned char min_val = input[y * img_width + x];
            if (input[y * img_width + (x + 1)] < min_val) min_val = input[y * img_width + (x + 1)];
            if (input[(y + 1) * img_width + x] < min_val) min_val = input[(y + 1) * img_width + x];
            if (input[(y + 1) * img_width + (x + 1)] < min_val) min_val = input[(y + 1) * img_width + (x + 1)];
            output[(y / 2) * (img_width / 2) + (x / 2)] = min_val;
        }
    }
}


void average_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width) {
    VITIS_LOOP_48_1: for (int y = 0; y < img_height; y += 2) {
        VITIS_LOOP_49_2: for (int x = 0; x < img_width; x += 2) {
            int sum = input[y * img_width + x] + input[y * img_width + (x + 1)] + input[(y + 1) * img_width + x] + input[(y + 1) * img_width + (x + 1)];
            output[(y / 2) * (img_width / 2) + (x / 2)] = (unsigned char)(sum / 4);
        }
    }
}


__attribute__((sdx_kernel("process_images", 0))) void process_images(unsigned char *input, unsigned char *conv_output, unsigned char *max_output, unsigned char *min_output, unsigned char *avg_output, int img_height, int img_width) {
#line 19 "C:/SchoolWerk/HAC/HLSEindoefening/solution1/csynth.tcl"
#pragma HLSDIRECTIVE TOP name=process_images
# 57 "HLSEindoefening/hls_process_images.c"

#line 7 "C:/SchoolWerk/HAC/HLSEindoefening/solution1/directives.tcl"
#pragma HLSDIRECTIVE TOP name=process_images
# 57 "HLSEindoefening/hls_process_images.c"

#pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=conv_output offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=max_output offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=min_output offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=avg_output offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=return bundle=control

 unsigned char conv_result[img_height * img_width];
    unsigned char max_result[(img_height / 2) * (img_width / 2)];
    unsigned char min_result[(img_height / 2) * (img_width / 2)];
    unsigned char avg_result[(img_height / 2) * (img_width / 2)];

    char kernel[3][3] = {
        { 1, 0, -1 },
        { 1, 0, -1 },
        { 1, 0, -1 }
    };


    convolution(input, conv_result, img_height, img_width, kernel);


    max_pooling(input, max_result, img_height, img_width);


    min_pooling(input, min_result, img_height, img_width);


    average_pooling(input, avg_result, img_height, img_width);


    VITIS_LOOP_89_1: for (int i = 0; i < img_height; i++) {
        VITIS_LOOP_90_2: for (int j = 0; j < img_width; j++) {
#pragma HLS PIPELINE
 conv_output[i * img_width + j] = conv_result[i * img_width + j];
        }
    }


    int pooled_height = img_height / 2;
    int pooled_width = img_width / 2;
    VITIS_LOOP_99_3: for (int i = 0; i < pooled_height; i++) {
        VITIS_LOOP_100_4: for (int j = 0; j < pooled_width; j++) {
#pragma HLS PIPELINE
 max_output[i * pooled_width + j] = max_result[i * pooled_width + j];
            min_output[i * pooled_width + j] = min_result[i * pooled_width + j];
            avg_output[i * pooled_width + j] = avg_result[i * pooled_width + j];
        }
    }
}
