
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:212

00:00:222	
486.5312	
200.895Z17-268h px� 
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
e
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
design_1_xbar_1Z19-6924h px� 
�
Command: %s
53*	vivadotcl2d
bsynth_design -top design_1_xbar_1 -part xc7z020clg400-1 -incremental_mode off -mode out_of_contextZ4-113h px� 
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
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
10028Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1386.359 ; gain = 446.629
h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_xbar_12
 2n
jc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_1/synth/design_1_xbar_1.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_axi_crossbar2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
48718@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
axi_crossbar_v2_1_32_crossbar2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
22328@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2$
"axi_crossbar_v2_1_32_si_transactor2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_addr_decoder2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2-
+generic_baseblocks_v2_1_2_comparator_static2
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
21198@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2%
#generic_baseblocks_v2_1_2_carry_and2
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
608@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
#generic_baseblocks_v2_1_2_carry_and2
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
608@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+generic_baseblocks_v2_1_2_comparator_static2
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
21198@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_addr_decoder2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
#axi_data_fifo_v2_1_30_axic_srl_fifo2
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
axi_data_fifo_v2_1_30_ndeep_srl2
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
11298@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
SRLC32E2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1374128@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
SRLC32E2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1374128@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
axi_data_fifo_v2_1_30_ndeep_srl2
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
11298@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
#axi_data_fifo_v2_1_30_axic_srl_fifo2
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!generic_baseblocks_v2_1_2_mux_enc2
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!generic_baseblocks_v2_1_2_mux_enc2
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
"axi_crossbar_v2_1_32_si_transactor2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized02
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized02
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized02
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized02
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
axi_crossbar_v2_1_32_splitter2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
44518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axi_crossbar_v2_1_32_splitter2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
44518@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_wdata_router2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
47248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2)
'axi_data_fifo_v2_1_30_axic_reg_srl_fifo2
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys21
/axi_data_fifo_v2_1_30_ndeep_srl__parameterized02
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
11298@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
/axi_data_fifo_v2_1_30_ndeep_srl__parameterized02
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
11298@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
9828@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
'axi_data_fifo_v2_1_30_axic_reg_srl_fifo2
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_wdata_router2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
47248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized12
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys25
3axi_data_fifo_v2_1_30_axic_srl_fifo__parameterized02
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys21
/axi_data_fifo_v2_1_30_ndeep_srl__parameterized12
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
11298@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
/axi_data_fifo_v2_1_30_ndeep_srl__parameterized12
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
11298@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
3axi_data_fifo_v2_1_30_axic_srl_fifo__parameterized02
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized12
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized22
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized22
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1axi_crossbar_v2_1_32_wdata_router__parameterized02
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
47248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized02
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
9828@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized02
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1axi_crossbar_v2_1_32_wdata_router__parameterized02
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
47248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized32
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized32
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized42
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
2axi_crossbar_v2_1_32_si_transactor__parameterized42
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
37918@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1axi_crossbar_v2_1_32_addr_decoder__parameterized02
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1axi_crossbar_v2_1_32_addr_decoder__parameterized02
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1axi_crossbar_v2_1_32_addr_decoder__parameterized12
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1axi_crossbar_v2_1_32_addr_decoder__parameterized12
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
3axi_data_fifo_v2_1_30_axic_srl_fifo__parameterized12
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
3axi_data_fifo_v2_1_30_axic_srl_fifo__parameterized12
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
axi_crossbar_v2_1_32_wdata_mux2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
45508@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized12
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
9828@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized12
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized12
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized12
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
axi_crossbar_v2_1_32_wdata_mux2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
45508@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
-axi_register_slice_v2_1_31_axi_register_slice2
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
37188@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
$axi_infrastructure_v1_1_0_axi2vector2
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$axi_infrastructure_v1_1_0_axi2vector2
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
$axi_infrastructure_v1_1_0_vector2axi2
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
4738@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$axi_infrastructure_v1_1_0_vector2axi2
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
4738@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
.axi_register_slice_v2_1_31_axic_register_slice2
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
.axi_register_slice_v2_1_31_axic_register_slice2
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized02
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized02
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized12
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized12
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized22
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized22
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
-axi_register_slice_v2_1_31_axi_register_slice2
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
37188@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_31_axi_register_slice2
reg_slice_mi2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_31_axi_register_slice2
932
922p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys23
1axi_crossbar_v2_1_32_addr_decoder__parameterized22
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1axi_crossbar_v2_1_32_addr_decoder__parameterized22
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
3axi_data_fifo_v2_1_30_axic_srl_fifo__parameterized22
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
3axi_data_fifo_v2_1_30_axic_srl_fifo__parameterized22
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
6948@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
.axi_crossbar_v2_1_32_wdata_mux__parameterized02
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
45508@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized22
 2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
9828@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized22
 2
02
12q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
8848@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
.axi_crossbar_v2_1_32_wdata_mux__parameterized02
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
45508@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_31_axi_register_slice2
reg_slice_mi2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_31_axi_register_slice2
932
922p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_decerr_slave2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
34938@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
36268@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_decerr_slave2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
34938@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_addr_arbiter2
 2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
4208@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized22
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized22
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized32
 2v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized32
 2
02
12v
rc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_addr_arbiter2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
4208@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axi_crossbar_v2_1_32_crossbar2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
22328@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_axi_crossbar2
 2
02
12p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
48718@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_xbar_12
 2
02
12n
jc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_1/synth/design_1_xbar_1.v2
538@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
areset_d1_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
S_READY_i_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2D
Bgen_single_thread.gen_debug_r_single_thread.debug_r_beat_cnt_i_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41848@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
gen_single_thread.active_id_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41428@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2D
Bgen_single_thread.gen_debug_r_single_thread.debug_r_beat_cnt_i_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41848@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
gen_single_thread.active_id_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41428@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
areset_d1_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
S_READY_i_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2D
Bgen_single_thread.gen_debug_r_single_thread.debug_r_beat_cnt_i_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41848@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
gen_single_thread.active_id_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41428@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2D
Bgen_single_thread.gen_debug_r_single_thread.debug_r_beat_cnt_i_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41848@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
gen_single_thread.active_id_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
41428@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
areset_d1_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
S_READY_i_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
s_ready_i_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
10348@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
s_ready_i_reg2q
mc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v2
10348@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[0].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[1].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2p
lc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK20
.axi_register_slice_v2_1_31_axic_register_sliceZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET20
.axi_register_slice_v2_1_31_axic_register_sliceZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET2@
>axi_register_slice_v2_1_31_axic_register_slice__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[0]2&
$axi_infrastructure_v1_1_0_vector2axiZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_ruser[0]2&
$axi_infrastructure_v1_1_0_vector2axiZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awuser[0]2&
$axi_infrastructure_v1_1_0_axi2vectorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[1]2&
$axi_infrastructure_v1_1_0_axi2vectorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[0]2&
$axi_infrastructure_v1_1_0_axi2vectorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wuser[0]2&
$axi_infrastructure_v1_1_0_axi2vectorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_aruser[0]2&
$axi_infrastructure_v1_1_0_axi2vectorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aclk2x2/
-axi_register_slice_v2_1_31_axi_register_sliceZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[1]2#
!axi_crossbar_v2_1_32_addr_decoderZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[0]2#
!axi_crossbar_v2_1_32_addr_decoderZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[1]24
2axi_crossbar_v2_1_32_si_transactor__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[0]24
2axi_crossbar_v2_1_32_si_transactor__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[1]2$
"axi_crossbar_v2_1_32_si_transactorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[0]2$
"axi_crossbar_v2_1_32_si_transactorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[1]24
2axi_crossbar_v2_1_32_si_transactor__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[0]24
2axi_crossbar_v2_1_32_si_transactor__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[1]24
2axi_crossbar_v2_1_32_si_transactor__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[0]24
2axi_crossbar_v2_1_32_si_transactor__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[7]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[6]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[5]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[4]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[3]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[2]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[1]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[0]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[63]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[62]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[61]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[60]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[59]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[58]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[57]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[56]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[55]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[54]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[53]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[52]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[51]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[50]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[49]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[48]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[47]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[46]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[45]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[44]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[43]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[42]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[41]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[40]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[39]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[38]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[37]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[36]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[35]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[34]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[33]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[32]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[31]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[30]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[29]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[28]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[27]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[26]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[25]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[24]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[23]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[22]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[21]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[20]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[19]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[18]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[17]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[16]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[15]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[14]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[13]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[12]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[11]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[10]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[9]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[8]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[7]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[6]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[5]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[4]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[3]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[2]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[1]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[0]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWLEN[7]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWLEN[6]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWLEN[5]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWLEN[4]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWLEN[3]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWLEN[2]2
axi_crossbar_v2_1_32_crossbarZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:43 ; elapsed = 00:00:57 . Memory (MB): peak = 1650.227 ; gain = 710.496
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:44 ; elapsed = 00:00:57 . Memory (MB): peak = 1650.227 ; gain = 710.496
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:44 ; elapsed = 00:00:57 . Memory (MB): peak = 1650.227 ; gain = 710.496
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
00:00:00.2552

1650.2272
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
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2n
jc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1_ooc.xdc2
inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2n
jc:/Github/HLS_Pollings/vivado/Pooling.gen/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1_ooc.xdc2
inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2U
QC:/Github/HLS_Pollings/vivado/Pooling.runs/design_1_xbar_1_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2U
QC:/Github/HLS_Pollings/vivado/Pooling.runs/design_1_xbar_1_synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1748.2462
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

00:00:012
00:00:00.2032

1748.2462
0.000Z17-268h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:01:06 ; elapsed = 00:01:21 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:01:06 ; elapsed = 00:01:21 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:06 ; elapsed = 00:01:21 . Memory (MB): peak = 1748.246 ; gain = 808.516
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2)
'axi_data_fifo_v2_1_30_axic_reg_srl_fifoZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized0Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized1Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized2Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_axi.write_cs_reg2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    ZERO |                             1000 |                               10
h p
x
� 
y
%s
*synth2a
_                     ONE |                             0010 |                               11
h p
x
� 
y
%s
*synth2a
_                     TWO |                             0001 |                               01
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0100 |                               00
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2)
'axi_data_fifo_v2_1_30_axic_reg_srl_fifoZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    ZERO |                             1000 |                               10
h p
x
� 
y
%s
*synth2a
_                     ONE |                             0010 |                               11
h p
x
� 
y
%s
*synth2a
_                     TWO |                             0001 |                               01
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0100 |                               00
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized0Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    ZERO |                             1000 |                               10
h p
x
� 
y
%s
*synth2a
_                     ONE |                             0010 |                               11
h p
x
� 
y
%s
*synth2a
_                     TWO |                             0001 |                               01
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0100 |                               00
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized1Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    ZERO |                             1000 |                               10
h p
x
� 
y
%s
*synth2a
_                     ONE |                             0010 |                               11
h p
x
� 
y
%s
*synth2a
_                     TWO |                             0001 |                               01
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0100 |                               00
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized2Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_            P_WRITE_IDLE |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_            P_WRITE_DATA |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_            P_WRITE_RESP |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_axi.write_cs_reg2	
one-hot2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:09 ; elapsed = 00:01:24 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 10    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 4     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 13    
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               97 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               69 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 24    
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 29    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 49    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   69 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 21    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 26    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 114   
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 15    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 8     
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
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
'wrouter_aw_fifo/FSM_onehot_state_reg[2]2#
!axi_crossbar_v2_1_32_wdata_routerZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
'wrouter_aw_fifo/FSM_onehot_state_reg[2]23
1axi_crossbar_v2_1_32_wdata_router__parameterized0Z8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FSM_onehot_state_reg[2]29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized1Z8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FSM_onehot_state_reg[2]29
7axi_data_fifo_v2_1_30_axic_reg_srl_fifo__parameterized2Z8-3332h px�
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:21 ; elapsed = 00:01:37 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:37 ; elapsed = 00:01:55 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
}Finished Timing Optimization : Time (s): cpu = 00:01:39 ; elapsed = 00:01:58 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
|Finished Technology Mapping : Time (s): cpu = 00:01:41 ; elapsed = 00:01:59 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
vFinished IO Insertion : Time (s): cpu = 00:01:56 ; elapsed = 00:02:15 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:56 ; elapsed = 00:02:15 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:56 ; elapsed = 00:02:15 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:56 ; elapsed = 00:02:15 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:57 ; elapsed = 00:02:15 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:57 ; elapsed = 00:02:16 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|      |Cell    |Count |
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|1     |LUT1    |     7|
h px� 
3
%s*synth2
|2     |LUT2    |   131|
h px� 
3
%s*synth2
|3     |LUT3    |   233|
h px� 
3
%s*synth2
|4     |LUT4    |    65|
h px� 
3
%s*synth2
|5     |LUT5    |   307|
h px� 
3
%s*synth2
|6     |LUT6    |   171|
h px� 
3
%s*synth2
|7     |SRLC32E |     7|
h px� 
3
%s*synth2
|8     |FDRE    |   471|
h px� 
3
%s*synth2
|9     |FDSE    |    24|
h px� 
3
%s*synth2
+------+--------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:57 ; elapsed = 00:02:16 . Memory (MB): peak = 1748.246 ; gain = 808.516
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 596 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:06 ; elapsed = 00:02:08 . Memory (MB): peak = 1748.246 ; gain = 710.496
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:57 ; elapsed = 00:02:16 . Memory (MB): peak = 1748.246 ; gain = 808.516
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
00:00:00.1042

1748.2462
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

1748.2462
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

bf0831a2Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1302
1232
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

00:02:122

00:02:342

1748.2462

1240.504Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0062

1748.2462
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2X
VC:/Github/HLS_Pollings/vivado/Pooling.runs/design_1_xbar_1_synth_1/design_1_xbar_1.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
design_1_xbar_12
a2ad327dc0a03944Z2-1648h px� 
?
Renamed %s cell refs.
330*coretcl2
40Z2-1174h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0072

1748.2462
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2X
VC:/Github/HLS_Pollings/vivado/Pooling.runs/design_1_xbar_1_synth_1/design_1_xbar_1.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2i
greport_utilization -file design_1_xbar_1_utilization_synth.rpt -pb design_1_xbar_1_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat May 17 18:43:51 2025Z17-206h px� 


End Record