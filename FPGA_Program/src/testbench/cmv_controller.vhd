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
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu Feb 04 19:44:21 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY cmv_controller IS 
	PORT
	(
		LVDS_CLK :  IN  STD_LOGIC;
		LVDS_CH1 :  IN  STD_LOGIC;
		LVDS_CH9 :  IN  STD_LOGIC;
		LVDS_CLK_RX :  IN  STD_LOGIC;
		clk_out :  OUT  STD_LOGIC;
		rx_out :  OUT  STD_LOGIC_VECTOR(29 DOWNTO 0)
	);
END cmv_controller;

ARCHITECTURE bdf_type OF cmv_controller IS 

COMPONENT lvds_in_serialize
	PORT(LVDS_CLK : IN STD_LOGIC;
		 LVDS_CH1 : IN STD_LOGIC;
		 LVDS_CH9 : IN STD_LOGIC;
		 LVDS_DATA : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altlvds_rx0
	PORT(rx_inclock : IN STD_LOGIC;
		 rx_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 rx_outclock : OUT STD_LOGIC;
		 rx_out : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(2 DOWNTO 0);


BEGIN 



b2v_inst0 : lvds_in_serialize
PORT MAP(LVDS_CLK => LVDS_CLK,
		 LVDS_CH1 => LVDS_CH1,
		 LVDS_CH9 => LVDS_CH9,
		 LVDS_DATA => SYNTHESIZED_WIRE_0);


b2v_inst1 : altlvds_rx0
PORT MAP(rx_inclock => LVDS_CLK_RX,
		 rx_in => SYNTHESIZED_WIRE_0,
		 rx_outclock => clk_out,
		 rx_out => rx_out);


END bdf_type;