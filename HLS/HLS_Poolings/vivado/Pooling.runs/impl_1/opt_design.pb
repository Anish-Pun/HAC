
=
Command: %s
53*	vivadotcl2

opt_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7z020Z17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7z020Z17-349h px� 
\
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22h px� 
@

Starting %s Task
103*constraints2
DRCZ18-103h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
C
DRC finished with %s
272*project2

0 ErrorsZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1762.918 ; gain = 0.000h px� 
U

Starting %s Task
103*constraints2
Cache Timing InformationZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
V
%s*common2=
;Ending Cache Timing Information Task | Checksum: 20506b4d7
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 1762.918 ; gain = 0.000h px� 
O

Starting %s Task
103*constraints2
Logic OptimizationZ18-103h px� 
K

Phase %s%s
101*constraints2
1 2
InitializationZ18-101h px� 
_

Phase %s%s
101*constraints2
1.1 2"
 Core Generation And Design SetupZ18-101h px� 
\
%s*common2C
APhase 1.1 Core Generation And Design Setup | Checksum: 20506b4d7
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.021 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
a

Phase %s%s
101*constraints2
1.2 2$
"Setup Constraints And Sort NetlistZ18-101h px� 
^
%s*common2E
CPhase 1.2 Setup Constraints And Sort Netlist | Checksum: 20506b4d7
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.045 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
H
%s*common2/
-Phase 1 Initialization | Checksum: 20506b4d7
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.052 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
d

Phase %s%s
101*constraints2
2 2)
'Timer Update And Timing Data CollectionZ18-101h px� 
K

Phase %s%s
101*constraints2
2.1 2
Timer UpdateZ18-101h px� 
H
%s*common2/
-Phase 2.1 Timer Update | Checksum: 20506b4d7
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.738 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
U

Phase %s%s
101*constraints2
2.2 2
Timing Data CollectionZ18-101h px� 
R
%s*common29
7Phase 2.2 Timing Data Collection | Checksum: 20506b4d7
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.828 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
a
%s*common2H
FPhase 2 Timer Update And Timing Data Collection | Checksum: 20506b4d7
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.834 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
E

Phase %s%s
101*constraints2
3 2

RetargetZ18-101h px� 
�
XTotal Chains To Be Transformed Were: %s AND Number of Transformed insts Created are: %s
832*opt2
02
0Z31-1834h px� 
f
9Pulled %s inverters resulting in an inversion of %s pins
779*opt2
162
111Z31-1566h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
32
8Z31-138h px� 
9
Retargeted %s cell(s).
49*opt2
0Z31-49h px� 
B
%s*common2)
'Phase 3 Retarget | Checksum: 1aa8cb18c
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
4
Retarget | Checksum: 1aa8cb18c
*commonh px� 
g
.Phase %s created %s cells and removed %s cells267*opt2

Retarget2
1672
256Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2

Retarget2
27Z31-1021h px� 
Q

Phase %s%s
101*constraints2
4 2
Constant propagationZ18-101h px� 
S
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
142
37Z31-138h px� 
N
%s*common25
3Phase 4 Constant propagation | Checksum: 1df982e19
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
@
+Constant propagation | Checksum: 1df982e19
*commonh px� 
t
.Phase %s created %s cells and removed %s cells267*opt2
Constant propagation2
8652
2278Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Constant propagation2
27Z31-1021h px� 
B

Phase %s%s
101*constraints2
5 2
SweepZ18-101h px� 
?
%s*common2&
$Phase 5 Sweep | Checksum: 13cf4f979
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
1
Sweep | Checksum: 13cf4f979
*commonh px� 
b
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2
02
504Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2
97Z31-1021h px� 
N

Phase %s%s
101*constraints2
6 2
BUFG optimizationZ18-101h px� 
K
%s*common22
0Phase 6 BUFG optimization | Checksum: 13cf4f979
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
=
(BUFG optimization | Checksum: 13cf4f979
*commonh px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2
BUFG optimization2
02
02
0Z31-662h px� 
X

Phase %s%s
101*constraints2
7 2
Shift Register OptimizationZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02
02
02
0Z31-1064h px� 
U
%s*common2<
:Phase 7 Shift Register Optimization | Checksum: 13cf4f979
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
G
2Shift Register Optimization | Checksum: 13cf4f979
*commonh px� 
v
.Phase %s created %s cells and removed %s cells267*opt2
Shift Register Optimization2
02
0Z31-389h px� 
T

Phase %s%s
101*constraints2
8 2
Post Processing NetlistZ18-101h px� 
d
9Pulled %s inverters resulting in an inversion of %s pins
779*opt2
32
16Z31-1566h px� 
Q
%s*common28
6Phase 8 Post Processing Netlist | Checksum: 1900f53d7
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
C
.Post Processing Netlist | Checksum: 1900f53d7
*commonh px� 
r
.Phase %s created %s cells and removed %s cells267*opt2
Post Processing Netlist2
02
3Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Post Processing Netlist2
33Z31-1021h px� 
I

Phase %s%s
101*constraints2
9 2
FinalizationZ18-101h px� 
j

Phase %s%s
101*constraints2
9.1 2-
+Finalizing Design Cores and Updating ShapesZ18-101h px� 
g
%s*common2N
LPhase 9.1 Finalizing Design Cores and Updating Shapes | Checksum: 16f35ff37
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
]

Phase %s%s
101*constraints2
9.2 2 
Verifying Netlist ConnectivityZ18-101h px� 
O

Starting %s Task
103*constraints2
Connectivity CheckZ18-103h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.044 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
Z
%s*common2A
?Phase 9.2 Verifying Netlist Connectivity | Checksum: 16f35ff37
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
F
%s*common2-
+Phase 9 Finalization | Checksum: 16f35ff37
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |             167  |             256  |                                             27  |
|  Constant propagation         |             865  |            2278  |                                             27  |
|  Sweep                        |               0  |             504  |                                             97  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               3  |                                             33  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
P
%s*common27
5Ending Logic Optimization Task | Checksum: 16f35ff37
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 2114.914 ; gain = 0.000h px� 
O

Starting %s Task
103*constraints2
Power OptimizationZ18-103h px� 
a
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.00Z34-132h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
S

Starting %s Task
103*constraints2
PowerOpt Patch EnablesZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02
4Z34-162h px� 
R
+Structural ODC has moved %s WE to EN ports
155*pwropt2
0Z34-201h px� 
r
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
32
12
8Z34-65h px� 
T
%s*common2;
9Ending PowerOpt Patch Enables Task | Checksum: 143ccde4c
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.126 . Memory (MB): peak = 2295.855 ; gain = 0.000h px� 
P
%s*common27
5Ending Power Optimization Task | Checksum: 143ccde4c
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:09 ; elapsed = 00:00:06 . Memory (MB): peak = 2295.855 ; gain = 180.941h px� 
J

Starting %s Task
103*constraints2
Final CleanupZ18-103h px� 
K
%s*common22
0Ending Final Cleanup Task | Checksum: 143ccde4c
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.008 . Memory (MB): peak = 2295.855 ; gain = 0.000h px� 
P

Starting %s Task
103*constraints2
Netlist ObfuscationZ18-103h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0212

2295.8552
0.000Z17-268h px� 
Q
%s*common28
6Ending Netlist Obfuscation Task | Checksum: 165caed83
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.029 . Memory (MB): peak = 2295.855 ; gain = 0.000h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
542
612
02
0Z4-41h px� 
J
%s completed successfully
29*	vivadotcl2

opt_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
opt_design: 2

00:00:252

00:00:202

2295.8552	
532.938Z17-268h px� 
�
Executing command : %s
56330*	planAhead2w
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2w
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
PC:/Github/HLS_Pollings/vivado/Pooling.runs/impl_1/design_1_wrapper_drc_opted.rptPC:/Github/HLS_Pollings/vivado/Pooling.runs/impl_1/design_1_wrapper_drc_opted.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:002
00:00:00.0422

2295.8552
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2295.8552
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:012
00:00:00.0922

2295.8552
0.000Z17-268h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.1882

2295.8552
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0022

2295.8552
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:012
00:00:00.0242

2295.8552
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:012
00:00:00.2802

2295.8552
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2L
JC:/Github/HLS_Pollings/vivado/Pooling.runs/impl_1/design_1_wrapper_opt.dcpZ17-1381h px� 


End Record