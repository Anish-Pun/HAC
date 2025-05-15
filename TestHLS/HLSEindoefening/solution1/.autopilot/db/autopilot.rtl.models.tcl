set SynModuleInfo {
  {SRCNAME process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2 MODELNAME process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2 RTLNAME process_images_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2
    SUBMODULES {
      {MODELNAME process_images_urem_31ns_3ns_2_35_1 RTLNAME process_images_urem_31ns_3ns_2_35_1 BINDTYPE op TYPE urem IMPL auto LATENCY 34 ALLOW_PRAGMA 1}
      {MODELNAME process_images_flow_control_loop_pipe_sequential_init RTLNAME process_images_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME process_images_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4 MODELNAME process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4 RTLNAME process_images_process_images_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4
    SUBMODULES {
      {MODELNAME process_images_sparsemux_7_2_8_1_1 RTLNAME process_images_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8 MODELNAME process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8 RTLNAME process_images_process_images_Pipeline_VITIS_LOOP_53_7_VITIS_LOOP_54_8
    SUBMODULES {
      {MODELNAME process_images_mul_32ns_34ns_65_3_1 RTLNAME process_images_mul_32ns_34ns_65_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_urem_32ns_3ns_2_36_1 RTLNAME process_images_urem_32ns_3ns_2_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10 MODELNAME process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10 RTLNAME process_images_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10}
  {SRCNAME process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12 MODELNAME process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12 RTLNAME process_images_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12}
  {SRCNAME process_images MODELNAME process_images RTLNAME process_images IS_TOP 1
    SUBMODULES {
      {MODELNAME process_images_mul_30ns_30ns_60_3_1 RTLNAME process_images_mul_30ns_30ns_60_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_mul_31ns_31ns_61_3_1 RTLNAME process_images_mul_31ns_31ns_61_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_mul_31ns_31ns_62_3_1 RTLNAME process_images_mul_31ns_31ns_62_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_mul_32ns_32ns_64_3_1 RTLNAME process_images_mul_32ns_32ns_64_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_mul_31ns_33ns_63_3_1 RTLNAME process_images_mul_31ns_33ns_63_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_image_RAM_1WNR_AUTO_1R1W RTLNAME process_images_image_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_conv_result_RAM_AUTO_1R1W RTLNAME process_images_conv_result_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_max_result_RAM_AUTO_1R1W RTLNAME process_images_max_result_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_control_s_axi RTLNAME process_images_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME process_images_regslice_both RTLNAME process_images_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
