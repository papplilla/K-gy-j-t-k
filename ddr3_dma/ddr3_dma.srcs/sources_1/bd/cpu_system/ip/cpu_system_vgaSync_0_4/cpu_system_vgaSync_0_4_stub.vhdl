-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  5 12:45:31 2018
-- Host        : DESKTOP-02M2VBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_vgaSync_0_4/cpu_system_vgaSync_0_4_stub.vhdl
-- Design      : cpu_system_vgaSync_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_system_vgaSync_0_4 is
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

end cpu_system_vgaSync_0_4;

architecture stub of cpu_system_vgaSync_0_4 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,wdata[7:0],wvalid,wlast,wready,rout[1:0],gout[1:0],bout[1:0],hs,vs";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vgaSync,Vivado 2018.2";
begin
end;
