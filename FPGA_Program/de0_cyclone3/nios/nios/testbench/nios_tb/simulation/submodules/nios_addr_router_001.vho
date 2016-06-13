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

--synthesis_resources = mux21 90 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  nios_addr_router_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (98 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (10 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (98 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END nios_addr_router_001;

 ARCHITECTURE RTL OF nios_addr_router_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_nios_addr_router_001_src_channel_103m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_104m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_107m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_108m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_109m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_115m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_119m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_120m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_121m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_123m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_124m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_125m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_131m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_132m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_135m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_136m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_137m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_139m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_140m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_141m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_147m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_148m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_149m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_151m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_152m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_153m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_155m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_156m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_157m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_163m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_164m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_165m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_167m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_168m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_169m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_170m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_171m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_172m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_173m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_43m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_45m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_59m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_61m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_71m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_76m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_77m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_87m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_88m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_91m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_92m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_93m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_channel_99m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_110m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_111m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_112m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_113m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_126m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_127m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_128m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_129m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_142m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_143m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_145m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_158m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_159m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_160m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_161m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_174m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_175m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_176m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_177m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_46m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_47m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_48m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_49m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_62m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_63m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_64m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_65m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_78m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_79m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_80m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_81m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_94m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_95m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_96m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_001_src_data_97m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range122w399w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range125w361w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range143w324w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range146w303w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range125w336w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range128w337w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range146w323w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range149w302w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_0_436_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_1_461_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_2_486_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_3_511_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_4_536_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_5_561_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_6_586_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_7_611_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_8_636_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_001_src_channel_9_661_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range125w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range128w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range143w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range146w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range149w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range122w399w(0) <= wire_w_sink_data_range122w(0) AND wire_w_lg_w_sink_data_range125w336w(0);
	wire_w_lg_w_sink_data_range125w361w(0) <= wire_w_sink_data_range125w(0) AND wire_w_lg_w_sink_data_range128w337w(0);
	wire_w_lg_w_sink_data_range143w324w(0) <= wire_w_sink_data_range143w(0) AND wire_w_lg_w_sink_data_range146w323w(0);
	wire_w_lg_w_sink_data_range146w303w(0) <= wire_w_sink_data_range146w(0) AND wire_w_lg_w_sink_data_range149w302w(0);
	wire_w1w(0) <= NOT s_wire_nios_addr_router_001_src_channel_0_436_dataout;
	wire_w_lg_w_sink_data_range125w336w(0) <= NOT wire_w_sink_data_range125w(0);
	wire_w_lg_w_sink_data_range128w337w(0) <= NOT wire_w_sink_data_range128w(0);
	wire_w_lg_w_sink_data_range146w323w(0) <= NOT wire_w_sink_data_range146w(0);
	wire_w_lg_w_sink_data_range149w302w(0) <= NOT wire_w_sink_data_range149w(0);
	s_wire_nios_addr_router_001_src_channel_0_436_dataout <= ((((((((((wire_w_lg_w_sink_data_range146w303w(0) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_1_461_dataout <= (((((((((((wire_w_lg_w_sink_data_range143w324w(0) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_2_486_dataout <= ((((((((((((((((((wire_w_lg_w_sink_data_range125w336w(0) AND wire_w_lg_w_sink_data_range128w337w(0)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_3_511_dataout <= (((((((((((((((((wire_w_lg_w_sink_data_range125w361w(0) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_4_536_dataout <= ((((((((((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range125w336w(0)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_5_561_dataout <= ((((((((((((((((((wire_w_lg_w_sink_data_range122w399w(0) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_6_586_dataout <= ((((((((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_7_611_dataout <= (((((((((((((((((((sink_data(40) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_8_636_dataout <= ((((((((((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range125w336w(0)) AND wire_w_lg_w_sink_data_range128w337w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	s_wire_nios_addr_router_001_src_channel_9_661_dataout <= (((((((((((((((((((((NOT sink_data(39)) AND sink_data(40)) AND wire_w_lg_w_sink_data_range125w336w(0)) AND wire_w_lg_w_sink_data_range128w337w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49)) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND sink_data(59));
	sink_ready <= src_ready;
	src_channel <= ( wire_nios_addr_router_001_src_channel_163m_dataout & wire_nios_addr_router_001_src_channel_164m_dataout & wire_nios_addr_router_001_src_channel_165m_dataout & s_wire_nios_addr_router_001_src_channel_9_661_dataout & wire_nios_addr_router_001_src_channel_167m_dataout & wire_nios_addr_router_001_src_channel_168m_dataout & wire_nios_addr_router_001_src_channel_169m_dataout & wire_nios_addr_router_001_src_channel_170m_dataout & wire_nios_addr_router_001_src_channel_171m_dataout & wire_nios_addr_router_001_src_channel_172m_dataout & wire_nios_addr_router_001_src_channel_173m_dataout);
	src_data <= ( sink_data(98 DOWNTO 89) & wire_nios_addr_router_001_src_data_174m_dataout & wire_nios_addr_router_001_src_data_175m_dataout & wire_nios_addr_router_001_src_data_176m_dataout & wire_nios_addr_router_001_src_data_177m_dataout & sink_data(84 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range122w(0) <= sink_data(40);
	wire_w_sink_data_range125w(0) <= sink_data(41);
	wire_w_sink_data_range128w(0) <= sink_data(42);
	wire_w_sink_data_range143w(0) <= sink_data(47);
	wire_w_sink_data_range146w(0) <= sink_data(48);
	wire_w_sink_data_range149w(0) <= sink_data(49);
	wire_nios_addr_router_001_src_channel_103m_dataout <= wire_nios_addr_router_001_src_channel_87m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_channel_104m_dataout <= wire_nios_addr_router_001_src_channel_88m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_channel_107m_dataout <= wire_nios_addr_router_001_src_channel_91m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_channel_108m_dataout <= wire_nios_addr_router_001_src_channel_92m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_channel_109m_dataout <= wire_nios_addr_router_001_src_channel_93m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_channel_115m_dataout <= wire_nios_addr_router_001_src_channel_99m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_channel_119m_dataout <= wire_nios_addr_router_001_src_channel_103m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_channel_120m_dataout <= wire_nios_addr_router_001_src_channel_104m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_channel_121m_dataout <= s_wire_nios_addr_router_001_src_channel_5_561_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_channel_123m_dataout <= wire_nios_addr_router_001_src_channel_107m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_channel_124m_dataout <= wire_nios_addr_router_001_src_channel_108m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_channel_125m_dataout <= wire_nios_addr_router_001_src_channel_109m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_channel_131m_dataout <= wire_nios_addr_router_001_src_channel_115m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_132m_dataout <= s_wire_nios_addr_router_001_src_channel_6_586_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_135m_dataout <= wire_nios_addr_router_001_src_channel_119m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_136m_dataout <= wire_nios_addr_router_001_src_channel_120m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_137m_dataout <= wire_nios_addr_router_001_src_channel_121m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_139m_dataout <= wire_nios_addr_router_001_src_channel_123m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_140m_dataout <= wire_nios_addr_router_001_src_channel_124m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_141m_dataout <= wire_nios_addr_router_001_src_channel_125m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_channel_147m_dataout <= wire_nios_addr_router_001_src_channel_131m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_148m_dataout <= wire_nios_addr_router_001_src_channel_132m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_149m_dataout <= s_wire_nios_addr_router_001_src_channel_7_611_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_151m_dataout <= wire_nios_addr_router_001_src_channel_135m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_152m_dataout <= wire_nios_addr_router_001_src_channel_136m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_153m_dataout <= wire_nios_addr_router_001_src_channel_137m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_155m_dataout <= wire_nios_addr_router_001_src_channel_139m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_156m_dataout <= wire_nios_addr_router_001_src_channel_140m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_157m_dataout <= wire_nios_addr_router_001_src_channel_141m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_channel_163m_dataout <= wire_nios_addr_router_001_src_channel_147m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_164m_dataout <= wire_nios_addr_router_001_src_channel_148m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_165m_dataout <= wire_nios_addr_router_001_src_channel_149m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_167m_dataout <= wire_nios_addr_router_001_src_channel_151m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_168m_dataout <= wire_nios_addr_router_001_src_channel_152m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_169m_dataout <= wire_nios_addr_router_001_src_channel_153m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_170m_dataout <= s_wire_nios_addr_router_001_src_channel_8_636_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_171m_dataout <= wire_nios_addr_router_001_src_channel_155m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_172m_dataout <= wire_nios_addr_router_001_src_channel_156m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_173m_dataout <= wire_nios_addr_router_001_src_channel_157m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_channel_43m_dataout <= wire_w1w(0) AND NOT(s_wire_nios_addr_router_001_src_channel_1_461_dataout);
	wire_nios_addr_router_001_src_channel_45m_dataout <= s_wire_nios_addr_router_001_src_channel_0_436_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_1_461_dataout);
	wire_nios_addr_router_001_src_channel_59m_dataout <= wire_nios_addr_router_001_src_channel_43m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_2_486_dataout);
	wire_nios_addr_router_001_src_channel_60m_dataout <= s_wire_nios_addr_router_001_src_channel_1_461_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_2_486_dataout);
	wire_nios_addr_router_001_src_channel_61m_dataout <= wire_nios_addr_router_001_src_channel_45m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_2_486_dataout);
	wire_nios_addr_router_001_src_channel_71m_dataout <= s_wire_nios_addr_router_001_src_channel_2_486_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_3_511_dataout);
	wire_nios_addr_router_001_src_channel_75m_dataout <= wire_nios_addr_router_001_src_channel_59m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_3_511_dataout);
	wire_nios_addr_router_001_src_channel_76m_dataout <= wire_nios_addr_router_001_src_channel_60m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_3_511_dataout);
	wire_nios_addr_router_001_src_channel_77m_dataout <= wire_nios_addr_router_001_src_channel_61m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_3_511_dataout);
	wire_nios_addr_router_001_src_channel_87m_dataout <= wire_nios_addr_router_001_src_channel_71m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_channel_88m_dataout <= s_wire_nios_addr_router_001_src_channel_3_511_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_channel_91m_dataout <= wire_nios_addr_router_001_src_channel_75m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_channel_92m_dataout <= wire_nios_addr_router_001_src_channel_76m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_channel_93m_dataout <= wire_nios_addr_router_001_src_channel_77m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_channel_99m_dataout <= s_wire_nios_addr_router_001_src_channel_4_536_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_data_110m_dataout <= wire_nios_addr_router_001_src_data_94m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_data_111m_dataout <= wire_nios_addr_router_001_src_data_95m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_5_561_dataout);
	wire_nios_addr_router_001_src_data_112m_dataout <= wire_nios_addr_router_001_src_data_96m_dataout OR s_wire_nios_addr_router_001_src_channel_5_561_dataout;
	wire_nios_addr_router_001_src_data_113m_dataout <= wire_nios_addr_router_001_src_data_97m_dataout OR s_wire_nios_addr_router_001_src_channel_5_561_dataout;
	wire_nios_addr_router_001_src_data_126m_dataout <= wire_nios_addr_router_001_src_data_110m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_data_127m_dataout <= wire_nios_addr_router_001_src_data_111m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_data_128m_dataout <= wire_nios_addr_router_001_src_data_112m_dataout OR s_wire_nios_addr_router_001_src_channel_6_586_dataout;
	wire_nios_addr_router_001_src_data_129m_dataout <= wire_nios_addr_router_001_src_data_113m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_6_586_dataout);
	wire_nios_addr_router_001_src_data_142m_dataout <= wire_nios_addr_router_001_src_data_126m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_data_143m_dataout <= wire_nios_addr_router_001_src_data_127m_dataout OR s_wire_nios_addr_router_001_src_channel_7_611_dataout;
	wire_nios_addr_router_001_src_data_144m_dataout <= wire_nios_addr_router_001_src_data_128m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_7_611_dataout);
	wire_nios_addr_router_001_src_data_145m_dataout <= wire_nios_addr_router_001_src_data_129m_dataout OR s_wire_nios_addr_router_001_src_channel_7_611_dataout;
	wire_nios_addr_router_001_src_data_158m_dataout <= wire_nios_addr_router_001_src_data_142m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_data_159m_dataout <= wire_nios_addr_router_001_src_data_143m_dataout OR s_wire_nios_addr_router_001_src_channel_8_636_dataout;
	wire_nios_addr_router_001_src_data_160m_dataout <= wire_nios_addr_router_001_src_data_144m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_data_161m_dataout <= wire_nios_addr_router_001_src_data_145m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_8_636_dataout);
	wire_nios_addr_router_001_src_data_174m_dataout <= wire_nios_addr_router_001_src_data_158m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_data_175m_dataout <= wire_nios_addr_router_001_src_data_159m_dataout OR s_wire_nios_addr_router_001_src_channel_9_661_dataout;
	wire_nios_addr_router_001_src_data_176m_dataout <= wire_nios_addr_router_001_src_data_160m_dataout OR s_wire_nios_addr_router_001_src_channel_9_661_dataout;
	wire_nios_addr_router_001_src_data_177m_dataout <= wire_nios_addr_router_001_src_data_161m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_9_661_dataout);
	wire_nios_addr_router_001_src_data_46m_dataout <= wire_w1w(0) AND NOT(s_wire_nios_addr_router_001_src_channel_1_461_dataout);
	wire_nios_addr_router_001_src_data_47m_dataout <= s_wire_nios_addr_router_001_src_channel_0_436_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_1_461_dataout);
	wire_nios_addr_router_001_src_data_48m_dataout <= s_wire_nios_addr_router_001_src_channel_0_436_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_1_461_dataout);
	wire_nios_addr_router_001_src_data_49m_dataout <= s_wire_nios_addr_router_001_src_channel_0_436_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_1_461_dataout);
	wire_nios_addr_router_001_src_data_62m_dataout <= wire_nios_addr_router_001_src_data_46m_dataout OR s_wire_nios_addr_router_001_src_channel_2_486_dataout;
	wire_nios_addr_router_001_src_data_63m_dataout <= wire_nios_addr_router_001_src_data_47m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_2_486_dataout);
	wire_nios_addr_router_001_src_data_64m_dataout <= wire_nios_addr_router_001_src_data_48m_dataout OR s_wire_nios_addr_router_001_src_channel_2_486_dataout;
	wire_nios_addr_router_001_src_data_65m_dataout <= wire_nios_addr_router_001_src_data_49m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_2_486_dataout);
	wire_nios_addr_router_001_src_data_78m_dataout <= wire_nios_addr_router_001_src_data_62m_dataout OR s_wire_nios_addr_router_001_src_channel_3_511_dataout;
	wire_nios_addr_router_001_src_data_79m_dataout <= wire_nios_addr_router_001_src_data_63m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_3_511_dataout);
	wire_nios_addr_router_001_src_data_80m_dataout <= wire_nios_addr_router_001_src_data_64m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_3_511_dataout);
	wire_nios_addr_router_001_src_data_81m_dataout <= wire_nios_addr_router_001_src_data_65m_dataout OR s_wire_nios_addr_router_001_src_channel_3_511_dataout;
	wire_nios_addr_router_001_src_data_94m_dataout <= wire_nios_addr_router_001_src_data_78m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_data_95m_dataout <= wire_nios_addr_router_001_src_data_79m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_data_96m_dataout <= wire_nios_addr_router_001_src_data_80m_dataout AND NOT(s_wire_nios_addr_router_001_src_channel_4_536_dataout);
	wire_nios_addr_router_001_src_data_97m_dataout <= wire_nios_addr_router_001_src_data_81m_dataout OR s_wire_nios_addr_router_001_src_channel_4_536_dataout;

 END RTL; --nios_addr_router_001
--synopsys translate_on
--VALID FILE
