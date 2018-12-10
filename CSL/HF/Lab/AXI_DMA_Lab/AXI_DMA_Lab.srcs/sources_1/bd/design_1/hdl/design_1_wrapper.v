//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Nov 18 00:12:57 2018
//Host        : Frank running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (B0,
    B1,
    DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_cs_n,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    DigitOut,
    DigitOut_0,
    G0,
    G1,
    H_sync,
    R0,
    R1,
    SegmentOut,
    SegmentOut_0,
    UART_0_rxd,
    UART_0_txd,
    V_sync,
    clk100M_in,
    gpio_in_tri_i,
    gpio_out_tri_o,
    rst_in);
  output B0;
  output B1;
  output [14:0]DDR3_0_addr;
  output [2:0]DDR3_0_ba;
  output DDR3_0_cas_n;
  output [0:0]DDR3_0_ck_n;
  output [0:0]DDR3_0_ck_p;
  output [0:0]DDR3_0_cke;
  output [0:0]DDR3_0_cs_n;
  output [3:0]DDR3_0_dm;
  inout [31:0]DDR3_0_dq;
  inout [3:0]DDR3_0_dqs_n;
  inout [3:0]DDR3_0_dqs_p;
  output [0:0]DDR3_0_odt;
  output DDR3_0_ras_n;
  output DDR3_0_reset_n;
  output DDR3_0_we_n;
  output [3:0]DigitOut;
  output [3:0]DigitOut_0;
  output G0;
  output G1;
  output H_sync;
  output R0;
  output R1;
  output [7:0]SegmentOut;
  output [7:0]SegmentOut_0;
  input UART_0_rxd;
  output UART_0_txd;
  output V_sync;
  input clk100M_in;
  input [11:0]gpio_in_tri_i;
  output [24:0]gpio_out_tri_o;
  input rst_in;

  wire B0;
  wire B1;
  wire [14:0]DDR3_0_addr;
  wire [2:0]DDR3_0_ba;
  wire DDR3_0_cas_n;
  wire [0:0]DDR3_0_ck_n;
  wire [0:0]DDR3_0_ck_p;
  wire [0:0]DDR3_0_cke;
  wire [0:0]DDR3_0_cs_n;
  wire [3:0]DDR3_0_dm;
  wire [31:0]DDR3_0_dq;
  wire [3:0]DDR3_0_dqs_n;
  wire [3:0]DDR3_0_dqs_p;
  wire [0:0]DDR3_0_odt;
  wire DDR3_0_ras_n;
  wire DDR3_0_reset_n;
  wire DDR3_0_we_n;
  wire [3:0]DigitOut;
  wire [3:0]DigitOut_0;
  wire G0;
  wire G1;
  wire H_sync;
  wire R0;
  wire R1;
  wire [7:0]SegmentOut;
  wire [7:0]SegmentOut_0;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire V_sync;
  wire clk100M_in;
  wire [11:0]gpio_in_tri_i;
  wire [24:0]gpio_out_tri_o;
  wire rst_in;

  design_1 design_1_i
       (.B0(B0),
        .B1(B1),
        .DDR3_0_addr(DDR3_0_addr),
        .DDR3_0_ba(DDR3_0_ba),
        .DDR3_0_cas_n(DDR3_0_cas_n),
        .DDR3_0_ck_n(DDR3_0_ck_n),
        .DDR3_0_ck_p(DDR3_0_ck_p),
        .DDR3_0_cke(DDR3_0_cke),
        .DDR3_0_cs_n(DDR3_0_cs_n),
        .DDR3_0_dm(DDR3_0_dm),
        .DDR3_0_dq(DDR3_0_dq),
        .DDR3_0_dqs_n(DDR3_0_dqs_n),
        .DDR3_0_dqs_p(DDR3_0_dqs_p),
        .DDR3_0_odt(DDR3_0_odt),
        .DDR3_0_ras_n(DDR3_0_ras_n),
        .DDR3_0_reset_n(DDR3_0_reset_n),
        .DDR3_0_we_n(DDR3_0_we_n),
        .DigitOut(DigitOut),
        .DigitOut_0(DigitOut_0),
        .G0(G0),
        .G1(G1),
        .H_sync(H_sync),
        .R0(R0),
        .R1(R1),
        .SegmentOut(SegmentOut),
        .SegmentOut_0(SegmentOut_0),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .V_sync(V_sync),
        .clk100M_in(clk100M_in),
        .gpio_in_tri_i(gpio_in_tri_i),
        .gpio_out_tri_o(gpio_out_tri_o),
        .rst_in(rst_in));
endmodule
