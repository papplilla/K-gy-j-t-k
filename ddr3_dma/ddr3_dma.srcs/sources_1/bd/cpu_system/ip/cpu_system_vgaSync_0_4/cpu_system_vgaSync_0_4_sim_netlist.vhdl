-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Dec  6 10:16:24 2018
-- Host        : DESKTOP-02M2VBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_vgaSync_0_4/cpu_system_vgaSync_0_4_sim_netlist.vhdl
-- Design      : cpu_system_vgaSync_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_system_vgaSync_0_4_vgaSync is
  port (
    rout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wready : out STD_LOGIC;
    wlast : in STD_LOGIC;
    wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cpu_system_vgaSync_0_4_vgaSync : entity is "vgaSync";
end cpu_system_vgaSync_0_4_vgaSync;

architecture STRUCTURE of cpu_system_vgaSync_0_4_vgaSync is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_n_0_[5]\ : STD_LOGIC;
  signal \hcont[9]_i_2_n_0\ : STD_LOGIC;
  signal \hcont_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rout[1]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal \state0__8\ : STD_LOGIC;
  signal \^wready\ : STD_LOGIC;
  signal wready_i_1_n_0 : STD_LOGIC;
  signal wready_i_2_n_0 : STD_LOGIC;
  signal wready_i_3_n_0 : STD_LOGIC;
  signal wready_i_4_n_0 : STD_LOGIC;
  signal wready_i_5_n_0 : STD_LOGIC;
  signal wready_i_6_n_0 : STD_LOGIC;
  signal wready_i_7_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:10,iSTATE0:00,iSTATE1:01,";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:10,iSTATE0:00,iSTATE1:01,";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \hcont[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hcont[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hcont[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hcont[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hcont[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hcont[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hcont[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hcont[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of wready_i_4 : label is "soft_lutpair0";
begin
  wready <= \^wready\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCC0FFF000000AA"
    )
        port map (
      I0 => wlast,
      I1 => wvalid,
      I2 => \state0__8\,
      I3 => state(0),
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCFF550000F000"
    )
        port map (
      I0 => wlast,
      I1 => wvalid,
      I2 => \state0__8\,
      I3 => state(0),
      I4 => state(1),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => wready_i_3_n_0,
      I1 => \hcont_reg__0\(2),
      I2 => \hcont_reg__0\(3),
      I3 => \hcont_reg__0\(0),
      I4 => \hcont_reg__0\(1),
      O => \state0__8\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_2_n_0\,
      Q => state(1),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\bout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => \data_reg_n_0_[4]\,
      Q => bout(0),
      R => '0'
    );
\bout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => \data_reg_n_0_[5]\,
      Q => bout(1),
      R => '0'
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => wdata(0),
      Q => \data_reg_n_0_[0]\,
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => wdata(1),
      Q => \data_reg_n_0_[1]\,
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => wdata(2),
      Q => p_0_in(0),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => wdata(3),
      Q => p_0_in(1),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => wdata(4),
      Q => \data_reg_n_0_[4]\,
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => wdata(5),
      Q => \data_reg_n_0_[5]\,
      R => '0'
    );
\gout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => \data_reg_n_0_[0]\,
      Q => gout(0),
      R => '0'
    );
\gout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => \data_reg_n_0_[1]\,
      Q => gout(1),
      R => '0'
    );
\hcont[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hcont_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\hcont[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hcont_reg__0\(0),
      I1 => \hcont_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\hcont[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \hcont_reg__0\(0),
      I1 => \hcont_reg__0\(1),
      I2 => \hcont_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\hcont[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \hcont_reg__0\(1),
      I1 => \hcont_reg__0\(0),
      I2 => \hcont_reg__0\(2),
      I3 => \hcont_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\hcont[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \hcont_reg__0\(3),
      I1 => \hcont_reg__0\(2),
      I2 => \hcont_reg__0\(0),
      I3 => \hcont_reg__0\(1),
      I4 => \hcont_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\hcont[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \hcont_reg__0\(1),
      I1 => \hcont_reg__0\(0),
      I2 => \hcont_reg__0\(2),
      I3 => \hcont_reg__0\(3),
      I4 => \hcont_reg__0\(4),
      I5 => \hcont_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\hcont[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hcont[9]_i_2_n_0\,
      I1 => \hcont_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\hcont[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \hcont[9]_i_2_n_0\,
      I1 => \hcont_reg__0\(6),
      I2 => \hcont_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\hcont[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \hcont_reg__0\(7),
      I1 => \hcont_reg__0\(6),
      I2 => \hcont[9]_i_2_n_0\,
      I3 => \hcont_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\hcont[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \hcont_reg__0\(8),
      I1 => \hcont[9]_i_2_n_0\,
      I2 => \hcont_reg__0\(6),
      I3 => \hcont_reg__0\(7),
      I4 => \hcont_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\hcont[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \hcont_reg__0\(1),
      I1 => \hcont_reg__0\(0),
      I2 => \hcont_reg__0\(2),
      I3 => \hcont_reg__0\(3),
      I4 => \hcont_reg__0\(4),
      I5 => \hcont_reg__0\(5),
      O => \hcont[9]_i_2_n_0\
    );
\hcont_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \hcont_reg__0\(0),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \hcont_reg__0\(1),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \hcont_reg__0\(2),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \hcont_reg__0\(3),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \hcont_reg__0\(4),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \hcont_reg__0\(5),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \hcont_reg__0\(6),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \hcont_reg__0\(7),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \hcont_reg__0\(8),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\hcont_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => \hcont_reg__0\(9),
      R => \FSM_sequential_state[1]_i_1_n_0\
    );
\rout[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rstn,
      I3 => wvalid,
      O => \rout[1]_i_1_n_0\
    );
\rout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => p_0_in(0),
      Q => rout(0),
      R => '0'
    );
\rout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rout[1]_i_1_n_0\,
      D => p_0_in(1),
      Q => rout(1),
      R => '0'
    );
wready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rstn,
      I3 => wlast,
      I4 => wready_i_2_n_0,
      O => wready_i_1_n_0
    );
wready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF80FF"
    )
        port map (
      I0 => wready_i_3_n_0,
      I1 => wready_i_4_n_0,
      I2 => wready_i_5_n_0,
      I3 => wready_i_6_n_0,
      I4 => wready_i_7_n_0,
      I5 => \^wready\,
      O => wready_i_2_n_0
    );
wready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \hcont_reg__0\(4),
      I1 => \hcont_reg__0\(5),
      I2 => \hcont_reg__0\(6),
      I3 => \hcont_reg__0\(7),
      I4 => \hcont_reg__0\(9),
      I5 => \hcont_reg__0\(8),
      O => wready_i_3_n_0
    );
wready_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \hcont_reg__0\(1),
      I1 => \hcont_reg__0\(0),
      I2 => \hcont_reg__0\(3),
      I3 => \hcont_reg__0\(2),
      O => wready_i_4_n_0
    );
wready_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rstn,
      I1 => state(1),
      O => wready_i_5_n_0
    );
wready_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rstn,
      O => wready_i_6_n_0
    );
wready_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008C"
    )
        port map (
      I0 => wvalid,
      I1 => rstn,
      I2 => state(1),
      I3 => state(0),
      O => wready_i_7_n_0
    );
wready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wready_i_1_n_0,
      Q => \^wready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_system_vgaSync_0_4 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wvalid : in STD_LOGIC;
    wlast : in STD_LOGIC;
    wready : out STD_LOGIC;
    rout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs : out STD_LOGIC;
    vs : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cpu_system_vgaSync_0_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cpu_system_vgaSync_0_4 : entity is "cpu_system_vgaSync_0_4,vgaSync,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cpu_system_vgaSync_0_4 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cpu_system_vgaSync_0_4 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cpu_system_vgaSync_0_4 : entity is "vgaSync,Vivado 2018.2";
end cpu_system_vgaSync_0_4;

architecture STRUCTURE of cpu_system_vgaSync_0_4 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cpu_system_mig_7series_0_0_ui_clk";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW";
begin
  hs <= \<const1>\;
  vs <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.cpu_system_vgaSync_0_4_vgaSync
     port map (
      bout(1 downto 0) => bout(1 downto 0),
      clk => clk,
      gout(1 downto 0) => gout(1 downto 0),
      rout(1 downto 0) => rout(1 downto 0),
      rstn => rstn,
      wdata(5 downto 0) => wdata(5 downto 0),
      wlast => wlast,
      wready => wready,
      wvalid => wvalid
    );
end STRUCTURE;
