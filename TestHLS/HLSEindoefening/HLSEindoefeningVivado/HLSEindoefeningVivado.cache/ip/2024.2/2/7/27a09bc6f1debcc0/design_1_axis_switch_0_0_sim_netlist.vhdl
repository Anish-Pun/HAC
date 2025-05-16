-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu May 15 23:59:04 2025
-- Host        : Bowen running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis_switch_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_switch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_arb_rr is
  port (
    \arb_gnt_r_reg[3]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[3]_1\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_1\ : out STD_LOGIC;
    \arb_gnt_r_reg[1]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_2\ : out STD_LOGIC;
    arb_gnt_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset_reg : out STD_LOGIC;
    s_axis_tdest_0_sp_1 : out STD_LOGIC;
    s_axis_tvalid_1_sp_1 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg_0 : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_2\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]\ : in STD_LOGIC;
    \busy_r_reg[0]_0\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_2\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_3\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_4\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_5\ : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_arb_rr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_arb_rr is
  signal arb_busy_ns : STD_LOGIC;
  signal arb_busy_r : STD_LOGIC;
  signal \^arb_gnt_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \arb_gnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_4_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_5_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_6_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_7_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[1]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[2]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[3]_1\ : STD_LOGIC;
  signal arb_sel_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_2_n_0\ : STD_LOGIC;
  signal barrel_cntr : STD_LOGIC;
  signal barrel_cntr_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \barrel_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \barrel_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \busy_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_4_n_0\ : STD_LOGIC;
  signal port_priority_ns : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tdest_0_sn_1 : STD_LOGIC;
  signal s_axis_tvalid_1_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arb_busy_r_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \arb_sel_r[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \barrel_cntr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \barrel_cntr[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \busy_r[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__2\ : label is "soft_lutpair3";
begin
  arb_gnt_i(0) <= \^arb_gnt_i\(0);
  \arb_gnt_r_reg[1]_0\ <= \^arb_gnt_r_reg[1]_0\;
  \arb_gnt_r_reg[2]_0\ <= \^arb_gnt_r_reg[2]_0\;
  \arb_gnt_r_reg[3]_1\ <= \^arb_gnt_r_reg[3]_1\;
  s_axis_tdest_0_sp_1 <= s_axis_tdest_0_sn_1;
  s_axis_tvalid_1_sp_1 <= s_axis_tvalid_1_sn_1;
arb_busy_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \busy_r[3]_i_3_n_0\,
      I1 => arb_busy_r,
      I2 => arb_busy_r_reg_0,
      O => arb_busy_ns
    );
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns,
      Q => arb_busy_r,
      R => SR(0)
    );
\arb_gnt_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0703070300000700"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_5_n_0\,
      I3 => \arb_gnt_r[3]_i_3_n_0\,
      I4 => port_priority_ns(6),
      I5 => \arb_gnt_r[3]_i_4_n_0\,
      O => \arb_gnt_r[0]_i_1_n_0\
    );
\arb_gnt_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007303"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_3_n_0\,
      I3 => port_priority_ns(6),
      I4 => \arb_gnt_r[3]_i_4_n_0\,
      I5 => \arb_gnt_r[3]_i_5_n_0\,
      O => \arb_gnt_r[1]_i_1_n_0\
    );
\arb_gnt_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080C080C00000800"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_5_n_0\,
      I3 => \arb_gnt_r[3]_i_3_n_0\,
      I4 => port_priority_ns(6),
      I5 => \arb_gnt_r[3]_i_4_n_0\,
      O => \arb_gnt_r[2]_i_1_n_0\
    );
\arb_gnt_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008C0C"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_3_n_0\,
      I3 => port_priority_ns(6),
      I4 => \arb_gnt_r[3]_i_4_n_0\,
      I5 => \arb_gnt_r[3]_i_5_n_0\,
      O => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFFAAEEEEEEEE"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3_n_0\,
      I1 => port_priority_ns(1),
      I2 => port_priority_ns(3),
      I3 => port_priority_ns(5),
      I4 => \arb_gnt_r[3]_i_6_n_0\,
      I5 => \arb_gnt_r[3]_i_7_n_0\,
      O => \arb_gnt_r[3]_i_2_n_0\
    );
\arb_gnt_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \arb_gnt_r_reg[3]_3\,
      I1 => \arb_gnt_r_reg[3]_2\,
      I2 => \arb_gnt_r_reg[3]_5\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \arb_gnt_r_reg[3]_4\,
      I5 => \barrel_cntr_reg_n_0_[0]\,
      O => \arb_gnt_r[3]_i_3_n_0\
    );
\arb_gnt_r[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1013101300033033"
    )
        port map (
      I0 => port_priority_ns(2),
      I1 => \arb_gnt_r[3]_i_3_n_0\,
      I2 => \arb_gnt_r[3]_i_7_n_0\,
      I3 => port_priority_ns(0),
      I4 => port_priority_ns(4),
      I5 => \arb_gnt_r[3]_i_6_n_0\,
      O => \arb_gnt_r[3]_i_4_n_0\
    );
\arb_gnt_r[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => SR(0),
      I1 => arb_busy_r_reg_0,
      I2 => arb_busy_r,
      I3 => \busy_r[3]_i_3_n_0\,
      O => \arb_gnt_r[3]_i_5_n_0\
    );
\arb_gnt_r[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \arb_gnt_r_reg[3]_2\,
      I1 => \arb_gnt_r_reg[3]_3\,
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \arb_gnt_r_reg[3]_4\,
      I4 => \barrel_cntr_reg_n_0_[1]\,
      I5 => \arb_gnt_r_reg[3]_5\,
      O => \arb_gnt_r[3]_i_6_n_0\
    );
\arb_gnt_r[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \arb_gnt_r_reg[3]_4\,
      I1 => \arb_gnt_r_reg[3]_5\,
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \arb_gnt_r_reg[3]_3\,
      I4 => \barrel_cntr_reg_n_0_[1]\,
      I5 => \arb_gnt_r_reg[3]_2\,
      O => \arb_gnt_r[3]_i_7_n_0\
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1_n_0\,
      Q => \^arb_gnt_i\(0),
      R => '0'
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[1]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[1]_0\,
      R => '0'
    );
\arb_gnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[2]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[2]_0\,
      R => '0'
    );
\arb_gnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[3]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[3]_1\,
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0D000D"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3_n_0\,
      I1 => port_priority_ns(6),
      I2 => \arb_gnt_r[3]_i_4_n_0\,
      I3 => \arb_sel_r[1]_i_2_n_0\,
      I4 => arb_sel_i(0),
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8A008A"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2_n_0\,
      I1 => port_priority_ns(7),
      I2 => \arb_gnt_r[3]_i_3_n_0\,
      I3 => \arb_sel_r[1]_i_2_n_0\,
      I4 => arb_sel_i(1),
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \busy_r[3]_i_3_n_0\,
      I1 => arb_busy_r,
      I2 => arb_busy_r_reg_0,
      O => \arb_sel_r[1]_i_2_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => arb_sel_i(0),
      R => SR(0)
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => arb_sel_i(1),
      R => SR(0)
    );
\barrel_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(0)
    );
\barrel_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^arb_gnt_r_reg[2]_0\,
      I1 => \^arb_gnt_r_reg[3]_1\,
      I2 => \^arb_gnt_r_reg[1]_0\,
      I3 => arb_busy_r,
      I4 => \^arb_gnt_i\(0),
      O => barrel_cntr
    );
\barrel_cntr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[1]\,
      I1 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(1)
    );
\barrel_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(0),
      Q => \barrel_cntr_reg_n_0_[0]\,
      R => SR(0)
    );
\barrel_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(1),
      Q => \barrel_cntr_reg_n_0_[1]\,
      R => SR(0)
    );
\busy_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SR(0),
      I1 => \busy_r[3]_i_3_n_0\,
      O => areset_reg
    );
\busy_r[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_1\,
      I1 => \gen_tdest_router.busy_r\(2),
      O => \arb_gnt_r_reg[3]_0\
    );
\busy_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5D5D5DFF5D5D"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => s_axis_tdest_0_sn_1,
      I2 => s_axis_tvalid_1_sn_1,
      I3 => \busy_r_reg[0]\,
      I4 => \busy_r_reg[0]_0\,
      I5 => \busy_r[3]_i_4_n_0\,
      O => \busy_r[3]_i_3_n_0\
    );
\busy_r[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[2]_0\,
      I1 => \gen_tdest_router.busy_r\(1),
      I2 => \^arb_gnt_r_reg[1]_0\,
      I3 => \gen_tdest_router.busy_r\(0),
      O => \busy_r[3]_i_4_n_0\
    );
\gen_tdest_routing.busy_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \busy_r[3]_i_3_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[0]\,
      I2 => \^arb_gnt_r_reg[3]_1\,
      O => \gen_tdest_routing.busy_ns\
    );
\gen_tdest_routing.busy_r[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \busy_r[3]_i_3_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I2 => \^arb_gnt_r_reg[2]_0\,
      O => \gen_tdest_routing.busy_ns_0\
    );
\gen_tdest_routing.busy_r[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \busy_r[3]_i_3_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_1\,
      I2 => \^arb_gnt_r_reg[1]_0\,
      O => \gen_tdest_routing.busy_ns_1\
    );
\gen_tdest_routing.busy_r[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \busy_r[3]_i_3_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_2\,
      I2 => \^arb_gnt_i\(0),
      O => \gen_tdest_routing.busy_ns_2\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(0),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(24),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => s_axis_tdata(1),
      I2 => s_axis_tdata(9),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(25),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => s_axis_tdata(26),
      I2 => s_axis_tdata(10),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAAFFF0CCAA00"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(19),
      I2 => s_axis_tdata(27),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(4),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(28),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(13),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(29),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAAFFF0CCAA00"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(22),
      I2 => s_axis_tdata(30),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAAFFF0CCAA00"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(23),
      I2 => s_axis_tdata(31),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdata(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdest[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => s_axis_tdest(1),
      I1 => s_axis_tdest(2),
      I2 => s_axis_tdest(0),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tdest(3),
      O => m_axis_tdest(0)
    );
\m_axis_tid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAAFFF0CCAA00"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(2),
      I2 => s_axis_tid(3),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tid(0),
      O => m_axis_tid(0)
    );
\m_axis_tkeep[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => s_axis_tkeep(2),
      I1 => s_axis_tkeep(0),
      I2 => s_axis_tkeep(1),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tkeep(3),
      O => m_axis_tkeep(0)
    );
\m_axis_tlast[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => s_axis_tlast(2),
      I1 => s_axis_tlast(3),
      I2 => s_axis_tlast(1),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tlast(0),
      O => m_axis_tlast(0)
    );
\m_axis_tstrb[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => s_axis_tstrb(1),
      I1 => s_axis_tstrb(2),
      I2 => s_axis_tstrb(0),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tstrb(3),
      O => m_axis_tstrb(0)
    );
\m_axis_tuser[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => s_axis_tuser(2),
      I1 => s_axis_tuser(0),
      I2 => s_axis_tuser(1),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => s_axis_tuser(3),
      O => m_axis_tuser(0)
    );
\m_axis_tvalid[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000200F200020"
    )
        port map (
      I0 => s_axis_tvalid(1),
      I1 => s_axis_tdest(1),
      I2 => arb_sel_i(0),
      I3 => arb_sel_i(1),
      I4 => s_axis_tvalid(2),
      I5 => s_axis_tdest(2),
      O => s_axis_tvalid_1_sn_1
    );
\m_axis_tvalid[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFB0FFBFFFB"
    )
        port map (
      I0 => s_axis_tdest(0),
      I1 => s_axis_tvalid(0),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => s_axis_tvalid(3),
      I5 => s_axis_tdest(3),
      O => s_axis_tdest_0_sn_1
    );
\port_priority_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(0),
      Q => port_priority_ns(6),
      R => SR(0)
    );
\port_priority_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(1),
      Q => port_priority_ns(7),
      R => SR(0)
    );
\port_priority_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(2),
      Q => port_priority_ns(0),
      S => SR(0)
    );
\port_priority_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(3),
      Q => port_priority_ns(1),
      R => SR(0)
    );
\port_priority_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(4),
      Q => port_priority_ns(2),
      R => SR(0)
    );
\port_priority_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(5),
      Q => port_priority_ns(3),
      S => SR(0)
    );
\port_priority_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(6),
      Q => port_priority_ns(4),
      S => SR(0)
    );
\port_priority_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(7),
      Q => port_priority_ns(5),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_arb_responder is
  port (
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[3]_0\ : out STD_LOGIC;
    \busy_r_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid_0_sp_1 : in STD_LOGIC;
    \m_axis_tvalid[0]_0\ : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \busy_r_reg[0]_1\ : in STD_LOGIC;
    \busy_r_reg[3]_1\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_arb_responder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_arb_responder is
  signal \^busy_r_reg[0]_0\ : STD_LOGIC;
  signal \^busy_r_reg[3]_0\ : STD_LOGIC;
  signal \^gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \m_axis_tvalid[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_0_sn_1 : STD_LOGIC;
begin
  \busy_r_reg[0]_0\ <= \^busy_r_reg[0]_0\;
  \busy_r_reg[3]_0\ <= \^busy_r_reg[3]_0\;
  \gen_tdest_router.busy_r\(3 downto 0) <= \^gen_tdest_router.busy_r\(3 downto 0);
  m_axis_tvalid_0_sn_1 <= m_axis_tvalid_0_sp_1;
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^busy_r_reg[0]_0\,
      Q => \^gen_tdest_router.busy_r\(0),
      R => \busy_r_reg[0]_1\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tvalid[0]_INST_0_i_2_n_0\,
      Q => \^gen_tdest_router.busy_r\(1),
      R => \busy_r_reg[0]_1\
    );
\busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tvalid[0]_INST_0_i_1_n_0\,
      Q => \^gen_tdest_router.busy_r\(2),
      R => \busy_r_reg[0]_1\
    );
\busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r_reg[3]_1\,
      Q => \^gen_tdest_router.busy_r\(3),
      R => \busy_r_reg[0]_1\
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0000FFEFFFEF"
    )
        port map (
      I0 => \m_axis_tvalid[0]_INST_0_i_1_n_0\,
      I1 => \m_axis_tvalid[0]_INST_0_i_2_n_0\,
      I2 => \^busy_r_reg[3]_0\,
      I3 => \^busy_r_reg[0]_0\,
      I4 => m_axis_tvalid_0_sn_1,
      I5 => \m_axis_tvalid[0]_0\,
      O => m_axis_tvalid(0)
    );
\m_axis_tvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(2),
      I1 => arb_gnt_i(2),
      O => \m_axis_tvalid[0]_INST_0_i_1_n_0\
    );
\m_axis_tvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(1),
      I1 => arb_gnt_i(1),
      O => \m_axis_tvalid[0]_INST_0_i_2_n_0\
    );
\m_axis_tvalid[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(3),
      I1 => arb_gnt_i(3),
      O => \^busy_r_reg[3]_0\
    );
\m_axis_tvalid[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(0),
      I1 => arb_gnt_i(0),
      O => \^busy_r_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest_0_sp_1 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal s_axis_tdest_0_sn_1 : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
  s_axis_tdest_0_sp_1 <= s_axis_tdest_0_sn_1;
  s_decode_err(0) <= \^s_decode_err\(0);
\arb_gnt_r[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => s_axis_tdest(0),
      I1 => s_axis_tvalid(0),
      I2 => s_req_suppress(0),
      I3 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => arb_gnt_i(0),
      O => s_axis_tdest_0_sn_1
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => SR(0)
    );
\gen_tdest_routing.decode_err_r_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tdest(0),
      I2 => \^s_decode_err\(0),
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => SR(0)
    );
\s_axis_tready[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABAAAAAAAAAAA"
    )
        port map (
      I0 => \^s_decode_err\(0),
      I1 => s_axis_tdest(0),
      I2 => s_axis_tvalid(0),
      I3 => arb_gnt_i(0),
      I4 => \gen_tdest_router.busy_r\(0),
      I5 => m_axis_tready(0),
      O => s_axis_tready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_0 is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axis_tvalid[1]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_0 : entity is "axis_switch_v1_1_33_axisc_decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_0 is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
  s_decode_err(0) <= \^s_decode_err\(0);
\arb_gnt_r[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tdest(0),
      I2 => s_req_suppress(0),
      I3 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => arb_gnt_i(0),
      O => \s_axis_tvalid[1]\
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => SR(0)
    );
\gen_tdest_routing.decode_err_r_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tdest(0),
      I2 => \^s_decode_err\(0),
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => SR(0)
    );
\s_axis_tready[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEEEAAAAA"
    )
        port map (
      I0 => \^s_decode_err\(0),
      I1 => m_axis_tready(0),
      I2 => arb_gnt_i(0),
      I3 => \gen_tdest_router.busy_r\(0),
      I4 => s_axis_tvalid(0),
      I5 => s_axis_tdest(0),
      O => s_axis_tready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_1 is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    \s_axis_tvalid[2]\ : out STD_LOGIC;
    \s_axis_tvalid[2]_0\ : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC;
    arb_busy_r_reg_1 : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_1 : entity is "axis_switch_v1_1_33_axisc_decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_1 is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \^s_axis_tvalid[2]_0\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
  \s_axis_tvalid[2]_0\ <= \^s_axis_tvalid[2]_0\;
  s_decode_err(0) <= \^s_decode_err\(0);
arb_busy_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axis_tvalid[2]_0\,
      I1 => arb_busy_r_reg,
      I2 => arb_busy_r_reg_0,
      I3 => arb_busy_r_reg_1,
      O => \s_axis_tvalid[2]\
    );
\arb_gnt_r[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tdest(0),
      I2 => s_req_suppress(0),
      I3 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => arb_gnt_i(0),
      O => \^s_axis_tvalid[2]_0\
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => SR(0)
    );
\gen_tdest_routing.decode_err_r_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tdest(0),
      I2 => \^s_decode_err\(0),
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => SR(0)
    );
\s_axis_tready[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEEEAAAAA"
    )
        port map (
      I0 => \^s_decode_err\(0),
      I1 => m_axis_tready(0),
      I2 => arb_gnt_i(0),
      I3 => \gen_tdest_router.busy_r\(0),
      I4 => s_axis_tvalid(0),
      I5 => s_axis_tdest(0),
      O => s_axis_tready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_2 is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axis_tvalid[3]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_2 : entity is "axis_switch_v1_1_33_axisc_decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_2 is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
  s_decode_err(0) <= \^s_decode_err\(0);
\arb_gnt_r[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tdest(0),
      I2 => s_req_suppress(0),
      I3 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => arb_gnt_i(0),
      O => \s_axis_tvalid[3]\
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => SR(0)
    );
\gen_tdest_routing.decode_err_r_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tdest(0),
      I2 => \^s_decode_err\(0),
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => SR(0)
    );
\s_axis_tready[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFEAAAAAA"
    )
        port map (
      I0 => \^s_decode_err\(0),
      I1 => arb_gnt_i(0),
      I2 => \gen_tdest_router.busy_r\(0),
      I3 => m_axis_tready(0),
      I4 => s_axis_tvalid(0),
      I5 => s_axis_tdest(0),
      O => s_axis_tready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch_arbiter is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[3]\ : out STD_LOGIC;
    arb_gnt_i : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_1\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_2\ : out STD_LOGIC;
    areset_reg_0 : out STD_LOGIC;
    s_axis_tdest_0_sp_1 : out STD_LOGIC;
    s_axis_tvalid_1_sp_1 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_2\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]\ : in STD_LOGIC;
    \busy_r_reg[0]_0\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_0\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_1\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_2\ : in STD_LOGIC;
    \arb_gnt_r_reg[3]_3\ : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch_arbiter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch_arbiter is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC;
  signal s_axis_tdest_0_sn_1 : STD_LOGIC;
  signal s_axis_tvalid_1_sn_1 : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
  s_axis_tdest_0_sp_1 <= s_axis_tdest_0_sn_1;
  s_axis_tvalid_1_sp_1 <= s_axis_tvalid_1_sn_1;
areset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => \^sr\(0),
      R => '0'
    );
\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_arb_rr
     port map (
      SR(0) => \^sr\(0),
      aclk => aclk,
      arb_busy_r_reg_0 => arb_busy_r_reg,
      arb_gnt_i(0) => arb_gnt_i(0),
      \arb_gnt_r_reg[1]_0\ => arb_gnt_i(1),
      \arb_gnt_r_reg[2]_0\ => arb_gnt_i(2),
      \arb_gnt_r_reg[3]_0\ => \arb_gnt_r_reg[3]\,
      \arb_gnt_r_reg[3]_1\ => arb_gnt_i(3),
      \arb_gnt_r_reg[3]_2\ => \arb_gnt_r_reg[3]_0\,
      \arb_gnt_r_reg[3]_3\ => \arb_gnt_r_reg[3]_1\,
      \arb_gnt_r_reg[3]_4\ => \arb_gnt_r_reg[3]_2\,
      \arb_gnt_r_reg[3]_5\ => \arb_gnt_r_reg[3]_3\,
      areset_reg => areset_reg_0,
      \busy_r_reg[0]\ => \busy_r_reg[0]\,
      \busy_r_reg[0]_0\ => \busy_r_reg[0]_0\,
      \gen_tdest_router.busy_r\(2 downto 0) => \gen_tdest_router.busy_r\(2 downto 0),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_ns_1\ => \gen_tdest_routing.busy_ns_1\,
      \gen_tdest_routing.busy_ns_2\ => \gen_tdest_routing.busy_ns_2\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_tdest_routing.busy_r_reg[0]_0\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_tdest_routing.busy_r_reg[0]_1\,
      \gen_tdest_routing.busy_r_reg[0]_2\ => \gen_tdest_routing.busy_r_reg[0]_2\,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(0) => m_axis_tkeep(0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tstrb(0) => m_axis_tstrb(0),
      m_axis_tuser(0) => m_axis_tuser(0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(3 downto 0) => s_axis_tdest(3 downto 0),
      s_axis_tdest_0_sp_1 => s_axis_tdest_0_sn_1,
      s_axis_tid(3 downto 0) => s_axis_tid(3 downto 0),
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast(3 downto 0) => s_axis_tlast(3 downto 0),
      s_axis_tstrb(3 downto 0) => s_axis_tstrb(3 downto 0),
      s_axis_tuser(3 downto 0) => s_axis_tuser(3 downto 0),
      s_axis_tvalid(3 downto 0) => s_axis_tvalid(3 downto 0),
      s_axis_tvalid_1_sp_1 => s_axis_tvalid_1_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_transfer_mux is
  port (
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[3]\ : out STD_LOGIC;
    \busy_r_reg[0]\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid_0_sp_1 : in STD_LOGIC;
    \m_axis_tvalid[0]_0\ : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \busy_r_reg[0]_0\ : in STD_LOGIC;
    \busy_r_reg[3]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_transfer_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_transfer_mux is
  signal m_axis_tvalid_0_sn_1 : STD_LOGIC;
begin
  m_axis_tvalid_0_sn_1 <= m_axis_tvalid_0_sp_1;
\gen_tdest_router.axisc_arb_responder\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_arb_responder
     port map (
      aclk => aclk,
      arb_gnt_i(3 downto 0) => arb_gnt_i(3 downto 0),
      \busy_r_reg[0]_0\ => \busy_r_reg[0]\,
      \busy_r_reg[0]_1\ => \busy_r_reg[0]_0\,
      \busy_r_reg[3]_0\ => \busy_r_reg[3]\,
      \busy_r_reg[3]_1\ => \busy_r_reg[3]_0\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      \m_axis_tvalid[0]_0\ => \m_axis_tvalid[0]_0\,
      m_axis_tvalid_0_sp_1 => m_axis_tvalid_0_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    arb_req : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_last : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_id : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_dest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_user : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 255;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is "zynq";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 2;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is "1'b0";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is "4'b1111";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is "1'b0";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 4;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 32;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 25;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 4;
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is "4'b1111";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch : entity is 14;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal areset : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_1\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_10\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_11\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_12\ : STD_LOGIC;
  signal \gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_0\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_1\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_2\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_1\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_2\ : STD_LOGIC;
begin
  arb_dest(3) <= \<const0>\;
  arb_dest(2) <= \<const0>\;
  arb_dest(1) <= \<const0>\;
  arb_dest(0) <= \<const0>\;
  arb_done(0) <= \<const0>\;
  arb_id(3) <= \<const0>\;
  arb_id(2) <= \<const0>\;
  arb_id(1) <= \<const0>\;
  arb_id(0) <= \<const0>\;
  arb_last(3) <= \<const0>\;
  arb_last(2) <= \<const0>\;
  arb_last(1) <= \<const0>\;
  arb_last(0) <= \<const0>\;
  arb_req(3) <= \<const0>\;
  arb_req(2) <= \<const0>\;
  arb_req(1) <= \<const0>\;
  arb_req(0) <= \<const0>\;
  arb_user(3) <= \<const0>\;
  arb_user(2) <= \<const0>\;
  arb_user(1) <= \<const0>\;
  arb_user(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_decoder[0].axisc_decoder_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder
     port map (
      SR(0) => areset,
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(0),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(0),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tdest(0) => s_axis_tdest(0),
      s_axis_tdest_0_sp_1 => \gen_decoder[0].axisc_decoder_0_n_2\,
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_decode_err(0) => s_decode_err(0),
      s_req_suppress(0) => s_req_suppress(0)
    );
\gen_decoder[1].axisc_decoder_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_0
     port map (
      SR(0) => areset,
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(1),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(1),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[1].axisc_decoder_0_n_1\,
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tdest(0) => s_axis_tdest(1),
      s_axis_tready(0) => s_axis_tready(1),
      s_axis_tvalid(0) => s_axis_tvalid(1),
      \s_axis_tvalid[1]\ => \gen_decoder[1].axisc_decoder_0_n_3\,
      s_decode_err(0) => s_decode_err(1),
      s_req_suppress(0) => s_req_suppress(1)
    );
\gen_decoder[2].axisc_decoder_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_1
     port map (
      SR(0) => areset,
      aclk => aclk,
      arb_busy_r_reg => \gen_decoder[0].axisc_decoder_0_n_2\,
      arb_busy_r_reg_0 => \gen_decoder[1].axisc_decoder_0_n_3\,
      arb_busy_r_reg_1 => \gen_decoder[3].axisc_decoder_0_n_3\,
      arb_gnt_i(0) => arb_gnt_i(2),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(2),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_1\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[2].axisc_decoder_0_n_1\,
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tdest(0) => s_axis_tdest(2),
      s_axis_tready(0) => s_axis_tready(2),
      s_axis_tvalid(0) => s_axis_tvalid(2),
      \s_axis_tvalid[2]\ => \gen_decoder[2].axisc_decoder_0_n_2\,
      \s_axis_tvalid[2]_0\ => \gen_decoder[2].axisc_decoder_0_n_3\,
      s_decode_err(0) => s_decode_err(2),
      s_req_suppress(0) => s_req_suppress(2)
    );
\gen_decoder[3].axisc_decoder_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_decoder_2
     port map (
      SR(0) => areset,
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(3),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(3),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_2\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_1\,
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tdest(0) => s_axis_tdest(3),
      s_axis_tready(0) => s_axis_tready(3),
      s_axis_tvalid(0) => s_axis_tvalid(3),
      \s_axis_tvalid[3]\ => \gen_decoder[3].axisc_decoder_0_n_3\,
      s_decode_err(0) => s_decode_err(3),
      s_req_suppress(0) => s_req_suppress(3)
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch_arbiter
     port map (
      SR(0) => areset,
      aclk => aclk,
      arb_busy_r_reg => \gen_decoder[2].axisc_decoder_0_n_2\,
      arb_gnt_i(3 downto 0) => arb_gnt_i(3 downto 0),
      \arb_gnt_r_reg[3]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_1\,
      \arb_gnt_r_reg[3]_0\ => \gen_decoder[1].axisc_decoder_0_n_3\,
      \arb_gnt_r_reg[3]_1\ => \gen_decoder[3].axisc_decoder_0_n_3\,
      \arb_gnt_r_reg[3]_2\ => \gen_decoder[0].axisc_decoder_0_n_2\,
      \arb_gnt_r_reg[3]_3\ => \gen_decoder[2].axisc_decoder_0_n_3\,
      areset_reg_0 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_10\,
      aresetn => aresetn,
      \busy_r_reg[0]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_2\,
      \busy_r_reg[0]_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_1\,
      \gen_tdest_router.busy_r\(2 downto 0) => \gen_tdest_router.busy_r\(3 downto 1),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_2\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns_1\,
      \gen_tdest_routing.busy_ns_1\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_ns_2\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_decoder[3].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[2].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_decoder[1].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_r_reg[0]_2\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(0) => m_axis_tkeep(0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tstrb(0) => m_axis_tstrb(0),
      m_axis_tuser(0) => m_axis_tuser(0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(3 downto 0) => s_axis_tdest(3 downto 0),
      s_axis_tdest_0_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_11\,
      s_axis_tid(3 downto 0) => s_axis_tid(3 downto 0),
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast(3 downto 0) => s_axis_tlast(3 downto 0),
      s_axis_tstrb(3 downto 0) => s_axis_tstrb(3 downto 0),
      s_axis_tuser(3 downto 0) => s_axis_tuser(3 downto 0),
      s_axis_tvalid(3 downto 0) => s_axis_tvalid(3 downto 0),
      s_axis_tvalid_1_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_12\
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axisc_transfer_mux
     port map (
      aclk => aclk,
      arb_gnt_i(3 downto 0) => arb_gnt_i(3 downto 0),
      \busy_r_reg[0]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_2\,
      \busy_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_10\,
      \busy_r_reg[3]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_1\,
      \busy_r_reg[3]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_1\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      \m_axis_tvalid[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_11\,
      m_axis_tvalid_0_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_33_axis_switch_arbiter_n_12\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axis_switch_0_0,axis_switch_v1_1_33_axis_switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis_switch_v1_1_33_axis_switch,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_arb_dest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_arb_done_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_arb_id_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_arb_last_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_arb_req_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_arb_user_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of inst : label is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of inst : label is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of inst : label is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 255;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of inst : label is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of inst : label is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of inst : label is 2;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of inst : label is "1'b0";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of inst : label is "4'b1111";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of inst : label is "1'b0";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of inst : label is 4;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of inst : label is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of inst : label is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of inst : label is 25;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of inst : label is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of inst : label is 4;
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of inst : label is "4'b1111";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of inst : label is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 14;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDEST";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TID";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [7:0] [31:24]";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TDEST [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TID [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TKEEP [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TKEEP [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TSTRB [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TSTRB [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TSTRB [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TUSER [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3]";
  attribute X_INTERFACE_MODE of s_axis_tvalid : signal is "slave S03_AXIS";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME S03_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_33_axis_switch
     port map (
      aclk => aclk,
      aclken => '1',
      arb_dest(3 downto 0) => NLW_inst_arb_dest_UNCONNECTED(3 downto 0),
      arb_done(0) => NLW_inst_arb_done_UNCONNECTED(0),
      arb_gnt(3 downto 0) => B"0000",
      arb_id(3 downto 0) => NLW_inst_arb_id_UNCONNECTED(3 downto 0),
      arb_last(3 downto 0) => NLW_inst_arb_last_UNCONNECTED(3 downto 0),
      arb_req(3 downto 0) => NLW_inst_arb_req_UNCONNECTED(3 downto 0),
      arb_sel(1 downto 0) => B"00",
      arb_user(3 downto 0) => NLW_inst_arb_user_UNCONNECTED(3 downto 0),
      aresetn => aresetn,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(0) => m_axis_tkeep(0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tstrb(0) => m_axis_tstrb(0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axi_ctrl_aclk => '0',
      s_axi_ctrl_araddr(6 downto 0) => B"0000000",
      s_axi_ctrl_aresetn => '0',
      s_axi_ctrl_arready => NLW_inst_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(6 downto 0) => B"0000000",
      s_axi_ctrl_awready => NLW_inst_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_inst_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_inst_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_inst_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_inst_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(3 downto 0) => s_axis_tdest(3 downto 0),
      s_axis_tid(3 downto 0) => s_axis_tid(3 downto 0),
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast(3 downto 0) => s_axis_tlast(3 downto 0),
      s_axis_tready(3 downto 0) => s_axis_tready(3 downto 0),
      s_axis_tstrb(3 downto 0) => s_axis_tstrb(3 downto 0),
      s_axis_tuser(3 downto 0) => s_axis_tuser(3 downto 0),
      s_axis_tvalid(3 downto 0) => s_axis_tvalid(3 downto 0),
      s_decode_err(3 downto 0) => s_decode_err(3 downto 0),
      s_req_suppress(3 downto 0) => s_req_suppress(3 downto 0)
    );
end STRUCTURE;
