`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2018 08:31:47 PM
// Design Name: 
// Module Name: vga_640x480
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


module vga_640x480(
    input wire i_clk,
    input wire i_pix_stb,
    input wire i_rst,
    output wire o_hs,
    output wire o_vs,
    output wire o_blanking,
    output wire o_active,
    output wire o_screenend,
    output wire o_animate,
    output wire [9:0] o_x,
    output wire [8:0] o_y
    );
    
    // VGA timings https://timetoexplore.net/blog/video-timings-vga-720p-1080p
    localparam HS_STA = 16;              // horizontal sync start
    localparam HS_END = 16 + 96;         // horizontal sync end
    localparam HA_STA = 16 + 96 + 48;    // horizontal active pixel start
    localparam VS_STA = 480 + 11;        // vertical sync start
    localparam VS_END = 480 + 11 + 2;    // vertical sync end
    localparam VA_END = 480;             // vertical active pixel end
    localparam LINE   = 800;             // complete line (pixels)
    localparam SCREEN = 524;             // complete screen (lines)

    reg [9:0] h_count;  // line position
    reg [9:0] v_count;  // screen position

    // generate sync signals (active low for 640x480)
    assign o_hs = ~((h_count >= HS_STA) & (h_count < HS_END));
    assign o_vs = ~((v_count >= VS_STA) & (v_count < VS_END));

    // keep x and y bound within the active pixels
    assign o_x = (h_count < HA_STA) ? 0 : (h_count - HA_STA);
    assign o_y = (v_count >= VA_END) ? (VA_END - 1) : (v_count);

    // blanking: high within the blanking period
    assign o_blanking = ((h_count < HA_STA) | (v_count > VA_END - 1));

    // active: high during active pixel drawing
    assign o_active = ~((h_count < HA_STA) | (v_count > VA_END - 1)); 

    // screenend: high for one tick at the end of the screen
    assign o_screenend = ((v_count == SCREEN - 1) & (h_count == LINE));

    // animate: high for one tick at the end of the final active pixel line
    assign o_animate = ((v_count == VA_END - 1) & (h_count == LINE));

    always @ (posedge i_clk)
    begin
        if (i_rst)  // reset to start of frame
        begin
            h_count <= 0;
            v_count <= 0;
        end
        if (i_pix_stb)  // once per pixel
        begin
            if (h_count == LINE)  // end of line
            begin
                h_count <= 0;
                v_count <= v_count + 1;
            end
            else 
                h_count <= h_count + 1;

            if (v_count == SCREEN)  // end of screen
                v_count <= 0;
        end
    end
    
endmodule
