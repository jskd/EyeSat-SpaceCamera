// --------------------------------------------------------------------
// Copyright (c) 2007 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	DE2 D5M VGA
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
// --------------------------------------------------------------------

module DE2_D5M
	(
		////////////////////	Clock Input	 	////////////////////	
		CLOCK_50,						//	50 MHz
		////////////////////	Push Button		////////////////////
		KEY,							//	Pushbutton[2:0]
		////////////////////	DPDT Switch		////////////////////
		SW,								//	Toggle Switch[4:0]
		/////////////////////	SDRAM Interface		////////////////
		DRAM_DQ,						//	SDRAM Data bus 16 Bits
		DRAM_ADDR,						//	SDRAM Address bus 13 Bits
		DRAM_DQM,						//	SDRAM Low-byte  Mask 
		DRAM_WE_N,						//	SDRAM Write Enable
		DRAM_CAS_N,						//	SDRAM Column Address Strobe
		DRAM_RAS_N,						//	SDRAM Row Address Strobe
		DRAM_CS_N,						//	SDRAM Chip Select
		DRAM_BA,							//	SDRAM Bank Address
		DRAM_CLK,						//	SDRAM Clock
		DRAM_CKE,						//	SDRAM Clock Enable
		////////////////////	GPIO	////////////////////////////
		GPIO_0_IN,
		GPIO_0_D,
		GPIO_1_IN,
		GPIO_1_D,
	);

////////////////////////	Clock Input	 	////////////////////////
input			CLOCK_50;				//	50 MHz
////////////////////////	Push Button		////////////////////////
input	[1:0]	KEY;					//	Pushbutton[2:0]
////////////////////////	DPDT Switch		////////////////////////
input	[3:0]	SW;						//	Toggle Switch[4:0]
///////////////////////		SDRAM Interface	////////////////////////
inout	[15:0]	DRAM_DQ;				//	SDRAM Data bus 16 Bits
output	[12:0]	DRAM_ADDR;				//	SDRAM Address bus 13 Bits
output	[1:0]		DRAM_DQM;				//	SDRAM Data Mask 
output			DRAM_WE_N;				//	SDRAM Write Enable
output			DRAM_CAS_N;				//	SDRAM Column Address Strobe
output			DRAM_RAS_N;				//	SDRAM Row Address Strobe
output			DRAM_CS_N;				//	SDRAM Chip Select
output		[1:0]	DRAM_BA;				//	SDRAM Bank Address
output			DRAM_CLK;				//	SDRAM Clock
output			DRAM_CKE;				//	SDRAM Clock Enable
////////////////////////	GPIO	////////////////////////////////
input [1:0] 	GPIO_0_IN;
inout	[33:0]	GPIO_0_D;
input [1:0] 	GPIO_1_IN;
inout	[33:0]	GPIO_1_D;				

///////////////////////////////////////////////////////////////////
//=============================================================================
// REG/WIRE declarations
//=============================================================================

//	CCD
wire	[11:0]	CCD_DATA;
wire			CCD_SDAT;
wire			CCD_SCLK;
wire			CCD_FLASH;
wire			CCD_FVAL;
wire			CCD_LVAL;
wire			CCD_PIXCLK;
wire			CCD_MCLK;				//	CCD Master Clock

wire	[15:0]	Read_DATA1;
wire	[15:0]	Read_DATA2;
wire			VGA_CTRL_CLK;
wire	[11:0]	mCCD_DATA;
wire			mCCD_DVAL;
wire			mCCD_DVAL_d;
wire	[15:0]	X_Cont;
wire	[15:0]	Y_Cont;
wire	[9:0]	X_ADDR;
wire	[31:0]	Frame_Cont;
wire			DLY_RST_0;
wire			DLY_RST_1;
wire			DLY_RST_2;
wire			Read;
reg		[11:0]	rCCD_DATA;
reg				rCCD_LVAL;
reg				rCCD_FVAL;
wire	[11:0]	sCCD_R;
wire	[11:0]	sCCD_G;
wire	[11:0]	sCCD_B;
wire			sCCD_DVAL;

reg		[1:0]	rClk;
wire			sdram_ctrl_clk;

wire			VGA_CLK;   				//	VGA Clock
wire			VGA_HS;					//	VGA H_SYNC
wire			VGA_VS;					//	VGA V_SYNC
wire			VGA_BLANK;				//	VGA BLANK
wire			VGA_SYNC;				//	VGA SYNC
wire	[9:0]	VGA_R;   				//	VGA Red[9:0]
wire	[9:0]	VGA_G;	 				//	VGA Green[9:0]
wire	[9:0]	VGA_B;   				//	VGA Blue[9:0]

//=============================================================================
// Structural coding
//=============================================================================
assign	CCD_PIXCLK	=	GPIO_1_IN[0];

assign	CCD_DATA[11]=	GPIO_1_D[0];
assign	CCD_DATA[10]=	GPIO_1_D[1];
assign	CCD_DATA[9]	=	GPIO_1_D[2];
assign	CCD_DATA[8]	=	GPIO_1_D[3];
assign	CCD_DATA[7]	=	GPIO_1_D[4];
assign	CCD_DATA[6]	=	GPIO_1_D[5];
assign	CCD_DATA[5]	=	GPIO_1_D[6];
assign	CCD_DATA[4]	=	GPIO_1_D[7];
assign	CCD_DATA[3]	=	GPIO_1_D[8];
assign	CCD_DATA[2]	=	GPIO_1_D[9];
assign	CCD_DATA[1]	=	GPIO_1_D[10];
assign	CCD_DATA[0]	=	GPIO_1_D[11];
assign	GPIO_1_D[14]=	CCD_MCLK;
assign	GPIO_1_D[15]=	DLY_RST_1;
assign	GPIO_1_D[17]=	1'b1;  // tRIGGER
assign	CCD_LVAL		=	GPIO_1_D[19];
assign	CCD_FVAL		=	GPIO_1_D[20];

assign	VGA_CTRL_CLK		=	rClk[0];
assign	VGA_CLK				=	~rClk[0];
assign	GPIO_0_D[0]   		=	VGA_CLK;
assign	GPIO_0_D[1]   		=	VGA_HS		;
assign	GPIO_0_D[2]   		=	VGA_VS		;
assign	GPIO_0_D[3]			=	VGA_BLANK	;
assign	GPIO_0_D[4]			=	VGA_SYNC		;
assign	GPIO_0_D[14:5]		=	VGA_R[9:0]	;
assign	GPIO_0_D[24:15]	=	VGA_G[9:0]	;
assign	GPIO_0_D[33:25]	=	VGA_B[9:1]	;		
	
	
	
assign	DRAM_ADDR[12] = 	1'b0;  
	
	
always@(posedge CLOCK_50)	rClk	<=	rClk+1;


always@(posedge CCD_PIXCLK)
begin
	rCCD_DATA	<=	CCD_DATA;
	rCCD_LVAL	<=	CCD_LVAL;
	rCCD_FVAL	<=	CCD_FVAL;
end

VGA_Controller		u1	(	//	Host Side
							.oRequest(Read),
							.iRed(Read_DATA2[9:0]),
							.iGreen({Read_DATA1[14:10],Read_DATA2[14:10]}),
							.iBlue(Read_DATA1[9:0]),
							
							//	VGA Side
							.oVGA_R(VGA_R),
							.oVGA_G(VGA_G),
							.oVGA_B(VGA_B),
							.oVGA_H_SYNC(VGA_HS),
							.oVGA_V_SYNC(VGA_VS),
							.oVGA_SYNC(VGA_SYNC),
							.oVGA_BLANK(VGA_BLANK),
							//	Control Signal
							.iCLK(VGA_CTRL_CLK),
							.iRST_N(DLY_RST_2)
						);


Reset_Delay			u2	(	.iCLK(CLOCK_50),
							.iRST(KEY[0]),
							.oRST_0(DLY_RST_0),
							.oRST_1(DLY_RST_1),
							.oRST_2(DLY_RST_2)
						);

CCD_Capture			u3	(	.oDATA(mCCD_DATA),
							.oDVAL(mCCD_DVAL),
							.oX_Cont(X_Cont),
							.oY_Cont(Y_Cont),
							.oFrame_Cont(Frame_Cont),
							.iDATA(rCCD_DATA),
							.iFVAL(rCCD_FVAL),
							.iLVAL(rCCD_LVAL),
							.iSTART(1'b1),
							.iEND(1'b0),
							.iCLK(CCD_PIXCLK),
							.iRST(DLY_RST_2)
						);

RAW2RGB				u4	(	.iCLK(CCD_PIXCLK),
							.iRST(DLY_RST_1),
							.iDATA(mCCD_DATA),
							.iDVAL(mCCD_DVAL),
							.oRed(sCCD_R),
							.oGreen(sCCD_G),
							.oBlue(sCCD_B),
							.oDVAL(sCCD_DVAL),
							.iX_Cont(X_Cont),
							.iY_Cont(Y_Cont)
						);

sdram_pll 			u6	(
							.inclk0(CLOCK_50),
							.c0(sdram_ctrl_clk),
							.c1(DRAM_CLK)
						);

assign CCD_MCLK = rClk[0];

Sdram_Control_4Port	u7	(	//	HOST Side						
						    .REF_CLK(CLOCK_50),
						    .RESET_N(KEY[0]),
							.CLK(sdram_ctrl_clk),

							//	FIFO Write Side 1
							.WR1_DATA({1'b0,sCCD_G[11:7],sCCD_B[11:2]}),
							.WR1(sCCD_DVAL),
							.WR1_ADDR(0),
							.WR1_MAX_ADDR(640*480),
							.WR1_LENGTH(9'h100),
							.WR1_LOAD(!DLY_RST_0),
							.WR1_CLK(~CCD_PIXCLK),

							//	FIFO Write Side 2
							.WR2_DATA(	{1'b0,sCCD_G[6:2],sCCD_R[11:2]}),
							.WR2(sCCD_DVAL),
							.WR2_ADDR(22'h100000),
							.WR2_MAX_ADDR(22'h100000+640*480),
							.WR2_LENGTH(9'h100),
							.WR2_LOAD(!DLY_RST_0),
							.WR2_CLK(~CCD_PIXCLK),


							//	FIFO Read Side 1
						    .RD1_DATA(Read_DATA1),
				        	.RD1(Read),
				        	.RD1_ADDR(0),
							.RD1_MAX_ADDR(640*480),
							.RD1_LENGTH(9'h100),
							.RD1_LOAD(!DLY_RST_0),
							.RD1_CLK(~VGA_CTRL_CLK),
							
							//	FIFO Read Side 2
						    .RD2_DATA(Read_DATA2),
							.RD2(Read),
							.RD2_ADDR(22'h100000),
							.RD2_MAX_ADDR(22'h100000+640*480),
							.RD2_LENGTH(9'h100),
				        	.RD2_LOAD(!DLY_RST_0),
							.RD2_CLK(~VGA_CTRL_CLK),
							
							//	SDRAM Side
						    .SA(DRAM_ADDR[11:0]),
						    .BA(DRAM_BA[1:0]),
        					.CS_N(DRAM_CS_N),
        					.CKE(DRAM_CKE),
        					.RAS_N(DRAM_RAS_N),
        					.CAS_N(DRAM_CAS_N),
        					.WE_N(DRAM_WE_N),
        					.DQ(DRAM_DQ),
        					.DQM(DRAM_DQM[1:0])
						);

I2C_CCD_Config 		u8	(	//	Host Side
							.iCLK(CLOCK_50),
							.iRST_N(DLY_RST_2),
							.iZOOM_MODE_SW(1'b0),
							.iEXPOSURE_ADJ(KEY[1]),
							.iEXPOSURE_DEC_p(SW[0]),
							//	I2C Side
							.I2C_SCLK(GPIO_1_D[22]),
							.I2C_SDAT(GPIO_1_D[21])
						);

						

endmodule