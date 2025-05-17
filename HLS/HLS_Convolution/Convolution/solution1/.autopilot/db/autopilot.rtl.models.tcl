set SynModuleInfo {
  {SRCNAME convolution_Pipeline_VITIS_LOOP_22_1 MODELNAME convolution_Pipeline_VITIS_LOOP_22_1 RTLNAME convolution_convolution_Pipeline_VITIS_LOOP_22_1
    SUBMODULES {
      {MODELNAME convolution_flow_control_loop_pipe_sequential_init RTLNAME convolution_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME convolution_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME convolution_Pipeline_VITIS_LOOP_27_2_VITIS_LOOP_28_3 MODELNAME convolution_Pipeline_VITIS_LOOP_27_2_VITIS_LOOP_28_3 RTLNAME convolution_convolution_Pipeline_VITIS_LOOP_27_2_VITIS_LOOP_28_3}
  {SRCNAME convolution MODELNAME convolution RTLNAME convolution IS_TOP 1
    SUBMODULES {
      {MODELNAME convolution_gmem_m_axi RTLNAME convolution_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME convolution_control_s_axi RTLNAME convolution_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
