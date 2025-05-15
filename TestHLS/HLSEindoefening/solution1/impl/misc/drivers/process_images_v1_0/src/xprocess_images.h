// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XPROCESS_IMAGES_H
#define XPROCESS_IMAGES_H

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
#include "xprocess_images_hw.h"

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
} XProcess_images_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XProcess_images;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XProcess_images_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XProcess_images_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XProcess_images_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XProcess_images_ReadReg(BaseAddress, RegOffset) \
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
int XProcess_images_Initialize(XProcess_images *InstancePtr, UINTPTR BaseAddress);
XProcess_images_Config* XProcess_images_LookupConfig(UINTPTR BaseAddress);
#else
int XProcess_images_Initialize(XProcess_images *InstancePtr, u16 DeviceId);
XProcess_images_Config* XProcess_images_LookupConfig(u16 DeviceId);
#endif
int XProcess_images_CfgInitialize(XProcess_images *InstancePtr, XProcess_images_Config *ConfigPtr);
#else
int XProcess_images_Initialize(XProcess_images *InstancePtr, const char* InstanceName);
int XProcess_images_Release(XProcess_images *InstancePtr);
#endif

void XProcess_images_Start(XProcess_images *InstancePtr);
u32 XProcess_images_IsDone(XProcess_images *InstancePtr);
u32 XProcess_images_IsIdle(XProcess_images *InstancePtr);
u32 XProcess_images_IsReady(XProcess_images *InstancePtr);
void XProcess_images_EnableAutoRestart(XProcess_images *InstancePtr);
void XProcess_images_DisableAutoRestart(XProcess_images *InstancePtr);

void XProcess_images_Set_img_height(XProcess_images *InstancePtr, u32 Data);
u32 XProcess_images_Get_img_height(XProcess_images *InstancePtr);
void XProcess_images_Set_img_width(XProcess_images *InstancePtr, u32 Data);
u32 XProcess_images_Get_img_width(XProcess_images *InstancePtr);

void XProcess_images_InterruptGlobalEnable(XProcess_images *InstancePtr);
void XProcess_images_InterruptGlobalDisable(XProcess_images *InstancePtr);
void XProcess_images_InterruptEnable(XProcess_images *InstancePtr, u32 Mask);
void XProcess_images_InterruptDisable(XProcess_images *InstancePtr, u32 Mask);
void XProcess_images_InterruptClear(XProcess_images *InstancePtr, u32 Mask);
u32 XProcess_images_InterruptGetEnabled(XProcess_images *InstancePtr);
u32 XProcess_images_InterruptGetStatus(XProcess_images *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
