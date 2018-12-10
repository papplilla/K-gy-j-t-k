-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Nov 11 17:09:29 2018
-- Host        : Frank running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Janos/Documents/Vivado/Lab/AXI_DMA_Lab/AXI_DMA_Lab.srcs/sources_1/bd/design_1/ip/design_1_AXI4S_VGA_v1_0_AXI4S_0_0/design_1_AXI4S_VGA_v1_0_AXI4S_0_0_sim_netlist.vhdl
-- Design      : design_1_AXI4S_VGA_v1_0_AXI4S_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI4S_VGA_v1_0_AXI4S_0_0_AXI4S_VGA_v1_0_AXI4S_In is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    G1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    V_sync : out STD_LOGIC;
    H_sync : out STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TLAST : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI4S_VGA_v1_0_AXI4S_0_0_AXI4S_VGA_v1_0_AXI4S_In : entity is "AXI4S_VGA_v1_0_AXI4S_In";
end design_1_AXI4S_VGA_v1_0_AXI4S_0_0_AXI4S_VGA_v1_0_AXI4S_In;

architecture STRUCTURE of design_1_AXI4S_VGA_v1_0_AXI4S_0_0_AXI4S_VGA_v1_0_AXI4S_In is
  signal B : STD_LOGIC;
  signal \B[0]_i_1_n_0\ : STD_LOGIC;
  signal \B[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_streamSync[1]_i_8_n_0\ : STD_LOGIC;
  signal \G[0]_i_1_n_0\ : STD_LOGIC;
  signal \G[1]_i_1_n_0\ : STD_LOGIC;
  signal \^h_sync\ : STD_LOGIC;
  signal \R[0]_i_1_n_0\ : STD_LOGIC;
  signal \R[1]_i_1_n_0\ : STD_LOGIC;
  signal \R[1]_i_3_n_0\ : STD_LOGIC;
  signal \R[1]_i_5_n_0\ : STD_LOGIC;
  signal \^v_sync\ : STD_LOGIC;
  signal aready_i_1_n_0 : STD_LOGIC;
  signal aready_i_2_n_0 : STD_LOGIC;
  signal aready_i_3_n_0 : STD_LOGIC;
  signal ce : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dataIn[29]_i_1_n_0\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[10]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[11]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[16]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[17]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[18]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[19]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[24]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[25]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[26]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[27]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[8]\ : STD_LOGIC;
  signal \dataIn_reg_n_0_[9]\ : STD_LOGIC;
  signal \h_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \h_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal \h_cntr[9]_i_3_n_0\ : STD_LOGIC;
  signal \h_cntr[9]_i_4_n_0\ : STD_LOGIC;
  signal \h_cntr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal h_sync_reg0 : STD_LOGIC;
  signal h_sync_reg_i_2_n_0 : STD_LOGIC;
  signal h_sync_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_3_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \streamSync__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \streamSync__0\ : signal is "yes";
  signal \v_cntr[7]_i_2_n_0\ : STD_LOGIC;
  signal \v_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_cntr[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_cntr[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_cntr[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_cntr[9]_i_6_n_0\ : STD_LOGIC;
  signal \v_cntr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal v_sync_reg_i_1_n_0 : STD_LOGIC;
  signal v_sync_reg_i_2_n_0 : STD_LOGIC;
  signal v_sync_reg_i_3_n_0 : STD_LOGIC;
  signal \visibleArea__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_streamSync_reg[0]\ : label is "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_streamSync_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_streamSync_reg[1]\ : label is "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11";
  attribute KEEP of \FSM_sequential_streamSync_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R[1]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R[1]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of aready_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of aready_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ce[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ce[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \h_cntr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_cntr[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_cntr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_cntr[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_cntr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_cntr[6]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_cntr[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cntr[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cntr[9]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_cntr[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \v_cntr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \v_cntr[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cntr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_cntr[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_cntr[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cntr[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_cntr[9]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_cntr[9]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of v_sync_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of v_sync_reg_i_3 : label is "soft_lutpair3";
begin
  H_sync <= \^h_sync\;
  V_sync <= \^v_sync\;
\B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \dataIn_reg_n_0_[16]\,
      I1 => \dataIn_reg_n_0_[24]\,
      I2 => \dataIn_reg_n_0_[0]\,
      I3 => \h_cntr_reg__0\(0),
      I4 => \h_cntr_reg__0\(1),
      I5 => \dataIn_reg_n_0_[8]\,
      O => \B[0]_i_1_n_0\
    );
\B[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \dataIn_reg_n_0_[17]\,
      I1 => \dataIn_reg_n_0_[25]\,
      I2 => \dataIn_reg_n_0_[1]\,
      I3 => \h_cntr_reg__0\(0),
      I4 => \h_cntr_reg__0\(1),
      I5 => \dataIn_reg_n_0_[9]\,
      O => \B[1]_i_1_n_0\
    );
\B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \B[0]_i_1_n_0\,
      Q => B1(0),
      R => \R[1]_i_1_n_0\
    );
\B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \B[1]_i_1_n_0\,
      Q => B1(1),
      R => \R[1]_i_1_n_0\
    );
\FSM_sequential_streamSync[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2E222E00000000"
    )
        port map (
      I0 => \streamSync__0\(0),
      I1 => \FSM_sequential_streamSync[1]_i_2_n_0\,
      I2 => \streamSync__0\(0),
      I3 => \streamSync__0\(1),
      I4 => S_AXIS_TLAST,
      I5 => S_AXIS_ARESETN,
      O => \FSM_sequential_streamSync[0]_i_1_n_0\
    );
\FSM_sequential_streamSync[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \streamSync__0\(1),
      I1 => \FSM_sequential_streamSync[1]_i_2_n_0\,
      I2 => \streamSync__0\(0),
      I3 => \streamSync__0\(1),
      I4 => S_AXIS_TLAST,
      I5 => S_AXIS_ARESETN,
      O => \FSM_sequential_streamSync[1]_i_1_n_0\
    );
\FSM_sequential_streamSync[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_streamSync[1]_i_3_n_0\,
      I1 => \FSM_sequential_streamSync[1]_i_4_n_0\,
      I2 => \FSM_sequential_streamSync[1]_i_5_n_0\,
      I3 => \FSM_sequential_streamSync[1]_i_6_n_0\,
      I4 => \FSM_sequential_streamSync[1]_i_7_n_0\,
      I5 => \FSM_sequential_streamSync[1]_i_8_n_0\,
      O => \FSM_sequential_streamSync[1]_i_2_n_0\
    );
\FSM_sequential_streamSync[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => \streamSync__0\(0),
      I2 => S_AXIS_TLAST,
      I3 => \streamSync__0\(1),
      O => \FSM_sequential_streamSync[1]_i_3_n_0\
    );
\FSM_sequential_streamSync[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => \h_cntr_reg__0\(7),
      I2 => \h_cntr_reg__0\(4),
      I3 => \h_cntr_reg__0\(6),
      I4 => \h_cntr_reg__0\(5),
      O => \FSM_sequential_streamSync[1]_i_4_n_0\
    );
\FSM_sequential_streamSync[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \h_cntr_reg__0\(2),
      I1 => \h_cntr_reg__0\(3),
      I2 => \h_cntr_reg__0\(1),
      I3 => \h_cntr_reg__0\(0),
      I4 => \h_cntr_reg__0\(8),
      I5 => \h_cntr_reg__0\(9),
      O => \FSM_sequential_streamSync[1]_i_5_n_0\
    );
\FSM_sequential_streamSync[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \v_cntr_reg__0\(3),
      I1 => \v_cntr_reg__0\(4),
      I2 => \v_cntr_reg__0\(5),
      I3 => \v_cntr_reg__0\(2),
      I4 => \v_cntr_reg__0\(1),
      I5 => \v_cntr_reg__0\(0),
      O => \FSM_sequential_streamSync[1]_i_6_n_0\
    );
\FSM_sequential_streamSync[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \v_cntr_reg__0\(9),
      I1 => \v_cntr_reg__0\(8),
      I2 => \v_cntr_reg__0\(7),
      I3 => \v_cntr_reg__0\(6),
      O => \FSM_sequential_streamSync[1]_i_7_n_0\
    );
\FSM_sequential_streamSync[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => ce(1),
      I1 => ce(0),
      I2 => \streamSync__0\(1),
      I3 => \streamSync__0\(0),
      O => \FSM_sequential_streamSync[1]_i_8_n_0\
    );
\FSM_sequential_streamSync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => \FSM_sequential_streamSync[0]_i_1_n_0\,
      Q => \streamSync__0\(0),
      R => '0'
    );
\FSM_sequential_streamSync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => \FSM_sequential_streamSync[1]_i_1_n_0\,
      Q => \streamSync__0\(1),
      R => '0'
    );
\G[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \dataIn_reg_n_0_[18]\,
      I1 => \dataIn_reg_n_0_[26]\,
      I2 => \dataIn_reg_n_0_[2]\,
      I3 => \h_cntr_reg__0\(0),
      I4 => \h_cntr_reg__0\(1),
      I5 => \dataIn_reg_n_0_[10]\,
      O => \G[0]_i_1_n_0\
    );
\G[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \dataIn_reg_n_0_[19]\,
      I1 => \dataIn_reg_n_0_[27]\,
      I2 => \dataIn_reg_n_0_[3]\,
      I3 => \h_cntr_reg__0\(0),
      I4 => \h_cntr_reg__0\(1),
      I5 => \dataIn_reg_n_0_[11]\,
      O => \G[1]_i_1_n_0\
    );
\G_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \G[0]_i_1_n_0\,
      Q => G1(0),
      R => \R[1]_i_1_n_0\
    );
\G_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \G[1]_i_1_n_0\,
      Q => G1(1),
      R => \R[1]_i_1_n_0\
    );
\R[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_1_in(0),
      I2 => \dataIn_reg_n_0_[4]\,
      I3 => \h_cntr_reg__0\(0),
      I4 => \h_cntr_reg__0\(1),
      I5 => p_3_in(0),
      O => \R[0]_i_1_n_0\
    );
\R[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ce(1),
      I1 => ce(0),
      I2 => \visibleArea__2\,
      O => \R[1]_i_1_n_0\
    );
\R[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ce(0),
      I1 => ce(1),
      O => B
    );
\R[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => p_2_in(1),
      I1 => p_1_in(1),
      I2 => \dataIn_reg_n_0_[5]\,
      I3 => \h_cntr_reg__0\(0),
      I4 => \h_cntr_reg__0\(1),
      I5 => p_3_in(1),
      O => \R[1]_i_3_n_0\
    );
\R[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010111"
    )
        port map (
      I0 => \v_cntr_reg__0\(9),
      I1 => \R[1]_i_5_n_0\,
      I2 => \h_cntr_reg__0\(9),
      I3 => \h_cntr_reg__0\(8),
      I4 => \h_cntr_reg__0\(7),
      O => \visibleArea__2\
    );
\R[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \v_cntr_reg__0\(6),
      I1 => \v_cntr_reg__0\(5),
      I2 => \v_cntr_reg__0\(8),
      I3 => \v_cntr_reg__0\(7),
      O => \R[1]_i_5_n_0\
    );
\R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \R[0]_i_1_n_0\,
      Q => Q(0),
      R => \R[1]_i_1_n_0\
    );
\R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \R[1]_i_3_n_0\,
      Q => Q(1),
      R => \R[1]_i_1_n_0\
    );
aready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0131010101010101"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => \streamSync__0\(0),
      I2 => \streamSync__0\(1),
      I3 => aready_i_2_n_0,
      I4 => aready_i_3_n_0,
      I5 => \visibleArea__2\,
      O => aready_i_1_n_0
    );
aready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \h_cntr_reg__0\(1),
      I1 => \h_cntr_reg__0\(0),
      O => aready_i_2_n_0
    );
aready_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ce(0),
      I1 => ce(1),
      O => aready_i_3_n_0
    );
aready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => aready_i_1_n_0,
      Q => S_AXIS_TREADY,
      R => '0'
    );
\ce[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ce(0),
      O => p_0_in(0)
    );
\ce[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ce(0),
      I1 => ce(1),
      O => p_0_in(1)
    );
\ce_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => p_0_in(0),
      Q => ce(0),
      R => h_sync_reg0
    );
\ce_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => p_0_in(1),
      Q => ce(1),
      R => h_sync_reg0
    );
\dataIn[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => aready_i_2_n_0,
      I1 => ce(1),
      I2 => ce(0),
      I3 => \streamSync__0\(1),
      I4 => \streamSync__0\(0),
      I5 => \visibleArea__2\,
      O => \dataIn[29]_i_1_n_0\
    );
\dataIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(0),
      Q => \dataIn_reg_n_0_[0]\,
      R => '0'
    );
\dataIn_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(8),
      Q => \dataIn_reg_n_0_[10]\,
      R => '0'
    );
\dataIn_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(9),
      Q => \dataIn_reg_n_0_[11]\,
      R => '0'
    );
\dataIn_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(10),
      Q => p_3_in(0),
      R => '0'
    );
\dataIn_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(11),
      Q => p_3_in(1),
      R => '0'
    );
\dataIn_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(12),
      Q => \dataIn_reg_n_0_[16]\,
      R => '0'
    );
\dataIn_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(13),
      Q => \dataIn_reg_n_0_[17]\,
      R => '0'
    );
\dataIn_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(14),
      Q => \dataIn_reg_n_0_[18]\,
      R => '0'
    );
\dataIn_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(15),
      Q => \dataIn_reg_n_0_[19]\,
      R => '0'
    );
\dataIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(1),
      Q => \dataIn_reg_n_0_[1]\,
      R => '0'
    );
\dataIn_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(16),
      Q => p_2_in(0),
      R => '0'
    );
\dataIn_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(17),
      Q => p_2_in(1),
      R => '0'
    );
\dataIn_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(18),
      Q => \dataIn_reg_n_0_[24]\,
      R => '0'
    );
\dataIn_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(19),
      Q => \dataIn_reg_n_0_[25]\,
      R => '0'
    );
\dataIn_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(20),
      Q => \dataIn_reg_n_0_[26]\,
      R => '0'
    );
\dataIn_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(21),
      Q => \dataIn_reg_n_0_[27]\,
      R => '0'
    );
\dataIn_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(22),
      Q => p_1_in(0),
      R => '0'
    );
\dataIn_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(23),
      Q => p_1_in(1),
      R => '0'
    );
\dataIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(2),
      Q => \dataIn_reg_n_0_[2]\,
      R => '0'
    );
\dataIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(3),
      Q => \dataIn_reg_n_0_[3]\,
      R => '0'
    );
\dataIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(4),
      Q => \dataIn_reg_n_0_[4]\,
      R => '0'
    );
\dataIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(5),
      Q => \dataIn_reg_n_0_[5]\,
      R => '0'
    );
\dataIn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(6),
      Q => \dataIn_reg_n_0_[8]\,
      R => '0'
    );
\dataIn_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \dataIn[29]_i_1_n_0\,
      D => S_AXIS_TDATA(7),
      Q => \dataIn_reg_n_0_[9]\,
      R => '0'
    );
\h_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cntr_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\h_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_cntr_reg__0\(1),
      I1 => \h_cntr_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\h_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_cntr_reg__0\(0),
      I1 => \h_cntr_reg__0\(1),
      I2 => \h_cntr_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\h_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \h_cntr_reg__0\(2),
      I1 => \h_cntr_reg__0\(1),
      I2 => \h_cntr_reg__0\(0),
      I3 => \h_cntr_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\h_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \h_cntr_reg__0\(3),
      I1 => \h_cntr_reg__0\(0),
      I2 => \h_cntr_reg__0\(1),
      I3 => \h_cntr_reg__0\(2),
      I4 => \h_cntr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\h_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \h_cntr_reg__0\(2),
      I1 => \h_cntr_reg__0\(1),
      I2 => \h_cntr_reg__0\(0),
      I3 => \h_cntr_reg__0\(3),
      I4 => \h_cntr_reg__0\(4),
      I5 => \h_cntr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\h_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \h_cntr_reg__0\(4),
      I1 => \h_cntr_reg__0\(3),
      I2 => \h_cntr[6]_i_2_n_0\,
      I3 => \h_cntr_reg__0\(2),
      I4 => \h_cntr_reg__0\(5),
      I5 => \h_cntr_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\h_cntr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \h_cntr_reg__0\(1),
      I1 => \h_cntr_reg__0\(0),
      O => \h_cntr[6]_i_2_n_0\
    );
\h_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \h_cntr_reg__0\(5),
      I1 => \h_cntr[9]_i_4_n_0\,
      I2 => \h_cntr_reg__0\(6),
      I3 => \h_cntr_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\h_cntr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \h_cntr_reg__0\(6),
      I1 => \h_cntr[9]_i_4_n_0\,
      I2 => \h_cntr_reg__0\(5),
      I3 => \h_cntr_reg__0\(7),
      I4 => \h_cntr_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\h_cntr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \h_cntr[9]_i_3_n_0\,
      I1 => \h_cntr_reg__0\(9),
      I2 => \h_cntr_reg__0\(8),
      I3 => ce(1),
      I4 => ce(0),
      I5 => h_sync_reg0,
      O => \h_cntr[9]_i_1_n_0\
    );
\h_cntr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \h_cntr_reg__0\(8),
      I1 => \h_cntr_reg__0\(9),
      I2 => \h_cntr_reg__0\(7),
      I3 => \h_cntr_reg__0\(5),
      I4 => \h_cntr[9]_i_4_n_0\,
      I5 => \h_cntr_reg__0\(6),
      O => \p_0_in__0\(9)
    );
\h_cntr[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \h_cntr_reg__0\(6),
      I1 => \h_cntr_reg__0\(5),
      I2 => \h_cntr_reg__0\(7),
      I3 => \h_cntr[9]_i_4_n_0\,
      O => \h_cntr[9]_i_3_n_0\
    );
\h_cntr[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \h_cntr_reg__0\(4),
      I1 => \h_cntr_reg__0\(3),
      I2 => \h_cntr_reg__0\(0),
      I3 => \h_cntr_reg__0\(1),
      I4 => \h_cntr_reg__0\(2),
      O => \h_cntr[9]_i_4_n_0\
    );
\h_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(0),
      Q => \h_cntr_reg__0\(0),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(1),
      Q => \h_cntr_reg__0\(1),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(2),
      Q => \h_cntr_reg__0\(2),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(3),
      Q => \h_cntr_reg__0\(3),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(4),
      Q => \h_cntr_reg__0\(4),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(5),
      Q => \h_cntr_reg__0\(5),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(6),
      Q => \h_cntr_reg__0\(6),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(7),
      Q => \h_cntr_reg__0\(7),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(8),
      Q => \h_cntr_reg__0\(8),
      R => \h_cntr[9]_i_1_n_0\
    );
\h_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => B,
      D => \p_0_in__0\(9),
      Q => \h_cntr_reg__0\(9),
      R => \h_cntr[9]_i_1_n_0\
    );
h_sync_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \streamSync__0\(1),
      I1 => \streamSync__0\(0),
      I2 => S_AXIS_ARESETN,
      O => h_sync_reg0
    );
h_sync_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFBFF0000"
    )
        port map (
      I0 => h_sync_reg_i_3_n_0,
      I1 => \h_cntr_reg__0\(7),
      I2 => \h_cntr_reg__0\(8),
      I3 => \h_cntr_reg__0\(9),
      I4 => B,
      I5 => \^h_sync\,
      O => h_sync_reg_i_2_n_0
    );
h_sync_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAA000000005155"
    )
        port map (
      I0 => \h_cntr_reg__0\(4),
      I1 => \h_cntr_reg__0\(3),
      I2 => \h_cntr[6]_i_2_n_0\,
      I3 => \h_cntr_reg__0\(2),
      I4 => \h_cntr_reg__0\(5),
      I5 => \h_cntr_reg__0\(6),
      O => h_sync_reg_i_3_n_0
    );
h_sync_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => h_sync_reg_i_2_n_0,
      Q => \^h_sync\,
      R => h_sync_reg0
    );
\v_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v_cntr_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\v_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_cntr_reg__0\(0),
      I1 => \v_cntr_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\v_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \v_cntr_reg__0\(0),
      I1 => \v_cntr_reg__0\(1),
      I2 => \v_cntr_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\v_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \v_cntr_reg__0\(2),
      I1 => \v_cntr_reg__0\(1),
      I2 => \v_cntr_reg__0\(0),
      I3 => \v_cntr_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\v_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \v_cntr_reg__0\(0),
      I1 => \v_cntr_reg__0\(1),
      I2 => \v_cntr_reg__0\(2),
      I3 => \v_cntr_reg__0\(3),
      I4 => \v_cntr_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\v_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \v_cntr_reg__0\(3),
      I1 => \v_cntr_reg__0\(2),
      I2 => \v_cntr_reg__0\(1),
      I3 => \v_cntr_reg__0\(0),
      I4 => \v_cntr_reg__0\(4),
      I5 => \v_cntr_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\v_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \v_cntr_reg__0\(4),
      I1 => \v_cntr[7]_i_2_n_0\,
      I2 => \v_cntr_reg__0\(3),
      I3 => \v_cntr_reg__0\(5),
      I4 => \v_cntr_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\v_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \v_cntr_reg__0\(5),
      I1 => \v_cntr_reg__0\(3),
      I2 => \v_cntr[7]_i_2_n_0\,
      I3 => \v_cntr_reg__0\(4),
      I4 => \v_cntr_reg__0\(6),
      I5 => \v_cntr_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\v_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \v_cntr_reg__0\(0),
      I1 => \v_cntr_reg__0\(1),
      I2 => \v_cntr_reg__0\(2),
      O => \v_cntr[7]_i_2_n_0\
    );
\v_cntr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \v_cntr_reg__0\(7),
      I1 => \v_cntr_reg__0\(6),
      I2 => \v_cntr[9]_i_6_n_0\,
      I3 => \v_cntr_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\v_cntr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \h_cntr[9]_i_3_n_0\,
      I1 => B,
      I2 => \v_cntr[9]_i_4_n_0\,
      I3 => \v_cntr_reg__0\(9),
      I4 => \v_cntr[9]_i_5_n_0\,
      I5 => h_sync_reg0,
      O => \v_cntr[9]_i_1_n_0\
    );
\v_cntr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ce(0),
      I1 => ce(1),
      I2 => \h_cntr_reg__0\(8),
      I3 => \h_cntr_reg__0\(9),
      I4 => \h_cntr[9]_i_3_n_0\,
      O => \v_cntr[9]_i_2_n_0\
    );
\v_cntr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \v_cntr_reg__0\(8),
      I1 => \v_cntr[9]_i_6_n_0\,
      I2 => \v_cntr_reg__0\(6),
      I3 => \v_cntr_reg__0\(7),
      I4 => \v_cntr_reg__0\(9),
      O => \p_0_in__1\(9)
    );
\v_cntr[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \h_cntr_reg__0\(8),
      I1 => \h_cntr_reg__0\(9),
      O => \v_cntr[9]_i_4_n_0\
    );
\v_cntr[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \v_cntr_reg__0\(7),
      I1 => \v_cntr_reg__0\(8),
      I2 => \v_cntr_reg__0\(6),
      I3 => \v_cntr_reg__0\(5),
      I4 => \v_cntr_reg__0\(3),
      I5 => \v_cntr_reg__0\(4),
      O => \v_cntr[9]_i_5_n_0\
    );
\v_cntr[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \v_cntr_reg__0\(5),
      I1 => \v_cntr_reg__0\(3),
      I2 => \v_cntr_reg__0\(2),
      I3 => \v_cntr_reg__0\(1),
      I4 => \v_cntr_reg__0\(0),
      I5 => \v_cntr_reg__0\(4),
      O => \v_cntr[9]_i_6_n_0\
    );
\v_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => \v_cntr_reg__0\(0),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => \v_cntr_reg__0\(1),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => \v_cntr_reg__0\(2),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => \v_cntr_reg__0\(3),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => \v_cntr_reg__0\(4),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => \v_cntr_reg__0\(5),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => \v_cntr_reg__0\(6),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => \v_cntr_reg__0\(7),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(8),
      Q => \v_cntr_reg__0\(8),
      R => \v_cntr[9]_i_1_n_0\
    );
\v_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => \v_cntr[9]_i_2_n_0\,
      D => \p_0_in__1\(9),
      Q => \v_cntr_reg__0\(9),
      R => \v_cntr[9]_i_1_n_0\
    );
v_sync_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => v_sync_reg_i_2_n_0,
      I1 => ce(0),
      I2 => ce(1),
      I3 => \^v_sync\,
      O => v_sync_reg_i_1_n_0
    );
v_sync_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEFFFFFFFFF"
    )
        port map (
      I0 => v_sync_reg_i_3_n_0,
      I1 => \v_cntr_reg__0\(2),
      I2 => \v_cntr_reg__0\(1),
      I3 => \v_cntr_reg__0\(0),
      I4 => \v_cntr_reg__0\(4),
      I5 => \v_cntr_reg__0\(3),
      O => v_sync_reg_i_2_n_0
    );
v_sync_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \v_cntr_reg__0\(9),
      I1 => \v_cntr_reg__0\(7),
      I2 => \v_cntr_reg__0\(8),
      I3 => \v_cntr_reg__0\(5),
      I4 => \v_cntr_reg__0\(6),
      O => v_sync_reg_i_3_n_0
    );
v_sync_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => v_sync_reg_i_1_n_0,
      Q => \^v_sync\,
      R => h_sync_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI4S_VGA_v1_0_AXI4S_0_0 is
  port (
    R1 : out STD_LOGIC;
    R0 : out STD_LOGIC;
    G1 : out STD_LOGIC;
    G0 : out STD_LOGIC;
    B1 : out STD_LOGIC;
    B0 : out STD_LOGIC;
    H_sync : out STD_LOGIC;
    V_sync : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_TLAST : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_AXI4S_VGA_v1_0_AXI4S_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_AXI4S_VGA_v1_0_AXI4S_0_0 : entity is "design_1_AXI4S_VGA_v1_0_AXI4S_0_0,AXI4S_VGA_v1_0_AXI4S_In,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_AXI4S_VGA_v1_0_AXI4S_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_AXI4S_VGA_v1_0_AXI4S_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_AXI4S_VGA_v1_0_AXI4S_0_0 : entity is "AXI4S_VGA_v1_0_AXI4S_In,Vivado 2018.2";
end design_1_AXI4S_VGA_v1_0_AXI4S_0_0;

architecture STRUCTURE of design_1_AXI4S_VGA_v1_0_AXI4S_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXIS_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXIS_ACLK : signal is "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk";
  attribute X_INTERFACE_INFO of S_AXIS_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXIS_ARESETN : signal is "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXIS_TLAST : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER of S_AXIS_TVALID : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of S_AXIS_TSTRB : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
begin
inst: entity work.design_1_AXI4S_VGA_v1_0_AXI4S_0_0_AXI4S_VGA_v1_0_AXI4S_In
     port map (
      B1(1) => B1,
      B1(0) => B0,
      G1(1) => G1,
      G1(0) => G0,
      H_sync => H_sync,
      Q(1) => R1,
      Q(0) => R0,
      S_AXIS_ACLK => S_AXIS_ACLK,
      S_AXIS_ARESETN => S_AXIS_ARESETN,
      S_AXIS_TDATA(23 downto 18) => S_AXIS_TDATA(29 downto 24),
      S_AXIS_TDATA(17 downto 12) => S_AXIS_TDATA(21 downto 16),
      S_AXIS_TDATA(11 downto 6) => S_AXIS_TDATA(13 downto 8),
      S_AXIS_TDATA(5 downto 0) => S_AXIS_TDATA(5 downto 0),
      S_AXIS_TLAST => S_AXIS_TLAST,
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      V_sync => V_sync
    );
end STRUCTURE;
