`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2018 12:44:56
// Design Name: 
// Module Name: vga_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_top(
	input clk,
	output [1:0] rout,
	output [1:0] gout,
	output [1:0] bout,
	output hsync,
	output vsync
	);


/*	reg [1:0] clk25_arr;
	always@(posedge clk)
	begin
		clk25_arr <= clk25_arr + 1;
	end
	wire clk25;
	//BUFG bufg_inst(clk25, clk25_arr[1]);         // 100 MHz-en nem kell

*/
	wire [11:0] xpos;
	wire [9:0] ypos;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;

	vgaSync myVgaSync(clk, red, green, blue, rout, gout, bout, hsync, vsync, xpos, ypos);
	test myTest(xpos, ypos, red, green, blue);

endmodule
