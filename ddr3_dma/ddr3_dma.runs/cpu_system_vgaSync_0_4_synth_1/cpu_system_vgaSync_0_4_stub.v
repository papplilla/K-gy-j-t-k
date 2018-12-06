// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Dec  6 10:16:23 2018
// Host        : DESKTOP-02M2VBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_system_vgaSync_0_4_stub.v
// Design      : cpu_system_vgaSync_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vgaSync,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rstn, wdata, wvalid, wlast, wready, rout, gout, 
  bout, hs, vs)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,wdata[7:0],wvalid,wlast,wready,rout[1:0],gout[1:0],bout[1:0],hs,vs" */;
  input clk;
  input rstn;
  input [7:0]wdata;
  input wvalid;
  input wlast;
  output wready;
  output [1:0]rout;
  output [1:0]gout;
  output [1:0]bout;
  output hs;
  output vs;
endmodule
