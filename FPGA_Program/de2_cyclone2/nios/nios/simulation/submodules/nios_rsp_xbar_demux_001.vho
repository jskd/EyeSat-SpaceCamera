--IP Functional Simulation Model
--VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:04:42:SJ cbx_simgen 2013:06:12:18:03:40:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  nios_rsp_xbar_demux_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_channel	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 sink_data	:	IN  STD_LOGIC_VECTOR (86 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 src0_channel	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 src0_data	:	OUT  STD_LOGIC_VECTOR (86 DOWNTO 0);
		 src0_endofpacket	:	OUT  STD_LOGIC;
		 src0_ready	:	IN  STD_LOGIC;
		 src0_startofpacket	:	OUT  STD_LOGIC;
		 src0_valid	:	OUT  STD_LOGIC
	 ); 
 END nios_rsp_xbar_demux_001;

 ARCHITECTURE RTL OF nios_rsp_xbar_demux_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
 BEGIN

	sink_ready <= (sink_channel(0) AND src0_ready);
	src0_channel <= ( "0" & sink_channel(7 DOWNTO 1));
	src0_data <= ( sink_data(86 DOWNTO 0));
	src0_endofpacket <= sink_endofpacket;
	src0_startofpacket <= sink_startofpacket;
	src0_valid <= (sink_valid(0) AND sink_channel(0));

 END RTL; --nios_rsp_xbar_demux_001
--synopsys translate_on
--VALID FILE
