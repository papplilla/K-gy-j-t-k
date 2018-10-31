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
module simple_io_tb;
// Inputs
	reg 			Bus2IP_Clk;
	reg 			Bus2IP_Resetn;

	reg  [31:0]		Bus2IP_Data;
	reg  [3:0]		Bus2IP_BE;
	reg  [3:0]		Bus2IP_RdCE;
	reg  [3:0]		Bus2IP_WrCE;

	wire [31:0]		IP2Bus_Data;
	wire 			IP2Bus_RdAck;
	wire 			IP2Bus_WrAck;
	wire 			IP2Bus_Error;

	wire 			w_irq;
	reg  [2:0]		r_btn_in;				//GPIO input data.
	wire [7:0]		w_sw_out;				//GPIO input data.

	reg  [12:0]		r_gpio_i;            	//GPIO input data.
	wire [12:0]		w_gpio_o;            	//GPIO output data.
	reg  [12:0]		r_gpio_dir;            	//GPIO direction control (0:out, 1:in).

	//CPLD interface ports.
	wire 			w_cpld_jtagen;    //CPLD JTAG interface enable signal.
	wire 			w_cpld_rstn;        //CPLD reset signal.
	wire 			w_cpld_clk;          //CPLD clock signal.
	wire 			w_cpld_load;        //CPLD load signal.
	wire 			w_cpld_mosi;        //CPLD serial data output.
	reg			r_cpld_miso;

//---------------------------------------------
// Instantiate the Unit Under Test (UUT)
//---------------------------------------------
simple_io uut(
	// General input signals
	.Bus2IP_Clk(Bus2IP_Clk),
	.Bus2IP_Resetn(Bus2IP_Resetn),

	// Internal signals
	.Bus2IP_Data(Bus2IP_Data), 		// Data from bus
	.Bus2IP_BE(Bus2IP_BE), 			// Modify settings
	.Bus2IP_RdCE(Bus2IP_RdCE), 		// Write data
	.Bus2IP_WrCE(Bus2IP_WrCE), 		// Read data

	.IP2Bus_Data(IP2Bus_Data), 		// Data to bus
	.IP2Bus_RdAck(IP2Bus_RdAck), 	// Acknowledge
	.IP2Bus_WrAck(IP2Bus_WrAck), 	// Acknowledge
	.IP2Bus_Error(IP2Bus_Error),	// 

	.irq(w_spi_irq),					//GPIO input data.
	.btn_in(r_btn_in),				//GPIO input data.
	.sw_out(w_sw_out),				//GPIO input data.
	.gpio_I(13'd0),            	//GPIO input data.
	.gpio_O(w_gpio_o),            	//GPIO output data.
	.gpio_T(),            	//GPIO direction control (0:out, 1:in).

	//CPLD interface ports.
	.cpld_jtagen(w_cpld_jtagen),    //CPLD JTAG interface enable signal.
	.cpld_rstn(w_cpld_rstn),        //CPLD reset signal.
	.cpld_clk(w_cpld_clk),          //CPLD clock signal.
	.cpld_load(w_cpld_load),        //CPLD load signal.
	.cpld_mosi(w_cpld_mosi),        //CPLD serial data output.
	.cpld_miso(r_cpld_miso)         //CPLD serial data input.
);
//---------------------------------------------

//---------------------------------------------
// Bus write cycle
//---------------------------------------------
task bus_write (input [3:0] addr,input [3:0] byte_en,  input [31:0] data);
begin
	#10 Bus2IP_WrCE <= addr;
	Bus2IP_BE 	<= byte_en;
	Bus2IP_Data <= data;
	wait(IP2Bus_WrAck);
	#10 Bus2IP_WrCE <= 4'b0000;
	Bus2IP_BE 	<= 4'b0000;
	Bus2IP_Data <= 32'h0000_0000;
end
endtask
//---------------------------------------------

//---------------------------------------------
// Bus read cycle
//---------------------------------------------
task bus_read (input [3:0] addr,input [3:0] byte_en);
begin
	#10 Bus2IP_RdCE <= addr;
	Bus2IP_BE 	<= byte_en;
	wait(IP2Bus_RdAck);
	#10 Bus2IP_RdCE <= 4'b0000;
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
	r_cpld_miso = 1;
	bus_write(4'b1000,4'b0100, 32'h00550000); 		//disp2 write
	bus_write(4'b1000,4'b0001, 8'b0000_0101); 		//led write			
	bus_read(4'b1000,4'b0100);
	#10
	bus_read(4'b1000,4'b0001);
end
//---------------------------------------------  

endmodule
