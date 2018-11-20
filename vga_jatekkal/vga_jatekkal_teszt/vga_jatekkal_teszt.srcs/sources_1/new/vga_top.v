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


	reg [1:0] clk25_arr;
	always@(posedge clk)
	begin
		clk25_arr <= clk25_arr + 1;
	end
	wire clk25;
	BUFG bufg_inst(clk25, clk25_arr[1]);
	// assign clk25 = clk25_arr[1];
//http://www.xilinx.com/support/documentation/sw_manuals/xilinx11/sse_p_instantiating_clock_buffer.htm

	wire [9:0] xpos;
	wire [9:0] ypos;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;

	videosyncs videosyncs_inst(clk25, red, green, blue, rout, gout, bout, hsync, vsync, xpos, ypos);
	game game_inst(xpos, ypos, red, green, blue);

endmodule
