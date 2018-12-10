// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Nov 11 17:09:28 2018
// Host        : Frank running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI4S_VGA_v1_0_AXI4S_0_0_sim_netlist.v
// Design      : design_1_AXI4S_VGA_v1_0_AXI4S_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4S_VGA_v1_0_AXI4S_In
   (Q,
    G1,
    B1,
    V_sync,
    H_sync,
    S_AXIS_TREADY,
    S_AXIS_TLAST,
    S_AXIS_ARESETN,
    S_AXIS_ACLK,
    S_AXIS_TDATA,
    S_AXIS_TVALID);
  output [1:0]Q;
  output [1:0]G1;
  output [1:0]B1;
  output V_sync;
  output H_sync;
  output S_AXIS_TREADY;
  input S_AXIS_TLAST;
  input S_AXIS_ARESETN;
  input S_AXIS_ACLK;
  input [23:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;

  wire B;
  wire [1:0]B1;
  wire \B[0]_i_1_n_0 ;
  wire \B[1]_i_1_n_0 ;
  wire \FSM_sequential_streamSync[0]_i_1_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_1_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_2_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_3_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_4_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_5_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_6_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_7_n_0 ;
  wire \FSM_sequential_streamSync[1]_i_8_n_0 ;
  wire [1:0]G1;
  wire \G[0]_i_1_n_0 ;
  wire \G[1]_i_1_n_0 ;
  wire H_sync;
  wire [1:0]Q;
  wire \R[0]_i_1_n_0 ;
  wire \R[1]_i_1_n_0 ;
  wire \R[1]_i_3_n_0 ;
  wire \R[1]_i_5_n_0 ;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [23:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire V_sync;
  wire aready_i_1_n_0;
  wire aready_i_2_n_0;
  wire aready_i_3_n_0;
  wire [1:0]ce;
  wire \dataIn[29]_i_1_n_0 ;
  wire \dataIn_reg_n_0_[0] ;
  wire \dataIn_reg_n_0_[10] ;
  wire \dataIn_reg_n_0_[11] ;
  wire \dataIn_reg_n_0_[16] ;
  wire \dataIn_reg_n_0_[17] ;
  wire \dataIn_reg_n_0_[18] ;
  wire \dataIn_reg_n_0_[19] ;
  wire \dataIn_reg_n_0_[1] ;
  wire \dataIn_reg_n_0_[24] ;
  wire \dataIn_reg_n_0_[25] ;
  wire \dataIn_reg_n_0_[26] ;
  wire \dataIn_reg_n_0_[27] ;
  wire \dataIn_reg_n_0_[2] ;
  wire \dataIn_reg_n_0_[3] ;
  wire \dataIn_reg_n_0_[4] ;
  wire \dataIn_reg_n_0_[5] ;
  wire \dataIn_reg_n_0_[8] ;
  wire \dataIn_reg_n_0_[9] ;
  wire \h_cntr[6]_i_2_n_0 ;
  wire \h_cntr[9]_i_1_n_0 ;
  wire \h_cntr[9]_i_3_n_0 ;
  wire \h_cntr[9]_i_4_n_0 ;
  wire [9:0]h_cntr_reg__0;
  wire h_sync_reg0;
  wire h_sync_reg_i_2_n_0;
  wire h_sync_reg_i_3_n_0;
  wire [1:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire [1:0]p_1_in;
  wire [1:0]p_2_in;
  wire [1:0]p_3_in;
  (* RTL_KEEP = "yes" *) wire [1:0]streamSync__0;
  wire \v_cntr[7]_i_2_n_0 ;
  wire \v_cntr[9]_i_1_n_0 ;
  wire \v_cntr[9]_i_2_n_0 ;
  wire \v_cntr[9]_i_4_n_0 ;
  wire \v_cntr[9]_i_5_n_0 ;
  wire \v_cntr[9]_i_6_n_0 ;
  wire [9:0]v_cntr_reg__0;
  wire v_sync_reg_i_1_n_0;
  wire v_sync_reg_i_2_n_0;
  wire v_sync_reg_i_3_n_0;
  wire visibleArea__2;

  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \B[0]_i_1 
       (.I0(\dataIn_reg_n_0_[16] ),
        .I1(\dataIn_reg_n_0_[24] ),
        .I2(\dataIn_reg_n_0_[0] ),
        .I3(h_cntr_reg__0[0]),
        .I4(h_cntr_reg__0[1]),
        .I5(\dataIn_reg_n_0_[8] ),
        .O(\B[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \B[1]_i_1 
       (.I0(\dataIn_reg_n_0_[17] ),
        .I1(\dataIn_reg_n_0_[25] ),
        .I2(\dataIn_reg_n_0_[1] ),
        .I3(h_cntr_reg__0[0]),
        .I4(h_cntr_reg__0[1]),
        .I5(\dataIn_reg_n_0_[9] ),
        .O(\B[1]_i_1_n_0 ));
  FDRE \B_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(\B[0]_i_1_n_0 ),
        .Q(B1[0]),
        .R(\R[1]_i_1_n_0 ));
  FDRE \B_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(\B[1]_i_1_n_0 ),
        .Q(B1[1]),
        .R(\R[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE2E222E00000000)) 
    \FSM_sequential_streamSync[0]_i_1 
       (.I0(streamSync__0[0]),
        .I1(\FSM_sequential_streamSync[1]_i_2_n_0 ),
        .I2(streamSync__0[0]),
        .I3(streamSync__0[1]),
        .I4(S_AXIS_TLAST),
        .I5(S_AXIS_ARESETN),
        .O(\FSM_sequential_streamSync[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \FSM_sequential_streamSync[1]_i_1 
       (.I0(streamSync__0[1]),
        .I1(\FSM_sequential_streamSync[1]_i_2_n_0 ),
        .I2(streamSync__0[0]),
        .I3(streamSync__0[1]),
        .I4(S_AXIS_TLAST),
        .I5(S_AXIS_ARESETN),
        .O(\FSM_sequential_streamSync[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \FSM_sequential_streamSync[1]_i_2 
       (.I0(\FSM_sequential_streamSync[1]_i_3_n_0 ),
        .I1(\FSM_sequential_streamSync[1]_i_4_n_0 ),
        .I2(\FSM_sequential_streamSync[1]_i_5_n_0 ),
        .I3(\FSM_sequential_streamSync[1]_i_6_n_0 ),
        .I4(\FSM_sequential_streamSync[1]_i_7_n_0 ),
        .I5(\FSM_sequential_streamSync[1]_i_8_n_0 ),
        .O(\FSM_sequential_streamSync[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \FSM_sequential_streamSync[1]_i_3 
       (.I0(S_AXIS_TVALID),
        .I1(streamSync__0[0]),
        .I2(S_AXIS_TLAST),
        .I3(streamSync__0[1]),
        .O(\FSM_sequential_streamSync[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \FSM_sequential_streamSync[1]_i_4 
       (.I0(S_AXIS_TLAST),
        .I1(h_cntr_reg__0[7]),
        .I2(h_cntr_reg__0[4]),
        .I3(h_cntr_reg__0[6]),
        .I4(h_cntr_reg__0[5]),
        .O(\FSM_sequential_streamSync[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \FSM_sequential_streamSync[1]_i_5 
       (.I0(h_cntr_reg__0[2]),
        .I1(h_cntr_reg__0[3]),
        .I2(h_cntr_reg__0[1]),
        .I3(h_cntr_reg__0[0]),
        .I4(h_cntr_reg__0[8]),
        .I5(h_cntr_reg__0[9]),
        .O(\FSM_sequential_streamSync[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_sequential_streamSync[1]_i_6 
       (.I0(v_cntr_reg__0[3]),
        .I1(v_cntr_reg__0[4]),
        .I2(v_cntr_reg__0[5]),
        .I3(v_cntr_reg__0[2]),
        .I4(v_cntr_reg__0[1]),
        .I5(v_cntr_reg__0[0]),
        .O(\FSM_sequential_streamSync[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_streamSync[1]_i_7 
       (.I0(v_cntr_reg__0[9]),
        .I1(v_cntr_reg__0[8]),
        .I2(v_cntr_reg__0[7]),
        .I3(v_cntr_reg__0[6]),
        .O(\FSM_sequential_streamSync[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_streamSync[1]_i_8 
       (.I0(ce[1]),
        .I1(ce[0]),
        .I2(streamSync__0[1]),
        .I3(streamSync__0[0]),
        .O(\FSM_sequential_streamSync[1]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_streamSync_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_streamSync[0]_i_1_n_0 ),
        .Q(streamSync__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_streamSync_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_streamSync[1]_i_1_n_0 ),
        .Q(streamSync__0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \G[0]_i_1 
       (.I0(\dataIn_reg_n_0_[18] ),
        .I1(\dataIn_reg_n_0_[26] ),
        .I2(\dataIn_reg_n_0_[2] ),
        .I3(h_cntr_reg__0[0]),
        .I4(h_cntr_reg__0[1]),
        .I5(\dataIn_reg_n_0_[10] ),
        .O(\G[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \G[1]_i_1 
       (.I0(\dataIn_reg_n_0_[19] ),
        .I1(\dataIn_reg_n_0_[27] ),
        .I2(\dataIn_reg_n_0_[3] ),
        .I3(h_cntr_reg__0[0]),
        .I4(h_cntr_reg__0[1]),
        .I5(\dataIn_reg_n_0_[11] ),
        .O(\G[1]_i_1_n_0 ));
  FDRE \G_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(\G[0]_i_1_n_0 ),
        .Q(G1[0]),
        .R(\R[1]_i_1_n_0 ));
  FDRE \G_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(\G[1]_i_1_n_0 ),
        .Q(G1[1]),
        .R(\R[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \R[0]_i_1 
       (.I0(p_2_in[0]),
        .I1(p_1_in[0]),
        .I2(\dataIn_reg_n_0_[4] ),
        .I3(h_cntr_reg__0[0]),
        .I4(h_cntr_reg__0[1]),
        .I5(p_3_in[0]),
        .O(\R[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \R[1]_i_1 
       (.I0(ce[1]),
        .I1(ce[0]),
        .I2(visibleArea__2),
        .O(\R[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \R[1]_i_2 
       (.I0(ce[0]),
        .I1(ce[1]),
        .O(B));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \R[1]_i_3 
       (.I0(p_2_in[1]),
        .I1(p_1_in[1]),
        .I2(\dataIn_reg_n_0_[5] ),
        .I3(h_cntr_reg__0[0]),
        .I4(h_cntr_reg__0[1]),
        .I5(p_3_in[1]),
        .O(\R[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h01010111)) 
    \R[1]_i_4 
       (.I0(v_cntr_reg__0[9]),
        .I1(\R[1]_i_5_n_0 ),
        .I2(h_cntr_reg__0[9]),
        .I3(h_cntr_reg__0[8]),
        .I4(h_cntr_reg__0[7]),
        .O(visibleArea__2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \R[1]_i_5 
       (.I0(v_cntr_reg__0[6]),
        .I1(v_cntr_reg__0[5]),
        .I2(v_cntr_reg__0[8]),
        .I3(v_cntr_reg__0[7]),
        .O(\R[1]_i_5_n_0 ));
  FDRE \R_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(\R[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\R[1]_i_1_n_0 ));
  FDRE \R_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(\R[1]_i_3_n_0 ),
        .Q(Q[1]),
        .R(\R[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0131010101010101)) 
    aready_i_1
       (.I0(S_AXIS_TLAST),
        .I1(streamSync__0[0]),
        .I2(streamSync__0[1]),
        .I3(aready_i_2_n_0),
        .I4(aready_i_3_n_0),
        .I5(visibleArea__2),
        .O(aready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    aready_i_2
       (.I0(h_cntr_reg__0[1]),
        .I1(h_cntr_reg__0[0]),
        .O(aready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    aready_i_3
       (.I0(ce[0]),
        .I1(ce[1]),
        .O(aready_i_3_n_0));
  FDRE aready_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(aready_i_1_n_0),
        .Q(S_AXIS_TREADY),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ce[0]_i_1 
       (.I0(ce[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ce[1]_i_1 
       (.I0(ce[0]),
        .I1(ce[1]),
        .O(p_0_in[1]));
  FDRE \ce_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(ce[0]),
        .R(h_sync_reg0));
  FDRE \ce_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(ce[1]),
        .R(h_sync_reg0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \dataIn[29]_i_1 
       (.I0(aready_i_2_n_0),
        .I1(ce[1]),
        .I2(ce[0]),
        .I3(streamSync__0[1]),
        .I4(streamSync__0[0]),
        .I5(visibleArea__2),
        .O(\dataIn[29]_i_1_n_0 ));
  FDRE \dataIn_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[0]),
        .Q(\dataIn_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataIn_reg[10] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[8]),
        .Q(\dataIn_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \dataIn_reg[11] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[9]),
        .Q(\dataIn_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \dataIn_reg[12] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[10]),
        .Q(p_3_in[0]),
        .R(1'b0));
  FDRE \dataIn_reg[13] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[11]),
        .Q(p_3_in[1]),
        .R(1'b0));
  FDRE \dataIn_reg[16] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[12]),
        .Q(\dataIn_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \dataIn_reg[17] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[13]),
        .Q(\dataIn_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \dataIn_reg[18] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[14]),
        .Q(\dataIn_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \dataIn_reg[19] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[15]),
        .Q(\dataIn_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \dataIn_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[1]),
        .Q(\dataIn_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dataIn_reg[20] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[16]),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE \dataIn_reg[21] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[17]),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \dataIn_reg[24] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[18]),
        .Q(\dataIn_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \dataIn_reg[25] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[19]),
        .Q(\dataIn_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \dataIn_reg[26] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[20]),
        .Q(\dataIn_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \dataIn_reg[27] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[21]),
        .Q(\dataIn_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \dataIn_reg[28] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[22]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \dataIn_reg[29] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[23]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \dataIn_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[2]),
        .Q(\dataIn_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dataIn_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[3]),
        .Q(\dataIn_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dataIn_reg[4] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[4]),
        .Q(\dataIn_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dataIn_reg[5] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[5]),
        .Q(\dataIn_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dataIn_reg[8] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[6]),
        .Q(\dataIn_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \dataIn_reg[9] 
       (.C(S_AXIS_ACLK),
        .CE(\dataIn[29]_i_1_n_0 ),
        .D(S_AXIS_TDATA[7]),
        .Q(\dataIn_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_cntr[0]_i_1 
       (.I0(h_cntr_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_cntr[1]_i_1 
       (.I0(h_cntr_reg__0[1]),
        .I1(h_cntr_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_cntr[2]_i_1 
       (.I0(h_cntr_reg__0[0]),
        .I1(h_cntr_reg__0[1]),
        .I2(h_cntr_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_cntr[3]_i_1 
       (.I0(h_cntr_reg__0[2]),
        .I1(h_cntr_reg__0[1]),
        .I2(h_cntr_reg__0[0]),
        .I3(h_cntr_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_cntr[4]_i_1 
       (.I0(h_cntr_reg__0[3]),
        .I1(h_cntr_reg__0[0]),
        .I2(h_cntr_reg__0[1]),
        .I3(h_cntr_reg__0[2]),
        .I4(h_cntr_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_cntr[5]_i_1 
       (.I0(h_cntr_reg__0[2]),
        .I1(h_cntr_reg__0[1]),
        .I2(h_cntr_reg__0[0]),
        .I3(h_cntr_reg__0[3]),
        .I4(h_cntr_reg__0[4]),
        .I5(h_cntr_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \h_cntr[6]_i_1 
       (.I0(h_cntr_reg__0[4]),
        .I1(h_cntr_reg__0[3]),
        .I2(\h_cntr[6]_i_2_n_0 ),
        .I3(h_cntr_reg__0[2]),
        .I4(h_cntr_reg__0[5]),
        .I5(h_cntr_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \h_cntr[6]_i_2 
       (.I0(h_cntr_reg__0[1]),
        .I1(h_cntr_reg__0[0]),
        .O(\h_cntr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_cntr[7]_i_1 
       (.I0(h_cntr_reg__0[5]),
        .I1(\h_cntr[9]_i_4_n_0 ),
        .I2(h_cntr_reg__0[6]),
        .I3(h_cntr_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_cntr[8]_i_1 
       (.I0(h_cntr_reg__0[6]),
        .I1(\h_cntr[9]_i_4_n_0 ),
        .I2(h_cntr_reg__0[5]),
        .I3(h_cntr_reg__0[7]),
        .I4(h_cntr_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \h_cntr[9]_i_1 
       (.I0(\h_cntr[9]_i_3_n_0 ),
        .I1(h_cntr_reg__0[9]),
        .I2(h_cntr_reg__0[8]),
        .I3(ce[1]),
        .I4(ce[0]),
        .I5(h_sync_reg0),
        .O(\h_cntr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \h_cntr[9]_i_2 
       (.I0(h_cntr_reg__0[8]),
        .I1(h_cntr_reg__0[9]),
        .I2(h_cntr_reg__0[7]),
        .I3(h_cntr_reg__0[5]),
        .I4(\h_cntr[9]_i_4_n_0 ),
        .I5(h_cntr_reg__0[6]),
        .O(p_0_in__0[9]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \h_cntr[9]_i_3 
       (.I0(h_cntr_reg__0[6]),
        .I1(h_cntr_reg__0[5]),
        .I2(h_cntr_reg__0[7]),
        .I3(\h_cntr[9]_i_4_n_0 ),
        .O(\h_cntr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_cntr[9]_i_4 
       (.I0(h_cntr_reg__0[4]),
        .I1(h_cntr_reg__0[3]),
        .I2(h_cntr_reg__0[0]),
        .I3(h_cntr_reg__0[1]),
        .I4(h_cntr_reg__0[2]),
        .O(\h_cntr[9]_i_4_n_0 ));
  FDRE \h_cntr_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[0]),
        .Q(h_cntr_reg__0[0]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[1]),
        .Q(h_cntr_reg__0[1]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[2]),
        .Q(h_cntr_reg__0[2]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[3]),
        .Q(h_cntr_reg__0[3]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[4] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[4]),
        .Q(h_cntr_reg__0[4]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[5] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[5]),
        .Q(h_cntr_reg__0[5]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[6] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[6]),
        .Q(h_cntr_reg__0[6]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[7] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[7]),
        .Q(h_cntr_reg__0[7]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[8] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[8]),
        .Q(h_cntr_reg__0[8]),
        .R(\h_cntr[9]_i_1_n_0 ));
  FDRE \h_cntr_reg[9] 
       (.C(S_AXIS_ACLK),
        .CE(B),
        .D(p_0_in__0[9]),
        .Q(h_cntr_reg__0[9]),
        .R(\h_cntr[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    h_sync_reg_i_1
       (.I0(streamSync__0[1]),
        .I1(streamSync__0[0]),
        .I2(S_AXIS_ARESETN),
        .O(h_sync_reg0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBFF0000)) 
    h_sync_reg_i_2
       (.I0(h_sync_reg_i_3_n_0),
        .I1(h_cntr_reg__0[7]),
        .I2(h_cntr_reg__0[8]),
        .I3(h_cntr_reg__0[9]),
        .I4(B),
        .I5(H_sync),
        .O(h_sync_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hAEAA000000005155)) 
    h_sync_reg_i_3
       (.I0(h_cntr_reg__0[4]),
        .I1(h_cntr_reg__0[3]),
        .I2(\h_cntr[6]_i_2_n_0 ),
        .I3(h_cntr_reg__0[2]),
        .I4(h_cntr_reg__0[5]),
        .I5(h_cntr_reg__0[6]),
        .O(h_sync_reg_i_3_n_0));
  FDRE h_sync_reg_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(h_sync_reg_i_2_n_0),
        .Q(H_sync),
        .R(h_sync_reg0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_cntr[0]_i_1 
       (.I0(v_cntr_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_cntr[1]_i_1 
       (.I0(v_cntr_reg__0[0]),
        .I1(v_cntr_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_cntr[2]_i_1 
       (.I0(v_cntr_reg__0[0]),
        .I1(v_cntr_reg__0[1]),
        .I2(v_cntr_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_cntr[3]_i_1 
       (.I0(v_cntr_reg__0[2]),
        .I1(v_cntr_reg__0[1]),
        .I2(v_cntr_reg__0[0]),
        .I3(v_cntr_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_cntr[4]_i_1 
       (.I0(v_cntr_reg__0[0]),
        .I1(v_cntr_reg__0[1]),
        .I2(v_cntr_reg__0[2]),
        .I3(v_cntr_reg__0[3]),
        .I4(v_cntr_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_cntr[5]_i_1 
       (.I0(v_cntr_reg__0[3]),
        .I1(v_cntr_reg__0[2]),
        .I2(v_cntr_reg__0[1]),
        .I3(v_cntr_reg__0[0]),
        .I4(v_cntr_reg__0[4]),
        .I5(v_cntr_reg__0[5]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \v_cntr[6]_i_1 
       (.I0(v_cntr_reg__0[4]),
        .I1(\v_cntr[7]_i_2_n_0 ),
        .I2(v_cntr_reg__0[3]),
        .I3(v_cntr_reg__0[5]),
        .I4(v_cntr_reg__0[6]),
        .O(p_0_in__1[6]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \v_cntr[7]_i_1 
       (.I0(v_cntr_reg__0[5]),
        .I1(v_cntr_reg__0[3]),
        .I2(\v_cntr[7]_i_2_n_0 ),
        .I3(v_cntr_reg__0[4]),
        .I4(v_cntr_reg__0[6]),
        .I5(v_cntr_reg__0[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \v_cntr[7]_i_2 
       (.I0(v_cntr_reg__0[0]),
        .I1(v_cntr_reg__0[1]),
        .I2(v_cntr_reg__0[2]),
        .O(\v_cntr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_cntr[8]_i_1 
       (.I0(v_cntr_reg__0[7]),
        .I1(v_cntr_reg__0[6]),
        .I2(\v_cntr[9]_i_6_n_0 ),
        .I3(v_cntr_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \v_cntr[9]_i_1 
       (.I0(\h_cntr[9]_i_3_n_0 ),
        .I1(B),
        .I2(\v_cntr[9]_i_4_n_0 ),
        .I3(v_cntr_reg__0[9]),
        .I4(\v_cntr[9]_i_5_n_0 ),
        .I5(h_sync_reg0),
        .O(\v_cntr[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_cntr[9]_i_2 
       (.I0(ce[0]),
        .I1(ce[1]),
        .I2(h_cntr_reg__0[8]),
        .I3(h_cntr_reg__0[9]),
        .I4(\h_cntr[9]_i_3_n_0 ),
        .O(\v_cntr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_cntr[9]_i_3 
       (.I0(v_cntr_reg__0[8]),
        .I1(\v_cntr[9]_i_6_n_0 ),
        .I2(v_cntr_reg__0[6]),
        .I3(v_cntr_reg__0[7]),
        .I4(v_cntr_reg__0[9]),
        .O(p_0_in__1[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cntr[9]_i_4 
       (.I0(h_cntr_reg__0[8]),
        .I1(h_cntr_reg__0[9]),
        .O(\v_cntr[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \v_cntr[9]_i_5 
       (.I0(v_cntr_reg__0[7]),
        .I1(v_cntr_reg__0[8]),
        .I2(v_cntr_reg__0[6]),
        .I3(v_cntr_reg__0[5]),
        .I4(v_cntr_reg__0[3]),
        .I5(v_cntr_reg__0[4]),
        .O(\v_cntr[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_cntr[9]_i_6 
       (.I0(v_cntr_reg__0[5]),
        .I1(v_cntr_reg__0[3]),
        .I2(v_cntr_reg__0[2]),
        .I3(v_cntr_reg__0[1]),
        .I4(v_cntr_reg__0[0]),
        .I5(v_cntr_reg__0[4]),
        .O(\v_cntr[9]_i_6_n_0 ));
  FDRE \v_cntr_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(v_cntr_reg__0[0]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(v_cntr_reg__0[1]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(v_cntr_reg__0[2]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(v_cntr_reg__0[3]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[4] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(v_cntr_reg__0[4]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[5] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(v_cntr_reg__0[5]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[6] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(v_cntr_reg__0[6]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[7] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(v_cntr_reg__0[7]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[8] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[8]),
        .Q(v_cntr_reg__0[8]),
        .R(\v_cntr[9]_i_1_n_0 ));
  FDRE \v_cntr_reg[9] 
       (.C(S_AXIS_ACLK),
        .CE(\v_cntr[9]_i_2_n_0 ),
        .D(p_0_in__1[9]),
        .Q(v_cntr_reg__0[9]),
        .R(\v_cntr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    v_sync_reg_i_1
       (.I0(v_sync_reg_i_2_n_0),
        .I1(ce[0]),
        .I2(ce[1]),
        .I3(V_sync),
        .O(v_sync_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEFFFFFFFFF)) 
    v_sync_reg_i_2
       (.I0(v_sync_reg_i_3_n_0),
        .I1(v_cntr_reg__0[2]),
        .I2(v_cntr_reg__0[1]),
        .I3(v_cntr_reg__0[0]),
        .I4(v_cntr_reg__0[4]),
        .I5(v_cntr_reg__0[3]),
        .O(v_sync_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    v_sync_reg_i_3
       (.I0(v_cntr_reg__0[9]),
        .I1(v_cntr_reg__0[7]),
        .I2(v_cntr_reg__0[8]),
        .I3(v_cntr_reg__0[5]),
        .I4(v_cntr_reg__0[6]),
        .O(v_sync_reg_i_3_n_0));
  FDRE v_sync_reg_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(v_sync_reg_i_1_n_0),
        .Q(V_sync),
        .R(h_sync_reg0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_AXI4S_VGA_v1_0_AXI4S_0_0,AXI4S_VGA_v1_0_AXI4S_In,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AXI4S_VGA_v1_0_AXI4S_In,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (R1,
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
    S_AXIS_TVALID);
  output R1;
  output R0;
  output G1;
  output G0;
  output B1;
  output B0;
  output H_sync;
  output V_sync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk" *) input S_AXIS_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW" *) input S_AXIS_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]S_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [3:0]S_AXIS_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, LAYERED_METADATA undef" *) input S_AXIS_TVALID;

  wire B0;
  wire B1;
  wire G0;
  wire G1;
  wire H_sync;
  wire R0;
  wire R1;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [31:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire V_sync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4S_VGA_v1_0_AXI4S_In inst
       (.B1({B1,B0}),
        .G1({G1,G0}),
        .H_sync(H_sync),
        .Q({R1,R0}),
        .S_AXIS_ACLK(S_AXIS_ACLK),
        .S_AXIS_ARESETN(S_AXIS_ARESETN),
        .S_AXIS_TDATA({S_AXIS_TDATA[29:24],S_AXIS_TDATA[21:16],S_AXIS_TDATA[13:8],S_AXIS_TDATA[5:0]}),
        .S_AXIS_TLAST(S_AXIS_TLAST),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .V_sync(V_sync));
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
