// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Nov 11 17:09:28 2018
// Host        : Frank running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI4S_VGA_v1_0_AXI4S_0_0_stub.v
// Design      : design_1_AXI4S_VGA_v1_0_AXI4S_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXI4S_VGA_v1_0_AXI4S_In,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(R1, R0, G1, G0, B1, B0, H_sync, V_sync, S_AXIS_ACLK, 
  S_AXIS_ARESETN, S_AXIS_TREADY, S_AXIS_TDATA, S_AXIS_TSTRB, S_AXIS_TLAST, S_AXIS_TVALID)
/* synthesis syn_black_box black_box_pad_pin="R1,R0,G1,G0,B1,B0,H_sync,V_sync,S_AXIS_ACLK,S_AXIS_ARESETN,S_AXIS_TREADY,S_AXIS_TDATA[31:0],S_AXIS_TSTRB[3:0],S_AXIS_TLAST,S_AXIS_TVALID" */;
  output R1;
  output R0;
  output G1;
  output G0;
  output B1;
  output B0;
  output H_sync;
  output V_sync;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  output S_AXIS_TREADY;
  input [31:0]S_AXIS_TDATA;
  input [3:0]S_AXIS_TSTRB;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;
endmodule
