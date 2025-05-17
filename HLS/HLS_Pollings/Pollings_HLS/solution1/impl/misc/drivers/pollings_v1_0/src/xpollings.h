// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XPOLLINGS_H
#define XPOLLINGS_H

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
#include "xpollings_hw.h"

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
    u64 Control_r_BaseAddress;
} XPollings_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XPollings;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPollings_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPollings_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPollings_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPollings_ReadReg(BaseAddress, RegOffset) \
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
int XPollings_Initialize(XPollings *InstancePtr, UINTPTR BaseAddress);
XPollings_Config* XPollings_LookupConfig(UINTPTR BaseAddress);
#else
int XPollings_Initialize(XPollings *InstancePtr, u16 DeviceId);
XPollings_Config* XPollings_LookupConfig(u16 DeviceId);
#endif
int XPollings_CfgInitialize(XPollings *InstancePtr, XPollings_Config *ConfigPtr);
#else
int XPollings_Initialize(XPollings *InstancePtr, const char* InstanceName);
int XPollings_Release(XPollings *InstancePtr);
#endif

void XPollings_Start(XPollings *InstancePtr);
u32 XPollings_IsDone(XPollings *InstancePtr);
u32 XPollings_IsIdle(XPollings *InstancePtr);
u32 XPollings_IsReady(XPollings *InstancePtr);
void XPollings_EnableAutoRestart(XPollings *InstancePtr);
void XPollings_DisableAutoRestart(XPollings *InstancePtr);

void XPollings_Set_in_img(XPollings *InstancePtr, u64 Data);
u64 XPollings_Get_in_img(XPollings *InstancePtr);
void XPollings_Set_max_pool(XPollings *InstancePtr, u64 Data);
u64 XPollings_Get_max_pool(XPollings *InstancePtr);
void XPollings_Set_min_pool(XPollings *InstancePtr, u64 Data);
u64 XPollings_Get_min_pool(XPollings *InstancePtr);
void XPollings_Set_avg_pool(XPollings *InstancePtr, u64 Data);
u64 XPollings_Get_avg_pool(XPollings *InstancePtr);

void XPollings_InterruptGlobalEnable(XPollings *InstancePtr);
void XPollings_InterruptGlobalDisable(XPollings *InstancePtr);
void XPollings_InterruptEnable(XPollings *InstancePtr, u32 Mask);
void XPollings_InterruptDisable(XPollings *InstancePtr, u32 Mask);
void XPollings_InterruptClear(XPollings *InstancePtr, u32 Mask);
u32 XPollings_InterruptGetEnabled(XPollings *InstancePtr);
u32 XPollings_InterruptGetStatus(XPollings *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
