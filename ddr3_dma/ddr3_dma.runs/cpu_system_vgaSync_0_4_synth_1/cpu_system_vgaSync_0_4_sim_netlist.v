// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Dec  6 10:16:23 2018
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
    rstn,
    wdata,
    wvalid,
    wlast,
    wready,
    rout,
    gout,
    bout,
    hs,
    vs);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cpu_system_mig_7series_0_0_ui_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW" *) input rstn;
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
  wire rstn;
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
        .rstn(rstn),
        .wdata(wdata[5:0]),
        .wlast(wlast),
        .wready(wready),
        .wvalid(wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vgaSync
   (rout,
    gout,
    bout,
    wready,
    wlast,
    wvalid,
    clk,
    wdata,
    rstn);
  output [1:0]rout;
  output [1:0]gout;
  output [1:0]bout;
  output wready;
  input wlast;
  input wvalid;
  input clk;
  input [5:0]wdata;
  input rstn;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire [1:0]bout;
  wire clk;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire [1:0]gout;
  wire \hcont[9]_i_2_n_0 ;
  wire [9:0]hcont_reg__0;
  wire [1:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [1:0]rout;
  wire \rout[1]_i_1_n_0 ;
  wire rstn;
  (* RTL_KEEP = "yes" *) wire [1:0]state;
  wire state0__8;
  wire [5:0]wdata;
  wire wlast;
  wire wready;
  wire wready_i_1_n_0;
  wire wready_i_2_n_0;
  wire wready_i_3_n_0;
  wire wready_i_4_n_0;
  wire wready_i_5_n_0;
  wire wready_i_6_n_0;
  wire wready_i_7_n_0;
  wire wvalid;

  LUT6 #(
    .INIT(64'hFFCC0FFF000000AA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(wlast),
        .I1(wvalid),
        .I2(state0__8),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(rstn),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFF550000F000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(wlast),
        .I1(wvalid),
        .I2(state0__8),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(wready_i_3_n_0),
        .I1(hcont_reg__0[2]),
        .I2(hcont_reg__0[3]),
        .I3(hcont_reg__0[0]),
        .I4(hcont_reg__0[1]),
        .O(state0__8));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:00,iSTATE1:01," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:00,iSTATE1:01," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(state[1]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE \bout_reg[0] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(\data_reg_n_0_[4] ),
        .Q(bout[0]),
        .R(1'b0));
  FDRE \bout_reg[1] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(\data_reg_n_0_[5] ),
        .Q(bout[1]),
        .R(1'b0));
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(wdata[0]),
        .Q(\data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(wdata[1]),
        .Q(\data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(wdata[2]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \data_reg[3] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(wdata[3]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \data_reg[4] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(wdata[4]),
        .Q(\data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_reg[5] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(wdata[5]),
        .Q(\data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gout_reg[0] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(\data_reg_n_0_[0] ),
        .Q(gout[0]),
        .R(1'b0));
  FDRE \gout_reg[1] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(\data_reg_n_0_[1] ),
        .Q(gout[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hcont[0]_i_1 
       (.I0(hcont_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcont[1]_i_1 
       (.I0(hcont_reg__0[0]),
        .I1(hcont_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hcont[2]_i_1 
       (.I0(hcont_reg__0[0]),
        .I1(hcont_reg__0[1]),
        .I2(hcont_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcont[3]_i_1 
       (.I0(hcont_reg__0[1]),
        .I1(hcont_reg__0[0]),
        .I2(hcont_reg__0[2]),
        .I3(hcont_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcont[4]_i_1 
       (.I0(hcont_reg__0[3]),
        .I1(hcont_reg__0[2]),
        .I2(hcont_reg__0[0]),
        .I3(hcont_reg__0[1]),
        .I4(hcont_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hcont[5]_i_1 
       (.I0(hcont_reg__0[1]),
        .I1(hcont_reg__0[0]),
        .I2(hcont_reg__0[2]),
        .I3(hcont_reg__0[3]),
        .I4(hcont_reg__0[4]),
        .I5(hcont_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \hcont[6]_i_1 
       (.I0(\hcont[9]_i_2_n_0 ),
        .I1(hcont_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \hcont[7]_i_1 
       (.I0(\hcont[9]_i_2_n_0 ),
        .I1(hcont_reg__0[6]),
        .I2(hcont_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \hcont[8]_i_1 
       (.I0(hcont_reg__0[7]),
        .I1(hcont_reg__0[6]),
        .I2(\hcont[9]_i_2_n_0 ),
        .I3(hcont_reg__0[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \hcont[9]_i_1 
       (.I0(hcont_reg__0[8]),
        .I1(\hcont[9]_i_2_n_0 ),
        .I2(hcont_reg__0[6]),
        .I3(hcont_reg__0[7]),
        .I4(hcont_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \hcont[9]_i_2 
       (.I0(hcont_reg__0[1]),
        .I1(hcont_reg__0[0]),
        .I2(hcont_reg__0[2]),
        .I3(hcont_reg__0[3]),
        .I4(hcont_reg__0[4]),
        .I5(hcont_reg__0[5]),
        .O(\hcont[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(hcont_reg__0[0]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(hcont_reg__0[1]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(hcont_reg__0[2]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(hcont_reg__0[3]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(hcont_reg__0[4]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(hcont_reg__0[5]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(hcont_reg__0[6]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(hcont_reg__0[7]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(hcont_reg__0[8]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcont_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(hcont_reg__0[9]),
        .R(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \rout[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rstn),
        .I3(wvalid),
        .O(\rout[1]_i_1_n_0 ));
  FDRE \rout_reg[0] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(rout[0]),
        .R(1'b0));
  FDRE \rout_reg[1] 
       (.C(clk),
        .CE(\rout[1]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(rout[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFF0000)) 
    wready_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rstn),
        .I3(wlast),
        .I4(wready_i_2_n_0),
        .O(wready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF80FF)) 
    wready_i_2
       (.I0(wready_i_3_n_0),
        .I1(wready_i_4_n_0),
        .I2(wready_i_5_n_0),
        .I3(wready_i_6_n_0),
        .I4(wready_i_7_n_0),
        .I5(wready),
        .O(wready_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    wready_i_3
       (.I0(hcont_reg__0[4]),
        .I1(hcont_reg__0[5]),
        .I2(hcont_reg__0[6]),
        .I3(hcont_reg__0[7]),
        .I4(hcont_reg__0[9]),
        .I5(hcont_reg__0[8]),
        .O(wready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    wready_i_4
       (.I0(hcont_reg__0[1]),
        .I1(hcont_reg__0[0]),
        .I2(hcont_reg__0[3]),
        .I3(hcont_reg__0[2]),
        .O(wready_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wready_i_5
       (.I0(rstn),
        .I1(state[1]),
        .O(wready_i_5_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    wready_i_6
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rstn),
        .O(wready_i_6_n_0));
  LUT4 #(
    .INIT(16'h008C)) 
    wready_i_7
       (.I0(wvalid),
        .I1(rstn),
        .I2(state[1]),
        .I3(state[0]),
        .O(wready_i_7_n_0));
  FDRE wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(wready_i_1_n_0),
        .Q(wready),
        .R(1'b0));
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
