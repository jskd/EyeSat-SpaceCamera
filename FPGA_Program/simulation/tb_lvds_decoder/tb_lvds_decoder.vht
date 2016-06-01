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
-- Generated on "05/31/2016 14:30:59"
                                                            
-- Vhdl Test Bench template for design  :  tb_lvds_decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tb_lvds_decoder_vhd_tst IS
END tb_lvds_decoder_vhd_tst;
ARCHITECTURE tb_lvds_decoder_arch OF tb_lvds_decoder_vhd_tst IS
-- constants                                                 
-- signals               
   
SIGNAL SYS_RES_N : STD_LOGIC;   
SIGNAL FRAME_REQ : STD_LOGIC;    
SIGNAL ARESET : STD_LOGIC;
SIGNAL DATA_CH01 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH02 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH03 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH04 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH05 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH06 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH07 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH08 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH09 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH10 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH11 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH12 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH13 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH14 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH15 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CH16 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DATA_CLK : STD_LOGIC;
SIGNAL DATA_CTR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL LVDS_CH : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL LVDS_CLK : STD_LOGIC;
SIGNAL LVDS_CTR : STD_LOGIC;
COMPONENT tb_lvds_decoder
	PORT (
	ARESET : IN STD_LOGIC;
	DATA_CH01 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH02 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH03 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH04 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH05 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH06 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH07 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH08 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH09 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH10 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH11 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH12 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH13 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH14 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH15 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CH16 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	DATA_CLK : OUT STD_LOGIC;
	DATA_CTR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	LVDS_CH : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	LVDS_CLK : IN STD_LOGIC;
	LVDS_CTR : IN STD_LOGIC
	);
END COMPONENT;


COMPONENT tb_cmv_4000
	PORT (
		SYS_RES_N:	in	std_logic;
		FRAME_REQ:	in	std_logic;
		OUTCLK:					out	std_logic;
		LVDS_OUTCTR:		out	std_logic;
		LVDS_OUTDATA:		out	std_logic_vector(15 downto 0)
	);
END COMPONENT;




BEGIN
  
  cmv : tb_cmv_4000 
	PORT MAP (
		SYS_RES_N=>  SYS_RES_N      ,
		FRAME_REQ =>      FRAME_REQ  ,
	   OUTCLK			=> LVDS_CLK,
		LVDS_OUTCTR 	=> LVDS_CTR,
		LVDS_OUTDATA	=> LVDS_CH
	);
  
	i1 : tb_lvds_decoder
	PORT MAP (
-- list connections between master ports and signals
	ARESET => ARESET,
	DATA_CH01 => DATA_CH01,
	DATA_CH02 => DATA_CH02,
	DATA_CH03 => DATA_CH03,
	DATA_CH04 => DATA_CH04,
	DATA_CH05 => DATA_CH05,
	DATA_CH06 => DATA_CH06,
	DATA_CH07 => DATA_CH07,
	DATA_CH08 => DATA_CH08,
	DATA_CH09 => DATA_CH09,
	DATA_CH10 => DATA_CH10,
	DATA_CH11 => DATA_CH11,
	DATA_CH12 => DATA_CH12,
	DATA_CH13 => DATA_CH13,
	DATA_CH14 => DATA_CH14,
	DATA_CH15 => DATA_CH15,
	DATA_CH16 => DATA_CH16,
	DATA_CLK => DATA_CLK,
	DATA_CTR => DATA_CTR,
	LVDS_CH => LVDS_CH,
	LVDS_CLK => LVDS_CLK,
	LVDS_CTR => LVDS_CTR
	);
                                                             
always : PROCESS                                      
BEGIN                                                                                             
   	ARESET <= '0';  
		SYS_RES_N <=  '1';
		FRAME_REQ <=  '0';
		wait for 100ns;
		FRAME_REQ  <=  '1';
		wait for 2ms;
		assert false report "fin" severity failure;
		 
WAIT;                                                        
END PROCESS always;                                          
END tb_lvds_decoder_arch;
