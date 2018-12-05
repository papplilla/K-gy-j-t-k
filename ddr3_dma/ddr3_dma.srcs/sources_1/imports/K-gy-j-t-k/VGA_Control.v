

module vgaSync (
   input wire clk,
   input wire rstn,

   input wire [7:0] wdata,
   input wire wvalid,
   input wire wlast,
   output reg wready,
    

   output reg [1:0] rout,
   output reg [1:0] gout,
   output reg [1:0] bout,

   output reg hs,
   output reg vs
   );
   //wire rst = w

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
        wready <= 1'b1;                 // tudunk adatot fogadni
        if(wlast)
        begin
            wready <= 1'b0;             // nem tudunk adatot fogadni
            state <= wait_for_origo;
        end
        // Különben várunk
    end
    else if(state == wait_for_origo)    
    begin
        if(hcont==0 && vcont==0)      // a VGA vezérlõ a (0,0)-s pixelnél tart
        begin
            state <= vga_write_pixels;
            wready <= 1'b1;                 // tudunk adatot fogadni
        end
        // Különben várunk
    end
    else if(state == vga_write_pixels)      // TÉNYLEGES KÉPERNYÕREÍRÁS 
    begin
        if(wvalid)
        begin
            if(active_area)
            begin
                 wready <= 1'b1;                 // tudunk adatot fogadni
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
/*
   always @*
	begin
      if (active_area)
		begin
         gout = gin;
         rout = rin;
         bout = bin;
      end
      else
		begin
         gout = 3'b0;
         rout = 3'b0;
         bout = 2'b0;
      end
   end
   */
endmodule


/////////////////////////////////////////////////////////////////////////////
/*module test(xpos, ypos, red, green, blue);
input [9:0] xpos;
input [9:0] ypos;
output [2:0] red;
output [2:0] green;
output [1:0] blue;
wire [4:0] temp;

assign blue[0] = 0;
assign temp[0] = ((ypos>200 && ypos <=400) && (xpos>=200&&xpos<=400));

assign red[1] = temp[0];
assign green[0] = red[1] ? 0:1;
endmodule
*/