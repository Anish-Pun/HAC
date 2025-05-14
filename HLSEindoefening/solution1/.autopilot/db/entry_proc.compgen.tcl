# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name conv_output \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_output \
    op interface \
    ports { conv_output { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name conv_output_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_output_c \
    op interface \
    ports { conv_output_c_din { O 64 vector } conv_output_c_full_n { I 1 bit } conv_output_c_write { O 1 bit } conv_output_c_num_data_valid { I 3 vector } conv_output_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name max_output \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_output \
    op interface \
    ports { max_output { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name max_output_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_output_c \
    op interface \
    ports { max_output_c_din { O 64 vector } max_output_c_full_n { I 1 bit } max_output_c_write { O 1 bit } max_output_c_num_data_valid { I 3 vector } max_output_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name min_output \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_min_output \
    op interface \
    ports { min_output { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name min_output_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_min_output_c \
    op interface \
    ports { min_output_c_din { O 64 vector } min_output_c_full_n { I 1 bit } min_output_c_write { O 1 bit } min_output_c_num_data_valid { I 3 vector } min_output_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name avg_output \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_avg_output \
    op interface \
    ports { avg_output { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name avg_output_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_avg_output_c \
    op interface \
    ports { avg_output_c_din { O 64 vector } avg_output_c_full_n { I 1 bit } avg_output_c_write { O 1 bit } avg_output_c_num_data_valid { I 3 vector } avg_output_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


