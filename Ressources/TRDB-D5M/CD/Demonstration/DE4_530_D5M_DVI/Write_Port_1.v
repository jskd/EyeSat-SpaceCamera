// Write_Port_1.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module Write_Port_1 (
		input  wire         iCLK,          //    clock_sink.clk
		input  wire         iRST_n,        //              .reset_n
		output wire [31:0]  oADDRESS,      // avalon_master.address
		output wire         oCS,           //              .chipselect
		output wire         oWRITE,        //              .write
		output wire [255:0] oWRITE_DATA,   //              .writedata
		output wire [31:0]  oBYTE_ENABLE,  //              .byteenable
		input  wire         iWAIT_REQ,     //              .waitrequest
		output wire [7:0]   oBURST_COUNT,  //              .burstcount
		input  wire         iRST_n_F,      //   conduit_end.export
		input  wire         iCLK_F,        //              .export
		input  wire         iWRITE_F,      //              .export
		input  wire [15:0]  iWRITE_DATA_F, //              .export
		output wire         oFULL_F,       //              .export
		input  wire         iFLUSH_REQ_F,  //              .export
		output wire         oFLUSH_BUSY_F, //              .export
		input  wire         iIP_INIT_DONE, //              .export
		output wire [4:0]   c_state_flush, //              .export
		output wire [8:0]   wrusedw,       //              .export
		output wire [3:0]   c_state        //              .export
	);

	DDR2_SODIMM_Write_Port #(
		.DATA_WIDTH_BITS  (16),
		.STARTING_ADDRESS (0),
		.PORT_SIZE_BYTES  (1073741824),
		.BURST_CNT        (8)
	) write_port_1 (
		.iCLK          (iCLK),          //    clock_sink.clk
		.iRST_n        (iRST_n),        //              .reset_n
		.oADDRESS      (oADDRESS),      // avalon_master.address
		.oCS           (oCS),           //              .chipselect
		.oWRITE        (oWRITE),        //              .write
		.oWRITE_DATA   (oWRITE_DATA),   //              .writedata
		.oBYTE_ENABLE  (oBYTE_ENABLE),  //              .byteenable
		.iWAIT_REQ     (iWAIT_REQ),     //              .waitrequest
		.oBURST_COUNT  (oBURST_COUNT),  //              .burstcount
		.iRST_n_F      (iRST_n_F),      //   conduit_end.export
		.iCLK_F        (iCLK_F),        //              .export
		.iWRITE_F      (iWRITE_F),      //              .export
		.iWRITE_DATA_F (iWRITE_DATA_F), //              .export
		.oFULL_F       (oFULL_F),       //              .export
		.iFLUSH_REQ_F  (iFLUSH_REQ_F),  //              .export
		.oFLUSH_BUSY_F (oFLUSH_BUSY_F), //              .export
		.iIP_INIT_DONE (iIP_INIT_DONE), //              .export
		.c_state_flush (c_state_flush), //              .export
		.wrusedw       (wrusedw),       //              .export
		.c_state       (c_state)        //              .export
	);

endmodule
