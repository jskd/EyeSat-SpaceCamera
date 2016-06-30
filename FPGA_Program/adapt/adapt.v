// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Tue Jun 28 16:50:55 2016"

module adapt(
	GPIO_1,
	VGA_CLK,
	VGA_HS,
	VGA_VS,
	VGA_BLANK,
	VGA_SYNC,
	VGA_R,
	VGA_G,
	VGA_B
);


input [35:0]	GPIO_1;

output VGA_CLK;
output VGA_HS;
output VGA_VS;
output VGA_BLANK;
output VGA_SYNC;
output [9:0] VGA_R;
output [9:0] VGA_G;
output [9:0] VGA_B;


assign	VGA_CLK = GPIO_1[1];
assign	VGA_HS = GPIO_1[3];
assign	VGA_VS = GPIO_1[4];
assign	VGA_BLANK = GPIO_1[5];
assign	VGA_SYNC = GPIO_1[6];
assign	VGA_R[9:0] = GPIO_1[16:7];
assign	VGA_G[9:0] = GPIO_1[26:17];
assign	VGA_B[9:1] = GPIO_1[35:27];
assign	VGA_B[0] = 1'b0;

endmodule
