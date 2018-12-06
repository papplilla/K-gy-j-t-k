
`timescale 1 ns / 1 ps

	module myVGA_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 8
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		//input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,
		
		output reg [1:0] rout,
        output reg [1:0] gout,
        output reg [1:0] bout,
        
        output reg hs,
        output reg vs
	);
	
	 wire clk;
	 assign clk = s00_axis_aclk;
     wire rstn;
     assign rstn = s00_axis_aresetn;
     
     wire [7:0] wdata;
     assign wdata = s00_axis_tdata;
     wire wvalid;
     assign wvalid = s00_axis_tvalid;
     wire wlast;
     assign wlast = s00_axis_tlast;
     
     reg wready;
    
       // VGA 640x480@60Hz, 100MHz
       parameter htotal = 3200;                 // 4*800            
       parameter vtotal = 521;            
       parameter hactive = 2560;                // 4*640          
       parameter vactive = 480;                
       
       parameter hfrontporch = 64;              // 4*16      
       parameter hsyncpulse = 384;                // 4*96
       parameter hbackporch = 192;                 //4*48
           
       parameter vfrontporch = 10;    
       parameter vsyncpulse = 2;        
       parameter vbackporch = 29;    
       
       parameter hsyncpolarity = 0;    
       parameter vsyncpolarity = 0;
       reg [9:0] hcont = 0;
       reg [11:0] vcont = 0;
       reg active_area;
       
       
       reg [1:0] state=0;
       reg [7:0] data;
       
       parameter wait_for_wlast=0;
       parameter wait_for_origo=1;
       parameter vga_write_pixels=2;
    
        //assign hc = hcont;
       // assign vc = vcont;
    
        // x => Horizontal
        // y => Vertical
    
       always @(posedge clk)
        begin
        if(~rstn)
        begin 
           hcont = 0;
           vcont = 0; 
           hs = ~hsyncpolarity;
           vs = ~vsyncpolarity;
           active_area = 1'b1;
        end    
        else  if (hcont == htotal-1)  
            begin
             hcont = 0; 
             if (vcont == vtotal-1) 
                begin
                vcont = 0; 
             end
             else
                begin
                vcont = vcont + 1; 
             end
          end
          else
            begin
             hcont = hcont + 1; 
          end
       end
    
       always @*
        begin
          if (hcont <= hactive && vcont <= vactive)
             active_area = 1'b1;
          else
             active_area = 1'b0;
          
          if (hcont >= (hactive + hfrontporch) && hcont <= (hactive + hfrontporch + hsyncpulse))
             hs = hsyncpolarity;
          else
             hs = ~hsyncpolarity;
        
          if (vcont >= (vactive + vfrontporch) && vcont <= (vactive + vfrontporch + vsyncpulse))
             vs = vsyncpolarity;
          else
             vs = ~vsyncpolarity;
        end
    
    // Állapotgép
       always @*
       begin
        if(state == wait_for_wlast)
        begin
            wready = 1'b1;                 // tudunk adatot fogadni
            if(wlast)
            begin
                wready = 1'b0;             // nem tudunk adatot fogadni
                state <= wait_for_origo;
            end
            // Különben várunk
        end
        else if(state == wait_for_origo)    
        begin
            if(hcont==0 && vcont==0)      // a VGA vezérlõ a (0,0)-s pixelnél tart
            begin
                state <= vga_write_pixels;
                wready = 1'b1;                 // tudunk adatot fogadni
            end
            // Különben várunk
        end
        else if(state == vga_write_pixels)      // TÉNYLEGES KÉPERNYÕREÍRÁS 
        begin
            if(wvalid)
            begin
                if(active_area)
                begin
                     wready = 1'b1;                 // tudunk adatot fogadni
                     data <= wdata;
                     
                     gout <= data[1:0];
                     rout <= data[3:2];
                     bout <= data[5:4];
                end
                else
                begin                           // az aktív részen kívül vagyunk
                    wready <= 1'b0;             // nem tudunk adatot fogadni
                end
            end
            else                                // Szinkronizációs hiba
                state <= wait_for_wlast;        
        end
        
       end
       
       assign s00_axis_tready = wready;


	endmodule
