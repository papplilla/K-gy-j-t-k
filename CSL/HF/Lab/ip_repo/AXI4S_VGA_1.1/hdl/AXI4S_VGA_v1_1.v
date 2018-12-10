
`timescale 1 ns / 1 ps

	module AXI4S_VGA_v1_1 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface AXI4S_VideoIn
		parameter integer C_AXI4S_VideoIn_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface AXI4S_VideoIn
		input wire  axi4s_videoin_aclk,
		input wire  axi4s_videoin_aresetn,
		output wire  axi4s_videoin_tready,
		input wire [C_AXI4S_VideoIn_TDATA_WIDTH-1 : 0] axi4s_videoin_tdata,
		input wire [(C_AXI4S_VideoIn_TDATA_WIDTH/8)-1 : 0] axi4s_videoin_tstrb,
		input wire  axi4s_videoin_tlast,
		input wire  axi4s_videoin_tvalid
	);
// Instantiation of Axi Bus Interface AXI4S_VideoIn
	AXI4S_VGA_v1_1_AXI4S_VideoIn # ( 
		.C_S_AXIS_TDATA_WIDTH(C_AXI4S_VideoIn_TDATA_WIDTH)
	) AXI4S_VGA_v1_1_AXI4S_VideoIn_inst (
		.S_AXIS_ACLK(axi4s_videoin_aclk),
		.S_AXIS_ARESETN(axi4s_videoin_aresetn),
		.S_AXIS_TREADY(axi4s_videoin_tready),
		.S_AXIS_TDATA(axi4s_videoin_tdata),
		.S_AXIS_TSTRB(axi4s_videoin_tstrb),
		.S_AXIS_TLAST(axi4s_videoin_tlast),
		.S_AXIS_TVALID(axi4s_videoin_tvalid)
	);

	// Add user logic here

	// User logic ends

	endmodule
