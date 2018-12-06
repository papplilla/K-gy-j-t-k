-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  5 15:08:20 2018
-- Host        : DESKTOP-02M2VBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_system_vgaSync_0_4_stub.vhdl
-- Design      : cpu_system_vgaSync_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,wdata[7:0],wvalid,wlast,wready,rout[1:0],gout[1:0],bout[1:0],hs,vs";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vgaSync,Vivado 2018.2";
begin
end;
