set ModuleHierarchy {[{
"Name" : "process_images","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "Block_entry_gmem_rd_proc_U0","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_convolution_1_1_fu_62","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_7_1","ID" : "4","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_8_2","ID" : "5","Type" : "no"},]},]},
		{"Name" : "grp_pooling_1_1_fu_76","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_30_1","ID" : "7","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_31_2","ID" : "8","Type" : "no"},]},]},
		{"Name" : "grp_pooling_2_1_fu_87","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_30_1","ID" : "10","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_31_2","ID" : "11","Type" : "no"},]},]},
		{"Name" : "grp_pooling_1_2_fu_98","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_30_1","ID" : "13","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_31_2","ID" : "14","Type" : "no"},]},]},]},
	{"Name" : "Block_entry_proc_3_U0","ID" : "15","Type" : "sequential"},
	{"Name" : "Block_entry_gmem_wr_proc_U0","ID" : "16","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_83_1","ID" : "17","Type" : "no"},
		{"Name" : "VITIS_LOOP_91_2","ID" : "18","Type" : "no"},]},]
}]}