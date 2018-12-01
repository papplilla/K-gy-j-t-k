// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec  1 09:55:28 2018
// Host        : DESKTOP-02M2VBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_system_vgaSync_0_4_sim_netlist.v
// Design      : cpu_system_vgaSync_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_system_vgaSync_0_4,vgaSync,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vgaSync,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    wdata,
    wvalid,
    wlast,
    wready,
    rout,
    gout,
    bout,
    hs,
    vs);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cpu_system_mig_7series_0_0_ui_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [7:0]wdata;
  input wvalid;
  input wlast;
  output wready;
  output [1:0]rout;
  output [1:0]gout;
  output [1:0]bout;
  output hs;
  output vs;

  wire \<const1> ;
  wire [1:0]bout;
  wire clk;
  wire [1:0]gout;
  wire [1:0]rout;
  wire rst;
  wire [7:0]wdata;
  wire wlast;
  wire wready;
  wire wvalid;

  assign hs = \<const1> ;
  assign vs = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vgaSync inst
       (.bout(bout),
        .clk(clk),
        .gout(gout),
        .rout(rout),
        .rst(rst),
        .wdata(wdata[5:0]),
        .wlast(wlast),
        .wready(wready),
        .wvalid(wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vgaSync
   (wready,
    rout,
    gout,
    bout,
    wdata,
    wvalid,
    wlast,
    rst,
    clk);
  output wready;
  output [1:0]rout;
  output [1:0]gout;
  output [1:0]bout;
  input [5:0]wdata;
  input wvalid;
  input wlast;
  input rst;
  input clk;

  wire [1:0]bout;
  wire clk;
  wire [5:0]data;
  wire [1:0]gout;
  wire \hcont[0]_i_1_n_0 ;
  wire \hcont[1]_i_1_n_0 ;
  wire \hcont[2]_i_1_n_0 ;
  wire \hcont[3]_i_1_n_0 ;
  wire \hcont[4]_i_1_n_0 ;
  wire \hcont[5]_i_1_n_0 ;
  wire \hcont[5]_i_2_n_0 ;
  wire \hcont[6]_i_1_n_0 ;
  wire \hcont[7]_i_1_n_0 ;
  wire \hcont[8]_i_1_n_0 ;
  wire \hcont[9]_i_1_n_0 ;
  wire \hcont[9]_i_2_n_0 ;
  wire [9:0]hcont_reg;
  wire [1:0]rout;
  wire \rout_reg[1]_i_1_n_0 ;
  wire rst;
  wire [1:0]state;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg[1]_i_2_n_0 ;
  wire [5:0]wdata;
  wire wlast;
  wire wready;
  wire wready_reg_i_1_n_0;
  wire wready_reg_i_2_n_0;
  wire wready_reg_i_3_n_0;
  wire wready_reg_i_4_n_0;
  wire wready_reg_i_5_n_0;
  wire wready_reg_i_6_n_0;
  wire wready_reg_i_7_n_0;
  wire wvalid;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bout_reg[0] 
       (.CLR(1'b0),
        .D(data[4]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(bout[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bout_reg[1] 
       (.CLR(1'b0),
        .D(data[5]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(bout[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.CLR(1'b0),
        .D(wdata[0]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.CLR(1'b0),
        .D(wdata[1]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.CLR(1'b0),
        .D(wdata[2]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.CLR(1'b0),
        .D(wdata[3]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.CLR(1'b0),
        .D(wdata[4]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.CLR(1'b0),
        .D(wdata[5]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gout_reg[0] 
       (.CLR(1'b0),
        .D(data[0]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gout[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gout_reg[1] 
       (.CLR(1'b0),
        .D(data[1]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gout[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \hcont[0]_i_1 
       (.I0(rst),
        .I1(hcont_reg[0]),
        .O(\hcont[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \hcont[1]_i_1 
       (.I0(rst),
        .I1(hcont_reg[0]),
        .I2(hcont_reg[1]),
        .O(\hcont[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \hcont[2]_i_1 
       (.I0(hcont_reg[1]),
        .I1(hcont_reg[0]),
        .I2(rst),
        .I3(hcont_reg[2]),
        .O(\hcont[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \hcont[3]_i_1 
       (.I0(hcont_reg[2]),
        .I1(hcont_reg[0]),
        .I2(hcont_reg[1]),
        .I3(rst),
        .I4(hcont_reg[3]),
        .O(\hcont[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \hcont[4]_i_1 
       (.I0(hcont_reg[3]),
        .I1(hcont_reg[1]),
        .I2(hcont_reg[0]),
        .I3(hcont_reg[2]),
        .I4(rst),
        .I5(hcont_reg[4]),
        .O(\hcont[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \hcont[5]_i_1 
       (.I0(\hcont[5]_i_2_n_0 ),
        .I1(rst),
        .I2(hcont_reg[5]),
        .O(\hcont[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \hcont[5]_i_2 
       (.I0(hcont_reg[4]),
        .I1(hcont_reg[2]),
        .I2(hcont_reg[0]),
        .I3(hcont_reg[1]),
        .I4(hcont_reg[3]),
        .O(\hcont[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h21)) 
    \hcont[6]_i_1 
       (.I0(\hcont[9]_i_2_n_0 ),
        .I1(rst),
        .I2(hcont_reg[6]),
        .O(\hcont[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0D02)) 
    \hcont[7]_i_1 
       (.I0(hcont_reg[6]),
        .I1(\hcont[9]_i_2_n_0 ),
        .I2(rst),
        .I3(hcont_reg[7]),
        .O(\hcont[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00DF0020)) 
    \hcont[8]_i_1 
       (.I0(hcont_reg[7]),
        .I1(\hcont[9]_i_2_n_0 ),
        .I2(hcont_reg[6]),
        .I3(rst),
        .I4(hcont_reg[8]),
        .O(\hcont[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000DFFF00002000)) 
    \hcont[9]_i_1 
       (.I0(hcont_reg[6]),
        .I1(\hcont[9]_i_2_n_0 ),
        .I2(hcont_reg[7]),
        .I3(hcont_reg[8]),
        .I4(rst),
        .I5(hcont_reg[9]),
        .O(\hcont[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \hcont[9]_i_2 
       (.I0(hcont_reg[5]),
        .I1(hcont_reg[3]),
        .I2(hcont_reg[1]),
        .I3(hcont_reg[0]),
        .I4(hcont_reg[2]),
        .I5(hcont_reg[4]),
        .O(\hcont[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[0]_i_1_n_0 ),
        .Q(hcont_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[1]_i_1_n_0 ),
        .Q(hcont_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[2]_i_1_n_0 ),
        .Q(hcont_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[3]_i_1_n_0 ),
        .Q(hcont_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[4]_i_1_n_0 ),
        .Q(hcont_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[5]_i_1_n_0 ),
        .Q(hcont_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[6]_i_1_n_0 ),
        .Q(hcont_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[7]_i_1_n_0 ),
        .Q(hcont_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[8]_i_1_n_0 ),
        .Q(hcont_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcont[9]_i_1_n_0 ),
        .Q(hcont_reg[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rout_reg[0] 
       (.CLR(1'b0),
        .D(data[2]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rout[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rout_reg[1] 
       (.CLR(1'b0),
        .D(data[3]),
        .G(\rout_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rout[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \rout_reg[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(wvalid),
        .O(\rout_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.CLR(1'b0),
        .D(wready_reg_i_4_n_0),
        .G(\state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.CLR(1'b0),
        .D(\state_reg[1]_i_1_n_0 ),
        .G(\state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_reg[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F3A003A003A003A)) 
    \state_reg[1]_i_2 
       (.I0(wlast),
        .I1(wvalid),
        .I2(state[1]),
        .I3(state[0]),
        .I4(wready_reg_i_6_n_0),
        .I5(wready_reg_i_7_n_0),
        .O(\state_reg[1]_i_2_n_0 ));
  LDCP wready_reg
       (.CLR(wready_reg_i_3_n_0),
        .D(wready_reg_i_1_n_0),
        .G(wready_reg_i_2_n_0),
        .PRE(wready_reg_i_4_n_0),
        .Q(wready));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    wready_reg_i_1
       (.I0(wready_reg_i_5_n_0),
        .I1(hcont_reg[1]),
        .I2(hcont_reg[0]),
        .I3(hcont_reg[3]),
        .I4(hcont_reg[2]),
        .I5(wready_reg_i_6_n_0),
        .O(wready_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4F454545)) 
    wready_reg_i_2
       (.I0(state[0]),
        .I1(wvalid),
        .I2(state[1]),
        .I3(wready_reg_i_6_n_0),
        .I4(wready_reg_i_7_n_0),
        .O(wready_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    wready_reg_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .I2(wlast),
        .O(wready_reg_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    wready_reg_i_4
       (.I0(state[0]),
        .I1(state[1]),
        .O(wready_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    wready_reg_i_5
       (.I0(state[1]),
        .I1(state[0]),
        .O(wready_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    wready_reg_i_6
       (.I0(hcont_reg[4]),
        .I1(hcont_reg[5]),
        .I2(hcont_reg[6]),
        .I3(hcont_reg[7]),
        .I4(hcont_reg[9]),
        .I5(hcont_reg[8]),
        .O(wready_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    wready_reg_i_7
       (.I0(hcont_reg[1]),
        .I1(hcont_reg[0]),
        .I2(hcont_reg[3]),
        .I3(hcont_reg[2]),
        .O(wready_reg_i_7_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
