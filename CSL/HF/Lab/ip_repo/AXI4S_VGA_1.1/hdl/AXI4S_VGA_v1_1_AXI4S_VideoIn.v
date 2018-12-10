
`timescale 1 ns / 1 ps

	module AXI4S_VGA_v1_1_AXI4S_VideoIn #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// AXI4Stream sink: Data Width
		parameter integer C_S_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
                output R1,
                output R0,
                output G1,
                output G0,
                output B1,
                output B0,
                output H_sync,
                output V_sync,
		// User ports ends
		// Do not modify the ports beyond this line

		// AXI4Stream sink: Clock
		input wire  S_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S_AXIS_ARESETN,
		// Ready to accept data in
		output wire  S_AXIS_TREADY,
		// Data in
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S_AXIS_TLAST,
		// Data is in valid
		input wire  S_AXIS_TVALID
	);
	// function called clogb2 that returns an integer which has the 
	// value of the ceiling of the log base 2.
	function integer clogb2 (input integer bit_depth);
	  begin
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
	      bit_depth = bit_depth >> 1;
	  end
	endfunction

	// 640x480 @ 60 Hz
        //Pixel clk 25M MHz
        reg [1:0] R;
        reg [1:0] G;
        reg [1:0] B;
        reg h_sync_reg;
        reg v_sync_reg;
        reg [9:0] h_cntr;
        reg [9:0] v_cntr;
        reg [1:0] ce;
        
        assign H_sync = h_sync_reg;
        assign V_sync = v_sync_reg;
        assign R1 = R[1];
        assign R0 = R[0];
        assign G1 = G[1];
        assign G0 = G[0];
        assign B1 = B[1];
        assign B0 = B[0];
        
        
        parameter [1:0] waitForTlast = 2'd0, waitForData = 2'd1, inSync = 2'd2;
        reg [1:0] streamSync;
        
        reg aready;
        
        reg[31:0] dataIn;
        assign S_AXIS_TREADY = aready;
        
        
        
        always @(posedge S_AXIS_ACLK)
        begin
            if(!S_AXIS_ARESETN || (streamSync != inSync))
            begin
                h_sync_reg <= 0;
                v_sync_reg <= 0;
            end
            else if(ce == 2'b11)
            begin
                h_sync_reg <= !((h_cntr >= (640 + 16 -1)) && (h_cntr < (640 + 16 + 96 -1)));
                v_sync_reg <= !((v_cntr >= (480 + 10 -1)) && (v_cntr < (480 + 10 + 2 -1)));
            end
        end
        
        
        
        wire h_end = h_cntr >= 10'd799;
        wire v_end = v_cntr >= 10'd520;
        
        
        always @(posedge S_AXIS_ACLK)
        begin
            if(!S_AXIS_ARESETN)
            begin
                streamSync <= waitForTlast;
            end
            else
            begin
                if(streamSync == waitForTlast)
                    if(S_AXIS_TLAST)
                        streamSync <= waitForData;
                else if(streamSync == waitForData)
                    if(S_AXIS_TVALID)
                        streamSync <= inSync;
            end
        end
        
        wire visibleArea = !((h_cntr >= 639) || (v_cntr >= 479));
        
        always @ (posedge S_AXIS_ACLK)
        begin
            if(streamSync != inSync)
                aready <= 1;
            else
                if((h_cntr[1:0] == 2'b00) && (ce == 2'b00) && visibleArea)
                begin
                    aready <= 1;
                    dataIn <= S_AXIS_TDATA;
                end
                else
                    aready <= 0;
        end
        
        
        
        always @(posedge S_AXIS_ACLK)
            begin
                if(!S_AXIS_ARESETN || (streamSync != inSync))
                begin
                    h_cntr <= 10'd0;
                    v_cntr <= 10'd0;
                    ce <= 2'b0;
                end
                else
                begin
                    ce <= ce + 1;
                    if (ce == 2'b11)
                    begin
                        if (h_end && v_end)
                        begin
                            h_cntr <= 10'd0;
                            v_cntr <= 10'd0;
                        end
                        else if (h_end)
                        begin
                            h_cntr <= 10'd0;
                            v_cntr <= v_cntr + 1;
                        end
                        else
                        begin
                            h_cntr <= h_cntr + 1;    
                        end
                    end
                end
            end
        
        always @ (posedge S_AXIS_ACLK)
        begin
            if(ce == 2'b11)
            begin
                if(!visibleArea)
                begin
                    R <= 0;
                    G <= 0;
                    B <= 0;
                end
                else
                begin
                    case (h_cntr[1:0])
                    2'b00:
                    begin
                        R <= dataIn[5:4];
                        G <= dataIn[3:2];
                        B <= dataIn[1:0];
                    end
                    2'b01:
                    begin
                        R <= dataIn[8+5:8+4];
                        G <= dataIn[8+3:8+2];
                        B <= dataIn[8+1:8+0];
                    end
                    2'b10:
                    begin
                        R <= dataIn[16+5:16+4];
                        G <= dataIn[16+3:16+2];
                        B <= dataIn[16+1:16+0];
                    end
                    2'b11:
                    begin
                        R <= dataIn[24+5:24+4];
                        G <= dataIn[24+3:24+2];
                        B <= dataIn[24+1:24+0];
                    end
                    endcase
                end
            end
        end
    
        endmodule