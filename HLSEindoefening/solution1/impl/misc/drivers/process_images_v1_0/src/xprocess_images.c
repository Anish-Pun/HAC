// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xprocess_images.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XProcess_images_CfgInitialize(XProcess_images *InstancePtr, XProcess_images_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XProcess_images_Start(XProcess_images *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL) & 0x80;
    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XProcess_images_IsDone(XProcess_images *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XProcess_images_IsIdle(XProcess_images *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XProcess_images_IsReady(XProcess_images *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XProcess_images_EnableAutoRestart(XProcess_images *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XProcess_images_DisableAutoRestart(XProcess_images *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_AP_CTRL, 0);
}

void XProcess_images_Set_img_height(XProcess_images *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IMG_HEIGHT_DATA, Data);
}

u32 XProcess_images_Get_img_height(XProcess_images *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IMG_HEIGHT_DATA);
    return Data;
}

void XProcess_images_Set_img_width(XProcess_images *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IMG_WIDTH_DATA, Data);
}

u32 XProcess_images_Get_img_width(XProcess_images *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IMG_WIDTH_DATA);
    return Data;
}

void XProcess_images_Set_input_r(XProcess_images *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_INPUT_R_DATA, (u32)(Data));
    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XProcess_images_Get_input_r(XProcess_images *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_INPUT_R_DATA);
    Data += (u64)XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XProcess_images_Set_conv_output(XProcess_images *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_CONV_OUTPUT_DATA, (u32)(Data));
    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_CONV_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XProcess_images_Get_conv_output(XProcess_images *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_CONV_OUTPUT_DATA);
    Data += (u64)XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_CONV_OUTPUT_DATA + 4) << 32;
    return Data;
}

void XProcess_images_Set_max_output(XProcess_images *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MAX_OUTPUT_DATA, (u32)(Data));
    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MAX_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XProcess_images_Get_max_output(XProcess_images *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MAX_OUTPUT_DATA);
    Data += (u64)XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MAX_OUTPUT_DATA + 4) << 32;
    return Data;
}

void XProcess_images_Set_min_output(XProcess_images *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MIN_OUTPUT_DATA, (u32)(Data));
    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MIN_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XProcess_images_Get_min_output(XProcess_images *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MIN_OUTPUT_DATA);
    Data += (u64)XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_MIN_OUTPUT_DATA + 4) << 32;
    return Data;
}

void XProcess_images_Set_avg_output(XProcess_images *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_AVG_OUTPUT_DATA, (u32)(Data));
    XProcess_images_WriteReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_AVG_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XProcess_images_Get_avg_output(XProcess_images *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_AVG_OUTPUT_DATA);
    Data += (u64)XProcess_images_ReadReg(InstancePtr->Control_r_BaseAddress, XPROCESS_IMAGES_CONTROL_R_ADDR_AVG_OUTPUT_DATA + 4) << 32;
    return Data;
}

void XProcess_images_InterruptGlobalEnable(XProcess_images *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_GIE, 1);
}

void XProcess_images_InterruptGlobalDisable(XProcess_images *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_GIE, 0);
}

void XProcess_images_InterruptEnable(XProcess_images *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IER);
    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IER, Register | Mask);
}

void XProcess_images_InterruptDisable(XProcess_images *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IER);
    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IER, Register & (~Mask));
}

void XProcess_images_InterruptClear(XProcess_images *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_images_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_ISR, Mask);
}

u32 XProcess_images_InterruptGetEnabled(XProcess_images *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_IER);
}

u32 XProcess_images_InterruptGetStatus(XProcess_images *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XProcess_images_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_IMAGES_CONTROL_ADDR_ISR);
}

