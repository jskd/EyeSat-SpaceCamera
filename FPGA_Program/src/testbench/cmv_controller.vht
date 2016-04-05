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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/04/2016 19:41:59"
                                                            
-- Vhdl Test Bench template for design  :  cmv_controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   

ENTITY cmv_controller_vhd_tst IS
END cmv_controller_vhd_tst;

ARCHITECTURE cmv_controller_arch OF cmv_controller_vhd_tst IS

-- constants   
constant Tclk : time := 200 ns;
constant Tlvds : time := 20 ns;
  constant T : time := 53886700 ns;
  constant T1 : time := 53060300 ns;
  constant T2 : time := 722400 ns;
  constant T3 : time := 104000 ns;
  constant Tdelay : time := 50 us;
  constant T128_pixel : time := 12800 ns;                                        
-- signals                                                   
SIGNAL clk_out : STD_LOGIC;
SIGNAL LVDS_CH1 : STD_LOGIC;
SIGNAL LVDS_CH9 : STD_LOGIC;
SIGNAL LVDS_CLK : STD_LOGIC;
SIGNAL LVDS_CLK_RX : STD_LOGIC;
SIGNAL rx_out : STD_LOGIC_VECTOR(29 DOWNTO 0);


COMPONENT cmv_controller
	PORT (
	clk_out : OUT STD_LOGIC;
	LVDS_CH1 : IN STD_LOGIC;
	LVDS_CH9 : IN STD_LOGIC;
	LVDS_CLK : IN STD_LOGIC;
	LVDS_CLK_RX : IN STD_LOGIC;
	rx_out : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
	);
END COMPONENT;

COMPONENT tb_clk_gen
	PORT (
	LVDS_CLK : OUT STD_LOGIC
	);
END COMPONENT;

BEGIN

	i1 : cmv_controller
	PORT MAP (
-- list connections between master ports and signals
	clk_out => clk_out,
	LVDS_CH1 => LVDS_CH1,
	LVDS_CH9 => LVDS_CH9,
	LVDS_CLK => LVDS_CLK,
	LVDS_CLK_RX => LVDS_CLK_RX,
	rx_out => rx_out
	);

	i2 : tb_clk_gen
	PORT MAP (
	LVDS_CLK => LVDS_CH1
	);



                                       
END cmv_controller_arch;
