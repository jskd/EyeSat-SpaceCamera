//altlvds_rx BUFFER_IMPLEMENTATION="RAM" CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" COMMON_RX_TX_PLL="OFF" CYCLONEII_M4K_COMPATIBILITY="ON" DATA_ALIGN_ROLLOVER=4 DATA_RATE="200.0 Mbps" DESERIALIZATION_FACTOR=10 DEVICE_FAMILY="Cyclone III" DPA_INITIAL_PHASE_VALUE=0 DPLL_LOCK_COUNT=0 DPLL_LOCK_WINDOW=0 ENABLE_DPA_ALIGN_TO_RISING_EDGE_ONLY="OFF" ENABLE_DPA_CALIBRATION="ON" ENABLE_DPA_INITIAL_PHASE_SELECTION="OFF" ENABLE_DPA_MODE="OFF" ENABLE_DPA_PLL_CALIBRATION="OFF" ENABLE_SOFT_CDR_MODE="OFF" IMPLEMENT_IN_LES="ON" INCLOCK_BOOST=0 INCLOCK_DATA_ALIGNMENT="EDGE_ALIGNED" INCLOCK_PERIOD=10000 INCLOCK_PHASE_SHIFT=0 INPUT_DATA_RATE=200 NUMBER_OF_CHANNELS=17 OUTCLOCK_RESOURCE="AUTO" PLL_OPERATION_MODE="SOURCE_SYNCHRONOUS" PORT_RX_CHANNEL_DATA_ALIGN="PORT_UNUSED" PORT_RX_DATA_ALIGN="PORT_USED" REGISTERED_OUTPUT="ON" SIM_DPA_IS_NEGATIVE_PPM_DRIFT="OFF" SIM_DPA_NET_PPM_VARIATION=0 SIM_DPA_OUTPUT_CLOCK_PHASE_SHIFT=0 USE_CORECLOCK_INPUT="OFF" USE_DPLL_RAWPERROR="OFF" USE_EXTERNAL_PLL="OFF" USE_NO_PHASE_SHIFT="ON" X_ON_BITSLIP="ON" pll_areset rx_data_align rx_in rx_inclock rx_out rx_outclock CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 LOW_POWER_MODE="AUTO" ALTERA_INTERNAL_OPTIONS=AUTO_SHIFT_REGISTER_RECOGNITION=OFF
//VERSION_BEGIN 13.0 cbx_altaccumulate 2013:06:12:18:03:43:SJ cbx_altclkbuf 2013:06:12:18:03:43:SJ cbx_altddio_in 2013:06:12:18:03:43:SJ cbx_altddio_out 2013:06:12:18:03:43:SJ cbx_altiobuf_bidir 2013:06:12:18:03:43:SJ cbx_altiobuf_in 2013:06:12:18:03:43:SJ cbx_altiobuf_out 2013:06:12:18:03:43:SJ cbx_altlvds_rx 2013:06:12:18:03:43:SJ cbx_altpll 2013:06:12:18:03:43:SJ cbx_altsyncram 2013:06:12:18:03:43:SJ cbx_arriav 2013:06:12:18:03:43:SJ cbx_cyclone 2013:06:12:18:03:43:SJ cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_lpm_counter 2013:06:12:18:03:43:SJ cbx_lpm_decode 2013:06:12:18:03:43:SJ cbx_lpm_mux 2013:06:12:18:03:43:SJ cbx_lpm_shiftreg 2013:06:12:18:03:43:SJ cbx_maxii 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_stratixiii 2013:06:12:18:03:43:SJ cbx_stratixv 2013:06:12:18:03:43:SJ cbx_util_mgl 2013:06:12:18:03:43:SJ  VERSION_END
//CBXI_INSTANCE_NAME="de0_cyclone3_cmv_controller_cmv_controller_inst_lvds_decoder_inst_altlvds_rx0_inst6_altlvds_rx_ALTLVDS_RX_component"
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2013 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.




//alt_lvds_ddio_in ADD_LATENCY_REG="TRUE" CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" WIDTH=17 aclr clock datain dataout_h dataout_l
//VERSION_BEGIN 13.0 cbx_altaccumulate 2013:06:12:18:03:43:SJ cbx_altclkbuf 2013:06:12:18:03:43:SJ cbx_altddio_in 2013:06:12:18:03:43:SJ cbx_altddio_out 2013:06:12:18:03:43:SJ cbx_altiobuf_bidir 2013:06:12:18:03:43:SJ cbx_altiobuf_in 2013:06:12:18:03:43:SJ cbx_altiobuf_out 2013:06:12:18:03:43:SJ cbx_altlvds_rx 2013:06:12:18:03:43:SJ cbx_altpll 2013:06:12:18:03:43:SJ cbx_altsyncram 2013:06:12:18:03:43:SJ cbx_arriav 2013:06:12:18:03:43:SJ cbx_cyclone 2013:06:12:18:03:43:SJ cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_lpm_counter 2013:06:12:18:03:43:SJ cbx_lpm_decode 2013:06:12:18:03:43:SJ cbx_lpm_mux 2013:06:12:18:03:43:SJ cbx_lpm_shiftreg 2013:06:12:18:03:43:SJ cbx_maxii 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_stratixiii 2013:06:12:18:03:43:SJ cbx_stratixv 2013:06:12:18:03:43:SJ cbx_util_mgl 2013:06:12:18:03:43:SJ  VERSION_END

//synthesis_resources = reg 85 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"{-to ddio_h_reg*} PLL_COMPENSATE=ON;ADV_NETLIST_OPT_ALLOWED=\"NEVER_ALLOW\""} *)
module  altlvds_rx0_lvds_ddio_in
	( 
	aclr,
	clock,
	datain,
	dataout_h,
	dataout_l) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	input   [16:0]  datain;
	output   [16:0]  dataout_h;
	output   [16:0]  dataout_l;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[16:0]	dataout_h_reg;
	reg	[16:0]	dataout_l_latch;
	reg	[16:0]	dataout_l_reg;
	(* ALTERA_ATTRIBUTE = {"LVDS_RX_REGISTER=HIGH;PRESERVE_REGISTER=ON;PRESERVE_FANOUT_FREE_NODE=ON"} *)
	reg	[16:0]	ddio_h_reg;
	(* ALTERA_ATTRIBUTE = {"LVDS_RX_REGISTER=LOW;PRESERVE_REGISTER=ON;PRESERVE_FANOUT_FREE_NODE=ON"} *)
	reg	[16:0]	ddio_l_reg;

	// synopsys translate_off
	initial
		dataout_h_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dataout_h_reg <= 17'b0;
		else  dataout_h_reg <= ddio_h_reg;
	// synopsys translate_off
	initial
		dataout_l_latch = 0;
	// synopsys translate_on
	always @ ( negedge clock or  posedge aclr)
		if (aclr == 1'b1) dataout_l_latch <= 17'b0;
		else  dataout_l_latch <= ddio_l_reg;
	// synopsys translate_off
	initial
		dataout_l_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dataout_l_reg <= 17'b0;
		else  dataout_l_reg <= dataout_l_latch;
	// synopsys translate_off
	initial
		ddio_h_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) ddio_h_reg <= 17'b0;
		else  ddio_h_reg <= datain;
	// synopsys translate_off
	initial
		ddio_l_reg = 0;
	// synopsys translate_on
	always @ ( negedge clock or  posedge aclr)
		if (aclr == 1'b1) ddio_l_reg <= 17'b0;
		else  ddio_l_reg <= datain;
	assign
		dataout_h = dataout_l_reg,
		dataout_l = dataout_h_reg;
endmodule //altlvds_rx0_lvds_ddio_in


//dffpipe CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DELAY=2 WIDTH=17 clock clrn d q ALTERA_INTERNAL_OPTIONS=AUTO_SHIFT_REGISTER_RECOGNITION=OFF
//VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_util_mgl 2013:06:12:18:03:43:SJ  VERSION_END

//synthesis_resources = reg 34 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"AUTO_SHIFT_REGISTER_RECOGNITION=OFF"} *)
module  altlvds_rx0_dffpipe
	( 
	clock,
	clrn,
	d,
	q) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   clrn;
	input   [16:0]  d;
	output   [16:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
	tri1   clrn;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[16:0]	dffe103a;
	reg	[16:0]	dffe104a;
	wire ena;
	wire prn;
	wire sclr;

	// synopsys translate_off
	initial
		dffe103a = 0;
	// synopsys translate_on
	always @ ( posedge clock or  negedge prn or  negedge clrn)
		if (prn == 1'b0) dffe103a <= {17{1'b1}};
		else if (clrn == 1'b0) dffe103a <= 17'b0;
		else if  (ena == 1'b1)   dffe103a <= (d & {17{(~ sclr)}});
	// synopsys translate_off
	initial
		dffe104a = 0;
	// synopsys translate_on
	always @ ( posedge clock or  negedge prn or  negedge clrn)
		if (prn == 1'b0) dffe104a <= {17{1'b1}};
		else if (clrn == 1'b0) dffe104a <= 17'b0;
		else if  (ena == 1'b1)   dffe104a <= (dffe103a & {17{(~ sclr)}});
	assign
		ena = 1'b1,
		prn = 1'b1,
		q = dffe104a,
		sclr = 1'b0;
endmodule //altlvds_rx0_dffpipe


//lpm_counter CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone III" lpm_modulus=10 lpm_port_updown="PORT_UNUSED" lpm_width=4 clock cnt_en q
//VERSION_BEGIN 13.0 cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_lpm_counter 2013:06:12:18:03:43:SJ cbx_lpm_decode 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ  VERSION_END


//lpm_compare CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone III" LPM_WIDTH=4 ONE_INPUT_IS_CONSTANT="YES" aeb dataa datab
//VERSION_BEGIN 13.0 cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_rx0_cmpr
	( 
	aeb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   aeb;
	input   [3:0]  dataa;
	input   [3:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [3:0]  dataa;
	tri0   [3:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]  aeb_result_wire;
	wire  [0:0]  aneb_result_wire;
	wire  [9:0]  data_wire;
	wire  eq_wire;

	assign
		aeb = eq_wire,
		aeb_result_wire = (~ aneb_result_wire),
		aneb_result_wire = (data_wire[0] | data_wire[1]),
		data_wire = {datab[3], dataa[3], datab[2], dataa[2], datab[1], dataa[1], datab[0], dataa[0], ((data_wire[6] ^ data_wire[7]) | (data_wire[8] ^ data_wire[9])), ((data_wire[2] ^ data_wire[3]) | (data_wire[4] ^ data_wire[5]))},
		eq_wire = aeb_result_wire;
endmodule //altlvds_rx0_cmpr

//synthesis_resources = lut 4 reg 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_rx0_cntr
	( 
	clock,
	cnt_en,
	q) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   cnt_en;
	output   [3:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   cnt_en;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]   wire_counter_comb_bita_0combout;
	wire  [0:0]   wire_counter_comb_bita_1combout;
	wire  [0:0]   wire_counter_comb_bita_2combout;
	wire  [0:0]   wire_counter_comb_bita_3combout;
	wire  [0:0]   wire_counter_comb_bita_0cout;
	wire  [0:0]   wire_counter_comb_bita_1cout;
	wire  [0:0]   wire_counter_comb_bita_2cout;
	wire  [0:0]   wire_counter_comb_bita_3cout;
	wire	[3:0]	wire_counter_reg_bit_d;
	wire	[3:0]	wire_counter_reg_bit_asdata;
	reg	[3:0]	counter_reg_bit;
	wire	[3:0]	wire_counter_reg_bit_ena;
	wire	[3:0]	wire_counter_reg_bit_sload;
	wire  wire_cmpr105_aeb;
	wire  aclr_actual;
	wire clk_en;
	wire  compare_result;
	wire  cout_actual;
	wire [3:0]  data;
	wire  external_cin;
	wire  [3:0]  modulus_bus;
	wire  modulus_trigger;
	wire  [3:0]  s_val;
	wire  [3:0]  safe_q;
	wire sclr;
	wire sload;
	wire sset;
	wire  time_to_clear;
	wire  updown_dir;

	cycloneiii_lcell_comb   counter_comb_bita_0
	( 
	.cin(external_cin),
	.combout(wire_counter_comb_bita_0combout[0:0]),
	.cout(wire_counter_comb_bita_0cout[0:0]),
	.dataa(counter_reg_bit[0]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_0.lut_mask = 16'h5A90,
		counter_comb_bita_0.sum_lutc_input = "cin",
		counter_comb_bita_0.lpm_type = "cycloneiii_lcell_comb";
	cycloneiii_lcell_comb   counter_comb_bita_1
	( 
	.cin(wire_counter_comb_bita_0cout[0:0]),
	.combout(wire_counter_comb_bita_1combout[0:0]),
	.cout(wire_counter_comb_bita_1cout[0:0]),
	.dataa(counter_reg_bit[1]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_1.lut_mask = 16'h5A90,
		counter_comb_bita_1.sum_lutc_input = "cin",
		counter_comb_bita_1.lpm_type = "cycloneiii_lcell_comb";
	cycloneiii_lcell_comb   counter_comb_bita_2
	( 
	.cin(wire_counter_comb_bita_1cout[0:0]),
	.combout(wire_counter_comb_bita_2combout[0:0]),
	.cout(wire_counter_comb_bita_2cout[0:0]),
	.dataa(counter_reg_bit[2]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_2.lut_mask = 16'h5A90,
		counter_comb_bita_2.sum_lutc_input = "cin",
		counter_comb_bita_2.lpm_type = "cycloneiii_lcell_comb";
	cycloneiii_lcell_comb   counter_comb_bita_3
	( 
	.cin(wire_counter_comb_bita_2cout[0:0]),
	.combout(wire_counter_comb_bita_3combout[0:0]),
	.cout(wire_counter_comb_bita_3cout[0:0]),
	.dataa(counter_reg_bit[3]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_3.lut_mask = 16'h5A90,
		counter_comb_bita_3.sum_lutc_input = "cin",
		counter_comb_bita_3.lpm_type = "cycloneiii_lcell_comb";
	// synopsys translate_off
	initial
		counter_reg_bit[0:0] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[0:0] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[0:0] == 1'b1) 
			if (wire_counter_reg_bit_sload[0:0] == 1'b1) counter_reg_bit[0:0] <= wire_counter_reg_bit_asdata[0:0];
			else  counter_reg_bit[0:0] <= wire_counter_reg_bit_d[0:0];
	// synopsys translate_off
	initial
		counter_reg_bit[1:1] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[1:1] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[1:1] == 1'b1) 
			if (wire_counter_reg_bit_sload[1:1] == 1'b1) counter_reg_bit[1:1] <= wire_counter_reg_bit_asdata[1:1];
			else  counter_reg_bit[1:1] <= wire_counter_reg_bit_d[1:1];
	// synopsys translate_off
	initial
		counter_reg_bit[2:2] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[2:2] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[2:2] == 1'b1) 
			if (wire_counter_reg_bit_sload[2:2] == 1'b1) counter_reg_bit[2:2] <= wire_counter_reg_bit_asdata[2:2];
			else  counter_reg_bit[2:2] <= wire_counter_reg_bit_d[2:2];
	// synopsys translate_off
	initial
		counter_reg_bit[3:3] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[3:3] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[3:3] == 1'b1) 
			if (wire_counter_reg_bit_sload[3:3] == 1'b1) counter_reg_bit[3:3] <= wire_counter_reg_bit_asdata[3:3];
			else  counter_reg_bit[3:3] <= wire_counter_reg_bit_d[3:3];
	assign
		wire_counter_reg_bit_asdata = ({4{(~ sclr)}} & (({4{sset}} & s_val) | ({4{(~ sset)}} & (({4{sload}} & data) | (({4{(~ sload)}} & modulus_bus) & {4{(~ updown_dir)}}))))),
		wire_counter_reg_bit_d = {wire_counter_comb_bita_3combout[0:0], wire_counter_comb_bita_2combout[0:0], wire_counter_comb_bita_1combout[0:0], wire_counter_comb_bita_0combout[0:0]};
	assign
		wire_counter_reg_bit_ena = {4{(clk_en & (((sclr | sset) | sload) | cnt_en))}},
		wire_counter_reg_bit_sload = {4{(((sclr | sset) | sload) | modulus_trigger)}};
	altlvds_rx0_cmpr   cmpr105
	( 
	.aeb(wire_cmpr105_aeb),
	.dataa(safe_q),
	.datab(modulus_bus));
	assign
		aclr_actual = 1'b0,
		clk_en = 1'b1,
		compare_result = wire_cmpr105_aeb,
		cout_actual = (wire_counter_comb_bita_3cout[0:0] | (time_to_clear & updown_dir)),
		data = {4{1'b0}},
		external_cin = 1'b1,
		modulus_bus = 4'b1001,
		modulus_trigger = cout_actual,
		q = safe_q,
		s_val = {4{1'b1}},
		safe_q = counter_reg_bit,
		sclr = 1'b0,
		sload = 1'b0,
		sset = 1'b0,
		time_to_clear = compare_result,
		updown_dir = 1'b1;
endmodule //altlvds_rx0_cntr


//lpm_mux CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone III" LPM_SIZE=10 LPM_WIDTH=1 LPM_WIDTHS=4 data result sel
//VERSION_BEGIN 13.0 cbx_lpm_mux 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END

//synthesis_resources = lut 7 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_rx0_mux
	( 
	data,
	result,
	sel) /* synthesis synthesis_clearbox=1 */;
	input   [9:0]  data;
	output   [0:0]  result;
	input   [3:0]  sel;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [9:0]  data;
	tri0   [3:0]  sel;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [9:0]  muxlut_data0w;
	wire  muxlut_result0w;
	wire  [3:0]  muxlut_select0w;
	wire  [0:0]  result_node;
	wire  [3:0]  sel_ffs_wire;
	wire  [3:0]  sel_node;
	wire  [3:0]  w1424w;
	wire  [1:0]  w1426w;
	wire  [3:0]  w1449w;
	wire  [1:0]  w1451w;
	wire  [1:0]  w1472w;
	wire  [0:0]  w1474w;
	wire  [1:0]  w1485w;
	wire  [2:0]  w_mux_outputs1422w;

	assign
		muxlut_data0w = {data[9:0]},
		muxlut_result0w = (((~ w1485w[1]) | ((~ w1485w[0]) & w_mux_outputs1422w[2])) & ((w1485w[1] | (w1485w[0] & w_mux_outputs1422w[1])) | ((~ w1485w[0]) & w_mux_outputs1422w[0]))),
		muxlut_select0w = sel_node,
		result = result_node,
		result_node = {muxlut_result0w},
		sel_ffs_wire = {sel[3:0]},
		sel_node = {sel_ffs_wire[3:2], sel[1:0]},
		w1424w = muxlut_data0w[3:0],
		w1426w = muxlut_select0w[1:0],
		w1449w = muxlut_data0w[7:4],
		w1451w = muxlut_select0w[1:0],
		w1472w = muxlut_data0w[9:8],
		w1474w = muxlut_select0w[0],
		w1485w = muxlut_select0w[3:2],
		w_mux_outputs1422w = {((w1472w[0] & (~ w1474w[0])) | (w1472w[1] & w1474w[0])), ((((~ w1451w[1]) | (w1451w[0] & w1449w[3])) | ((~ w1451w[0]) & w1449w[2])) & ((w1451w[1] | (w1451w[0] & w1449w[1])) | ((~ w1451w[0]) & w1449w[0]))), ((((~ w1426w[1]) | (w1426w[0] & w1424w[3])) | ((~ w1426w[0]) & w1424w[2])) & ((w1426w[1] | (w1426w[0] & w1424w[1])) | ((~ w1426w[0]) & w1424w[0])))};
endmodule //altlvds_rx0_mux

//synthesis_resources = cycloneiii_pll 1 lut 242 reg 652 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"AUTO_SHIFT_REGISTER_RECOGNITION=OFF;{-to lvds_rx_pll} AUTO_MERGE_PLLS=OFF"} *)
module  altlvds_rx0_lvds_rx
	( 
	pll_areset,
	rx_data_align,
	rx_in,
	rx_inclock,
	rx_out,
	rx_outclock) /* synthesis synthesis_clearbox=1 */;
	input   pll_areset;
	input   rx_data_align;
	input   [16:0]  rx_in;
	input   rx_inclock;
	output   [169:0]  rx_out;
	output   rx_outclock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   pll_areset;
	tri0   rx_data_align;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [16:0]   wire_ddio_in_dataout_h;
	wire  [16:0]   wire_ddio_in_dataout_l;
	reg	[3:0]	cda_h_shiftreg15a;
	reg	[3:0]	cda_h_shiftreg21a;
	reg	[3:0]	cda_h_shiftreg27a;
	reg	[3:0]	cda_h_shiftreg33a;
	reg	[3:0]	cda_h_shiftreg39a;
	reg	[3:0]	cda_h_shiftreg3a;
	reg	[3:0]	cda_h_shiftreg45a;
	reg	[3:0]	cda_h_shiftreg51a;
	reg	[3:0]	cda_h_shiftreg57a;
	reg	[3:0]	cda_h_shiftreg63a;
	reg	[3:0]	cda_h_shiftreg69a;
	reg	[3:0]	cda_h_shiftreg75a;
	reg	[3:0]	cda_h_shiftreg81a;
	reg	[3:0]	cda_h_shiftreg87a;
	reg	[3:0]	cda_h_shiftreg93a;
	reg	[3:0]	cda_h_shiftreg99a;
	reg	[3:0]	cda_h_shiftreg9a;
	reg	[4:0]	cda_l_shiftreg100a;
	reg	[4:0]	cda_l_shiftreg10a;
	reg	[4:0]	cda_l_shiftreg16a;
	reg	[4:0]	cda_l_shiftreg22a;
	reg	[4:0]	cda_l_shiftreg28a;
	reg	[4:0]	cda_l_shiftreg34a;
	reg	[4:0]	cda_l_shiftreg40a;
	reg	[4:0]	cda_l_shiftreg46a;
	reg	[4:0]	cda_l_shiftreg4a;
	reg	[4:0]	cda_l_shiftreg52a;
	reg	[4:0]	cda_l_shiftreg58a;
	reg	[4:0]	cda_l_shiftreg64a;
	reg	[4:0]	cda_l_shiftreg70a;
	reg	[4:0]	cda_l_shiftreg76a;
	reg	[4:0]	cda_l_shiftreg82a;
	reg	[4:0]	cda_l_shiftreg88a;
	reg	[4:0]	cda_l_shiftreg94a;
	reg	[4:0]	h_shiftreg14a;
	reg	[4:0]	h_shiftreg20a;
	reg	[4:0]	h_shiftreg26a;
	reg	[4:0]	h_shiftreg2a;
	reg	[4:0]	h_shiftreg32a;
	reg	[4:0]	h_shiftreg38a;
	reg	[4:0]	h_shiftreg44a;
	reg	[4:0]	h_shiftreg50a;
	reg	[4:0]	h_shiftreg56a;
	reg	[4:0]	h_shiftreg62a;
	reg	[4:0]	h_shiftreg68a;
	reg	[4:0]	h_shiftreg74a;
	reg	[4:0]	h_shiftreg80a;
	reg	[4:0]	h_shiftreg86a;
	reg	[4:0]	h_shiftreg8a;
	reg	[4:0]	h_shiftreg92a;
	reg	[4:0]	h_shiftreg98a;
	reg	int_bitslip_reg;
	reg	[4:0]	l_shiftreg13a;
	reg	[4:0]	l_shiftreg19a;
	reg	[4:0]	l_shiftreg1a;
	reg	[4:0]	l_shiftreg25a;
	reg	[4:0]	l_shiftreg31a;
	reg	[4:0]	l_shiftreg37a;
	reg	[4:0]	l_shiftreg43a;
	reg	[4:0]	l_shiftreg49a;
	reg	[4:0]	l_shiftreg55a;
	reg	[4:0]	l_shiftreg61a;
	reg	[4:0]	l_shiftreg67a;
	reg	[4:0]	l_shiftreg73a;
	reg	[4:0]	l_shiftreg79a;
	reg	[4:0]	l_shiftreg7a;
	reg	[4:0]	l_shiftreg85a;
	reg	[4:0]	l_shiftreg91a;
	reg	[4:0]	l_shiftreg97a;
	reg	rx_data_align_reg;
	reg	[169:0]	rx_reg;
	wire  [16:0]   wire_h_dffpipe_q;
	wire  [16:0]   wire_l_dffpipe_q;
	wire  [3:0]   wire_bitslip_cntr_q;
	wire  [0:0]   wire_h_mux101a_result;
	wire  [0:0]   wire_h_mux11a_result;
	wire  [0:0]   wire_h_mux17a_result;
	wire  [0:0]   wire_h_mux23a_result;
	wire  [0:0]   wire_h_mux29a_result;
	wire  [0:0]   wire_h_mux35a_result;
	wire  [0:0]   wire_h_mux41a_result;
	wire  [0:0]   wire_h_mux47a_result;
	wire  [0:0]   wire_h_mux53a_result;
	wire  [0:0]   wire_h_mux59a_result;
	wire  [0:0]   wire_h_mux5a_result;
	wire  [0:0]   wire_h_mux65a_result;
	wire  [0:0]   wire_h_mux71a_result;
	wire  [0:0]   wire_h_mux77a_result;
	wire  [0:0]   wire_h_mux83a_result;
	wire  [0:0]   wire_h_mux89a_result;
	wire  [0:0]   wire_h_mux95a_result;
	wire  [0:0]   wire_l_mux102a_result;
	wire  [0:0]   wire_l_mux12a_result;
	wire  [0:0]   wire_l_mux18a_result;
	wire  [0:0]   wire_l_mux24a_result;
	wire  [0:0]   wire_l_mux30a_result;
	wire  [0:0]   wire_l_mux36a_result;
	wire  [0:0]   wire_l_mux42a_result;
	wire  [0:0]   wire_l_mux48a_result;
	wire  [0:0]   wire_l_mux54a_result;
	wire  [0:0]   wire_l_mux60a_result;
	wire  [0:0]   wire_l_mux66a_result;
	wire  [0:0]   wire_l_mux6a_result;
	wire  [0:0]   wire_l_mux72a_result;
	wire  [0:0]   wire_l_mux78a_result;
	wire  [0:0]   wire_l_mux84a_result;
	wire  [0:0]   wire_l_mux90a_result;
	wire  [0:0]   wire_l_mux96a_result;
	wire  [4:0]   wire_lvds_rx_pll_clk;
	wire  wire_lvds_rx_pll_fbout;
	wire  bitslip;
	wire  [3:0]  bitslip_en;
	wire  [16:0]  ddio_dataout_h;
	wire  [16:0]  ddio_dataout_h_int;
	wire  [16:0]  ddio_dataout_l;
	wire  [16:0]  ddio_dataout_l_int;
	wire  fast_clock;
	wire  int_bitslip;
	wire  [169:0]  rx_out_wire;
	wire  slow_clock;
	wire  w_reset;

	altlvds_rx0_lvds_ddio_in   ddio_in
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.datain(rx_in),
	.dataout_h(wire_ddio_in_dataout_h),
	.dataout_l(wire_ddio_in_dataout_l));
	// synopsys translate_off
	initial
		cda_h_shiftreg15a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg15a <= 4'b0;
		else  cda_h_shiftreg15a <= {cda_h_shiftreg15a[2:0], ddio_dataout_h[2]};
	// synopsys translate_off
	initial
		cda_h_shiftreg21a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg21a <= 4'b0;
		else  cda_h_shiftreg21a <= {cda_h_shiftreg21a[2:0], ddio_dataout_h[3]};
	// synopsys translate_off
	initial
		cda_h_shiftreg27a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg27a <= 4'b0;
		else  cda_h_shiftreg27a <= {cda_h_shiftreg27a[2:0], ddio_dataout_h[4]};
	// synopsys translate_off
	initial
		cda_h_shiftreg33a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg33a <= 4'b0;
		else  cda_h_shiftreg33a <= {cda_h_shiftreg33a[2:0], ddio_dataout_h[5]};
	// synopsys translate_off
	initial
		cda_h_shiftreg39a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg39a <= 4'b0;
		else  cda_h_shiftreg39a <= {cda_h_shiftreg39a[2:0], ddio_dataout_h[6]};
	// synopsys translate_off
	initial
		cda_h_shiftreg3a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg3a <= 4'b0;
		else  cda_h_shiftreg3a <= {cda_h_shiftreg3a[2:0], ddio_dataout_h[0]};
	// synopsys translate_off
	initial
		cda_h_shiftreg45a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg45a <= 4'b0;
		else  cda_h_shiftreg45a <= {cda_h_shiftreg45a[2:0], ddio_dataout_h[7]};
	// synopsys translate_off
	initial
		cda_h_shiftreg51a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg51a <= 4'b0;
		else  cda_h_shiftreg51a <= {cda_h_shiftreg51a[2:0], ddio_dataout_h[8]};
	// synopsys translate_off
	initial
		cda_h_shiftreg57a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg57a <= 4'b0;
		else  cda_h_shiftreg57a <= {cda_h_shiftreg57a[2:0], ddio_dataout_h[9]};
	// synopsys translate_off
	initial
		cda_h_shiftreg63a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg63a <= 4'b0;
		else  cda_h_shiftreg63a <= {cda_h_shiftreg63a[2:0], ddio_dataout_h[10]};
	// synopsys translate_off
	initial
		cda_h_shiftreg69a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg69a <= 4'b0;
		else  cda_h_shiftreg69a <= {cda_h_shiftreg69a[2:0], ddio_dataout_h[11]};
	// synopsys translate_off
	initial
		cda_h_shiftreg75a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg75a <= 4'b0;
		else  cda_h_shiftreg75a <= {cda_h_shiftreg75a[2:0], ddio_dataout_h[12]};
	// synopsys translate_off
	initial
		cda_h_shiftreg81a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg81a <= 4'b0;
		else  cda_h_shiftreg81a <= {cda_h_shiftreg81a[2:0], ddio_dataout_h[13]};
	// synopsys translate_off
	initial
		cda_h_shiftreg87a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg87a <= 4'b0;
		else  cda_h_shiftreg87a <= {cda_h_shiftreg87a[2:0], ddio_dataout_h[14]};
	// synopsys translate_off
	initial
		cda_h_shiftreg93a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg93a <= 4'b0;
		else  cda_h_shiftreg93a <= {cda_h_shiftreg93a[2:0], ddio_dataout_h[15]};
	// synopsys translate_off
	initial
		cda_h_shiftreg99a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg99a <= 4'b0;
		else  cda_h_shiftreg99a <= {cda_h_shiftreg99a[2:0], ddio_dataout_h[16]};
	// synopsys translate_off
	initial
		cda_h_shiftreg9a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_h_shiftreg9a <= 4'b0;
		else  cda_h_shiftreg9a <= {cda_h_shiftreg9a[2:0], ddio_dataout_h[1]};
	// synopsys translate_off
	initial
		cda_l_shiftreg100a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg100a <= 5'b0;
		else  cda_l_shiftreg100a <= {cda_l_shiftreg100a[3:0], ddio_dataout_l[16]};
	// synopsys translate_off
	initial
		cda_l_shiftreg10a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg10a <= 5'b0;
		else  cda_l_shiftreg10a <= {cda_l_shiftreg10a[3:0], ddio_dataout_l[1]};
	// synopsys translate_off
	initial
		cda_l_shiftreg16a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg16a <= 5'b0;
		else  cda_l_shiftreg16a <= {cda_l_shiftreg16a[3:0], ddio_dataout_l[2]};
	// synopsys translate_off
	initial
		cda_l_shiftreg22a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg22a <= 5'b0;
		else  cda_l_shiftreg22a <= {cda_l_shiftreg22a[3:0], ddio_dataout_l[3]};
	// synopsys translate_off
	initial
		cda_l_shiftreg28a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg28a <= 5'b0;
		else  cda_l_shiftreg28a <= {cda_l_shiftreg28a[3:0], ddio_dataout_l[4]};
	// synopsys translate_off
	initial
		cda_l_shiftreg34a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg34a <= 5'b0;
		else  cda_l_shiftreg34a <= {cda_l_shiftreg34a[3:0], ddio_dataout_l[5]};
	// synopsys translate_off
	initial
		cda_l_shiftreg40a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg40a <= 5'b0;
		else  cda_l_shiftreg40a <= {cda_l_shiftreg40a[3:0], ddio_dataout_l[6]};
	// synopsys translate_off
	initial
		cda_l_shiftreg46a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg46a <= 5'b0;
		else  cda_l_shiftreg46a <= {cda_l_shiftreg46a[3:0], ddio_dataout_l[7]};
	// synopsys translate_off
	initial
		cda_l_shiftreg4a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg4a <= 5'b0;
		else  cda_l_shiftreg4a <= {cda_l_shiftreg4a[3:0], ddio_dataout_l[0]};
	// synopsys translate_off
	initial
		cda_l_shiftreg52a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg52a <= 5'b0;
		else  cda_l_shiftreg52a <= {cda_l_shiftreg52a[3:0], ddio_dataout_l[8]};
	// synopsys translate_off
	initial
		cda_l_shiftreg58a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg58a <= 5'b0;
		else  cda_l_shiftreg58a <= {cda_l_shiftreg58a[3:0], ddio_dataout_l[9]};
	// synopsys translate_off
	initial
		cda_l_shiftreg64a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg64a <= 5'b0;
		else  cda_l_shiftreg64a <= {cda_l_shiftreg64a[3:0], ddio_dataout_l[10]};
	// synopsys translate_off
	initial
		cda_l_shiftreg70a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg70a <= 5'b0;
		else  cda_l_shiftreg70a <= {cda_l_shiftreg70a[3:0], ddio_dataout_l[11]};
	// synopsys translate_off
	initial
		cda_l_shiftreg76a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg76a <= 5'b0;
		else  cda_l_shiftreg76a <= {cda_l_shiftreg76a[3:0], ddio_dataout_l[12]};
	// synopsys translate_off
	initial
		cda_l_shiftreg82a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg82a <= 5'b0;
		else  cda_l_shiftreg82a <= {cda_l_shiftreg82a[3:0], ddio_dataout_l[13]};
	// synopsys translate_off
	initial
		cda_l_shiftreg88a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg88a <= 5'b0;
		else  cda_l_shiftreg88a <= {cda_l_shiftreg88a[3:0], ddio_dataout_l[14]};
	// synopsys translate_off
	initial
		cda_l_shiftreg94a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) cda_l_shiftreg94a <= 5'b0;
		else  cda_l_shiftreg94a <= {cda_l_shiftreg94a[3:0], ddio_dataout_l[15]};
	// synopsys translate_off
	initial
		h_shiftreg14a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg14a <= 5'b0;
		else  h_shiftreg14a <= {h_shiftreg14a[3:0], wire_l_mux18a_result};
	// synopsys translate_off
	initial
		h_shiftreg20a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg20a <= 5'b0;
		else  h_shiftreg20a <= {h_shiftreg20a[3:0], wire_l_mux24a_result};
	// synopsys translate_off
	initial
		h_shiftreg26a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg26a <= 5'b0;
		else  h_shiftreg26a <= {h_shiftreg26a[3:0], wire_l_mux30a_result};
	// synopsys translate_off
	initial
		h_shiftreg2a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg2a <= 5'b0;
		else  h_shiftreg2a <= {h_shiftreg2a[3:0], wire_l_mux6a_result};
	// synopsys translate_off
	initial
		h_shiftreg32a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg32a <= 5'b0;
		else  h_shiftreg32a <= {h_shiftreg32a[3:0], wire_l_mux36a_result};
	// synopsys translate_off
	initial
		h_shiftreg38a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg38a <= 5'b0;
		else  h_shiftreg38a <= {h_shiftreg38a[3:0], wire_l_mux42a_result};
	// synopsys translate_off
	initial
		h_shiftreg44a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg44a <= 5'b0;
		else  h_shiftreg44a <= {h_shiftreg44a[3:0], wire_l_mux48a_result};
	// synopsys translate_off
	initial
		h_shiftreg50a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg50a <= 5'b0;
		else  h_shiftreg50a <= {h_shiftreg50a[3:0], wire_l_mux54a_result};
	// synopsys translate_off
	initial
		h_shiftreg56a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg56a <= 5'b0;
		else  h_shiftreg56a <= {h_shiftreg56a[3:0], wire_l_mux60a_result};
	// synopsys translate_off
	initial
		h_shiftreg62a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg62a <= 5'b0;
		else  h_shiftreg62a <= {h_shiftreg62a[3:0], wire_l_mux66a_result};
	// synopsys translate_off
	initial
		h_shiftreg68a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg68a <= 5'b0;
		else  h_shiftreg68a <= {h_shiftreg68a[3:0], wire_l_mux72a_result};
	// synopsys translate_off
	initial
		h_shiftreg74a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg74a <= 5'b0;
		else  h_shiftreg74a <= {h_shiftreg74a[3:0], wire_l_mux78a_result};
	// synopsys translate_off
	initial
		h_shiftreg80a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg80a <= 5'b0;
		else  h_shiftreg80a <= {h_shiftreg80a[3:0], wire_l_mux84a_result};
	// synopsys translate_off
	initial
		h_shiftreg86a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg86a <= 5'b0;
		else  h_shiftreg86a <= {h_shiftreg86a[3:0], wire_l_mux90a_result};
	// synopsys translate_off
	initial
		h_shiftreg8a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg8a <= 5'b0;
		else  h_shiftreg8a <= {h_shiftreg8a[3:0], wire_l_mux12a_result};
	// synopsys translate_off
	initial
		h_shiftreg92a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg92a <= 5'b0;
		else  h_shiftreg92a <= {h_shiftreg92a[3:0], wire_l_mux96a_result};
	// synopsys translate_off
	initial
		h_shiftreg98a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) h_shiftreg98a <= 5'b0;
		else  h_shiftreg98a <= {h_shiftreg98a[3:0], wire_l_mux102a_result};
	// synopsys translate_off
	initial
		int_bitslip_reg = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		  int_bitslip_reg <= int_bitslip;
	// synopsys translate_off
	initial
		l_shiftreg13a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg13a <= 5'b0;
		else  l_shiftreg13a <= {l_shiftreg13a[3:0], wire_h_mux17a_result};
	// synopsys translate_off
	initial
		l_shiftreg19a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg19a <= 5'b0;
		else  l_shiftreg19a <= {l_shiftreg19a[3:0], wire_h_mux23a_result};
	// synopsys translate_off
	initial
		l_shiftreg1a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg1a <= 5'b0;
		else  l_shiftreg1a <= {l_shiftreg1a[3:0], wire_h_mux5a_result};
	// synopsys translate_off
	initial
		l_shiftreg25a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg25a <= 5'b0;
		else  l_shiftreg25a <= {l_shiftreg25a[3:0], wire_h_mux29a_result};
	// synopsys translate_off
	initial
		l_shiftreg31a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg31a <= 5'b0;
		else  l_shiftreg31a <= {l_shiftreg31a[3:0], wire_h_mux35a_result};
	// synopsys translate_off
	initial
		l_shiftreg37a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg37a <= 5'b0;
		else  l_shiftreg37a <= {l_shiftreg37a[3:0], wire_h_mux41a_result};
	// synopsys translate_off
	initial
		l_shiftreg43a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg43a <= 5'b0;
		else  l_shiftreg43a <= {l_shiftreg43a[3:0], wire_h_mux47a_result};
	// synopsys translate_off
	initial
		l_shiftreg49a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg49a <= 5'b0;
		else  l_shiftreg49a <= {l_shiftreg49a[3:0], wire_h_mux53a_result};
	// synopsys translate_off
	initial
		l_shiftreg55a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg55a <= 5'b0;
		else  l_shiftreg55a <= {l_shiftreg55a[3:0], wire_h_mux59a_result};
	// synopsys translate_off
	initial
		l_shiftreg61a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg61a <= 5'b0;
		else  l_shiftreg61a <= {l_shiftreg61a[3:0], wire_h_mux65a_result};
	// synopsys translate_off
	initial
		l_shiftreg67a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg67a <= 5'b0;
		else  l_shiftreg67a <= {l_shiftreg67a[3:0], wire_h_mux71a_result};
	// synopsys translate_off
	initial
		l_shiftreg73a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg73a <= 5'b0;
		else  l_shiftreg73a <= {l_shiftreg73a[3:0], wire_h_mux77a_result};
	// synopsys translate_off
	initial
		l_shiftreg79a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg79a <= 5'b0;
		else  l_shiftreg79a <= {l_shiftreg79a[3:0], wire_h_mux83a_result};
	// synopsys translate_off
	initial
		l_shiftreg7a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg7a <= 5'b0;
		else  l_shiftreg7a <= {l_shiftreg7a[3:0], wire_h_mux11a_result};
	// synopsys translate_off
	initial
		l_shiftreg85a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg85a <= 5'b0;
		else  l_shiftreg85a <= {l_shiftreg85a[3:0], wire_h_mux89a_result};
	// synopsys translate_off
	initial
		l_shiftreg91a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg91a <= 5'b0;
		else  l_shiftreg91a <= {l_shiftreg91a[3:0], wire_h_mux95a_result};
	// synopsys translate_off
	initial
		l_shiftreg97a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock or  posedge w_reset)
		if (w_reset == 1'b1) l_shiftreg97a <= 5'b0;
		else  l_shiftreg97a <= {l_shiftreg97a[3:0], wire_h_mux101a_result};
	// synopsys translate_off
	initial
		rx_data_align_reg = 0;
	// synopsys translate_on
	always @ ( posedge slow_clock)
		  rx_data_align_reg <= rx_data_align;
	// synopsys translate_off
	initial
		rx_reg = 0;
	// synopsys translate_on
	always @ ( posedge slow_clock or  posedge w_reset)
		if (w_reset == 1'b1) rx_reg <= 170'b0;
		else  rx_reg <= rx_out_wire;
	altlvds_rx0_dffpipe   h_dffpipe
	( 
	.clock(fast_clock),
	.clrn((~ w_reset)),
	.d(ddio_dataout_h_int),
	.q(wire_h_dffpipe_q));
	altlvds_rx0_dffpipe   l_dffpipe
	( 
	.clock(fast_clock),
	.clrn((~ w_reset)),
	.d(ddio_dataout_l_int),
	.q(wire_l_dffpipe_q));
	altlvds_rx0_cntr   bitslip_cntr
	( 
	.clock(fast_clock),
	.cnt_en(bitslip),
	.q(wire_bitslip_cntr_q));
	altlvds_rx0_mux   h_mux101a
	( 
	.data({cda_l_shiftreg100a[4], cda_h_shiftreg99a[3], cda_l_shiftreg100a[3], cda_h_shiftreg99a[2], cda_l_shiftreg100a[2], cda_h_shiftreg99a[1], cda_l_shiftreg100a[1], cda_h_shiftreg99a[0], cda_l_shiftreg100a[0], ddio_dataout_h[16]}),
	.result(wire_h_mux101a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux11a
	( 
	.data({cda_l_shiftreg10a[4], cda_h_shiftreg9a[3], cda_l_shiftreg10a[3], cda_h_shiftreg9a[2], cda_l_shiftreg10a[2], cda_h_shiftreg9a[1], cda_l_shiftreg10a[1], cda_h_shiftreg9a[0], cda_l_shiftreg10a[0], ddio_dataout_h[1]}),
	.result(wire_h_mux11a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux17a
	( 
	.data({cda_l_shiftreg16a[4], cda_h_shiftreg15a[3], cda_l_shiftreg16a[3], cda_h_shiftreg15a[2], cda_l_shiftreg16a[2], cda_h_shiftreg15a[1], cda_l_shiftreg16a[1], cda_h_shiftreg15a[0], cda_l_shiftreg16a[0], ddio_dataout_h[2]}),
	.result(wire_h_mux17a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux23a
	( 
	.data({cda_l_shiftreg22a[4], cda_h_shiftreg21a[3], cda_l_shiftreg22a[3], cda_h_shiftreg21a[2], cda_l_shiftreg22a[2], cda_h_shiftreg21a[1], cda_l_shiftreg22a[1], cda_h_shiftreg21a[0], cda_l_shiftreg22a[0], ddio_dataout_h[3]}),
	.result(wire_h_mux23a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux29a
	( 
	.data({cda_l_shiftreg28a[4], cda_h_shiftreg27a[3], cda_l_shiftreg28a[3], cda_h_shiftreg27a[2], cda_l_shiftreg28a[2], cda_h_shiftreg27a[1], cda_l_shiftreg28a[1], cda_h_shiftreg27a[0], cda_l_shiftreg28a[0], ddio_dataout_h[4]}),
	.result(wire_h_mux29a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux35a
	( 
	.data({cda_l_shiftreg34a[4], cda_h_shiftreg33a[3], cda_l_shiftreg34a[3], cda_h_shiftreg33a[2], cda_l_shiftreg34a[2], cda_h_shiftreg33a[1], cda_l_shiftreg34a[1], cda_h_shiftreg33a[0], cda_l_shiftreg34a[0], ddio_dataout_h[5]}),
	.result(wire_h_mux35a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux41a
	( 
	.data({cda_l_shiftreg40a[4], cda_h_shiftreg39a[3], cda_l_shiftreg40a[3], cda_h_shiftreg39a[2], cda_l_shiftreg40a[2], cda_h_shiftreg39a[1], cda_l_shiftreg40a[1], cda_h_shiftreg39a[0], cda_l_shiftreg40a[0], ddio_dataout_h[6]}),
	.result(wire_h_mux41a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux47a
	( 
	.data({cda_l_shiftreg46a[4], cda_h_shiftreg45a[3], cda_l_shiftreg46a[3], cda_h_shiftreg45a[2], cda_l_shiftreg46a[2], cda_h_shiftreg45a[1], cda_l_shiftreg46a[1], cda_h_shiftreg45a[0], cda_l_shiftreg46a[0], ddio_dataout_h[7]}),
	.result(wire_h_mux47a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux53a
	( 
	.data({cda_l_shiftreg52a[4], cda_h_shiftreg51a[3], cda_l_shiftreg52a[3], cda_h_shiftreg51a[2], cda_l_shiftreg52a[2], cda_h_shiftreg51a[1], cda_l_shiftreg52a[1], cda_h_shiftreg51a[0], cda_l_shiftreg52a[0], ddio_dataout_h[8]}),
	.result(wire_h_mux53a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux59a
	( 
	.data({cda_l_shiftreg58a[4], cda_h_shiftreg57a[3], cda_l_shiftreg58a[3], cda_h_shiftreg57a[2], cda_l_shiftreg58a[2], cda_h_shiftreg57a[1], cda_l_shiftreg58a[1], cda_h_shiftreg57a[0], cda_l_shiftreg58a[0], ddio_dataout_h[9]}),
	.result(wire_h_mux59a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux5a
	( 
	.data({cda_l_shiftreg4a[4], cda_h_shiftreg3a[3], cda_l_shiftreg4a[3], cda_h_shiftreg3a[2], cda_l_shiftreg4a[2], cda_h_shiftreg3a[1], cda_l_shiftreg4a[1], cda_h_shiftreg3a[0], cda_l_shiftreg4a[0], ddio_dataout_h[0]}),
	.result(wire_h_mux5a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux65a
	( 
	.data({cda_l_shiftreg64a[4], cda_h_shiftreg63a[3], cda_l_shiftreg64a[3], cda_h_shiftreg63a[2], cda_l_shiftreg64a[2], cda_h_shiftreg63a[1], cda_l_shiftreg64a[1], cda_h_shiftreg63a[0], cda_l_shiftreg64a[0], ddio_dataout_h[10]}),
	.result(wire_h_mux65a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux71a
	( 
	.data({cda_l_shiftreg70a[4], cda_h_shiftreg69a[3], cda_l_shiftreg70a[3], cda_h_shiftreg69a[2], cda_l_shiftreg70a[2], cda_h_shiftreg69a[1], cda_l_shiftreg70a[1], cda_h_shiftreg69a[0], cda_l_shiftreg70a[0], ddio_dataout_h[11]}),
	.result(wire_h_mux71a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux77a
	( 
	.data({cda_l_shiftreg76a[4], cda_h_shiftreg75a[3], cda_l_shiftreg76a[3], cda_h_shiftreg75a[2], cda_l_shiftreg76a[2], cda_h_shiftreg75a[1], cda_l_shiftreg76a[1], cda_h_shiftreg75a[0], cda_l_shiftreg76a[0], ddio_dataout_h[12]}),
	.result(wire_h_mux77a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux83a
	( 
	.data({cda_l_shiftreg82a[4], cda_h_shiftreg81a[3], cda_l_shiftreg82a[3], cda_h_shiftreg81a[2], cda_l_shiftreg82a[2], cda_h_shiftreg81a[1], cda_l_shiftreg82a[1], cda_h_shiftreg81a[0], cda_l_shiftreg82a[0], ddio_dataout_h[13]}),
	.result(wire_h_mux83a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux89a
	( 
	.data({cda_l_shiftreg88a[4], cda_h_shiftreg87a[3], cda_l_shiftreg88a[3], cda_h_shiftreg87a[2], cda_l_shiftreg88a[2], cda_h_shiftreg87a[1], cda_l_shiftreg88a[1], cda_h_shiftreg87a[0], cda_l_shiftreg88a[0], ddio_dataout_h[14]}),
	.result(wire_h_mux89a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   h_mux95a
	( 
	.data({cda_l_shiftreg94a[4], cda_h_shiftreg93a[3], cda_l_shiftreg94a[3], cda_h_shiftreg93a[2], cda_l_shiftreg94a[2], cda_h_shiftreg93a[1], cda_l_shiftreg94a[1], cda_h_shiftreg93a[0], cda_l_shiftreg94a[0], ddio_dataout_h[15]}),
	.result(wire_h_mux95a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux102a
	( 
	.data({cda_h_shiftreg99a[3], cda_l_shiftreg100a[3], cda_h_shiftreg99a[2], cda_l_shiftreg100a[2], cda_h_shiftreg99a[1], cda_l_shiftreg100a[1], cda_h_shiftreg99a[0], cda_l_shiftreg100a[0], ddio_dataout_h[16], ddio_dataout_l[16]}),
	.result(wire_l_mux102a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux12a
	( 
	.data({cda_h_shiftreg9a[3], cda_l_shiftreg10a[3], cda_h_shiftreg9a[2], cda_l_shiftreg10a[2], cda_h_shiftreg9a[1], cda_l_shiftreg10a[1], cda_h_shiftreg9a[0], cda_l_shiftreg10a[0], ddio_dataout_h[1], ddio_dataout_l[1]}),
	.result(wire_l_mux12a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux18a
	( 
	.data({cda_h_shiftreg15a[3], cda_l_shiftreg16a[3], cda_h_shiftreg15a[2], cda_l_shiftreg16a[2], cda_h_shiftreg15a[1], cda_l_shiftreg16a[1], cda_h_shiftreg15a[0], cda_l_shiftreg16a[0], ddio_dataout_h[2], ddio_dataout_l[2]}),
	.result(wire_l_mux18a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux24a
	( 
	.data({cda_h_shiftreg21a[3], cda_l_shiftreg22a[3], cda_h_shiftreg21a[2], cda_l_shiftreg22a[2], cda_h_shiftreg21a[1], cda_l_shiftreg22a[1], cda_h_shiftreg21a[0], cda_l_shiftreg22a[0], ddio_dataout_h[3], ddio_dataout_l[3]}),
	.result(wire_l_mux24a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux30a
	( 
	.data({cda_h_shiftreg27a[3], cda_l_shiftreg28a[3], cda_h_shiftreg27a[2], cda_l_shiftreg28a[2], cda_h_shiftreg27a[1], cda_l_shiftreg28a[1], cda_h_shiftreg27a[0], cda_l_shiftreg28a[0], ddio_dataout_h[4], ddio_dataout_l[4]}),
	.result(wire_l_mux30a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux36a
	( 
	.data({cda_h_shiftreg33a[3], cda_l_shiftreg34a[3], cda_h_shiftreg33a[2], cda_l_shiftreg34a[2], cda_h_shiftreg33a[1], cda_l_shiftreg34a[1], cda_h_shiftreg33a[0], cda_l_shiftreg34a[0], ddio_dataout_h[5], ddio_dataout_l[5]}),
	.result(wire_l_mux36a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux42a
	( 
	.data({cda_h_shiftreg39a[3], cda_l_shiftreg40a[3], cda_h_shiftreg39a[2], cda_l_shiftreg40a[2], cda_h_shiftreg39a[1], cda_l_shiftreg40a[1], cda_h_shiftreg39a[0], cda_l_shiftreg40a[0], ddio_dataout_h[6], ddio_dataout_l[6]}),
	.result(wire_l_mux42a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux48a
	( 
	.data({cda_h_shiftreg45a[3], cda_l_shiftreg46a[3], cda_h_shiftreg45a[2], cda_l_shiftreg46a[2], cda_h_shiftreg45a[1], cda_l_shiftreg46a[1], cda_h_shiftreg45a[0], cda_l_shiftreg46a[0], ddio_dataout_h[7], ddio_dataout_l[7]}),
	.result(wire_l_mux48a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux54a
	( 
	.data({cda_h_shiftreg51a[3], cda_l_shiftreg52a[3], cda_h_shiftreg51a[2], cda_l_shiftreg52a[2], cda_h_shiftreg51a[1], cda_l_shiftreg52a[1], cda_h_shiftreg51a[0], cda_l_shiftreg52a[0], ddio_dataout_h[8], ddio_dataout_l[8]}),
	.result(wire_l_mux54a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux60a
	( 
	.data({cda_h_shiftreg57a[3], cda_l_shiftreg58a[3], cda_h_shiftreg57a[2], cda_l_shiftreg58a[2], cda_h_shiftreg57a[1], cda_l_shiftreg58a[1], cda_h_shiftreg57a[0], cda_l_shiftreg58a[0], ddio_dataout_h[9], ddio_dataout_l[9]}),
	.result(wire_l_mux60a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux66a
	( 
	.data({cda_h_shiftreg63a[3], cda_l_shiftreg64a[3], cda_h_shiftreg63a[2], cda_l_shiftreg64a[2], cda_h_shiftreg63a[1], cda_l_shiftreg64a[1], cda_h_shiftreg63a[0], cda_l_shiftreg64a[0], ddio_dataout_h[10], ddio_dataout_l[10]}),
	.result(wire_l_mux66a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux6a
	( 
	.data({cda_h_shiftreg3a[3], cda_l_shiftreg4a[3], cda_h_shiftreg3a[2], cda_l_shiftreg4a[2], cda_h_shiftreg3a[1], cda_l_shiftreg4a[1], cda_h_shiftreg3a[0], cda_l_shiftreg4a[0], ddio_dataout_h[0], ddio_dataout_l[0]}),
	.result(wire_l_mux6a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux72a
	( 
	.data({cda_h_shiftreg69a[3], cda_l_shiftreg70a[3], cda_h_shiftreg69a[2], cda_l_shiftreg70a[2], cda_h_shiftreg69a[1], cda_l_shiftreg70a[1], cda_h_shiftreg69a[0], cda_l_shiftreg70a[0], ddio_dataout_h[11], ddio_dataout_l[11]}),
	.result(wire_l_mux72a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux78a
	( 
	.data({cda_h_shiftreg75a[3], cda_l_shiftreg76a[3], cda_h_shiftreg75a[2], cda_l_shiftreg76a[2], cda_h_shiftreg75a[1], cda_l_shiftreg76a[1], cda_h_shiftreg75a[0], cda_l_shiftreg76a[0], ddio_dataout_h[12], ddio_dataout_l[12]}),
	.result(wire_l_mux78a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux84a
	( 
	.data({cda_h_shiftreg81a[3], cda_l_shiftreg82a[3], cda_h_shiftreg81a[2], cda_l_shiftreg82a[2], cda_h_shiftreg81a[1], cda_l_shiftreg82a[1], cda_h_shiftreg81a[0], cda_l_shiftreg82a[0], ddio_dataout_h[13], ddio_dataout_l[13]}),
	.result(wire_l_mux84a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux90a
	( 
	.data({cda_h_shiftreg87a[3], cda_l_shiftreg88a[3], cda_h_shiftreg87a[2], cda_l_shiftreg88a[2], cda_h_shiftreg87a[1], cda_l_shiftreg88a[1], cda_h_shiftreg87a[0], cda_l_shiftreg88a[0], ddio_dataout_h[14], ddio_dataout_l[14]}),
	.result(wire_l_mux90a_result),
	.sel(bitslip_en));
	altlvds_rx0_mux   l_mux96a
	( 
	.data({cda_h_shiftreg93a[3], cda_l_shiftreg94a[3], cda_h_shiftreg93a[2], cda_l_shiftreg94a[2], cda_h_shiftreg93a[1], cda_l_shiftreg94a[1], cda_h_shiftreg93a[0], cda_l_shiftreg94a[0], ddio_dataout_h[15], ddio_dataout_l[15]}),
	.result(wire_l_mux96a_result),
	.sel(bitslip_en));
	cycloneiii_pll   lvds_rx_pll
	( 
	.activeclock(),
	.areset(pll_areset),
	.clk(wire_lvds_rx_pll_clk),
	.clkbad(),
	.fbin(wire_lvds_rx_pll_fbout),
	.fbout(wire_lvds_rx_pll_fbout),
	.inclk({1'b0, rx_inclock}),
	.locked(),
	.phasedone(),
	.scandataout(),
	.scandone(),
	.vcooverrange(),
	.vcounderrange()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clkswitch(1'b0),
	.configupdate(1'b0),
	.pfdena(1'b1),
	.phasecounterselect({3{1'b0}}),
	.phasestep(1'b0),
	.phaseupdown(1'b0),
	.scanclk(1'b0),
	.scanclkena(1'b1),
	.scandata(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		lvds_rx_pll.clk0_divide_by = 1,
		lvds_rx_pll.clk0_multiply_by = 1,
		lvds_rx_pll.clk0_phase_shift = "-2500",
		lvds_rx_pll.clk1_divide_by = 5,
		lvds_rx_pll.clk1_multiply_by = 1,
		lvds_rx_pll.clk1_phase_shift = "-2500",
		lvds_rx_pll.inclk0_input_frequency = 10000,
		lvds_rx_pll.operation_mode = "source_synchronous",
		lvds_rx_pll.lpm_type = "cycloneiii_pll";
	assign
		bitslip = ((~ int_bitslip_reg) & int_bitslip),
		bitslip_en = wire_bitslip_cntr_q,
		ddio_dataout_h = wire_h_dffpipe_q,
		ddio_dataout_h_int = wire_ddio_in_dataout_h,
		ddio_dataout_l = wire_l_dffpipe_q,
		ddio_dataout_l_int = wire_ddio_in_dataout_l,
		fast_clock = wire_lvds_rx_pll_clk[0],
		int_bitslip = rx_data_align_reg,
		rx_out = rx_reg,
		rx_out_wire = {l_shiftreg97a[4], h_shiftreg98a[4], l_shiftreg97a[3], h_shiftreg98a[3], l_shiftreg97a[2], h_shiftreg98a[2], l_shiftreg97a[1], h_shiftreg98a[1], l_shiftreg97a[0], h_shiftreg98a[0], l_shiftreg91a[4], h_shiftreg92a[4], l_shiftreg91a[3], h_shiftreg92a[3], l_shiftreg91a[2], h_shiftreg92a[2], l_shiftreg91a[1], h_shiftreg92a[1], l_shiftreg91a[0], h_shiftreg92a[0], l_shiftreg85a[4], h_shiftreg86a[4], l_shiftreg85a[3], h_shiftreg86a[3], l_shiftreg85a[2], h_shiftreg86a[2], l_shiftreg85a[1], h_shiftreg86a[1], l_shiftreg85a[0], h_shiftreg86a[0], l_shiftreg79a[4], h_shiftreg80a[4], l_shiftreg79a[3], h_shiftreg80a[3], l_shiftreg79a[2], h_shiftreg80a[2], l_shiftreg79a[1], h_shiftreg80a[1], l_shiftreg79a[0], h_shiftreg80a[0], l_shiftreg73a[4], h_shiftreg74a[4], l_shiftreg73a[3], h_shiftreg74a[3], l_shiftreg73a[2], h_shiftreg74a[2], l_shiftreg73a[1], h_shiftreg74a[1], l_shiftreg73a[0], h_shiftreg74a[0], l_shiftreg67a[4], h_shiftreg68a[4], l_shiftreg67a[3], h_shiftreg68a[3], l_shiftreg67a[2], h_shiftreg68a[2], l_shiftreg67a[1], h_shiftreg68a[1], l_shiftreg67a[0], h_shiftreg68a[0], l_shiftreg61a[4], h_shiftreg62a[4], l_shiftreg61a[3], h_shiftreg62a[3], l_shiftreg61a[2], h_shiftreg62a[2], l_shiftreg61a[1], h_shiftreg62a[1], l_shiftreg61a[0], h_shiftreg62a[0], l_shiftreg55a[4], h_shiftreg56a[4], l_shiftreg55a[3], h_shiftreg56a[3], l_shiftreg55a[2], h_shiftreg56a[2], l_shiftreg55a[1], h_shiftreg56a[1], l_shiftreg55a[0], h_shiftreg56a[0], l_shiftreg49a[4], h_shiftreg50a[4], l_shiftreg49a[3], h_shiftreg50a[3], l_shiftreg49a[2], h_shiftreg50a[2], l_shiftreg49a[1], h_shiftreg50a[1], l_shiftreg49a[0], h_shiftreg50a[0], l_shiftreg43a[4], h_shiftreg44a[4], l_shiftreg43a[3], h_shiftreg44a[3], l_shiftreg43a[2], h_shiftreg44a[2], l_shiftreg43a[1], h_shiftreg44a[1], l_shiftreg43a[0], h_shiftreg44a[0], l_shiftreg37a[4], h_shiftreg38a[4], l_shiftreg37a[3], h_shiftreg38a[3], l_shiftreg37a[2], h_shiftreg38a[2], l_shiftreg37a[1], h_shiftreg38a[1], l_shiftreg37a[0], h_shiftreg38a[0], l_shiftreg31a[4], h_shiftreg32a[4], l_shiftreg31a[3]
, h_shiftreg32a[3], l_shiftreg31a[2], h_shiftreg32a[2], l_shiftreg31a[1], h_shiftreg32a[1], l_shiftreg31a[0], h_shiftreg32a[0], l_shiftreg25a[4], h_shiftreg26a[4], l_shiftreg25a[3], h_shiftreg26a[3], l_shiftreg25a[2], h_shiftreg26a[2], l_shiftreg25a[1], h_shiftreg26a[1], l_shiftreg25a[0], h_shiftreg26a[0], l_shiftreg19a[4], h_shiftreg20a[4], l_shiftreg19a[3], h_shiftreg20a[3], l_shiftreg19a[2], h_shiftreg20a[2], l_shiftreg19a[1], h_shiftreg20a[1], l_shiftreg19a[0], h_shiftreg20a[0], l_shiftreg13a[4], h_shiftreg14a[4], l_shiftreg13a[3], h_shiftreg14a[3], l_shiftreg13a[2], h_shiftreg14a[2], l_shiftreg13a[1], h_shiftreg14a[1], l_shiftreg13a[0], h_shiftreg14a[0], l_shiftreg7a[4], h_shiftreg8a[4], l_shiftreg7a[3], h_shiftreg8a[3], l_shiftreg7a[2], h_shiftreg8a[2], l_shiftreg7a[1], h_shiftreg8a[1], l_shiftreg7a[0], h_shiftreg8a[0], l_shiftreg1a[4], h_shiftreg2a[4], l_shiftreg1a[3], h_shiftreg2a[3], l_shiftreg1a[2], h_shiftreg2a[2], l_shiftreg1a[1], h_shiftreg2a[1], l_shiftreg1a[0], h_shiftreg2a[0]},
		rx_outclock = slow_clock,
		slow_clock = wire_lvds_rx_pll_clk[1],
		w_reset = pll_areset;
endmodule //altlvds_rx0_lvds_rx
//VALID FILE
