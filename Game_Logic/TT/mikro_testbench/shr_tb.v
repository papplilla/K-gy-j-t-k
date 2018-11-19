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
module shr_tb;
// Inputs
	reg 			r_sysclk;
    reg 			r_sysrst;
    reg 			r_sh;
    reg 			r_ld;


    // for feedback comment r_ and uncomment w_
    //wire 			w_din;
    reg 			r_din;
        		
    wire 			w_dout;
    wire 	[7:0] 	w_dstr;
    reg 	[7:0] 	r_ld_data;

	// Instantiate the Unit Under Test (UUT)
	shr uut (
		.i_sysclk(r_sysclk), 
        .i_sysrst(r_sysrst),
		.i_din(r_din), 			// for feedback write w_din
		.i_sh(r_sh), 
		.i_ld(r_ld), 
		.i_ld_data(r_ld_data), 
		.o_dout(w_dout),
		.o_dstr(w_dstr)		
	);

	initial begin
		// Initialize Inputs
		r_sysclk = 1;
        r_sysrst = 1;
        r_ld_data = 8'b0;
        r_sh = 0;
        r_ld = 0;

        // comment out for feedback
        r_din = 0;

        #100 r_sysrst = 0;

	end

always #10 r_sysclk = ~r_sysclk;


reg [3:0] r_cntr = 4'b0;
always @ (posedge r_sysclk)
begin
	if (~(r_sysrst == 1'b1)) begin
		r_cntr = r_cntr + 1'b1;

		if (r_cntr == 4'b1000) begin
			r_ld_data = r_ld_data + 1'b1;
			r_cntr = 4'b000;	
			r_sh = 0;
			r_ld = 1;
		end
		else begin
			r_sh = 1;
			r_ld = 0;
		end
	end
end

// for feedback with w_dout
//assign w_din = w_dout;

endmodule
