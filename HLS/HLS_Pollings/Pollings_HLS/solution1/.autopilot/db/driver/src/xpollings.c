// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xpollings.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPollings_CfgInitialize(XPollings *InstancePtr, XPollings_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPollings_Start(XPollings *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPollings_IsDone(XPollings *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPollings_IsIdle(XPollings *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPollings_IsReady(XPollings *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPollings_EnableAutoRestart(XPollings *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPollings_DisableAutoRestart(XPollings *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_AP_CTRL, 0);
}

void XPollings_Set_in_img(XPollings *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_IN_IMG_DATA, (u32)(Data));
    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_IN_IMG_DATA + 4, (u32)(Data >> 32));
}

u64 XPollings_Get_in_img(XPollings *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_IN_IMG_DATA);
    Data += (u64)XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_IN_IMG_DATA + 4) << 32;
    return Data;
}

void XPollings_Set_max_pool(XPollings *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MAX_POOL_DATA, (u32)(Data));
    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MAX_POOL_DATA + 4, (u32)(Data >> 32));
}

u64 XPollings_Get_max_pool(XPollings *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MAX_POOL_DATA);
    Data += (u64)XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MAX_POOL_DATA + 4) << 32;
    return Data;
}

void XPollings_Set_min_pool(XPollings *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MIN_POOL_DATA, (u32)(Data));
    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MIN_POOL_DATA + 4, (u32)(Data >> 32));
}

u64 XPollings_Get_min_pool(XPollings *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MIN_POOL_DATA);
    Data += (u64)XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_MIN_POOL_DATA + 4) << 32;
    return Data;
}

void XPollings_Set_avg_pool(XPollings *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_AVG_POOL_DATA, (u32)(Data));
    XPollings_WriteReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_AVG_POOL_DATA + 4, (u32)(Data >> 32));
}

u64 XPollings_Get_avg_pool(XPollings *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_AVG_POOL_DATA);
    Data += (u64)XPollings_ReadReg(InstancePtr->Control_r_BaseAddress, XPOLLINGS_CONTROL_R_ADDR_AVG_POOL_DATA + 4) << 32;
    return Data;
}

void XPollings_InterruptGlobalEnable(XPollings *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_GIE, 1);
}

void XPollings_InterruptGlobalDisable(XPollings *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_GIE, 0);
}

void XPollings_InterruptEnable(XPollings *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_IER);
    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_IER, Register | Mask);
}

void XPollings_InterruptDisable(XPollings *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_IER);
    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPollings_InterruptClear(XPollings *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPollings_WriteReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_ISR, Mask);
}

u32 XPollings_InterruptGetEnabled(XPollings *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_IER);
}

u32 XPollings_InterruptGetStatus(XPollings *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPollings_ReadReg(InstancePtr->Control_BaseAddress, XPOLLINGS_CONTROL_ADDR_ISR);
}

