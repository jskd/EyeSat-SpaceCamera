-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Wed Jun 08 17:55:07 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY cmv_controller IS 
	PORT
	(
		SPI_MISO :  IN  STD_LOGIC;
		NIOS_RESET_N :  IN  STD_LOGIC;
		LVDS_PLL_ARESET :  IN  STD_LOGIC;
		LVDS_OUTCLK :  IN  STD_LOGIC;
		LVDS_OUTCTR :  IN  STD_LOGIC;
		NIOS_CLK_50 :  IN  STD_LOGIC;
		NIOS_PLL_ARESET :  IN  STD_LOGIC;
		UART_RXD :  IN  STD_LOGIC;
		LVDS_OUTCH :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		SDRAM_DQ :  INOUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		SDRAM_CAS_N :  OUT  STD_LOGIC;
		SDRAM_CKE :  OUT  STD_LOGIC;
		SDRAM_CS_N :  OUT  STD_LOGIC;
		SDRAM_RAS_N :  OUT  STD_LOGIC;
		SDRAM_WE_N :  OUT  STD_LOGIC;
		SPI_MOSI :  OUT  STD_LOGIC;
		SPI_SCLK :  OUT  STD_LOGIC;
		SPI_SS_N :  OUT  STD_LOGIC;
		SDRAM_CLK :  OUT  STD_LOGIC;
		UART_TXD :  OUT  STD_LOGIC;
		CMV_CLK_IN :  OUT  STD_LOGIC;
		CMV_RES_N :  OUT  STD_LOGIC;
		SDRAM_ADDR :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
		SDRAM_BA :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SDRAM_DQM :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END cmv_controller;

ARCHITECTURE bdf_type OF cmv_controller IS 

COMPONENT altpll0
	PORT(inclk0 : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC;
		 c2 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lvds_decoder
	PORT(PLL_ARESET : IN STD_LOGIC;
		 LVDS_OUTCLK : IN STD_LOGIC;
		 LVDS_OUTCTR : IN STD_LOGIC;
		 LVDS_OUTCH : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 DATA_OUTCLK : OUT STD_LOGIC;
		 DATA_OUTCH01 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH02 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH03 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH04 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH05 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH06 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH07 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH08 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH09 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH10 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH11 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH12 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH13 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH14 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH15 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCH16 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 DATA_OUTCTR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT nios
	PORT(clk_clk : IN STD_LOGIC;
		 reset_reset_n : IN STD_LOGIC;
		 data_clk_export : IN STD_LOGIC;
		 uart_rxd : IN STD_LOGIC;
		 spi_MISO : IN STD_LOGIC;
		 data_ch1_export : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 data_ch9_export : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 data_ctr_export : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 sdram_controller_dq : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 uart_txd : OUT STD_LOGIC;
		 sdram_controller_cas_n : OUT STD_LOGIC;
		 sdram_controller_cke : OUT STD_LOGIC;
		 sdram_controller_cs_n : OUT STD_LOGIC;
		 sdram_controller_ras_n : OUT STD_LOGIC;
		 sdram_controller_we_n : OUT STD_LOGIC;
		 spi_MOSI : OUT STD_LOGIC;
		 spi_SCLK : OUT STD_LOGIC;
		 spi_SS_n : OUT STD_LOGIC;
		 sdram_controller_addr : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		 sdram_controller_ba : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 sdram_controller_dqm : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	nios_clk :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(9 DOWNTO 0);


BEGIN 
CMV_RES_N <= '1';



b2v_inst_altpll : altpll0
PORT MAP(inclk0 => NIOS_CLK_50,
		 areset => NIOS_PLL_ARESET,
		 c0 => nios_clk,
		 c1 => SDRAM_CLK,
		 c2 => CMV_CLK_IN);


b2v_inst_lvds_decoder : lvds_decoder
PORT MAP(PLL_ARESET => LVDS_PLL_ARESET,
		 LVDS_OUTCLK => LVDS_OUTCLK,
		 LVDS_OUTCTR => LVDS_OUTCTR,
		 LVDS_OUTCH => LVDS_OUTCH,
		 DATA_OUTCLK => SYNTHESIZED_WIRE_0,
		 DATA_OUTCH01 => SYNTHESIZED_WIRE_1,
		 DATA_OUTCH09 => SYNTHESIZED_WIRE_2,
		 DATA_OUTCTR => SYNTHESIZED_WIRE_3);


b2v_inst_nios : nios
PORT MAP(clk_clk => nios_clk,
		 reset_reset_n => NIOS_RESET_N,
		 data_clk_export => SYNTHESIZED_WIRE_0,
		 uart_rxd => UART_RXD,
		 spi_MISO => SPI_MISO,
		 data_ch1_export => SYNTHESIZED_WIRE_1,
		 data_ch9_export => SYNTHESIZED_WIRE_2,
		 data_ctr_export => SYNTHESIZED_WIRE_3,
		 sdram_controller_dq => SDRAM_DQ,
		 uart_txd => UART_TXD,
		 sdram_controller_cas_n => SDRAM_CAS_N,
		 sdram_controller_cke => SDRAM_CKE,
		 sdram_controller_cs_n => SDRAM_CS_N,
		 sdram_controller_ras_n => SDRAM_RAS_N,
		 sdram_controller_we_n => SDRAM_WE_N,
		 spi_MOSI => SPI_MOSI,
		 spi_SCLK => SPI_SCLK,
		 spi_SS_n => SPI_SS_N,
		 sdram_controller_addr => SDRAM_ADDR,
		 sdram_controller_ba => SDRAM_BA,
		 sdram_controller_dqm => SDRAM_DQM);



END bdf_type;