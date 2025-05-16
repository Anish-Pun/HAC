// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu May 15 23:59:04 2025
// Host        : Bowen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis_switch_0_0_sim_netlist.v
// Design      : design_1_axis_switch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_arb_rr
   (\arb_gnt_r_reg[3]_0 ,
    \arb_gnt_r_reg[3]_1 ,
    \gen_tdest_routing.busy_ns ,
    \gen_tdest_routing.busy_ns_0 ,
    \arb_gnt_r_reg[2]_0 ,
    \gen_tdest_routing.busy_ns_1 ,
    \arb_gnt_r_reg[1]_0 ,
    \gen_tdest_routing.busy_ns_2 ,
    arb_gnt_i,
    areset_reg,
    s_axis_tdest_0_sp_1,
    s_axis_tvalid_1_sp_1,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    SR,
    aclk,
    \gen_tdest_router.busy_r ,
    arb_busy_r_reg_0,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \gen_tdest_routing.busy_r_reg[0]_2 ,
    m_axis_tready,
    \busy_r_reg[0] ,
    \busy_r_reg[0]_0 ,
    \arb_gnt_r_reg[3]_2 ,
    \arb_gnt_r_reg[3]_3 ,
    \arb_gnt_r_reg[3]_4 ,
    \arb_gnt_r_reg[3]_5 ,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tuser);
  output \arb_gnt_r_reg[3]_0 ;
  output \arb_gnt_r_reg[3]_1 ;
  output \gen_tdest_routing.busy_ns ;
  output \gen_tdest_routing.busy_ns_0 ;
  output \arb_gnt_r_reg[2]_0 ;
  output \gen_tdest_routing.busy_ns_1 ;
  output \arb_gnt_r_reg[1]_0 ;
  output \gen_tdest_routing.busy_ns_2 ;
  output [0:0]arb_gnt_i;
  output areset_reg;
  output s_axis_tdest_0_sp_1;
  output s_axis_tvalid_1_sp_1;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input [0:0]SR;
  input aclk;
  input [2:0]\gen_tdest_router.busy_r ;
  input arb_busy_r_reg_0;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input \gen_tdest_routing.busy_r_reg[0]_2 ;
  input [0:0]m_axis_tready;
  input \busy_r_reg[0] ;
  input \busy_r_reg[0]_0 ;
  input \arb_gnt_r_reg[3]_2 ;
  input \arb_gnt_r_reg[3]_3 ;
  input \arb_gnt_r_reg[3]_4 ;
  input \arb_gnt_r_reg[3]_5 ;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tvalid;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input [3:0]s_axis_tlast;
  input [3:0]s_axis_tid;
  input [3:0]s_axis_tuser;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg_0;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r[1]_i_1_n_0 ;
  wire \arb_gnt_r[2]_i_1_n_0 ;
  wire \arb_gnt_r[3]_i_1_n_0 ;
  wire \arb_gnt_r[3]_i_2_n_0 ;
  wire \arb_gnt_r[3]_i_3_n_0 ;
  wire \arb_gnt_r[3]_i_4_n_0 ;
  wire \arb_gnt_r[3]_i_5_n_0 ;
  wire \arb_gnt_r[3]_i_6_n_0 ;
  wire \arb_gnt_r[3]_i_7_n_0 ;
  wire \arb_gnt_r_reg[1]_0 ;
  wire \arb_gnt_r_reg[2]_0 ;
  wire \arb_gnt_r_reg[3]_0 ;
  wire \arb_gnt_r_reg[3]_1 ;
  wire \arb_gnt_r_reg[3]_2 ;
  wire \arb_gnt_r_reg[3]_3 ;
  wire \arb_gnt_r_reg[3]_4 ;
  wire \arb_gnt_r_reg[3]_5 ;
  wire [1:0]arb_sel_i;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_2_n_0 ;
  wire areset_reg;
  wire barrel_cntr;
  wire [1:0]barrel_cntr_ns;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire \barrel_cntr_reg_n_0_[1] ;
  wire \busy_r[3]_i_3_n_0 ;
  wire \busy_r[3]_i_4_n_0 ;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[0]_0 ;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_tdest_routing.busy_ns_2 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire \gen_tdest_routing.busy_r_reg[0]_2 ;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire [7:0]port_priority_ns;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire s_axis_tdest_0_sn_1;
  wire [3:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire [3:0]s_axis_tlast;
  wire [3:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire [3:0]s_axis_tvalid;
  wire s_axis_tvalid_1_sn_1;

  assign s_axis_tdest_0_sp_1 = s_axis_tdest_0_sn_1;
  assign s_axis_tvalid_1_sp_1 = s_axis_tvalid_1_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    arb_busy_r_i_1
       (.I0(\busy_r[3]_i_3_n_0 ),
        .I1(arb_busy_r),
        .I2(arb_busy_r_reg_0),
        .O(arb_busy_ns));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(SR));
  LUT6 #(
    .INIT(64'h0703070300000700)) 
    \arb_gnt_r[0]_i_1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_5_n_0 ),
        .I3(\arb_gnt_r[3]_i_3_n_0 ),
        .I4(port_priority_ns[6]),
        .I5(\arb_gnt_r[3]_i_4_n_0 ),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007303)) 
    \arb_gnt_r[1]_i_1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_3_n_0 ),
        .I3(port_priority_ns[6]),
        .I4(\arb_gnt_r[3]_i_4_n_0 ),
        .I5(\arb_gnt_r[3]_i_5_n_0 ),
        .O(\arb_gnt_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080C080C00000800)) 
    \arb_gnt_r[2]_i_1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_5_n_0 ),
        .I3(\arb_gnt_r[3]_i_3_n_0 ),
        .I4(port_priority_ns[6]),
        .I5(\arb_gnt_r[3]_i_4_n_0 ),
        .O(\arb_gnt_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008C0C)) 
    \arb_gnt_r[3]_i_1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_3_n_0 ),
        .I3(port_priority_ns[6]),
        .I4(\arb_gnt_r[3]_i_4_n_0 ),
        .I5(\arb_gnt_r[3]_i_5_n_0 ),
        .O(\arb_gnt_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFFAAEEEEEEEE)) 
    \arb_gnt_r[3]_i_2 
       (.I0(\arb_gnt_r[3]_i_3_n_0 ),
        .I1(port_priority_ns[1]),
        .I2(port_priority_ns[3]),
        .I3(port_priority_ns[5]),
        .I4(\arb_gnt_r[3]_i_6_n_0 ),
        .I5(\arb_gnt_r[3]_i_7_n_0 ),
        .O(\arb_gnt_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \arb_gnt_r[3]_i_3 
       (.I0(\arb_gnt_r_reg[3]_3 ),
        .I1(\arb_gnt_r_reg[3]_2 ),
        .I2(\arb_gnt_r_reg[3]_5 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\arb_gnt_r_reg[3]_4 ),
        .I5(\barrel_cntr_reg_n_0_[0] ),
        .O(\arb_gnt_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1013101300033033)) 
    \arb_gnt_r[3]_i_4 
       (.I0(port_priority_ns[2]),
        .I1(\arb_gnt_r[3]_i_3_n_0 ),
        .I2(\arb_gnt_r[3]_i_7_n_0 ),
        .I3(port_priority_ns[0]),
        .I4(port_priority_ns[4]),
        .I5(\arb_gnt_r[3]_i_6_n_0 ),
        .O(\arb_gnt_r[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \arb_gnt_r[3]_i_5 
       (.I0(SR),
        .I1(arb_busy_r_reg_0),
        .I2(arb_busy_r),
        .I3(\busy_r[3]_i_3_n_0 ),
        .O(\arb_gnt_r[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \arb_gnt_r[3]_i_6 
       (.I0(\arb_gnt_r_reg[3]_2 ),
        .I1(\arb_gnt_r_reg[3]_3 ),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(\arb_gnt_r_reg[3]_4 ),
        .I4(\barrel_cntr_reg_n_0_[1] ),
        .I5(\arb_gnt_r_reg[3]_5 ),
        .O(\arb_gnt_r[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \arb_gnt_r[3]_i_7 
       (.I0(\arb_gnt_r_reg[3]_4 ),
        .I1(\arb_gnt_r_reg[3]_5 ),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(\arb_gnt_r_reg[3]_3 ),
        .I4(\barrel_cntr_reg_n_0_[1] ),
        .I5(\arb_gnt_r_reg[3]_2 ),
        .O(\arb_gnt_r[3]_i_7_n_0 ));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(arb_gnt_i),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[1]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[2]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[2]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[3]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[3]_1 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF0D000D)) 
    \arb_sel_r[0]_i_1 
       (.I0(\arb_gnt_r[3]_i_3_n_0 ),
        .I1(port_priority_ns[6]),
        .I2(\arb_gnt_r[3]_i_4_n_0 ),
        .I3(\arb_sel_r[1]_i_2_n_0 ),
        .I4(arb_sel_i[0]),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF8A008A)) 
    \arb_sel_r[1]_i_1 
       (.I0(\arb_gnt_r[3]_i_2_n_0 ),
        .I1(port_priority_ns[7]),
        .I2(\arb_gnt_r[3]_i_3_n_0 ),
        .I3(\arb_sel_r[1]_i_2_n_0 ),
        .I4(arb_sel_i[1]),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \arb_sel_r[1]_i_2 
       (.I0(\busy_r[3]_i_3_n_0 ),
        .I1(arb_busy_r),
        .I2(arb_busy_r_reg_0),
        .O(\arb_sel_r[1]_i_2_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(arb_sel_i[0]),
        .R(SR));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(arb_sel_i[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \barrel_cntr[0]_i_1 
       (.I0(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[0]));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \barrel_cntr[1]_i_1 
       (.I0(\arb_gnt_r_reg[2]_0 ),
        .I1(\arb_gnt_r_reg[3]_1 ),
        .I2(\arb_gnt_r_reg[1]_0 ),
        .I3(arb_busy_r),
        .I4(arb_gnt_i),
        .O(barrel_cntr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \barrel_cntr[1]_i_2 
       (.I0(\barrel_cntr_reg_n_0_[1] ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[1]));
  FDRE \barrel_cntr_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[0]),
        .Q(\barrel_cntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \barrel_cntr_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[1]),
        .Q(\barrel_cntr_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \busy_r[3]_i_1 
       (.I0(SR),
        .I1(\busy_r[3]_i_3_n_0 ),
        .O(areset_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[3]_i_2 
       (.I0(\arb_gnt_r_reg[3]_1 ),
        .I1(\gen_tdest_router.busy_r [2]),
        .O(\arb_gnt_r_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h5D5D5D5D5DFF5D5D)) 
    \busy_r[3]_i_3 
       (.I0(m_axis_tready),
        .I1(s_axis_tdest_0_sn_1),
        .I2(s_axis_tvalid_1_sn_1),
        .I3(\busy_r_reg[0] ),
        .I4(\busy_r_reg[0]_0 ),
        .I5(\busy_r[3]_i_4_n_0 ),
        .O(\busy_r[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \busy_r[3]_i_4 
       (.I0(\arb_gnt_r_reg[2]_0 ),
        .I1(\gen_tdest_router.busy_r [1]),
        .I2(\arb_gnt_r_reg[1]_0 ),
        .I3(\gen_tdest_router.busy_r [0]),
        .O(\busy_r[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\busy_r[3]_i_3_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0] ),
        .I2(\arb_gnt_r_reg[3]_1 ),
        .O(\gen_tdest_routing.busy_ns ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\busy_r[3]_i_3_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I2(\arb_gnt_r_reg[2]_0 ),
        .O(\gen_tdest_routing.busy_ns_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[0]_i_1__1 
       (.I0(\busy_r[3]_i_3_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_1 ),
        .I2(\arb_gnt_r_reg[1]_0 ),
        .O(\gen_tdest_routing.busy_ns_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[0]_i_1__2 
       (.I0(\busy_r[3]_i_3_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_2 ),
        .I2(arb_gnt_i),
        .O(\gen_tdest_routing.busy_ns_2 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[0]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[24]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tdata[9]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[25]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[26]),
        .I2(s_axis_tdata[10]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[2]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[27]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[3]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[4]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[28]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[13]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[29]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[30]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[6]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[31]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdata[7]),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(s_axis_tdest[1]),
        .I1(s_axis_tdest[2]),
        .I2(s_axis_tdest[0]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tdest[3]),
        .O(m_axis_tdest));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \m_axis_tid[0]_INST_0 
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tid[3]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tid[0]),
        .O(m_axis_tid));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(s_axis_tkeep[2]),
        .I1(s_axis_tkeep[0]),
        .I2(s_axis_tkeep[1]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tkeep[3]),
        .O(m_axis_tkeep));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(s_axis_tlast[2]),
        .I1(s_axis_tlast[3]),
        .I2(s_axis_tlast[1]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tlast[0]),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \m_axis_tstrb[0]_INST_0 
       (.I0(s_axis_tstrb[1]),
        .I1(s_axis_tstrb[2]),
        .I2(s_axis_tstrb[0]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tstrb[3]),
        .O(m_axis_tstrb));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(s_axis_tuser[2]),
        .I1(s_axis_tuser[0]),
        .I2(s_axis_tuser[1]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(s_axis_tuser[3]),
        .O(m_axis_tuser));
  LUT6 #(
    .INIT(64'h002000200F200020)) 
    \m_axis_tvalid[0]_INST_0_i_5 
       (.I0(s_axis_tvalid[1]),
        .I1(s_axis_tdest[1]),
        .I2(arb_sel_i[0]),
        .I3(arb_sel_i[1]),
        .I4(s_axis_tvalid[2]),
        .I5(s_axis_tdest[2]),
        .O(s_axis_tvalid_1_sn_1));
  LUT6 #(
    .INIT(64'hFFFBFFFB0FFBFFFB)) 
    \m_axis_tvalid[0]_INST_0_i_6 
       (.I0(s_axis_tdest[0]),
        .I1(s_axis_tvalid[0]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(s_axis_tvalid[3]),
        .I5(s_axis_tdest[3]),
        .O(s_axis_tdest_0_sn_1));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[6]),
        .R(SR));
  FDRE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[7]),
        .R(SR));
  FDSE \port_priority_r_reg[2] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[2]),
        .Q(port_priority_ns[0]),
        .S(SR));
  FDRE \port_priority_r_reg[3] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[3]),
        .Q(port_priority_ns[1]),
        .R(SR));
  FDRE \port_priority_r_reg[4] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[4]),
        .Q(port_priority_ns[2]),
        .R(SR));
  FDSE \port_priority_r_reg[5] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[5]),
        .Q(port_priority_ns[3]),
        .S(SR));
  FDSE \port_priority_r_reg[6] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[6]),
        .Q(port_priority_ns[4]),
        .S(SR));
  FDSE \port_priority_r_reg[7] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[7]),
        .Q(port_priority_ns[5]),
        .S(SR));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "255" *) (* C_AXIS_TDATA_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "0" *) (* C_FAMILY = "zynq" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "2" *) (* C_M_AXIS_BASETDEST_ARRAY = "1'b0" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "4'b1111" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "1'b0" *) (* C_NUM_MI_SLOTS = "1" *) 
(* C_NUM_SI_SLOTS = "4" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "0" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "25" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* P_DECODER_CONNECTIVITY_ARRAY = "4'b1111" *) (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) 
(* P_TPAYLOAD_WIDTH = "14" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [3:0]s_axis_tvalid;
  output [3:0]s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input [3:0]s_axis_tlast;
  input [3:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [3:0]arb_req;
  output [0:0]arb_done;
  input [3:0]arb_gnt;
  input [1:0]arb_sel;
  output [3:0]arb_last;
  output [3:0]arb_id;
  output [3:0]arb_dest;
  output [3:0]arb_user;
  input [3:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [3:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire [3:0]arb_gnt_i;
  wire areset;
  wire aresetn;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[0].axisc_decoder_0_n_2 ;
  wire \gen_decoder[1].axisc_decoder_0_n_1 ;
  wire \gen_decoder[1].axisc_decoder_0_n_3 ;
  wire \gen_decoder[2].axisc_decoder_0_n_1 ;
  wire \gen_decoder[2].axisc_decoder_0_n_2 ;
  wire \gen_decoder[2].axisc_decoder_0_n_3 ;
  wire \gen_decoder[3].axisc_decoder_0_n_1 ;
  wire \gen_decoder[3].axisc_decoder_0_n_3 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_1 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_10 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_11 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_12 ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_tdest_routing.busy_ns_2 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_1 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_2 ;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [3:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire [3:0]s_axis_tlast;
  wire [3:0]s_axis_tready;
  wire [3:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire [3:0]s_axis_tvalid;
  wire [3:0]s_decode_err;
  wire [3:0]s_req_suppress;

  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[3] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[3] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[3] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_gnt_i(arb_gnt_i[0]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [0]),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdest(s_axis_tdest[0]),
        .s_axis_tdest_0_sp_1(\gen_decoder[0].axisc_decoder_0_n_2 ),
        .s_axis_tready(s_axis_tready[0]),
        .s_axis_tvalid(s_axis_tvalid[0]),
        .s_decode_err(s_decode_err[0]),
        .s_req_suppress(s_req_suppress[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_gnt_i(arb_gnt_i[1]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [1]),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdest(s_axis_tdest[1]),
        .s_axis_tready(s_axis_tready[1]),
        .s_axis_tvalid(s_axis_tvalid[1]),
        .\s_axis_tvalid[1] (\gen_decoder[1].axisc_decoder_0_n_3 ),
        .s_decode_err(s_decode_err[1]),
        .s_req_suppress(s_req_suppress[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_1 \gen_decoder[2].axisc_decoder_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_busy_r_reg(\gen_decoder[0].axisc_decoder_0_n_2 ),
        .arb_busy_r_reg_0(\gen_decoder[1].axisc_decoder_0_n_3 ),
        .arb_busy_r_reg_1(\gen_decoder[3].axisc_decoder_0_n_3 ),
        .arb_gnt_i(arb_gnt_i[2]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [2]),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_1 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdest(s_axis_tdest[2]),
        .s_axis_tready(s_axis_tready[2]),
        .s_axis_tvalid(s_axis_tvalid[2]),
        .\s_axis_tvalid[2] (\gen_decoder[2].axisc_decoder_0_n_2 ),
        .\s_axis_tvalid[2]_0 (\gen_decoder[2].axisc_decoder_0_n_3 ),
        .s_decode_err(s_decode_err[2]),
        .s_req_suppress(s_req_suppress[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_2 \gen_decoder[3].axisc_decoder_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_gnt_i(arb_gnt_i[3]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [3]),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_2 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[3].axisc_decoder_0_n_1 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdest(s_axis_tdest[3]),
        .s_axis_tready(s_axis_tready[3]),
        .s_axis_tvalid(s_axis_tvalid[3]),
        .\s_axis_tvalid[3] (\gen_decoder[3].axisc_decoder_0_n_3 ),
        .s_decode_err(s_decode_err[3]),
        .s_req_suppress(s_req_suppress[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter 
       (.SR(areset),
        .aclk(aclk),
        .arb_busy_r_reg(\gen_decoder[2].axisc_decoder_0_n_2 ),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[3] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_1 ),
        .\arb_gnt_r_reg[3]_0 (\gen_decoder[1].axisc_decoder_0_n_3 ),
        .\arb_gnt_r_reg[3]_1 (\gen_decoder[3].axisc_decoder_0_n_3 ),
        .\arb_gnt_r_reg[3]_2 (\gen_decoder[0].axisc_decoder_0_n_2 ),
        .\arb_gnt_r_reg[3]_3 (\gen_decoder[2].axisc_decoder_0_n_3 ),
        .areset_reg_0(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_10 ),
        .aresetn(aresetn),
        .\busy_r_reg[0] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_2 ),
        .\busy_r_reg[0]_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_1 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [3:1]),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_2 ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_ns_1 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_2 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_decoder[3].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_2 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tdest_0_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_11 ),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tvalid_1_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_12 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\busy_r_reg[0] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_2 ),
        .\busy_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_10 ),
        .\busy_r_reg[3] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_1 ),
        .\busy_r_reg[3]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_1 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tvalid(m_axis_tvalid),
        .\m_axis_tvalid[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_11 ),
        .m_axis_tvalid_0_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_12 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch_arbiter
   (SR,
    \arb_gnt_r_reg[3] ,
    arb_gnt_i,
    \gen_tdest_routing.busy_ns ,
    \gen_tdest_routing.busy_ns_0 ,
    \gen_tdest_routing.busy_ns_1 ,
    \gen_tdest_routing.busy_ns_2 ,
    areset_reg_0,
    s_axis_tdest_0_sp_1,
    s_axis_tvalid_1_sp_1,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    aclk,
    \gen_tdest_router.busy_r ,
    arb_busy_r_reg,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \gen_tdest_routing.busy_r_reg[0]_2 ,
    m_axis_tready,
    \busy_r_reg[0] ,
    \busy_r_reg[0]_0 ,
    \arb_gnt_r_reg[3]_0 ,
    \arb_gnt_r_reg[3]_1 ,
    \arb_gnt_r_reg[3]_2 ,
    \arb_gnt_r_reg[3]_3 ,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tuser,
    aresetn);
  output [0:0]SR;
  output \arb_gnt_r_reg[3] ;
  output [3:0]arb_gnt_i;
  output \gen_tdest_routing.busy_ns ;
  output \gen_tdest_routing.busy_ns_0 ;
  output \gen_tdest_routing.busy_ns_1 ;
  output \gen_tdest_routing.busy_ns_2 ;
  output areset_reg_0;
  output s_axis_tdest_0_sp_1;
  output s_axis_tvalid_1_sp_1;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input aclk;
  input [2:0]\gen_tdest_router.busy_r ;
  input arb_busy_r_reg;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input \gen_tdest_routing.busy_r_reg[0]_2 ;
  input [0:0]m_axis_tready;
  input \busy_r_reg[0] ;
  input \busy_r_reg[0]_0 ;
  input \arb_gnt_r_reg[3]_0 ;
  input \arb_gnt_r_reg[3]_1 ;
  input \arb_gnt_r_reg[3]_2 ;
  input \arb_gnt_r_reg[3]_3 ;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tvalid;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input [3:0]s_axis_tlast;
  input [3:0]s_axis_tid;
  input [3:0]s_axis_tuser;
  input aresetn;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_r_reg;
  wire [3:0]arb_gnt_i;
  wire \arb_gnt_r_reg[3] ;
  wire \arb_gnt_r_reg[3]_0 ;
  wire \arb_gnt_r_reg[3]_1 ;
  wire \arb_gnt_r_reg[3]_2 ;
  wire \arb_gnt_r_reg[3]_3 ;
  wire areset_reg_0;
  wire aresetn;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[0]_0 ;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_tdest_routing.busy_ns_2 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire \gen_tdest_routing.busy_r_reg[0]_2 ;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire p_0_in;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire s_axis_tdest_0_sn_1;
  wire [3:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire [3:0]s_axis_tlast;
  wire [3:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire [3:0]s_axis_tvalid;
  wire s_axis_tvalid_1_sn_1;

  assign s_axis_tdest_0_sp_1 = s_axis_tdest_0_sn_1;
  assign s_axis_tvalid_1_sp_1 = s_axis_tvalid_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE areset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SR),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.SR(SR),
        .aclk(aclk),
        .arb_busy_r_reg_0(arb_busy_r_reg),
        .arb_gnt_i(arb_gnt_i[0]),
        .\arb_gnt_r_reg[1]_0 (arb_gnt_i[1]),
        .\arb_gnt_r_reg[2]_0 (arb_gnt_i[2]),
        .\arb_gnt_r_reg[3]_0 (\arb_gnt_r_reg[3] ),
        .\arb_gnt_r_reg[3]_1 (arb_gnt_i[3]),
        .\arb_gnt_r_reg[3]_2 (\arb_gnt_r_reg[3]_0 ),
        .\arb_gnt_r_reg[3]_3 (\arb_gnt_r_reg[3]_1 ),
        .\arb_gnt_r_reg[3]_4 (\arb_gnt_r_reg[3]_2 ),
        .\arb_gnt_r_reg[3]_5 (\arb_gnt_r_reg[3]_3 ),
        .areset_reg(areset_reg_0),
        .\busy_r_reg[0] (\busy_r_reg[0] ),
        .\busy_r_reg[0]_0 (\busy_r_reg[0]_0 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_1 (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_ns_2 (\gen_tdest_routing.busy_ns_2 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_tdest_routing.busy_r_reg[0]_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_2 (\gen_tdest_routing.busy_r_reg[0]_2 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tdest_0_sp_1(s_axis_tdest_0_sn_1),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tvalid_1_sp_1(s_axis_tvalid_1_sn_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_arb_responder
   (m_axis_tvalid,
    \busy_r_reg[3]_0 ,
    \busy_r_reg[0]_0 ,
    \gen_tdest_router.busy_r ,
    m_axis_tvalid_0_sp_1,
    \m_axis_tvalid[0]_0 ,
    arb_gnt_i,
    \busy_r_reg[0]_1 ,
    \busy_r_reg[3]_1 ,
    aclk);
  output [0:0]m_axis_tvalid;
  output \busy_r_reg[3]_0 ;
  output \busy_r_reg[0]_0 ;
  output [3:0]\gen_tdest_router.busy_r ;
  input m_axis_tvalid_0_sp_1;
  input \m_axis_tvalid[0]_0 ;
  input [3:0]arb_gnt_i;
  input \busy_r_reg[0]_1 ;
  input \busy_r_reg[3]_1 ;
  input aclk;

  wire aclk;
  wire [3:0]arb_gnt_i;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[0]_1 ;
  wire \busy_r_reg[3]_0 ;
  wire \busy_r_reg[3]_1 ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tvalid;
  wire \m_axis_tvalid[0]_0 ;
  wire \m_axis_tvalid[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[0]_INST_0_i_2_n_0 ;
  wire m_axis_tvalid_0_sn_1;

  assign m_axis_tvalid_0_sn_1 = m_axis_tvalid_0_sp_1;
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[0]_0 ),
        .Q(\gen_tdest_router.busy_r [0]),
        .R(\busy_r_reg[0]_1 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tvalid[0]_INST_0_i_2_n_0 ),
        .Q(\gen_tdest_router.busy_r [1]),
        .R(\busy_r_reg[0]_1 ));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tvalid[0]_INST_0_i_1_n_0 ),
        .Q(\gen_tdest_router.busy_r [2]),
        .R(\busy_r_reg[0]_1 ));
  FDRE \busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[3]_1 ),
        .Q(\gen_tdest_router.busy_r [3]),
        .R(\busy_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFEF0000FFEFFFEF)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(\m_axis_tvalid[0]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tvalid[0]_INST_0_i_2_n_0 ),
        .I2(\busy_r_reg[3]_0 ),
        .I3(\busy_r_reg[0]_0 ),
        .I4(m_axis_tvalid_0_sn_1),
        .I5(\m_axis_tvalid[0]_0 ),
        .O(m_axis_tvalid));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(\gen_tdest_router.busy_r [2]),
        .I1(arb_gnt_i[2]),
        .O(\m_axis_tvalid[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tvalid[0]_INST_0_i_2 
       (.I0(\gen_tdest_router.busy_r [1]),
        .I1(arb_gnt_i[1]),
        .O(\m_axis_tvalid[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tvalid[0]_INST_0_i_3 
       (.I0(\gen_tdest_router.busy_r [3]),
        .I1(arb_gnt_i[3]),
        .O(\busy_r_reg[3]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tvalid[0]_INST_0_i_4 
       (.I0(\gen_tdest_router.busy_r [0]),
        .I1(arb_gnt_i[0]),
        .O(\busy_r_reg[0]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    s_decode_err,
    s_axis_tdest_0_sp_1,
    s_axis_tready,
    SR,
    \gen_tdest_routing.busy_ns ,
    aclk,
    s_axis_tdest,
    s_axis_tvalid,
    s_req_suppress,
    arb_gnt_i,
    \gen_tdest_router.busy_r ,
    m_axis_tready);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]s_decode_err;
  output s_axis_tdest_0_sp_1;
  output [0:0]s_axis_tready;
  input [0:0]SR;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input [0:0]s_req_suppress;
  input [0:0]arb_gnt_i;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]m_axis_tready;

  wire [0:0]SR;
  wire aclk;
  wire [0:0]arb_gnt_i;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]m_axis_tready;
  wire [0:0]s_axis_tdest;
  wire s_axis_tdest_0_sn_1;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;
  wire [0:0]s_req_suppress;

  assign s_axis_tdest_0_sp_1 = s_axis_tdest_0_sn_1;
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \arb_gnt_r[3]_i_11 
       (.I0(s_axis_tdest),
        .I1(s_axis_tvalid),
        .I2(s_req_suppress),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(arb_gnt_i),
        .O(s_axis_tdest_0_sn_1));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tdest),
        .I2(s_decode_err),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(SR));
  LUT6 #(
    .INIT(64'hBABABAAAAAAAAAAA)) 
    \s_axis_tready[0]_INST_0 
       (.I0(s_decode_err),
        .I1(s_axis_tdest),
        .I2(s_axis_tvalid),
        .I3(arb_gnt_i),
        .I4(\gen_tdest_router.busy_r ),
        .I5(m_axis_tready),
        .O(s_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_33_axisc_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_0
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    s_axis_tready,
    \s_axis_tvalid[1] ,
    SR,
    aclk,
    \gen_tdest_routing.busy_ns ,
    m_axis_tready,
    arb_gnt_i,
    \gen_tdest_router.busy_r ,
    s_axis_tvalid,
    s_axis_tdest,
    s_req_suppress);
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]s_axis_tready;
  output \s_axis_tvalid[1] ;
  input [0:0]SR;
  input aclk;
  input \gen_tdest_routing.busy_ns ;
  input [0:0]m_axis_tready;
  input [0:0]arb_gnt_i;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]s_axis_tvalid;
  input [0:0]s_axis_tdest;
  input [0:0]s_req_suppress;

  wire [0:0]SR;
  wire aclk;
  wire [0:0]arb_gnt_i;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]m_axis_tready;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire \s_axis_tvalid[1] ;
  wire [0:0]s_decode_err;
  wire [0:0]s_req_suppress;

  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \arb_gnt_r[3]_i_9 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tdest),
        .I2(s_req_suppress),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(arb_gnt_i),
        .O(\s_axis_tvalid[1] ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_tdest_routing.decode_err_r_i_1__0 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tdest),
        .I2(s_decode_err),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEAAAAA)) 
    \s_axis_tready[1]_INST_0 
       (.I0(s_decode_err),
        .I1(m_axis_tready),
        .I2(arb_gnt_i),
        .I3(\gen_tdest_router.busy_r ),
        .I4(s_axis_tvalid),
        .I5(s_axis_tdest),
        .O(s_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_33_axisc_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_1
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \s_axis_tvalid[2] ,
    \s_axis_tvalid[2]_0 ,
    s_axis_tready,
    SR,
    aclk,
    \gen_tdest_routing.busy_ns ,
    arb_busy_r_reg,
    arb_busy_r_reg_0,
    arb_busy_r_reg_1,
    m_axis_tready,
    arb_gnt_i,
    \gen_tdest_router.busy_r ,
    s_axis_tvalid,
    s_axis_tdest,
    s_req_suppress);
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output \s_axis_tvalid[2] ;
  output \s_axis_tvalid[2]_0 ;
  output [0:0]s_axis_tready;
  input [0:0]SR;
  input aclk;
  input \gen_tdest_routing.busy_ns ;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;
  input arb_busy_r_reg_1;
  input [0:0]m_axis_tready;
  input [0:0]arb_gnt_i;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]s_axis_tvalid;
  input [0:0]s_axis_tdest;
  input [0:0]s_req_suppress;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire arb_busy_r_reg_1;
  wire [0:0]arb_gnt_i;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]m_axis_tready;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire \s_axis_tvalid[2] ;
  wire \s_axis_tvalid[2]_0 ;
  wire [0:0]s_decode_err;
  wire [0:0]s_req_suppress;

  LUT4 #(
    .INIT(16'h8000)) 
    arb_busy_r_i_2
       (.I0(\s_axis_tvalid[2]_0 ),
        .I1(arb_busy_r_reg),
        .I2(arb_busy_r_reg_0),
        .I3(arb_busy_r_reg_1),
        .O(\s_axis_tvalid[2] ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \arb_gnt_r[3]_i_10 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tdest),
        .I2(s_req_suppress),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(arb_gnt_i),
        .O(\s_axis_tvalid[2]_0 ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_tdest_routing.decode_err_r_i_1__1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tdest),
        .I2(s_decode_err),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEAAAAA)) 
    \s_axis_tready[2]_INST_0 
       (.I0(s_decode_err),
        .I1(m_axis_tready),
        .I2(arb_gnt_i),
        .I3(\gen_tdest_router.busy_r ),
        .I4(s_axis_tvalid),
        .I5(s_axis_tdest),
        .O(s_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_33_axisc_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_2
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    s_axis_tready,
    \s_axis_tvalid[3] ,
    SR,
    aclk,
    \gen_tdest_routing.busy_ns ,
    arb_gnt_i,
    \gen_tdest_router.busy_r ,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdest,
    s_req_suppress);
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]s_axis_tready;
  output \s_axis_tvalid[3] ;
  input [0:0]SR;
  input aclk;
  input \gen_tdest_routing.busy_ns ;
  input [0:0]arb_gnt_i;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]m_axis_tready;
  input [0:0]s_axis_tvalid;
  input [0:0]s_axis_tdest;
  input [0:0]s_req_suppress;

  wire [0:0]SR;
  wire aclk;
  wire [0:0]arb_gnt_i;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]m_axis_tready;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire \s_axis_tvalid[3] ;
  wire [0:0]s_decode_err;
  wire [0:0]s_req_suppress;

  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \arb_gnt_r[3]_i_8 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tdest),
        .I2(s_req_suppress),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(arb_gnt_i),
        .O(\s_axis_tvalid[3] ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_tdest_routing.decode_err_r_i_1__2 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tdest),
        .I2(s_decode_err),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEAAAAAA)) 
    \s_axis_tready[3]_INST_0 
       (.I0(s_decode_err),
        .I1(arb_gnt_i),
        .I2(\gen_tdest_router.busy_r ),
        .I3(m_axis_tready),
        .I4(s_axis_tvalid),
        .I5(s_axis_tdest),
        .O(s_axis_tready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_transfer_mux
   (m_axis_tvalid,
    \busy_r_reg[3] ,
    \busy_r_reg[0] ,
    \gen_tdest_router.busy_r ,
    m_axis_tvalid_0_sp_1,
    \m_axis_tvalid[0]_0 ,
    arb_gnt_i,
    \busy_r_reg[0]_0 ,
    \busy_r_reg[3]_0 ,
    aclk);
  output [0:0]m_axis_tvalid;
  output \busy_r_reg[3] ;
  output \busy_r_reg[0] ;
  output [3:0]\gen_tdest_router.busy_r ;
  input m_axis_tvalid_0_sp_1;
  input \m_axis_tvalid[0]_0 ;
  input [3:0]arb_gnt_i;
  input \busy_r_reg[0]_0 ;
  input \busy_r_reg[3]_0 ;
  input aclk;

  wire aclk;
  wire [3:0]arb_gnt_i;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[3] ;
  wire \busy_r_reg[3]_0 ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tvalid;
  wire \m_axis_tvalid[0]_0 ;
  wire m_axis_tvalid_0_sn_1;

  assign m_axis_tvalid_0_sn_1 = m_axis_tvalid_0_sp_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .\busy_r_reg[0]_1 (\busy_r_reg[0]_0 ),
        .\busy_r_reg[3]_0 (\busy_r_reg[3] ),
        .\busy_r_reg[3]_1 (\busy_r_reg[3]_0 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tvalid(m_axis_tvalid),
        .\m_axis_tvalid[0]_0 (\m_axis_tvalid[0]_0 ),
        .m_axis_tvalid_0_sp_1(m_axis_tvalid_0_sn_1));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_switch_0_0,axis_switch_v1_1_33_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_33_axis_switch,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    s_req_suppress,
    s_decode_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3]" *) (* X_INTERFACE_MODE = "slave S03_AXIS" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [3:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3]" *) output [3:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [7:0] [31:24]" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TSTRB [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TSTRB [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TSTRB [0:0] [3:3]" *) input [3:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TKEEP [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TKEEP [0:0] [3:3]" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3]" *) input [3:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TID [0:0] [3:3]" *) input [3:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TDEST [0:0] [3:3]" *) input [3:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TUSER [0:0] [3:3]" *) input [3:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input [0:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [0:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP" *) output [0:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output [0:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TID" *) output [0:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST" *) output [0:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER" *) output [0:0]m_axis_tuser;
  input [3:0]s_req_suppress;
  output [3:0]s_decode_err;

  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [3:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire [3:0]s_axis_tlast;
  wire [3:0]s_axis_tready;
  wire [3:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire [3:0]s_axis_tvalid;
  wire [3:0]s_decode_err;
  wire [3:0]s_req_suppress;
  wire NLW_inst_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_wready_UNCONNECTED;
  wire [3:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [0:0]NLW_inst_arb_done_UNCONNECTED;
  wire [3:0]NLW_inst_arb_id_UNCONNECTED;
  wire [3:0]NLW_inst_arb_last_UNCONNECTED;
  wire [3:0]NLW_inst_arb_req_UNCONNECTED;
  wire [3:0]NLW_inst_arb_user_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "255" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "2" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "1'b0" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "4'b1111" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "1'b0" *) 
  (* C_NUM_MI_SLOTS = "1" *) 
  (* C_NUM_SI_SLOTS = "4" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "0" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "25" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "4'b1111" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) 
  (* P_TPAYLOAD_WIDTH = "14" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[3:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[0]),
        .arb_gnt({1'b0,1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[3:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[3:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[3:0]),
        .arb_sel({1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[3:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(1'b0),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_aresetn(1'b0),
        .s_axi_ctrl_arready(NLW_inst_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_inst_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_inst_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_inst_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_inst_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_inst_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err),
        .s_req_suppress(s_req_suppress));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
