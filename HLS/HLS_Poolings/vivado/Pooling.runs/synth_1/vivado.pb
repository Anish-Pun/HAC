
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:132

00:00:142	
485.8482	
201.465Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
{
 Loaded user IP repository '%s'.
1135*coregen24
2c:/Github/HLS_Pollings/Pollings_HLS/solution1/implZ19-1700h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Github/HLS_Pollings/vivado/Pooling.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2Y
WC:/Github/HLS_Pollings/vivado/Pooling.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
k
Command: %s
53*	vivadotcl2:
8synth_design -top design_1_wrapper -part xc7z020clg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px� 
D
Loading part %s157*device2
xc7z020clg400-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7z020clg400-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
1720Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1404.207 ; gain = 451.242
h px� 
�
synthesizing module '%s'638*oasys2
design_1_wrapper2\
XC:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
418@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

design_12T
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
40712

design_1_i2

design_12\
XC:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
688@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

design_12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
41018@Z8-638h px� 
�
-Port '%s' is missing in component declaration4102*oasys2
axi_dma_tstvec2V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
42138@Z8-5640h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_dma_0_02y
wC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_axi_dma_0_0_stub.vhdl2
62
	axi_dma_02
design_1_axi_dma_0_02V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
46938@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_dma_0_02{
wC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_axi_dma_0_0_stub.vhdl2
1188@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_mem_intercon_02V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
23538@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
m00_couplers_imp_1R706YB2V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
1978@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_auto_pc_12w
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_pc_1_stub.vhdl2
62	
auto_pc2
design_1_auto_pc_12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
4408@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_auto_pc_12y
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_pc_1_stub.vhdl2
918@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m00_couplers_imp_1R706YB2
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
1978@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
s00_couplers_imp_7HNO1D2V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
7768@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_auto_us_02w
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_0_stub.vhdl2
62	
auto_us2
design_1_auto_us_02V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
8778@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_auto_us_02y
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_0_stub.vhdl2
468@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
s00_couplers_imp_7HNO1D2
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
7768@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
s01_couplers_imp_1W60HW02V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
12788@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_auto_us_12w
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_1_stub.vhdl2
62	
auto_us2
design_1_auto_us_12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
13978@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_auto_us_12y
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_1_stub.vhdl2
528@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
s01_couplers_imp_1W60HW02
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
12788@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
s02_couplers_imp_8NCF022V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
15168@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_auto_us_22w
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_2_stub.vhdl2
62	
auto_us2
design_1_auto_us_22V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
17248@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_auto_us_22y
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_2_stub.vhdl2
848@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
s02_couplers_imp_8NCF022
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
15168@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
s03_couplers_imp_1UQ1PUB2V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
18858@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_auto_us_32w
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_3_stub.vhdl2
62	
auto_us2
design_1_auto_us_32V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
21178@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_auto_us_32y
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_us_3_stub.vhdl2
888@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
s03_couplers_imp_1UQ1PUB2
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
18858@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xbar_12t
rC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_xbar_1_stub.vhdl2
62
xbar2
design_1_xbar_12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
31688@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_xbar_12v
rC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_xbar_1_stub.vhdl2
908@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
design_1_axi_mem_intercon_02
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
23538@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_pollings_0_12z
xC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_pollings_0_1_stub.vhdl2
62

pollings_02
design_1_pollings_0_12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
49518@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_pollings_0_12|
xC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_pollings_0_1_stub.vhdl2
728@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
design_1_processing_system7_0_02�
�C:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_processing_system7_0_0_stub.vhdl2
62
processing_system7_02!
design_1_processing_system7_0_02V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
50148@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
design_1_processing_system7_0_02�
�C:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_processing_system7_0_0_stub.vhdl2
1198@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
design_1_ps7_0_axi_periph_12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
34618@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
m00_couplers_imp_15SPJYW2V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
568@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m00_couplers_imp_15SPJYW2
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
568@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m01_couplers_imp_XU9C552V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
5708@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m01_couplers_imp_XU9C552
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
5708@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m02_couplers_imp_14WQB4R2V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
6758@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m02_couplers_imp_14WQB4R2
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
6758@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
s00_couplers_imp_UYSKKA2V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
9858@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_auto_pc_02w
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_pc_0_stub.vhdl2
62	
auto_pc2
design_1_auto_pc_02V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
11688@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_auto_pc_02y
uC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_auto_pc_0_stub.vhdl2
718@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
s00_couplers_imp_UYSKKA2
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
9858@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xbar_02t
rC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_xbar_0_stub.vhdl2
62
xbar2
design_1_xbar_02V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
39548@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_xbar_02v
rC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_xbar_0_stub.vhdl2
528@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
design_1_ps7_0_axi_periph_12
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
34618@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_rst_ps7_0_50M_12}
{C:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_rst_ps7_0_50M_1_stub.vhdl2
62
rst_ps7_0_50M2
design_1_rst_ps7_0_50M_12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
52308@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_rst_ps7_0_50M_12
{C:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/.Xil/Vivado-14756-5CD322B2BW/realtime/design_1_rst_ps7_0_50M_1_stub.vhdl2
228@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

design_12
02
12V
Rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/synth/design_1.vhd2
41018@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
design_1_wrapper2
02
12\
XC:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
418@Z8-256h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s00_couplers_imp_UYSKKAZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s00_couplers_imp_UYSKKAZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M01_ACLK2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M02_ACLK2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S00_ACLK2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2
design_1_ps7_0_axi_periph_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s03_couplers_imp_1UQ1PUBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s03_couplers_imp_1UQ1PUBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_arlock[1]2
s03_couplers_imp_1UQ1PUBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awlock[1]2
s03_couplers_imp_1UQ1PUBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s02_couplers_imp_8NCF02Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s02_couplers_imp_8NCF02Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s01_couplers_imp_1W60HW0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s01_couplers_imp_1W60HW0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s00_couplers_imp_7HNO1DZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s00_couplers_imp_7HNO1DZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_bid[5]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_bid[4]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_bid[3]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_bid[2]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_rid[5]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_rid[4]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_rid[3]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_rid[2]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[63]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[62]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[61]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[60]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[59]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[58]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[57]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[56]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[55]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[54]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[53]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[52]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[51]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[50]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[49]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[48]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[47]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[46]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[45]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[44]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[43]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[42]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[41]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[40]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[39]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[38]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[37]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[36]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[35]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[34]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[33]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_araddr[32]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[63]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[62]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[61]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[60]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[59]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[58]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[57]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[56]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[55]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[54]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[53]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[52]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[51]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[50]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[49]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[48]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[47]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[46]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[45]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[44]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[43]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[42]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[41]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[40]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[39]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_awaddr[38]2
m00_couplers_imp_1R706YBZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1535.703 ; gain = 582.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1535.703 ; gain = 582.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1535.703 ; gain = 582.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0802

1535.7032
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2#
design_1_i/processing_system7_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2#
design_1_i/processing_system7_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0/design_1_axi_dma_0_0_in_context.xdc2
design_1_i/axi_dma_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0/design_1_axi_dma_0_0_in_context.xdc2
design_1_i/axi_dma_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2$
 design_1_i/ps7_0_axi_periph/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2$
 design_1_i/ps7_0_axi_periph/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc24
0design_1_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc24
0design_1_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_1/design_1_rst_ps7_0_50M_1/design_1_rst_ps7_0_50M_1_in_context.xdc2
design_1_i/rst_ps7_0_50M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_1/design_1_rst_ps7_0_50M_1/design_1_rst_ps7_0_50M_1_in_context.xdc2
design_1_i/rst_ps7_0_50M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1/design_1_xbar_1_in_context.xdc2$
 design_1_i/axi_mem_intercon/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1/design_1_xbar_1_in_context.xdc2$
 design_1_i/axi_mem_intercon/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0/design_1_auto_us_0_in_context.xdc24
0design_1_i/axi_mem_intercon/s00_couplers/auto_us	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0/design_1_auto_us_0_in_context.xdc24
0design_1_i/axi_mem_intercon/s00_couplers/auto_us	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1/design_1_auto_us_1_in_context.xdc24
0design_1_i/axi_mem_intercon/s01_couplers/auto_us	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1/design_1_auto_us_1_in_context.xdc24
0design_1_i/axi_mem_intercon/s01_couplers/auto_us	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_2/design_1_auto_us_2/design_1_auto_us_2_in_context.xdc24
0design_1_i/axi_mem_intercon/s02_couplers/auto_us	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_2/design_1_auto_us_2/design_1_auto_us_2_in_context.xdc24
0design_1_i/axi_mem_intercon/s02_couplers/auto_us	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_3/design_1_auto_us_3/design_1_auto_us_3_in_context.xdc24
0design_1_i/axi_mem_intercon/s03_couplers/auto_us	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_us_3/design_1_auto_us_3/design_1_auto_us_3_in_context.xdc24
0design_1_i/axi_mem_intercon/s03_couplers/auto_us	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1/design_1_auto_pc_1_in_context.xdc24
0design_1_i/axi_mem_intercon/m00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1/design_1_auto_pc_1_in_context.xdc24
0design_1_i/axi_mem_intercon/m00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_pollings_0_1/design_1_pollings_0_1/design_1_pollings_0_1_in_context.xdc2
design_1_i/pollings_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_pollings_0_1/design_1_pollings_0_1/design_1_pollings_0_1_in_context.xdc2
design_1_i/pollings_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2E
AC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2E
AC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1543.8012
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0202

1543.8012
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z020clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
O
%s
*synth27
5|      |BlackBox name                   |Instances |
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
O
%s
*synth27
5|1     |design_1_xbar_1                 |         1|
h p
x
� 
O
%s
*synth27
5|2     |design_1_auto_pc_1              |         1|
h p
x
� 
O
%s
*synth27
5|3     |design_1_auto_us_0              |         1|
h p
x
� 
O
%s
*synth27
5|4     |design_1_auto_us_1              |         1|
h p
x
� 
O
%s
*synth27
5|5     |design_1_auto_us_2              |         1|
h p
x
� 
O
%s
*synth27
5|6     |design_1_auto_us_3              |         1|
h p
x
� 
O
%s
*synth27
5|7     |design_1_xbar_0                 |         1|
h p
x
� 
O
%s
*synth27
5|8     |design_1_auto_pc_0              |         1|
h p
x
� 
O
%s
*synth27
5|9     |design_1_axi_dma_0_0            |         1|
h p
x
� 
O
%s
*synth27
5|10    |design_1_pollings_0_1           |         1|
h p
x
� 
O
%s
*synth27
5|11    |design_1_processing_system7_0_0 |         1|
h p
x
� 
O
%s
*synth27
5|12    |design_1_rst_ps7_0_50M_1        |         1|
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
P
%s*synth28
6+------+-------------------------------------+------+
h px� 
P
%s*synth28
6|      |Cell                                 |Count |
h px� 
P
%s*synth28
6+------+-------------------------------------+------+
h px� 
P
%s*synth28
6|1     |design_1_auto_pc_0_bbox              |     1|
h px� 
P
%s*synth28
6|2     |design_1_auto_pc_1_bbox              |     1|
h px� 
P
%s*synth28
6|3     |design_1_auto_us_0_bbox              |     1|
h px� 
P
%s*synth28
6|4     |design_1_auto_us_1_bbox              |     1|
h px� 
P
%s*synth28
6|5     |design_1_auto_us_2_bbox              |     1|
h px� 
P
%s*synth28
6|6     |design_1_auto_us_3_bbox              |     1|
h px� 
P
%s*synth28
6|7     |design_1_axi_dma_0_0_bbox            |     1|
h px� 
P
%s*synth28
6|8     |design_1_pollings_0_1_bbox           |     1|
h px� 
P
%s*synth28
6|9     |design_1_processing_system7_0_0_bbox |     1|
h px� 
P
%s*synth28
6|10    |design_1_rst_ps7_0_50M_1_bbox        |     1|
h px� 
P
%s*synth28
6|11    |design_1_xbar_0_bbox                 |     1|
h px� 
P
%s*synth28
6|12    |design_1_xbar_1_bbox                 |     1|
h px� 
P
%s*synth28
6+------+-------------------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 29 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:37 ; elapsed = 00:00:53 . Memory (MB): peak = 1543.801 ; gain = 582.738
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1543.801 ; gain = 590.836
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0752

1543.8012
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1543.8012
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

28e2c42eZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
742
1022
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:062

00:01:122

1546.1332

1024.930Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2I
GC:/Github/HLS_Pollings/vivado/Pooling.runs/synth_1/design_1_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2k
ireport_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat May 17 19:22:11 2025Z17-206h px� 


End Record