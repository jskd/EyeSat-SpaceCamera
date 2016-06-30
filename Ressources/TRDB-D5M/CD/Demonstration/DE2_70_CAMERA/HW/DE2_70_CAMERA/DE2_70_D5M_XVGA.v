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
// Major Functions:	DE2_70 D5M XVGA
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
// --------------------------------------------------------------------

module DE2_70_D5M_XVGA
	(
		////////////////////	Clock Input	 	////////////////////	 
		iCLK_28,						//  28.63636 MHz
		iCLK_50,						//	50 MHz
		iCLK_50_2,						//	50 MHz
		iCLK_50_3,						//	50 MHz
		iCLK_50_4,						//	50 MHz
		iEXT_CLOCK,						//	External Clock
		////////////////////	Push Button		////////////////////
		iKEY,							//	Pushbutton[3:0]
		////////////////////	DPDT Switch		////////////////////
		iSW,							//	Toggle Switch[17:0]
		////////////////////	7-SEG Dispaly	////////////////////
		oHEX0_D,						//	Seven Segment Digit 0
		oHEX0_DP,						//  Seven Segment Digit 0 decimal point
		oHEX1_D,						//	Seven Segment Digit 1
		oHEX1_DP,						//  Seven Segment Digit 1 decimal point
		oHEX2_D,						//	Seven Segment Digit 2
		oHEX2_DP,						//  Seven Segment Digit 2 decimal point
		oHEX3_D,						//	Seven Segment Digit 3
		oHEX3_DP,						//  Seven Segment Digit 3 decimal point
		oHEX4_D,						//	Seven Segment Digit 4
		oHEX4_DP,						//  Seven Segment Digit 4 decimal point
		oHEX5_D,						//	Seven Segment Digit 5
		oHEX5_DP,						//  Seven Segment Digit 5 decimal point
		oHEX6_D,						//	Seven Segment Digit 6
		oHEX6_DP,						//  Seven Segment Digit 6 decimal point
		oHEX7_D,						//	Seven Segment Digit 7
		oHEX7_DP,						//  Seven Segment Digit 7 decimal point
		////////////////////////	LED		////////////////////////
		oLEDG,							//	LED Green[8:0]
		oLEDR,							//	LED Red[17:0]
		////////////////////////	UART	////////////////////////
		oUART_TXD,						//	UART Transmitter
		iUART_RXD,						//	UART Receiver
		oUART_CTS,          			//	UART Clear To Send
		iUART_RTS,          			//	UART Requst To Send
		////////////////////////	IRDA	////////////////////////
		oIRDA_TXD,						//	IRDA Transmitter
		iIRDA_RXD,						//	IRDA Receiver
		/////////////////////	SDRAM Interface		////////////////
		DRAM_DQ,						//	SDRAM Data bus 32 Bits
		oDRAM0_A,						//	SDRAM0 Address bus 13 Bits
		oDRAM1_A,						//	SDRAM1 Address bus 13 Bits
		oDRAM0_LDQM0,					//	SDRAM0 Low-byte Data Mask 
		oDRAM1_LDQM0,					//	SDRAM1 Low-byte Data Mask 
		oDRAM0_UDQM1,					//	SDRAM0 High-byte Data Mask
		oDRAM1_UDQM1,					//	SDRAM1 High-byte Data Mask
		oDRAM0_WE_N,					//	SDRAM0 Write Enable
		oDRAM1_WE_N,					//	SDRAM1 Write Enable
		oDRAM0_CAS_N,					//	SDRAM0 Column Address Strobe
		oDRAM1_CAS_N,					//	SDRAM1 Column Address Strobe
		oDRAM0_RAS_N,					//	SDRAM0 Row Address Strobe
		oDRAM1_RAS_N,					//	SDRAM1 Row Address Strobe
		oDRAM0_CS_N,					//	SDRAM0 Chip Select
		oDRAM1_CS_N,					//	SDRAM1 Chip Select
		oDRAM0_BA,						//	SDRAM0 Bank Address
		oDRAM1_BA,	 					//	SDRAM1 Bank Address
		oDRAM0_CLK,						//	SDRAM0 Clock
		oDRAM1_CLK,						//	SDRAM1 Clock
		oDRAM0_CKE,						//	SDRAM0 Clock Enable
		oDRAM1_CKE,						//	SDRAM1 Clock Enable
		////////////////////	Flash Interface		////////////////
		FLASH_DQ,						//	FLASH Data bus 15 Bits (0 to 14)
		FLASH_DQ15_AM1,					//  FLASH Data bus Bit 15 or Address A-1
		oFLASH_A,						//	FLASH Address bus 26 Bits
		oFLASH_WE_N,					//	FLASH Write Enable
		oFLASH_RST_N,					//	FLASH Reset
		oFLASH_WP_N,					//	FLASH Write Protect /Programming Acceleration 
		iFLASH_RY_N,					//	FLASH Ready/Busy output 
		oFLASH_BYTE_N,					//	FLASH Byte/Word Mode Configuration
		oFLASH_OE_N,					//	FLASH Output Enable
		oFLASH_CE_N,					//	FLASH Chip Enable
		////////////////////	SRAM Interface		////////////////
		SRAM_DQ,						//	SRAM Data Bus 32 Bits
		SRAM_DPA, 						//  SRAM Parity Data Bus
		oSRAM_A,						//	SRAM Address bus 22 Bits
		oSRAM_ADSC_N,       			//	SRAM Controller Address Status 	
		oSRAM_ADSP_N,                   //	SRAM Processor Address Status
		oSRAM_ADV_N,                    //	SRAM Burst Address Advance
		oSRAM_BE_N,                     //	SRAM Byte Write Enable
		oSRAM_CE1_N,        			//	SRAM Chip Enable
		oSRAM_CE2,          			//	SRAM Chip Enable
		oSRAM_CE3_N,        			//	SRAM Chip Enable
		oSRAM_CLK,                      //	SRAM Clock
		oSRAM_GW_N,         			//  SRAM Global Write Enable
		oSRAM_OE_N,         			//	SRAM Output Enable
		oSRAM_WE_N,         			//	SRAM Write Enable
		////////////////////	ISP1362 Interface	////////////////
		OTG_D,							//	ISP1362 Data bus 16 Bits
		oOTG_A,							//	ISP1362 Address 2 Bits
		oOTG_CS_N,						//	ISP1362 Chip Select
		oOTG_OE_N,						//	ISP1362 Read
		oOTG_WE_N,						//	ISP1362 Write
		oOTG_RESET_N,					//	ISP1362 Reset
		OTG_FSPEED,						//	USB Full Speed,	0 = Enable, Z = Disable
		OTG_LSPEED,						//	USB Low Speed, 	0 = Enable, Z = Disable
		iOTG_INT0,						//	ISP1362 Interrupt 0
		iOTG_INT1,						//	ISP1362 Interrupt 1
		iOTG_DREQ0,						//	ISP1362 DMA Request 0
		iOTG_DREQ1,						//	ISP1362 DMA Request 1
		oOTG_DACK0_N,					//	ISP1362 DMA Acknowledge 0
		oOTG_DACK1_N,					//	ISP1362 DMA Acknowledge 1
		////////////////////	LCD Module 16X2		////////////////
		oLCD_ON,						//	LCD Power ON/OFF
		oLCD_BLON,						//	LCD Back Light ON/OFF
		oLCD_RW,						//	LCD Read/Write Select, 0 = Write, 1 = Read
		oLCD_EN,						//	LCD Enable
		oLCD_RS,						//	LCD Command/Data Select, 0 = Command, 1 = Data
		LCD_D,						//	LCD Data bus 8 bits
		////////////////////	SD_Card Interface	////////////////
		SD_DAT,							//	SD Card Data
		SD_DAT3,						//	SD Card Data 3
		SD_CMD,							//	SD Card Command Signal
		oSD_CLK,						//	SD Card Clock
		////////////////////	I2C		////////////////////////////
		I2C_SDAT,						//	I2C Data
		oI2C_SCLK,						//	I2C Clock
		////////////////////	PS2		////////////////////////////
		PS2_KBDAT,						//	PS2 Keyboard Data
		PS2_KBCLK,						//	PS2 Keyboard Clock		
		PS2_MSDAT,						//	PS2 Mouse Data
		PS2_MSCLK,						//	PS2 Mouse Clock
		////////////////////	VGA		////////////////////////////
		oVGA_CLOCK,   					//	VGA Clock
		oVGA_HS,						//	VGA H_SYNC
		oVGA_VS,						//	VGA V_SYNC
		oVGA_BLANK_N,					//	VGA BLANK
		oVGA_SYNC_N,					//	VGA SYNC
		oVGA_R,   						//	VGA Red[9:0]
		oVGA_G,	 						//	VGA Green[9:0]
		oVGA_B,  						//	VGA Blue[9:0]
		////////////	Ethernet Interface	////////////////////////
		ENET_D,						//	DM9000A DATA bus 16Bits
		oENET_CMD,						//	DM9000A Command/Data Select, 0 = Command, 1 = Data
		oENET_CS_N,						//	DM9000A Chip Select
		oENET_IOW_N,					//	DM9000A Write
		oENET_IOR_N,					//	DM9000A Read
		oENET_RESET_N,					//	DM9000A Reset
		iENET_INT,						//	DM9000A Interrupt
		oENET_CLK,						//	DM9000A Clock 25 MHz
		////////////////	Audio CODEC		////////////////////////
		AUD_ADCLRCK,					//	Audio CODEC ADC LR Clock
		iAUD_ADCDAT,					//	Audio CODEC ADC Data
		AUD_DACLRCK,					//	Audio CODEC DAC LR Clock
		oAUD_DACDAT,					//	Audio CODEC DAC Data
		AUD_BCLK,						//	Audio CODEC Bit-Stream Clock
		oAUD_XCK,						//	Audio CODEC Chip Clock
		////////////////	TV Decoder		////////////////////////
		iTD1_CLK27,						//	TV Decoder1 Line_Lock Output Clock 
		iTD1_D,    					    //	TV Decoder1 Data bus 8 bits
		iTD1_HS,						//	TV Decoder1 H_SYNC
		iTD1_VS,						//	TV Decoder1 V_SYNC
		oTD1_RESET_N,					//	TV Decoder1 Reset
		iTD2_CLK27,						//	TV Decoder2 Line_Lock Output Clock 		
		iTD2_D,    					    //	TV Decoder2 Data bus 8 bits
		iTD2_HS,						//	TV Decoder2 H_SYNC
		iTD2_VS,						//	TV Decoder2 V_SYNC
		oTD2_RESET_N,					//	TV Decoder2 Reset
		////////////////////	GPIO	////////////////////////////
		GPIO_0,							//	GPIO Connection 0 I/O
		GPIO_CLKIN_N0,     				//	GPIO Connection 0 Clock Input 0
		GPIO_CLKIN_P0,          		//	GPIO Connection 0 Clock Input 1
		GPIO_CLKOUT_N0,     			//	GPIO Connection 0 Clock Output 0
		GPIO_CLKOUT_P0,                 //	GPIO Connection 0 Clock Output 1
		GPIO_1,							//	GPIO Connection 1 I/O
		GPIO_CLKIN_N1,                  //	GPIO Connection 1 Clock Input 0
		GPIO_CLKIN_P1,                  //	GPIO Connection 1 Clock Input 1
		GPIO_CLKOUT_N1,                 //	GPIO Connection 1 Clock Output 0
		GPIO_CLKOUT_P1                  //	GPIO Connection 1 Clock Output 1
	   
	);

//===========================================================================
// PARAMETER declarations
//===========================================================================


//===========================================================================
// PORT declarations
//===========================================================================
////////////////////////	Clock Input	 	////////////////////////
input			iCLK_28;				//  28.63636 MHz
input			iCLK_50;				//	50 MHz
input			iCLK_50_2;				//	50 MHz
input           iCLK_50_3;				//	50 MHz
input           iCLK_50_4;				//	50 MHz
input           iEXT_CLOCK;				//	External Clock
////////////////////////	Push Button		////////////////////////
input	[3:0]	iKEY;					//	Pushbutton[3:0]
////////////////////////	DPDT Switch		////////////////////////
input	[17:0]	iSW;					//	Toggle Switch[17:0]
////////////////////////	7-SEG Dispaly	////////////////////////
output	[6:0]	oHEX0_D;				//	Seven Segment Digit 0
output			oHEX0_DP;				//  Seven Segment Digit 0 decimal point
output	[6:0]	oHEX1_D;				//	Seven Segment Digit 1
output			oHEX1_DP;				//  Seven Segment Digit 1 decimal point
output	[6:0]	oHEX2_D;				//	Seven Segment Digit 2
output			oHEX2_DP;				//  Seven Segment Digit 2 decimal point
output	[6:0]	oHEX3_D;				//	Seven Segment Digit 3
output			oHEX3_DP;				//  Seven Segment Digit 3 decimal point
output	[6:0]	oHEX4_D;				//	Seven Segment Digit 4
output			oHEX4_DP;				//  Seven Segment Digit 4 decimal point
output	[6:0]	oHEX5_D;				//	Seven Segment Digit 5
output			oHEX5_DP;				//  Seven Segment Digit 5 decimal point
output	[6:0]	oHEX6_D;				//	Seven Segment Digit 6
output			oHEX6_DP;				//  Seven Segment Digit 6 decimal point
output	[6:0]	oHEX7_D;				//	Seven Segment Digit 7
output			oHEX7_DP;				//  Seven Segment Digit 7 decimal point
////////////////////////////	LED		////////////////////////////
output	[8:0]	oLEDG;					//	LED Green[8:0]
output	[17:0]	oLEDR;					//	LED Red[17:0]
////////////////////////////	UART	////////////////////////////
output			oUART_TXD;				//	UART Transmitter
input			iUART_RXD;				//	UART Receiver
output			oUART_CTS;          	//	UART Clear To Send
input			iUART_RTS;          	//	UART Requst To Send
////////////////////////////	IRDA	////////////////////////////
output			oIRDA_TXD;				//	IRDA Transmitter
input			iIRDA_RXD;				//	IRDA Receiver
///////////////////////		SDRAM Interface	////////////////////////
inout	[31:0]	DRAM_DQ;				//	SDRAM Data bus 32 Bits
output	[12:0]	oDRAM0_A;				//	SDRAM0 Address bus 13 Bits
output	[12:0]	oDRAM1_A;				//	SDRAM1 Address bus 13 Bits
output			oDRAM0_LDQM0;			//	SDRAM0 Low-byte Data Mask 
output			oDRAM1_LDQM0;			//	SDRAM1 Low-byte Data Mask 
output			oDRAM0_UDQM1;			//	SDRAM0 High-byte Data Mask
output			oDRAM1_UDQM1;			//	SDRAM1 High-byte Data Mask
output			oDRAM0_WE_N;			//	SDRAM0 Write Enable
output			oDRAM1_WE_N;			//	SDRAM1 Write Enable
output			oDRAM0_CAS_N;			//	SDRAM0 Column Address Strobe
output			oDRAM1_CAS_N;			//	SDRAM1 Column Address Strobe
output			oDRAM0_RAS_N;			//	SDRAM0 Row Address Strobe
output			oDRAM1_RAS_N;			//	SDRAM1 Row Address Strobe
output			oDRAM0_CS_N;			//	SDRAM0 Chip Select
output			oDRAM1_CS_N;			//	SDRAM1 Chip Select
output	[1:0]	oDRAM0_BA;				//	SDRAM0 Bank Address
output	[1:0]	oDRAM1_BA;		 		//	SDRAM1 Bank Address
output			oDRAM0_CLK;				//	SDRAM0 Clock
output			oDRAM1_CLK;				//	SDRAM1 Clock
output			oDRAM0_CKE;				//	SDRAM0 Clock Enable
output			oDRAM1_CKE;				//	SDRAM1 Clock Enable
////////////////////////	Flash Interface	////////////////////////
inout	[14:0]	FLASH_DQ;				//	FLASH Data bus 15 Bits (0 to 14)
inout			FLASH_DQ15_AM1;			//  FLASH Data bus Bit 15 or Address A-1
output	[21:0]	oFLASH_A;				//	FLASH Address bus 26 Bits
output			oFLASH_WE_N;			//	FLASH Write Enable
output			oFLASH_RST_N;			//	FLASH Reset
output			oFLASH_WP_N;			//	FLASH Write Protect /Programming Acceleration 
input			iFLASH_RY_N;			//	FLASH Ready/Busy output 
output			oFLASH_BYTE_N;			//	FLASH Byte/Word Mode Configuration
output			oFLASH_OE_N;			//	FLASH Output Enable
output			oFLASH_CE_N;			//	FLASH Chip Enable
////////////////////////	SRAM Interface	////////////////////////
inout	[31:0]	SRAM_DQ;				//	SRAM Data Bus 32 Bits
inout	[3:0]	SRAM_DPA; 				//  SRAM Parity Data Bus
output	[18:0]	oSRAM_A;				//	SRAM Address bus 21 Bits
output			oSRAM_ADSC_N;       	//	SRAM Controller Address Status 	
output			oSRAM_ADSP_N;           //	SRAM Processor Address Status
output			oSRAM_ADV_N;            //	SRAM Burst Address Advance
output	[3:0]	oSRAM_BE_N;             //	SRAM Byte Write Enable
output			oSRAM_CE1_N;        	//	SRAM Chip Enable
output			oSRAM_CE2;          	//	SRAM Chip Enable
output			oSRAM_CE3_N;        	//	SRAM Chip Enable
output			oSRAM_CLK;              //	SRAM Clock
output			oSRAM_GW_N;         	//  SRAM Global Write Enable
output			oSRAM_OE_N;         	//	SRAM Output Enable
output			oSRAM_WE_N;         	//	SRAM Write Enable
////////////////////	ISP1362 Interface	////////////////////////
inout	[15:0]	OTG_D;					//	ISP1362 Data bus 16 Bits
output	[1:0]	oOTG_A;					//	ISP1362 Address 2 Bits
output			oOTG_CS_N;				//	ISP1362 Chip Select
output			oOTG_OE_N;				//	ISP1362 Read
output			oOTG_WE_N;				//	ISP1362 Write
output			oOTG_RESET_N;			//	ISP1362 Reset
inout			OTG_FSPEED;				//	USB Full Speed,	0 = Enable, Z = Disable
inout			OTG_LSPEED;				//	USB Low Speed, 	0 = Enable, Z = Disable
input			iOTG_INT0;				//	ISP1362 Interrupt 0
input			iOTG_INT1;				//	ISP1362 Interrupt 1
input			iOTG_DREQ0;				//	ISP1362 DMA Request 0
input			iOTG_DREQ1;				//	ISP1362 DMA Request 1
output			oOTG_DACK0_N;			//	ISP1362 DMA Acknowledge 0
output			oOTG_DACK1_N;			//	ISP1362 DMA Acknowledge 1
////////////////////	LCD Module 16X2	////////////////////////////
inout	[7:0]	LCD_D;					//	LCD Data bus 8 bits
output			oLCD_ON;				//	LCD Power ON/OFF
output			oLCD_BLON;				//	LCD Back Light ON/OFF
output			oLCD_RW;				//	LCD Read/Write Select, 0 = Write, 1 = Read
output			oLCD_EN;				//	LCD Enable
output			oLCD_RS;				//	LCD Command/Data Select, 0 = Command, 1 = Data
////////////////////	SD Card Interface	////////////////////////
inout			SD_DAT;					//	SD Card Data
inout			SD_DAT3;				//	SD Card Data 3
inout			SD_CMD;					//	SD Card Command Signal
output			oSD_CLK;				//	SD Card Clock
////////////////////////	I2C		////////////////////////////////
inout			I2C_SDAT;				//	I2C Data
output			oI2C_SCLK;				//	I2C Clock
////////////////////////	PS2		////////////////////////////////
inout		 	PS2_KBDAT;				//	PS2 Keyboard Data
inout			PS2_KBCLK;				//	PS2 Keyboard Clock
inout		 	PS2_MSDAT;				//	PS2 Mouse Data
inout			PS2_MSCLK;				//	PS2 Mouse Clock
////////////////////////	VGA			////////////////////////////
output			oVGA_CLOCK;   			//	VGA Clock
output			oVGA_HS;				//	VGA H_SYNC
output			oVGA_VS;				//	VGA V_SYNC
output			oVGA_BLANK_N;			//	VGA BLANK
output			oVGA_SYNC_N;			//	VGA SYNC
output	[9:0]	oVGA_R;   				//	VGA Red[9:0]
output	[9:0]	oVGA_G;	 				//	VGA Green[9:0]
output	[9:0]	oVGA_B;   				//	VGA Blue[9:0]
////////////////	Ethernet Interface	////////////////////////////
inout	[15:0]	ENET_D;					//	DM9000A DATA bus 16Bits
output			oENET_CMD;				//	DM9000A Command/Data Select, 0 = Command, 1 = Data
output			oENET_CS_N;				//	DM9000A Chip Select
output			oENET_IOW_N;			//	DM9000A Write
output			oENET_IOR_N;			//	DM9000A Read
output			oENET_RESET_N;			//	DM9000A Reset
input			iENET_INT;				//	DM9000A Interrupt
output			oENET_CLK;				//	DM9000A Clock 25 MHz
////////////////////	Audio CODEC		////////////////////////////
inout			AUD_ADCLRCK;			//	Audio CODEC ADC LR Clock
input			iAUD_ADCDAT;			//	Audio CODEC ADC Data
inout			AUD_DACLRCK;			//	Audio CODEC DAC LR Clock
output			oAUD_DACDAT;			//	Audio CODEC DAC Data
inout			AUD_BCLK;				//	Audio CODEC Bit-Stream Clock
output			oAUD_XCK;				//	Audio CODEC Chip Clock
////////////////////	TV Devoder		////////////////////////////
input			iTD1_CLK27;				//	TV Decoder1 Line_Lock Output Clock 
input	[7:0]	iTD1_D;    				//	TV Decoder1 Data bus 8 bits
input			iTD1_HS;				//	TV Decoder1 H_SYNC
input			iTD1_VS;				//	TV Decoder1 V_SYNC
output			oTD1_RESET_N;			//	TV Decoder1 Reset
input			iTD2_CLK27;				//	TV Decoder2 Line_Lock Output Clock 		
input	[7:0]	iTD2_D;    				//	TV Decoder2 Data bus 8 bits
input			iTD2_HS;				//	TV Decoder2 H_SYNC
input			iTD2_VS;				//	TV Decoder2 V_SYNC
output			oTD2_RESET_N;			//	TV Decoder2 Reset

////////////////////////	GPIO	////////////////////////////////
inout	[31:0]	GPIO_0;					//	GPIO Connection 0 I/O
input			GPIO_CLKIN_N0;     		//	GPIO Connection 0 Clock Input 0
input			GPIO_CLKIN_P0;          //	GPIO Connection 0 Clock Input 1
inout			GPIO_CLKOUT_N0;     	//	GPIO Connection 0 Clock Output 0
inout			GPIO_CLKOUT_P0;         //	GPIO Connection 0 Clock Output 1
inout	[31:0]	GPIO_1;					//	GPIO Connection 1 I/O
input			GPIO_CLKIN_N1;          //	GPIO Connection 1 Clock Input 0
input			GPIO_CLKIN_P1;          //	GPIO Connection 1 Clock Input 1
inout			GPIO_CLKOUT_N1;         //	GPIO Connection 1 Clock Output 0
inout			GPIO_CLKOUT_P1;         //	GPIO Connection 1 Clock Output 1
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
wire	[9:0]	oVGA_R;   				//	VGA Red[9:0]
wire	[9:0]	oVGA_G;	 				//	VGA Green[9:0]
wire	[9:0]	oVGA_B;   				//	VGA Blue[9:0]
reg		[1:0]	rClk;
wire			sdram_ctrl_clk;

//=============================================================================
// Structural coding
//=============================================================================


assign	CCD_DATA[0]	=	GPIO_1[11];
assign	CCD_DATA[1]	=	GPIO_1[10];
assign	CCD_DATA[2]	=	GPIO_1[9];
assign	CCD_DATA[3]	=	GPIO_1[8];
assign	CCD_DATA[4]	=	GPIO_1[7];
assign	CCD_DATA[5]	=	GPIO_1[6];
assign	CCD_DATA[6]	=	GPIO_1[5];
assign	CCD_DATA[7]	=	GPIO_1[4];
assign	CCD_DATA[8]	=	GPIO_1[3];
assign	CCD_DATA[9]	=	GPIO_1[2];
assign	CCD_DATA[10]=	GPIO_1[1];
assign	CCD_DATA[11]=	GPIO_1[0];


assign	GPIO_CLKOUT_N1	=	CCD_MCLK;
assign	CCD_FVAL	=	GPIO_1[18];
assign	CCD_LVAL	=	GPIO_1[17];
assign	CCD_PIXCLK	=	GPIO_CLKIN_N1;

assign	GPIO_1[15]	=	1'b1;  // tRIGGER

assign	GPIO_1[14]	=	DLY_RST_1;

assign	oLEDR		=	iSW;

assign	oTD1_RESET_N = 1'b1;
assign	oVGA_CLOCK	=	~VGA_CTRL_CLK;

always@(posedge iCLK_50)	rClk	<=	rClk+1;


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
							.oVGA_R(oVGA_R),
							.oVGA_G(oVGA_G),
							.oVGA_B(oVGA_B),
							.oVGA_H_SYNC(oVGA_HS),
							.oVGA_V_SYNC(oVGA_VS),
							.oVGA_SYNC(oVGA_SYNC_N),
							.oVGA_BLANK(oVGA_BLANK_N),
							//	Control Signal
							.iCLK(VGA_CTRL_CLK),
							.iRST_N(DLY_RST_2),
							.iZOOM_MODE_SW(iSW[16])
						);

Reset_Delay			u2	(	.iCLK(iCLK_50),
							.iRST(iKEY[0]),
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
							.iSTART(CCD_CAPTURE_START),
							.iEND(CCD_CAPTURE_STOP),
							.iCLK(CCD_PIXCLK),
							.iRST(DLY_RST_2)
						);

RAW2RGB				u4	(	.iCLK(CCD_PIXCLK),
							.iRST_n(DLY_RST_1),
							.iData(mCCD_DATA),
							.iDval(mCCD_DVAL),
							.oRed(sCCD_R),
							.oGreen(sCCD_G),
							.oBlue(sCCD_B),
							.oDval(sCCD_DVAL),
							.iZoom(iSW[17:16]),
							.iX_Cont(X_Cont),
							.iY_Cont(Y_Cont)
						);

SEG7_LUT_8 			u5	(	.oSEG0(oHEX0_D),.oSEG1(oHEX1_D),
							.oSEG2(oHEX2_D),.oSEG3(oHEX3_D),
							.oSEG4(oHEX4_D),.oSEG5(oHEX5_D),
							.oSEG6(oHEX6_D),.oSEG7(oHEX7_D),
							.iDIG(Frame_Cont[31:0])
						);

vga_pll  			u6	(
							.areset(!DLY_RST_0),
							.inclk0(iTD1_CLK27),
							.c0(VGA_CTRL_CLK)
						);


sdram_pll 			u7	(
							.inclk0(iCLK_50),
							.c0(sdram_ctrl_clk),
							.c1(oDRAM0_CLK),
							.c2(oDRAM1_CLK)
						);

assign CCD_MCLK = rClk[0];

Sdram_Control_4Port	u8	(	//	HOST Side
						    .REF_CLK(iCLK_50),
						    .RESET_N(1'b1),
							.CLK(sdram_ctrl_clk),

							//	FIFO Write Side 1
`ifdef DUMMY_DATA
						    .WR1_DATA(16'h5678),
`else
						    .WR1_DATA({sCCD_G[11:7],	 sCCD_B[11:2]}),
`endif
							.WR1(sCCD_DVAL),
							.WR1_ADDR(0),
							.WR1_MAX_ADDR(1280*1024),
							.WR1_LENGTH(9'h100),
							.WR1_LOAD(!DLY_RST_0),
							.WR1_CLK(CCD_PIXCLK),

`ifndef DISABLE_VGA
							//	FIFO Read Side 1
						    .RD1_DATA(Read_DATA1),
				        	.RD1(Read),
				        	.RD1_ADDR(0),
							.RD1_MAX_ADDR(1280*1024),
							.RD1_LENGTH(9'h100),
				        	.RD1_LOAD(!DLY_RST_0),
							.RD1_CLK(VGA_CTRL_CLK),
							
							//	FIFO Read Side 2
`endif  //DISABLE_VGA
						    .RD2_DATA(PORT_READ_DATA_1),
				        	.RD2(PORT_READ),
				        	.RD2_ADDR(PORT_ADDR),
							.RD2_MAX_ADDR(PORT_MAX_ADDR),
							.RD2_LENGTH(PORT_LENGTH),
				        	.RD2_LOAD(PORT_LOAD),
							.RD2_CLK(PORT_CLK),

							//	SDRAM Side
						    .SA(oDRAM0_A[11:0]),
						    .BA(oDRAM0_BA),
        					.CS_N(oDRAM0_CS_N),
        					.CKE(oDRAM0_CKE),
        					.RAS_N(oDRAM0_RAS_N),
        					.CAS_N(oDRAM0_CAS_N),
        					.WE_N(oDRAM0_WE_N),
        					.DQ(DRAM_DQ[15:0]),
        					.DQM({oDRAM0_UDQM1,oDRAM0_LDQM0})
						);

Sdram_Control_4Port	u9	(	//	HOST Side
						    .REF_CLK(iCLK_50),
						    .RESET_N(1'b1),
							.CLK(sdram_ctrl_clk),
							//	FIFO Write Side 1
`ifdef DUMMY_DATA
						    .WR1_DATA(16'h1234), 
`else
						    .WR1_DATA({sCCD_G[6:2], sCCD_R[11:2]}),
`endif
							.WR1(sCCD_DVAL),
							.WR1_ADDR(0),
							.WR1_MAX_ADDR(1280*1024),
							.WR1_LENGTH(9'h100),
							.WR1_LOAD(!DLY_RST_0),
							.WR1_CLK(CCD_PIXCLK),

`ifndef DISABLE_VGA
							//	FIFO Read Side 1
						    .RD1_DATA(Read_DATA2),
				        	.RD1(Read),
				        	.RD1_ADDR(0),
							.RD1_MAX_ADDR(1280*1024),
							.RD1_LENGTH(9'h100),
				        	.RD1_LOAD(!DLY_RST_0),
							.RD1_CLK(VGA_CTRL_CLK),
`endif //DISABLE_VGA
							//	FIFO Read Side 2
						    .RD2_DATA(PORT_READ_DATA_2),
				        	.RD2(PORT_READ),
				        	.RD2_ADDR(PORT_ADDR),
							.RD2_MAX_ADDR(PORT_MAX_ADDR),
							.RD2_LENGTH(PORT_LENGTH),
				        	.RD2_LOAD(PORT_LOAD),
							.RD2_CLK(PORT_CLK),

							//	SDRAM Side
						    .SA(oDRAM1_A[11:0]),
						    .BA(oDRAM1_BA),
        					.CS_N(oDRAM1_CS_N),
        					.CKE(oDRAM1_CKE),
        					.RAS_N(oDRAM1_RAS_N),
        					.CAS_N(oDRAM1_CAS_N),
        					.WE_N(oDRAM1_WE_N),
        					.DQ(DRAM_DQ[31:16]),
        					.DQM({oDRAM1_UDQM1,oDRAM1_LDQM0})
						);

assign	oUART_TXD = iUART_RXD;

I2C_CCD_Config 		u10	(	//	Host Side
							.iCLK(iCLK_50),
							.iRST_N(DLY_RST_2),
							.iZOOM_MODE_SW(iSW[16]),
							.iEXPOSURE_ADJ(iKEY[1]),
							.iEXPOSURE_DEC_p(iSW[0]),
							//	I2C Side
							.I2C_SCLK(GPIO_1[20]),
							.I2C_SDAT(GPIO_1[19])
						);




///////////////////////////////////////////////////////////////////////////////
//////////// SOPC /////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
wire	SYSTEM_RESET_N;
wire [1:0] SRAM_DUMMY_ADDR;  				// used to ignore the A0/A1

assign	oSRAM_ADSP_N = 1'b1;				//	SRAM Processor Address Status
assign	oSRAM_ADV_N = 1'b1;					//	SRAM Burst Address Advance
assign	oSRAM_CE2 = ~oSRAM_CE1_N;			//	SRAM Chip Enable
assign	oSRAM_CE3_N = oSRAM_CE1_N;			//	SRAM Chip Enable
assign	oSRAM_GW_N = 1'b1;         			//  SRAM Global Write Enable

//==========	16*2 LCD Module
assign	oLCD_ON		=	1'b1;				//	LCD ON
assign	oLCD_BLON	=	1'b1;				//	LCD Back Light	

SOPC_Reset_Delay	delay1	(.iRST(1),.iCLK(iCLK_50),.oRESET(SYSTEM_RESET_N));

DE2_70_SOPC sopc_instance (
                      // 1) global signals:
                       .clk(iCLK_50_4),
                       .reset_n(SYSTEM_RESET_N),
                       .pll_c0_system(),
                       .pll_c1_memory(oSRAM_CLK),

                     // the_pio_led
                      .out_port_from_the_pio_led({oLEDR,oLEDG[7:0]}),

                      // the_lcd
                       .LCD_E_from_the_lcd(oLCD_EN),
                       .LCD_RS_from_the_lcd(oLCD_RS),
                       .LCD_RW_from_the_lcd(oLCD_RW),
                       .LCD_data_to_and_from_the_lcd(LCD_D),

                     // the_camera
                      .avs_s1_export_address_from_the_camera(camera_addr),
                      .avs_s1_export_clk_from_the_camera(camera_clk),
                      .avs_s1_export_read_from_the_camera(camera_read),
                      .avs_s1_export_readdata_to_the_camera(camera_readdata),
                      .avs_s1_export_reset_from_the_camera(camera_reset),
                      .avs_s1_export_write_from_the_camera(camera_write),
                      .avs_s1_export_writedata_from_the_camera(camera_writedata),

                      // the_uart
                       .cts_n_to_the_uart(oUART_CTS),
                       .rts_n_from_the_uart(iUART_RTS),

                       // the_tristate_bridge_avalon_slave
                       .address_to_the_ssram({oSRAM_A[17:0],SRAM_DUMMY_ADDR}),
                       .adsc_n_to_the_ssram(oSRAM_ADSC_N),
                       .bw_n_to_the_ssram(oSRAM_BE_N),
                       .bwe_n_to_the_ssram(oSRAM_WE_N),
                       .chipenable1_n_to_the_ssram(oSRAM_CE1_N),
                       .data_to_and_from_the_ssram(SRAM_DQ),
                       .outputenable_n_to_the_ssram(oSRAM_OE_N)
                    );

// sopc ip export pin
wire		[1:0]		camera_addr;
wire					camera_clk;
wire					camera_read;
wire		[31:0]		camera_readdata;
wire					camera_reset;
wire					camera_write;
wire		[31:0]		camera_writedata;
// port define
`define DATA_PORT		0
`define CMD_PORT		1
`define STATUS_PORT		2
`define TIGGLE_CNT_END	5

// ccd control
wire					CCD_CAPTURE_START;
wire					CCD_CAPTURE_STOP;
reg		[3:0]			tiggle_cnt;
reg		[3:0]			nios_tiggle_cnt;
reg						start_triggle;
reg						stop_triggle;
assign CCD_CAPTURE_START = !iKEY[3] | start_triggle;
assign CCD_CAPTURE_STOP = !iKEY[2] | stop_triggle;

//========== control start/stop triggle ==========
always @ (posedge CCD_PIXCLK)
begin
	if (DLY_RST_1 || (!start_triggle && !stop_triggle))
		tiggle_cnt = 0;
	else if (tiggle_cnt < `TIGGLE_CNT_END)
		tiggle_cnt = tiggle_cnt + 1;
end

//========== interface to nios2 ==========
always @ (negedge camera_clk)
begin
	if (camera_reset)
	begin
		start_triggle = 0;
		stop_triggle = 0;
		nios_tiggle_cnt = 0;
	end
	else 
	begin
		if (nios_tiggle_cnt < `TIGGLE_CNT_END)
			nios_tiggle_cnt = nios_tiggle_cnt + 1;
			
		if (camera_write && (camera_addr == `CMD_PORT))
		begin
			start_triggle = camera_writedata[0];
			stop_triggle = camera_writedata[1];
			nios_tiggle_cnt = 0;
		end
		else if ((tiggle_cnt == `TIGGLE_CNT_END) || (nios_tiggle_cnt == `TIGGLE_CNT_END) )
		begin
			start_triggle = 0;
			stop_triggle = 0;
		end
	end
end

assign	camera_readdata = (camera_addr == `DATA_PORT)?{PORT_READ_DATA_2,PORT_READ_DATA_1}:32'hzzzzzzzz;


//========== interface to SDRAM read port ============
wire		[15:0]			PORT_READ_DATA_1;
wire		[15:0]			PORT_READ_DATA_2;
wire						PORT_READ;
wire		[22:0]			PORT_ADDR;
wire		[22:0]			PORT_MAX_ADDR;
wire		[8:0]			PORT_LENGTH;
wire						PORT_LOAD;
wire						PORT_CLK;

assign	PORT_CLK = ~camera_clk;
assign	PORT_ADDR = 0;
assign	PORT_MAX_ADDR = 1280*1024;
assign	PORT_LENGTH = 9'h100;
assign	PORT_LOAD = !DLY_RST_0;
assign	PORT_READ = (camera_read && (camera_addr == `DATA_PORT))?1:0;


endmodule

