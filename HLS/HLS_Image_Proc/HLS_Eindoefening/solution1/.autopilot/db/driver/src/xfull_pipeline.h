// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XFULL_PIPELINE_H
#define XFULL_PIPELINE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfull_pipeline_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XFull_pipeline_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFull_pipeline;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFull_pipeline_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFull_pipeline_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFull_pipeline_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFull_pipeline_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XFull_pipeline_Initialize(XFull_pipeline *InstancePtr, UINTPTR BaseAddress);
XFull_pipeline_Config* XFull_pipeline_LookupConfig(UINTPTR BaseAddress);
#else
int XFull_pipeline_Initialize(XFull_pipeline *InstancePtr, u16 DeviceId);
XFull_pipeline_Config* XFull_pipeline_LookupConfig(u16 DeviceId);
#endif
int XFull_pipeline_CfgInitialize(XFull_pipeline *InstancePtr, XFull_pipeline_Config *ConfigPtr);
#else
int XFull_pipeline_Initialize(XFull_pipeline *InstancePtr, const char* InstanceName);
int XFull_pipeline_Release(XFull_pipeline *InstancePtr);
#endif

void XFull_pipeline_Start(XFull_pipeline *InstancePtr);
u32 XFull_pipeline_IsDone(XFull_pipeline *InstancePtr);
u32 XFull_pipeline_IsIdle(XFull_pipeline *InstancePtr);
u32 XFull_pipeline_IsReady(XFull_pipeline *InstancePtr);
void XFull_pipeline_EnableAutoRestart(XFull_pipeline *InstancePtr);
void XFull_pipeline_DisableAutoRestart(XFull_pipeline *InstancePtr);

void XFull_pipeline_Set_input_r(XFull_pipeline *InstancePtr, u64 Data);
u64 XFull_pipeline_Get_input_r(XFull_pipeline *InstancePtr);
void XFull_pipeline_Set_height(XFull_pipeline *InstancePtr, u32 Data);
u32 XFull_pipeline_Get_height(XFull_pipeline *InstancePtr);
void XFull_pipeline_Set_width(XFull_pipeline *InstancePtr, u32 Data);
u32 XFull_pipeline_Get_width(XFull_pipeline *InstancePtr);
void XFull_pipeline_Set_kernel(XFull_pipeline *InstancePtr, u64 Data);
u64 XFull_pipeline_Get_kernel(XFull_pipeline *InstancePtr);
void XFull_pipeline_Set_conv_out(XFull_pipeline *InstancePtr, u64 Data);
u64 XFull_pipeline_Get_conv_out(XFull_pipeline *InstancePtr);
void XFull_pipeline_Set_max_out(XFull_pipeline *InstancePtr, u64 Data);
u64 XFull_pipeline_Get_max_out(XFull_pipeline *InstancePtr);
void XFull_pipeline_Set_min_out(XFull_pipeline *InstancePtr, u64 Data);
u64 XFull_pipeline_Get_min_out(XFull_pipeline *InstancePtr);
void XFull_pipeline_Set_avg_out(XFull_pipeline *InstancePtr, u64 Data);
u64 XFull_pipeline_Get_avg_out(XFull_pipeline *InstancePtr);

void XFull_pipeline_InterruptGlobalEnable(XFull_pipeline *InstancePtr);
void XFull_pipeline_InterruptGlobalDisable(XFull_pipeline *InstancePtr);
void XFull_pipeline_InterruptEnable(XFull_pipeline *InstancePtr, u32 Mask);
void XFull_pipeline_InterruptDisable(XFull_pipeline *InstancePtr, u32 Mask);
void XFull_pipeline_InterruptClear(XFull_pipeline *InstancePtr, u32 Mask);
u32 XFull_pipeline_InterruptGetEnabled(XFull_pipeline *InstancePtr);
u32 XFull_pipeline_InterruptGetStatus(XFull_pipeline *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
