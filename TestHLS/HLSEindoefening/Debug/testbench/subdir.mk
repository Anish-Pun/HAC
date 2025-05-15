################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hls_process_images_tb.c 

OBJS += \
./testbench/hls_process_images_tb.o 

C_DEPS += \
./testbench/hls_process_images_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/hls_process_images_tb.o: C:/SchoolWerk/HAC/HLSEindoefening/hls_process_images_tb.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vitis/2024.2/include -IC:/Xilinx/Vitis/2024.2/include/etc -IC:/Xilinx/Vitis/2024.2/win64/tools/auto_cc/include -IC:/SchoolWerk/HAC -IC:/Xilinx/Vitis/2024.2/include/ap_sysc -IC:/Xilinx/Vitis/2024.2/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2024.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2024.1/include/etc -IC:/Xilinx/Vitis_HLS/2024.1/include -IC:/Xilinx/Vitis_HLS/2024.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2024.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


