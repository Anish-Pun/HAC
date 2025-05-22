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
#include "xpollings.h"

extern XPollings_Config XPollings_ConfigTable[];

#ifdef SDT
XPollings_Config *XPollings_LookupConfig(UINTPTR BaseAddress) {
	XPollings_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XPollings_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XPollings_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XPollings_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPollings_Initialize(XPollings *InstancePtr, UINTPTR BaseAddress) {
	XPollings_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPollings_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPollings_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XPollings_Config *XPollings_LookupConfig(u16 DeviceId) {
	XPollings_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPOLLINGS_NUM_INSTANCES; Index++) {
		if (XPollings_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPollings_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPollings_Initialize(XPollings *InstancePtr, u16 DeviceId) {
	XPollings_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPollings_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPollings_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

