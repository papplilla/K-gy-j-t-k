-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Dec  1 09:55:28 2018
-- Host        : DESKTOP-02M2VBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/D_Strabi/D
--               Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_vgaSync_0_4/cpu_system_vgaSync_0_4_sim_netlist.vhdl}
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
    wready : out STD_LOGIC;
    rout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wvalid : in STD_LOGIC;
    wlast : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cpu_system_vgaSync_0_4_vgaSync : entity is "vgaSync";
end cpu_system_vgaSync_0_4_vgaSync;

architecture STRUCTURE of cpu_system_vgaSync_0_4_vgaSync is
  signal data : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \hcont[0]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[1]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[2]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[3]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[4]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[5]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[5]_i_2_n_0\ : STD_LOGIC;
  signal \hcont[6]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[7]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[8]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[9]_i_1_n_0\ : STD_LOGIC;
  signal \hcont[9]_i_2_n_0\ : STD_LOGIC;
  signal hcont_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rout_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal wready_reg_i_1_n_0 : STD_LOGIC;
  signal wready_reg_i_2_n_0 : STD_LOGIC;
  signal wready_reg_i_3_n_0 : STD_LOGIC;
  signal wready_reg_i_4_n_0 : STD_LOGIC;
  signal wready_reg_i_5_n_0 : STD_LOGIC;
  signal wready_reg_i_6_n_0 : STD_LOGIC;
  signal wready_reg_i_7_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \bout_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \bout_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \data_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gout_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gout_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hcont[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hcont[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hcont[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hcont[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hcont[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hcont[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hcont[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hcont[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hcont[8]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \rout_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rout_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \rout_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \state_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \state_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \state_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of wready_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of wready_reg_i_5 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of wready_reg_i_7 : label is "soft_lutpair3";
begin
\bout_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data(4),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => bout(0)
    );
\bout_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data(5),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => bout(1)
    );
\data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata(0),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => data(0)
    );
\data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata(1),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => data(1)
    );
\data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata(2),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => data(2)
    );
\data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata(3),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => data(3)
    );
\data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata(4),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => data(4)
    );
\data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata(5),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => data(5)
    );
\gout_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data(0),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => gout(0)
    );
\gout_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data(1),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => gout(1)
    );
\hcont[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      I1 => hcont_reg(0),
      O => \hcont[0]_i_1_n_0\
    );
\hcont[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => rst,
      I1 => hcont_reg(0),
      I2 => hcont_reg(1),
      O => \hcont[1]_i_1_n_0\
    );
\hcont[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => hcont_reg(1),
      I1 => hcont_reg(0),
      I2 => rst,
      I3 => hcont_reg(2),
      O => \hcont[2]_i_1_n_0\
    );
\hcont[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => hcont_reg(2),
      I1 => hcont_reg(0),
      I2 => hcont_reg(1),
      I3 => rst,
      I4 => hcont_reg(3),
      O => \hcont[3]_i_1_n_0\
    );
\hcont[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => hcont_reg(3),
      I1 => hcont_reg(1),
      I2 => hcont_reg(0),
      I3 => hcont_reg(2),
      I4 => rst,
      I5 => hcont_reg(4),
      O => \hcont[4]_i_1_n_0\
    );
\hcont[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \hcont[5]_i_2_n_0\,
      I1 => rst,
      I2 => hcont_reg(5),
      O => \hcont[5]_i_1_n_0\
    );
\hcont[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => hcont_reg(4),
      I1 => hcont_reg(2),
      I2 => hcont_reg(0),
      I3 => hcont_reg(1),
      I4 => hcont_reg(3),
      O => \hcont[5]_i_2_n_0\
    );
\hcont[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \hcont[9]_i_2_n_0\,
      I1 => rst,
      I2 => hcont_reg(6),
      O => \hcont[6]_i_1_n_0\
    );
\hcont[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D02"
    )
        port map (
      I0 => hcont_reg(6),
      I1 => \hcont[9]_i_2_n_0\,
      I2 => rst,
      I3 => hcont_reg(7),
      O => \hcont[7]_i_1_n_0\
    );
\hcont[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00DF0020"
    )
        port map (
      I0 => hcont_reg(7),
      I1 => \hcont[9]_i_2_n_0\,
      I2 => hcont_reg(6),
      I3 => rst,
      I4 => hcont_reg(8),
      O => \hcont[8]_i_1_n_0\
    );
\hcont[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DFFF00002000"
    )
        port map (
      I0 => hcont_reg(6),
      I1 => \hcont[9]_i_2_n_0\,
      I2 => hcont_reg(7),
      I3 => hcont_reg(8),
      I4 => rst,
      I5 => hcont_reg(9),
      O => \hcont[9]_i_1_n_0\
    );
\hcont[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => hcont_reg(5),
      I1 => hcont_reg(3),
      I2 => hcont_reg(1),
      I3 => hcont_reg(0),
      I4 => hcont_reg(2),
      I5 => hcont_reg(4),
      O => \hcont[9]_i_2_n_0\
    );
\hcont_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[0]_i_1_n_0\,
      Q => hcont_reg(0),
      R => '0'
    );
\hcont_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[1]_i_1_n_0\,
      Q => hcont_reg(1),
      R => '0'
    );
\hcont_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[2]_i_1_n_0\,
      Q => hcont_reg(2),
      R => '0'
    );
\hcont_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[3]_i_1_n_0\,
      Q => hcont_reg(3),
      R => '0'
    );
\hcont_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[4]_i_1_n_0\,
      Q => hcont_reg(4),
      R => '0'
    );
\hcont_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[5]_i_1_n_0\,
      Q => hcont_reg(5),
      R => '0'
    );
\hcont_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[6]_i_1_n_0\,
      Q => hcont_reg(6),
      R => '0'
    );
\hcont_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[7]_i_1_n_0\,
      Q => hcont_reg(7),
      R => '0'
    );
\hcont_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[8]_i_1_n_0\,
      Q => hcont_reg(8),
      R => '0'
    );
\hcont_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcont[9]_i_1_n_0\,
      Q => hcont_reg(9),
      R => '0'
    );
\rout_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data(2),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rout(0)
    );
\rout_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data(3),
      G => \rout_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rout(1)
    );
\rout_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => wvalid,
      O => \rout_reg[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wready_reg_i_4_n_0,
      G => \state_reg[1]_i_2_n_0\,
      GE => '1',
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \state_reg[1]_i_1_n_0\,
      G => \state_reg[1]_i_2_n_0\,
      GE => '1',
      Q => state(1)
    );
\state_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \state_reg[1]_i_1_n_0\
    );
\state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3A003A003A003A"
    )
        port map (
      I0 => wlast,
      I1 => wvalid,
      I2 => state(1),
      I3 => state(0),
      I4 => wready_reg_i_6_n_0,
      I5 => wready_reg_i_7_n_0,
      O => \state_reg[1]_i_2_n_0\
    );
wready_reg: unisim.vcomponents.LDCP
     port map (
      CLR => wready_reg_i_3_n_0,
      D => wready_reg_i_1_n_0,
      G => wready_reg_i_2_n_0,
      PRE => wready_reg_i_4_n_0,
      Q => wready
    );
wready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => wready_reg_i_5_n_0,
      I1 => hcont_reg(1),
      I2 => hcont_reg(0),
      I3 => hcont_reg(3),
      I4 => hcont_reg(2),
      I5 => wready_reg_i_6_n_0,
      O => wready_reg_i_1_n_0
    );
wready_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F454545"
    )
        port map (
      I0 => state(0),
      I1 => wvalid,
      I2 => state(1),
      I3 => wready_reg_i_6_n_0,
      I4 => wready_reg_i_7_n_0,
      O => wready_reg_i_2_n_0
    );
wready_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => wlast,
      O => wready_reg_i_3_n_0
    );
wready_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => wready_reg_i_4_n_0
    );
wready_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => wready_reg_i_5_n_0
    );
wready_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => hcont_reg(4),
      I1 => hcont_reg(5),
      I2 => hcont_reg(6),
      I3 => hcont_reg(7),
      I4 => hcont_reg(9),
      I5 => hcont_reg(8),
      O => wready_reg_i_6_n_0
    );
wready_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => hcont_reg(1),
      I1 => hcont_reg(0),
      I2 => hcont_reg(3),
      I3 => hcont_reg(2),
      O => wready_reg_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_system_vgaSync_0_4 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
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
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cpu_system_mig_7series_0_0_ui_clk";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
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
      rst => rst,
      wdata(5 downto 0) => wdata(5 downto 0),
      wlast => wlast,
      wready => wready,
      wvalid => wvalid
    );
end STRUCTURE;
