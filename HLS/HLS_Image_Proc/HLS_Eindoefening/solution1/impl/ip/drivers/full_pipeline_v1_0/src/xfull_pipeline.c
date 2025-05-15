// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfull_pipeline.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFull_pipeline_CfgInitialize(XFull_pipeline *InstancePtr, XFull_pipeline_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFull_pipeline_Start(XFull_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFull_pipeline_IsDone(XFull_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFull_pipeline_IsIdle(XFull_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFull_pipeline_IsReady(XFull_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFull_pipeline_EnableAutoRestart(XFull_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFull_pipeline_DisableAutoRestart(XFull_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AP_CTRL, 0);
}

void XFull_pipeline_Set_input_r(XFull_pipeline *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFull_pipeline_Get_input_r(XFull_pipeline *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XFull_pipeline_Set_height(XFull_pipeline *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_HEIGHT_DATA, Data);
}

u32 XFull_pipeline_Get_height(XFull_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_HEIGHT_DATA);
    return Data;
}

void XFull_pipeline_Set_width(XFull_pipeline *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_WIDTH_DATA, Data);
}

u32 XFull_pipeline_Get_width(XFull_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_WIDTH_DATA);
    return Data;
}

void XFull_pipeline_Set_kernel(XFull_pipeline *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_KERNEL_DATA, (u32)(Data));
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XFull_pipeline_Get_kernel(XFull_pipeline *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_KERNEL_DATA);
    Data += (u64)XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_KERNEL_DATA + 4) << 32;
    return Data;
}

void XFull_pipeline_Set_conv_out(XFull_pipeline *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_CONV_OUT_DATA, (u32)(Data));
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_CONV_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFull_pipeline_Get_conv_out(XFull_pipeline *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_CONV_OUT_DATA);
    Data += (u64)XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_CONV_OUT_DATA + 4) << 32;
    return Data;
}

void XFull_pipeline_Set_max_out(XFull_pipeline *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MAX_OUT_DATA, (u32)(Data));
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MAX_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFull_pipeline_Get_max_out(XFull_pipeline *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MAX_OUT_DATA);
    Data += (u64)XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MAX_OUT_DATA + 4) << 32;
    return Data;
}

void XFull_pipeline_Set_min_out(XFull_pipeline *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MIN_OUT_DATA, (u32)(Data));
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MIN_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFull_pipeline_Get_min_out(XFull_pipeline *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MIN_OUT_DATA);
    Data += (u64)XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_MIN_OUT_DATA + 4) << 32;
    return Data;
}

void XFull_pipeline_Set_avg_out(XFull_pipeline *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AVG_OUT_DATA, (u32)(Data));
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AVG_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFull_pipeline_Get_avg_out(XFull_pipeline *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AVG_OUT_DATA);
    Data += (u64)XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_AVG_OUT_DATA + 4) << 32;
    return Data;
}

void XFull_pipeline_InterruptGlobalEnable(XFull_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_GIE, 1);
}

void XFull_pipeline_InterruptGlobalDisable(XFull_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_GIE, 0);
}

void XFull_pipeline_InterruptEnable(XFull_pipeline *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_IER);
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_IER, Register | Mask);
}

void XFull_pipeline_InterruptDisable(XFull_pipeline *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_IER);
    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFull_pipeline_InterruptClear(XFull_pipeline *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFull_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_ISR, Mask);
}

u32 XFull_pipeline_InterruptGetEnabled(XFull_pipeline *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_IER);
}

u32 XFull_pipeline_InterruptGetStatus(XFull_pipeline *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFull_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XFULL_PIPELINE_CONTROL_ADDR_ISR);
}

