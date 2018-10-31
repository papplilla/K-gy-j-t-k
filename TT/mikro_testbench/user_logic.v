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

`uselib lib=unisims_ver
`uselib lib=proc_common_v3_00_a

module user_logic #(
   //IPIF parameters
   parameter C_NUM_REG                      = 1,		//Az IPIF által dekódolt 32 bites regiszterek száma.
   parameter C_SLV_DWIDTH                   = 32		//Az adatbusz szélessége bitekben.
   
   //Place own parameter here.
) (
   //Az IPIF interfészhez tartozó portok. Ha a Create or Import Peripheral
   //Wizard-ban nem jelöltük be a memória interfészhez tartozó Bus2IP_Addr,
   //Bus2IP_CS és Bus2IP_RNW jelek hozzáadását, akkor ezeket innen töröljük.
   input  wire                      Bus2IP_Clk,			//Órajel.
   input  wire                      Bus2IP_Resetn,		//Aktív alacsony reset jel.
//   input  wire [31:0]               Bus2IP_Addr,		//Címbusz.
//   input  wire [0:0]                Bus2IP_CS,			//A periféria címtartományának elérését jelzõ jel.
//   input  wire                      Bus2IP_RNW,			//A mûvelet típusát (0: írás, 1: olvasás) jelzõ jel.
   input  wire [C_SLV_DWIDTH-1:0]   Bus2IP_Data,		//Írási adatbusz.
   input  wire [C_SLV_DWIDTH/8-1:0] Bus2IP_BE,			//Bájt engedélyezõ jelek (csak írás esetén érvényesek).
   input  wire [C_NUM_REG-1:0]      Bus2IP_RdCE,		//A regiszterek olvasás engedélyezõ jelei.
   input  wire [C_NUM_REG-1:0]      Bus2IP_WrCE,		//A regiszterek írás engedélyezõ jelei.
   output wire [C_SLV_DWIDTH-1:0]   IP2Bus_Data,		//Olvasási adatbusz.
   output wire                      IP2Bus_RdAck,		//Az olvasási mûveletek nyugtázó jele.
   output wire                      IP2Bus_WrAck,		//Az írási mûveletek nyugtázó jele.
   output wire                      IP2Bus_Error,		//Hibajelzés.
   
   // LCD SPI portok
   output wire						o_spi_lcd_csn,
   output wire						o_spi_mosi,
   output wire						o_spi_miso,
   output wire						o_spi_clk
);

wire w_sysclk = Bus2IP_Clk;
wire w_sysrst = ~Bus2IP_Resetn;
/*

//LCD SPI órajel előállítása 50MHz/2=25MHz (max 33MHz)
reg  r_clk_div;
always @(posedge w_sysclk)
begin
	if (w_sysrst)
		r_clk_div <= 0;
	else
		r_clk_div <= ~r_clk_div;
end

//LCD SPI órajel előállítása 50MHz/2=25MHz (max 33MHz)



*/
// olvasási multiplexer
reg [31:0] r_rd_mux;

always @(*)
begin
	case(Bus2IP_RdCE)
		3'b100: r_rd_mux <= status_reg;
		3'b010: r_rd_mux <= {29'd0, ier};
		3'b001: r_rd_mux <= {29'd0, ifr};
		default: r_rd_mux <= 0;
	endcase
end

//Az IPIF felé menõ jelek meghajtása.
assign IP2Bus_Data  = r_rd_mux;
assign IP2Bus_WrAck = |Bus2IP_WrCE;
assign IP2Bus_RdAck = |Bus2IP_RdCE;
assign IP2Bus_Error = 1'b0;

endmodule
