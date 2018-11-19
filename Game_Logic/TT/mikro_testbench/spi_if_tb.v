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
module LCD_if_tb;
// Inputs
	reg 			Bus2IP_Clk;
	reg 			Bus2IP_Resetn;

	reg  [31:0]		Bus2IP_Data;
	reg  [3:0]		Bus2IP_BE;
	reg  [1:0]		Bus2IP_RdCE;
	reg  [1:0]		Bus2IP_WrCE;

	wire [31:0]		IP2Bus_Data;
	wire 			IP2Bus_RdAck;
	wire 			IP2Bus_WrAck;
	wire 			IP2Bus_Error;

	wire 			w_spi_irq;
	wire 			w_spi_miso;
	wire 			w_spi_mosi;
	wire 			w_spi_sck;
	wire 			w_spi_ss_n;

//---------------------------------------------
// Instantiate the Unit Under Test (UUT)
//---------------------------------------------
LCD_if uut(
	// General input signals
	.Bus2IP_Clk(Bus2IP_Clk),
	.Bus2IP_Resetn(Bus2IP_Resetn),

	// Internal signals
	.Bus2IP_Data(Bus2IP_Data), 			// Data from bus
	.Bus2IP_BE(Bus2IP_BE), 			// Modify settings
	.Bus2IP_RdCE(Bus2IP_RdCE), 			// Write data
	.Bus2IP_WrCE(Bus2IP_WrCE), 			// Read data

	.IP2Bus_Data(IP2Bus_Data), 		// Data to bus
	.IP2Bus_RdAck(IP2Bus_RdAck), 			// Acknowledge
	.IP2Bus_WrAck(IP2Bus_WrAck), 			// Acknowledge
	.IP2Bus_Error(IP2Bus_Error),

	.o_irq(w_spi_irq),			// Interrupt request

	// SPI signals
	.o_spi_miso(w_spi_miso),	// Master-In-Slave-Out
	.o_spi_mosi(w_spi_mosi),	// Master-Out-Slave-In
	.o_spi_sck(w_spi_sck),		// Bus-Clock
	.o_spi_ss_n(w_spi_ss_n)		// Slave-Select
);
//---------------------------------------------

//---------------------------------------------
// Bus write cycle
//---------------------------------------------
task bus_write (input [1:0] addr,input [3:0] byte_en,  input [31:0] data);
begin
	#10 Bus2IP_WrCE <= addr;
	Bus2IP_BE 	<= byte_en;
	Bus2IP_Data <= data;
	wait(IP2Bus_WrAck);
	#10 Bus2IP_WrCE <= 2'b00;
	Bus2IP_BE 	<= 4'b0000;
	Bus2IP_Data <= 32'h0000_0000;
end
endtask
//---------------------------------------------

//---------------------------------------------
// Bus read cycle
//---------------------------------------------
task bus_read (input [1:0] addr,input [3:0] byte_en);
begin
	#10 Bus2IP_RdCE <= addr;
	Bus2IP_BE 	<= byte_en;
	wait(IP2Bus_RdAck);
	#10 Bus2IP_RdCE <= 2'b00;
	Bus2IP_BE 	<= 4'b0000;
end
endtask
//---------------------------------------------

//---------------------------------------------
// Initialize Inputs
//---------------------------------------------
initial begin
	Bus2IP_Clk 		= 1;
	Bus2IP_Resetn 	= 0;
	Bus2IP_Data		= 0;
	Bus2IP_BE		= 0;
	Bus2IP_RdCE		= 0;
	Bus2IP_WrCE		= 0;
end
//---------------------------------------------

//---------------------------------------------
// Generate clock
//---------------------------------------------
always #5 Bus2IP_Clk = ~Bus2IP_Clk;
//---------------------------------------------

//---------------------------------------------
// Main Block
//---------------------------------------------
initial begin
	#100 
	Bus2IP_Resetn = 1;
	#200 
	bus_write(2'b01,4'b1111, 32'h0000_0E04); 		// Set baudrate, int clr =0, int en, global en, SS=0
	bus_write(2'b10,4'b1111, 32'h0000_0137); 		// Set data to 0x137
	wait(w_spi_irq);					//wait for interrupt
	bus_write(2'b01,4'b1111, 32'h0000_0F01);
	bus_write(2'b10,4'b1111, 32'h0000_00F2); 		// Set data to 0xF2
	wait(w_spi_irq);
	bus_write(2'b01,4'b1111, 32'h0000_0F01);
	#10
	bus_read(2'b01,4'b1111);
	#10
	bus_read(2'b10,4'b1111);
end
//---------------------------------------------  

endmodule
