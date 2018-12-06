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


// IP VLNV: xilinx.com:module_ref:vgaSync:1.0
// IP Revision: 1

(* X_CORE_INFO = "vgaSync,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "cpu_system_vgaSync_0_4,vgaSync,{}" *)
(* CORE_GENERATION_INFO = "cpu_system_vgaSync_0_4,vgaSync,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=vgaSync,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,htotal=3200,vtotal=521,hactive=2560,vactive=480,hfrontporch=64,hsyncpulse=384,hbackporch=192,vfrontporch=10,vsyncpulse=2,vbackporch=29,hsyncpolarity=0,vsyncpolarity=0,wait_for_wlast=0,wait_for_origo=1,vga_write_pixels=2}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cpu_system_vgaSync_0_4 (
  clk,
  rstn,
  wdata,
  wvalid,
  wlast,
  wready,
  rout,
  gout,
  bout,
  hs,
  vs
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cpu_system_mig_7series_0_0_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
input wire [7 : 0] wdata;
input wire wvalid;
input wire wlast;
output wire wready;
output wire [1 : 0] rout;
output wire [1 : 0] gout;
output wire [1 : 0] bout;
output wire hs;
output wire vs;

  vgaSync #(
    .htotal(3200),
    .vtotal(521),
    .hactive(2560),
    .vactive(480),
    .hfrontporch(64),
    .hsyncpulse(384),
    .hbackporch(192),
    .vfrontporch(10),
    .vsyncpulse(2),
    .vbackporch(29),
    .hsyncpolarity(0),
    .vsyncpolarity(0),
    .wait_for_wlast(0),
    .wait_for_origo(1),
    .vga_write_pixels(2)
  ) inst (
    .clk(clk),
    .rstn(rstn),
    .wdata(wdata),
    .wvalid(wvalid),
    .wlast(wlast),
    .wready(wready),
    .rout(rout),
    .gout(gout),
    .bout(bout),
    .hs(hs),
    .vs(vs)
  );
endmodule