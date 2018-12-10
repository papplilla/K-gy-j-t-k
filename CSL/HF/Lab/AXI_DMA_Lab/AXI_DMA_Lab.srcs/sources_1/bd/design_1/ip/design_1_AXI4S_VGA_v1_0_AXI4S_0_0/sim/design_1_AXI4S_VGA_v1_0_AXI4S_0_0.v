// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:AXI4S_VGA_v1_0_AXI4S_In:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_AXI4S_VGA_v1_0_AXI4S_0_0 (
  R1,
  R0,
  G1,
  G0,
  B1,
  B0,
  H_sync,
  V_sync,
  S_AXIS_ACLK,
  S_AXIS_ARESETN,
  S_AXIS_TREADY,
  S_AXIS_TDATA,
  S_AXIS_TSTRB,
  S_AXIS_TLAST,
  S_AXIS_TVALID
);

output wire R1;
output wire R0;
output wire G1;
output wire G0;
output wire B1;
output wire B0;
output wire H_sync;
output wire V_sync;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK" *)
input wire S_AXIS_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST" *)
input wire S_AXIS_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
output wire S_AXIS_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
input wire [31 : 0] S_AXIS_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *)
input wire [3 : 0] S_AXIS_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *)
input wire S_AXIS_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
input wire S_AXIS_TVALID;

  AXI4S_VGA_v1_0_AXI4S_In #(
    .waitForTlast(2'B00),
    .waitForData(2'B01),
    .inSync(2'B10)
  ) inst (
    .R1(R1),
    .R0(R0),
    .G1(G1),
    .G0(G0),
    .B1(B1),
    .B0(B0),
    .H_sync(H_sync),
    .V_sync(V_sync),
    .S_AXIS_ACLK(S_AXIS_ACLK),
    .S_AXIS_ARESETN(S_AXIS_ARESETN),
    .S_AXIS_TREADY(S_AXIS_TREADY),
    .S_AXIS_TDATA(S_AXIS_TDATA),
    .S_AXIS_TSTRB(S_AXIS_TSTRB),
    .S_AXIS_TLAST(S_AXIS_TLAST),
    .S_AXIS_TVALID(S_AXIS_TVALID)
  );
endmodule
