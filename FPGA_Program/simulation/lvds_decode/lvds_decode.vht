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
-- Generated on "05/26/2016 14:08:05"
                                                            
-- Vhdl Test Bench template for design  :  de2_cyclone2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY de2_cyclone2_vhd_tst IS
END de2_cyclone2_vhd_tst;
ARCHITECTURE de2_cyclone2_arch OF de2_cyclone2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LVDS_CLK : STD_LOGIC;
SIGNAL LVDS_DATA : STD_LOGIC_VECTOR(169 DOWNTO 0);
SIGNAL LVDS_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL LVDS_OUTCLK : STD_LOGIC;
SIGNAL LVDS_OUTCTR : STD_LOGIC;
SIGNAL LVDSRX_ARESET_PLL : STD_LOGIC;
SIGNAL TEST_DATA_ALIG : STD_LOGIC;
COMPONENT de2_cyclone2
	PORT (
	LVDS_CLK : OUT STD_LOGIC;
	LVDS_DATA : OUT STD_LOGIC_VECTOR(169 DOWNTO 0);
	LVDS_OUT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	LVDS_OUTCLK : IN STD_LOGIC;
	LVDS_OUTCTR : IN STD_LOGIC;
	LVDSRX_ARESET_PLL : IN STD_LOGIC;
	TEST_DATA_ALIG : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : de2_cyclone2
	PORT MAP (
-- list connections between master ports and signals
	LVDS_CLK => LVDS_CLK,
	LVDS_DATA => LVDS_DATA,
	LVDS_OUT => LVDS_OUT,
	LVDS_OUTCLK => LVDS_OUTCLK,
	LVDS_OUTCTR => LVDS_OUTCTR,
	LVDSRX_ARESET_PLL => LVDSRX_ARESET_PLL,
	TEST_DATA_ALIG => TEST_DATA_ALIG
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END de2_cyclone2_arch;
