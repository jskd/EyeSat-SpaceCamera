// camera.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module camera (
		input  wire        avs_s1_clk,              //       s1_clock.clk
		input  wire        avs_s1_reset,            // s1_clock_reset.reset
		input  wire [1:0]  avs_s1_address,          //             s1.address
		output wire [31:0] avs_s1_readdata,         //               .readdata
		input  wire        avs_s1_read,             //               .read
		input  wire [31:0] avs_s1_writedata,        //               .writedata
		input  wire        avs_s1_write,            //               .write
		output wire        avs_s1_export_clk,       //      s1_export.export
		output wire [1:0]  avs_s1_export_address,   //               .export
		input  wire [31:0] avs_s1_export_readdata,  //               .export
		output wire        avs_s1_export_read,      //               .export
		output wire [31:0] avs_s1_export_writedata, //               .export
		output wire        avs_s1_export_write,     //               .export
		output wire        avs_s1_export_reset      //               .export
	);

	CAMERA_IF camera (
		.avs_s1_clk              (avs_s1_clk),              //       s1_clock.clk
		.avs_s1_reset            (avs_s1_reset),            // s1_clock_reset.reset
		.avs_s1_address          (avs_s1_address),          //             s1.address
		.avs_s1_readdata         (avs_s1_readdata),         //               .readdata
		.avs_s1_read             (avs_s1_read),             //               .read
		.avs_s1_writedata        (avs_s1_writedata),        //               .writedata
		.avs_s1_write            (avs_s1_write),            //               .write
		.avs_s1_export_clk       (avs_s1_export_clk),       //      s1_export.export
		.avs_s1_export_address   (avs_s1_export_address),   //               .export
		.avs_s1_export_readdata  (avs_s1_export_readdata),  //               .export
		.avs_s1_export_read      (avs_s1_export_read),      //               .export
		.avs_s1_export_writedata (avs_s1_export_writedata), //               .export
		.avs_s1_export_write     (avs_s1_export_write),     //               .export
		.avs_s1_export_reset     (avs_s1_export_reset)      //               .export
	);

endmodule
