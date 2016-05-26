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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/06/2016 23:50:34"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cmv_controller IS
    PORT (
	clk_out : OUT std_logic;
	CMV_OUT_CLK : IN std_logic;
	CMV_OUT_CTR : IN std_logic;
	CMV_OUT_1 : IN std_logic;
	CMV_OUT_9 : IN std_logic;
	CMV_SYS_RES_N : OUT std_logic;
	CMV_CLK_IN : OUT std_logic;
	CMV_FRAME_REQ : OUT std_logic;
	CMV_SPI_EN : OUT std_logic;
	CMV_SPI_CLK : OUT std_logic;
	CMV_SPI_IN : OUT std_logic;
	UART_TX : OUT std_logic;
	rx_out : OUT std_logic_vector(29 DOWNTO 0);
	CMV_SPI_OUT : IN std_logic;
	UART_RX : IN std_logic
	);
END cmv_controller;

-- Design Ports Information
-- CMV_OUT_CTR	=>  Location: PIN_B2,	 I/O Standard: LVDS,	 Current Strength: Default
-- CMV_OUT_1	=>  Location: PIN_C2,	 I/O Standard: LVDS,	 Current Strength: Default
-- CMV_OUT_9	=>  Location: PIN_G5,	 I/O Standard: LVDS,	 Current Strength: Default
-- CMV_OUT_CTR(n)	=>  Location: PIN_B3,	 I/O Standard: LVDS,	 Current Strength: Default
-- CMV_OUT_1(n)	=>  Location: PIN_C3,	 I/O Standard: LVDS,	 Current Strength: Default
-- CMV_OUT_9(n)	=>  Location: PIN_G6,	 I/O Standard: LVDS,	 Current Strength: Default
-- clk_out	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMV_SYS_RES_N	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMV_CLK_IN	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMV_FRAME_REQ	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMV_SPI_EN	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMV_SPI_CLK	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMV_SPI_IN	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TX	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[29]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[28]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[27]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[26]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[25]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[24]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[23]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[22]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[21]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[20]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[19]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[18]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[17]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[16]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[15]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[14]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[13]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[12]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[11]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[10]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[9]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[8]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[7]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[6]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[5]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[3]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[2]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rx_out[0]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMV_SPI_OUT	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RX	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CMV_OUT_CLK	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cmv_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_CMV_OUT_CLK : std_logic;
SIGNAL ww_CMV_OUT_CTR : std_logic;
SIGNAL ww_CMV_OUT_1 : std_logic;
SIGNAL ww_CMV_OUT_9 : std_logic;
SIGNAL ww_CMV_SYS_RES_N : std_logic;
SIGNAL ww_CMV_CLK_IN : std_logic;
SIGNAL ww_CMV_FRAME_REQ : std_logic;
SIGNAL ww_CMV_SPI_EN : std_logic;
SIGNAL ww_CMV_SPI_CLK : std_logic;
SIGNAL ww_CMV_SPI_IN : std_logic;
SIGNAL ww_UART_TX : std_logic;
SIGNAL ww_rx_out : std_logic_vector(29 DOWNTO 0);
SIGNAL ww_CMV_SPI_OUT : std_logic;
SIGNAL ww_UART_RX : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_e_clk_out_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CMV_OUT_CLK~combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_e_clk_out_outclk\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|fast_clock\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[29]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[28]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[27]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[26]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[25]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[24]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[21]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[20]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[19]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[18]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[17]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[16]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[15]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[14]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[12]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[11]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_differentialin\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\ : std_logic;

BEGIN

clk_out <= ww_clk_out;
ww_CMV_OUT_CLK <= CMV_OUT_CLK;
ww_CMV_OUT_CTR <= CMV_OUT_CTR;
ww_CMV_OUT_1 <= CMV_OUT_1;
ww_CMV_OUT_9 <= CMV_OUT_9;
CMV_SYS_RES_N <= ww_CMV_SYS_RES_N;
CMV_CLK_IN <= ww_CMV_CLK_IN;
CMV_FRAME_REQ <= ww_CMV_FRAME_REQ;
CMV_SPI_EN <= ww_CMV_SPI_EN;
CMV_SPI_CLK <= ww_CMV_SPI_CLK;
CMV_SPI_IN <= ww_CMV_SPI_IN;
UART_TX <= ww_UART_TX;
rx_out <= ww_rx_out;
ww_CMV_SPI_OUT <= CMV_SPI_OUT;
ww_UART_RX <= UART_RX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_INCLK_bus\ <= (gnd & \CMV_OUT_CLK~combout\);

\inst1|ALTLVDS_RX_component|auto_generated|fast_clock\ <= \inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_CLK_bus\(0);
\inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk\(1) <= \inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_CLK_bus\(1);
\inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk\(2) <= \inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_CLK_bus\(2);

\inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|ALTLVDS_RX_component|auto_generated|fast_clock\);

\inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk\(1));

\inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_e_clk_out_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk\(1));
\inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\ <= NOT \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\;

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CMV_OUT_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CMV_OUT_CLK,
	combout => \CMV_OUT_CLK~combout\);

-- Location: PLL_1
\inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_high => 15,
	c2_initial => 1,
	c2_low => 15,
	c2_mode => "even",
	c2_ph => 0,
	charge_pump_current => 53,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c2",
	clk1_divide_by => 5,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 10000,
	inclk1_input_frequency => 10000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 1.000000",
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "source_synchronous",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4196,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_INCLK_bus\,
	clk => \inst1|ALTLVDS_RX_component|auto_generated|lvds_rx_pll_CLK_bus\);

-- Location: CLKCTRL_X0_Y1_N1
\inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_e_clk_out\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_e_clk_out_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_e_clk_out_outclk\);

-- Location: CLKCTRL_G2
\inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\);

-- Location: PIN_B2,	 I/O Standard: LVDS,	 Current Strength: Default
\inst1|ALTLVDS_RX_component|auto_generated|ddio_in_posa_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CMV_OUT_CTR,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(2),
	differentialout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_differentialin\(2));

-- Location: PIN_B3,	 I/O Standard: LVDS,	 Current Strength: Default
\inst1|ALTLVDS_RX_component|auto_generated|ddio_in_nega_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	use_differential_input => "true")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\,
	differentialin => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_differentialin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(2));

-- Location: LCCOMB_X2_Y35_N12
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[2]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[2]~feeder_combout\);

-- Location: LCFF_X2_Y35_N13
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(2));

-- Location: LCCOMB_X2_Y35_N2
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[2]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[2]~feeder_combout\);

-- Location: LCFF_X2_Y35_N3
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(2));

-- Location: LCCOMB_X2_Y35_N16
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[2]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[2]~feeder_combout\);

-- Location: LCFF_X2_Y35_N17
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(2));

-- Location: LCCOMB_X3_Y35_N20
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[2]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[2]~feeder_combout\);

-- Location: LCFF_X3_Y35_N21
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\(2));

-- Location: LCFF_X3_Y35_N11
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(0));

-- Location: LCCOMB_X3_Y35_N24
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[1]~feeder_combout\);

-- Location: LCFF_X3_Y35_N25
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(1));

-- Location: LCFF_X3_Y35_N7
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(2));

-- Location: LCCOMB_X3_Y35_N28
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[3]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[3]~feeder_combout\);

-- Location: LCFF_X3_Y35_N29
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(3));

-- Location: LCCOMB_X3_Y35_N18
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[4]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[4]~feeder_combout\);

-- Location: LCFF_X3_Y35_N19
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(4));

-- Location: LCCOMB_X3_Y35_N0
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[29]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(4),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[29]~feeder_combout\);

-- Location: LCFF_X3_Y35_N1
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(29));

-- Location: LCFF_X6_Y35_N25
\inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg\(2));

-- Location: LCFF_X6_Y35_N31
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(2));

-- Location: LCCOMB_X6_Y35_N12
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[2]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[2]~feeder_combout\);

-- Location: LCFF_X6_Y35_N13
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(2));

-- Location: LCCOMB_X6_Y35_N10
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[0]~feeder_combout\);

-- Location: LCFF_X6_Y35_N11
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(0));

-- Location: LCCOMB_X6_Y35_N16
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[1]~feeder_combout\);

-- Location: LCFF_X6_Y35_N17
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(1));

-- Location: LCFF_X6_Y35_N7
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(2));

-- Location: LCCOMB_X6_Y35_N28
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[3]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[3]~feeder_combout\);

-- Location: LCFF_X6_Y35_N29
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(3));

-- Location: LCCOMB_X6_Y35_N18
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[4]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[4]~feeder_combout\);

-- Location: LCFF_X6_Y35_N19
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(4));

-- Location: LCCOMB_X6_Y35_N0
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[28]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(4),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[28]~feeder_combout\);

-- Location: LCFF_X6_Y35_N1
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(28));

-- Location: LCCOMB_X3_Y35_N2
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[27]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[27]~feeder_combout\);

-- Location: LCFF_X3_Y35_N3
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(27));

-- Location: LCCOMB_X6_Y35_N2
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[26]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[26]~feeder_combout\);

-- Location: LCFF_X6_Y35_N3
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(26));

-- Location: LCCOMB_X3_Y35_N12
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[25]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[25]~feeder_combout\);

-- Location: LCFF_X3_Y35_N13
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(25));

-- Location: LCCOMB_X6_Y35_N20
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[24]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[24]~feeder_combout\);

-- Location: LCFF_X6_Y35_N21
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(24));

-- Location: LCFF_X3_Y35_N23
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(23));

-- Location: LCFF_X6_Y35_N23
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(22));

-- Location: LCCOMB_X3_Y35_N16
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[21]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg5a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[21]~feeder_combout\);

-- Location: LCFF_X3_Y35_N17
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(21));

-- Location: LCCOMB_X6_Y35_N8
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[20]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg6a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[20]~feeder_combout\);

-- Location: LCFF_X6_Y35_N9
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(20));

-- Location: PIN_C2,	 I/O Standard: LVDS,	 Current Strength: Default
\inst1|ALTLVDS_RX_component|auto_generated|ddio_in_posa_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CMV_OUT_1,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(1),
	differentialout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_differentialin\(1));

-- Location: PIN_C3,	 I/O Standard: LVDS,	 Current Strength: Default
\inst1|ALTLVDS_RX_component|auto_generated|ddio_in_nega_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	use_differential_input => "true")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\,
	differentialin => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_differentialin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(1));

-- Location: LCCOMB_X14_Y33_N6
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[1]~feeder_combout\);

-- Location: LCFF_X14_Y33_N7
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(1));

-- Location: LCCOMB_X14_Y33_N12
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[1]~feeder_combout\);

-- Location: LCFF_X14_Y33_N13
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(1));

-- Location: LCCOMB_X14_Y33_N2
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[1]~feeder_combout\);

-- Location: LCFF_X14_Y33_N3
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(1));

-- Location: LCCOMB_X14_Y33_N24
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[1]~feeder_combout\);

-- Location: LCFF_X14_Y33_N25
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\(1));

-- Location: LCCOMB_X41_Y35_N26
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[0]~feeder_combout\);

-- Location: LCFF_X41_Y35_N27
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(0));

-- Location: LCCOMB_X41_Y35_N24
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[1]~feeder_combout\);

-- Location: LCFF_X41_Y35_N25
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(1));

-- Location: LCFF_X41_Y35_N7
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(2));

-- Location: LCCOMB_X41_Y35_N28
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[3]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[3]~feeder_combout\);

-- Location: LCFF_X41_Y35_N29
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(3));

-- Location: LCCOMB_X41_Y35_N2
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[4]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[4]~feeder_combout\);

-- Location: LCFF_X41_Y35_N3
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(4));

-- Location: LCCOMB_X41_Y35_N16
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[19]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(4),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[19]~feeder_combout\);

-- Location: LCFF_X41_Y35_N17
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(19));

-- Location: LCCOMB_X1_Y35_N24
\inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[1]~feeder_combout\);

-- Location: LCFF_X1_Y35_N25
\inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg\(1));

-- Location: LCFF_X1_Y35_N31
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(1));

-- Location: LCCOMB_X1_Y35_N12
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[1]~feeder_combout\);

-- Location: LCFF_X1_Y35_N13
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(1));

-- Location: LCCOMB_X1_Y35_N2
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[0]~feeder_combout\);

-- Location: LCFF_X1_Y35_N3
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(0));

-- Location: LCCOMB_X1_Y35_N0
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[1]~feeder_combout\);

-- Location: LCFF_X1_Y35_N1
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(1));

-- Location: LCCOMB_X1_Y35_N22
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[2]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[2]~feeder_combout\);

-- Location: LCFF_X1_Y35_N23
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(2));

-- Location: LCCOMB_X1_Y35_N28
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[3]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[3]~feeder_combout\);

-- Location: LCFF_X1_Y35_N29
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(3));

-- Location: LCCOMB_X1_Y35_N18
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[4]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[4]~feeder_combout\);

-- Location: LCFF_X1_Y35_N19
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(4));

-- Location: LCCOMB_X1_Y35_N8
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[18]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(4),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[18]~feeder_combout\);

-- Location: LCFF_X1_Y35_N9
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(18));

-- Location: LCCOMB_X41_Y35_N10
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[17]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[17]~feeder_combout\);

-- Location: LCFF_X41_Y35_N11
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(17));

-- Location: LCCOMB_X1_Y35_N10
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[16]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[16]~feeder_combout\);

-- Location: LCFF_X1_Y35_N11
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(16));

-- Location: LCCOMB_X41_Y35_N12
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[15]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[15]~feeder_combout\);

-- Location: LCFF_X41_Y35_N13
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(15));

-- Location: LCCOMB_X1_Y35_N20
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[14]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[14]~feeder_combout\);

-- Location: LCFF_X1_Y35_N21
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(14));

-- Location: LCFF_X41_Y35_N23
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(13));

-- Location: LCCOMB_X1_Y35_N6
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[12]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(1),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[12]~feeder_combout\);

-- Location: LCFF_X1_Y35_N7
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(12));

-- Location: LCCOMB_X41_Y35_N0
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[11]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg3a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[11]~feeder_combout\);

-- Location: LCFF_X41_Y35_N1
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(11));

-- Location: LCCOMB_X1_Y35_N16
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[10]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg4a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[10]~feeder_combout\);

-- Location: LCFF_X1_Y35_N17
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(10));

-- Location: PIN_G5,	 I/O Standard: LVDS,	 Current Strength: Default
\inst1|ALTLVDS_RX_component|auto_generated|ddio_in_posa_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CMV_OUT_9,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(0),
	differentialout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_differentialin\(0));

-- Location: PIN_G6,	 I/O Standard: LVDS,	 Current Strength: Default
\inst1|ALTLVDS_RX_component|auto_generated|ddio_in_nega_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	use_differential_input => "true")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\,
	differentialin => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_differentialin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(0));

-- Location: LCCOMB_X1_Y33_N6
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_nega_regout\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[0]~feeder_combout\);

-- Location: LCFF_X1_Y33_N7
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|ALT_INV_fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(0));

-- Location: LCCOMB_X1_Y33_N12
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_latch\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[0]~feeder_combout\);

-- Location: LCFF_X1_Y33_N13
\inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(0));

-- Location: LCCOMB_X1_Y33_N2
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|dataout_l_reg\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[0]~feeder_combout\);

-- Location: LCFF_X1_Y33_N3
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(0));

-- Location: LCCOMB_X1_Y33_N24
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe7a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[0]~feeder_combout\);

-- Location: LCFF_X1_Y33_N25
\inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\(0));

-- Location: LCFF_X53_Y35_N3
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_dffpipe|dffe8a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(0));

-- Location: LCCOMB_X53_Y35_N8
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[1]~feeder_combout\);

-- Location: LCFF_X53_Y35_N9
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(1));

-- Location: LCFF_X53_Y35_N23
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(2));

-- Location: LCCOMB_X53_Y35_N12
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[3]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[3]~feeder_combout\);

-- Location: LCFF_X53_Y35_N13
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(3));

-- Location: LCCOMB_X53_Y35_N10
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[4]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[4]~feeder_combout\);

-- Location: LCFF_X53_Y35_N11
\inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(4));

-- Location: LCCOMB_X53_Y35_N0
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[9]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(4),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[9]~feeder_combout\);

-- Location: LCFF_X53_Y35_N1
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(9));

-- Location: LCCOMB_X9_Y35_N8
\inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|wire_ddio_in_posa_regout\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[0]~feeder_combout\);

-- Location: LCFF_X9_Y35_N9
\inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg\(0));

-- Location: LCFF_X9_Y35_N31
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|dataout_h_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(0));

-- Location: LCCOMB_X9_Y35_N12
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe7a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[0]~feeder_combout\);

-- Location: LCFF_X9_Y35_N13
\inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(0));

-- Location: LCCOMB_X9_Y35_N2
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_dffpipe|dffe8a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[0]~feeder_combout\);

-- Location: LCFF_X9_Y35_N3
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(0));

-- Location: LCCOMB_X9_Y35_N16
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[1]~feeder_combout\);

-- Location: LCFF_X9_Y35_N17
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(1));

-- Location: LCFF_X9_Y35_N23
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(2));

-- Location: LCCOMB_X9_Y35_N20
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[3]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[3]~feeder_combout\);

-- Location: LCFF_X9_Y35_N21
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(3));

-- Location: LCFF_X9_Y35_N19
\inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|fast_clock~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(4));

-- Location: LCCOMB_X9_Y35_N0
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[8]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(4),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[8]~feeder_combout\);

-- Location: LCFF_X9_Y35_N1
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(8));

-- Location: LCCOMB_X53_Y35_N18
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[7]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(3),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[7]~feeder_combout\);

-- Location: LCFF_X53_Y35_N19
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(7));

-- Location: LCFF_X9_Y35_N11
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(6));

-- Location: LCCOMB_X53_Y35_N28
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[5]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[5]~feeder_combout\);

-- Location: LCFF_X53_Y35_N29
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(5));

-- Location: LCCOMB_X9_Y35_N28
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[4]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(2),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[4]~feeder_combout\);

-- Location: LCFF_X9_Y35_N29
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(4));

-- Location: LCFF_X53_Y35_N7
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(3));

-- Location: LCFF_X9_Y35_N7
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	sdata => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(2));

-- Location: LCCOMB_X53_Y35_N24
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[1]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|l_shiftreg1a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[1]~feeder_combout\);

-- Location: LCFF_X53_Y35_N25
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(1));

-- Location: LCCOMB_X9_Y35_N24
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[0]~feeder_combout\ = \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALTLVDS_RX_component|auto_generated|h_shiftreg2a\(0),
	combout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[0]~feeder_combout\);

-- Location: LCFF_X9_Y35_N25
\inst1|ALTLVDS_RX_component|auto_generated|rx_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_outclk\,
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(0));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|wire_lvds_rx_pll_clk[1]~clkctrl_e_clk_out_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_out);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMV_SYS_RES_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMV_SYS_RES_N);

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMV_CLK_IN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMV_CLK_IN);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMV_FRAME_REQ~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMV_FRAME_REQ);

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMV_SPI_EN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMV_SPI_EN);

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMV_SPI_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMV_SPI_CLK);

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMV_SPI_IN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMV_SPI_IN);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TX~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TX);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(29));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(28));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(27));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(26));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(25));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(24));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(23));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(22));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(21));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(20));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(19));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(18));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(17));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(16));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(15));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(14));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(13));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(12));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(11));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(10));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(9));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(8));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(7));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(6));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(5));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(4));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(2));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(1));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rx_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALTLVDS_RX_component|auto_generated|rx_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rx_out(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CMV_SPI_OUT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CMV_SPI_OUT);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RX~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UART_RX);
END structure;


