// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xfull_pipeline.h"

extern XFull_pipeline_Config XFull_pipeline_ConfigTable[];

#ifdef SDT
XFull_pipeline_Config *XFull_pipeline_LookupConfig(UINTPTR BaseAddress) {
	XFull_pipeline_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XFull_pipeline_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XFull_pipeline_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XFull_pipeline_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFull_pipeline_Initialize(XFull_pipeline *InstancePtr, UINTPTR BaseAddress) {
	XFull_pipeline_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFull_pipeline_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFull_pipeline_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XFull_pipeline_Config *XFull_pipeline_LookupConfig(u16 DeviceId) {
	XFull_pipeline_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFULL_PIPELINE_NUM_INSTANCES; Index++) {
		if (XFull_pipeline_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFull_pipeline_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFull_pipeline_Initialize(XFull_pipeline *InstancePtr, u16 DeviceId) {
	XFull_pipeline_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFull_pipeline_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFull_pipeline_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

