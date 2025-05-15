# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
height { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 28
	offset_end 35
}
width { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 36
	offset_end 43
}
kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 44
	offset_end 55
}
conv_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
max_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
min_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 80
	offset_end 91
}
avg_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 92
	offset_end 103
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


