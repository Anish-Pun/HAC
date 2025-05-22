set SynModuleInfo {
  {SRCNAME pollings MODELNAME pollings RTLNAME pollings IS_TOP 1
    SUBMODULES {
      {MODELNAME pollings_gmem_m_axi RTLNAME pollings_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pollings_control_s_axi RTLNAME pollings_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME pollings_flow_control_loop_pipe RTLNAME pollings_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pollings_flow_control_loop_pipe_U}
    }
  }
}
