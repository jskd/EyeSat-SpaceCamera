/*  Save Register Files Definition

Slave:
	offset 0: Address: 32-bits start address
	offset 2: control:
	offset 1: status:


*/

module CAMERA_IF(	//	avalon MM slave port, ISP1362, host control
					// global
					//===== avalon MM s1 slave (read/write)
					// read/write
					avs_s1_clk,
					avs_s1_address,
					avs_s1_readdata,
					avs_s1_read,
					avs_s1_writedata,
					avs_s1_write,
					avs_s1_reset,
					//
					
					//===== Interface s1 to export
					// read/write
					avs_s1_export_clk,
					avs_s1_export_address,
					avs_s1_export_readdata,
					avs_s1_export_read,
					avs_s1_export_writedata,
					avs_s1_export_write,
					avs_s1_export_reset
				
					
			
				 );
				
/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/


/*****************************************************************************
 *                             Internal Wire/Register                         *
 *****************************************************************************/


/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/
 // s1
input				avs_s1_clk;
input	[1:0]		avs_s1_address;
output	[31:0]		avs_s1_readdata;
input				avs_s1_read;
input	[31:0]		avs_s1_writedata;
input				avs_s1_write;
input				avs_s1_reset;



					//

//===== Interface to export
// s1
output				avs_s1_export_clk;
output	[1:0]		avs_s1_export_address;
input	[31:0]		avs_s1_export_readdata;
output				avs_s1_export_read;
output	[31:0]		avs_s1_export_writedata;
output				avs_s1_export_write;
output				avs_s1_export_reset;



/*****************************************************************************
 *                            Sequence logic                                  *
 *****************************************************************************/
 


/*****************************************************************************
 *                            Combinational logic                            *
 *****************************************************************************/
// s1
assign	avs_s1_export_clk = avs_s1_clk;
assign	avs_s1_export_address = avs_s1_address;
assign	avs_s1_readdata = avs_s1_export_readdata;
assign	avs_s1_export_read = avs_s1_read;
assign	avs_s1_export_writedata = avs_s1_writedata;
assign	avs_s1_export_write = avs_s1_write;
assign	avs_s1_export_reset = avs_s1_reset;


endmodule

