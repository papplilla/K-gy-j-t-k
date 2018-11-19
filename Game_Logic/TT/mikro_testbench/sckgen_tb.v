`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         Mikrorendszerek Tervezése
// Engineer: 		Attila Gránicz
// 
// Create Date:     2017-10-28 
// Design Name:     LCD
// Module Name:     lcd_spi
// Project Name:    Snake
// Target Devices:  EADOGS102N-6   LCD
// Description: 
// Additional Comments: 
//	Prefixes:
//		i_ : input
//		o_ : output
//		r_ : register
//		w_ : wire
//
//////////////////////////////////////////////////////////////////////////////////
module sckgen_tb;
// Inputs
	reg 			r_sysclk;
    reg 			r_sysrst;
    reg 			r_en;
    reg 	[7:0] 	r_baudrate;
	wire 			w_sck;

// Instantiate the Unit Under Test (UUT)
sckgen uut (
	.i_sysclk(r_sysclk), 
    .i_sysrst(r_sysrst),
	.i_en(r_en),
	.i_baudrate(r_baudrate), 
	.o_sck(w_sck), 
	.o_sck_rise(w_sck_rise), 
	.o_sck_fall(w_sck_fall)
);

initial begin
	// Initialize Inputs
	r_sysclk = 1;
	r_en = 0;
    r_sysrst = 1;
    r_baudrate = 8'b0;
    #102 r_sysrst = 0; 
    #20 r_en = 1;
end

always #10 r_sysclk = ~r_sysclk;

reg [4:0] r_cntr = 5'b0;
always @ (posedge w_sck)
begin 
	r_cntr = r_cntr + 1'b1;
	if (r_cntr == 5'b11111)
	r_baudrate = r_baudrate + 1'b1; 
end

endmodule
