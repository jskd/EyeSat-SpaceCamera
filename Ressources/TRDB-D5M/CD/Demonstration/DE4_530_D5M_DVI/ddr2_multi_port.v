//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2010 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Read_Port0_avalon_master_arbitrator (
                                             // inputs:
                                              Read_Port0_avalon_master_address,
                                              Read_Port0_avalon_master_burstcount,
                                              Read_Port0_avalon_master_chipselect,
                                              Read_Port0_avalon_master_read,
                                              Read_Port0_granted_ddr2_multi_port_burst_0_upstream,
                                              Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream,
                                              Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream,
                                              Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register,
                                              Read_Port0_requests_ddr2_multi_port_burst_0_upstream,
                                              clk,
                                              d1_ddr2_multi_port_burst_0_upstream_end_xfer,
                                              ddr2_multi_port_burst_0_upstream_readdata_from_sa,
                                              ddr2_multi_port_burst_0_upstream_waitrequest_from_sa,
                                              reset_n,

                                             // outputs:
                                              Read_Port0_avalon_master_address_to_slave,
                                              Read_Port0_avalon_master_readdata,
                                              Read_Port0_avalon_master_readdatavalid,
                                              Read_Port0_avalon_master_reset_n,
                                              Read_Port0_avalon_master_waitrequest,
                                              Read_Port0_latency_counter
                                           )
;

  output  [ 31: 0] Read_Port0_avalon_master_address_to_slave;
  output  [255: 0] Read_Port0_avalon_master_readdata;
  output           Read_Port0_avalon_master_readdatavalid;
  output           Read_Port0_avalon_master_reset_n;
  output           Read_Port0_avalon_master_waitrequest;
  output           Read_Port0_latency_counter;
  input   [ 31: 0] Read_Port0_avalon_master_address;
  input   [  7: 0] Read_Port0_avalon_master_burstcount;
  input            Read_Port0_avalon_master_chipselect;
  input            Read_Port0_avalon_master_read;
  input            Read_Port0_granted_ddr2_multi_port_burst_0_upstream;
  input            Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream;
  input            Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream;
  input            Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register;
  input            Read_Port0_requests_ddr2_multi_port_burst_0_upstream;
  input            clk;
  input            d1_ddr2_multi_port_burst_0_upstream_end_xfer;
  input   [255: 0] ddr2_multi_port_burst_0_upstream_readdata_from_sa;
  input            ddr2_multi_port_burst_0_upstream_waitrequest_from_sa;
  input            reset_n;

  reg     [ 31: 0] Read_Port0_avalon_master_address_last_time;
  wire    [ 31: 0] Read_Port0_avalon_master_address_to_slave;
  reg     [  7: 0] Read_Port0_avalon_master_burstcount_last_time;
  reg              Read_Port0_avalon_master_chipselect_last_time;
  reg              Read_Port0_avalon_master_read_last_time;
  wire    [255: 0] Read_Port0_avalon_master_readdata;
  wire             Read_Port0_avalon_master_readdatavalid;
  wire             Read_Port0_avalon_master_reset_n;
  wire             Read_Port0_avalon_master_run;
  wire             Read_Port0_avalon_master_waitrequest;
  wire             Read_Port0_latency_counter;
  reg              active_and_waiting_last_time;
  wire             pre_flush_Read_Port0_avalon_master_readdatavalid;
  wire             r_0;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream | ~Read_Port0_requests_ddr2_multi_port_burst_0_upstream) & ((~Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream | ~Read_Port0_avalon_master_chipselect | (1 & ~ddr2_multi_port_burst_0_upstream_waitrequest_from_sa & Read_Port0_avalon_master_chipselect)));

  //cascaded wait assignment, which is an e_assign
  assign Read_Port0_avalon_master_run = r_0;

  //optimize select-logic by passing only those address bits which matter.
  assign Read_Port0_avalon_master_address_to_slave = {2'b0,
    Read_Port0_avalon_master_address[29 : 0]};

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_Read_Port0_avalon_master_readdatavalid = Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign Read_Port0_avalon_master_readdatavalid = 0 |
    pre_flush_Read_Port0_avalon_master_readdatavalid;

  //Read_Port0/avalon_master readdata mux, which is an e_mux
  assign Read_Port0_avalon_master_readdata = ddr2_multi_port_burst_0_upstream_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign Read_Port0_avalon_master_waitrequest = ~Read_Port0_avalon_master_run;

  //latent max counter, which is an e_assign
  assign Read_Port0_latency_counter = 0;

  //Read_Port0_avalon_master_reset_n assignment, which is an e_assign
  assign Read_Port0_avalon_master_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Read_Port0_avalon_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Read_Port0_avalon_master_address_last_time <= 0;
      else 
        Read_Port0_avalon_master_address_last_time <= Read_Port0_avalon_master_address;
    end


  //Read_Port0/avalon_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= Read_Port0_avalon_master_waitrequest & Read_Port0_avalon_master_chipselect;
    end


  //Read_Port0_avalon_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Read_Port0_avalon_master_address != Read_Port0_avalon_master_address_last_time))
        begin
          $write("%0d ns: Read_Port0_avalon_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //Read_Port0_avalon_master_chipselect check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Read_Port0_avalon_master_chipselect_last_time <= 0;
      else 
        Read_Port0_avalon_master_chipselect_last_time <= Read_Port0_avalon_master_chipselect;
    end


  //Read_Port0_avalon_master_chipselect matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Read_Port0_avalon_master_chipselect != Read_Port0_avalon_master_chipselect_last_time))
        begin
          $write("%0d ns: Read_Port0_avalon_master_chipselect did not heed wait!!!", $time);
          $stop;
        end
    end


  //Read_Port0_avalon_master_burstcount check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Read_Port0_avalon_master_burstcount_last_time <= 0;
      else 
        Read_Port0_avalon_master_burstcount_last_time <= Read_Port0_avalon_master_burstcount;
    end


  //Read_Port0_avalon_master_burstcount matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Read_Port0_avalon_master_burstcount != Read_Port0_avalon_master_burstcount_last_time))
        begin
          $write("%0d ns: Read_Port0_avalon_master_burstcount did not heed wait!!!", $time);
          $stop;
        end
    end


  //Read_Port0_avalon_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Read_Port0_avalon_master_read_last_time <= 0;
      else 
        Read_Port0_avalon_master_read_last_time <= Read_Port0_avalon_master_read;
    end


  //Read_Port0_avalon_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Read_Port0_avalon_master_read != Read_Port0_avalon_master_read_last_time))
        begin
          $write("%0d ns: Read_Port0_avalon_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Write_Port0_avalon_master_arbitrator (
                                              // inputs:
                                               Write_Port0_avalon_master_address,
                                               Write_Port0_avalon_master_burstcount,
                                               Write_Port0_avalon_master_byteenable,
                                               Write_Port0_avalon_master_chipselect,
                                               Write_Port0_avalon_master_write,
                                               Write_Port0_avalon_master_writedata,
                                               Write_Port0_granted_ddr2_multi_port_burst_1_upstream,
                                               Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream,
                                               Write_Port0_requests_ddr2_multi_port_burst_1_upstream,
                                               clk,
                                               d1_ddr2_multi_port_burst_1_upstream_end_xfer,
                                               ddr2_multi_port_burst_1_upstream_waitrequest_from_sa,
                                               reset_n,

                                              // outputs:
                                               Write_Port0_avalon_master_address_to_slave,
                                               Write_Port0_avalon_master_reset_n,
                                               Write_Port0_avalon_master_waitrequest
                                            )
;

  output  [ 31: 0] Write_Port0_avalon_master_address_to_slave;
  output           Write_Port0_avalon_master_reset_n;
  output           Write_Port0_avalon_master_waitrequest;
  input   [ 31: 0] Write_Port0_avalon_master_address;
  input   [  7: 0] Write_Port0_avalon_master_burstcount;
  input   [ 31: 0] Write_Port0_avalon_master_byteenable;
  input            Write_Port0_avalon_master_chipselect;
  input            Write_Port0_avalon_master_write;
  input   [255: 0] Write_Port0_avalon_master_writedata;
  input            Write_Port0_granted_ddr2_multi_port_burst_1_upstream;
  input            Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream;
  input            Write_Port0_requests_ddr2_multi_port_burst_1_upstream;
  input            clk;
  input            d1_ddr2_multi_port_burst_1_upstream_end_xfer;
  input            ddr2_multi_port_burst_1_upstream_waitrequest_from_sa;
  input            reset_n;

  reg     [ 31: 0] Write_Port0_avalon_master_address_last_time;
  wire    [ 31: 0] Write_Port0_avalon_master_address_to_slave;
  reg     [  7: 0] Write_Port0_avalon_master_burstcount_last_time;
  reg     [ 31: 0] Write_Port0_avalon_master_byteenable_last_time;
  reg              Write_Port0_avalon_master_chipselect_last_time;
  wire             Write_Port0_avalon_master_reset_n;
  wire             Write_Port0_avalon_master_run;
  wire             Write_Port0_avalon_master_waitrequest;
  reg              Write_Port0_avalon_master_write_last_time;
  reg     [255: 0] Write_Port0_avalon_master_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_0;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & ((~Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream | ~Write_Port0_avalon_master_chipselect | (1 & ~ddr2_multi_port_burst_1_upstream_waitrequest_from_sa & Write_Port0_avalon_master_chipselect)));

  //cascaded wait assignment, which is an e_assign
  assign Write_Port0_avalon_master_run = r_0;

  //optimize select-logic by passing only those address bits which matter.
  assign Write_Port0_avalon_master_address_to_slave = {2'b0,
    Write_Port0_avalon_master_address[29 : 0]};

  //actual waitrequest port, which is an e_assign
  assign Write_Port0_avalon_master_waitrequest = ~Write_Port0_avalon_master_run;

  //Write_Port0_avalon_master_reset_n assignment, which is an e_assign
  assign Write_Port0_avalon_master_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Write_Port0_avalon_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Write_Port0_avalon_master_address_last_time <= 0;
      else 
        Write_Port0_avalon_master_address_last_time <= Write_Port0_avalon_master_address;
    end


  //Write_Port0/avalon_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= Write_Port0_avalon_master_waitrequest & Write_Port0_avalon_master_chipselect;
    end


  //Write_Port0_avalon_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Write_Port0_avalon_master_address != Write_Port0_avalon_master_address_last_time))
        begin
          $write("%0d ns: Write_Port0_avalon_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //Write_Port0_avalon_master_chipselect check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Write_Port0_avalon_master_chipselect_last_time <= 0;
      else 
        Write_Port0_avalon_master_chipselect_last_time <= Write_Port0_avalon_master_chipselect;
    end


  //Write_Port0_avalon_master_chipselect matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Write_Port0_avalon_master_chipselect != Write_Port0_avalon_master_chipselect_last_time))
        begin
          $write("%0d ns: Write_Port0_avalon_master_chipselect did not heed wait!!!", $time);
          $stop;
        end
    end


  //Write_Port0_avalon_master_burstcount check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Write_Port0_avalon_master_burstcount_last_time <= 0;
      else 
        Write_Port0_avalon_master_burstcount_last_time <= Write_Port0_avalon_master_burstcount;
    end


  //Write_Port0_avalon_master_burstcount matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Write_Port0_avalon_master_burstcount != Write_Port0_avalon_master_burstcount_last_time))
        begin
          $write("%0d ns: Write_Port0_avalon_master_burstcount did not heed wait!!!", $time);
          $stop;
        end
    end


  //Write_Port0_avalon_master_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Write_Port0_avalon_master_byteenable_last_time <= 0;
      else 
        Write_Port0_avalon_master_byteenable_last_time <= Write_Port0_avalon_master_byteenable;
    end


  //Write_Port0_avalon_master_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Write_Port0_avalon_master_byteenable != Write_Port0_avalon_master_byteenable_last_time))
        begin
          $write("%0d ns: Write_Port0_avalon_master_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //Write_Port0_avalon_master_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Write_Port0_avalon_master_write_last_time <= 0;
      else 
        Write_Port0_avalon_master_write_last_time <= Write_Port0_avalon_master_write;
    end


  //Write_Port0_avalon_master_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Write_Port0_avalon_master_write != Write_Port0_avalon_master_write_last_time))
        begin
          $write("%0d ns: Write_Port0_avalon_master_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //Write_Port0_avalon_master_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Write_Port0_avalon_master_writedata_last_time <= 0;
      else 
        Write_Port0_avalon_master_writedata_last_time <= Write_Port0_avalon_master_writedata;
    end


  //Write_Port0_avalon_master_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (Write_Port0_avalon_master_writedata != Write_Port0_avalon_master_writedata_last_time) & (Write_Port0_avalon_master_write & Write_Port0_avalon_master_chipselect))
        begin
          $write("%0d ns: Write_Port0_avalon_master_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module burstcount_fifo_for_ddr2_s1_module (
                                            // inputs:
                                             clear_fifo,
                                             clk,
                                             data_in,
                                             read,
                                             reset_n,
                                             sync_reset,
                                             write,

                                            // outputs:
                                             data_out,
                                             empty,
                                             fifo_contains_ones_n,
                                             full
                                          )
;

  output  [  2: 0] data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input   [  2: 0] data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire    [  2: 0] data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_10;
  reg              full_11;
  reg              full_12;
  reg              full_13;
  reg              full_14;
  reg              full_15;
  reg              full_16;
  reg              full_17;
  reg              full_18;
  reg              full_19;
  reg              full_2;
  reg              full_20;
  reg              full_21;
  reg              full_22;
  reg              full_23;
  reg              full_24;
  reg              full_25;
  reg              full_26;
  reg              full_27;
  reg              full_28;
  reg              full_29;
  reg              full_3;
  reg              full_30;
  reg              full_31;
  wire             full_32;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  reg              full_7;
  reg              full_8;
  reg              full_9;
  reg     [  6: 0] how_many_ones;
  wire    [  6: 0] one_count_minus_one;
  wire    [  6: 0] one_count_plus_one;
  wire             p0_full_0;
  wire    [  2: 0] p0_stage_0;
  wire             p10_full_10;
  wire    [  2: 0] p10_stage_10;
  wire             p11_full_11;
  wire    [  2: 0] p11_stage_11;
  wire             p12_full_12;
  wire    [  2: 0] p12_stage_12;
  wire             p13_full_13;
  wire    [  2: 0] p13_stage_13;
  wire             p14_full_14;
  wire    [  2: 0] p14_stage_14;
  wire             p15_full_15;
  wire    [  2: 0] p15_stage_15;
  wire             p16_full_16;
  wire    [  2: 0] p16_stage_16;
  wire             p17_full_17;
  wire    [  2: 0] p17_stage_17;
  wire             p18_full_18;
  wire    [  2: 0] p18_stage_18;
  wire             p19_full_19;
  wire    [  2: 0] p19_stage_19;
  wire             p1_full_1;
  wire    [  2: 0] p1_stage_1;
  wire             p20_full_20;
  wire    [  2: 0] p20_stage_20;
  wire             p21_full_21;
  wire    [  2: 0] p21_stage_21;
  wire             p22_full_22;
  wire    [  2: 0] p22_stage_22;
  wire             p23_full_23;
  wire    [  2: 0] p23_stage_23;
  wire             p24_full_24;
  wire    [  2: 0] p24_stage_24;
  wire             p25_full_25;
  wire    [  2: 0] p25_stage_25;
  wire             p26_full_26;
  wire    [  2: 0] p26_stage_26;
  wire             p27_full_27;
  wire    [  2: 0] p27_stage_27;
  wire             p28_full_28;
  wire    [  2: 0] p28_stage_28;
  wire             p29_full_29;
  wire    [  2: 0] p29_stage_29;
  wire             p2_full_2;
  wire    [  2: 0] p2_stage_2;
  wire             p30_full_30;
  wire    [  2: 0] p30_stage_30;
  wire             p31_full_31;
  wire    [  2: 0] p31_stage_31;
  wire             p3_full_3;
  wire    [  2: 0] p3_stage_3;
  wire             p4_full_4;
  wire    [  2: 0] p4_stage_4;
  wire             p5_full_5;
  wire    [  2: 0] p5_stage_5;
  wire             p6_full_6;
  wire    [  2: 0] p6_stage_6;
  wire             p7_full_7;
  wire    [  2: 0] p7_stage_7;
  wire             p8_full_8;
  wire    [  2: 0] p8_stage_8;
  wire             p9_full_9;
  wire    [  2: 0] p9_stage_9;
  reg     [  2: 0] stage_0;
  reg     [  2: 0] stage_1;
  reg     [  2: 0] stage_10;
  reg     [  2: 0] stage_11;
  reg     [  2: 0] stage_12;
  reg     [  2: 0] stage_13;
  reg     [  2: 0] stage_14;
  reg     [  2: 0] stage_15;
  reg     [  2: 0] stage_16;
  reg     [  2: 0] stage_17;
  reg     [  2: 0] stage_18;
  reg     [  2: 0] stage_19;
  reg     [  2: 0] stage_2;
  reg     [  2: 0] stage_20;
  reg     [  2: 0] stage_21;
  reg     [  2: 0] stage_22;
  reg     [  2: 0] stage_23;
  reg     [  2: 0] stage_24;
  reg     [  2: 0] stage_25;
  reg     [  2: 0] stage_26;
  reg     [  2: 0] stage_27;
  reg     [  2: 0] stage_28;
  reg     [  2: 0] stage_29;
  reg     [  2: 0] stage_3;
  reg     [  2: 0] stage_30;
  reg     [  2: 0] stage_31;
  reg     [  2: 0] stage_4;
  reg     [  2: 0] stage_5;
  reg     [  2: 0] stage_6;
  reg     [  2: 0] stage_7;
  reg     [  2: 0] stage_8;
  reg     [  2: 0] stage_9;
  wire    [  6: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_31;
  assign empty = !full_0;
  assign full_32 = 0;
  //data_31, which is an e_mux
  assign p31_stage_31 = ((full_32 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_31 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_31))
          if (sync_reset & full_31 & !((full_32 == 0) & read & write))
              stage_31 <= 0;
          else 
            stage_31 <= p31_stage_31;
    end


  //control_31, which is an e_mux
  assign p31_full_31 = ((read & !write) == 0)? full_30 :
    0;

  //control_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_31 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_31 <= 0;
          else 
            full_31 <= p31_full_31;
    end


  //data_30, which is an e_mux
  assign p30_stage_30 = ((full_31 & ~clear_fifo) == 0)? data_in :
    stage_31;

  //data_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_30 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_30))
          if (sync_reset & full_30 & !((full_31 == 0) & read & write))
              stage_30 <= 0;
          else 
            stage_30 <= p30_stage_30;
    end


  //control_30, which is an e_mux
  assign p30_full_30 = ((read & !write) == 0)? full_29 :
    full_31;

  //control_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_30 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_30 <= 0;
          else 
            full_30 <= p30_full_30;
    end


  //data_29, which is an e_mux
  assign p29_stage_29 = ((full_30 & ~clear_fifo) == 0)? data_in :
    stage_30;

  //data_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_29 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_29))
          if (sync_reset & full_29 & !((full_30 == 0) & read & write))
              stage_29 <= 0;
          else 
            stage_29 <= p29_stage_29;
    end


  //control_29, which is an e_mux
  assign p29_full_29 = ((read & !write) == 0)? full_28 :
    full_30;

  //control_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_29 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_29 <= 0;
          else 
            full_29 <= p29_full_29;
    end


  //data_28, which is an e_mux
  assign p28_stage_28 = ((full_29 & ~clear_fifo) == 0)? data_in :
    stage_29;

  //data_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_28 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_28))
          if (sync_reset & full_28 & !((full_29 == 0) & read & write))
              stage_28 <= 0;
          else 
            stage_28 <= p28_stage_28;
    end


  //control_28, which is an e_mux
  assign p28_full_28 = ((read & !write) == 0)? full_27 :
    full_29;

  //control_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_28 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_28 <= 0;
          else 
            full_28 <= p28_full_28;
    end


  //data_27, which is an e_mux
  assign p27_stage_27 = ((full_28 & ~clear_fifo) == 0)? data_in :
    stage_28;

  //data_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_27 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_27))
          if (sync_reset & full_27 & !((full_28 == 0) & read & write))
              stage_27 <= 0;
          else 
            stage_27 <= p27_stage_27;
    end


  //control_27, which is an e_mux
  assign p27_full_27 = ((read & !write) == 0)? full_26 :
    full_28;

  //control_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_27 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_27 <= 0;
          else 
            full_27 <= p27_full_27;
    end


  //data_26, which is an e_mux
  assign p26_stage_26 = ((full_27 & ~clear_fifo) == 0)? data_in :
    stage_27;

  //data_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_26 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_26))
          if (sync_reset & full_26 & !((full_27 == 0) & read & write))
              stage_26 <= 0;
          else 
            stage_26 <= p26_stage_26;
    end


  //control_26, which is an e_mux
  assign p26_full_26 = ((read & !write) == 0)? full_25 :
    full_27;

  //control_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_26 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_26 <= 0;
          else 
            full_26 <= p26_full_26;
    end


  //data_25, which is an e_mux
  assign p25_stage_25 = ((full_26 & ~clear_fifo) == 0)? data_in :
    stage_26;

  //data_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_25 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_25))
          if (sync_reset & full_25 & !((full_26 == 0) & read & write))
              stage_25 <= 0;
          else 
            stage_25 <= p25_stage_25;
    end


  //control_25, which is an e_mux
  assign p25_full_25 = ((read & !write) == 0)? full_24 :
    full_26;

  //control_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_25 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_25 <= 0;
          else 
            full_25 <= p25_full_25;
    end


  //data_24, which is an e_mux
  assign p24_stage_24 = ((full_25 & ~clear_fifo) == 0)? data_in :
    stage_25;

  //data_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_24 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_24))
          if (sync_reset & full_24 & !((full_25 == 0) & read & write))
              stage_24 <= 0;
          else 
            stage_24 <= p24_stage_24;
    end


  //control_24, which is an e_mux
  assign p24_full_24 = ((read & !write) == 0)? full_23 :
    full_25;

  //control_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_24 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_24 <= 0;
          else 
            full_24 <= p24_full_24;
    end


  //data_23, which is an e_mux
  assign p23_stage_23 = ((full_24 & ~clear_fifo) == 0)? data_in :
    stage_24;

  //data_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_23 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_23))
          if (sync_reset & full_23 & !((full_24 == 0) & read & write))
              stage_23 <= 0;
          else 
            stage_23 <= p23_stage_23;
    end


  //control_23, which is an e_mux
  assign p23_full_23 = ((read & !write) == 0)? full_22 :
    full_24;

  //control_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_23 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_23 <= 0;
          else 
            full_23 <= p23_full_23;
    end


  //data_22, which is an e_mux
  assign p22_stage_22 = ((full_23 & ~clear_fifo) == 0)? data_in :
    stage_23;

  //data_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_22 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_22))
          if (sync_reset & full_22 & !((full_23 == 0) & read & write))
              stage_22 <= 0;
          else 
            stage_22 <= p22_stage_22;
    end


  //control_22, which is an e_mux
  assign p22_full_22 = ((read & !write) == 0)? full_21 :
    full_23;

  //control_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_22 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_22 <= 0;
          else 
            full_22 <= p22_full_22;
    end


  //data_21, which is an e_mux
  assign p21_stage_21 = ((full_22 & ~clear_fifo) == 0)? data_in :
    stage_22;

  //data_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_21 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_21))
          if (sync_reset & full_21 & !((full_22 == 0) & read & write))
              stage_21 <= 0;
          else 
            stage_21 <= p21_stage_21;
    end


  //control_21, which is an e_mux
  assign p21_full_21 = ((read & !write) == 0)? full_20 :
    full_22;

  //control_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_21 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_21 <= 0;
          else 
            full_21 <= p21_full_21;
    end


  //data_20, which is an e_mux
  assign p20_stage_20 = ((full_21 & ~clear_fifo) == 0)? data_in :
    stage_21;

  //data_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_20 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_20))
          if (sync_reset & full_20 & !((full_21 == 0) & read & write))
              stage_20 <= 0;
          else 
            stage_20 <= p20_stage_20;
    end


  //control_20, which is an e_mux
  assign p20_full_20 = ((read & !write) == 0)? full_19 :
    full_21;

  //control_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_20 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_20 <= 0;
          else 
            full_20 <= p20_full_20;
    end


  //data_19, which is an e_mux
  assign p19_stage_19 = ((full_20 & ~clear_fifo) == 0)? data_in :
    stage_20;

  //data_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_19 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_19))
          if (sync_reset & full_19 & !((full_20 == 0) & read & write))
              stage_19 <= 0;
          else 
            stage_19 <= p19_stage_19;
    end


  //control_19, which is an e_mux
  assign p19_full_19 = ((read & !write) == 0)? full_18 :
    full_20;

  //control_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_19 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_19 <= 0;
          else 
            full_19 <= p19_full_19;
    end


  //data_18, which is an e_mux
  assign p18_stage_18 = ((full_19 & ~clear_fifo) == 0)? data_in :
    stage_19;

  //data_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_18 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_18))
          if (sync_reset & full_18 & !((full_19 == 0) & read & write))
              stage_18 <= 0;
          else 
            stage_18 <= p18_stage_18;
    end


  //control_18, which is an e_mux
  assign p18_full_18 = ((read & !write) == 0)? full_17 :
    full_19;

  //control_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_18 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_18 <= 0;
          else 
            full_18 <= p18_full_18;
    end


  //data_17, which is an e_mux
  assign p17_stage_17 = ((full_18 & ~clear_fifo) == 0)? data_in :
    stage_18;

  //data_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_17 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_17))
          if (sync_reset & full_17 & !((full_18 == 0) & read & write))
              stage_17 <= 0;
          else 
            stage_17 <= p17_stage_17;
    end


  //control_17, which is an e_mux
  assign p17_full_17 = ((read & !write) == 0)? full_16 :
    full_18;

  //control_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_17 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_17 <= 0;
          else 
            full_17 <= p17_full_17;
    end


  //data_16, which is an e_mux
  assign p16_stage_16 = ((full_17 & ~clear_fifo) == 0)? data_in :
    stage_17;

  //data_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_16 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_16))
          if (sync_reset & full_16 & !((full_17 == 0) & read & write))
              stage_16 <= 0;
          else 
            stage_16 <= p16_stage_16;
    end


  //control_16, which is an e_mux
  assign p16_full_16 = ((read & !write) == 0)? full_15 :
    full_17;

  //control_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_16 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_16 <= 0;
          else 
            full_16 <= p16_full_16;
    end


  //data_15, which is an e_mux
  assign p15_stage_15 = ((full_16 & ~clear_fifo) == 0)? data_in :
    stage_16;

  //data_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_15 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_15))
          if (sync_reset & full_15 & !((full_16 == 0) & read & write))
              stage_15 <= 0;
          else 
            stage_15 <= p15_stage_15;
    end


  //control_15, which is an e_mux
  assign p15_full_15 = ((read & !write) == 0)? full_14 :
    full_16;

  //control_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_15 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_15 <= 0;
          else 
            full_15 <= p15_full_15;
    end


  //data_14, which is an e_mux
  assign p14_stage_14 = ((full_15 & ~clear_fifo) == 0)? data_in :
    stage_15;

  //data_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_14 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_14))
          if (sync_reset & full_14 & !((full_15 == 0) & read & write))
              stage_14 <= 0;
          else 
            stage_14 <= p14_stage_14;
    end


  //control_14, which is an e_mux
  assign p14_full_14 = ((read & !write) == 0)? full_13 :
    full_15;

  //control_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_14 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_14 <= 0;
          else 
            full_14 <= p14_full_14;
    end


  //data_13, which is an e_mux
  assign p13_stage_13 = ((full_14 & ~clear_fifo) == 0)? data_in :
    stage_14;

  //data_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_13 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_13))
          if (sync_reset & full_13 & !((full_14 == 0) & read & write))
              stage_13 <= 0;
          else 
            stage_13 <= p13_stage_13;
    end


  //control_13, which is an e_mux
  assign p13_full_13 = ((read & !write) == 0)? full_12 :
    full_14;

  //control_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_13 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_13 <= 0;
          else 
            full_13 <= p13_full_13;
    end


  //data_12, which is an e_mux
  assign p12_stage_12 = ((full_13 & ~clear_fifo) == 0)? data_in :
    stage_13;

  //data_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_12 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_12))
          if (sync_reset & full_12 & !((full_13 == 0) & read & write))
              stage_12 <= 0;
          else 
            stage_12 <= p12_stage_12;
    end


  //control_12, which is an e_mux
  assign p12_full_12 = ((read & !write) == 0)? full_11 :
    full_13;

  //control_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_12 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_12 <= 0;
          else 
            full_12 <= p12_full_12;
    end


  //data_11, which is an e_mux
  assign p11_stage_11 = ((full_12 & ~clear_fifo) == 0)? data_in :
    stage_12;

  //data_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_11 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_11))
          if (sync_reset & full_11 & !((full_12 == 0) & read & write))
              stage_11 <= 0;
          else 
            stage_11 <= p11_stage_11;
    end


  //control_11, which is an e_mux
  assign p11_full_11 = ((read & !write) == 0)? full_10 :
    full_12;

  //control_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_11 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_11 <= 0;
          else 
            full_11 <= p11_full_11;
    end


  //data_10, which is an e_mux
  assign p10_stage_10 = ((full_11 & ~clear_fifo) == 0)? data_in :
    stage_11;

  //data_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_10 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_10))
          if (sync_reset & full_10 & !((full_11 == 0) & read & write))
              stage_10 <= 0;
          else 
            stage_10 <= p10_stage_10;
    end


  //control_10, which is an e_mux
  assign p10_full_10 = ((read & !write) == 0)? full_9 :
    full_11;

  //control_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_10 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_10 <= 0;
          else 
            full_10 <= p10_full_10;
    end


  //data_9, which is an e_mux
  assign p9_stage_9 = ((full_10 & ~clear_fifo) == 0)? data_in :
    stage_10;

  //data_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_9 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_9))
          if (sync_reset & full_9 & !((full_10 == 0) & read & write))
              stage_9 <= 0;
          else 
            stage_9 <= p9_stage_9;
    end


  //control_9, which is an e_mux
  assign p9_full_9 = ((read & !write) == 0)? full_8 :
    full_10;

  //control_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_9 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_9 <= 0;
          else 
            full_9 <= p9_full_9;
    end


  //data_8, which is an e_mux
  assign p8_stage_8 = ((full_9 & ~clear_fifo) == 0)? data_in :
    stage_9;

  //data_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_8 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_8))
          if (sync_reset & full_8 & !((full_9 == 0) & read & write))
              stage_8 <= 0;
          else 
            stage_8 <= p8_stage_8;
    end


  //control_8, which is an e_mux
  assign p8_full_8 = ((read & !write) == 0)? full_7 :
    full_9;

  //control_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_8 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_8 <= 0;
          else 
            full_8 <= p8_full_8;
    end


  //data_7, which is an e_mux
  assign p7_stage_7 = ((full_8 & ~clear_fifo) == 0)? data_in :
    stage_8;

  //data_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_7 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_7))
          if (sync_reset & full_7 & !((full_8 == 0) & read & write))
              stage_7 <= 0;
          else 
            stage_7 <= p7_stage_7;
    end


  //control_7, which is an e_mux
  assign p7_full_7 = ((read & !write) == 0)? full_6 :
    full_8;

  //control_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_7 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_7 <= 0;
          else 
            full_7 <= p7_full_7;
    end


  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    stage_7;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    full_7;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_ddr2_multi_port_burst_0_downstream_to_ddr2_s1_module (
                                                                           // inputs:
                                                                            clear_fifo,
                                                                            clk,
                                                                            data_in,
                                                                            read,
                                                                            reset_n,
                                                                            sync_reset,
                                                                            write,

                                                                           // outputs:
                                                                            data_out,
                                                                            empty,
                                                                            fifo_contains_ones_n,
                                                                            full
                                                                         )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_10;
  reg              full_11;
  reg              full_12;
  reg              full_13;
  reg              full_14;
  reg              full_15;
  reg              full_16;
  reg              full_17;
  reg              full_18;
  reg              full_19;
  reg              full_2;
  reg              full_20;
  reg              full_21;
  reg              full_22;
  reg              full_23;
  reg              full_24;
  reg              full_25;
  reg              full_26;
  reg              full_27;
  reg              full_28;
  reg              full_29;
  reg              full_3;
  reg              full_30;
  reg              full_31;
  wire             full_32;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  reg              full_7;
  reg              full_8;
  reg              full_9;
  reg     [  6: 0] how_many_ones;
  wire    [  6: 0] one_count_minus_one;
  wire    [  6: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p10_full_10;
  wire             p10_stage_10;
  wire             p11_full_11;
  wire             p11_stage_11;
  wire             p12_full_12;
  wire             p12_stage_12;
  wire             p13_full_13;
  wire             p13_stage_13;
  wire             p14_full_14;
  wire             p14_stage_14;
  wire             p15_full_15;
  wire             p15_stage_15;
  wire             p16_full_16;
  wire             p16_stage_16;
  wire             p17_full_17;
  wire             p17_stage_17;
  wire             p18_full_18;
  wire             p18_stage_18;
  wire             p19_full_19;
  wire             p19_stage_19;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p20_full_20;
  wire             p20_stage_20;
  wire             p21_full_21;
  wire             p21_stage_21;
  wire             p22_full_22;
  wire             p22_stage_22;
  wire             p23_full_23;
  wire             p23_stage_23;
  wire             p24_full_24;
  wire             p24_stage_24;
  wire             p25_full_25;
  wire             p25_stage_25;
  wire             p26_full_26;
  wire             p26_stage_26;
  wire             p27_full_27;
  wire             p27_stage_27;
  wire             p28_full_28;
  wire             p28_stage_28;
  wire             p29_full_29;
  wire             p29_stage_29;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p30_full_30;
  wire             p30_stage_30;
  wire             p31_full_31;
  wire             p31_stage_31;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  wire             p7_full_7;
  wire             p7_stage_7;
  wire             p8_full_8;
  wire             p8_stage_8;
  wire             p9_full_9;
  wire             p9_stage_9;
  reg              stage_0;
  reg              stage_1;
  reg              stage_10;
  reg              stage_11;
  reg              stage_12;
  reg              stage_13;
  reg              stage_14;
  reg              stage_15;
  reg              stage_16;
  reg              stage_17;
  reg              stage_18;
  reg              stage_19;
  reg              stage_2;
  reg              stage_20;
  reg              stage_21;
  reg              stage_22;
  reg              stage_23;
  reg              stage_24;
  reg              stage_25;
  reg              stage_26;
  reg              stage_27;
  reg              stage_28;
  reg              stage_29;
  reg              stage_3;
  reg              stage_30;
  reg              stage_31;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  reg              stage_7;
  reg              stage_8;
  reg              stage_9;
  wire    [  6: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_31;
  assign empty = !full_0;
  assign full_32 = 0;
  //data_31, which is an e_mux
  assign p31_stage_31 = ((full_32 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_31 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_31))
          if (sync_reset & full_31 & !((full_32 == 0) & read & write))
              stage_31 <= 0;
          else 
            stage_31 <= p31_stage_31;
    end


  //control_31, which is an e_mux
  assign p31_full_31 = ((read & !write) == 0)? full_30 :
    0;

  //control_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_31 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_31 <= 0;
          else 
            full_31 <= p31_full_31;
    end


  //data_30, which is an e_mux
  assign p30_stage_30 = ((full_31 & ~clear_fifo) == 0)? data_in :
    stage_31;

  //data_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_30 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_30))
          if (sync_reset & full_30 & !((full_31 == 0) & read & write))
              stage_30 <= 0;
          else 
            stage_30 <= p30_stage_30;
    end


  //control_30, which is an e_mux
  assign p30_full_30 = ((read & !write) == 0)? full_29 :
    full_31;

  //control_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_30 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_30 <= 0;
          else 
            full_30 <= p30_full_30;
    end


  //data_29, which is an e_mux
  assign p29_stage_29 = ((full_30 & ~clear_fifo) == 0)? data_in :
    stage_30;

  //data_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_29 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_29))
          if (sync_reset & full_29 & !((full_30 == 0) & read & write))
              stage_29 <= 0;
          else 
            stage_29 <= p29_stage_29;
    end


  //control_29, which is an e_mux
  assign p29_full_29 = ((read & !write) == 0)? full_28 :
    full_30;

  //control_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_29 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_29 <= 0;
          else 
            full_29 <= p29_full_29;
    end


  //data_28, which is an e_mux
  assign p28_stage_28 = ((full_29 & ~clear_fifo) == 0)? data_in :
    stage_29;

  //data_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_28 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_28))
          if (sync_reset & full_28 & !((full_29 == 0) & read & write))
              stage_28 <= 0;
          else 
            stage_28 <= p28_stage_28;
    end


  //control_28, which is an e_mux
  assign p28_full_28 = ((read & !write) == 0)? full_27 :
    full_29;

  //control_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_28 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_28 <= 0;
          else 
            full_28 <= p28_full_28;
    end


  //data_27, which is an e_mux
  assign p27_stage_27 = ((full_28 & ~clear_fifo) == 0)? data_in :
    stage_28;

  //data_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_27 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_27))
          if (sync_reset & full_27 & !((full_28 == 0) & read & write))
              stage_27 <= 0;
          else 
            stage_27 <= p27_stage_27;
    end


  //control_27, which is an e_mux
  assign p27_full_27 = ((read & !write) == 0)? full_26 :
    full_28;

  //control_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_27 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_27 <= 0;
          else 
            full_27 <= p27_full_27;
    end


  //data_26, which is an e_mux
  assign p26_stage_26 = ((full_27 & ~clear_fifo) == 0)? data_in :
    stage_27;

  //data_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_26 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_26))
          if (sync_reset & full_26 & !((full_27 == 0) & read & write))
              stage_26 <= 0;
          else 
            stage_26 <= p26_stage_26;
    end


  //control_26, which is an e_mux
  assign p26_full_26 = ((read & !write) == 0)? full_25 :
    full_27;

  //control_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_26 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_26 <= 0;
          else 
            full_26 <= p26_full_26;
    end


  //data_25, which is an e_mux
  assign p25_stage_25 = ((full_26 & ~clear_fifo) == 0)? data_in :
    stage_26;

  //data_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_25 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_25))
          if (sync_reset & full_25 & !((full_26 == 0) & read & write))
              stage_25 <= 0;
          else 
            stage_25 <= p25_stage_25;
    end


  //control_25, which is an e_mux
  assign p25_full_25 = ((read & !write) == 0)? full_24 :
    full_26;

  //control_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_25 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_25 <= 0;
          else 
            full_25 <= p25_full_25;
    end


  //data_24, which is an e_mux
  assign p24_stage_24 = ((full_25 & ~clear_fifo) == 0)? data_in :
    stage_25;

  //data_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_24 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_24))
          if (sync_reset & full_24 & !((full_25 == 0) & read & write))
              stage_24 <= 0;
          else 
            stage_24 <= p24_stage_24;
    end


  //control_24, which is an e_mux
  assign p24_full_24 = ((read & !write) == 0)? full_23 :
    full_25;

  //control_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_24 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_24 <= 0;
          else 
            full_24 <= p24_full_24;
    end


  //data_23, which is an e_mux
  assign p23_stage_23 = ((full_24 & ~clear_fifo) == 0)? data_in :
    stage_24;

  //data_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_23 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_23))
          if (sync_reset & full_23 & !((full_24 == 0) & read & write))
              stage_23 <= 0;
          else 
            stage_23 <= p23_stage_23;
    end


  //control_23, which is an e_mux
  assign p23_full_23 = ((read & !write) == 0)? full_22 :
    full_24;

  //control_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_23 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_23 <= 0;
          else 
            full_23 <= p23_full_23;
    end


  //data_22, which is an e_mux
  assign p22_stage_22 = ((full_23 & ~clear_fifo) == 0)? data_in :
    stage_23;

  //data_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_22 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_22))
          if (sync_reset & full_22 & !((full_23 == 0) & read & write))
              stage_22 <= 0;
          else 
            stage_22 <= p22_stage_22;
    end


  //control_22, which is an e_mux
  assign p22_full_22 = ((read & !write) == 0)? full_21 :
    full_23;

  //control_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_22 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_22 <= 0;
          else 
            full_22 <= p22_full_22;
    end


  //data_21, which is an e_mux
  assign p21_stage_21 = ((full_22 & ~clear_fifo) == 0)? data_in :
    stage_22;

  //data_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_21 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_21))
          if (sync_reset & full_21 & !((full_22 == 0) & read & write))
              stage_21 <= 0;
          else 
            stage_21 <= p21_stage_21;
    end


  //control_21, which is an e_mux
  assign p21_full_21 = ((read & !write) == 0)? full_20 :
    full_22;

  //control_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_21 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_21 <= 0;
          else 
            full_21 <= p21_full_21;
    end


  //data_20, which is an e_mux
  assign p20_stage_20 = ((full_21 & ~clear_fifo) == 0)? data_in :
    stage_21;

  //data_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_20 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_20))
          if (sync_reset & full_20 & !((full_21 == 0) & read & write))
              stage_20 <= 0;
          else 
            stage_20 <= p20_stage_20;
    end


  //control_20, which is an e_mux
  assign p20_full_20 = ((read & !write) == 0)? full_19 :
    full_21;

  //control_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_20 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_20 <= 0;
          else 
            full_20 <= p20_full_20;
    end


  //data_19, which is an e_mux
  assign p19_stage_19 = ((full_20 & ~clear_fifo) == 0)? data_in :
    stage_20;

  //data_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_19 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_19))
          if (sync_reset & full_19 & !((full_20 == 0) & read & write))
              stage_19 <= 0;
          else 
            stage_19 <= p19_stage_19;
    end


  //control_19, which is an e_mux
  assign p19_full_19 = ((read & !write) == 0)? full_18 :
    full_20;

  //control_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_19 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_19 <= 0;
          else 
            full_19 <= p19_full_19;
    end


  //data_18, which is an e_mux
  assign p18_stage_18 = ((full_19 & ~clear_fifo) == 0)? data_in :
    stage_19;

  //data_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_18 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_18))
          if (sync_reset & full_18 & !((full_19 == 0) & read & write))
              stage_18 <= 0;
          else 
            stage_18 <= p18_stage_18;
    end


  //control_18, which is an e_mux
  assign p18_full_18 = ((read & !write) == 0)? full_17 :
    full_19;

  //control_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_18 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_18 <= 0;
          else 
            full_18 <= p18_full_18;
    end


  //data_17, which is an e_mux
  assign p17_stage_17 = ((full_18 & ~clear_fifo) == 0)? data_in :
    stage_18;

  //data_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_17 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_17))
          if (sync_reset & full_17 & !((full_18 == 0) & read & write))
              stage_17 <= 0;
          else 
            stage_17 <= p17_stage_17;
    end


  //control_17, which is an e_mux
  assign p17_full_17 = ((read & !write) == 0)? full_16 :
    full_18;

  //control_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_17 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_17 <= 0;
          else 
            full_17 <= p17_full_17;
    end


  //data_16, which is an e_mux
  assign p16_stage_16 = ((full_17 & ~clear_fifo) == 0)? data_in :
    stage_17;

  //data_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_16 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_16))
          if (sync_reset & full_16 & !((full_17 == 0) & read & write))
              stage_16 <= 0;
          else 
            stage_16 <= p16_stage_16;
    end


  //control_16, which is an e_mux
  assign p16_full_16 = ((read & !write) == 0)? full_15 :
    full_17;

  //control_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_16 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_16 <= 0;
          else 
            full_16 <= p16_full_16;
    end


  //data_15, which is an e_mux
  assign p15_stage_15 = ((full_16 & ~clear_fifo) == 0)? data_in :
    stage_16;

  //data_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_15 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_15))
          if (sync_reset & full_15 & !((full_16 == 0) & read & write))
              stage_15 <= 0;
          else 
            stage_15 <= p15_stage_15;
    end


  //control_15, which is an e_mux
  assign p15_full_15 = ((read & !write) == 0)? full_14 :
    full_16;

  //control_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_15 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_15 <= 0;
          else 
            full_15 <= p15_full_15;
    end


  //data_14, which is an e_mux
  assign p14_stage_14 = ((full_15 & ~clear_fifo) == 0)? data_in :
    stage_15;

  //data_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_14 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_14))
          if (sync_reset & full_14 & !((full_15 == 0) & read & write))
              stage_14 <= 0;
          else 
            stage_14 <= p14_stage_14;
    end


  //control_14, which is an e_mux
  assign p14_full_14 = ((read & !write) == 0)? full_13 :
    full_15;

  //control_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_14 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_14 <= 0;
          else 
            full_14 <= p14_full_14;
    end


  //data_13, which is an e_mux
  assign p13_stage_13 = ((full_14 & ~clear_fifo) == 0)? data_in :
    stage_14;

  //data_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_13 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_13))
          if (sync_reset & full_13 & !((full_14 == 0) & read & write))
              stage_13 <= 0;
          else 
            stage_13 <= p13_stage_13;
    end


  //control_13, which is an e_mux
  assign p13_full_13 = ((read & !write) == 0)? full_12 :
    full_14;

  //control_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_13 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_13 <= 0;
          else 
            full_13 <= p13_full_13;
    end


  //data_12, which is an e_mux
  assign p12_stage_12 = ((full_13 & ~clear_fifo) == 0)? data_in :
    stage_13;

  //data_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_12 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_12))
          if (sync_reset & full_12 & !((full_13 == 0) & read & write))
              stage_12 <= 0;
          else 
            stage_12 <= p12_stage_12;
    end


  //control_12, which is an e_mux
  assign p12_full_12 = ((read & !write) == 0)? full_11 :
    full_13;

  //control_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_12 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_12 <= 0;
          else 
            full_12 <= p12_full_12;
    end


  //data_11, which is an e_mux
  assign p11_stage_11 = ((full_12 & ~clear_fifo) == 0)? data_in :
    stage_12;

  //data_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_11 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_11))
          if (sync_reset & full_11 & !((full_12 == 0) & read & write))
              stage_11 <= 0;
          else 
            stage_11 <= p11_stage_11;
    end


  //control_11, which is an e_mux
  assign p11_full_11 = ((read & !write) == 0)? full_10 :
    full_12;

  //control_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_11 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_11 <= 0;
          else 
            full_11 <= p11_full_11;
    end


  //data_10, which is an e_mux
  assign p10_stage_10 = ((full_11 & ~clear_fifo) == 0)? data_in :
    stage_11;

  //data_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_10 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_10))
          if (sync_reset & full_10 & !((full_11 == 0) & read & write))
              stage_10 <= 0;
          else 
            stage_10 <= p10_stage_10;
    end


  //control_10, which is an e_mux
  assign p10_full_10 = ((read & !write) == 0)? full_9 :
    full_11;

  //control_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_10 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_10 <= 0;
          else 
            full_10 <= p10_full_10;
    end


  //data_9, which is an e_mux
  assign p9_stage_9 = ((full_10 & ~clear_fifo) == 0)? data_in :
    stage_10;

  //data_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_9 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_9))
          if (sync_reset & full_9 & !((full_10 == 0) & read & write))
              stage_9 <= 0;
          else 
            stage_9 <= p9_stage_9;
    end


  //control_9, which is an e_mux
  assign p9_full_9 = ((read & !write) == 0)? full_8 :
    full_10;

  //control_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_9 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_9 <= 0;
          else 
            full_9 <= p9_full_9;
    end


  //data_8, which is an e_mux
  assign p8_stage_8 = ((full_9 & ~clear_fifo) == 0)? data_in :
    stage_9;

  //data_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_8 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_8))
          if (sync_reset & full_8 & !((full_9 == 0) & read & write))
              stage_8 <= 0;
          else 
            stage_8 <= p8_stage_8;
    end


  //control_8, which is an e_mux
  assign p8_full_8 = ((read & !write) == 0)? full_7 :
    full_9;

  //control_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_8 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_8 <= 0;
          else 
            full_8 <= p8_full_8;
    end


  //data_7, which is an e_mux
  assign p7_stage_7 = ((full_8 & ~clear_fifo) == 0)? data_in :
    stage_8;

  //data_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_7 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_7))
          if (sync_reset & full_7 & !((full_8 == 0) & read & write))
              stage_7 <= 0;
          else 
            stage_7 <= p7_stage_7;
    end


  //control_7, which is an e_mux
  assign p7_full_7 = ((read & !write) == 0)? full_6 :
    full_8;

  //control_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_7 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_7 <= 0;
          else 
            full_7 <= p7_full_7;
    end


  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    stage_7;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    full_7;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_ddr2_multi_port_burst_1_downstream_to_ddr2_s1_module (
                                                                           // inputs:
                                                                            clear_fifo,
                                                                            clk,
                                                                            data_in,
                                                                            read,
                                                                            reset_n,
                                                                            sync_reset,
                                                                            write,

                                                                           // outputs:
                                                                            data_out,
                                                                            empty,
                                                                            fifo_contains_ones_n,
                                                                            full
                                                                         )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_10;
  reg              full_11;
  reg              full_12;
  reg              full_13;
  reg              full_14;
  reg              full_15;
  reg              full_16;
  reg              full_17;
  reg              full_18;
  reg              full_19;
  reg              full_2;
  reg              full_20;
  reg              full_21;
  reg              full_22;
  reg              full_23;
  reg              full_24;
  reg              full_25;
  reg              full_26;
  reg              full_27;
  reg              full_28;
  reg              full_29;
  reg              full_3;
  reg              full_30;
  reg              full_31;
  wire             full_32;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  reg              full_7;
  reg              full_8;
  reg              full_9;
  reg     [  6: 0] how_many_ones;
  wire    [  6: 0] one_count_minus_one;
  wire    [  6: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p10_full_10;
  wire             p10_stage_10;
  wire             p11_full_11;
  wire             p11_stage_11;
  wire             p12_full_12;
  wire             p12_stage_12;
  wire             p13_full_13;
  wire             p13_stage_13;
  wire             p14_full_14;
  wire             p14_stage_14;
  wire             p15_full_15;
  wire             p15_stage_15;
  wire             p16_full_16;
  wire             p16_stage_16;
  wire             p17_full_17;
  wire             p17_stage_17;
  wire             p18_full_18;
  wire             p18_stage_18;
  wire             p19_full_19;
  wire             p19_stage_19;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p20_full_20;
  wire             p20_stage_20;
  wire             p21_full_21;
  wire             p21_stage_21;
  wire             p22_full_22;
  wire             p22_stage_22;
  wire             p23_full_23;
  wire             p23_stage_23;
  wire             p24_full_24;
  wire             p24_stage_24;
  wire             p25_full_25;
  wire             p25_stage_25;
  wire             p26_full_26;
  wire             p26_stage_26;
  wire             p27_full_27;
  wire             p27_stage_27;
  wire             p28_full_28;
  wire             p28_stage_28;
  wire             p29_full_29;
  wire             p29_stage_29;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p30_full_30;
  wire             p30_stage_30;
  wire             p31_full_31;
  wire             p31_stage_31;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  wire             p7_full_7;
  wire             p7_stage_7;
  wire             p8_full_8;
  wire             p8_stage_8;
  wire             p9_full_9;
  wire             p9_stage_9;
  reg              stage_0;
  reg              stage_1;
  reg              stage_10;
  reg              stage_11;
  reg              stage_12;
  reg              stage_13;
  reg              stage_14;
  reg              stage_15;
  reg              stage_16;
  reg              stage_17;
  reg              stage_18;
  reg              stage_19;
  reg              stage_2;
  reg              stage_20;
  reg              stage_21;
  reg              stage_22;
  reg              stage_23;
  reg              stage_24;
  reg              stage_25;
  reg              stage_26;
  reg              stage_27;
  reg              stage_28;
  reg              stage_29;
  reg              stage_3;
  reg              stage_30;
  reg              stage_31;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  reg              stage_7;
  reg              stage_8;
  reg              stage_9;
  wire    [  6: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_31;
  assign empty = !full_0;
  assign full_32 = 0;
  //data_31, which is an e_mux
  assign p31_stage_31 = ((full_32 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_31 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_31))
          if (sync_reset & full_31 & !((full_32 == 0) & read & write))
              stage_31 <= 0;
          else 
            stage_31 <= p31_stage_31;
    end


  //control_31, which is an e_mux
  assign p31_full_31 = ((read & !write) == 0)? full_30 :
    0;

  //control_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_31 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_31 <= 0;
          else 
            full_31 <= p31_full_31;
    end


  //data_30, which is an e_mux
  assign p30_stage_30 = ((full_31 & ~clear_fifo) == 0)? data_in :
    stage_31;

  //data_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_30 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_30))
          if (sync_reset & full_30 & !((full_31 == 0) & read & write))
              stage_30 <= 0;
          else 
            stage_30 <= p30_stage_30;
    end


  //control_30, which is an e_mux
  assign p30_full_30 = ((read & !write) == 0)? full_29 :
    full_31;

  //control_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_30 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_30 <= 0;
          else 
            full_30 <= p30_full_30;
    end


  //data_29, which is an e_mux
  assign p29_stage_29 = ((full_30 & ~clear_fifo) == 0)? data_in :
    stage_30;

  //data_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_29 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_29))
          if (sync_reset & full_29 & !((full_30 == 0) & read & write))
              stage_29 <= 0;
          else 
            stage_29 <= p29_stage_29;
    end


  //control_29, which is an e_mux
  assign p29_full_29 = ((read & !write) == 0)? full_28 :
    full_30;

  //control_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_29 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_29 <= 0;
          else 
            full_29 <= p29_full_29;
    end


  //data_28, which is an e_mux
  assign p28_stage_28 = ((full_29 & ~clear_fifo) == 0)? data_in :
    stage_29;

  //data_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_28 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_28))
          if (sync_reset & full_28 & !((full_29 == 0) & read & write))
              stage_28 <= 0;
          else 
            stage_28 <= p28_stage_28;
    end


  //control_28, which is an e_mux
  assign p28_full_28 = ((read & !write) == 0)? full_27 :
    full_29;

  //control_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_28 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_28 <= 0;
          else 
            full_28 <= p28_full_28;
    end


  //data_27, which is an e_mux
  assign p27_stage_27 = ((full_28 & ~clear_fifo) == 0)? data_in :
    stage_28;

  //data_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_27 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_27))
          if (sync_reset & full_27 & !((full_28 == 0) & read & write))
              stage_27 <= 0;
          else 
            stage_27 <= p27_stage_27;
    end


  //control_27, which is an e_mux
  assign p27_full_27 = ((read & !write) == 0)? full_26 :
    full_28;

  //control_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_27 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_27 <= 0;
          else 
            full_27 <= p27_full_27;
    end


  //data_26, which is an e_mux
  assign p26_stage_26 = ((full_27 & ~clear_fifo) == 0)? data_in :
    stage_27;

  //data_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_26 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_26))
          if (sync_reset & full_26 & !((full_27 == 0) & read & write))
              stage_26 <= 0;
          else 
            stage_26 <= p26_stage_26;
    end


  //control_26, which is an e_mux
  assign p26_full_26 = ((read & !write) == 0)? full_25 :
    full_27;

  //control_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_26 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_26 <= 0;
          else 
            full_26 <= p26_full_26;
    end


  //data_25, which is an e_mux
  assign p25_stage_25 = ((full_26 & ~clear_fifo) == 0)? data_in :
    stage_26;

  //data_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_25 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_25))
          if (sync_reset & full_25 & !((full_26 == 0) & read & write))
              stage_25 <= 0;
          else 
            stage_25 <= p25_stage_25;
    end


  //control_25, which is an e_mux
  assign p25_full_25 = ((read & !write) == 0)? full_24 :
    full_26;

  //control_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_25 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_25 <= 0;
          else 
            full_25 <= p25_full_25;
    end


  //data_24, which is an e_mux
  assign p24_stage_24 = ((full_25 & ~clear_fifo) == 0)? data_in :
    stage_25;

  //data_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_24 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_24))
          if (sync_reset & full_24 & !((full_25 == 0) & read & write))
              stage_24 <= 0;
          else 
            stage_24 <= p24_stage_24;
    end


  //control_24, which is an e_mux
  assign p24_full_24 = ((read & !write) == 0)? full_23 :
    full_25;

  //control_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_24 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_24 <= 0;
          else 
            full_24 <= p24_full_24;
    end


  //data_23, which is an e_mux
  assign p23_stage_23 = ((full_24 & ~clear_fifo) == 0)? data_in :
    stage_24;

  //data_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_23 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_23))
          if (sync_reset & full_23 & !((full_24 == 0) & read & write))
              stage_23 <= 0;
          else 
            stage_23 <= p23_stage_23;
    end


  //control_23, which is an e_mux
  assign p23_full_23 = ((read & !write) == 0)? full_22 :
    full_24;

  //control_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_23 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_23 <= 0;
          else 
            full_23 <= p23_full_23;
    end


  //data_22, which is an e_mux
  assign p22_stage_22 = ((full_23 & ~clear_fifo) == 0)? data_in :
    stage_23;

  //data_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_22 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_22))
          if (sync_reset & full_22 & !((full_23 == 0) & read & write))
              stage_22 <= 0;
          else 
            stage_22 <= p22_stage_22;
    end


  //control_22, which is an e_mux
  assign p22_full_22 = ((read & !write) == 0)? full_21 :
    full_23;

  //control_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_22 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_22 <= 0;
          else 
            full_22 <= p22_full_22;
    end


  //data_21, which is an e_mux
  assign p21_stage_21 = ((full_22 & ~clear_fifo) == 0)? data_in :
    stage_22;

  //data_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_21 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_21))
          if (sync_reset & full_21 & !((full_22 == 0) & read & write))
              stage_21 <= 0;
          else 
            stage_21 <= p21_stage_21;
    end


  //control_21, which is an e_mux
  assign p21_full_21 = ((read & !write) == 0)? full_20 :
    full_22;

  //control_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_21 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_21 <= 0;
          else 
            full_21 <= p21_full_21;
    end


  //data_20, which is an e_mux
  assign p20_stage_20 = ((full_21 & ~clear_fifo) == 0)? data_in :
    stage_21;

  //data_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_20 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_20))
          if (sync_reset & full_20 & !((full_21 == 0) & read & write))
              stage_20 <= 0;
          else 
            stage_20 <= p20_stage_20;
    end


  //control_20, which is an e_mux
  assign p20_full_20 = ((read & !write) == 0)? full_19 :
    full_21;

  //control_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_20 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_20 <= 0;
          else 
            full_20 <= p20_full_20;
    end


  //data_19, which is an e_mux
  assign p19_stage_19 = ((full_20 & ~clear_fifo) == 0)? data_in :
    stage_20;

  //data_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_19 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_19))
          if (sync_reset & full_19 & !((full_20 == 0) & read & write))
              stage_19 <= 0;
          else 
            stage_19 <= p19_stage_19;
    end


  //control_19, which is an e_mux
  assign p19_full_19 = ((read & !write) == 0)? full_18 :
    full_20;

  //control_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_19 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_19 <= 0;
          else 
            full_19 <= p19_full_19;
    end


  //data_18, which is an e_mux
  assign p18_stage_18 = ((full_19 & ~clear_fifo) == 0)? data_in :
    stage_19;

  //data_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_18 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_18))
          if (sync_reset & full_18 & !((full_19 == 0) & read & write))
              stage_18 <= 0;
          else 
            stage_18 <= p18_stage_18;
    end


  //control_18, which is an e_mux
  assign p18_full_18 = ((read & !write) == 0)? full_17 :
    full_19;

  //control_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_18 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_18 <= 0;
          else 
            full_18 <= p18_full_18;
    end


  //data_17, which is an e_mux
  assign p17_stage_17 = ((full_18 & ~clear_fifo) == 0)? data_in :
    stage_18;

  //data_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_17 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_17))
          if (sync_reset & full_17 & !((full_18 == 0) & read & write))
              stage_17 <= 0;
          else 
            stage_17 <= p17_stage_17;
    end


  //control_17, which is an e_mux
  assign p17_full_17 = ((read & !write) == 0)? full_16 :
    full_18;

  //control_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_17 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_17 <= 0;
          else 
            full_17 <= p17_full_17;
    end


  //data_16, which is an e_mux
  assign p16_stage_16 = ((full_17 & ~clear_fifo) == 0)? data_in :
    stage_17;

  //data_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_16 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_16))
          if (sync_reset & full_16 & !((full_17 == 0) & read & write))
              stage_16 <= 0;
          else 
            stage_16 <= p16_stage_16;
    end


  //control_16, which is an e_mux
  assign p16_full_16 = ((read & !write) == 0)? full_15 :
    full_17;

  //control_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_16 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_16 <= 0;
          else 
            full_16 <= p16_full_16;
    end


  //data_15, which is an e_mux
  assign p15_stage_15 = ((full_16 & ~clear_fifo) == 0)? data_in :
    stage_16;

  //data_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_15 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_15))
          if (sync_reset & full_15 & !((full_16 == 0) & read & write))
              stage_15 <= 0;
          else 
            stage_15 <= p15_stage_15;
    end


  //control_15, which is an e_mux
  assign p15_full_15 = ((read & !write) == 0)? full_14 :
    full_16;

  //control_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_15 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_15 <= 0;
          else 
            full_15 <= p15_full_15;
    end


  //data_14, which is an e_mux
  assign p14_stage_14 = ((full_15 & ~clear_fifo) == 0)? data_in :
    stage_15;

  //data_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_14 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_14))
          if (sync_reset & full_14 & !((full_15 == 0) & read & write))
              stage_14 <= 0;
          else 
            stage_14 <= p14_stage_14;
    end


  //control_14, which is an e_mux
  assign p14_full_14 = ((read & !write) == 0)? full_13 :
    full_15;

  //control_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_14 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_14 <= 0;
          else 
            full_14 <= p14_full_14;
    end


  //data_13, which is an e_mux
  assign p13_stage_13 = ((full_14 & ~clear_fifo) == 0)? data_in :
    stage_14;

  //data_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_13 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_13))
          if (sync_reset & full_13 & !((full_14 == 0) & read & write))
              stage_13 <= 0;
          else 
            stage_13 <= p13_stage_13;
    end


  //control_13, which is an e_mux
  assign p13_full_13 = ((read & !write) == 0)? full_12 :
    full_14;

  //control_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_13 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_13 <= 0;
          else 
            full_13 <= p13_full_13;
    end


  //data_12, which is an e_mux
  assign p12_stage_12 = ((full_13 & ~clear_fifo) == 0)? data_in :
    stage_13;

  //data_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_12 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_12))
          if (sync_reset & full_12 & !((full_13 == 0) & read & write))
              stage_12 <= 0;
          else 
            stage_12 <= p12_stage_12;
    end


  //control_12, which is an e_mux
  assign p12_full_12 = ((read & !write) == 0)? full_11 :
    full_13;

  //control_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_12 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_12 <= 0;
          else 
            full_12 <= p12_full_12;
    end


  //data_11, which is an e_mux
  assign p11_stage_11 = ((full_12 & ~clear_fifo) == 0)? data_in :
    stage_12;

  //data_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_11 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_11))
          if (sync_reset & full_11 & !((full_12 == 0) & read & write))
              stage_11 <= 0;
          else 
            stage_11 <= p11_stage_11;
    end


  //control_11, which is an e_mux
  assign p11_full_11 = ((read & !write) == 0)? full_10 :
    full_12;

  //control_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_11 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_11 <= 0;
          else 
            full_11 <= p11_full_11;
    end


  //data_10, which is an e_mux
  assign p10_stage_10 = ((full_11 & ~clear_fifo) == 0)? data_in :
    stage_11;

  //data_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_10 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_10))
          if (sync_reset & full_10 & !((full_11 == 0) & read & write))
              stage_10 <= 0;
          else 
            stage_10 <= p10_stage_10;
    end


  //control_10, which is an e_mux
  assign p10_full_10 = ((read & !write) == 0)? full_9 :
    full_11;

  //control_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_10 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_10 <= 0;
          else 
            full_10 <= p10_full_10;
    end


  //data_9, which is an e_mux
  assign p9_stage_9 = ((full_10 & ~clear_fifo) == 0)? data_in :
    stage_10;

  //data_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_9 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_9))
          if (sync_reset & full_9 & !((full_10 == 0) & read & write))
              stage_9 <= 0;
          else 
            stage_9 <= p9_stage_9;
    end


  //control_9, which is an e_mux
  assign p9_full_9 = ((read & !write) == 0)? full_8 :
    full_10;

  //control_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_9 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_9 <= 0;
          else 
            full_9 <= p9_full_9;
    end


  //data_8, which is an e_mux
  assign p8_stage_8 = ((full_9 & ~clear_fifo) == 0)? data_in :
    stage_9;

  //data_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_8 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_8))
          if (sync_reset & full_8 & !((full_9 == 0) & read & write))
              stage_8 <= 0;
          else 
            stage_8 <= p8_stage_8;
    end


  //control_8, which is an e_mux
  assign p8_full_8 = ((read & !write) == 0)? full_7 :
    full_9;

  //control_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_8 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_8 <= 0;
          else 
            full_8 <= p8_full_8;
    end


  //data_7, which is an e_mux
  assign p7_stage_7 = ((full_8 & ~clear_fifo) == 0)? data_in :
    stage_8;

  //data_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_7 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_7))
          if (sync_reset & full_7 & !((full_8 == 0) & read & write))
              stage_7 <= 0;
          else 
            stage_7 <= p7_stage_7;
    end


  //control_7, which is an e_mux
  assign p7_full_7 = ((read & !write) == 0)? full_6 :
    full_8;

  //control_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_7 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_7 <= 0;
          else 
            full_7 <= p7_full_7;
    end


  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    stage_7;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    full_7;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_s1_arbitrator (
                            // inputs:
                             clk,
                             ddr2_multi_port_burst_0_downstream_address_to_slave,
                             ddr2_multi_port_burst_0_downstream_arbitrationshare,
                             ddr2_multi_port_burst_0_downstream_burstcount,
                             ddr2_multi_port_burst_0_downstream_byteenable,
                             ddr2_multi_port_burst_0_downstream_latency_counter,
                             ddr2_multi_port_burst_0_downstream_read,
                             ddr2_multi_port_burst_0_downstream_write,
                             ddr2_multi_port_burst_0_downstream_writedata,
                             ddr2_multi_port_burst_1_downstream_address_to_slave,
                             ddr2_multi_port_burst_1_downstream_arbitrationshare,
                             ddr2_multi_port_burst_1_downstream_burstcount,
                             ddr2_multi_port_burst_1_downstream_byteenable,
                             ddr2_multi_port_burst_1_downstream_latency_counter,
                             ddr2_multi_port_burst_1_downstream_read,
                             ddr2_multi_port_burst_1_downstream_write,
                             ddr2_multi_port_burst_1_downstream_writedata,
                             ddr2_s1_readdata,
                             ddr2_s1_readdatavalid,
                             ddr2_s1_resetrequest_n,
                             ddr2_s1_waitrequest_n,
                             reset_n,

                            // outputs:
                             d1_ddr2_s1_end_xfer,
                             ddr2_multi_port_burst_0_downstream_granted_ddr2_s1,
                             ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1,
                             ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1,
                             ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register,
                             ddr2_multi_port_burst_0_downstream_requests_ddr2_s1,
                             ddr2_multi_port_burst_1_downstream_granted_ddr2_s1,
                             ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1,
                             ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1,
                             ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register,
                             ddr2_multi_port_burst_1_downstream_requests_ddr2_s1,
                             ddr2_s1_address,
                             ddr2_s1_beginbursttransfer,
                             ddr2_s1_burstcount,
                             ddr2_s1_byteenable,
                             ddr2_s1_read,
                             ddr2_s1_readdata_from_sa,
                             ddr2_s1_resetrequest_n_from_sa,
                             ddr2_s1_waitrequest_n_from_sa,
                             ddr2_s1_write,
                             ddr2_s1_writedata
                          )
;

  output           d1_ddr2_s1_end_xfer;
  output           ddr2_multi_port_burst_0_downstream_granted_ddr2_s1;
  output           ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1;
  output           ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1;
  output           ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register;
  output           ddr2_multi_port_burst_0_downstream_requests_ddr2_s1;
  output           ddr2_multi_port_burst_1_downstream_granted_ddr2_s1;
  output           ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1;
  output           ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1;
  output           ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register;
  output           ddr2_multi_port_burst_1_downstream_requests_ddr2_s1;
  output  [ 24: 0] ddr2_s1_address;
  output           ddr2_s1_beginbursttransfer;
  output  [  2: 0] ddr2_s1_burstcount;
  output  [ 31: 0] ddr2_s1_byteenable;
  output           ddr2_s1_read;
  output  [255: 0] ddr2_s1_readdata_from_sa;
  output           ddr2_s1_resetrequest_n_from_sa;
  output           ddr2_s1_waitrequest_n_from_sa;
  output           ddr2_s1_write;
  output  [255: 0] ddr2_s1_writedata;
  input            clk;
  input   [ 29: 0] ddr2_multi_port_burst_0_downstream_address_to_slave;
  input   [  7: 0] ddr2_multi_port_burst_0_downstream_arbitrationshare;
  input   [  2: 0] ddr2_multi_port_burst_0_downstream_burstcount;
  input   [ 31: 0] ddr2_multi_port_burst_0_downstream_byteenable;
  input            ddr2_multi_port_burst_0_downstream_latency_counter;
  input            ddr2_multi_port_burst_0_downstream_read;
  input            ddr2_multi_port_burst_0_downstream_write;
  input   [255: 0] ddr2_multi_port_burst_0_downstream_writedata;
  input   [ 29: 0] ddr2_multi_port_burst_1_downstream_address_to_slave;
  input   [  7: 0] ddr2_multi_port_burst_1_downstream_arbitrationshare;
  input   [  2: 0] ddr2_multi_port_burst_1_downstream_burstcount;
  input   [ 31: 0] ddr2_multi_port_burst_1_downstream_byteenable;
  input            ddr2_multi_port_burst_1_downstream_latency_counter;
  input            ddr2_multi_port_burst_1_downstream_read;
  input            ddr2_multi_port_burst_1_downstream_write;
  input   [255: 0] ddr2_multi_port_burst_1_downstream_writedata;
  input   [255: 0] ddr2_s1_readdata;
  input            ddr2_s1_readdatavalid;
  input            ddr2_s1_resetrequest_n;
  input            ddr2_s1_waitrequest_n;
  input            reset_n;

  reg              d1_ddr2_s1_end_xfer;
  reg              d1_reasons_to_wait;
  wire             ddr2_multi_port_burst_0_downstream_arbiterlock;
  wire             ddr2_multi_port_burst_0_downstream_arbiterlock2;
  wire             ddr2_multi_port_burst_0_downstream_continuerequest;
  wire             ddr2_multi_port_burst_0_downstream_granted_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_rdv_fifo_empty_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_rdv_fifo_output_from_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register;
  wire             ddr2_multi_port_burst_0_downstream_requests_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_saved_grant_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_arbiterlock;
  wire             ddr2_multi_port_burst_1_downstream_arbiterlock2;
  wire             ddr2_multi_port_burst_1_downstream_continuerequest;
  wire             ddr2_multi_port_burst_1_downstream_granted_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_rdv_fifo_empty_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_rdv_fifo_output_from_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register;
  wire             ddr2_multi_port_burst_1_downstream_requests_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_saved_grant_ddr2_s1;
  wire    [ 24: 0] ddr2_s1_address;
  wire             ddr2_s1_allgrants;
  wire             ddr2_s1_allow_new_arb_cycle;
  wire             ddr2_s1_any_bursting_master_saved_grant;
  wire             ddr2_s1_any_continuerequest;
  reg     [  1: 0] ddr2_s1_arb_addend;
  wire             ddr2_s1_arb_counter_enable;
  reg     [  7: 0] ddr2_s1_arb_share_counter;
  wire    [  7: 0] ddr2_s1_arb_share_counter_next_value;
  wire    [  7: 0] ddr2_s1_arb_share_set_values;
  wire    [  1: 0] ddr2_s1_arb_winner;
  wire             ddr2_s1_arbitration_holdoff_internal;
  reg     [  1: 0] ddr2_s1_bbt_burstcounter;
  wire             ddr2_s1_beginbursttransfer;
  wire             ddr2_s1_beginbursttransfer_internal;
  wire             ddr2_s1_begins_xfer;
  wire    [  2: 0] ddr2_s1_burstcount;
  wire             ddr2_s1_burstcount_fifo_empty;
  wire    [ 31: 0] ddr2_s1_byteenable;
  wire    [  3: 0] ddr2_s1_chosen_master_double_vector;
  wire    [  1: 0] ddr2_s1_chosen_master_rot_left;
  reg     [  2: 0] ddr2_s1_current_burst;
  wire    [  2: 0] ddr2_s1_current_burst_minus_one;
  wire             ddr2_s1_end_xfer;
  wire             ddr2_s1_firsttransfer;
  wire    [  1: 0] ddr2_s1_grant_vector;
  wire             ddr2_s1_in_a_read_cycle;
  wire             ddr2_s1_in_a_write_cycle;
  reg              ddr2_s1_load_fifo;
  wire    [  1: 0] ddr2_s1_master_qreq_vector;
  wire             ddr2_s1_move_on_to_next_transaction;
  wire    [  1: 0] ddr2_s1_next_bbt_burstcount;
  wire    [  2: 0] ddr2_s1_next_burst_count;
  wire             ddr2_s1_non_bursting_master_requests;
  wire             ddr2_s1_read;
  wire    [255: 0] ddr2_s1_readdata_from_sa;
  wire             ddr2_s1_readdatavalid_from_sa;
  reg              ddr2_s1_reg_firsttransfer;
  wire             ddr2_s1_resetrequest_n_from_sa;
  reg     [  1: 0] ddr2_s1_saved_chosen_master_vector;
  wire    [  2: 0] ddr2_s1_selected_burstcount;
  reg              ddr2_s1_slavearbiterlockenable;
  wire             ddr2_s1_slavearbiterlockenable2;
  wire             ddr2_s1_this_cycle_is_the_last_burst;
  wire    [  2: 0] ddr2_s1_transaction_burst_count;
  wire             ddr2_s1_unreg_firsttransfer;
  wire             ddr2_s1_waitrequest_n_from_sa;
  wire             ddr2_s1_waits_for_read;
  wire             ddr2_s1_waits_for_write;
  wire             ddr2_s1_write;
  wire    [255: 0] ddr2_s1_writedata;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_ddr2_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_ddr2_multi_port_burst_0_downstream_granted_slave_ddr2_s1;
  reg              last_cycle_ddr2_multi_port_burst_1_downstream_granted_slave_ddr2_s1;
  wire             p0_ddr2_s1_load_fifo;
  wire    [ 29: 0] shifted_address_to_ddr2_s1_from_ddr2_multi_port_burst_0_downstream;
  wire    [ 29: 0] shifted_address_to_ddr2_s1_from_ddr2_multi_port_burst_1_downstream;
  wire             wait_for_ddr2_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~ddr2_s1_end_xfer;
    end


  assign ddr2_s1_begins_xfer = ~d1_reasons_to_wait & ((ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1 | ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1));
  //assign ddr2_s1_readdata_from_sa = ddr2_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_s1_readdata_from_sa = ddr2_s1_readdata;

  assign ddr2_multi_port_burst_0_downstream_requests_ddr2_s1 = (1) & (ddr2_multi_port_burst_0_downstream_read | ddr2_multi_port_burst_0_downstream_write);
  //assign ddr2_s1_waitrequest_n_from_sa = ddr2_s1_waitrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_s1_waitrequest_n_from_sa = ddr2_s1_waitrequest_n;

  //assign ddr2_s1_readdatavalid_from_sa = ddr2_s1_readdatavalid so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_s1_readdatavalid_from_sa = ddr2_s1_readdatavalid;

  //ddr2_s1_arb_share_counter set values, which is an e_mux
  assign ddr2_s1_arb_share_set_values = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_0_downstream_arbitrationshare :
    (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_1_downstream_arbitrationshare :
    (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_0_downstream_arbitrationshare :
    (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_1_downstream_arbitrationshare :
    1;

  //ddr2_s1_non_bursting_master_requests mux, which is an e_mux
  assign ddr2_s1_non_bursting_master_requests = 0;

  //ddr2_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign ddr2_s1_any_bursting_master_saved_grant = ddr2_multi_port_burst_0_downstream_saved_grant_ddr2_s1 |
    ddr2_multi_port_burst_1_downstream_saved_grant_ddr2_s1 |
    ddr2_multi_port_burst_0_downstream_saved_grant_ddr2_s1 |
    ddr2_multi_port_burst_1_downstream_saved_grant_ddr2_s1;

  //ddr2_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign ddr2_s1_arb_share_counter_next_value = ddr2_s1_firsttransfer ? (ddr2_s1_arb_share_set_values - 1) : |ddr2_s1_arb_share_counter ? (ddr2_s1_arb_share_counter - 1) : 0;

  //ddr2_s1_allgrants all slave grants, which is an e_mux
  assign ddr2_s1_allgrants = (|ddr2_s1_grant_vector) |
    (|ddr2_s1_grant_vector) |
    (|ddr2_s1_grant_vector) |
    (|ddr2_s1_grant_vector);

  //ddr2_s1_end_xfer assignment, which is an e_assign
  assign ddr2_s1_end_xfer = ~(ddr2_s1_waits_for_read | ddr2_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_ddr2_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_ddr2_s1 = ddr2_s1_end_xfer & (~ddr2_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //ddr2_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign ddr2_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_ddr2_s1 & ddr2_s1_allgrants) | (end_xfer_arb_share_counter_term_ddr2_s1 & ~ddr2_s1_non_bursting_master_requests);

  //ddr2_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_arb_share_counter <= 0;
      else if (ddr2_s1_arb_counter_enable)
          ddr2_s1_arb_share_counter <= ddr2_s1_arb_share_counter_next_value;
    end


  //ddr2_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_slavearbiterlockenable <= 0;
      else if ((|ddr2_s1_master_qreq_vector & end_xfer_arb_share_counter_term_ddr2_s1) | (end_xfer_arb_share_counter_term_ddr2_s1 & ~ddr2_s1_non_bursting_master_requests))
          ddr2_s1_slavearbiterlockenable <= |ddr2_s1_arb_share_counter_next_value;
    end


  //ddr2_multi_port_burst_0/downstream ddr2/s1 arbiterlock, which is an e_assign
  assign ddr2_multi_port_burst_0_downstream_arbiterlock = ddr2_s1_slavearbiterlockenable & ddr2_multi_port_burst_0_downstream_continuerequest;

  //ddr2_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign ddr2_s1_slavearbiterlockenable2 = |ddr2_s1_arb_share_counter_next_value;

  //ddr2_multi_port_burst_0/downstream ddr2/s1 arbiterlock2, which is an e_assign
  assign ddr2_multi_port_burst_0_downstream_arbiterlock2 = ddr2_s1_slavearbiterlockenable2 & ddr2_multi_port_burst_0_downstream_continuerequest;

  //ddr2_multi_port_burst_1/downstream ddr2/s1 arbiterlock, which is an e_assign
  assign ddr2_multi_port_burst_1_downstream_arbiterlock = ddr2_s1_slavearbiterlockenable & ddr2_multi_port_burst_1_downstream_continuerequest;

  //ddr2_multi_port_burst_1/downstream ddr2/s1 arbiterlock2, which is an e_assign
  assign ddr2_multi_port_burst_1_downstream_arbiterlock2 = ddr2_s1_slavearbiterlockenable2 & ddr2_multi_port_burst_1_downstream_continuerequest;

  //ddr2_multi_port_burst_1/downstream granted ddr2/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_ddr2_multi_port_burst_1_downstream_granted_slave_ddr2_s1 <= 0;
      else 
        last_cycle_ddr2_multi_port_burst_1_downstream_granted_slave_ddr2_s1 <= ddr2_multi_port_burst_1_downstream_saved_grant_ddr2_s1 ? 1 : (ddr2_s1_arbitration_holdoff_internal | 0) ? 0 : last_cycle_ddr2_multi_port_burst_1_downstream_granted_slave_ddr2_s1;
    end


  //ddr2_multi_port_burst_1_downstream_continuerequest continued request, which is an e_mux
  assign ddr2_multi_port_burst_1_downstream_continuerequest = last_cycle_ddr2_multi_port_burst_1_downstream_granted_slave_ddr2_s1 & 1;

  //ddr2_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign ddr2_s1_any_continuerequest = ddr2_multi_port_burst_1_downstream_continuerequest |
    ddr2_multi_port_burst_0_downstream_continuerequest;

  assign ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1 = ddr2_multi_port_burst_0_downstream_requests_ddr2_s1 & ~((ddr2_multi_port_burst_0_downstream_read & ((ddr2_multi_port_burst_0_downstream_latency_counter != 0) | (1 < ddr2_multi_port_burst_0_downstream_latency_counter))) | ddr2_multi_port_burst_1_downstream_arbiterlock);
  //unique name for ddr2_s1_move_on_to_next_transaction, which is an e_assign
  assign ddr2_s1_move_on_to_next_transaction = ddr2_s1_this_cycle_is_the_last_burst & ddr2_s1_load_fifo;

  //the currently selected burstcount for ddr2_s1, which is an e_mux
  assign ddr2_s1_selected_burstcount = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_0_downstream_burstcount :
    (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_1_downstream_burstcount :
    1;

  //burstcount_fifo_for_ddr2_s1, which is an e_fifo_with_registered_outputs
  burstcount_fifo_for_ddr2_s1_module burstcount_fifo_for_ddr2_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (ddr2_s1_selected_burstcount),
      .data_out             (ddr2_s1_transaction_burst_count),
      .empty                (ddr2_s1_burstcount_fifo_empty),
      .fifo_contains_ones_n (),
      .full                 (),
      .read                 (ddr2_s1_this_cycle_is_the_last_burst),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~ddr2_s1_waits_for_read & ddr2_s1_load_fifo & ~(ddr2_s1_this_cycle_is_the_last_burst & ddr2_s1_burstcount_fifo_empty))
    );

  //ddr2_s1 current burst minus one, which is an e_assign
  assign ddr2_s1_current_burst_minus_one = ddr2_s1_current_burst - 1;

  //what to load in current_burst, for ddr2_s1, which is an e_mux
  assign ddr2_s1_next_burst_count = (((in_a_read_cycle & ~ddr2_s1_waits_for_read) & ~ddr2_s1_load_fifo))? ddr2_s1_selected_burstcount :
    ((in_a_read_cycle & ~ddr2_s1_waits_for_read & ddr2_s1_this_cycle_is_the_last_burst & ddr2_s1_burstcount_fifo_empty))? ddr2_s1_selected_burstcount :
    (ddr2_s1_this_cycle_is_the_last_burst)? ddr2_s1_transaction_burst_count :
    ddr2_s1_current_burst_minus_one;

  //the current burst count for ddr2_s1, to be decremented, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_current_burst <= 0;
      else if (ddr2_s1_readdatavalid_from_sa | (~ddr2_s1_load_fifo & (in_a_read_cycle & ~ddr2_s1_waits_for_read)))
          ddr2_s1_current_burst <= ddr2_s1_next_burst_count;
    end


  //a 1 or burstcount fifo empty, to initialize the counter, which is an e_mux
  assign p0_ddr2_s1_load_fifo = (~ddr2_s1_load_fifo)? 1 :
    (((in_a_read_cycle & ~ddr2_s1_waits_for_read) & ddr2_s1_load_fifo))? 1 :
    ~ddr2_s1_burstcount_fifo_empty;

  //whether to load directly to the counter or to the fifo, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_load_fifo <= 0;
      else if ((in_a_read_cycle & ~ddr2_s1_waits_for_read) & ~ddr2_s1_load_fifo | ddr2_s1_this_cycle_is_the_last_burst)
          ddr2_s1_load_fifo <= p0_ddr2_s1_load_fifo;
    end


  //the last cycle in the burst for ddr2_s1, which is an e_assign
  assign ddr2_s1_this_cycle_is_the_last_burst = ~(|ddr2_s1_current_burst_minus_one) & ddr2_s1_readdatavalid_from_sa;

  //rdv_fifo_for_ddr2_multi_port_burst_0_downstream_to_ddr2_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_ddr2_multi_port_burst_0_downstream_to_ddr2_s1_module rdv_fifo_for_ddr2_multi_port_burst_0_downstream_to_ddr2_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1),
      .data_out             (ddr2_multi_port_burst_0_downstream_rdv_fifo_output_from_ddr2_s1),
      .empty                (),
      .fifo_contains_ones_n (ddr2_multi_port_burst_0_downstream_rdv_fifo_empty_ddr2_s1),
      .full                 (),
      .read                 (ddr2_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~ddr2_s1_waits_for_read)
    );

  assign ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register = ~ddr2_multi_port_burst_0_downstream_rdv_fifo_empty_ddr2_s1;
  //local readdatavalid ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1, which is an e_mux
  assign ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1 = (ddr2_s1_readdatavalid_from_sa & ddr2_multi_port_burst_0_downstream_rdv_fifo_output_from_ddr2_s1) & ~ ddr2_multi_port_burst_0_downstream_rdv_fifo_empty_ddr2_s1;

  //ddr2_s1_writedata mux, which is an e_mux
  assign ddr2_s1_writedata = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_0_downstream_writedata :
    ddr2_multi_port_burst_1_downstream_writedata;

  assign ddr2_multi_port_burst_1_downstream_requests_ddr2_s1 = (1) & (ddr2_multi_port_burst_1_downstream_read | ddr2_multi_port_burst_1_downstream_write);
  //ddr2_multi_port_burst_0/downstream granted ddr2/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_ddr2_multi_port_burst_0_downstream_granted_slave_ddr2_s1 <= 0;
      else 
        last_cycle_ddr2_multi_port_burst_0_downstream_granted_slave_ddr2_s1 <= ddr2_multi_port_burst_0_downstream_saved_grant_ddr2_s1 ? 1 : (ddr2_s1_arbitration_holdoff_internal | 0) ? 0 : last_cycle_ddr2_multi_port_burst_0_downstream_granted_slave_ddr2_s1;
    end


  //ddr2_multi_port_burst_0_downstream_continuerequest continued request, which is an e_mux
  assign ddr2_multi_port_burst_0_downstream_continuerequest = last_cycle_ddr2_multi_port_burst_0_downstream_granted_slave_ddr2_s1 & 1;

  assign ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1 = ddr2_multi_port_burst_1_downstream_requests_ddr2_s1 & ~((ddr2_multi_port_burst_1_downstream_read & ((ddr2_multi_port_burst_1_downstream_latency_counter != 0) | (1 < ddr2_multi_port_burst_1_downstream_latency_counter))) | ddr2_multi_port_burst_0_downstream_arbiterlock);
  //rdv_fifo_for_ddr2_multi_port_burst_1_downstream_to_ddr2_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_ddr2_multi_port_burst_1_downstream_to_ddr2_s1_module rdv_fifo_for_ddr2_multi_port_burst_1_downstream_to_ddr2_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1),
      .data_out             (ddr2_multi_port_burst_1_downstream_rdv_fifo_output_from_ddr2_s1),
      .empty                (),
      .fifo_contains_ones_n (ddr2_multi_port_burst_1_downstream_rdv_fifo_empty_ddr2_s1),
      .full                 (),
      .read                 (ddr2_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~ddr2_s1_waits_for_read)
    );

  assign ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register = ~ddr2_multi_port_burst_1_downstream_rdv_fifo_empty_ddr2_s1;
  //local readdatavalid ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1, which is an e_mux
  assign ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1 = (ddr2_s1_readdatavalid_from_sa & ddr2_multi_port_burst_1_downstream_rdv_fifo_output_from_ddr2_s1) & ~ ddr2_multi_port_burst_1_downstream_rdv_fifo_empty_ddr2_s1;

  //allow new arb cycle for ddr2/s1, which is an e_assign
  assign ddr2_s1_allow_new_arb_cycle = ~ddr2_multi_port_burst_0_downstream_arbiterlock & ~ddr2_multi_port_burst_1_downstream_arbiterlock;

  //ddr2_multi_port_burst_1/downstream assignment into master qualified-requests vector for ddr2/s1, which is an e_assign
  assign ddr2_s1_master_qreq_vector[0] = ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1;

  //ddr2_multi_port_burst_1/downstream grant ddr2/s1, which is an e_assign
  assign ddr2_multi_port_burst_1_downstream_granted_ddr2_s1 = ddr2_s1_grant_vector[0];

  //ddr2_multi_port_burst_1/downstream saved-grant ddr2/s1, which is an e_assign
  assign ddr2_multi_port_burst_1_downstream_saved_grant_ddr2_s1 = ddr2_s1_arb_winner[0];

  //ddr2_multi_port_burst_0/downstream assignment into master qualified-requests vector for ddr2/s1, which is an e_assign
  assign ddr2_s1_master_qreq_vector[1] = ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1;

  //ddr2_multi_port_burst_0/downstream grant ddr2/s1, which is an e_assign
  assign ddr2_multi_port_burst_0_downstream_granted_ddr2_s1 = ddr2_s1_grant_vector[1];

  //ddr2_multi_port_burst_0/downstream saved-grant ddr2/s1, which is an e_assign
  assign ddr2_multi_port_burst_0_downstream_saved_grant_ddr2_s1 = ddr2_s1_arb_winner[1];

  //ddr2/s1 chosen-master double-vector, which is an e_assign
  assign ddr2_s1_chosen_master_double_vector = {ddr2_s1_master_qreq_vector, ddr2_s1_master_qreq_vector} & ({~ddr2_s1_master_qreq_vector, ~ddr2_s1_master_qreq_vector} + ddr2_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign ddr2_s1_arb_winner = (ddr2_s1_allow_new_arb_cycle & | ddr2_s1_grant_vector) ? ddr2_s1_grant_vector : ddr2_s1_saved_chosen_master_vector;

  //saved ddr2_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_saved_chosen_master_vector <= 0;
      else if (ddr2_s1_allow_new_arb_cycle)
          ddr2_s1_saved_chosen_master_vector <= |ddr2_s1_grant_vector ? ddr2_s1_grant_vector : ddr2_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign ddr2_s1_grant_vector = {(ddr2_s1_chosen_master_double_vector[1] | ddr2_s1_chosen_master_double_vector[3]),
    (ddr2_s1_chosen_master_double_vector[0] | ddr2_s1_chosen_master_double_vector[2])};

  //ddr2/s1 chosen master rotated left, which is an e_assign
  assign ddr2_s1_chosen_master_rot_left = (ddr2_s1_arb_winner << 1) ? (ddr2_s1_arb_winner << 1) : 1;

  //ddr2/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_arb_addend <= 1;
      else if (|ddr2_s1_grant_vector)
          ddr2_s1_arb_addend <= ddr2_s1_end_xfer? ddr2_s1_chosen_master_rot_left : ddr2_s1_grant_vector;
    end


  //assign ddr2_s1_resetrequest_n_from_sa = ddr2_s1_resetrequest_n so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_s1_resetrequest_n_from_sa = ddr2_s1_resetrequest_n;

  //ddr2_s1_firsttransfer first transaction, which is an e_assign
  assign ddr2_s1_firsttransfer = ddr2_s1_begins_xfer ? ddr2_s1_unreg_firsttransfer : ddr2_s1_reg_firsttransfer;

  //ddr2_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign ddr2_s1_unreg_firsttransfer = ~(ddr2_s1_slavearbiterlockenable & ddr2_s1_any_continuerequest);

  //ddr2_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_reg_firsttransfer <= 1'b1;
      else if (ddr2_s1_begins_xfer)
          ddr2_s1_reg_firsttransfer <= ddr2_s1_unreg_firsttransfer;
    end


  //ddr2_s1_next_bbt_burstcount next_bbt_burstcount, which is an e_mux
  assign ddr2_s1_next_bbt_burstcount = ((((ddr2_s1_write) && (ddr2_s1_bbt_burstcounter == 0))))? (ddr2_s1_burstcount - 1) :
    ((((ddr2_s1_read) && (ddr2_s1_bbt_burstcounter == 0))))? 0 :
    (ddr2_s1_bbt_burstcounter - 1);

  //ddr2_s1_bbt_burstcounter bbt_burstcounter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_s1_bbt_burstcounter <= 0;
      else if (ddr2_s1_begins_xfer)
          ddr2_s1_bbt_burstcounter <= ddr2_s1_next_bbt_burstcount;
    end


  //ddr2_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign ddr2_s1_beginbursttransfer_internal = ddr2_s1_begins_xfer & (ddr2_s1_bbt_burstcounter == 0);

  //ddr2/s1 begin burst transfer to slave, which is an e_assign
  assign ddr2_s1_beginbursttransfer = ddr2_s1_beginbursttransfer_internal;

  //ddr2_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign ddr2_s1_arbitration_holdoff_internal = ddr2_s1_begins_xfer & ddr2_s1_firsttransfer;

  //ddr2_s1_read assignment, which is an e_mux
  assign ddr2_s1_read = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_0_downstream_read) | (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_1_downstream_read);

  //ddr2_s1_write assignment, which is an e_mux
  assign ddr2_s1_write = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_0_downstream_write) | (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_1_downstream_write);

  assign shifted_address_to_ddr2_s1_from_ddr2_multi_port_burst_0_downstream = ddr2_multi_port_burst_0_downstream_address_to_slave;
  //ddr2_s1_address mux, which is an e_mux
  assign ddr2_s1_address = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1)? (shifted_address_to_ddr2_s1_from_ddr2_multi_port_burst_0_downstream >> 5) :
    (shifted_address_to_ddr2_s1_from_ddr2_multi_port_burst_1_downstream >> 5);

  assign shifted_address_to_ddr2_s1_from_ddr2_multi_port_burst_1_downstream = ddr2_multi_port_burst_1_downstream_address_to_slave;
  //d1_ddr2_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_ddr2_s1_end_xfer <= 1;
      else 
        d1_ddr2_s1_end_xfer <= ddr2_s1_end_xfer;
    end


  //ddr2_s1_waits_for_read in a cycle, which is an e_mux
  assign ddr2_s1_waits_for_read = ddr2_s1_in_a_read_cycle & ~ddr2_s1_waitrequest_n_from_sa;

  //ddr2_s1_in_a_read_cycle assignment, which is an e_assign
  assign ddr2_s1_in_a_read_cycle = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_0_downstream_read) | (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_1_downstream_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = ddr2_s1_in_a_read_cycle;

  //ddr2_s1_waits_for_write in a cycle, which is an e_mux
  assign ddr2_s1_waits_for_write = ddr2_s1_in_a_write_cycle & ~ddr2_s1_waitrequest_n_from_sa;

  //ddr2_s1_in_a_write_cycle assignment, which is an e_assign
  assign ddr2_s1_in_a_write_cycle = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_0_downstream_write) | (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1 & ddr2_multi_port_burst_1_downstream_write);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = ddr2_s1_in_a_write_cycle;

  assign wait_for_ddr2_s1_counter = 0;
  //ddr2_s1_byteenable byte enable port mux, which is an e_mux
  assign ddr2_s1_byteenable = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_0_downstream_byteenable :
    (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_1_downstream_byteenable :
    -1;

  //burstcount mux, which is an e_mux
  assign ddr2_s1_burstcount = (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_0_downstream_burstcount :
    (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1)? ddr2_multi_port_burst_1_downstream_burstcount :
    1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //ddr2/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //ddr2_multi_port_burst_0/downstream non-zero arbitrationshare assertion, which is an e_process
  always @(posedge clk)
    begin
      if (ddr2_multi_port_burst_0_downstream_requests_ddr2_s1 && (ddr2_multi_port_burst_0_downstream_arbitrationshare == 0) && enable_nonzero_assertions)
        begin
          $write("%0d ns: ddr2_multi_port_burst_0/downstream drove 0 on its 'arbitrationshare' port while accessing slave ddr2/s1", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_0/downstream non-zero burstcount assertion, which is an e_process
  always @(posedge clk)
    begin
      if (ddr2_multi_port_burst_0_downstream_requests_ddr2_s1 && (ddr2_multi_port_burst_0_downstream_burstcount == 0) && enable_nonzero_assertions)
        begin
          $write("%0d ns: ddr2_multi_port_burst_0/downstream drove 0 on its 'burstcount' port while accessing slave ddr2/s1", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_1/downstream non-zero arbitrationshare assertion, which is an e_process
  always @(posedge clk)
    begin
      if (ddr2_multi_port_burst_1_downstream_requests_ddr2_s1 && (ddr2_multi_port_burst_1_downstream_arbitrationshare == 0) && enable_nonzero_assertions)
        begin
          $write("%0d ns: ddr2_multi_port_burst_1/downstream drove 0 on its 'arbitrationshare' port while accessing slave ddr2/s1", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_1/downstream non-zero burstcount assertion, which is an e_process
  always @(posedge clk)
    begin
      if (ddr2_multi_port_burst_1_downstream_requests_ddr2_s1 && (ddr2_multi_port_burst_1_downstream_burstcount == 0) && enable_nonzero_assertions)
        begin
          $write("%0d ns: ddr2_multi_port_burst_1/downstream drove 0 on its 'burstcount' port while accessing slave ddr2/s1", $time);
          $stop;
        end
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1 + ddr2_multi_port_burst_1_downstream_granted_ddr2_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (ddr2_multi_port_burst_0_downstream_saved_grant_ddr2_s1 + ddr2_multi_port_burst_1_downstream_saved_grant_ddr2_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_multi_port_reset_clk_50_domain_synch_module (
                                                          // inputs:
                                                           clk,
                                                           data_in,
                                                           reset_n,

                                                          // outputs:
                                                           data_out
                                                        )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module burstcount_fifo_for_ddr2_multi_port_burst_0_upstream_module (
                                                                     // inputs:
                                                                      clear_fifo,
                                                                      clk,
                                                                      data_in,
                                                                      read,
                                                                      reset_n,
                                                                      sync_reset,
                                                                      write,

                                                                     // outputs:
                                                                      data_out,
                                                                      empty,
                                                                      fifo_contains_ones_n,
                                                                      full
                                                                   )
;

  output  [  7: 0] data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input   [  7: 0] data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire    [  7: 0] data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_10;
  reg              full_11;
  reg              full_12;
  reg              full_13;
  reg              full_14;
  reg              full_15;
  reg              full_16;
  reg              full_17;
  reg              full_18;
  reg              full_19;
  reg              full_2;
  reg              full_20;
  reg              full_21;
  reg              full_22;
  reg              full_23;
  reg              full_24;
  reg              full_25;
  reg              full_26;
  reg              full_27;
  reg              full_28;
  reg              full_29;
  reg              full_3;
  reg              full_30;
  reg              full_31;
  reg              full_32;
  reg              full_33;
  wire             full_34;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  reg              full_7;
  reg              full_8;
  reg              full_9;
  reg     [  6: 0] how_many_ones;
  wire    [  6: 0] one_count_minus_one;
  wire    [  6: 0] one_count_plus_one;
  wire             p0_full_0;
  wire    [  7: 0] p0_stage_0;
  wire             p10_full_10;
  wire    [  7: 0] p10_stage_10;
  wire             p11_full_11;
  wire    [  7: 0] p11_stage_11;
  wire             p12_full_12;
  wire    [  7: 0] p12_stage_12;
  wire             p13_full_13;
  wire    [  7: 0] p13_stage_13;
  wire             p14_full_14;
  wire    [  7: 0] p14_stage_14;
  wire             p15_full_15;
  wire    [  7: 0] p15_stage_15;
  wire             p16_full_16;
  wire    [  7: 0] p16_stage_16;
  wire             p17_full_17;
  wire    [  7: 0] p17_stage_17;
  wire             p18_full_18;
  wire    [  7: 0] p18_stage_18;
  wire             p19_full_19;
  wire    [  7: 0] p19_stage_19;
  wire             p1_full_1;
  wire    [  7: 0] p1_stage_1;
  wire             p20_full_20;
  wire    [  7: 0] p20_stage_20;
  wire             p21_full_21;
  wire    [  7: 0] p21_stage_21;
  wire             p22_full_22;
  wire    [  7: 0] p22_stage_22;
  wire             p23_full_23;
  wire    [  7: 0] p23_stage_23;
  wire             p24_full_24;
  wire    [  7: 0] p24_stage_24;
  wire             p25_full_25;
  wire    [  7: 0] p25_stage_25;
  wire             p26_full_26;
  wire    [  7: 0] p26_stage_26;
  wire             p27_full_27;
  wire    [  7: 0] p27_stage_27;
  wire             p28_full_28;
  wire    [  7: 0] p28_stage_28;
  wire             p29_full_29;
  wire    [  7: 0] p29_stage_29;
  wire             p2_full_2;
  wire    [  7: 0] p2_stage_2;
  wire             p30_full_30;
  wire    [  7: 0] p30_stage_30;
  wire             p31_full_31;
  wire    [  7: 0] p31_stage_31;
  wire             p32_full_32;
  wire    [  7: 0] p32_stage_32;
  wire             p33_full_33;
  wire    [  7: 0] p33_stage_33;
  wire             p3_full_3;
  wire    [  7: 0] p3_stage_3;
  wire             p4_full_4;
  wire    [  7: 0] p4_stage_4;
  wire             p5_full_5;
  wire    [  7: 0] p5_stage_5;
  wire             p6_full_6;
  wire    [  7: 0] p6_stage_6;
  wire             p7_full_7;
  wire    [  7: 0] p7_stage_7;
  wire             p8_full_8;
  wire    [  7: 0] p8_stage_8;
  wire             p9_full_9;
  wire    [  7: 0] p9_stage_9;
  reg     [  7: 0] stage_0;
  reg     [  7: 0] stage_1;
  reg     [  7: 0] stage_10;
  reg     [  7: 0] stage_11;
  reg     [  7: 0] stage_12;
  reg     [  7: 0] stage_13;
  reg     [  7: 0] stage_14;
  reg     [  7: 0] stage_15;
  reg     [  7: 0] stage_16;
  reg     [  7: 0] stage_17;
  reg     [  7: 0] stage_18;
  reg     [  7: 0] stage_19;
  reg     [  7: 0] stage_2;
  reg     [  7: 0] stage_20;
  reg     [  7: 0] stage_21;
  reg     [  7: 0] stage_22;
  reg     [  7: 0] stage_23;
  reg     [  7: 0] stage_24;
  reg     [  7: 0] stage_25;
  reg     [  7: 0] stage_26;
  reg     [  7: 0] stage_27;
  reg     [  7: 0] stage_28;
  reg     [  7: 0] stage_29;
  reg     [  7: 0] stage_3;
  reg     [  7: 0] stage_30;
  reg     [  7: 0] stage_31;
  reg     [  7: 0] stage_32;
  reg     [  7: 0] stage_33;
  reg     [  7: 0] stage_4;
  reg     [  7: 0] stage_5;
  reg     [  7: 0] stage_6;
  reg     [  7: 0] stage_7;
  reg     [  7: 0] stage_8;
  reg     [  7: 0] stage_9;
  wire    [  6: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_33;
  assign empty = !full_0;
  assign full_34 = 0;
  //data_33, which is an e_mux
  assign p33_stage_33 = ((full_34 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_33, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_33 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_33))
          if (sync_reset & full_33 & !((full_34 == 0) & read & write))
              stage_33 <= 0;
          else 
            stage_33 <= p33_stage_33;
    end


  //control_33, which is an e_mux
  assign p33_full_33 = ((read & !write) == 0)? full_32 :
    0;

  //control_reg_33, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_33 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_33 <= 0;
          else 
            full_33 <= p33_full_33;
    end


  //data_32, which is an e_mux
  assign p32_stage_32 = ((full_33 & ~clear_fifo) == 0)? data_in :
    stage_33;

  //data_reg_32, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_32 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_32))
          if (sync_reset & full_32 & !((full_33 == 0) & read & write))
              stage_32 <= 0;
          else 
            stage_32 <= p32_stage_32;
    end


  //control_32, which is an e_mux
  assign p32_full_32 = ((read & !write) == 0)? full_31 :
    full_33;

  //control_reg_32, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_32 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_32 <= 0;
          else 
            full_32 <= p32_full_32;
    end


  //data_31, which is an e_mux
  assign p31_stage_31 = ((full_32 & ~clear_fifo) == 0)? data_in :
    stage_32;

  //data_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_31 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_31))
          if (sync_reset & full_31 & !((full_32 == 0) & read & write))
              stage_31 <= 0;
          else 
            stage_31 <= p31_stage_31;
    end


  //control_31, which is an e_mux
  assign p31_full_31 = ((read & !write) == 0)? full_30 :
    full_32;

  //control_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_31 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_31 <= 0;
          else 
            full_31 <= p31_full_31;
    end


  //data_30, which is an e_mux
  assign p30_stage_30 = ((full_31 & ~clear_fifo) == 0)? data_in :
    stage_31;

  //data_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_30 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_30))
          if (sync_reset & full_30 & !((full_31 == 0) & read & write))
              stage_30 <= 0;
          else 
            stage_30 <= p30_stage_30;
    end


  //control_30, which is an e_mux
  assign p30_full_30 = ((read & !write) == 0)? full_29 :
    full_31;

  //control_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_30 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_30 <= 0;
          else 
            full_30 <= p30_full_30;
    end


  //data_29, which is an e_mux
  assign p29_stage_29 = ((full_30 & ~clear_fifo) == 0)? data_in :
    stage_30;

  //data_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_29 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_29))
          if (sync_reset & full_29 & !((full_30 == 0) & read & write))
              stage_29 <= 0;
          else 
            stage_29 <= p29_stage_29;
    end


  //control_29, which is an e_mux
  assign p29_full_29 = ((read & !write) == 0)? full_28 :
    full_30;

  //control_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_29 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_29 <= 0;
          else 
            full_29 <= p29_full_29;
    end


  //data_28, which is an e_mux
  assign p28_stage_28 = ((full_29 & ~clear_fifo) == 0)? data_in :
    stage_29;

  //data_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_28 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_28))
          if (sync_reset & full_28 & !((full_29 == 0) & read & write))
              stage_28 <= 0;
          else 
            stage_28 <= p28_stage_28;
    end


  //control_28, which is an e_mux
  assign p28_full_28 = ((read & !write) == 0)? full_27 :
    full_29;

  //control_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_28 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_28 <= 0;
          else 
            full_28 <= p28_full_28;
    end


  //data_27, which is an e_mux
  assign p27_stage_27 = ((full_28 & ~clear_fifo) == 0)? data_in :
    stage_28;

  //data_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_27 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_27))
          if (sync_reset & full_27 & !((full_28 == 0) & read & write))
              stage_27 <= 0;
          else 
            stage_27 <= p27_stage_27;
    end


  //control_27, which is an e_mux
  assign p27_full_27 = ((read & !write) == 0)? full_26 :
    full_28;

  //control_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_27 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_27 <= 0;
          else 
            full_27 <= p27_full_27;
    end


  //data_26, which is an e_mux
  assign p26_stage_26 = ((full_27 & ~clear_fifo) == 0)? data_in :
    stage_27;

  //data_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_26 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_26))
          if (sync_reset & full_26 & !((full_27 == 0) & read & write))
              stage_26 <= 0;
          else 
            stage_26 <= p26_stage_26;
    end


  //control_26, which is an e_mux
  assign p26_full_26 = ((read & !write) == 0)? full_25 :
    full_27;

  //control_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_26 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_26 <= 0;
          else 
            full_26 <= p26_full_26;
    end


  //data_25, which is an e_mux
  assign p25_stage_25 = ((full_26 & ~clear_fifo) == 0)? data_in :
    stage_26;

  //data_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_25 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_25))
          if (sync_reset & full_25 & !((full_26 == 0) & read & write))
              stage_25 <= 0;
          else 
            stage_25 <= p25_stage_25;
    end


  //control_25, which is an e_mux
  assign p25_full_25 = ((read & !write) == 0)? full_24 :
    full_26;

  //control_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_25 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_25 <= 0;
          else 
            full_25 <= p25_full_25;
    end


  //data_24, which is an e_mux
  assign p24_stage_24 = ((full_25 & ~clear_fifo) == 0)? data_in :
    stage_25;

  //data_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_24 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_24))
          if (sync_reset & full_24 & !((full_25 == 0) & read & write))
              stage_24 <= 0;
          else 
            stage_24 <= p24_stage_24;
    end


  //control_24, which is an e_mux
  assign p24_full_24 = ((read & !write) == 0)? full_23 :
    full_25;

  //control_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_24 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_24 <= 0;
          else 
            full_24 <= p24_full_24;
    end


  //data_23, which is an e_mux
  assign p23_stage_23 = ((full_24 & ~clear_fifo) == 0)? data_in :
    stage_24;

  //data_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_23 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_23))
          if (sync_reset & full_23 & !((full_24 == 0) & read & write))
              stage_23 <= 0;
          else 
            stage_23 <= p23_stage_23;
    end


  //control_23, which is an e_mux
  assign p23_full_23 = ((read & !write) == 0)? full_22 :
    full_24;

  //control_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_23 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_23 <= 0;
          else 
            full_23 <= p23_full_23;
    end


  //data_22, which is an e_mux
  assign p22_stage_22 = ((full_23 & ~clear_fifo) == 0)? data_in :
    stage_23;

  //data_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_22 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_22))
          if (sync_reset & full_22 & !((full_23 == 0) & read & write))
              stage_22 <= 0;
          else 
            stage_22 <= p22_stage_22;
    end


  //control_22, which is an e_mux
  assign p22_full_22 = ((read & !write) == 0)? full_21 :
    full_23;

  //control_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_22 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_22 <= 0;
          else 
            full_22 <= p22_full_22;
    end


  //data_21, which is an e_mux
  assign p21_stage_21 = ((full_22 & ~clear_fifo) == 0)? data_in :
    stage_22;

  //data_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_21 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_21))
          if (sync_reset & full_21 & !((full_22 == 0) & read & write))
              stage_21 <= 0;
          else 
            stage_21 <= p21_stage_21;
    end


  //control_21, which is an e_mux
  assign p21_full_21 = ((read & !write) == 0)? full_20 :
    full_22;

  //control_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_21 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_21 <= 0;
          else 
            full_21 <= p21_full_21;
    end


  //data_20, which is an e_mux
  assign p20_stage_20 = ((full_21 & ~clear_fifo) == 0)? data_in :
    stage_21;

  //data_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_20 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_20))
          if (sync_reset & full_20 & !((full_21 == 0) & read & write))
              stage_20 <= 0;
          else 
            stage_20 <= p20_stage_20;
    end


  //control_20, which is an e_mux
  assign p20_full_20 = ((read & !write) == 0)? full_19 :
    full_21;

  //control_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_20 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_20 <= 0;
          else 
            full_20 <= p20_full_20;
    end


  //data_19, which is an e_mux
  assign p19_stage_19 = ((full_20 & ~clear_fifo) == 0)? data_in :
    stage_20;

  //data_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_19 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_19))
          if (sync_reset & full_19 & !((full_20 == 0) & read & write))
              stage_19 <= 0;
          else 
            stage_19 <= p19_stage_19;
    end


  //control_19, which is an e_mux
  assign p19_full_19 = ((read & !write) == 0)? full_18 :
    full_20;

  //control_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_19 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_19 <= 0;
          else 
            full_19 <= p19_full_19;
    end


  //data_18, which is an e_mux
  assign p18_stage_18 = ((full_19 & ~clear_fifo) == 0)? data_in :
    stage_19;

  //data_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_18 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_18))
          if (sync_reset & full_18 & !((full_19 == 0) & read & write))
              stage_18 <= 0;
          else 
            stage_18 <= p18_stage_18;
    end


  //control_18, which is an e_mux
  assign p18_full_18 = ((read & !write) == 0)? full_17 :
    full_19;

  //control_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_18 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_18 <= 0;
          else 
            full_18 <= p18_full_18;
    end


  //data_17, which is an e_mux
  assign p17_stage_17 = ((full_18 & ~clear_fifo) == 0)? data_in :
    stage_18;

  //data_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_17 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_17))
          if (sync_reset & full_17 & !((full_18 == 0) & read & write))
              stage_17 <= 0;
          else 
            stage_17 <= p17_stage_17;
    end


  //control_17, which is an e_mux
  assign p17_full_17 = ((read & !write) == 0)? full_16 :
    full_18;

  //control_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_17 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_17 <= 0;
          else 
            full_17 <= p17_full_17;
    end


  //data_16, which is an e_mux
  assign p16_stage_16 = ((full_17 & ~clear_fifo) == 0)? data_in :
    stage_17;

  //data_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_16 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_16))
          if (sync_reset & full_16 & !((full_17 == 0) & read & write))
              stage_16 <= 0;
          else 
            stage_16 <= p16_stage_16;
    end


  //control_16, which is an e_mux
  assign p16_full_16 = ((read & !write) == 0)? full_15 :
    full_17;

  //control_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_16 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_16 <= 0;
          else 
            full_16 <= p16_full_16;
    end


  //data_15, which is an e_mux
  assign p15_stage_15 = ((full_16 & ~clear_fifo) == 0)? data_in :
    stage_16;

  //data_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_15 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_15))
          if (sync_reset & full_15 & !((full_16 == 0) & read & write))
              stage_15 <= 0;
          else 
            stage_15 <= p15_stage_15;
    end


  //control_15, which is an e_mux
  assign p15_full_15 = ((read & !write) == 0)? full_14 :
    full_16;

  //control_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_15 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_15 <= 0;
          else 
            full_15 <= p15_full_15;
    end


  //data_14, which is an e_mux
  assign p14_stage_14 = ((full_15 & ~clear_fifo) == 0)? data_in :
    stage_15;

  //data_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_14 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_14))
          if (sync_reset & full_14 & !((full_15 == 0) & read & write))
              stage_14 <= 0;
          else 
            stage_14 <= p14_stage_14;
    end


  //control_14, which is an e_mux
  assign p14_full_14 = ((read & !write) == 0)? full_13 :
    full_15;

  //control_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_14 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_14 <= 0;
          else 
            full_14 <= p14_full_14;
    end


  //data_13, which is an e_mux
  assign p13_stage_13 = ((full_14 & ~clear_fifo) == 0)? data_in :
    stage_14;

  //data_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_13 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_13))
          if (sync_reset & full_13 & !((full_14 == 0) & read & write))
              stage_13 <= 0;
          else 
            stage_13 <= p13_stage_13;
    end


  //control_13, which is an e_mux
  assign p13_full_13 = ((read & !write) == 0)? full_12 :
    full_14;

  //control_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_13 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_13 <= 0;
          else 
            full_13 <= p13_full_13;
    end


  //data_12, which is an e_mux
  assign p12_stage_12 = ((full_13 & ~clear_fifo) == 0)? data_in :
    stage_13;

  //data_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_12 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_12))
          if (sync_reset & full_12 & !((full_13 == 0) & read & write))
              stage_12 <= 0;
          else 
            stage_12 <= p12_stage_12;
    end


  //control_12, which is an e_mux
  assign p12_full_12 = ((read & !write) == 0)? full_11 :
    full_13;

  //control_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_12 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_12 <= 0;
          else 
            full_12 <= p12_full_12;
    end


  //data_11, which is an e_mux
  assign p11_stage_11 = ((full_12 & ~clear_fifo) == 0)? data_in :
    stage_12;

  //data_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_11 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_11))
          if (sync_reset & full_11 & !((full_12 == 0) & read & write))
              stage_11 <= 0;
          else 
            stage_11 <= p11_stage_11;
    end


  //control_11, which is an e_mux
  assign p11_full_11 = ((read & !write) == 0)? full_10 :
    full_12;

  //control_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_11 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_11 <= 0;
          else 
            full_11 <= p11_full_11;
    end


  //data_10, which is an e_mux
  assign p10_stage_10 = ((full_11 & ~clear_fifo) == 0)? data_in :
    stage_11;

  //data_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_10 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_10))
          if (sync_reset & full_10 & !((full_11 == 0) & read & write))
              stage_10 <= 0;
          else 
            stage_10 <= p10_stage_10;
    end


  //control_10, which is an e_mux
  assign p10_full_10 = ((read & !write) == 0)? full_9 :
    full_11;

  //control_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_10 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_10 <= 0;
          else 
            full_10 <= p10_full_10;
    end


  //data_9, which is an e_mux
  assign p9_stage_9 = ((full_10 & ~clear_fifo) == 0)? data_in :
    stage_10;

  //data_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_9 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_9))
          if (sync_reset & full_9 & !((full_10 == 0) & read & write))
              stage_9 <= 0;
          else 
            stage_9 <= p9_stage_9;
    end


  //control_9, which is an e_mux
  assign p9_full_9 = ((read & !write) == 0)? full_8 :
    full_10;

  //control_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_9 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_9 <= 0;
          else 
            full_9 <= p9_full_9;
    end


  //data_8, which is an e_mux
  assign p8_stage_8 = ((full_9 & ~clear_fifo) == 0)? data_in :
    stage_9;

  //data_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_8 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_8))
          if (sync_reset & full_8 & !((full_9 == 0) & read & write))
              stage_8 <= 0;
          else 
            stage_8 <= p8_stage_8;
    end


  //control_8, which is an e_mux
  assign p8_full_8 = ((read & !write) == 0)? full_7 :
    full_9;

  //control_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_8 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_8 <= 0;
          else 
            full_8 <= p8_full_8;
    end


  //data_7, which is an e_mux
  assign p7_stage_7 = ((full_8 & ~clear_fifo) == 0)? data_in :
    stage_8;

  //data_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_7 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_7))
          if (sync_reset & full_7 & !((full_8 == 0) & read & write))
              stage_7 <= 0;
          else 
            stage_7 <= p7_stage_7;
    end


  //control_7, which is an e_mux
  assign p7_full_7 = ((read & !write) == 0)? full_6 :
    full_8;

  //control_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_7 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_7 <= 0;
          else 
            full_7 <= p7_full_7;
    end


  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    stage_7;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    full_7;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_Read_Port0_avalon_master_to_ddr2_multi_port_burst_0_upstream_module (
                                                                                          // inputs:
                                                                                           clear_fifo,
                                                                                           clk,
                                                                                           data_in,
                                                                                           read,
                                                                                           reset_n,
                                                                                           sync_reset,
                                                                                           write,

                                                                                          // outputs:
                                                                                           data_out,
                                                                                           empty,
                                                                                           fifo_contains_ones_n,
                                                                                           full
                                                                                        )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_10;
  reg              full_11;
  reg              full_12;
  reg              full_13;
  reg              full_14;
  reg              full_15;
  reg              full_16;
  reg              full_17;
  reg              full_18;
  reg              full_19;
  reg              full_2;
  reg              full_20;
  reg              full_21;
  reg              full_22;
  reg              full_23;
  reg              full_24;
  reg              full_25;
  reg              full_26;
  reg              full_27;
  reg              full_28;
  reg              full_29;
  reg              full_3;
  reg              full_30;
  reg              full_31;
  reg              full_32;
  reg              full_33;
  wire             full_34;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  reg              full_7;
  reg              full_8;
  reg              full_9;
  reg     [  6: 0] how_many_ones;
  wire    [  6: 0] one_count_minus_one;
  wire    [  6: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p10_full_10;
  wire             p10_stage_10;
  wire             p11_full_11;
  wire             p11_stage_11;
  wire             p12_full_12;
  wire             p12_stage_12;
  wire             p13_full_13;
  wire             p13_stage_13;
  wire             p14_full_14;
  wire             p14_stage_14;
  wire             p15_full_15;
  wire             p15_stage_15;
  wire             p16_full_16;
  wire             p16_stage_16;
  wire             p17_full_17;
  wire             p17_stage_17;
  wire             p18_full_18;
  wire             p18_stage_18;
  wire             p19_full_19;
  wire             p19_stage_19;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p20_full_20;
  wire             p20_stage_20;
  wire             p21_full_21;
  wire             p21_stage_21;
  wire             p22_full_22;
  wire             p22_stage_22;
  wire             p23_full_23;
  wire             p23_stage_23;
  wire             p24_full_24;
  wire             p24_stage_24;
  wire             p25_full_25;
  wire             p25_stage_25;
  wire             p26_full_26;
  wire             p26_stage_26;
  wire             p27_full_27;
  wire             p27_stage_27;
  wire             p28_full_28;
  wire             p28_stage_28;
  wire             p29_full_29;
  wire             p29_stage_29;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p30_full_30;
  wire             p30_stage_30;
  wire             p31_full_31;
  wire             p31_stage_31;
  wire             p32_full_32;
  wire             p32_stage_32;
  wire             p33_full_33;
  wire             p33_stage_33;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  wire             p7_full_7;
  wire             p7_stage_7;
  wire             p8_full_8;
  wire             p8_stage_8;
  wire             p9_full_9;
  wire             p9_stage_9;
  reg              stage_0;
  reg              stage_1;
  reg              stage_10;
  reg              stage_11;
  reg              stage_12;
  reg              stage_13;
  reg              stage_14;
  reg              stage_15;
  reg              stage_16;
  reg              stage_17;
  reg              stage_18;
  reg              stage_19;
  reg              stage_2;
  reg              stage_20;
  reg              stage_21;
  reg              stage_22;
  reg              stage_23;
  reg              stage_24;
  reg              stage_25;
  reg              stage_26;
  reg              stage_27;
  reg              stage_28;
  reg              stage_29;
  reg              stage_3;
  reg              stage_30;
  reg              stage_31;
  reg              stage_32;
  reg              stage_33;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  reg              stage_7;
  reg              stage_8;
  reg              stage_9;
  wire    [  6: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_33;
  assign empty = !full_0;
  assign full_34 = 0;
  //data_33, which is an e_mux
  assign p33_stage_33 = ((full_34 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_33, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_33 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_33))
          if (sync_reset & full_33 & !((full_34 == 0) & read & write))
              stage_33 <= 0;
          else 
            stage_33 <= p33_stage_33;
    end


  //control_33, which is an e_mux
  assign p33_full_33 = ((read & !write) == 0)? full_32 :
    0;

  //control_reg_33, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_33 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_33 <= 0;
          else 
            full_33 <= p33_full_33;
    end


  //data_32, which is an e_mux
  assign p32_stage_32 = ((full_33 & ~clear_fifo) == 0)? data_in :
    stage_33;

  //data_reg_32, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_32 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_32))
          if (sync_reset & full_32 & !((full_33 == 0) & read & write))
              stage_32 <= 0;
          else 
            stage_32 <= p32_stage_32;
    end


  //control_32, which is an e_mux
  assign p32_full_32 = ((read & !write) == 0)? full_31 :
    full_33;

  //control_reg_32, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_32 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_32 <= 0;
          else 
            full_32 <= p32_full_32;
    end


  //data_31, which is an e_mux
  assign p31_stage_31 = ((full_32 & ~clear_fifo) == 0)? data_in :
    stage_32;

  //data_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_31 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_31))
          if (sync_reset & full_31 & !((full_32 == 0) & read & write))
              stage_31 <= 0;
          else 
            stage_31 <= p31_stage_31;
    end


  //control_31, which is an e_mux
  assign p31_full_31 = ((read & !write) == 0)? full_30 :
    full_32;

  //control_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_31 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_31 <= 0;
          else 
            full_31 <= p31_full_31;
    end


  //data_30, which is an e_mux
  assign p30_stage_30 = ((full_31 & ~clear_fifo) == 0)? data_in :
    stage_31;

  //data_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_30 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_30))
          if (sync_reset & full_30 & !((full_31 == 0) & read & write))
              stage_30 <= 0;
          else 
            stage_30 <= p30_stage_30;
    end


  //control_30, which is an e_mux
  assign p30_full_30 = ((read & !write) == 0)? full_29 :
    full_31;

  //control_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_30 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_30 <= 0;
          else 
            full_30 <= p30_full_30;
    end


  //data_29, which is an e_mux
  assign p29_stage_29 = ((full_30 & ~clear_fifo) == 0)? data_in :
    stage_30;

  //data_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_29 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_29))
          if (sync_reset & full_29 & !((full_30 == 0) & read & write))
              stage_29 <= 0;
          else 
            stage_29 <= p29_stage_29;
    end


  //control_29, which is an e_mux
  assign p29_full_29 = ((read & !write) == 0)? full_28 :
    full_30;

  //control_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_29 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_29 <= 0;
          else 
            full_29 <= p29_full_29;
    end


  //data_28, which is an e_mux
  assign p28_stage_28 = ((full_29 & ~clear_fifo) == 0)? data_in :
    stage_29;

  //data_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_28 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_28))
          if (sync_reset & full_28 & !((full_29 == 0) & read & write))
              stage_28 <= 0;
          else 
            stage_28 <= p28_stage_28;
    end


  //control_28, which is an e_mux
  assign p28_full_28 = ((read & !write) == 0)? full_27 :
    full_29;

  //control_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_28 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_28 <= 0;
          else 
            full_28 <= p28_full_28;
    end


  //data_27, which is an e_mux
  assign p27_stage_27 = ((full_28 & ~clear_fifo) == 0)? data_in :
    stage_28;

  //data_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_27 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_27))
          if (sync_reset & full_27 & !((full_28 == 0) & read & write))
              stage_27 <= 0;
          else 
            stage_27 <= p27_stage_27;
    end


  //control_27, which is an e_mux
  assign p27_full_27 = ((read & !write) == 0)? full_26 :
    full_28;

  //control_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_27 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_27 <= 0;
          else 
            full_27 <= p27_full_27;
    end


  //data_26, which is an e_mux
  assign p26_stage_26 = ((full_27 & ~clear_fifo) == 0)? data_in :
    stage_27;

  //data_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_26 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_26))
          if (sync_reset & full_26 & !((full_27 == 0) & read & write))
              stage_26 <= 0;
          else 
            stage_26 <= p26_stage_26;
    end


  //control_26, which is an e_mux
  assign p26_full_26 = ((read & !write) == 0)? full_25 :
    full_27;

  //control_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_26 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_26 <= 0;
          else 
            full_26 <= p26_full_26;
    end


  //data_25, which is an e_mux
  assign p25_stage_25 = ((full_26 & ~clear_fifo) == 0)? data_in :
    stage_26;

  //data_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_25 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_25))
          if (sync_reset & full_25 & !((full_26 == 0) & read & write))
              stage_25 <= 0;
          else 
            stage_25 <= p25_stage_25;
    end


  //control_25, which is an e_mux
  assign p25_full_25 = ((read & !write) == 0)? full_24 :
    full_26;

  //control_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_25 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_25 <= 0;
          else 
            full_25 <= p25_full_25;
    end


  //data_24, which is an e_mux
  assign p24_stage_24 = ((full_25 & ~clear_fifo) == 0)? data_in :
    stage_25;

  //data_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_24 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_24))
          if (sync_reset & full_24 & !((full_25 == 0) & read & write))
              stage_24 <= 0;
          else 
            stage_24 <= p24_stage_24;
    end


  //control_24, which is an e_mux
  assign p24_full_24 = ((read & !write) == 0)? full_23 :
    full_25;

  //control_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_24 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_24 <= 0;
          else 
            full_24 <= p24_full_24;
    end


  //data_23, which is an e_mux
  assign p23_stage_23 = ((full_24 & ~clear_fifo) == 0)? data_in :
    stage_24;

  //data_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_23 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_23))
          if (sync_reset & full_23 & !((full_24 == 0) & read & write))
              stage_23 <= 0;
          else 
            stage_23 <= p23_stage_23;
    end


  //control_23, which is an e_mux
  assign p23_full_23 = ((read & !write) == 0)? full_22 :
    full_24;

  //control_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_23 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_23 <= 0;
          else 
            full_23 <= p23_full_23;
    end


  //data_22, which is an e_mux
  assign p22_stage_22 = ((full_23 & ~clear_fifo) == 0)? data_in :
    stage_23;

  //data_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_22 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_22))
          if (sync_reset & full_22 & !((full_23 == 0) & read & write))
              stage_22 <= 0;
          else 
            stage_22 <= p22_stage_22;
    end


  //control_22, which is an e_mux
  assign p22_full_22 = ((read & !write) == 0)? full_21 :
    full_23;

  //control_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_22 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_22 <= 0;
          else 
            full_22 <= p22_full_22;
    end


  //data_21, which is an e_mux
  assign p21_stage_21 = ((full_22 & ~clear_fifo) == 0)? data_in :
    stage_22;

  //data_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_21 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_21))
          if (sync_reset & full_21 & !((full_22 == 0) & read & write))
              stage_21 <= 0;
          else 
            stage_21 <= p21_stage_21;
    end


  //control_21, which is an e_mux
  assign p21_full_21 = ((read & !write) == 0)? full_20 :
    full_22;

  //control_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_21 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_21 <= 0;
          else 
            full_21 <= p21_full_21;
    end


  //data_20, which is an e_mux
  assign p20_stage_20 = ((full_21 & ~clear_fifo) == 0)? data_in :
    stage_21;

  //data_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_20 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_20))
          if (sync_reset & full_20 & !((full_21 == 0) & read & write))
              stage_20 <= 0;
          else 
            stage_20 <= p20_stage_20;
    end


  //control_20, which is an e_mux
  assign p20_full_20 = ((read & !write) == 0)? full_19 :
    full_21;

  //control_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_20 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_20 <= 0;
          else 
            full_20 <= p20_full_20;
    end


  //data_19, which is an e_mux
  assign p19_stage_19 = ((full_20 & ~clear_fifo) == 0)? data_in :
    stage_20;

  //data_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_19 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_19))
          if (sync_reset & full_19 & !((full_20 == 0) & read & write))
              stage_19 <= 0;
          else 
            stage_19 <= p19_stage_19;
    end


  //control_19, which is an e_mux
  assign p19_full_19 = ((read & !write) == 0)? full_18 :
    full_20;

  //control_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_19 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_19 <= 0;
          else 
            full_19 <= p19_full_19;
    end


  //data_18, which is an e_mux
  assign p18_stage_18 = ((full_19 & ~clear_fifo) == 0)? data_in :
    stage_19;

  //data_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_18 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_18))
          if (sync_reset & full_18 & !((full_19 == 0) & read & write))
              stage_18 <= 0;
          else 
            stage_18 <= p18_stage_18;
    end


  //control_18, which is an e_mux
  assign p18_full_18 = ((read & !write) == 0)? full_17 :
    full_19;

  //control_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_18 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_18 <= 0;
          else 
            full_18 <= p18_full_18;
    end


  //data_17, which is an e_mux
  assign p17_stage_17 = ((full_18 & ~clear_fifo) == 0)? data_in :
    stage_18;

  //data_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_17 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_17))
          if (sync_reset & full_17 & !((full_18 == 0) & read & write))
              stage_17 <= 0;
          else 
            stage_17 <= p17_stage_17;
    end


  //control_17, which is an e_mux
  assign p17_full_17 = ((read & !write) == 0)? full_16 :
    full_18;

  //control_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_17 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_17 <= 0;
          else 
            full_17 <= p17_full_17;
    end


  //data_16, which is an e_mux
  assign p16_stage_16 = ((full_17 & ~clear_fifo) == 0)? data_in :
    stage_17;

  //data_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_16 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_16))
          if (sync_reset & full_16 & !((full_17 == 0) & read & write))
              stage_16 <= 0;
          else 
            stage_16 <= p16_stage_16;
    end


  //control_16, which is an e_mux
  assign p16_full_16 = ((read & !write) == 0)? full_15 :
    full_17;

  //control_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_16 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_16 <= 0;
          else 
            full_16 <= p16_full_16;
    end


  //data_15, which is an e_mux
  assign p15_stage_15 = ((full_16 & ~clear_fifo) == 0)? data_in :
    stage_16;

  //data_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_15 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_15))
          if (sync_reset & full_15 & !((full_16 == 0) & read & write))
              stage_15 <= 0;
          else 
            stage_15 <= p15_stage_15;
    end


  //control_15, which is an e_mux
  assign p15_full_15 = ((read & !write) == 0)? full_14 :
    full_16;

  //control_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_15 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_15 <= 0;
          else 
            full_15 <= p15_full_15;
    end


  //data_14, which is an e_mux
  assign p14_stage_14 = ((full_15 & ~clear_fifo) == 0)? data_in :
    stage_15;

  //data_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_14 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_14))
          if (sync_reset & full_14 & !((full_15 == 0) & read & write))
              stage_14 <= 0;
          else 
            stage_14 <= p14_stage_14;
    end


  //control_14, which is an e_mux
  assign p14_full_14 = ((read & !write) == 0)? full_13 :
    full_15;

  //control_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_14 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_14 <= 0;
          else 
            full_14 <= p14_full_14;
    end


  //data_13, which is an e_mux
  assign p13_stage_13 = ((full_14 & ~clear_fifo) == 0)? data_in :
    stage_14;

  //data_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_13 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_13))
          if (sync_reset & full_13 & !((full_14 == 0) & read & write))
              stage_13 <= 0;
          else 
            stage_13 <= p13_stage_13;
    end


  //control_13, which is an e_mux
  assign p13_full_13 = ((read & !write) == 0)? full_12 :
    full_14;

  //control_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_13 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_13 <= 0;
          else 
            full_13 <= p13_full_13;
    end


  //data_12, which is an e_mux
  assign p12_stage_12 = ((full_13 & ~clear_fifo) == 0)? data_in :
    stage_13;

  //data_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_12 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_12))
          if (sync_reset & full_12 & !((full_13 == 0) & read & write))
              stage_12 <= 0;
          else 
            stage_12 <= p12_stage_12;
    end


  //control_12, which is an e_mux
  assign p12_full_12 = ((read & !write) == 0)? full_11 :
    full_13;

  //control_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_12 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_12 <= 0;
          else 
            full_12 <= p12_full_12;
    end


  //data_11, which is an e_mux
  assign p11_stage_11 = ((full_12 & ~clear_fifo) == 0)? data_in :
    stage_12;

  //data_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_11 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_11))
          if (sync_reset & full_11 & !((full_12 == 0) & read & write))
              stage_11 <= 0;
          else 
            stage_11 <= p11_stage_11;
    end


  //control_11, which is an e_mux
  assign p11_full_11 = ((read & !write) == 0)? full_10 :
    full_12;

  //control_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_11 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_11 <= 0;
          else 
            full_11 <= p11_full_11;
    end


  //data_10, which is an e_mux
  assign p10_stage_10 = ((full_11 & ~clear_fifo) == 0)? data_in :
    stage_11;

  //data_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_10 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_10))
          if (sync_reset & full_10 & !((full_11 == 0) & read & write))
              stage_10 <= 0;
          else 
            stage_10 <= p10_stage_10;
    end


  //control_10, which is an e_mux
  assign p10_full_10 = ((read & !write) == 0)? full_9 :
    full_11;

  //control_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_10 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_10 <= 0;
          else 
            full_10 <= p10_full_10;
    end


  //data_9, which is an e_mux
  assign p9_stage_9 = ((full_10 & ~clear_fifo) == 0)? data_in :
    stage_10;

  //data_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_9 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_9))
          if (sync_reset & full_9 & !((full_10 == 0) & read & write))
              stage_9 <= 0;
          else 
            stage_9 <= p9_stage_9;
    end


  //control_9, which is an e_mux
  assign p9_full_9 = ((read & !write) == 0)? full_8 :
    full_10;

  //control_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_9 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_9 <= 0;
          else 
            full_9 <= p9_full_9;
    end


  //data_8, which is an e_mux
  assign p8_stage_8 = ((full_9 & ~clear_fifo) == 0)? data_in :
    stage_9;

  //data_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_8 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_8))
          if (sync_reset & full_8 & !((full_9 == 0) & read & write))
              stage_8 <= 0;
          else 
            stage_8 <= p8_stage_8;
    end


  //control_8, which is an e_mux
  assign p8_full_8 = ((read & !write) == 0)? full_7 :
    full_9;

  //control_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_8 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_8 <= 0;
          else 
            full_8 <= p8_full_8;
    end


  //data_7, which is an e_mux
  assign p7_stage_7 = ((full_8 & ~clear_fifo) == 0)? data_in :
    stage_8;

  //data_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_7 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_7))
          if (sync_reset & full_7 & !((full_8 == 0) & read & write))
              stage_7 <= 0;
          else 
            stage_7 <= p7_stage_7;
    end


  //control_7, which is an e_mux
  assign p7_full_7 = ((read & !write) == 0)? full_6 :
    full_8;

  //control_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_7 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_7 <= 0;
          else 
            full_7 <= p7_full_7;
    end


  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    stage_7;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    full_7;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_multi_port_burst_0_upstream_arbitrator (
                                                     // inputs:
                                                      Read_Port0_avalon_master_address_to_slave,
                                                      Read_Port0_avalon_master_burstcount,
                                                      Read_Port0_avalon_master_chipselect,
                                                      Read_Port0_avalon_master_read,
                                                      Read_Port0_latency_counter,
                                                      clk,
                                                      ddr2_multi_port_burst_0_upstream_readdata,
                                                      ddr2_multi_port_burst_0_upstream_readdatavalid,
                                                      ddr2_multi_port_burst_0_upstream_waitrequest,
                                                      reset_n,

                                                     // outputs:
                                                      Read_Port0_granted_ddr2_multi_port_burst_0_upstream,
                                                      Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream,
                                                      Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream,
                                                      Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register,
                                                      Read_Port0_requests_ddr2_multi_port_burst_0_upstream,
                                                      d1_ddr2_multi_port_burst_0_upstream_end_xfer,
                                                      ddr2_multi_port_burst_0_upstream_address,
                                                      ddr2_multi_port_burst_0_upstream_burstcount,
                                                      ddr2_multi_port_burst_0_upstream_byteaddress,
                                                      ddr2_multi_port_burst_0_upstream_byteenable,
                                                      ddr2_multi_port_burst_0_upstream_debugaccess,
                                                      ddr2_multi_port_burst_0_upstream_read,
                                                      ddr2_multi_port_burst_0_upstream_readdata_from_sa,
                                                      ddr2_multi_port_burst_0_upstream_waitrequest_from_sa,
                                                      ddr2_multi_port_burst_0_upstream_write
                                                   )
;

  output           Read_Port0_granted_ddr2_multi_port_burst_0_upstream;
  output           Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream;
  output           Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream;
  output           Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register;
  output           Read_Port0_requests_ddr2_multi_port_burst_0_upstream;
  output           d1_ddr2_multi_port_burst_0_upstream_end_xfer;
  output  [ 29: 0] ddr2_multi_port_burst_0_upstream_address;
  output  [  7: 0] ddr2_multi_port_burst_0_upstream_burstcount;
  output  [ 34: 0] ddr2_multi_port_burst_0_upstream_byteaddress;
  output  [ 31: 0] ddr2_multi_port_burst_0_upstream_byteenable;
  output           ddr2_multi_port_burst_0_upstream_debugaccess;
  output           ddr2_multi_port_burst_0_upstream_read;
  output  [255: 0] ddr2_multi_port_burst_0_upstream_readdata_from_sa;
  output           ddr2_multi_port_burst_0_upstream_waitrequest_from_sa;
  output           ddr2_multi_port_burst_0_upstream_write;
  input   [ 31: 0] Read_Port0_avalon_master_address_to_slave;
  input   [  7: 0] Read_Port0_avalon_master_burstcount;
  input            Read_Port0_avalon_master_chipselect;
  input            Read_Port0_avalon_master_read;
  input            Read_Port0_latency_counter;
  input            clk;
  input   [255: 0] ddr2_multi_port_burst_0_upstream_readdata;
  input            ddr2_multi_port_burst_0_upstream_readdatavalid;
  input            ddr2_multi_port_burst_0_upstream_waitrequest;
  input            reset_n;

  wire             Read_Port0_avalon_master_arbiterlock;
  wire             Read_Port0_avalon_master_arbiterlock2;
  wire             Read_Port0_avalon_master_continuerequest;
  wire             Read_Port0_granted_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_rdv_fifo_empty_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_rdv_fifo_output_from_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register;
  wire             Read_Port0_requests_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_saved_grant_ddr2_multi_port_burst_0_upstream;
  reg              d1_ddr2_multi_port_burst_0_upstream_end_xfer;
  reg              d1_reasons_to_wait;
  wire    [ 29: 0] ddr2_multi_port_burst_0_upstream_address;
  wire             ddr2_multi_port_burst_0_upstream_allgrants;
  wire             ddr2_multi_port_burst_0_upstream_allow_new_arb_cycle;
  wire             ddr2_multi_port_burst_0_upstream_any_bursting_master_saved_grant;
  wire             ddr2_multi_port_burst_0_upstream_any_continuerequest;
  wire             ddr2_multi_port_burst_0_upstream_arb_counter_enable;
  reg     [  7: 0] ddr2_multi_port_burst_0_upstream_arb_share_counter;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_arb_share_counter_next_value;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_arb_share_set_values;
  reg     [  6: 0] ddr2_multi_port_burst_0_upstream_bbt_burstcounter;
  wire             ddr2_multi_port_burst_0_upstream_beginbursttransfer_internal;
  wire             ddr2_multi_port_burst_0_upstream_begins_xfer;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_burstcount;
  wire             ddr2_multi_port_burst_0_upstream_burstcount_fifo_empty;
  wire    [ 34: 0] ddr2_multi_port_burst_0_upstream_byteaddress;
  wire    [ 31: 0] ddr2_multi_port_burst_0_upstream_byteenable;
  reg     [  7: 0] ddr2_multi_port_burst_0_upstream_current_burst;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_current_burst_minus_one;
  wire             ddr2_multi_port_burst_0_upstream_debugaccess;
  wire             ddr2_multi_port_burst_0_upstream_end_xfer;
  wire             ddr2_multi_port_burst_0_upstream_firsttransfer;
  wire             ddr2_multi_port_burst_0_upstream_grant_vector;
  wire             ddr2_multi_port_burst_0_upstream_in_a_read_cycle;
  wire             ddr2_multi_port_burst_0_upstream_in_a_write_cycle;
  reg              ddr2_multi_port_burst_0_upstream_load_fifo;
  wire             ddr2_multi_port_burst_0_upstream_master_qreq_vector;
  wire             ddr2_multi_port_burst_0_upstream_move_on_to_next_transaction;
  wire    [  6: 0] ddr2_multi_port_burst_0_upstream_next_bbt_burstcount;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_next_burst_count;
  wire             ddr2_multi_port_burst_0_upstream_non_bursting_master_requests;
  wire             ddr2_multi_port_burst_0_upstream_read;
  wire    [255: 0] ddr2_multi_port_burst_0_upstream_readdata_from_sa;
  wire             ddr2_multi_port_burst_0_upstream_readdatavalid_from_sa;
  reg              ddr2_multi_port_burst_0_upstream_reg_firsttransfer;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_selected_burstcount;
  reg              ddr2_multi_port_burst_0_upstream_slavearbiterlockenable;
  wire             ddr2_multi_port_burst_0_upstream_slavearbiterlockenable2;
  wire             ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_transaction_burst_count;
  wire             ddr2_multi_port_burst_0_upstream_unreg_firsttransfer;
  wire             ddr2_multi_port_burst_0_upstream_waitrequest_from_sa;
  wire             ddr2_multi_port_burst_0_upstream_waits_for_read;
  wire             ddr2_multi_port_burst_0_upstream_waits_for_write;
  wire             ddr2_multi_port_burst_0_upstream_write;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_ddr2_multi_port_burst_0_upstream;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p0_ddr2_multi_port_burst_0_upstream_load_fifo;
  wire             wait_for_ddr2_multi_port_burst_0_upstream_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~ddr2_multi_port_burst_0_upstream_end_xfer;
    end


  assign ddr2_multi_port_burst_0_upstream_begins_xfer = ~d1_reasons_to_wait & ((Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream));
  //assign ddr2_multi_port_burst_0_upstream_readdata_from_sa = ddr2_multi_port_burst_0_upstream_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_readdata_from_sa = ddr2_multi_port_burst_0_upstream_readdata;

  assign Read_Port0_requests_ddr2_multi_port_burst_0_upstream = (({Read_Port0_avalon_master_address_to_slave[31 : 30] , 30'b0} == 32'h0) & Read_Port0_avalon_master_chipselect) & (Read_Port0_avalon_master_read & Read_Port0_avalon_master_chipselect);
  //assign ddr2_multi_port_burst_0_upstream_waitrequest_from_sa = ddr2_multi_port_burst_0_upstream_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_waitrequest_from_sa = ddr2_multi_port_burst_0_upstream_waitrequest;

  //assign ddr2_multi_port_burst_0_upstream_readdatavalid_from_sa = ddr2_multi_port_burst_0_upstream_readdatavalid so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_readdatavalid_from_sa = ddr2_multi_port_burst_0_upstream_readdatavalid;

  //ddr2_multi_port_burst_0_upstream_arb_share_counter set values, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_arb_share_set_values = 1;

  //ddr2_multi_port_burst_0_upstream_non_bursting_master_requests mux, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_non_bursting_master_requests = 0;

  //ddr2_multi_port_burst_0_upstream_any_bursting_master_saved_grant mux, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_any_bursting_master_saved_grant = Read_Port0_saved_grant_ddr2_multi_port_burst_0_upstream;

  //ddr2_multi_port_burst_0_upstream_arb_share_counter_next_value assignment, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_arb_share_counter_next_value = ddr2_multi_port_burst_0_upstream_firsttransfer ? (ddr2_multi_port_burst_0_upstream_arb_share_set_values - 1) : |ddr2_multi_port_burst_0_upstream_arb_share_counter ? (ddr2_multi_port_burst_0_upstream_arb_share_counter - 1) : 0;

  //ddr2_multi_port_burst_0_upstream_allgrants all slave grants, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_allgrants = |ddr2_multi_port_burst_0_upstream_grant_vector;

  //ddr2_multi_port_burst_0_upstream_end_xfer assignment, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_end_xfer = ~(ddr2_multi_port_burst_0_upstream_waits_for_read | ddr2_multi_port_burst_0_upstream_waits_for_write);

  //end_xfer_arb_share_counter_term_ddr2_multi_port_burst_0_upstream arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_ddr2_multi_port_burst_0_upstream = ddr2_multi_port_burst_0_upstream_end_xfer & (~ddr2_multi_port_burst_0_upstream_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //ddr2_multi_port_burst_0_upstream_arb_share_counter arbitration counter enable, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_arb_counter_enable = (end_xfer_arb_share_counter_term_ddr2_multi_port_burst_0_upstream & ddr2_multi_port_burst_0_upstream_allgrants) | (end_xfer_arb_share_counter_term_ddr2_multi_port_burst_0_upstream & ~ddr2_multi_port_burst_0_upstream_non_bursting_master_requests);

  //ddr2_multi_port_burst_0_upstream_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_upstream_arb_share_counter <= 0;
      else if (ddr2_multi_port_burst_0_upstream_arb_counter_enable)
          ddr2_multi_port_burst_0_upstream_arb_share_counter <= ddr2_multi_port_burst_0_upstream_arb_share_counter_next_value;
    end


  //ddr2_multi_port_burst_0_upstream_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_upstream_slavearbiterlockenable <= 0;
      else if ((|ddr2_multi_port_burst_0_upstream_master_qreq_vector & end_xfer_arb_share_counter_term_ddr2_multi_port_burst_0_upstream) | (end_xfer_arb_share_counter_term_ddr2_multi_port_burst_0_upstream & ~ddr2_multi_port_burst_0_upstream_non_bursting_master_requests))
          ddr2_multi_port_burst_0_upstream_slavearbiterlockenable <= |ddr2_multi_port_burst_0_upstream_arb_share_counter_next_value;
    end


  //Read_Port0/avalon_master ddr2_multi_port_burst_0/upstream arbiterlock, which is an e_assign
  assign Read_Port0_avalon_master_arbiterlock = ddr2_multi_port_burst_0_upstream_slavearbiterlockenable & Read_Port0_avalon_master_continuerequest;

  //ddr2_multi_port_burst_0_upstream_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_slavearbiterlockenable2 = |ddr2_multi_port_burst_0_upstream_arb_share_counter_next_value;

  //Read_Port0/avalon_master ddr2_multi_port_burst_0/upstream arbiterlock2, which is an e_assign
  assign Read_Port0_avalon_master_arbiterlock2 = ddr2_multi_port_burst_0_upstream_slavearbiterlockenable2 & Read_Port0_avalon_master_continuerequest;

  //ddr2_multi_port_burst_0_upstream_any_continuerequest at least one master continues requesting, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_any_continuerequest = 1;

  //Read_Port0_avalon_master_continuerequest continued request, which is an e_assign
  assign Read_Port0_avalon_master_continuerequest = 1;

  assign Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream = Read_Port0_requests_ddr2_multi_port_burst_0_upstream & ~(((Read_Port0_avalon_master_read & Read_Port0_avalon_master_chipselect) & ((Read_Port0_latency_counter != 0) | (1 < Read_Port0_latency_counter))));
  //unique name for ddr2_multi_port_burst_0_upstream_move_on_to_next_transaction, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_move_on_to_next_transaction = ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst & ddr2_multi_port_burst_0_upstream_load_fifo;

  //the currently selected burstcount for ddr2_multi_port_burst_0_upstream, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_selected_burstcount = (Read_Port0_granted_ddr2_multi_port_burst_0_upstream)? Read_Port0_avalon_master_burstcount :
    1;

  //burstcount_fifo_for_ddr2_multi_port_burst_0_upstream, which is an e_fifo_with_registered_outputs
  burstcount_fifo_for_ddr2_multi_port_burst_0_upstream_module burstcount_fifo_for_ddr2_multi_port_burst_0_upstream
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (ddr2_multi_port_burst_0_upstream_selected_burstcount),
      .data_out             (ddr2_multi_port_burst_0_upstream_transaction_burst_count),
      .empty                (ddr2_multi_port_burst_0_upstream_burstcount_fifo_empty),
      .fifo_contains_ones_n (),
      .full                 (),
      .read                 (ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~ddr2_multi_port_burst_0_upstream_waits_for_read & ddr2_multi_port_burst_0_upstream_load_fifo & ~(ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst & ddr2_multi_port_burst_0_upstream_burstcount_fifo_empty))
    );

  //ddr2_multi_port_burst_0_upstream current burst minus one, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_current_burst_minus_one = ddr2_multi_port_burst_0_upstream_current_burst - 1;

  //what to load in current_burst, for ddr2_multi_port_burst_0_upstream, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_next_burst_count = (((in_a_read_cycle & ~ddr2_multi_port_burst_0_upstream_waits_for_read) & ~ddr2_multi_port_burst_0_upstream_load_fifo))? ddr2_multi_port_burst_0_upstream_selected_burstcount :
    ((in_a_read_cycle & ~ddr2_multi_port_burst_0_upstream_waits_for_read & ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst & ddr2_multi_port_burst_0_upstream_burstcount_fifo_empty))? ddr2_multi_port_burst_0_upstream_selected_burstcount :
    (ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst)? ddr2_multi_port_burst_0_upstream_transaction_burst_count :
    ddr2_multi_port_burst_0_upstream_current_burst_minus_one;

  //the current burst count for ddr2_multi_port_burst_0_upstream, to be decremented, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_upstream_current_burst <= 0;
      else if (ddr2_multi_port_burst_0_upstream_readdatavalid_from_sa | (~ddr2_multi_port_burst_0_upstream_load_fifo & (in_a_read_cycle & ~ddr2_multi_port_burst_0_upstream_waits_for_read)))
          ddr2_multi_port_burst_0_upstream_current_burst <= ddr2_multi_port_burst_0_upstream_next_burst_count;
    end


  //a 1 or burstcount fifo empty, to initialize the counter, which is an e_mux
  assign p0_ddr2_multi_port_burst_0_upstream_load_fifo = (~ddr2_multi_port_burst_0_upstream_load_fifo)? 1 :
    (((in_a_read_cycle & ~ddr2_multi_port_burst_0_upstream_waits_for_read) & ddr2_multi_port_burst_0_upstream_load_fifo))? 1 :
    ~ddr2_multi_port_burst_0_upstream_burstcount_fifo_empty;

  //whether to load directly to the counter or to the fifo, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_upstream_load_fifo <= 0;
      else if ((in_a_read_cycle & ~ddr2_multi_port_burst_0_upstream_waits_for_read) & ~ddr2_multi_port_burst_0_upstream_load_fifo | ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst)
          ddr2_multi_port_burst_0_upstream_load_fifo <= p0_ddr2_multi_port_burst_0_upstream_load_fifo;
    end


  //the last cycle in the burst for ddr2_multi_port_burst_0_upstream, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_this_cycle_is_the_last_burst = ~(|ddr2_multi_port_burst_0_upstream_current_burst_minus_one) & ddr2_multi_port_burst_0_upstream_readdatavalid_from_sa;

  //rdv_fifo_for_Read_Port0_avalon_master_to_ddr2_multi_port_burst_0_upstream, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_Read_Port0_avalon_master_to_ddr2_multi_port_burst_0_upstream_module rdv_fifo_for_Read_Port0_avalon_master_to_ddr2_multi_port_burst_0_upstream
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (Read_Port0_granted_ddr2_multi_port_burst_0_upstream),
      .data_out             (Read_Port0_rdv_fifo_output_from_ddr2_multi_port_burst_0_upstream),
      .empty                (),
      .fifo_contains_ones_n (Read_Port0_rdv_fifo_empty_ddr2_multi_port_burst_0_upstream),
      .full                 (),
      .read                 (ddr2_multi_port_burst_0_upstream_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~ddr2_multi_port_burst_0_upstream_waits_for_read)
    );

  assign Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register = ~Read_Port0_rdv_fifo_empty_ddr2_multi_port_burst_0_upstream;
  //local readdatavalid Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream, which is an e_mux
  assign Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream = ddr2_multi_port_burst_0_upstream_readdatavalid_from_sa;

  //byteaddress mux for ddr2_multi_port_burst_0/upstream, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_byteaddress = Read_Port0_avalon_master_address_to_slave;

  //master is always granted when requested
  assign Read_Port0_granted_ddr2_multi_port_burst_0_upstream = Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream;

  //Read_Port0/avalon_master saved-grant ddr2_multi_port_burst_0/upstream, which is an e_assign
  assign Read_Port0_saved_grant_ddr2_multi_port_burst_0_upstream = Read_Port0_requests_ddr2_multi_port_burst_0_upstream;

  //allow new arb cycle for ddr2_multi_port_burst_0/upstream, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign ddr2_multi_port_burst_0_upstream_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign ddr2_multi_port_burst_0_upstream_master_qreq_vector = 1;

  //ddr2_multi_port_burst_0_upstream_firsttransfer first transaction, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_firsttransfer = ddr2_multi_port_burst_0_upstream_begins_xfer ? ddr2_multi_port_burst_0_upstream_unreg_firsttransfer : ddr2_multi_port_burst_0_upstream_reg_firsttransfer;

  //ddr2_multi_port_burst_0_upstream_unreg_firsttransfer first transaction, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_unreg_firsttransfer = ~(ddr2_multi_port_burst_0_upstream_slavearbiterlockenable & ddr2_multi_port_burst_0_upstream_any_continuerequest);

  //ddr2_multi_port_burst_0_upstream_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_upstream_reg_firsttransfer <= 1'b1;
      else if (ddr2_multi_port_burst_0_upstream_begins_xfer)
          ddr2_multi_port_burst_0_upstream_reg_firsttransfer <= ddr2_multi_port_burst_0_upstream_unreg_firsttransfer;
    end


  //ddr2_multi_port_burst_0_upstream_next_bbt_burstcount next_bbt_burstcount, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_next_bbt_burstcount = ((((ddr2_multi_port_burst_0_upstream_write) && (ddr2_multi_port_burst_0_upstream_bbt_burstcounter == 0))))? (ddr2_multi_port_burst_0_upstream_burstcount - 1) :
    ((((ddr2_multi_port_burst_0_upstream_read) && (ddr2_multi_port_burst_0_upstream_bbt_burstcounter == 0))))? 0 :
    (ddr2_multi_port_burst_0_upstream_bbt_burstcounter - 1);

  //ddr2_multi_port_burst_0_upstream_bbt_burstcounter bbt_burstcounter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_upstream_bbt_burstcounter <= 0;
      else if (ddr2_multi_port_burst_0_upstream_begins_xfer)
          ddr2_multi_port_burst_0_upstream_bbt_burstcounter <= ddr2_multi_port_burst_0_upstream_next_bbt_burstcount;
    end


  //ddr2_multi_port_burst_0_upstream_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_beginbursttransfer_internal = ddr2_multi_port_burst_0_upstream_begins_xfer & (ddr2_multi_port_burst_0_upstream_bbt_burstcounter == 0);

  //ddr2_multi_port_burst_0_upstream_read assignment, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_read = Read_Port0_granted_ddr2_multi_port_burst_0_upstream & (Read_Port0_avalon_master_read & Read_Port0_avalon_master_chipselect);

  //ddr2_multi_port_burst_0_upstream_write assignment, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_write = 0;

  //ddr2_multi_port_burst_0_upstream_address mux, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_address = Read_Port0_avalon_master_address_to_slave;

  //d1_ddr2_multi_port_burst_0_upstream_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_ddr2_multi_port_burst_0_upstream_end_xfer <= 1;
      else 
        d1_ddr2_multi_port_burst_0_upstream_end_xfer <= ddr2_multi_port_burst_0_upstream_end_xfer;
    end


  //ddr2_multi_port_burst_0_upstream_waits_for_read in a cycle, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_waits_for_read = ddr2_multi_port_burst_0_upstream_in_a_read_cycle & ddr2_multi_port_burst_0_upstream_waitrequest_from_sa;

  //ddr2_multi_port_burst_0_upstream_in_a_read_cycle assignment, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_in_a_read_cycle = Read_Port0_granted_ddr2_multi_port_burst_0_upstream & (Read_Port0_avalon_master_read & Read_Port0_avalon_master_chipselect);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = ddr2_multi_port_burst_0_upstream_in_a_read_cycle;

  //ddr2_multi_port_burst_0_upstream_waits_for_write in a cycle, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_waits_for_write = ddr2_multi_port_burst_0_upstream_in_a_write_cycle & ddr2_multi_port_burst_0_upstream_waitrequest_from_sa;

  //ddr2_multi_port_burst_0_upstream_in_a_write_cycle assignment, which is an e_assign
  assign ddr2_multi_port_burst_0_upstream_in_a_write_cycle = 0;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = ddr2_multi_port_burst_0_upstream_in_a_write_cycle;

  assign wait_for_ddr2_multi_port_burst_0_upstream_counter = 0;
  //ddr2_multi_port_burst_0_upstream_byteenable byte enable port mux, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_byteenable = -1;

  //burstcount mux, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_burstcount = (Read_Port0_granted_ddr2_multi_port_burst_0_upstream)? Read_Port0_avalon_master_burstcount :
    1;

  //debugaccess mux, which is an e_mux
  assign ddr2_multi_port_burst_0_upstream_debugaccess = 0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //ddr2_multi_port_burst_0/upstream enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //Read_Port0/avalon_master non-zero burstcount assertion, which is an e_process
  always @(posedge clk)
    begin
      if (Read_Port0_requests_ddr2_multi_port_burst_0_upstream && (Read_Port0_avalon_master_burstcount == 0) && enable_nonzero_assertions)
        begin
          $write("%0d ns: Read_Port0/avalon_master drove 0 on its 'burstcount' port while accessing slave ddr2_multi_port_burst_0/upstream", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_multi_port_burst_0_downstream_arbitrator (
                                                       // inputs:
                                                        clk,
                                                        d1_ddr2_s1_end_xfer,
                                                        ddr2_multi_port_burst_0_downstream_address,
                                                        ddr2_multi_port_burst_0_downstream_burstcount,
                                                        ddr2_multi_port_burst_0_downstream_byteenable,
                                                        ddr2_multi_port_burst_0_downstream_granted_ddr2_s1,
                                                        ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1,
                                                        ddr2_multi_port_burst_0_downstream_read,
                                                        ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1,
                                                        ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register,
                                                        ddr2_multi_port_burst_0_downstream_requests_ddr2_s1,
                                                        ddr2_multi_port_burst_0_downstream_write,
                                                        ddr2_multi_port_burst_0_downstream_writedata,
                                                        ddr2_s1_readdata_from_sa,
                                                        ddr2_s1_waitrequest_n_from_sa,
                                                        reset_n,

                                                       // outputs:
                                                        ddr2_multi_port_burst_0_downstream_address_to_slave,
                                                        ddr2_multi_port_burst_0_downstream_latency_counter,
                                                        ddr2_multi_port_burst_0_downstream_readdata,
                                                        ddr2_multi_port_burst_0_downstream_readdatavalid,
                                                        ddr2_multi_port_burst_0_downstream_reset_n,
                                                        ddr2_multi_port_burst_0_downstream_waitrequest
                                                     )
;

  output  [ 29: 0] ddr2_multi_port_burst_0_downstream_address_to_slave;
  output           ddr2_multi_port_burst_0_downstream_latency_counter;
  output  [255: 0] ddr2_multi_port_burst_0_downstream_readdata;
  output           ddr2_multi_port_burst_0_downstream_readdatavalid;
  output           ddr2_multi_port_burst_0_downstream_reset_n;
  output           ddr2_multi_port_burst_0_downstream_waitrequest;
  input            clk;
  input            d1_ddr2_s1_end_xfer;
  input   [ 29: 0] ddr2_multi_port_burst_0_downstream_address;
  input   [  2: 0] ddr2_multi_port_burst_0_downstream_burstcount;
  input   [ 31: 0] ddr2_multi_port_burst_0_downstream_byteenable;
  input            ddr2_multi_port_burst_0_downstream_granted_ddr2_s1;
  input            ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1;
  input            ddr2_multi_port_burst_0_downstream_read;
  input            ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1;
  input            ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register;
  input            ddr2_multi_port_burst_0_downstream_requests_ddr2_s1;
  input            ddr2_multi_port_burst_0_downstream_write;
  input   [255: 0] ddr2_multi_port_burst_0_downstream_writedata;
  input   [255: 0] ddr2_s1_readdata_from_sa;
  input            ddr2_s1_waitrequest_n_from_sa;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 29: 0] ddr2_multi_port_burst_0_downstream_address_last_time;
  wire    [ 29: 0] ddr2_multi_port_burst_0_downstream_address_to_slave;
  reg     [  2: 0] ddr2_multi_port_burst_0_downstream_burstcount_last_time;
  reg     [ 31: 0] ddr2_multi_port_burst_0_downstream_byteenable_last_time;
  wire             ddr2_multi_port_burst_0_downstream_is_granted_some_slave;
  reg              ddr2_multi_port_burst_0_downstream_latency_counter;
  reg              ddr2_multi_port_burst_0_downstream_read_but_no_slave_selected;
  reg              ddr2_multi_port_burst_0_downstream_read_last_time;
  wire    [255: 0] ddr2_multi_port_burst_0_downstream_readdata;
  wire             ddr2_multi_port_burst_0_downstream_readdatavalid;
  wire             ddr2_multi_port_burst_0_downstream_reset_n;
  wire             ddr2_multi_port_burst_0_downstream_run;
  wire             ddr2_multi_port_burst_0_downstream_waitrequest;
  reg              ddr2_multi_port_burst_0_downstream_write_last_time;
  reg     [255: 0] ddr2_multi_port_burst_0_downstream_writedata_last_time;
  wire             latency_load_value;
  wire             p1_ddr2_multi_port_burst_0_downstream_latency_counter;
  wire             pre_flush_ddr2_multi_port_burst_0_downstream_readdatavalid;
  wire             r_0;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1 | ~ddr2_multi_port_burst_0_downstream_requests_ddr2_s1) & (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1 | ~ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1) & ((~ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1 | ~(ddr2_multi_port_burst_0_downstream_read | ddr2_multi_port_burst_0_downstream_write) | (1 & ddr2_s1_waitrequest_n_from_sa & (ddr2_multi_port_burst_0_downstream_read | ddr2_multi_port_burst_0_downstream_write)))) & ((~ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1 | ~(ddr2_multi_port_burst_0_downstream_read | ddr2_multi_port_burst_0_downstream_write) | (1 & ddr2_s1_waitrequest_n_from_sa & (ddr2_multi_port_burst_0_downstream_read | ddr2_multi_port_burst_0_downstream_write))));

  //cascaded wait assignment, which is an e_assign
  assign ddr2_multi_port_burst_0_downstream_run = r_0;

  //optimize select-logic by passing only those address bits which matter.
  assign ddr2_multi_port_burst_0_downstream_address_to_slave = ddr2_multi_port_burst_0_downstream_address;

  //ddr2_multi_port_burst_0_downstream_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_read_but_no_slave_selected <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_read_but_no_slave_selected <= ddr2_multi_port_burst_0_downstream_read & ddr2_multi_port_burst_0_downstream_run & ~ddr2_multi_port_burst_0_downstream_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign ddr2_multi_port_burst_0_downstream_is_granted_some_slave = ddr2_multi_port_burst_0_downstream_granted_ddr2_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_ddr2_multi_port_burst_0_downstream_readdatavalid = ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign ddr2_multi_port_burst_0_downstream_readdatavalid = ddr2_multi_port_burst_0_downstream_read_but_no_slave_selected |
    pre_flush_ddr2_multi_port_burst_0_downstream_readdatavalid;

  //ddr2_multi_port_burst_0/downstream readdata mux, which is an e_mux
  assign ddr2_multi_port_burst_0_downstream_readdata = ddr2_s1_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign ddr2_multi_port_burst_0_downstream_waitrequest = ~ddr2_multi_port_burst_0_downstream_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_latency_counter <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_latency_counter <= p1_ddr2_multi_port_burst_0_downstream_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_ddr2_multi_port_burst_0_downstream_latency_counter = ((ddr2_multi_port_burst_0_downstream_run & ddr2_multi_port_burst_0_downstream_read))? latency_load_value :
    (ddr2_multi_port_burst_0_downstream_latency_counter)? ddr2_multi_port_burst_0_downstream_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = 0;

  //ddr2_multi_port_burst_0_downstream_reset_n assignment, which is an e_assign
  assign ddr2_multi_port_burst_0_downstream_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //ddr2_multi_port_burst_0_downstream_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_address_last_time <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_address_last_time <= ddr2_multi_port_burst_0_downstream_address;
    end


  //ddr2_multi_port_burst_0/downstream waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= ddr2_multi_port_burst_0_downstream_waitrequest & (ddr2_multi_port_burst_0_downstream_read | ddr2_multi_port_burst_0_downstream_write);
    end


  //ddr2_multi_port_burst_0_downstream_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_0_downstream_address != ddr2_multi_port_burst_0_downstream_address_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_0_downstream_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_0_downstream_burstcount check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_burstcount_last_time <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_burstcount_last_time <= ddr2_multi_port_burst_0_downstream_burstcount;
    end


  //ddr2_multi_port_burst_0_downstream_burstcount matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_0_downstream_burstcount != ddr2_multi_port_burst_0_downstream_burstcount_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_0_downstream_burstcount did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_0_downstream_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_byteenable_last_time <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_byteenable_last_time <= ddr2_multi_port_burst_0_downstream_byteenable;
    end


  //ddr2_multi_port_burst_0_downstream_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_0_downstream_byteenable != ddr2_multi_port_burst_0_downstream_byteenable_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_0_downstream_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_0_downstream_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_read_last_time <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_read_last_time <= ddr2_multi_port_burst_0_downstream_read;
    end


  //ddr2_multi_port_burst_0_downstream_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_0_downstream_read != ddr2_multi_port_burst_0_downstream_read_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_0_downstream_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_0_downstream_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_write_last_time <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_write_last_time <= ddr2_multi_port_burst_0_downstream_write;
    end


  //ddr2_multi_port_burst_0_downstream_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_0_downstream_write != ddr2_multi_port_burst_0_downstream_write_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_0_downstream_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_0_downstream_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_0_downstream_writedata_last_time <= 0;
      else 
        ddr2_multi_port_burst_0_downstream_writedata_last_time <= ddr2_multi_port_burst_0_downstream_writedata;
    end


  //ddr2_multi_port_burst_0_downstream_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_0_downstream_writedata != ddr2_multi_port_burst_0_downstream_writedata_last_time) & ddr2_multi_port_burst_0_downstream_write)
        begin
          $write("%0d ns: ddr2_multi_port_burst_0_downstream_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_multi_port_burst_1_upstream_arbitrator (
                                                     // inputs:
                                                      Write_Port0_avalon_master_address_to_slave,
                                                      Write_Port0_avalon_master_burstcount,
                                                      Write_Port0_avalon_master_byteenable,
                                                      Write_Port0_avalon_master_chipselect,
                                                      Write_Port0_avalon_master_write,
                                                      Write_Port0_avalon_master_writedata,
                                                      clk,
                                                      ddr2_multi_port_burst_1_upstream_readdata,
                                                      ddr2_multi_port_burst_1_upstream_readdatavalid,
                                                      ddr2_multi_port_burst_1_upstream_waitrequest,
                                                      reset_n,

                                                     // outputs:
                                                      Write_Port0_granted_ddr2_multi_port_burst_1_upstream,
                                                      Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream,
                                                      Write_Port0_requests_ddr2_multi_port_burst_1_upstream,
                                                      d1_ddr2_multi_port_burst_1_upstream_end_xfer,
                                                      ddr2_multi_port_burst_1_upstream_address,
                                                      ddr2_multi_port_burst_1_upstream_burstcount,
                                                      ddr2_multi_port_burst_1_upstream_byteaddress,
                                                      ddr2_multi_port_burst_1_upstream_byteenable,
                                                      ddr2_multi_port_burst_1_upstream_debugaccess,
                                                      ddr2_multi_port_burst_1_upstream_read,
                                                      ddr2_multi_port_burst_1_upstream_readdata_from_sa,
                                                      ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa,
                                                      ddr2_multi_port_burst_1_upstream_waitrequest_from_sa,
                                                      ddr2_multi_port_burst_1_upstream_write,
                                                      ddr2_multi_port_burst_1_upstream_writedata
                                                   )
;

  output           Write_Port0_granted_ddr2_multi_port_burst_1_upstream;
  output           Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream;
  output           Write_Port0_requests_ddr2_multi_port_burst_1_upstream;
  output           d1_ddr2_multi_port_burst_1_upstream_end_xfer;
  output  [ 29: 0] ddr2_multi_port_burst_1_upstream_address;
  output  [  7: 0] ddr2_multi_port_burst_1_upstream_burstcount;
  output  [ 34: 0] ddr2_multi_port_burst_1_upstream_byteaddress;
  output  [ 31: 0] ddr2_multi_port_burst_1_upstream_byteenable;
  output           ddr2_multi_port_burst_1_upstream_debugaccess;
  output           ddr2_multi_port_burst_1_upstream_read;
  output  [255: 0] ddr2_multi_port_burst_1_upstream_readdata_from_sa;
  output           ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa;
  output           ddr2_multi_port_burst_1_upstream_waitrequest_from_sa;
  output           ddr2_multi_port_burst_1_upstream_write;
  output  [255: 0] ddr2_multi_port_burst_1_upstream_writedata;
  input   [ 31: 0] Write_Port0_avalon_master_address_to_slave;
  input   [  7: 0] Write_Port0_avalon_master_burstcount;
  input   [ 31: 0] Write_Port0_avalon_master_byteenable;
  input            Write_Port0_avalon_master_chipselect;
  input            Write_Port0_avalon_master_write;
  input   [255: 0] Write_Port0_avalon_master_writedata;
  input            clk;
  input   [255: 0] ddr2_multi_port_burst_1_upstream_readdata;
  input            ddr2_multi_port_burst_1_upstream_readdatavalid;
  input            ddr2_multi_port_burst_1_upstream_waitrequest;
  input            reset_n;

  wire             Write_Port0_avalon_master_arbiterlock;
  wire             Write_Port0_avalon_master_arbiterlock2;
  wire             Write_Port0_avalon_master_continuerequest;
  wire             Write_Port0_granted_ddr2_multi_port_burst_1_upstream;
  wire             Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream;
  wire             Write_Port0_requests_ddr2_multi_port_burst_1_upstream;
  wire             Write_Port0_saved_grant_ddr2_multi_port_burst_1_upstream;
  reg              d1_ddr2_multi_port_burst_1_upstream_end_xfer;
  reg              d1_reasons_to_wait;
  wire    [ 29: 0] ddr2_multi_port_burst_1_upstream_address;
  wire             ddr2_multi_port_burst_1_upstream_allgrants;
  wire             ddr2_multi_port_burst_1_upstream_allow_new_arb_cycle;
  wire             ddr2_multi_port_burst_1_upstream_any_bursting_master_saved_grant;
  wire             ddr2_multi_port_burst_1_upstream_any_continuerequest;
  wire             ddr2_multi_port_burst_1_upstream_arb_counter_enable;
  reg     [  7: 0] ddr2_multi_port_burst_1_upstream_arb_share_counter;
  wire    [  7: 0] ddr2_multi_port_burst_1_upstream_arb_share_counter_next_value;
  wire    [  7: 0] ddr2_multi_port_burst_1_upstream_arb_share_set_values;
  reg     [  6: 0] ddr2_multi_port_burst_1_upstream_bbt_burstcounter;
  wire             ddr2_multi_port_burst_1_upstream_beginbursttransfer_internal;
  wire             ddr2_multi_port_burst_1_upstream_begins_xfer;
  wire    [  7: 0] ddr2_multi_port_burst_1_upstream_burstcount;
  wire    [ 34: 0] ddr2_multi_port_burst_1_upstream_byteaddress;
  wire    [ 31: 0] ddr2_multi_port_burst_1_upstream_byteenable;
  wire             ddr2_multi_port_burst_1_upstream_debugaccess;
  wire             ddr2_multi_port_burst_1_upstream_end_xfer;
  wire             ddr2_multi_port_burst_1_upstream_firsttransfer;
  wire             ddr2_multi_port_burst_1_upstream_grant_vector;
  wire             ddr2_multi_port_burst_1_upstream_in_a_read_cycle;
  wire             ddr2_multi_port_burst_1_upstream_in_a_write_cycle;
  wire             ddr2_multi_port_burst_1_upstream_master_qreq_vector;
  wire    [  6: 0] ddr2_multi_port_burst_1_upstream_next_bbt_burstcount;
  wire             ddr2_multi_port_burst_1_upstream_non_bursting_master_requests;
  wire             ddr2_multi_port_burst_1_upstream_read;
  wire    [255: 0] ddr2_multi_port_burst_1_upstream_readdata_from_sa;
  wire             ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa;
  reg              ddr2_multi_port_burst_1_upstream_reg_firsttransfer;
  reg              ddr2_multi_port_burst_1_upstream_slavearbiterlockenable;
  wire             ddr2_multi_port_burst_1_upstream_slavearbiterlockenable2;
  wire             ddr2_multi_port_burst_1_upstream_unreg_firsttransfer;
  wire             ddr2_multi_port_burst_1_upstream_waitrequest_from_sa;
  wire             ddr2_multi_port_burst_1_upstream_waits_for_read;
  wire             ddr2_multi_port_burst_1_upstream_waits_for_write;
  wire             ddr2_multi_port_burst_1_upstream_write;
  wire    [255: 0] ddr2_multi_port_burst_1_upstream_writedata;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_ddr2_multi_port_burst_1_upstream;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_ddr2_multi_port_burst_1_upstream_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~ddr2_multi_port_burst_1_upstream_end_xfer;
    end


  assign ddr2_multi_port_burst_1_upstream_begins_xfer = ~d1_reasons_to_wait & ((Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream));
  //assign ddr2_multi_port_burst_1_upstream_readdata_from_sa = ddr2_multi_port_burst_1_upstream_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_readdata_from_sa = ddr2_multi_port_burst_1_upstream_readdata;

  assign Write_Port0_requests_ddr2_multi_port_burst_1_upstream = (({Write_Port0_avalon_master_address_to_slave[31 : 30] , 30'b0} == 32'h0) & Write_Port0_avalon_master_chipselect) & (Write_Port0_avalon_master_write & Write_Port0_avalon_master_chipselect);
  //assign ddr2_multi_port_burst_1_upstream_waitrequest_from_sa = ddr2_multi_port_burst_1_upstream_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_waitrequest_from_sa = ddr2_multi_port_burst_1_upstream_waitrequest;

  //ddr2_multi_port_burst_1_upstream_arb_share_counter set values, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_arb_share_set_values = (Write_Port0_granted_ddr2_multi_port_burst_1_upstream)? Write_Port0_avalon_master_burstcount :
    1;

  //ddr2_multi_port_burst_1_upstream_non_bursting_master_requests mux, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_non_bursting_master_requests = 0;

  //ddr2_multi_port_burst_1_upstream_any_bursting_master_saved_grant mux, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_any_bursting_master_saved_grant = Write_Port0_saved_grant_ddr2_multi_port_burst_1_upstream;

  //ddr2_multi_port_burst_1_upstream_arb_share_counter_next_value assignment, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_arb_share_counter_next_value = ddr2_multi_port_burst_1_upstream_firsttransfer ? (ddr2_multi_port_burst_1_upstream_arb_share_set_values - 1) : |ddr2_multi_port_burst_1_upstream_arb_share_counter ? (ddr2_multi_port_burst_1_upstream_arb_share_counter - 1) : 0;

  //ddr2_multi_port_burst_1_upstream_allgrants all slave grants, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_allgrants = |ddr2_multi_port_burst_1_upstream_grant_vector;

  //ddr2_multi_port_burst_1_upstream_end_xfer assignment, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_end_xfer = ~(ddr2_multi_port_burst_1_upstream_waits_for_read | ddr2_multi_port_burst_1_upstream_waits_for_write);

  //end_xfer_arb_share_counter_term_ddr2_multi_port_burst_1_upstream arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_ddr2_multi_port_burst_1_upstream = ddr2_multi_port_burst_1_upstream_end_xfer & (~ddr2_multi_port_burst_1_upstream_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //ddr2_multi_port_burst_1_upstream_arb_share_counter arbitration counter enable, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_arb_counter_enable = (end_xfer_arb_share_counter_term_ddr2_multi_port_burst_1_upstream & ddr2_multi_port_burst_1_upstream_allgrants) | (end_xfer_arb_share_counter_term_ddr2_multi_port_burst_1_upstream & ~ddr2_multi_port_burst_1_upstream_non_bursting_master_requests);

  //ddr2_multi_port_burst_1_upstream_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_upstream_arb_share_counter <= 0;
      else if (ddr2_multi_port_burst_1_upstream_arb_counter_enable)
          ddr2_multi_port_burst_1_upstream_arb_share_counter <= ddr2_multi_port_burst_1_upstream_arb_share_counter_next_value;
    end


  //ddr2_multi_port_burst_1_upstream_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_upstream_slavearbiterlockenable <= 0;
      else if ((|ddr2_multi_port_burst_1_upstream_master_qreq_vector & end_xfer_arb_share_counter_term_ddr2_multi_port_burst_1_upstream) | (end_xfer_arb_share_counter_term_ddr2_multi_port_burst_1_upstream & ~ddr2_multi_port_burst_1_upstream_non_bursting_master_requests))
          ddr2_multi_port_burst_1_upstream_slavearbiterlockenable <= |ddr2_multi_port_burst_1_upstream_arb_share_counter_next_value;
    end


  //Write_Port0/avalon_master ddr2_multi_port_burst_1/upstream arbiterlock, which is an e_assign
  assign Write_Port0_avalon_master_arbiterlock = ddr2_multi_port_burst_1_upstream_slavearbiterlockenable & Write_Port0_avalon_master_continuerequest;

  //ddr2_multi_port_burst_1_upstream_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_slavearbiterlockenable2 = |ddr2_multi_port_burst_1_upstream_arb_share_counter_next_value;

  //Write_Port0/avalon_master ddr2_multi_port_burst_1/upstream arbiterlock2, which is an e_assign
  assign Write_Port0_avalon_master_arbiterlock2 = ddr2_multi_port_burst_1_upstream_slavearbiterlockenable2 & Write_Port0_avalon_master_continuerequest;

  //ddr2_multi_port_burst_1_upstream_any_continuerequest at least one master continues requesting, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_any_continuerequest = 1;

  //Write_Port0_avalon_master_continuerequest continued request, which is an e_assign
  assign Write_Port0_avalon_master_continuerequest = 1;

  assign Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream = Write_Port0_requests_ddr2_multi_port_burst_1_upstream;
  //ddr2_multi_port_burst_1_upstream_writedata mux, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_writedata = Write_Port0_avalon_master_writedata;

  //byteaddress mux for ddr2_multi_port_burst_1/upstream, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_byteaddress = Write_Port0_avalon_master_address_to_slave;

  //master is always granted when requested
  assign Write_Port0_granted_ddr2_multi_port_burst_1_upstream = Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream;

  //Write_Port0/avalon_master saved-grant ddr2_multi_port_burst_1/upstream, which is an e_assign
  assign Write_Port0_saved_grant_ddr2_multi_port_burst_1_upstream = Write_Port0_requests_ddr2_multi_port_burst_1_upstream;

  //allow new arb cycle for ddr2_multi_port_burst_1/upstream, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign ddr2_multi_port_burst_1_upstream_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign ddr2_multi_port_burst_1_upstream_master_qreq_vector = 1;

  //ddr2_multi_port_burst_1_upstream_firsttransfer first transaction, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_firsttransfer = ddr2_multi_port_burst_1_upstream_begins_xfer ? ddr2_multi_port_burst_1_upstream_unreg_firsttransfer : ddr2_multi_port_burst_1_upstream_reg_firsttransfer;

  //ddr2_multi_port_burst_1_upstream_unreg_firsttransfer first transaction, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_unreg_firsttransfer = ~(ddr2_multi_port_burst_1_upstream_slavearbiterlockenable & ddr2_multi_port_burst_1_upstream_any_continuerequest);

  //ddr2_multi_port_burst_1_upstream_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_upstream_reg_firsttransfer <= 1'b1;
      else if (ddr2_multi_port_burst_1_upstream_begins_xfer)
          ddr2_multi_port_burst_1_upstream_reg_firsttransfer <= ddr2_multi_port_burst_1_upstream_unreg_firsttransfer;
    end


  //ddr2_multi_port_burst_1_upstream_next_bbt_burstcount next_bbt_burstcount, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_next_bbt_burstcount = ((((ddr2_multi_port_burst_1_upstream_write) && (ddr2_multi_port_burst_1_upstream_bbt_burstcounter == 0))))? (ddr2_multi_port_burst_1_upstream_burstcount - 1) :
    ((((ddr2_multi_port_burst_1_upstream_read) && (ddr2_multi_port_burst_1_upstream_bbt_burstcounter == 0))))? 0 :
    (ddr2_multi_port_burst_1_upstream_bbt_burstcounter - 1);

  //ddr2_multi_port_burst_1_upstream_bbt_burstcounter bbt_burstcounter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_upstream_bbt_burstcounter <= 0;
      else if (ddr2_multi_port_burst_1_upstream_begins_xfer)
          ddr2_multi_port_burst_1_upstream_bbt_burstcounter <= ddr2_multi_port_burst_1_upstream_next_bbt_burstcount;
    end


  //ddr2_multi_port_burst_1_upstream_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_beginbursttransfer_internal = ddr2_multi_port_burst_1_upstream_begins_xfer & (ddr2_multi_port_burst_1_upstream_bbt_burstcounter == 0);

  //ddr2_multi_port_burst_1_upstream_read assignment, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_read = 0;

  //ddr2_multi_port_burst_1_upstream_write assignment, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_write = Write_Port0_granted_ddr2_multi_port_burst_1_upstream & (Write_Port0_avalon_master_write & Write_Port0_avalon_master_chipselect);

  //ddr2_multi_port_burst_1_upstream_address mux, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_address = Write_Port0_avalon_master_address_to_slave;

  //d1_ddr2_multi_port_burst_1_upstream_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_ddr2_multi_port_burst_1_upstream_end_xfer <= 1;
      else 
        d1_ddr2_multi_port_burst_1_upstream_end_xfer <= ddr2_multi_port_burst_1_upstream_end_xfer;
    end


  //ddr2_multi_port_burst_1_upstream_waits_for_read in a cycle, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_waits_for_read = ddr2_multi_port_burst_1_upstream_in_a_read_cycle & ddr2_multi_port_burst_1_upstream_waitrequest_from_sa;

  //ddr2_multi_port_burst_1_upstream_in_a_read_cycle assignment, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_in_a_read_cycle = 0;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = ddr2_multi_port_burst_1_upstream_in_a_read_cycle;

  //ddr2_multi_port_burst_1_upstream_waits_for_write in a cycle, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_waits_for_write = ddr2_multi_port_burst_1_upstream_in_a_write_cycle & ddr2_multi_port_burst_1_upstream_waitrequest_from_sa;

  //assign ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa = ddr2_multi_port_burst_1_upstream_readdatavalid so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa = ddr2_multi_port_burst_1_upstream_readdatavalid;

  //ddr2_multi_port_burst_1_upstream_in_a_write_cycle assignment, which is an e_assign
  assign ddr2_multi_port_burst_1_upstream_in_a_write_cycle = Write_Port0_granted_ddr2_multi_port_burst_1_upstream & (Write_Port0_avalon_master_write & Write_Port0_avalon_master_chipselect);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = ddr2_multi_port_burst_1_upstream_in_a_write_cycle;

  assign wait_for_ddr2_multi_port_burst_1_upstream_counter = 0;
  //ddr2_multi_port_burst_1_upstream_byteenable byte enable port mux, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_byteenable = (Write_Port0_granted_ddr2_multi_port_burst_1_upstream)? Write_Port0_avalon_master_byteenable :
    -1;

  //burstcount mux, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_burstcount = (Write_Port0_granted_ddr2_multi_port_burst_1_upstream)? Write_Port0_avalon_master_burstcount :
    1;

  //debugaccess mux, which is an e_mux
  assign ddr2_multi_port_burst_1_upstream_debugaccess = 0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //ddr2_multi_port_burst_1/upstream enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //Write_Port0/avalon_master non-zero burstcount assertion, which is an e_process
  always @(posedge clk)
    begin
      if (Write_Port0_requests_ddr2_multi_port_burst_1_upstream && (Write_Port0_avalon_master_burstcount == 0) && enable_nonzero_assertions)
        begin
          $write("%0d ns: Write_Port0/avalon_master drove 0 on its 'burstcount' port while accessing slave ddr2_multi_port_burst_1/upstream", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_multi_port_burst_1_downstream_arbitrator (
                                                       // inputs:
                                                        clk,
                                                        d1_ddr2_s1_end_xfer,
                                                        ddr2_multi_port_burst_1_downstream_address,
                                                        ddr2_multi_port_burst_1_downstream_burstcount,
                                                        ddr2_multi_port_burst_1_downstream_byteenable,
                                                        ddr2_multi_port_burst_1_downstream_granted_ddr2_s1,
                                                        ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1,
                                                        ddr2_multi_port_burst_1_downstream_read,
                                                        ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1,
                                                        ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register,
                                                        ddr2_multi_port_burst_1_downstream_requests_ddr2_s1,
                                                        ddr2_multi_port_burst_1_downstream_write,
                                                        ddr2_multi_port_burst_1_downstream_writedata,
                                                        ddr2_s1_readdata_from_sa,
                                                        ddr2_s1_waitrequest_n_from_sa,
                                                        reset_n,

                                                       // outputs:
                                                        ddr2_multi_port_burst_1_downstream_address_to_slave,
                                                        ddr2_multi_port_burst_1_downstream_latency_counter,
                                                        ddr2_multi_port_burst_1_downstream_readdata,
                                                        ddr2_multi_port_burst_1_downstream_readdatavalid,
                                                        ddr2_multi_port_burst_1_downstream_reset_n,
                                                        ddr2_multi_port_burst_1_downstream_waitrequest
                                                     )
;

  output  [ 29: 0] ddr2_multi_port_burst_1_downstream_address_to_slave;
  output           ddr2_multi_port_burst_1_downstream_latency_counter;
  output  [255: 0] ddr2_multi_port_burst_1_downstream_readdata;
  output           ddr2_multi_port_burst_1_downstream_readdatavalid;
  output           ddr2_multi_port_burst_1_downstream_reset_n;
  output           ddr2_multi_port_burst_1_downstream_waitrequest;
  input            clk;
  input            d1_ddr2_s1_end_xfer;
  input   [ 29: 0] ddr2_multi_port_burst_1_downstream_address;
  input   [  2: 0] ddr2_multi_port_burst_1_downstream_burstcount;
  input   [ 31: 0] ddr2_multi_port_burst_1_downstream_byteenable;
  input            ddr2_multi_port_burst_1_downstream_granted_ddr2_s1;
  input            ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1;
  input            ddr2_multi_port_burst_1_downstream_read;
  input            ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1;
  input            ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register;
  input            ddr2_multi_port_burst_1_downstream_requests_ddr2_s1;
  input            ddr2_multi_port_burst_1_downstream_write;
  input   [255: 0] ddr2_multi_port_burst_1_downstream_writedata;
  input   [255: 0] ddr2_s1_readdata_from_sa;
  input            ddr2_s1_waitrequest_n_from_sa;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 29: 0] ddr2_multi_port_burst_1_downstream_address_last_time;
  wire    [ 29: 0] ddr2_multi_port_burst_1_downstream_address_to_slave;
  reg     [  2: 0] ddr2_multi_port_burst_1_downstream_burstcount_last_time;
  reg     [ 31: 0] ddr2_multi_port_burst_1_downstream_byteenable_last_time;
  wire             ddr2_multi_port_burst_1_downstream_is_granted_some_slave;
  reg              ddr2_multi_port_burst_1_downstream_latency_counter;
  reg              ddr2_multi_port_burst_1_downstream_read_but_no_slave_selected;
  reg              ddr2_multi_port_burst_1_downstream_read_last_time;
  wire    [255: 0] ddr2_multi_port_burst_1_downstream_readdata;
  wire             ddr2_multi_port_burst_1_downstream_readdatavalid;
  wire             ddr2_multi_port_burst_1_downstream_reset_n;
  wire             ddr2_multi_port_burst_1_downstream_run;
  wire             ddr2_multi_port_burst_1_downstream_waitrequest;
  reg              ddr2_multi_port_burst_1_downstream_write_last_time;
  reg     [255: 0] ddr2_multi_port_burst_1_downstream_writedata_last_time;
  wire             latency_load_value;
  wire             p1_ddr2_multi_port_burst_1_downstream_latency_counter;
  wire             pre_flush_ddr2_multi_port_burst_1_downstream_readdatavalid;
  wire             r_0;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1 | ~ddr2_multi_port_burst_1_downstream_requests_ddr2_s1) & (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1 | ~ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1) & ((~ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1 | ~(ddr2_multi_port_burst_1_downstream_read | ddr2_multi_port_burst_1_downstream_write) | (1 & ddr2_s1_waitrequest_n_from_sa & (ddr2_multi_port_burst_1_downstream_read | ddr2_multi_port_burst_1_downstream_write)))) & ((~ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1 | ~(ddr2_multi_port_burst_1_downstream_read | ddr2_multi_port_burst_1_downstream_write) | (1 & ddr2_s1_waitrequest_n_from_sa & (ddr2_multi_port_burst_1_downstream_read | ddr2_multi_port_burst_1_downstream_write))));

  //cascaded wait assignment, which is an e_assign
  assign ddr2_multi_port_burst_1_downstream_run = r_0;

  //optimize select-logic by passing only those address bits which matter.
  assign ddr2_multi_port_burst_1_downstream_address_to_slave = ddr2_multi_port_burst_1_downstream_address;

  //ddr2_multi_port_burst_1_downstream_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_read_but_no_slave_selected <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_read_but_no_slave_selected <= ddr2_multi_port_burst_1_downstream_read & ddr2_multi_port_burst_1_downstream_run & ~ddr2_multi_port_burst_1_downstream_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign ddr2_multi_port_burst_1_downstream_is_granted_some_slave = ddr2_multi_port_burst_1_downstream_granted_ddr2_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_ddr2_multi_port_burst_1_downstream_readdatavalid = ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign ddr2_multi_port_burst_1_downstream_readdatavalid = ddr2_multi_port_burst_1_downstream_read_but_no_slave_selected |
    pre_flush_ddr2_multi_port_burst_1_downstream_readdatavalid;

  //ddr2_multi_port_burst_1/downstream readdata mux, which is an e_mux
  assign ddr2_multi_port_burst_1_downstream_readdata = ddr2_s1_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign ddr2_multi_port_burst_1_downstream_waitrequest = ~ddr2_multi_port_burst_1_downstream_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_latency_counter <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_latency_counter <= p1_ddr2_multi_port_burst_1_downstream_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_ddr2_multi_port_burst_1_downstream_latency_counter = ((ddr2_multi_port_burst_1_downstream_run & ddr2_multi_port_burst_1_downstream_read))? latency_load_value :
    (ddr2_multi_port_burst_1_downstream_latency_counter)? ddr2_multi_port_burst_1_downstream_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = 0;

  //ddr2_multi_port_burst_1_downstream_reset_n assignment, which is an e_assign
  assign ddr2_multi_port_burst_1_downstream_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //ddr2_multi_port_burst_1_downstream_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_address_last_time <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_address_last_time <= ddr2_multi_port_burst_1_downstream_address;
    end


  //ddr2_multi_port_burst_1/downstream waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= ddr2_multi_port_burst_1_downstream_waitrequest & (ddr2_multi_port_burst_1_downstream_read | ddr2_multi_port_burst_1_downstream_write);
    end


  //ddr2_multi_port_burst_1_downstream_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_1_downstream_address != ddr2_multi_port_burst_1_downstream_address_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_1_downstream_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_1_downstream_burstcount check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_burstcount_last_time <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_burstcount_last_time <= ddr2_multi_port_burst_1_downstream_burstcount;
    end


  //ddr2_multi_port_burst_1_downstream_burstcount matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_1_downstream_burstcount != ddr2_multi_port_burst_1_downstream_burstcount_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_1_downstream_burstcount did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_1_downstream_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_byteenable_last_time <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_byteenable_last_time <= ddr2_multi_port_burst_1_downstream_byteenable;
    end


  //ddr2_multi_port_burst_1_downstream_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_1_downstream_byteenable != ddr2_multi_port_burst_1_downstream_byteenable_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_1_downstream_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_1_downstream_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_read_last_time <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_read_last_time <= ddr2_multi_port_burst_1_downstream_read;
    end


  //ddr2_multi_port_burst_1_downstream_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_1_downstream_read != ddr2_multi_port_burst_1_downstream_read_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_1_downstream_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_1_downstream_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_write_last_time <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_write_last_time <= ddr2_multi_port_burst_1_downstream_write;
    end


  //ddr2_multi_port_burst_1_downstream_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_1_downstream_write != ddr2_multi_port_burst_1_downstream_write_last_time))
        begin
          $write("%0d ns: ddr2_multi_port_burst_1_downstream_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //ddr2_multi_port_burst_1_downstream_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ddr2_multi_port_burst_1_downstream_writedata_last_time <= 0;
      else 
        ddr2_multi_port_burst_1_downstream_writedata_last_time <= ddr2_multi_port_burst_1_downstream_writedata;
    end


  //ddr2_multi_port_burst_1_downstream_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (ddr2_multi_port_burst_1_downstream_writedata != ddr2_multi_port_burst_1_downstream_writedata_last_time) & ddr2_multi_port_burst_1_downstream_write)
        begin
          $write("%0d ns: ddr2_multi_port_burst_1_downstream_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_multi_port_reset_ddr2_phy_clk_out_domain_synch_module (
                                                                    // inputs:
                                                                     clk,
                                                                     data_in,
                                                                     reset_n,

                                                                    // outputs:
                                                                     data_out
                                                                  )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ddr2_multi_port (
                         // 1) global signals:
                          clk_50,
                          ddr2_aux_full_rate_clk_out,
                          ddr2_aux_half_rate_clk_out,
                          ddr2_phy_clk_out,
                          reset_n,

                         // the_Read_Port0
                          c_state_from_the_Read_Port0,
                          error_from_the_Read_Port0,
                          iCLK_F_to_the_Read_Port0,
                          iIP_INIT_DONE_to_the_Read_Port0,
                          iREAD_ACK_F_to_the_Read_Port0,
                          iRST_n_F_to_the_Read_Port0,
                          oEMPTY_F_from_the_Read_Port0,
                          oPORT_READY_F_from_the_Read_Port0,
                          oREAD_DATA_F_from_the_Read_Port0,

                         // the_Write_Port0
                          c_state_flush_from_the_Write_Port0,
                          c_state_from_the_Write_Port0,
                          iCLK_F_to_the_Write_Port0,
                          iFLUSH_REQ_F_to_the_Write_Port0,
                          iIP_INIT_DONE_to_the_Write_Port0,
                          iRST_n_F_to_the_Write_Port0,
                          iWRITE_DATA_F_to_the_Write_Port0,
                          iWRITE_F_to_the_Write_Port0,
                          oFLUSH_BUSY_F_from_the_Write_Port0,
                          oFULL_F_from_the_Write_Port0,
                          wrusedw_from_the_Write_Port0,

                         // the_ddr2
                          aux_scan_clk_from_the_ddr2,
                          aux_scan_clk_reset_n_from_the_ddr2,
                          dll_reference_clk_from_the_ddr2,
                          dqs_delay_ctrl_export_from_the_ddr2,
                          global_reset_n_to_the_ddr2,
                          local_init_done_from_the_ddr2,
                          local_refresh_ack_from_the_ddr2,
                          local_wdata_req_from_the_ddr2,
                          mem_addr_from_the_ddr2,
                          mem_ba_from_the_ddr2,
                          mem_cas_n_from_the_ddr2,
                          mem_cke_from_the_ddr2,
                          mem_clk_n_to_and_from_the_ddr2,
                          mem_clk_to_and_from_the_ddr2,
                          mem_cs_n_from_the_ddr2,
                          mem_dm_from_the_ddr2,
                          mem_dq_to_and_from_the_ddr2,
                          mem_dqs_to_and_from_the_ddr2,
                          mem_dqsn_to_and_from_the_ddr2,
                          mem_odt_from_the_ddr2,
                          mem_ras_n_from_the_ddr2,
                          mem_we_n_from_the_ddr2,
                          oct_ctl_rs_value_to_the_ddr2,
                          oct_ctl_rt_value_to_the_ddr2,
                          reset_phy_clk_n_from_the_ddr2
                       )
;

  output           aux_scan_clk_from_the_ddr2;
  output           aux_scan_clk_reset_n_from_the_ddr2;
  output  [  4: 0] c_state_flush_from_the_Write_Port0;
  output  [  3: 0] c_state_from_the_Read_Port0;
  output  [  3: 0] c_state_from_the_Write_Port0;
  output           ddr2_aux_full_rate_clk_out;
  output           ddr2_aux_half_rate_clk_out;
  output           ddr2_phy_clk_out;
  output           dll_reference_clk_from_the_ddr2;
  output  [  5: 0] dqs_delay_ctrl_export_from_the_ddr2;
  output           error_from_the_Read_Port0;
  output           local_init_done_from_the_ddr2;
  output           local_refresh_ack_from_the_ddr2;
  output           local_wdata_req_from_the_ddr2;
  output  [ 13: 0] mem_addr_from_the_ddr2;
  output  [  2: 0] mem_ba_from_the_ddr2;
  output           mem_cas_n_from_the_ddr2;
  output           mem_cke_from_the_ddr2;
  inout   [  1: 0] mem_clk_n_to_and_from_the_ddr2;
  inout   [  1: 0] mem_clk_to_and_from_the_ddr2;
  output           mem_cs_n_from_the_ddr2;
  output  [  7: 0] mem_dm_from_the_ddr2;
  inout   [ 63: 0] mem_dq_to_and_from_the_ddr2;
  inout   [  7: 0] mem_dqs_to_and_from_the_ddr2;
  inout   [  7: 0] mem_dqsn_to_and_from_the_ddr2;
  output           mem_odt_from_the_ddr2;
  output           mem_ras_n_from_the_ddr2;
  output           mem_we_n_from_the_ddr2;
  output           oEMPTY_F_from_the_Read_Port0;
  output           oFLUSH_BUSY_F_from_the_Write_Port0;
  output           oFULL_F_from_the_Write_Port0;
  output           oPORT_READY_F_from_the_Read_Port0;
  output  [ 31: 0] oREAD_DATA_F_from_the_Read_Port0;
  output           reset_phy_clk_n_from_the_ddr2;
  output  [  8: 0] wrusedw_from_the_Write_Port0;
  input            clk_50;
  input            global_reset_n_to_the_ddr2;
  input            iCLK_F_to_the_Read_Port0;
  input            iCLK_F_to_the_Write_Port0;
  input            iFLUSH_REQ_F_to_the_Write_Port0;
  input            iIP_INIT_DONE_to_the_Read_Port0;
  input            iIP_INIT_DONE_to_the_Write_Port0;
  input            iREAD_ACK_F_to_the_Read_Port0;
  input            iRST_n_F_to_the_Read_Port0;
  input            iRST_n_F_to_the_Write_Port0;
  input   [ 31: 0] iWRITE_DATA_F_to_the_Write_Port0;
  input            iWRITE_F_to_the_Write_Port0;
  input   [ 13: 0] oct_ctl_rs_value_to_the_ddr2;
  input   [ 13: 0] oct_ctl_rt_value_to_the_ddr2;
  input            reset_n;

  wire    [ 31: 0] Read_Port0_avalon_master_address;
  wire    [ 31: 0] Read_Port0_avalon_master_address_to_slave;
  wire    [  7: 0] Read_Port0_avalon_master_burstcount;
  wire             Read_Port0_avalon_master_chipselect;
  wire             Read_Port0_avalon_master_read;
  wire    [255: 0] Read_Port0_avalon_master_readdata;
  wire             Read_Port0_avalon_master_readdatavalid;
  wire             Read_Port0_avalon_master_reset_n;
  wire             Read_Port0_avalon_master_waitrequest;
  wire             Read_Port0_granted_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_latency_counter;
  wire             Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream;
  wire             Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register;
  wire             Read_Port0_requests_ddr2_multi_port_burst_0_upstream;
  wire    [ 31: 0] Write_Port0_avalon_master_address;
  wire    [ 31: 0] Write_Port0_avalon_master_address_to_slave;
  wire    [  7: 0] Write_Port0_avalon_master_burstcount;
  wire    [ 31: 0] Write_Port0_avalon_master_byteenable;
  wire             Write_Port0_avalon_master_chipselect;
  wire             Write_Port0_avalon_master_reset_n;
  wire             Write_Port0_avalon_master_waitrequest;
  wire             Write_Port0_avalon_master_write;
  wire    [255: 0] Write_Port0_avalon_master_writedata;
  wire             Write_Port0_granted_ddr2_multi_port_burst_1_upstream;
  wire             Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream;
  wire             Write_Port0_requests_ddr2_multi_port_burst_1_upstream;
  wire             aux_scan_clk_from_the_ddr2;
  wire             aux_scan_clk_reset_n_from_the_ddr2;
  wire    [  4: 0] c_state_flush_from_the_Write_Port0;
  wire    [  3: 0] c_state_from_the_Read_Port0;
  wire    [  3: 0] c_state_from_the_Write_Port0;
  wire             clk_50_reset_n;
  wire             d1_ddr2_multi_port_burst_0_upstream_end_xfer;
  wire             d1_ddr2_multi_port_burst_1_upstream_end_xfer;
  wire             d1_ddr2_s1_end_xfer;
  wire             ddr2_aux_full_rate_clk_out;
  wire             ddr2_aux_half_rate_clk_out;
  wire    [ 29: 0] ddr2_multi_port_burst_0_downstream_address;
  wire    [ 29: 0] ddr2_multi_port_burst_0_downstream_address_to_slave;
  wire    [  7: 0] ddr2_multi_port_burst_0_downstream_arbitrationshare;
  wire    [  2: 0] ddr2_multi_port_burst_0_downstream_burstcount;
  wire    [ 31: 0] ddr2_multi_port_burst_0_downstream_byteenable;
  wire             ddr2_multi_port_burst_0_downstream_debugaccess;
  wire             ddr2_multi_port_burst_0_downstream_granted_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_latency_counter;
  wire    [ 29: 0] ddr2_multi_port_burst_0_downstream_nativeaddress;
  wire             ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_read;
  wire             ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register;
  wire    [255: 0] ddr2_multi_port_burst_0_downstream_readdata;
  wire             ddr2_multi_port_burst_0_downstream_readdatavalid;
  wire             ddr2_multi_port_burst_0_downstream_requests_ddr2_s1;
  wire             ddr2_multi_port_burst_0_downstream_reset_n;
  wire             ddr2_multi_port_burst_0_downstream_waitrequest;
  wire             ddr2_multi_port_burst_0_downstream_write;
  wire    [255: 0] ddr2_multi_port_burst_0_downstream_writedata;
  wire    [ 29: 0] ddr2_multi_port_burst_0_upstream_address;
  wire    [  7: 0] ddr2_multi_port_burst_0_upstream_burstcount;
  wire    [ 34: 0] ddr2_multi_port_burst_0_upstream_byteaddress;
  wire    [ 31: 0] ddr2_multi_port_burst_0_upstream_byteenable;
  wire             ddr2_multi_port_burst_0_upstream_debugaccess;
  wire             ddr2_multi_port_burst_0_upstream_read;
  wire    [255: 0] ddr2_multi_port_burst_0_upstream_readdata;
  wire    [255: 0] ddr2_multi_port_burst_0_upstream_readdata_from_sa;
  wire             ddr2_multi_port_burst_0_upstream_readdatavalid;
  wire             ddr2_multi_port_burst_0_upstream_waitrequest;
  wire             ddr2_multi_port_burst_0_upstream_waitrequest_from_sa;
  wire             ddr2_multi_port_burst_0_upstream_write;
  wire    [255: 0] ddr2_multi_port_burst_0_upstream_writedata;
  wire    [ 29: 0] ddr2_multi_port_burst_1_downstream_address;
  wire    [ 29: 0] ddr2_multi_port_burst_1_downstream_address_to_slave;
  wire    [  7: 0] ddr2_multi_port_burst_1_downstream_arbitrationshare;
  wire    [  2: 0] ddr2_multi_port_burst_1_downstream_burstcount;
  wire    [ 31: 0] ddr2_multi_port_burst_1_downstream_byteenable;
  wire             ddr2_multi_port_burst_1_downstream_debugaccess;
  wire             ddr2_multi_port_burst_1_downstream_granted_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_latency_counter;
  wire    [ 29: 0] ddr2_multi_port_burst_1_downstream_nativeaddress;
  wire             ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_read;
  wire             ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register;
  wire    [255: 0] ddr2_multi_port_burst_1_downstream_readdata;
  wire             ddr2_multi_port_burst_1_downstream_readdatavalid;
  wire             ddr2_multi_port_burst_1_downstream_requests_ddr2_s1;
  wire             ddr2_multi_port_burst_1_downstream_reset_n;
  wire             ddr2_multi_port_burst_1_downstream_waitrequest;
  wire             ddr2_multi_port_burst_1_downstream_write;
  wire    [255: 0] ddr2_multi_port_burst_1_downstream_writedata;
  wire    [ 29: 0] ddr2_multi_port_burst_1_upstream_address;
  wire    [  7: 0] ddr2_multi_port_burst_1_upstream_burstcount;
  wire    [ 34: 0] ddr2_multi_port_burst_1_upstream_byteaddress;
  wire    [ 31: 0] ddr2_multi_port_burst_1_upstream_byteenable;
  wire             ddr2_multi_port_burst_1_upstream_debugaccess;
  wire             ddr2_multi_port_burst_1_upstream_read;
  wire    [255: 0] ddr2_multi_port_burst_1_upstream_readdata;
  wire    [255: 0] ddr2_multi_port_burst_1_upstream_readdata_from_sa;
  wire             ddr2_multi_port_burst_1_upstream_readdatavalid;
  wire             ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa;
  wire             ddr2_multi_port_burst_1_upstream_waitrequest;
  wire             ddr2_multi_port_burst_1_upstream_waitrequest_from_sa;
  wire             ddr2_multi_port_burst_1_upstream_write;
  wire    [255: 0] ddr2_multi_port_burst_1_upstream_writedata;
  wire             ddr2_phy_clk_out;
  wire             ddr2_phy_clk_out_reset_n;
  wire    [ 24: 0] ddr2_s1_address;
  wire             ddr2_s1_beginbursttransfer;
  wire    [  2: 0] ddr2_s1_burstcount;
  wire    [ 31: 0] ddr2_s1_byteenable;
  wire             ddr2_s1_read;
  wire    [255: 0] ddr2_s1_readdata;
  wire    [255: 0] ddr2_s1_readdata_from_sa;
  wire             ddr2_s1_readdatavalid;
  wire             ddr2_s1_resetrequest_n;
  wire             ddr2_s1_resetrequest_n_from_sa;
  wire             ddr2_s1_waitrequest_n;
  wire             ddr2_s1_waitrequest_n_from_sa;
  wire             ddr2_s1_write;
  wire    [255: 0] ddr2_s1_writedata;
  wire             dll_reference_clk_from_the_ddr2;
  wire    [  5: 0] dqs_delay_ctrl_export_from_the_ddr2;
  wire             error_from_the_Read_Port0;
  wire             local_init_done_from_the_ddr2;
  wire             local_refresh_ack_from_the_ddr2;
  wire             local_wdata_req_from_the_ddr2;
  wire    [ 13: 0] mem_addr_from_the_ddr2;
  wire    [  2: 0] mem_ba_from_the_ddr2;
  wire             mem_cas_n_from_the_ddr2;
  wire             mem_cke_from_the_ddr2;
  wire    [  1: 0] mem_clk_n_to_and_from_the_ddr2;
  wire    [  1: 0] mem_clk_to_and_from_the_ddr2;
  wire             mem_cs_n_from_the_ddr2;
  wire    [  7: 0] mem_dm_from_the_ddr2;
  wire    [ 63: 0] mem_dq_to_and_from_the_ddr2;
  wire    [  7: 0] mem_dqs_to_and_from_the_ddr2;
  wire    [  7: 0] mem_dqsn_to_and_from_the_ddr2;
  wire             mem_odt_from_the_ddr2;
  wire             mem_ras_n_from_the_ddr2;
  wire             mem_we_n_from_the_ddr2;
  wire             oEMPTY_F_from_the_Read_Port0;
  wire             oFLUSH_BUSY_F_from_the_Write_Port0;
  wire             oFULL_F_from_the_Write_Port0;
  wire             oPORT_READY_F_from_the_Read_Port0;
  wire    [ 31: 0] oREAD_DATA_F_from_the_Read_Port0;
  wire             out_clk_ddr2_aux_full_rate_clk;
  wire             out_clk_ddr2_aux_half_rate_clk;
  wire             out_clk_ddr2_phy_clk;
  wire             reset_n_sources;
  wire             reset_phy_clk_n_from_the_ddr2;
  wire    [  8: 0] wrusedw_from_the_Write_Port0;
  Read_Port0_avalon_master_arbitrator the_Read_Port0_avalon_master
    (
      .Read_Port0_avalon_master_address                                           (Read_Port0_avalon_master_address),
      .Read_Port0_avalon_master_address_to_slave                                  (Read_Port0_avalon_master_address_to_slave),
      .Read_Port0_avalon_master_burstcount                                        (Read_Port0_avalon_master_burstcount),
      .Read_Port0_avalon_master_chipselect                                        (Read_Port0_avalon_master_chipselect),
      .Read_Port0_avalon_master_read                                              (Read_Port0_avalon_master_read),
      .Read_Port0_avalon_master_readdata                                          (Read_Port0_avalon_master_readdata),
      .Read_Port0_avalon_master_readdatavalid                                     (Read_Port0_avalon_master_readdatavalid),
      .Read_Port0_avalon_master_reset_n                                           (Read_Port0_avalon_master_reset_n),
      .Read_Port0_avalon_master_waitrequest                                       (Read_Port0_avalon_master_waitrequest),
      .Read_Port0_granted_ddr2_multi_port_burst_0_upstream                        (Read_Port0_granted_ddr2_multi_port_burst_0_upstream),
      .Read_Port0_latency_counter                                                 (Read_Port0_latency_counter),
      .Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream              (Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream),
      .Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream                (Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream),
      .Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register (Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register),
      .Read_Port0_requests_ddr2_multi_port_burst_0_upstream                       (Read_Port0_requests_ddr2_multi_port_burst_0_upstream),
      .clk                                                                        (ddr2_phy_clk_out),
      .d1_ddr2_multi_port_burst_0_upstream_end_xfer                               (d1_ddr2_multi_port_burst_0_upstream_end_xfer),
      .ddr2_multi_port_burst_0_upstream_readdata_from_sa                          (ddr2_multi_port_burst_0_upstream_readdata_from_sa),
      .ddr2_multi_port_burst_0_upstream_waitrequest_from_sa                       (ddr2_multi_port_burst_0_upstream_waitrequest_from_sa),
      .reset_n                                                                    (ddr2_phy_clk_out_reset_n)
    );

  Read_Port0 the_Read_Port0
    (
      .c_state       (c_state_from_the_Read_Port0),
      .error         (error_from_the_Read_Port0),
      .iCLK          (ddr2_phy_clk_out),
      .iCLK_F        (iCLK_F_to_the_Read_Port0),
      .iIP_INIT_DONE (iIP_INIT_DONE_to_the_Read_Port0),
      .iREAD_ACK_F   (iREAD_ACK_F_to_the_Read_Port0),
      .iREAD_DATA    (Read_Port0_avalon_master_readdata),
      .iREAD_VALID   (Read_Port0_avalon_master_readdatavalid),
      .iRST_n        (Read_Port0_avalon_master_reset_n),
      .iRST_n_F      (iRST_n_F_to_the_Read_Port0),
      .iWAIT_REQ     (Read_Port0_avalon_master_waitrequest),
      .oADDRESS      (Read_Port0_avalon_master_address),
      .oBURST_COUNT  (Read_Port0_avalon_master_burstcount),
      .oCS           (Read_Port0_avalon_master_chipselect),
      .oEMPTY_F      (oEMPTY_F_from_the_Read_Port0),
      .oPORT_READY_F (oPORT_READY_F_from_the_Read_Port0),
      .oREAD         (Read_Port0_avalon_master_read),
      .oREAD_DATA_F  (oREAD_DATA_F_from_the_Read_Port0)
    );

  Write_Port0_avalon_master_arbitrator the_Write_Port0_avalon_master
    (
      .Write_Port0_avalon_master_address                              (Write_Port0_avalon_master_address),
      .Write_Port0_avalon_master_address_to_slave                     (Write_Port0_avalon_master_address_to_slave),
      .Write_Port0_avalon_master_burstcount                           (Write_Port0_avalon_master_burstcount),
      .Write_Port0_avalon_master_byteenable                           (Write_Port0_avalon_master_byteenable),
      .Write_Port0_avalon_master_chipselect                           (Write_Port0_avalon_master_chipselect),
      .Write_Port0_avalon_master_reset_n                              (Write_Port0_avalon_master_reset_n),
      .Write_Port0_avalon_master_waitrequest                          (Write_Port0_avalon_master_waitrequest),
      .Write_Port0_avalon_master_write                                (Write_Port0_avalon_master_write),
      .Write_Port0_avalon_master_writedata                            (Write_Port0_avalon_master_writedata),
      .Write_Port0_granted_ddr2_multi_port_burst_1_upstream           (Write_Port0_granted_ddr2_multi_port_burst_1_upstream),
      .Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream (Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream),
      .Write_Port0_requests_ddr2_multi_port_burst_1_upstream          (Write_Port0_requests_ddr2_multi_port_burst_1_upstream),
      .clk                                                            (ddr2_phy_clk_out),
      .d1_ddr2_multi_port_burst_1_upstream_end_xfer                   (d1_ddr2_multi_port_burst_1_upstream_end_xfer),
      .ddr2_multi_port_burst_1_upstream_waitrequest_from_sa           (ddr2_multi_port_burst_1_upstream_waitrequest_from_sa),
      .reset_n                                                        (ddr2_phy_clk_out_reset_n)
    );

  Write_Port0 the_Write_Port0
    (
      .c_state       (c_state_from_the_Write_Port0),
      .c_state_flush (c_state_flush_from_the_Write_Port0),
      .iCLK          (ddr2_phy_clk_out),
      .iCLK_F        (iCLK_F_to_the_Write_Port0),
      .iFLUSH_REQ_F  (iFLUSH_REQ_F_to_the_Write_Port0),
      .iIP_INIT_DONE (iIP_INIT_DONE_to_the_Write_Port0),
      .iRST_n        (Write_Port0_avalon_master_reset_n),
      .iRST_n_F      (iRST_n_F_to_the_Write_Port0),
      .iWAIT_REQ     (Write_Port0_avalon_master_waitrequest),
      .iWRITE_DATA_F (iWRITE_DATA_F_to_the_Write_Port0),
      .iWRITE_F      (iWRITE_F_to_the_Write_Port0),
      .oADDRESS      (Write_Port0_avalon_master_address),
      .oBURST_COUNT  (Write_Port0_avalon_master_burstcount),
      .oBYTE_ENABLE  (Write_Port0_avalon_master_byteenable),
      .oCS           (Write_Port0_avalon_master_chipselect),
      .oFLUSH_BUSY_F (oFLUSH_BUSY_F_from_the_Write_Port0),
      .oFULL_F       (oFULL_F_from_the_Write_Port0),
      .oWRITE        (Write_Port0_avalon_master_write),
      .oWRITE_DATA   (Write_Port0_avalon_master_writedata),
      .wrusedw       (wrusedw_from_the_Write_Port0)
    );

  ddr2_s1_arbitrator the_ddr2_s1
    (
      .clk                                                                       (ddr2_phy_clk_out),
      .d1_ddr2_s1_end_xfer                                                       (d1_ddr2_s1_end_xfer),
      .ddr2_multi_port_burst_0_downstream_address_to_slave                       (ddr2_multi_port_burst_0_downstream_address_to_slave),
      .ddr2_multi_port_burst_0_downstream_arbitrationshare                       (ddr2_multi_port_burst_0_downstream_arbitrationshare),
      .ddr2_multi_port_burst_0_downstream_burstcount                             (ddr2_multi_port_burst_0_downstream_burstcount),
      .ddr2_multi_port_burst_0_downstream_byteenable                             (ddr2_multi_port_burst_0_downstream_byteenable),
      .ddr2_multi_port_burst_0_downstream_granted_ddr2_s1                        (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_latency_counter                        (ddr2_multi_port_burst_0_downstream_latency_counter),
      .ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1              (ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_read                                   (ddr2_multi_port_burst_0_downstream_read),
      .ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1                (ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register (ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register),
      .ddr2_multi_port_burst_0_downstream_requests_ddr2_s1                       (ddr2_multi_port_burst_0_downstream_requests_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_write                                  (ddr2_multi_port_burst_0_downstream_write),
      .ddr2_multi_port_burst_0_downstream_writedata                              (ddr2_multi_port_burst_0_downstream_writedata),
      .ddr2_multi_port_burst_1_downstream_address_to_slave                       (ddr2_multi_port_burst_1_downstream_address_to_slave),
      .ddr2_multi_port_burst_1_downstream_arbitrationshare                       (ddr2_multi_port_burst_1_downstream_arbitrationshare),
      .ddr2_multi_port_burst_1_downstream_burstcount                             (ddr2_multi_port_burst_1_downstream_burstcount),
      .ddr2_multi_port_burst_1_downstream_byteenable                             (ddr2_multi_port_burst_1_downstream_byteenable),
      .ddr2_multi_port_burst_1_downstream_granted_ddr2_s1                        (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_latency_counter                        (ddr2_multi_port_burst_1_downstream_latency_counter),
      .ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1              (ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_read                                   (ddr2_multi_port_burst_1_downstream_read),
      .ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1                (ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register (ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register),
      .ddr2_multi_port_burst_1_downstream_requests_ddr2_s1                       (ddr2_multi_port_burst_1_downstream_requests_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_write                                  (ddr2_multi_port_burst_1_downstream_write),
      .ddr2_multi_port_burst_1_downstream_writedata                              (ddr2_multi_port_burst_1_downstream_writedata),
      .ddr2_s1_address                                                           (ddr2_s1_address),
      .ddr2_s1_beginbursttransfer                                                (ddr2_s1_beginbursttransfer),
      .ddr2_s1_burstcount                                                        (ddr2_s1_burstcount),
      .ddr2_s1_byteenable                                                        (ddr2_s1_byteenable),
      .ddr2_s1_read                                                              (ddr2_s1_read),
      .ddr2_s1_readdata                                                          (ddr2_s1_readdata),
      .ddr2_s1_readdata_from_sa                                                  (ddr2_s1_readdata_from_sa),
      .ddr2_s1_readdatavalid                                                     (ddr2_s1_readdatavalid),
      .ddr2_s1_resetrequest_n                                                    (ddr2_s1_resetrequest_n),
      .ddr2_s1_resetrequest_n_from_sa                                            (ddr2_s1_resetrequest_n_from_sa),
      .ddr2_s1_waitrequest_n                                                     (ddr2_s1_waitrequest_n),
      .ddr2_s1_waitrequest_n_from_sa                                             (ddr2_s1_waitrequest_n_from_sa),
      .ddr2_s1_write                                                             (ddr2_s1_write),
      .ddr2_s1_writedata                                                         (ddr2_s1_writedata),
      .reset_n                                                                   (ddr2_phy_clk_out_reset_n)
    );

  //ddr2_aux_full_rate_clk_out out_clk assignment, which is an e_assign
  assign ddr2_aux_full_rate_clk_out = out_clk_ddr2_aux_full_rate_clk;

  //ddr2_aux_half_rate_clk_out out_clk assignment, which is an e_assign
  assign ddr2_aux_half_rate_clk_out = out_clk_ddr2_aux_half_rate_clk;

  //ddr2_phy_clk_out out_clk assignment, which is an e_assign
  assign ddr2_phy_clk_out = out_clk_ddr2_phy_clk;

  //reset is asserted asynchronously and deasserted synchronously
  ddr2_multi_port_reset_clk_50_domain_synch_module ddr2_multi_port_reset_clk_50_domain_synch
    (
      .clk      (clk_50),
      .data_in  (1'b1),
      .data_out (clk_50_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    0 |
    ~ddr2_s1_resetrequest_n_from_sa |
    ~ddr2_s1_resetrequest_n_from_sa);

  ddr2 the_ddr2
    (
      .aux_full_rate_clk     (out_clk_ddr2_aux_full_rate_clk),
      .aux_half_rate_clk     (out_clk_ddr2_aux_half_rate_clk),
      .aux_scan_clk          (aux_scan_clk_from_the_ddr2),
      .aux_scan_clk_reset_n  (aux_scan_clk_reset_n_from_the_ddr2),
      .dll_reference_clk     (dll_reference_clk_from_the_ddr2),
      .dqs_delay_ctrl_export (dqs_delay_ctrl_export_from_the_ddr2),
      .global_reset_n        (global_reset_n_to_the_ddr2),
      .local_address         (ddr2_s1_address),
      .local_be              (ddr2_s1_byteenable),
      .local_burstbegin      (ddr2_s1_beginbursttransfer),
      .local_init_done       (local_init_done_from_the_ddr2),
      .local_rdata           (ddr2_s1_readdata),
      .local_rdata_valid     (ddr2_s1_readdatavalid),
      .local_read_req        (ddr2_s1_read),
      .local_ready           (ddr2_s1_waitrequest_n),
      .local_refresh_ack     (local_refresh_ack_from_the_ddr2),
      .local_size            (ddr2_s1_burstcount),
      .local_wdata           (ddr2_s1_writedata),
      .local_wdata_req       (local_wdata_req_from_the_ddr2),
      .local_write_req       (ddr2_s1_write),
      .mem_addr              (mem_addr_from_the_ddr2),
      .mem_ba                (mem_ba_from_the_ddr2),
      .mem_cas_n             (mem_cas_n_from_the_ddr2),
      .mem_cke               (mem_cke_from_the_ddr2),
      .mem_clk               (mem_clk_to_and_from_the_ddr2),
      .mem_clk_n             (mem_clk_n_to_and_from_the_ddr2),
      .mem_cs_n              (mem_cs_n_from_the_ddr2),
      .mem_dm                (mem_dm_from_the_ddr2),
      .mem_dq                (mem_dq_to_and_from_the_ddr2),
      .mem_dqs               (mem_dqs_to_and_from_the_ddr2),
      .mem_dqsn              (mem_dqsn_to_and_from_the_ddr2),
      .mem_odt               (mem_odt_from_the_ddr2),
      .mem_ras_n             (mem_ras_n_from_the_ddr2),
      .mem_we_n              (mem_we_n_from_the_ddr2),
      .oct_ctl_rs_value      (oct_ctl_rs_value_to_the_ddr2),
      .oct_ctl_rt_value      (oct_ctl_rt_value_to_the_ddr2),
      .phy_clk               (out_clk_ddr2_phy_clk),
      .pll_ref_clk           (clk_50),
      .reset_phy_clk_n       (reset_phy_clk_n_from_the_ddr2),
      .reset_request_n       (ddr2_s1_resetrequest_n),
      .soft_reset_n          (clk_50_reset_n)
    );

  ddr2_multi_port_burst_0_upstream_arbitrator the_ddr2_multi_port_burst_0_upstream
    (
      .Read_Port0_avalon_master_address_to_slave                                  (Read_Port0_avalon_master_address_to_slave),
      .Read_Port0_avalon_master_burstcount                                        (Read_Port0_avalon_master_burstcount),
      .Read_Port0_avalon_master_chipselect                                        (Read_Port0_avalon_master_chipselect),
      .Read_Port0_avalon_master_read                                              (Read_Port0_avalon_master_read),
      .Read_Port0_granted_ddr2_multi_port_burst_0_upstream                        (Read_Port0_granted_ddr2_multi_port_burst_0_upstream),
      .Read_Port0_latency_counter                                                 (Read_Port0_latency_counter),
      .Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream              (Read_Port0_qualified_request_ddr2_multi_port_burst_0_upstream),
      .Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream                (Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream),
      .Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register (Read_Port0_read_data_valid_ddr2_multi_port_burst_0_upstream_shift_register),
      .Read_Port0_requests_ddr2_multi_port_burst_0_upstream                       (Read_Port0_requests_ddr2_multi_port_burst_0_upstream),
      .clk                                                                        (ddr2_phy_clk_out),
      .d1_ddr2_multi_port_burst_0_upstream_end_xfer                               (d1_ddr2_multi_port_burst_0_upstream_end_xfer),
      .ddr2_multi_port_burst_0_upstream_address                                   (ddr2_multi_port_burst_0_upstream_address),
      .ddr2_multi_port_burst_0_upstream_burstcount                                (ddr2_multi_port_burst_0_upstream_burstcount),
      .ddr2_multi_port_burst_0_upstream_byteaddress                               (ddr2_multi_port_burst_0_upstream_byteaddress),
      .ddr2_multi_port_burst_0_upstream_byteenable                                (ddr2_multi_port_burst_0_upstream_byteenable),
      .ddr2_multi_port_burst_0_upstream_debugaccess                               (ddr2_multi_port_burst_0_upstream_debugaccess),
      .ddr2_multi_port_burst_0_upstream_read                                      (ddr2_multi_port_burst_0_upstream_read),
      .ddr2_multi_port_burst_0_upstream_readdata                                  (ddr2_multi_port_burst_0_upstream_readdata),
      .ddr2_multi_port_burst_0_upstream_readdata_from_sa                          (ddr2_multi_port_burst_0_upstream_readdata_from_sa),
      .ddr2_multi_port_burst_0_upstream_readdatavalid                             (ddr2_multi_port_burst_0_upstream_readdatavalid),
      .ddr2_multi_port_burst_0_upstream_waitrequest                               (ddr2_multi_port_burst_0_upstream_waitrequest),
      .ddr2_multi_port_burst_0_upstream_waitrequest_from_sa                       (ddr2_multi_port_burst_0_upstream_waitrequest_from_sa),
      .ddr2_multi_port_burst_0_upstream_write                                     (ddr2_multi_port_burst_0_upstream_write),
      .reset_n                                                                    (ddr2_phy_clk_out_reset_n)
    );

  ddr2_multi_port_burst_0_downstream_arbitrator the_ddr2_multi_port_burst_0_downstream
    (
      .clk                                                                       (ddr2_phy_clk_out),
      .d1_ddr2_s1_end_xfer                                                       (d1_ddr2_s1_end_xfer),
      .ddr2_multi_port_burst_0_downstream_address                                (ddr2_multi_port_burst_0_downstream_address),
      .ddr2_multi_port_burst_0_downstream_address_to_slave                       (ddr2_multi_port_burst_0_downstream_address_to_slave),
      .ddr2_multi_port_burst_0_downstream_burstcount                             (ddr2_multi_port_burst_0_downstream_burstcount),
      .ddr2_multi_port_burst_0_downstream_byteenable                             (ddr2_multi_port_burst_0_downstream_byteenable),
      .ddr2_multi_port_burst_0_downstream_granted_ddr2_s1                        (ddr2_multi_port_burst_0_downstream_granted_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_latency_counter                        (ddr2_multi_port_burst_0_downstream_latency_counter),
      .ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1              (ddr2_multi_port_burst_0_downstream_qualified_request_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_read                                   (ddr2_multi_port_burst_0_downstream_read),
      .ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1                (ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register (ddr2_multi_port_burst_0_downstream_read_data_valid_ddr2_s1_shift_register),
      .ddr2_multi_port_burst_0_downstream_readdata                               (ddr2_multi_port_burst_0_downstream_readdata),
      .ddr2_multi_port_burst_0_downstream_readdatavalid                          (ddr2_multi_port_burst_0_downstream_readdatavalid),
      .ddr2_multi_port_burst_0_downstream_requests_ddr2_s1                       (ddr2_multi_port_burst_0_downstream_requests_ddr2_s1),
      .ddr2_multi_port_burst_0_downstream_reset_n                                (ddr2_multi_port_burst_0_downstream_reset_n),
      .ddr2_multi_port_burst_0_downstream_waitrequest                            (ddr2_multi_port_burst_0_downstream_waitrequest),
      .ddr2_multi_port_burst_0_downstream_write                                  (ddr2_multi_port_burst_0_downstream_write),
      .ddr2_multi_port_burst_0_downstream_writedata                              (ddr2_multi_port_burst_0_downstream_writedata),
      .ddr2_s1_readdata_from_sa                                                  (ddr2_s1_readdata_from_sa),
      .ddr2_s1_waitrequest_n_from_sa                                             (ddr2_s1_waitrequest_n_from_sa),
      .reset_n                                                                   (ddr2_phy_clk_out_reset_n)
    );

  ddr2_multi_port_burst_0 the_ddr2_multi_port_burst_0
    (
      .clk                         (ddr2_phy_clk_out),
      .downstream_address          (ddr2_multi_port_burst_0_downstream_address),
      .downstream_arbitrationshare (ddr2_multi_port_burst_0_downstream_arbitrationshare),
      .downstream_burstcount       (ddr2_multi_port_burst_0_downstream_burstcount),
      .downstream_byteenable       (ddr2_multi_port_burst_0_downstream_byteenable),
      .downstream_debugaccess      (ddr2_multi_port_burst_0_downstream_debugaccess),
      .downstream_nativeaddress    (ddr2_multi_port_burst_0_downstream_nativeaddress),
      .downstream_read             (ddr2_multi_port_burst_0_downstream_read),
      .downstream_readdata         (ddr2_multi_port_burst_0_downstream_readdata),
      .downstream_readdatavalid    (ddr2_multi_port_burst_0_downstream_readdatavalid),
      .downstream_waitrequest      (ddr2_multi_port_burst_0_downstream_waitrequest),
      .downstream_write            (ddr2_multi_port_burst_0_downstream_write),
      .downstream_writedata        (ddr2_multi_port_burst_0_downstream_writedata),
      .reset_n                     (ddr2_multi_port_burst_0_downstream_reset_n),
      .upstream_address            (ddr2_multi_port_burst_0_upstream_byteaddress),
      .upstream_burstcount         (ddr2_multi_port_burst_0_upstream_burstcount),
      .upstream_byteenable         (ddr2_multi_port_burst_0_upstream_byteenable),
      .upstream_debugaccess        (ddr2_multi_port_burst_0_upstream_debugaccess),
      .upstream_nativeaddress      (ddr2_multi_port_burst_0_upstream_address),
      .upstream_read               (ddr2_multi_port_burst_0_upstream_read),
      .upstream_readdata           (ddr2_multi_port_burst_0_upstream_readdata),
      .upstream_readdatavalid      (ddr2_multi_port_burst_0_upstream_readdatavalid),
      .upstream_waitrequest        (ddr2_multi_port_burst_0_upstream_waitrequest),
      .upstream_write              (ddr2_multi_port_burst_0_upstream_write),
      .upstream_writedata          (ddr2_multi_port_burst_0_upstream_writedata)
    );

  ddr2_multi_port_burst_1_upstream_arbitrator the_ddr2_multi_port_burst_1_upstream
    (
      .Write_Port0_avalon_master_address_to_slave                     (Write_Port0_avalon_master_address_to_slave),
      .Write_Port0_avalon_master_burstcount                           (Write_Port0_avalon_master_burstcount),
      .Write_Port0_avalon_master_byteenable                           (Write_Port0_avalon_master_byteenable),
      .Write_Port0_avalon_master_chipselect                           (Write_Port0_avalon_master_chipselect),
      .Write_Port0_avalon_master_write                                (Write_Port0_avalon_master_write),
      .Write_Port0_avalon_master_writedata                            (Write_Port0_avalon_master_writedata),
      .Write_Port0_granted_ddr2_multi_port_burst_1_upstream           (Write_Port0_granted_ddr2_multi_port_burst_1_upstream),
      .Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream (Write_Port0_qualified_request_ddr2_multi_port_burst_1_upstream),
      .Write_Port0_requests_ddr2_multi_port_burst_1_upstream          (Write_Port0_requests_ddr2_multi_port_burst_1_upstream),
      .clk                                                            (ddr2_phy_clk_out),
      .d1_ddr2_multi_port_burst_1_upstream_end_xfer                   (d1_ddr2_multi_port_burst_1_upstream_end_xfer),
      .ddr2_multi_port_burst_1_upstream_address                       (ddr2_multi_port_burst_1_upstream_address),
      .ddr2_multi_port_burst_1_upstream_burstcount                    (ddr2_multi_port_burst_1_upstream_burstcount),
      .ddr2_multi_port_burst_1_upstream_byteaddress                   (ddr2_multi_port_burst_1_upstream_byteaddress),
      .ddr2_multi_port_burst_1_upstream_byteenable                    (ddr2_multi_port_burst_1_upstream_byteenable),
      .ddr2_multi_port_burst_1_upstream_debugaccess                   (ddr2_multi_port_burst_1_upstream_debugaccess),
      .ddr2_multi_port_burst_1_upstream_read                          (ddr2_multi_port_burst_1_upstream_read),
      .ddr2_multi_port_burst_1_upstream_readdata                      (ddr2_multi_port_burst_1_upstream_readdata),
      .ddr2_multi_port_burst_1_upstream_readdata_from_sa              (ddr2_multi_port_burst_1_upstream_readdata_from_sa),
      .ddr2_multi_port_burst_1_upstream_readdatavalid                 (ddr2_multi_port_burst_1_upstream_readdatavalid),
      .ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa         (ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa),
      .ddr2_multi_port_burst_1_upstream_waitrequest                   (ddr2_multi_port_burst_1_upstream_waitrequest),
      .ddr2_multi_port_burst_1_upstream_waitrequest_from_sa           (ddr2_multi_port_burst_1_upstream_waitrequest_from_sa),
      .ddr2_multi_port_burst_1_upstream_write                         (ddr2_multi_port_burst_1_upstream_write),
      .ddr2_multi_port_burst_1_upstream_writedata                     (ddr2_multi_port_burst_1_upstream_writedata),
      .reset_n                                                        (ddr2_phy_clk_out_reset_n)
    );

  ddr2_multi_port_burst_1_downstream_arbitrator the_ddr2_multi_port_burst_1_downstream
    (
      .clk                                                                       (ddr2_phy_clk_out),
      .d1_ddr2_s1_end_xfer                                                       (d1_ddr2_s1_end_xfer),
      .ddr2_multi_port_burst_1_downstream_address                                (ddr2_multi_port_burst_1_downstream_address),
      .ddr2_multi_port_burst_1_downstream_address_to_slave                       (ddr2_multi_port_burst_1_downstream_address_to_slave),
      .ddr2_multi_port_burst_1_downstream_burstcount                             (ddr2_multi_port_burst_1_downstream_burstcount),
      .ddr2_multi_port_burst_1_downstream_byteenable                             (ddr2_multi_port_burst_1_downstream_byteenable),
      .ddr2_multi_port_burst_1_downstream_granted_ddr2_s1                        (ddr2_multi_port_burst_1_downstream_granted_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_latency_counter                        (ddr2_multi_port_burst_1_downstream_latency_counter),
      .ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1              (ddr2_multi_port_burst_1_downstream_qualified_request_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_read                                   (ddr2_multi_port_burst_1_downstream_read),
      .ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1                (ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register (ddr2_multi_port_burst_1_downstream_read_data_valid_ddr2_s1_shift_register),
      .ddr2_multi_port_burst_1_downstream_readdata                               (ddr2_multi_port_burst_1_downstream_readdata),
      .ddr2_multi_port_burst_1_downstream_readdatavalid                          (ddr2_multi_port_burst_1_downstream_readdatavalid),
      .ddr2_multi_port_burst_1_downstream_requests_ddr2_s1                       (ddr2_multi_port_burst_1_downstream_requests_ddr2_s1),
      .ddr2_multi_port_burst_1_downstream_reset_n                                (ddr2_multi_port_burst_1_downstream_reset_n),
      .ddr2_multi_port_burst_1_downstream_waitrequest                            (ddr2_multi_port_burst_1_downstream_waitrequest),
      .ddr2_multi_port_burst_1_downstream_write                                  (ddr2_multi_port_burst_1_downstream_write),
      .ddr2_multi_port_burst_1_downstream_writedata                              (ddr2_multi_port_burst_1_downstream_writedata),
      .ddr2_s1_readdata_from_sa                                                  (ddr2_s1_readdata_from_sa),
      .ddr2_s1_waitrequest_n_from_sa                                             (ddr2_s1_waitrequest_n_from_sa),
      .reset_n                                                                   (ddr2_phy_clk_out_reset_n)
    );

  ddr2_multi_port_burst_1 the_ddr2_multi_port_burst_1
    (
      .clk                         (ddr2_phy_clk_out),
      .downstream_address          (ddr2_multi_port_burst_1_downstream_address),
      .downstream_arbitrationshare (ddr2_multi_port_burst_1_downstream_arbitrationshare),
      .downstream_burstcount       (ddr2_multi_port_burst_1_downstream_burstcount),
      .downstream_byteenable       (ddr2_multi_port_burst_1_downstream_byteenable),
      .downstream_debugaccess      (ddr2_multi_port_burst_1_downstream_debugaccess),
      .downstream_nativeaddress    (ddr2_multi_port_burst_1_downstream_nativeaddress),
      .downstream_read             (ddr2_multi_port_burst_1_downstream_read),
      .downstream_readdata         (ddr2_multi_port_burst_1_downstream_readdata),
      .downstream_readdatavalid    (ddr2_multi_port_burst_1_downstream_readdatavalid),
      .downstream_waitrequest      (ddr2_multi_port_burst_1_downstream_waitrequest),
      .downstream_write            (ddr2_multi_port_burst_1_downstream_write),
      .downstream_writedata        (ddr2_multi_port_burst_1_downstream_writedata),
      .reset_n                     (ddr2_multi_port_burst_1_downstream_reset_n),
      .upstream_address            (ddr2_multi_port_burst_1_upstream_byteaddress),
      .upstream_burstcount         (ddr2_multi_port_burst_1_upstream_burstcount),
      .upstream_byteenable         (ddr2_multi_port_burst_1_upstream_byteenable),
      .upstream_debugaccess        (ddr2_multi_port_burst_1_upstream_debugaccess),
      .upstream_nativeaddress      (ddr2_multi_port_burst_1_upstream_address),
      .upstream_read               (ddr2_multi_port_burst_1_upstream_read),
      .upstream_readdata           (ddr2_multi_port_burst_1_upstream_readdata),
      .upstream_readdatavalid      (ddr2_multi_port_burst_1_upstream_readdatavalid),
      .upstream_waitrequest        (ddr2_multi_port_burst_1_upstream_waitrequest),
      .upstream_write              (ddr2_multi_port_burst_1_upstream_write),
      .upstream_writedata          (ddr2_multi_port_burst_1_upstream_writedata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  ddr2_multi_port_reset_ddr2_phy_clk_out_domain_synch_module ddr2_multi_port_reset_ddr2_phy_clk_out_domain_synch
    (
      .clk      (ddr2_phy_clk_out),
      .data_in  (1'b1),
      .data_out (ddr2_phy_clk_out_reset_n),
      .reset_n  (reset_n_sources)
    );

  //ddr2_multi_port_burst_0_upstream_writedata of type writedata does not connect to anything so wire it to default (0)
  assign ddr2_multi_port_burst_0_upstream_writedata = 0;


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "c:/altera/91/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/91/quartus/eda/sim_lib/220model.v"
`include "c:/altera/91/quartus/eda/sim_lib/sgate.v"
`include "DDR2_SODIMM_Write_Port.v"
`include "Write_Port0.v"
`include "DDR2_SODIMM_Read_Port.v"
`include "Read_Port0.v"
`include "ddr2_multi_port_burst_0.v"
`include "ddr2_multi_port_burst_1.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire             aux_scan_clk_from_the_ddr2;
  wire             aux_scan_clk_reset_n_from_the_ddr2;
  wire    [  4: 0] c_state_flush_from_the_Write_Port0;
  wire    [  3: 0] c_state_from_the_Read_Port0;
  wire    [  3: 0] c_state_from_the_Write_Port0;
  wire             clk;
  reg              clk_50;
  wire             ddr2_aux_full_rate_clk_out;
  wire             ddr2_aux_half_rate_clk_out;
  wire             ddr2_multi_port_burst_0_downstream_debugaccess;
  wire    [ 29: 0] ddr2_multi_port_burst_0_downstream_nativeaddress;
  wire    [255: 0] ddr2_multi_port_burst_0_upstream_writedata;
  wire             ddr2_multi_port_burst_1_downstream_debugaccess;
  wire    [ 29: 0] ddr2_multi_port_burst_1_downstream_nativeaddress;
  wire    [255: 0] ddr2_multi_port_burst_1_upstream_readdata_from_sa;
  wire             ddr2_multi_port_burst_1_upstream_readdatavalid_from_sa;
  wire             ddr2_phy_clk_out;
  wire             dll_reference_clk_from_the_ddr2;
  wire    [  5: 0] dqs_delay_ctrl_export_from_the_ddr2;
  wire             error_from_the_Read_Port0;
  wire             global_reset_n_to_the_ddr2;
  wire             iCLK_F_to_the_Read_Port0;
  wire             iCLK_F_to_the_Write_Port0;
  wire             iFLUSH_REQ_F_to_the_Write_Port0;
  wire             iIP_INIT_DONE_to_the_Read_Port0;
  wire             iIP_INIT_DONE_to_the_Write_Port0;
  wire             iREAD_ACK_F_to_the_Read_Port0;
  wire             iRST_n_F_to_the_Read_Port0;
  wire             iRST_n_F_to_the_Write_Port0;
  wire    [ 31: 0] iWRITE_DATA_F_to_the_Write_Port0;
  wire             iWRITE_F_to_the_Write_Port0;
  wire             local_init_done_from_the_ddr2;
  wire             local_refresh_ack_from_the_ddr2;
  wire             local_wdata_req_from_the_ddr2;
  wire    [ 13: 0] mem_addr_from_the_ddr2;
  wire    [  2: 0] mem_ba_from_the_ddr2;
  wire             mem_cas_n_from_the_ddr2;
  wire             mem_cke_from_the_ddr2;
  wire    [  1: 0] mem_clk_n_to_and_from_the_ddr2;
  wire    [  1: 0] mem_clk_to_and_from_the_ddr2;
  wire             mem_cs_n_from_the_ddr2;
  wire    [  7: 0] mem_dm_from_the_ddr2;
  wire    [ 63: 0] mem_dq_to_and_from_the_ddr2;
  wire    [  7: 0] mem_dqs_to_and_from_the_ddr2;
  wire    [  7: 0] mem_dqsn_to_and_from_the_ddr2;
  wire             mem_odt_from_the_ddr2;
  wire             mem_ras_n_from_the_ddr2;
  wire             mem_we_n_from_the_ddr2;
  wire             oEMPTY_F_from_the_Read_Port0;
  wire             oFLUSH_BUSY_F_from_the_Write_Port0;
  wire             oFULL_F_from_the_Write_Port0;
  wire             oPORT_READY_F_from_the_Read_Port0;
  wire    [ 31: 0] oREAD_DATA_F_from_the_Read_Port0;
  wire    [ 13: 0] oct_ctl_rs_value_to_the_ddr2;
  wire    [ 13: 0] oct_ctl_rt_value_to_the_ddr2;
  reg              reset_n;
  wire             reset_phy_clk_n_from_the_ddr2;
  wire    [  8: 0] wrusedw_from_the_Write_Port0;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  ddr2_multi_port DUT
    (
      .aux_scan_clk_from_the_ddr2          (aux_scan_clk_from_the_ddr2),
      .aux_scan_clk_reset_n_from_the_ddr2  (aux_scan_clk_reset_n_from_the_ddr2),
      .c_state_flush_from_the_Write_Port0  (c_state_flush_from_the_Write_Port0),
      .c_state_from_the_Read_Port0         (c_state_from_the_Read_Port0),
      .c_state_from_the_Write_Port0        (c_state_from_the_Write_Port0),
      .clk_50                              (clk_50),
      .ddr2_aux_full_rate_clk_out          (ddr2_aux_full_rate_clk_out),
      .ddr2_aux_half_rate_clk_out          (ddr2_aux_half_rate_clk_out),
      .ddr2_phy_clk_out                    (ddr2_phy_clk_out),
      .dll_reference_clk_from_the_ddr2     (dll_reference_clk_from_the_ddr2),
      .dqs_delay_ctrl_export_from_the_ddr2 (dqs_delay_ctrl_export_from_the_ddr2),
      .error_from_the_Read_Port0           (error_from_the_Read_Port0),
      .global_reset_n_to_the_ddr2          (global_reset_n_to_the_ddr2),
      .iCLK_F_to_the_Read_Port0            (iCLK_F_to_the_Read_Port0),
      .iCLK_F_to_the_Write_Port0           (iCLK_F_to_the_Write_Port0),
      .iFLUSH_REQ_F_to_the_Write_Port0     (iFLUSH_REQ_F_to_the_Write_Port0),
      .iIP_INIT_DONE_to_the_Read_Port0     (iIP_INIT_DONE_to_the_Read_Port0),
      .iIP_INIT_DONE_to_the_Write_Port0    (iIP_INIT_DONE_to_the_Write_Port0),
      .iREAD_ACK_F_to_the_Read_Port0       (iREAD_ACK_F_to_the_Read_Port0),
      .iRST_n_F_to_the_Read_Port0          (iRST_n_F_to_the_Read_Port0),
      .iRST_n_F_to_the_Write_Port0         (iRST_n_F_to_the_Write_Port0),
      .iWRITE_DATA_F_to_the_Write_Port0    (iWRITE_DATA_F_to_the_Write_Port0),
      .iWRITE_F_to_the_Write_Port0         (iWRITE_F_to_the_Write_Port0),
      .local_init_done_from_the_ddr2       (local_init_done_from_the_ddr2),
      .local_refresh_ack_from_the_ddr2     (local_refresh_ack_from_the_ddr2),
      .local_wdata_req_from_the_ddr2       (local_wdata_req_from_the_ddr2),
      .mem_addr_from_the_ddr2              (mem_addr_from_the_ddr2),
      .mem_ba_from_the_ddr2                (mem_ba_from_the_ddr2),
      .mem_cas_n_from_the_ddr2             (mem_cas_n_from_the_ddr2),
      .mem_cke_from_the_ddr2               (mem_cke_from_the_ddr2),
      .mem_clk_n_to_and_from_the_ddr2      (mem_clk_n_to_and_from_the_ddr2),
      .mem_clk_to_and_from_the_ddr2        (mem_clk_to_and_from_the_ddr2),
      .mem_cs_n_from_the_ddr2              (mem_cs_n_from_the_ddr2),
      .mem_dm_from_the_ddr2                (mem_dm_from_the_ddr2),
      .mem_dq_to_and_from_the_ddr2         (mem_dq_to_and_from_the_ddr2),
      .mem_dqs_to_and_from_the_ddr2        (mem_dqs_to_and_from_the_ddr2),
      .mem_dqsn_to_and_from_the_ddr2       (mem_dqsn_to_and_from_the_ddr2),
      .mem_odt_from_the_ddr2               (mem_odt_from_the_ddr2),
      .mem_ras_n_from_the_ddr2             (mem_ras_n_from_the_ddr2),
      .mem_we_n_from_the_ddr2              (mem_we_n_from_the_ddr2),
      .oEMPTY_F_from_the_Read_Port0        (oEMPTY_F_from_the_Read_Port0),
      .oFLUSH_BUSY_F_from_the_Write_Port0  (oFLUSH_BUSY_F_from_the_Write_Port0),
      .oFULL_F_from_the_Write_Port0        (oFULL_F_from_the_Write_Port0),
      .oPORT_READY_F_from_the_Read_Port0   (oPORT_READY_F_from_the_Read_Port0),
      .oREAD_DATA_F_from_the_Read_Port0    (oREAD_DATA_F_from_the_Read_Port0),
      .oct_ctl_rs_value_to_the_ddr2        (oct_ctl_rs_value_to_the_ddr2),
      .oct_ctl_rt_value_to_the_ddr2        (oct_ctl_rt_value_to_the_ddr2),
      .reset_n                             (reset_n),
      .reset_phy_clk_n_from_the_ddr2       (reset_phy_clk_n_from_the_ddr2),
      .wrusedw_from_the_Write_Port0        (wrusedw_from_the_Write_Port0)
    );

  initial
    clk_50 = 1'b0;
  always
    #10 clk_50 <= ~clk_50;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on