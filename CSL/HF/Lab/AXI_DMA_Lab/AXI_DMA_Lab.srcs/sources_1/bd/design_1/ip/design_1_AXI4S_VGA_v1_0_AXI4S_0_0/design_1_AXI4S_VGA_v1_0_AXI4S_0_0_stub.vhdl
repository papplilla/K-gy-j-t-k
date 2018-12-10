-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Nov 11 17:09:29 2018
-- Host        : Frank running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Janos/Documents/Vivado/Lab/AXI_DMA_Lab/AXI_DMA_Lab.srcs/sources_1/bd/design_1/ip/design_1_AXI4S_VGA_v1_0_AXI4S_0_0/design_1_AXI4S_VGA_v1_0_AXI4S_0_0_stub.vhdl
-- Design      : design_1_AXI4S_VGA_v1_0_AXI4S_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_AXI4S_VGA_v1_0_AXI4S_0_0 is
  Port ( 
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

end design_1_AXI4S_VGA_v1_0_AXI4S_0_0;

architecture stub of design_1_AXI4S_VGA_v1_0_AXI4S_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "R1,R0,G1,G0,B1,B0,H_sync,V_sync,S_AXIS_ACLK,S_AXIS_ARESETN,S_AXIS_TREADY,S_AXIS_TDATA[31:0],S_AXIS_TSTRB[3:0],S_AXIS_TLAST,S_AXIS_TVALID";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AXI4S_VGA_v1_0_AXI4S_In,Vivado 2018.2";
begin
end;
