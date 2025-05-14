set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME process_images_entry_proc}
  {SRCNAME convolution.1.1 MODELNAME convolution_1_1 RTLNAME process_images_convolution_1_1
    SUBMODULES {
      {MODELNAME process_images_mul_32s_31ns_63_1_1 RTLNAME process_images_mul_32s_31ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling.1.1 MODELNAME pooling_1_1 RTLNAME process_images_pooling_1_1
    SUBMODULES {
      {MODELNAME process_images_mul_20s_20s_20_1_1 RTLNAME process_images_mul_20s_20s_20_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_images_mul_32s_30ns_62_1_1 RTLNAME process_images_mul_32s_30ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling.2.1 MODELNAME pooling_2_1 RTLNAME process_images_pooling_2_1}
  {SRCNAME pooling.1.2 MODELNAME pooling_1_2 RTLNAME process_images_pooling_1_2}
  {SRCNAME Block_entry_gmem_rd_proc MODELNAME Block_entry_gmem_rd_proc RTLNAME process_images_Block_entry_gmem_rd_proc}
  {SRCNAME Block_entry_proc.3 MODELNAME Block_entry_proc_3 RTLNAME process_images_Block_entry_proc_3
    SUBMODULES {
      {MODELNAME process_images_mul_31s_31s_32_1_1 RTLNAME process_images_mul_31s_31s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_images_mul_32s_32s_32_1_1 RTLNAME process_images_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Block_entry_gmem_wr_proc MODELNAME Block_entry_gmem_wr_proc RTLNAME process_images_Block_entry_gmem_wr_proc}
  {SRCNAME process_images MODELNAME process_images RTLNAME process_images IS_TOP 1
    SUBMODULES {
      {MODELNAME process_images_conv_result_RAM_AUTO_1R1W_memcore RTLNAME process_images_conv_result_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_conv_result_RAM_AUTO_1R1W RTLNAME process_images_conv_result_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_max_result_RAM_AUTO_1R1W_memcore RTLNAME process_images_max_result_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_max_result_RAM_AUTO_1R1W RTLNAME process_images_max_result_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_images_fifo_w64_d3_S RTLNAME process_images_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME conv_output_c_U}
      {MODELNAME process_images_fifo_w64_d3_S RTLNAME process_images_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME max_output_c_U}
      {MODELNAME process_images_fifo_w64_d3_S RTLNAME process_images_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME min_output_c_U}
      {MODELNAME process_images_fifo_w64_d3_S RTLNAME process_images_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME avg_output_c_U}
      {MODELNAME process_images_fifo_w32_d2_S RTLNAME process_images_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mul_loc_channel_U}
      {MODELNAME process_images_fifo_w1_d2_S RTLNAME process_images_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmp3_loc_channel_U}
      {MODELNAME process_images_fifo_w32_d2_S RTLNAME process_images_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mul10_loc_channel_U}
      {MODELNAME process_images_fifo_w1_d2_S RTLNAME process_images_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmp111_loc_channel_U}
      {MODELNAME process_images_gmem_m_axi RTLNAME process_images_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME process_images_control_s_axi RTLNAME process_images_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME process_images_control_r_s_axi RTLNAME process_images_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
