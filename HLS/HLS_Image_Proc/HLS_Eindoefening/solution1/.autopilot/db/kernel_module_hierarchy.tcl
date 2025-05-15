set ModuleHierarchy {[{
"Name" : "full_pipeline","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_full_pipeline_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_21_2_fu_212","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_20_1_VITIS_LOOP_21_2","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_full_pipeline_Pipeline_VITIS_LOOP_36_1_VITIS_LOOP_37_2_fu_223","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_36_1_VITIS_LOOP_37_2","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_full_pipeline_Pipeline_VITIS_LOOP_52_1_VITIS_LOOP_53_2_fu_234","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_52_1_VITIS_LOOP_53_2","ID" : "6","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_5_1","ID" : "7","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_full_pipeline_Pipeline_VITIS_LOOP_6_2_fu_193","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_6_2","ID" : "9","Type" : "pipeline"},]},]},]
}]}