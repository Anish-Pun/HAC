# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
in_img { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
max_pool { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
min_pool { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
avg_pool { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


