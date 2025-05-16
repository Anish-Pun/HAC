// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xprocess_images.h"

extern XProcess_images_Config XProcess_images_ConfigTable[];

#ifdef SDT
XProcess_images_Config *XProcess_images_LookupConfig(UINTPTR BaseAddress) {
	XProcess_images_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XProcess_images_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XProcess_images_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XProcess_images_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XProcess_images_Initialize(XProcess_images *InstancePtr, UINTPTR BaseAddress) {
	XProcess_images_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XProcess_images_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XProcess_images_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XProcess_images_Config *XProcess_images_LookupConfig(u16 DeviceId) {
	XProcess_images_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPROCESS_IMAGES_NUM_INSTANCES; Index++) {
		if (XProcess_images_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XProcess_images_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XProcess_images_Initialize(XProcess_images *InstancePtr, u16 DeviceId) {
	XProcess_images_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XProcess_images_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XProcess_images_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

