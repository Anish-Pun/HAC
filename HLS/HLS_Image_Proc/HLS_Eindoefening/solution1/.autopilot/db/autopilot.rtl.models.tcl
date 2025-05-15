set SynModuleInfo {
  {SRCNAME full_pipeline_Pipeline_VITIS_LOOP_6_2 MODELNAME full_pipeline_Pipeline_VITIS_LOOP_6_2 RTLNAME full_pipeline_full_pipeline_Pipeline_VITIS_LOOP_6_2
    SUBMODULES {
      {MODELNAME full_pipeline_mul_32s_32s_32_2_1 RTLNAME full_pipeline_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME full_pipeline_flow_control_loop_pipe_sequential_init RTLNAME full_pipeline_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME full_pipeline_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME full_pipeline_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_21_2 MODELNAME full_pipeline_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_21_2 RTLNAME full_pipeline_full_pipeline_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_21_2}
  {SRCNAME full_pipeline_Pipeline_VITIS_LOOP_36_1_VITIS_LOOP_37_2 MODELNAME full_pipeline_Pipeline_VITIS_LOOP_36_1_VITIS_LOOP_37_2 RTLNAME full_pipeline_full_pipeline_Pipeline_VITIS_LOOP_36_1_VITIS_LOOP_37_2}
  {SRCNAME full_pipeline_Pipeline_VITIS_LOOP_52_1_VITIS_LOOP_53_2 MODELNAME full_pipeline_Pipeline_VITIS_LOOP_52_1_VITIS_LOOP_53_2 RTLNAME full_pipeline_full_pipeline_Pipeline_VITIS_LOOP_52_1_VITIS_LOOP_53_2}
  {SRCNAME full_pipeline MODELNAME full_pipeline RTLNAME full_pipeline IS_TOP 1
    SUBMODULES {
      {MODELNAME full_pipeline_mul_32ns_32ns_64_2_1 RTLNAME full_pipeline_mul_32ns_32ns_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME full_pipeline_gmem_m_axi RTLNAME full_pipeline_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME full_pipeline_control_s_axi RTLNAME full_pipeline_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
