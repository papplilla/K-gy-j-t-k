`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2018 12:26:16 AM
// Design Name: 
// Module Name: toplevel
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


module toplevel(
    input clk,
    input rst, 
    input [31:0] data,
    input [3:0] stb,
    input last,
    input valid,
    output wire r1, 
    output wire r0, 
    output wire g1,
    output wire g0,
    output wire b1,
    output wire b0,
    output wire h, 
    output wire v,
    output wire ready

    );
    
   AXI4S_VGA_v1_0_AXI4S_In vga
        (
            .R1(r1),
            .R0(r0),
            .G1(g1),
            .G0(g0),
            .B1(b1),
            .B0(b0),
            .H_sync(h),
            .V_sync(v),
            .S_AXIS_ACLK(clk),
            .S_AXIS_ARESETN(rst),
            .S_AXIS_TREADY(ready),
            .S_AXIS_TDATA(data),
            .S_AXIS_TSTRB(stb),
            .S_AXIS_TLAST(last),
            .S_AXIS_TVALID(valid)
        );
endmodule
