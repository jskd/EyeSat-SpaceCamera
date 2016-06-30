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

module DE2_70_SOPC_clock_0_in_arbitrator (
                                           // inputs:
                                            DE2_70_SOPC_clock_0_in_endofpacket,
                                            DE2_70_SOPC_clock_0_in_readdata,
                                            DE2_70_SOPC_clock_0_in_waitrequest,
                                            clk,
                                            cpu_data_master_address_to_slave,
                                            cpu_data_master_byteenable,
                                            cpu_data_master_latency_counter,
                                            cpu_data_master_read,
                                            cpu_data_master_write,
                                            cpu_data_master_writedata,
                                            reset_n,

                                           // outputs:
                                            DE2_70_SOPC_clock_0_in_address,
                                            DE2_70_SOPC_clock_0_in_byteenable,
                                            DE2_70_SOPC_clock_0_in_endofpacket_from_sa,
                                            DE2_70_SOPC_clock_0_in_nativeaddress,
                                            DE2_70_SOPC_clock_0_in_read,
                                            DE2_70_SOPC_clock_0_in_readdata_from_sa,
                                            DE2_70_SOPC_clock_0_in_reset_n,
                                            DE2_70_SOPC_clock_0_in_waitrequest_from_sa,
                                            DE2_70_SOPC_clock_0_in_write,
                                            DE2_70_SOPC_clock_0_in_writedata,
                                            cpu_data_master_granted_DE2_70_SOPC_clock_0_in,
                                            cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in,
                                            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in,
                                            cpu_data_master_requests_DE2_70_SOPC_clock_0_in,
                                            d1_DE2_70_SOPC_clock_0_in_end_xfer
                                         )
;

  output  [  3: 0] DE2_70_SOPC_clock_0_in_address;
  output  [  3: 0] DE2_70_SOPC_clock_0_in_byteenable;
  output           DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  output  [  1: 0] DE2_70_SOPC_clock_0_in_nativeaddress;
  output           DE2_70_SOPC_clock_0_in_read;
  output  [ 31: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  output           DE2_70_SOPC_clock_0_in_reset_n;
  output           DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  output           DE2_70_SOPC_clock_0_in_write;
  output  [ 31: 0] DE2_70_SOPC_clock_0_in_writedata;
  output           cpu_data_master_granted_DE2_70_SOPC_clock_0_in;
  output           cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in;
  output           cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  output           cpu_data_master_requests_DE2_70_SOPC_clock_0_in;
  output           d1_DE2_70_SOPC_clock_0_in_end_xfer;
  input            DE2_70_SOPC_clock_0_in_endofpacket;
  input   [ 31: 0] DE2_70_SOPC_clock_0_in_readdata;
  input            DE2_70_SOPC_clock_0_in_waitrequest;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  3: 0] DE2_70_SOPC_clock_0_in_address;
  wire             DE2_70_SOPC_clock_0_in_allgrants;
  wire             DE2_70_SOPC_clock_0_in_allow_new_arb_cycle;
  wire             DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant;
  wire             DE2_70_SOPC_clock_0_in_any_continuerequest;
  wire             DE2_70_SOPC_clock_0_in_arb_counter_enable;
  reg              DE2_70_SOPC_clock_0_in_arb_share_counter;
  wire             DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;
  wire             DE2_70_SOPC_clock_0_in_arb_share_set_values;
  wire             DE2_70_SOPC_clock_0_in_beginbursttransfer_internal;
  wire             DE2_70_SOPC_clock_0_in_begins_xfer;
  wire    [  3: 0] DE2_70_SOPC_clock_0_in_byteenable;
  wire             DE2_70_SOPC_clock_0_in_end_xfer;
  wire             DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_0_in_firsttransfer;
  wire             DE2_70_SOPC_clock_0_in_grant_vector;
  wire             DE2_70_SOPC_clock_0_in_in_a_read_cycle;
  wire             DE2_70_SOPC_clock_0_in_in_a_write_cycle;
  wire             DE2_70_SOPC_clock_0_in_master_qreq_vector;
  wire    [  1: 0] DE2_70_SOPC_clock_0_in_nativeaddress;
  wire             DE2_70_SOPC_clock_0_in_non_bursting_master_requests;
  wire             DE2_70_SOPC_clock_0_in_read;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  reg              DE2_70_SOPC_clock_0_in_reg_firsttransfer;
  wire             DE2_70_SOPC_clock_0_in_reset_n;
  reg              DE2_70_SOPC_clock_0_in_slavearbiterlockenable;
  wire             DE2_70_SOPC_clock_0_in_slavearbiterlockenable2;
  wire             DE2_70_SOPC_clock_0_in_unreg_firsttransfer;
  wire             DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_0_in_waits_for_read;
  wire             DE2_70_SOPC_clock_0_in_waits_for_write;
  wire             DE2_70_SOPC_clock_0_in_write;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_in_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_saved_grant_DE2_70_SOPC_clock_0_in;
  reg              d1_DE2_70_SOPC_clock_0_in_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_DE2_70_SOPC_clock_0_in_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~DE2_70_SOPC_clock_0_in_end_xfer;
    end


  assign DE2_70_SOPC_clock_0_in_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in));
  //assign DE2_70_SOPC_clock_0_in_readdata_from_sa = DE2_70_SOPC_clock_0_in_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_readdata_from_sa = DE2_70_SOPC_clock_0_in_readdata;

  assign cpu_data_master_requests_DE2_70_SOPC_clock_0_in = ({cpu_data_master_address_to_slave[22 : 4] , 4'b0} == 23'h441090) & (cpu_data_master_read | cpu_data_master_write);
  //assign DE2_70_SOPC_clock_0_in_waitrequest_from_sa = DE2_70_SOPC_clock_0_in_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_waitrequest_from_sa = DE2_70_SOPC_clock_0_in_waitrequest;

  //DE2_70_SOPC_clock_0_in_arb_share_counter set values, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_arb_share_set_values = 1;

  //DE2_70_SOPC_clock_0_in_non_bursting_master_requests mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_non_bursting_master_requests = cpu_data_master_requests_DE2_70_SOPC_clock_0_in;

  //DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant = 0;

  //DE2_70_SOPC_clock_0_in_arb_share_counter_next_value assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_arb_share_counter_next_value = DE2_70_SOPC_clock_0_in_firsttransfer ? (DE2_70_SOPC_clock_0_in_arb_share_set_values - 1) : |DE2_70_SOPC_clock_0_in_arb_share_counter ? (DE2_70_SOPC_clock_0_in_arb_share_counter - 1) : 0;

  //DE2_70_SOPC_clock_0_in_allgrants all slave grants, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_allgrants = |DE2_70_SOPC_clock_0_in_grant_vector;

  //DE2_70_SOPC_clock_0_in_end_xfer assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_end_xfer = ~(DE2_70_SOPC_clock_0_in_waits_for_read | DE2_70_SOPC_clock_0_in_waits_for_write);

  //end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in = DE2_70_SOPC_clock_0_in_end_xfer & (~DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //DE2_70_SOPC_clock_0_in_arb_share_counter arbitration counter enable, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_arb_counter_enable = (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in & DE2_70_SOPC_clock_0_in_allgrants) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in & ~DE2_70_SOPC_clock_0_in_non_bursting_master_requests);

  //DE2_70_SOPC_clock_0_in_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_in_arb_share_counter <= 0;
      else if (DE2_70_SOPC_clock_0_in_arb_counter_enable)
          DE2_70_SOPC_clock_0_in_arb_share_counter <= DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_0_in_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_in_slavearbiterlockenable <= 0;
      else if ((|DE2_70_SOPC_clock_0_in_master_qreq_vector & end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in & ~DE2_70_SOPC_clock_0_in_non_bursting_master_requests))
          DE2_70_SOPC_clock_0_in_slavearbiterlockenable <= |DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;
    end


  //cpu/data_master DE2_70_SOPC_clock_0/in arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = DE2_70_SOPC_clock_0_in_slavearbiterlockenable & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_0_in_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_slavearbiterlockenable2 = |DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;

  //cpu/data_master DE2_70_SOPC_clock_0/in arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = DE2_70_SOPC_clock_0_in_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_0_in_any_continuerequest at least one master continues requesting, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in = cpu_data_master_requests_DE2_70_SOPC_clock_0_in & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in, which is an e_mux
  assign cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in = cpu_data_master_granted_DE2_70_SOPC_clock_0_in & cpu_data_master_read & ~DE2_70_SOPC_clock_0_in_waits_for_read;

  //DE2_70_SOPC_clock_0_in_writedata mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_writedata = cpu_data_master_writedata;

  //assign DE2_70_SOPC_clock_0_in_endofpacket_from_sa = DE2_70_SOPC_clock_0_in_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_endofpacket_from_sa = DE2_70_SOPC_clock_0_in_endofpacket;

  //master is always granted when requested
  assign cpu_data_master_granted_DE2_70_SOPC_clock_0_in = cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in;

  //cpu/data_master saved-grant DE2_70_SOPC_clock_0/in, which is an e_assign
  assign cpu_data_master_saved_grant_DE2_70_SOPC_clock_0_in = cpu_data_master_requests_DE2_70_SOPC_clock_0_in;

  //allow new arb cycle for DE2_70_SOPC_clock_0/in, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign DE2_70_SOPC_clock_0_in_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign DE2_70_SOPC_clock_0_in_master_qreq_vector = 1;

  //DE2_70_SOPC_clock_0_in_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_reset_n = reset_n;

  //DE2_70_SOPC_clock_0_in_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_firsttransfer = DE2_70_SOPC_clock_0_in_begins_xfer ? DE2_70_SOPC_clock_0_in_unreg_firsttransfer : DE2_70_SOPC_clock_0_in_reg_firsttransfer;

  //DE2_70_SOPC_clock_0_in_unreg_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_unreg_firsttransfer = ~(DE2_70_SOPC_clock_0_in_slavearbiterlockenable & DE2_70_SOPC_clock_0_in_any_continuerequest);

  //DE2_70_SOPC_clock_0_in_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_in_reg_firsttransfer <= 1'b1;
      else if (DE2_70_SOPC_clock_0_in_begins_xfer)
          DE2_70_SOPC_clock_0_in_reg_firsttransfer <= DE2_70_SOPC_clock_0_in_unreg_firsttransfer;
    end


  //DE2_70_SOPC_clock_0_in_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_beginbursttransfer_internal = DE2_70_SOPC_clock_0_in_begins_xfer;

  //DE2_70_SOPC_clock_0_in_read assignment, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_read = cpu_data_master_granted_DE2_70_SOPC_clock_0_in & cpu_data_master_read;

  //DE2_70_SOPC_clock_0_in_write assignment, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_write = cpu_data_master_granted_DE2_70_SOPC_clock_0_in & cpu_data_master_write;

  //DE2_70_SOPC_clock_0_in_address mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_address = cpu_data_master_address_to_slave;

  //slaveid DE2_70_SOPC_clock_0_in_nativeaddress nativeaddress mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_nativeaddress = cpu_data_master_address_to_slave >> 2;

  //d1_DE2_70_SOPC_clock_0_in_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_DE2_70_SOPC_clock_0_in_end_xfer <= 1;
      else 
        d1_DE2_70_SOPC_clock_0_in_end_xfer <= DE2_70_SOPC_clock_0_in_end_xfer;
    end


  //DE2_70_SOPC_clock_0_in_waits_for_read in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_waits_for_read = DE2_70_SOPC_clock_0_in_in_a_read_cycle & DE2_70_SOPC_clock_0_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_0_in_in_a_read_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_in_a_read_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_0_in & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = DE2_70_SOPC_clock_0_in_in_a_read_cycle;

  //DE2_70_SOPC_clock_0_in_waits_for_write in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_waits_for_write = DE2_70_SOPC_clock_0_in_in_a_write_cycle & DE2_70_SOPC_clock_0_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_0_in_in_a_write_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_in_a_write_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_0_in & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = DE2_70_SOPC_clock_0_in_in_a_write_cycle;

  assign wait_for_DE2_70_SOPC_clock_0_in_counter = 0;
  //DE2_70_SOPC_clock_0_in_byteenable byte enable port mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_byteenable = (cpu_data_master_granted_DE2_70_SOPC_clock_0_in)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_0/in enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_0_out_arbitrator (
                                            // inputs:
                                             DE2_70_SOPC_clock_0_out_address,
                                             DE2_70_SOPC_clock_0_out_byteenable,
                                             DE2_70_SOPC_clock_0_out_granted_pll_pll_slave,
                                             DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave,
                                             DE2_70_SOPC_clock_0_out_read,
                                             DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave,
                                             DE2_70_SOPC_clock_0_out_requests_pll_pll_slave,
                                             DE2_70_SOPC_clock_0_out_write,
                                             DE2_70_SOPC_clock_0_out_writedata,
                                             clk,
                                             d1_pll_pll_slave_end_xfer,
                                             pll_pll_slave_readdata_from_sa,
                                             reset_n,

                                            // outputs:
                                             DE2_70_SOPC_clock_0_out_address_to_slave,
                                             DE2_70_SOPC_clock_0_out_readdata,
                                             DE2_70_SOPC_clock_0_out_reset_n,
                                             DE2_70_SOPC_clock_0_out_waitrequest
                                          )
;

  output  [  3: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  output  [ 31: 0] DE2_70_SOPC_clock_0_out_readdata;
  output           DE2_70_SOPC_clock_0_out_reset_n;
  output           DE2_70_SOPC_clock_0_out_waitrequest;
  input   [  3: 0] DE2_70_SOPC_clock_0_out_address;
  input   [  3: 0] DE2_70_SOPC_clock_0_out_byteenable;
  input            DE2_70_SOPC_clock_0_out_granted_pll_pll_slave;
  input            DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  input            DE2_70_SOPC_clock_0_out_read;
  input            DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  input            DE2_70_SOPC_clock_0_out_requests_pll_pll_slave;
  input            DE2_70_SOPC_clock_0_out_write;
  input   [ 31: 0] DE2_70_SOPC_clock_0_out_writedata;
  input            clk;
  input            d1_pll_pll_slave_end_xfer;
  input   [ 31: 0] pll_pll_slave_readdata_from_sa;
  input            reset_n;

  reg     [  3: 0] DE2_70_SOPC_clock_0_out_address_last_time;
  wire    [  3: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  reg     [  3: 0] DE2_70_SOPC_clock_0_out_byteenable_last_time;
  reg              DE2_70_SOPC_clock_0_out_read_last_time;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_out_readdata;
  wire             DE2_70_SOPC_clock_0_out_reset_n;
  wire             DE2_70_SOPC_clock_0_out_run;
  wire             DE2_70_SOPC_clock_0_out_waitrequest;
  reg              DE2_70_SOPC_clock_0_out_write_last_time;
  reg     [ 31: 0] DE2_70_SOPC_clock_0_out_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_1;
  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & ((~DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave | ~(DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write) | (1 & (DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write)))) & ((~DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave | ~(DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write) | (1 & (DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write))));

  //cascaded wait assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_run = r_1;

  //optimize select-logic by passing only those address bits which matter.
  assign DE2_70_SOPC_clock_0_out_address_to_slave = DE2_70_SOPC_clock_0_out_address;

  //DE2_70_SOPC_clock_0/out readdata mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_out_readdata = pll_pll_slave_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_waitrequest = ~DE2_70_SOPC_clock_0_out_run;

  //DE2_70_SOPC_clock_0_out_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_0_out_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_address_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_address_last_time <= DE2_70_SOPC_clock_0_out_address;
    end


  //DE2_70_SOPC_clock_0/out waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= DE2_70_SOPC_clock_0_out_waitrequest & (DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write);
    end


  //DE2_70_SOPC_clock_0_out_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_address != DE2_70_SOPC_clock_0_out_address_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_byteenable_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_byteenable_last_time <= DE2_70_SOPC_clock_0_out_byteenable;
    end


  //DE2_70_SOPC_clock_0_out_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_byteenable != DE2_70_SOPC_clock_0_out_byteenable_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_read_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_read_last_time <= DE2_70_SOPC_clock_0_out_read;
    end


  //DE2_70_SOPC_clock_0_out_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_read != DE2_70_SOPC_clock_0_out_read_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_write_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_write_last_time <= DE2_70_SOPC_clock_0_out_write;
    end


  //DE2_70_SOPC_clock_0_out_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_write != DE2_70_SOPC_clock_0_out_write_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_writedata_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_writedata_last_time <= DE2_70_SOPC_clock_0_out_writedata;
    end


  //DE2_70_SOPC_clock_0_out_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_writedata != DE2_70_SOPC_clock_0_out_writedata_last_time) & DE2_70_SOPC_clock_0_out_write)
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module camera_s1_arbitrator (
                              // inputs:
                               camera_s1_readdata,
                               clk,
                               cpu_data_master_address_to_slave,
                               cpu_data_master_latency_counter,
                               cpu_data_master_read,
                               cpu_data_master_write,
                               cpu_data_master_writedata,
                               reset_n,

                              // outputs:
                               camera_s1_address,
                               camera_s1_read,
                               camera_s1_readdata_from_sa,
                               camera_s1_reset,
                               camera_s1_write,
                               camera_s1_writedata,
                               cpu_data_master_granted_camera_s1,
                               cpu_data_master_qualified_request_camera_s1,
                               cpu_data_master_read_data_valid_camera_s1,
                               cpu_data_master_requests_camera_s1,
                               d1_camera_s1_end_xfer
                            )
;

  output  [  1: 0] camera_s1_address;
  output           camera_s1_read;
  output  [ 31: 0] camera_s1_readdata_from_sa;
  output           camera_s1_reset;
  output           camera_s1_write;
  output  [ 31: 0] camera_s1_writedata;
  output           cpu_data_master_granted_camera_s1;
  output           cpu_data_master_qualified_request_camera_s1;
  output           cpu_data_master_read_data_valid_camera_s1;
  output           cpu_data_master_requests_camera_s1;
  output           d1_camera_s1_end_xfer;
  input   [ 31: 0] camera_s1_readdata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] camera_s1_address;
  wire             camera_s1_allgrants;
  wire             camera_s1_allow_new_arb_cycle;
  wire             camera_s1_any_bursting_master_saved_grant;
  wire             camera_s1_any_continuerequest;
  wire             camera_s1_arb_counter_enable;
  reg              camera_s1_arb_share_counter;
  wire             camera_s1_arb_share_counter_next_value;
  wire             camera_s1_arb_share_set_values;
  wire             camera_s1_beginbursttransfer_internal;
  wire             camera_s1_begins_xfer;
  wire             camera_s1_end_xfer;
  wire             camera_s1_firsttransfer;
  wire             camera_s1_grant_vector;
  wire             camera_s1_in_a_read_cycle;
  wire             camera_s1_in_a_write_cycle;
  wire             camera_s1_master_qreq_vector;
  wire             camera_s1_non_bursting_master_requests;
  wire             camera_s1_read;
  wire    [ 31: 0] camera_s1_readdata_from_sa;
  reg              camera_s1_reg_firsttransfer;
  wire             camera_s1_reset;
  reg              camera_s1_slavearbiterlockenable;
  wire             camera_s1_slavearbiterlockenable2;
  wire             camera_s1_unreg_firsttransfer;
  wire             camera_s1_waits_for_read;
  wire             camera_s1_waits_for_write;
  wire             camera_s1_write;
  wire    [ 31: 0] camera_s1_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_camera_s1;
  wire             cpu_data_master_qualified_request_camera_s1;
  wire             cpu_data_master_read_data_valid_camera_s1;
  wire             cpu_data_master_requests_camera_s1;
  wire             cpu_data_master_saved_grant_camera_s1;
  reg              d1_camera_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_camera_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 22: 0] shifted_address_to_camera_s1_from_cpu_data_master;
  wire             wait_for_camera_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~camera_s1_end_xfer;
    end


  assign camera_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_camera_s1));
  //assign camera_s1_readdata_from_sa = camera_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign camera_s1_readdata_from_sa = camera_s1_readdata;

  assign cpu_data_master_requests_camera_s1 = ({cpu_data_master_address_to_slave[22 : 4] , 4'b0} == 23'h441060) & (cpu_data_master_read | cpu_data_master_write);
  //camera_s1_arb_share_counter set values, which is an e_mux
  assign camera_s1_arb_share_set_values = 1;

  //camera_s1_non_bursting_master_requests mux, which is an e_mux
  assign camera_s1_non_bursting_master_requests = cpu_data_master_requests_camera_s1;

  //camera_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign camera_s1_any_bursting_master_saved_grant = 0;

  //camera_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign camera_s1_arb_share_counter_next_value = camera_s1_firsttransfer ? (camera_s1_arb_share_set_values - 1) : |camera_s1_arb_share_counter ? (camera_s1_arb_share_counter - 1) : 0;

  //camera_s1_allgrants all slave grants, which is an e_mux
  assign camera_s1_allgrants = |camera_s1_grant_vector;

  //camera_s1_end_xfer assignment, which is an e_assign
  assign camera_s1_end_xfer = ~(camera_s1_waits_for_read | camera_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_camera_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_camera_s1 = camera_s1_end_xfer & (~camera_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //camera_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign camera_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_camera_s1 & camera_s1_allgrants) | (end_xfer_arb_share_counter_term_camera_s1 & ~camera_s1_non_bursting_master_requests);

  //camera_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          camera_s1_arb_share_counter <= 0;
      else if (camera_s1_arb_counter_enable)
          camera_s1_arb_share_counter <= camera_s1_arb_share_counter_next_value;
    end


  //camera_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          camera_s1_slavearbiterlockenable <= 0;
      else if ((|camera_s1_master_qreq_vector & end_xfer_arb_share_counter_term_camera_s1) | (end_xfer_arb_share_counter_term_camera_s1 & ~camera_s1_non_bursting_master_requests))
          camera_s1_slavearbiterlockenable <= |camera_s1_arb_share_counter_next_value;
    end


  //cpu/data_master camera/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = camera_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //camera_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign camera_s1_slavearbiterlockenable2 = |camera_s1_arb_share_counter_next_value;

  //cpu/data_master camera/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = camera_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //camera_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign camera_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_camera_s1 = cpu_data_master_requests_camera_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_camera_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_camera_s1 = cpu_data_master_granted_camera_s1 & cpu_data_master_read & ~camera_s1_waits_for_read;

  //camera_s1_writedata mux, which is an e_mux
  assign camera_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_camera_s1 = cpu_data_master_qualified_request_camera_s1;

  //cpu/data_master saved-grant camera/s1, which is an e_assign
  assign cpu_data_master_saved_grant_camera_s1 = cpu_data_master_requests_camera_s1;

  //allow new arb cycle for camera/s1, which is an e_assign
  assign camera_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign camera_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign camera_s1_master_qreq_vector = 1;

  //~camera_s1_reset assignment, which is an e_assign
  assign camera_s1_reset = ~reset_n;

  //camera_s1_firsttransfer first transaction, which is an e_assign
  assign camera_s1_firsttransfer = camera_s1_begins_xfer ? camera_s1_unreg_firsttransfer : camera_s1_reg_firsttransfer;

  //camera_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign camera_s1_unreg_firsttransfer = ~(camera_s1_slavearbiterlockenable & camera_s1_any_continuerequest);

  //camera_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          camera_s1_reg_firsttransfer <= 1'b1;
      else if (camera_s1_begins_xfer)
          camera_s1_reg_firsttransfer <= camera_s1_unreg_firsttransfer;
    end


  //camera_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign camera_s1_beginbursttransfer_internal = camera_s1_begins_xfer;

  //camera_s1_read assignment, which is an e_mux
  assign camera_s1_read = cpu_data_master_granted_camera_s1 & cpu_data_master_read;

  //camera_s1_write assignment, which is an e_mux
  assign camera_s1_write = cpu_data_master_granted_camera_s1 & cpu_data_master_write;

  assign shifted_address_to_camera_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //camera_s1_address mux, which is an e_mux
  assign camera_s1_address = shifted_address_to_camera_s1_from_cpu_data_master >> 2;

  //d1_camera_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_camera_s1_end_xfer <= 1;
      else 
        d1_camera_s1_end_xfer <= camera_s1_end_xfer;
    end


  //camera_s1_waits_for_read in a cycle, which is an e_mux
  assign camera_s1_waits_for_read = camera_s1_in_a_read_cycle & 0;

  //camera_s1_in_a_read_cycle assignment, which is an e_assign
  assign camera_s1_in_a_read_cycle = cpu_data_master_granted_camera_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = camera_s1_in_a_read_cycle;

  //camera_s1_waits_for_write in a cycle, which is an e_mux
  assign camera_s1_waits_for_write = camera_s1_in_a_write_cycle & 0;

  //camera_s1_in_a_write_cycle assignment, which is an e_assign
  assign camera_s1_in_a_write_cycle = cpu_data_master_granted_camera_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = camera_s1_in_a_write_cycle;

  assign wait_for_camera_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //camera/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_jtag_debug_module_arbitrator (
                                          // inputs:
                                           clk,
                                           cpu_data_master_address_to_slave,
                                           cpu_data_master_byteenable,
                                           cpu_data_master_debugaccess,
                                           cpu_data_master_latency_counter,
                                           cpu_data_master_read,
                                           cpu_data_master_write,
                                           cpu_data_master_writedata,
                                           cpu_instruction_master_address_to_slave,
                                           cpu_instruction_master_latency_counter,
                                           cpu_instruction_master_read,
                                           cpu_jtag_debug_module_readdata,
                                           cpu_jtag_debug_module_resetrequest,
                                           reset_n,

                                          // outputs:
                                           cpu_data_master_granted_cpu_jtag_debug_module,
                                           cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_data_master_requests_cpu_jtag_debug_module,
                                           cpu_instruction_master_granted_cpu_jtag_debug_module,
                                           cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_instruction_master_requests_cpu_jtag_debug_module,
                                           cpu_jtag_debug_module_address,
                                           cpu_jtag_debug_module_begintransfer,
                                           cpu_jtag_debug_module_byteenable,
                                           cpu_jtag_debug_module_chipselect,
                                           cpu_jtag_debug_module_debugaccess,
                                           cpu_jtag_debug_module_readdata_from_sa,
                                           cpu_jtag_debug_module_reset_n,
                                           cpu_jtag_debug_module_resetrequest_from_sa,
                                           cpu_jtag_debug_module_write,
                                           cpu_jtag_debug_module_writedata,
                                           d1_cpu_jtag_debug_module_end_xfer
                                        )
;

  output           cpu_data_master_granted_cpu_jtag_debug_module;
  output           cpu_data_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_data_master_requests_cpu_jtag_debug_module;
  output           cpu_instruction_master_granted_cpu_jtag_debug_module;
  output           cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_instruction_master_requests_cpu_jtag_debug_module;
  output  [  8: 0] cpu_jtag_debug_module_address;
  output           cpu_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu_jtag_debug_module_byteenable;
  output           cpu_jtag_debug_module_chipselect;
  output           cpu_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  output           cpu_jtag_debug_module_reset_n;
  output           cpu_jtag_debug_module_resetrequest_from_sa;
  output           cpu_jtag_debug_module_write;
  output  [ 31: 0] cpu_jtag_debug_module_writedata;
  output           d1_cpu_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_debugaccess;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 22: 0] cpu_instruction_master_address_to_slave;
  input   [  2: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] cpu_jtag_debug_module_readdata;
  input            cpu_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_saved_grant_cpu_jtag_debug_module;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_saved_grant_cpu_jtag_debug_module;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_allgrants;
  wire             cpu_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu_jtag_debug_module_arb_addend;
  wire             cpu_jtag_debug_module_arb_counter_enable;
  reg              cpu_jtag_debug_module_arb_share_counter;
  wire             cpu_jtag_debug_module_arb_share_counter_next_value;
  wire             cpu_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu_jtag_debug_module_arb_winner;
  wire             cpu_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu_jtag_debug_module_begins_xfer;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu_jtag_debug_module_chosen_master_rot_left;
  wire             cpu_jtag_debug_module_debugaccess;
  wire             cpu_jtag_debug_module_end_xfer;
  wire             cpu_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu_jtag_debug_module_grant_vector;
  wire             cpu_jtag_debug_module_in_a_read_cycle;
  wire             cpu_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu_jtag_debug_module_master_qreq_vector;
  wire             cpu_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  reg              cpu_jtag_debug_module_reg_firsttransfer;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu_jtag_debug_module_slavearbiterlockenable;
  wire             cpu_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu_jtag_debug_module_unreg_firsttransfer;
  wire             cpu_jtag_debug_module_waits_for_read;
  wire             cpu_jtag_debug_module_waits_for_write;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  reg              d1_cpu_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
  reg              last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
  wire    [ 22: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master;
  wire    [ 22: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master;
  wire             wait_for_cpu_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~cpu_jtag_debug_module_end_xfer;
    end


  assign cpu_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_cpu_jtag_debug_module | cpu_instruction_master_qualified_request_cpu_jtag_debug_module));
  //assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata;

  assign cpu_data_master_requests_cpu_jtag_debug_module = ({cpu_data_master_address_to_slave[22 : 11] , 11'b0} == 23'h440800) & (cpu_data_master_read | cpu_data_master_write);
  //cpu_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu_jtag_debug_module_arb_share_set_values = 1;

  //cpu_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu_jtag_debug_module_non_bursting_master_requests = cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module |
    cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu_jtag_debug_module_arb_share_counter_next_value = cpu_jtag_debug_module_firsttransfer ? (cpu_jtag_debug_module_arb_share_set_values - 1) : |cpu_jtag_debug_module_arb_share_counter ? (cpu_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu_jtag_debug_module_allgrants = (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector);

  //cpu_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu_jtag_debug_module_end_xfer = ~(cpu_jtag_debug_module_waits_for_read | cpu_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu_jtag_debug_module = cpu_jtag_debug_module_end_xfer & (~cpu_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & cpu_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests);

  //cpu_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu_jtag_debug_module_arb_counter_enable)
          cpu_jtag_debug_module_arb_share_counter <= cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests))
          cpu_jtag_debug_module_slavearbiterlockenable <= |cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu/data_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_data_master_continuerequest;

  //cpu_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu_jtag_debug_module_slavearbiterlockenable2 = |cpu_jtag_debug_module_arb_share_counter_next_value;

  //cpu/data_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= cpu_instruction_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_instruction_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module & cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu_jtag_debug_module_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_cpu_jtag_debug_module = cpu_data_master_requests_cpu_jtag_debug_module & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))) | cpu_instruction_master_arbiterlock);
  //local readdatavalid cpu_data_master_read_data_valid_cpu_jtag_debug_module, which is an e_mux
  assign cpu_data_master_read_data_valid_cpu_jtag_debug_module = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_read & ~cpu_jtag_debug_module_waits_for_read;

  //cpu_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu_jtag_debug_module_writedata = cpu_data_master_writedata;

  assign cpu_instruction_master_requests_cpu_jtag_debug_module = (({cpu_instruction_master_address_to_slave[22 : 11] , 11'b0} == 23'h440800) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= cpu_data_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_data_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module & cpu_data_master_requests_cpu_jtag_debug_module;

  assign cpu_instruction_master_qualified_request_cpu_jtag_debug_module = cpu_instruction_master_requests_cpu_jtag_debug_module & ~((cpu_instruction_master_read & ((cpu_instruction_master_latency_counter != 0))) | cpu_data_master_arbiterlock);
  //local readdatavalid cpu_instruction_master_read_data_valid_cpu_jtag_debug_module, which is an e_mux
  assign cpu_instruction_master_read_data_valid_cpu_jtag_debug_module = cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read & ~cpu_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[0] = cpu_instruction_master_qualified_request_cpu_jtag_debug_module;

  //cpu/instruction_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[0];

  //cpu/instruction_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[0] && cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu/data_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[1] = cpu_data_master_qualified_request_cpu_jtag_debug_module;

  //cpu/data_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[1];

  //cpu/data_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[1] && cpu_data_master_requests_cpu_jtag_debug_module;

  //cpu/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_double_vector = {cpu_jtag_debug_module_master_qreq_vector, cpu_jtag_debug_module_master_qreq_vector} & ({~cpu_jtag_debug_module_master_qreq_vector, ~cpu_jtag_debug_module_master_qreq_vector} + cpu_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu_jtag_debug_module_arb_winner = (cpu_jtag_debug_module_allow_new_arb_cycle & | cpu_jtag_debug_module_grant_vector) ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu_jtag_debug_module_allow_new_arb_cycle)
          cpu_jtag_debug_module_saved_chosen_master_vector <= |cpu_jtag_debug_module_grant_vector ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu_jtag_debug_module_grant_vector = {(cpu_jtag_debug_module_chosen_master_double_vector[1] | cpu_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu_jtag_debug_module_chosen_master_double_vector[0] | cpu_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_rot_left = (cpu_jtag_debug_module_arb_winner << 1) ? (cpu_jtag_debug_module_arb_winner << 1) : 1;

  //cpu/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_addend <= 1;
      else if (|cpu_jtag_debug_module_grant_vector)
          cpu_jtag_debug_module_arb_addend <= cpu_jtag_debug_module_end_xfer? cpu_jtag_debug_module_chosen_master_rot_left : cpu_jtag_debug_module_grant_vector;
    end


  assign cpu_jtag_debug_module_begintransfer = cpu_jtag_debug_module_begins_xfer;
  //cpu_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu_jtag_debug_module_reset_n = reset_n;

  //assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest;

  assign cpu_jtag_debug_module_chipselect = cpu_data_master_granted_cpu_jtag_debug_module | cpu_instruction_master_granted_cpu_jtag_debug_module;
  //cpu_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_firsttransfer = cpu_jtag_debug_module_begins_xfer ? cpu_jtag_debug_module_unreg_firsttransfer : cpu_jtag_debug_module_reg_firsttransfer;

  //cpu_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_unreg_firsttransfer = ~(cpu_jtag_debug_module_slavearbiterlockenable & cpu_jtag_debug_module_any_continuerequest);

  //cpu_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu_jtag_debug_module_begins_xfer)
          cpu_jtag_debug_module_reg_firsttransfer <= cpu_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu_jtag_debug_module_beginbursttransfer_internal = cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu_jtag_debug_module_arbitration_holdoff_internal = cpu_jtag_debug_module_begins_xfer & cpu_jtag_debug_module_firsttransfer;

  //cpu_jtag_debug_module_write assignment, which is an e_mux
  assign cpu_jtag_debug_module_write = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master = cpu_data_master_address_to_slave;
  //cpu_jtag_debug_module_address mux, which is an e_mux
  assign cpu_jtag_debug_module_address = (cpu_data_master_granted_cpu_jtag_debug_module)? (shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master >> 2) :
    (shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master >> 2);

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_cpu_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu_jtag_debug_module_end_xfer <= 1;
      else 
        d1_cpu_jtag_debug_module_end_xfer <= cpu_jtag_debug_module_end_xfer;
    end


  //cpu_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_read = cpu_jtag_debug_module_in_a_read_cycle & cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_read_cycle = (cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_read) | (cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu_jtag_debug_module_in_a_read_cycle;

  //cpu_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_write = cpu_jtag_debug_module_in_a_write_cycle & 0;

  //cpu_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_write_cycle = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu_jtag_debug_module_counter = 0;
  //cpu_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu_jtag_debug_module_byteenable = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign cpu_jtag_debug_module_debugaccess = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_cpu_jtag_debug_module + cpu_instruction_master_granted_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_cpu_jtag_debug_module + cpu_instruction_master_saved_grant_cpu_jtag_debug_module > 1)
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

module cpu_data_master_arbitrator (
                                    // inputs:
                                     DE2_70_SOPC_clock_0_in_readdata_from_sa,
                                     DE2_70_SOPC_clock_0_in_waitrequest_from_sa,
                                     camera_s1_readdata_from_sa,
                                     clk,
                                     cpu_data_master_address,
                                     cpu_data_master_byteenable,
                                     cpu_data_master_granted_DE2_70_SOPC_clock_0_in,
                                     cpu_data_master_granted_camera_s1,
                                     cpu_data_master_granted_cpu_jtag_debug_module,
                                     cpu_data_master_granted_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_granted_lcd_control_slave,
                                     cpu_data_master_granted_onchip_mem_s1,
                                     cpu_data_master_granted_pio_led_s1,
                                     cpu_data_master_granted_ssram_s1,
                                     cpu_data_master_granted_sysid_control_slave,
                                     cpu_data_master_granted_timer_s1,
                                     cpu_data_master_granted_timer_stamp_s1,
                                     cpu_data_master_granted_uart_s1,
                                     cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in,
                                     cpu_data_master_qualified_request_camera_s1,
                                     cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                     cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_qualified_request_lcd_control_slave,
                                     cpu_data_master_qualified_request_onchip_mem_s1,
                                     cpu_data_master_qualified_request_pio_led_s1,
                                     cpu_data_master_qualified_request_ssram_s1,
                                     cpu_data_master_qualified_request_sysid_control_slave,
                                     cpu_data_master_qualified_request_timer_s1,
                                     cpu_data_master_qualified_request_timer_stamp_s1,
                                     cpu_data_master_qualified_request_uart_s1,
                                     cpu_data_master_read,
                                     cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in,
                                     cpu_data_master_read_data_valid_camera_s1,
                                     cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                     cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_read_data_valid_lcd_control_slave,
                                     cpu_data_master_read_data_valid_onchip_mem_s1,
                                     cpu_data_master_read_data_valid_pio_led_s1,
                                     cpu_data_master_read_data_valid_ssram_s1,
                                     cpu_data_master_read_data_valid_sysid_control_slave,
                                     cpu_data_master_read_data_valid_timer_s1,
                                     cpu_data_master_read_data_valid_timer_stamp_s1,
                                     cpu_data_master_read_data_valid_uart_s1,
                                     cpu_data_master_requests_DE2_70_SOPC_clock_0_in,
                                     cpu_data_master_requests_camera_s1,
                                     cpu_data_master_requests_cpu_jtag_debug_module,
                                     cpu_data_master_requests_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_requests_lcd_control_slave,
                                     cpu_data_master_requests_onchip_mem_s1,
                                     cpu_data_master_requests_pio_led_s1,
                                     cpu_data_master_requests_ssram_s1,
                                     cpu_data_master_requests_sysid_control_slave,
                                     cpu_data_master_requests_timer_s1,
                                     cpu_data_master_requests_timer_stamp_s1,
                                     cpu_data_master_requests_uart_s1,
                                     cpu_data_master_write,
                                     cpu_data_master_writedata,
                                     cpu_jtag_debug_module_readdata_from_sa,
                                     d1_DE2_70_SOPC_clock_0_in_end_xfer,
                                     d1_camera_s1_end_xfer,
                                     d1_cpu_jtag_debug_module_end_xfer,
                                     d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                     d1_lcd_control_slave_end_xfer,
                                     d1_onchip_mem_s1_end_xfer,
                                     d1_pio_led_s1_end_xfer,
                                     d1_sysid_control_slave_end_xfer,
                                     d1_timer_s1_end_xfer,
                                     d1_timer_stamp_s1_end_xfer,
                                     d1_tristate_bridge_avalon_slave_end_xfer,
                                     d1_uart_s1_end_xfer,
                                     incoming_data_to_and_from_the_ssram,
                                     jtag_uart_avalon_jtag_slave_irq_from_sa,
                                     jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                     jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                     lcd_control_slave_readdata_from_sa,
                                     lcd_control_slave_wait_counter_eq_0,
                                     onchip_mem_s1_readdata_from_sa,
                                     pio_led_s1_readdata_from_sa,
                                     reset_n,
                                     sysid_control_slave_readdata_from_sa,
                                     timer_s1_irq_from_sa,
                                     timer_s1_readdata_from_sa,
                                     timer_stamp_s1_irq_from_sa,
                                     timer_stamp_s1_readdata_from_sa,
                                     uart_s1_irq_from_sa,
                                     uart_s1_readdata_from_sa,

                                    // outputs:
                                     cpu_data_master_address_to_slave,
                                     cpu_data_master_irq,
                                     cpu_data_master_latency_counter,
                                     cpu_data_master_readdata,
                                     cpu_data_master_readdatavalid,
                                     cpu_data_master_waitrequest
                                  )
;

  output  [ 22: 0] cpu_data_master_address_to_slave;
  output  [ 31: 0] cpu_data_master_irq;
  output  [  2: 0] cpu_data_master_latency_counter;
  output  [ 31: 0] cpu_data_master_readdata;
  output           cpu_data_master_readdatavalid;
  output           cpu_data_master_waitrequest;
  input   [ 31: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  input            DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  input   [ 31: 0] camera_s1_readdata_from_sa;
  input            clk;
  input   [ 22: 0] cpu_data_master_address;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_granted_DE2_70_SOPC_clock_0_in;
  input            cpu_data_master_granted_camera_s1;
  input            cpu_data_master_granted_cpu_jtag_debug_module;
  input            cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_granted_lcd_control_slave;
  input            cpu_data_master_granted_onchip_mem_s1;
  input            cpu_data_master_granted_pio_led_s1;
  input            cpu_data_master_granted_ssram_s1;
  input            cpu_data_master_granted_sysid_control_slave;
  input            cpu_data_master_granted_timer_s1;
  input            cpu_data_master_granted_timer_stamp_s1;
  input            cpu_data_master_granted_uart_s1;
  input            cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in;
  input            cpu_data_master_qualified_request_camera_s1;
  input            cpu_data_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_qualified_request_lcd_control_slave;
  input            cpu_data_master_qualified_request_onchip_mem_s1;
  input            cpu_data_master_qualified_request_pio_led_s1;
  input            cpu_data_master_qualified_request_ssram_s1;
  input            cpu_data_master_qualified_request_sysid_control_slave;
  input            cpu_data_master_qualified_request_timer_s1;
  input            cpu_data_master_qualified_request_timer_stamp_s1;
  input            cpu_data_master_qualified_request_uart_s1;
  input            cpu_data_master_read;
  input            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  input            cpu_data_master_read_data_valid_camera_s1;
  input            cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_read_data_valid_lcd_control_slave;
  input            cpu_data_master_read_data_valid_onchip_mem_s1;
  input            cpu_data_master_read_data_valid_pio_led_s1;
  input            cpu_data_master_read_data_valid_ssram_s1;
  input            cpu_data_master_read_data_valid_sysid_control_slave;
  input            cpu_data_master_read_data_valid_timer_s1;
  input            cpu_data_master_read_data_valid_timer_stamp_s1;
  input            cpu_data_master_read_data_valid_uart_s1;
  input            cpu_data_master_requests_DE2_70_SOPC_clock_0_in;
  input            cpu_data_master_requests_camera_s1;
  input            cpu_data_master_requests_cpu_jtag_debug_module;
  input            cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_requests_lcd_control_slave;
  input            cpu_data_master_requests_onchip_mem_s1;
  input            cpu_data_master_requests_pio_led_s1;
  input            cpu_data_master_requests_ssram_s1;
  input            cpu_data_master_requests_sysid_control_slave;
  input            cpu_data_master_requests_timer_s1;
  input            cpu_data_master_requests_timer_stamp_s1;
  input            cpu_data_master_requests_uart_s1;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_DE2_70_SOPC_clock_0_in_end_xfer;
  input            d1_camera_s1_end_xfer;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_jtag_uart_avalon_jtag_slave_end_xfer;
  input            d1_lcd_control_slave_end_xfer;
  input            d1_onchip_mem_s1_end_xfer;
  input            d1_pio_led_s1_end_xfer;
  input            d1_sysid_control_slave_end_xfer;
  input            d1_timer_s1_end_xfer;
  input            d1_timer_stamp_s1_end_xfer;
  input            d1_tristate_bridge_avalon_slave_end_xfer;
  input            d1_uart_s1_end_xfer;
  input   [ 31: 0] incoming_data_to_and_from_the_ssram;
  input            jtag_uart_avalon_jtag_slave_irq_from_sa;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  input            jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  input   [  7: 0] lcd_control_slave_readdata_from_sa;
  input            lcd_control_slave_wait_counter_eq_0;
  input   [ 31: 0] onchip_mem_s1_readdata_from_sa;
  input   [  5: 0] pio_led_s1_readdata_from_sa;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata_from_sa;
  input            timer_s1_irq_from_sa;
  input   [ 15: 0] timer_s1_readdata_from_sa;
  input            timer_stamp_s1_irq_from_sa;
  input   [ 15: 0] timer_stamp_s1_readdata_from_sa;
  input            uart_s1_irq_from_sa;
  input   [ 15: 0] uart_s1_readdata_from_sa;

  reg              active_and_waiting_last_time;
  reg     [ 22: 0] cpu_data_master_address_last_time;
  wire    [ 22: 0] cpu_data_master_address_to_slave;
  reg     [  3: 0] cpu_data_master_byteenable_last_time;
  wire    [ 31: 0] cpu_data_master_irq;
  wire             cpu_data_master_is_granted_some_slave;
  reg     [  2: 0] cpu_data_master_latency_counter;
  reg              cpu_data_master_read_but_no_slave_selected;
  reg              cpu_data_master_read_last_time;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_readdatavalid;
  wire             cpu_data_master_run;
  wire             cpu_data_master_waitrequest;
  reg              cpu_data_master_write_last_time;
  reg     [ 31: 0] cpu_data_master_writedata_last_time;
  wire    [  2: 0] latency_load_value;
  wire    [  2: 0] p1_cpu_data_master_latency_counter;
  wire             pre_flush_cpu_data_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in | ~cpu_data_master_requests_DE2_70_SOPC_clock_0_in) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE2_70_SOPC_clock_0_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE2_70_SOPC_clock_0_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_camera_s1 | ~cpu_data_master_requests_camera_s1) & ((~cpu_data_master_qualified_request_camera_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_camera_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_requests_cpu_jtag_debug_module) & (cpu_data_master_granted_cpu_jtag_debug_module | ~cpu_data_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_read | (1 & ~d1_cpu_jtag_debug_module_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~cpu_data_master_requests_jtag_uart_avalon_jtag_slave) & ((~cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_lcd_control_slave | ~cpu_data_master_requests_lcd_control_slave) & ((~cpu_data_master_qualified_request_lcd_control_slave | ~cpu_data_master_read | (1 & ((lcd_control_slave_wait_counter_eq_0 & ~d1_lcd_control_slave_end_xfer)) & cpu_data_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign cpu_data_master_run = r_0 & r_1 & r_2;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ((~cpu_data_master_qualified_request_lcd_control_slave | ~cpu_data_master_write | (1 & ((lcd_control_slave_wait_counter_eq_0 & ~d1_lcd_control_slave_end_xfer)) & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_onchip_mem_s1 | ~cpu_data_master_requests_onchip_mem_s1) & (cpu_data_master_granted_onchip_mem_s1 | ~cpu_data_master_qualified_request_onchip_mem_s1) & ((~cpu_data_master_qualified_request_onchip_mem_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_onchip_mem_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_pio_led_s1 | ~cpu_data_master_requests_pio_led_s1) & ((~cpu_data_master_qualified_request_pio_led_s1 | ~cpu_data_master_read | (1 & ~d1_pio_led_s1_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_pio_led_s1 | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_requests_sysid_control_slave) & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_read | (1 & ~d1_sysid_control_slave_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_timer_s1 | ~cpu_data_master_requests_timer_s1) & ((~cpu_data_master_qualified_request_timer_s1 | ~cpu_data_master_read | (1 & ~d1_timer_s1_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_timer_s1 | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_timer_stamp_s1 | ~cpu_data_master_requests_timer_stamp_s1);

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = ((~cpu_data_master_qualified_request_timer_stamp_s1 | ~cpu_data_master_read | (1 & ~d1_timer_stamp_s1_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_timer_stamp_s1 | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_ssram_s1 | ~cpu_data_master_requests_ssram_s1) & (cpu_data_master_granted_ssram_s1 | ~cpu_data_master_qualified_request_ssram_s1) & ((~cpu_data_master_qualified_request_ssram_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_ssram_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_uart_s1 | ~cpu_data_master_requests_uart_s1) & ((~cpu_data_master_qualified_request_uart_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~d1_uart_s1_end_xfer & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_uart_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~d1_uart_s1_end_xfer & (cpu_data_master_read | cpu_data_master_write))));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_data_master_address_to_slave = cpu_data_master_address[22 : 0];

  //cpu_data_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_but_no_slave_selected <= 0;
      else 
        cpu_data_master_read_but_no_slave_selected <= cpu_data_master_read & cpu_data_master_run & ~cpu_data_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_data_master_is_granted_some_slave = cpu_data_master_granted_DE2_70_SOPC_clock_0_in |
    cpu_data_master_granted_camera_s1 |
    cpu_data_master_granted_cpu_jtag_debug_module |
    cpu_data_master_granted_jtag_uart_avalon_jtag_slave |
    cpu_data_master_granted_lcd_control_slave |
    cpu_data_master_granted_onchip_mem_s1 |
    cpu_data_master_granted_pio_led_s1 |
    cpu_data_master_granted_sysid_control_slave |
    cpu_data_master_granted_timer_s1 |
    cpu_data_master_granted_timer_stamp_s1 |
    cpu_data_master_granted_ssram_s1 |
    cpu_data_master_granted_uart_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_data_master_readdatavalid = cpu_data_master_read_data_valid_onchip_mem_s1 |
    cpu_data_master_read_data_valid_ssram_s1;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_data_master_readdatavalid = cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_camera_s1 |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_cpu_jtag_debug_module |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_lcd_control_slave |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_pio_led_s1 |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_sysid_control_slave |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_timer_s1 |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_timer_stamp_s1 |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_uart_s1;

  //cpu/data_master readdata mux, which is an e_mux
  assign cpu_data_master_readdata = ({32 {~(cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in & cpu_data_master_read)}} | DE2_70_SOPC_clock_0_in_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_camera_s1 & cpu_data_master_read)}} | camera_s1_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_cpu_jtag_debug_module & cpu_data_master_read)}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave & cpu_data_master_read)}} | jtag_uart_avalon_jtag_slave_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_lcd_control_slave & cpu_data_master_read)}} | lcd_control_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_read_data_valid_onchip_mem_s1}} | onchip_mem_s1_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_pio_led_s1 & cpu_data_master_read)}} | pio_led_s1_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_sysid_control_slave & cpu_data_master_read)}} | sysid_control_slave_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_timer_s1 & cpu_data_master_read)}} | timer_s1_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_timer_stamp_s1 & cpu_data_master_read)}} | timer_stamp_s1_readdata_from_sa) &
    ({32 {~cpu_data_master_read_data_valid_ssram_s1}} | incoming_data_to_and_from_the_ssram) &
    ({32 {~(cpu_data_master_qualified_request_uart_s1 & cpu_data_master_read)}} | uart_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_assign
  assign cpu_data_master_waitrequest = ~cpu_data_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_latency_counter <= 0;
      else 
        cpu_data_master_latency_counter <= p1_cpu_data_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_data_master_latency_counter = ((cpu_data_master_run & cpu_data_master_read))? latency_load_value :
    (cpu_data_master_latency_counter)? cpu_data_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = ({3 {cpu_data_master_requests_onchip_mem_s1}} & 1) |
    ({3 {cpu_data_master_requests_ssram_s1}} & 4);

  //irq assign, which is an e_assign
  assign cpu_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    timer_stamp_s1_irq_from_sa,
    timer_s1_irq_from_sa,
    uart_s1_irq_from_sa,
    jtag_uart_avalon_jtag_slave_irq_from_sa};


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_data_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_address_last_time <= 0;
      else 
        cpu_data_master_address_last_time <= cpu_data_master_address;
    end


  //cpu/data_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu_data_master_waitrequest & (cpu_data_master_read | cpu_data_master_write);
    end


  //cpu_data_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_address != cpu_data_master_address_last_time))
        begin
          $write("%0d ns: cpu_data_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_byteenable_last_time <= 0;
      else 
        cpu_data_master_byteenable_last_time <= cpu_data_master_byteenable;
    end


  //cpu_data_master_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_byteenable != cpu_data_master_byteenable_last_time))
        begin
          $write("%0d ns: cpu_data_master_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_last_time <= 0;
      else 
        cpu_data_master_read_last_time <= cpu_data_master_read;
    end


  //cpu_data_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_read != cpu_data_master_read_last_time))
        begin
          $write("%0d ns: cpu_data_master_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_write_last_time <= 0;
      else 
        cpu_data_master_write_last_time <= cpu_data_master_write;
    end


  //cpu_data_master_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_write != cpu_data_master_write_last_time))
        begin
          $write("%0d ns: cpu_data_master_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_writedata_last_time <= 0;
      else 
        cpu_data_master_writedata_last_time <= cpu_data_master_writedata;
    end


  //cpu_data_master_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_writedata != cpu_data_master_writedata_last_time) & cpu_data_master_write)
        begin
          $write("%0d ns: cpu_data_master_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_instruction_master_arbitrator (
                                           // inputs:
                                            clk,
                                            cpu_instruction_master_address,
                                            cpu_instruction_master_granted_cpu_jtag_debug_module,
                                            cpu_instruction_master_granted_onchip_mem_s1,
                                            cpu_instruction_master_granted_ssram_s1,
                                            cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                            cpu_instruction_master_qualified_request_onchip_mem_s1,
                                            cpu_instruction_master_qualified_request_ssram_s1,
                                            cpu_instruction_master_read,
                                            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                            cpu_instruction_master_read_data_valid_onchip_mem_s1,
                                            cpu_instruction_master_read_data_valid_ssram_s1,
                                            cpu_instruction_master_requests_cpu_jtag_debug_module,
                                            cpu_instruction_master_requests_onchip_mem_s1,
                                            cpu_instruction_master_requests_ssram_s1,
                                            cpu_jtag_debug_module_readdata_from_sa,
                                            d1_cpu_jtag_debug_module_end_xfer,
                                            d1_onchip_mem_s1_end_xfer,
                                            d1_tristate_bridge_avalon_slave_end_xfer,
                                            incoming_data_to_and_from_the_ssram,
                                            onchip_mem_s1_readdata_from_sa,
                                            reset_n,

                                           // outputs:
                                            cpu_instruction_master_address_to_slave,
                                            cpu_instruction_master_latency_counter,
                                            cpu_instruction_master_readdata,
                                            cpu_instruction_master_readdatavalid,
                                            cpu_instruction_master_waitrequest
                                         )
;

  output  [ 22: 0] cpu_instruction_master_address_to_slave;
  output  [  2: 0] cpu_instruction_master_latency_counter;
  output  [ 31: 0] cpu_instruction_master_readdata;
  output           cpu_instruction_master_readdatavalid;
  output           cpu_instruction_master_waitrequest;
  input            clk;
  input   [ 22: 0] cpu_instruction_master_address;
  input            cpu_instruction_master_granted_cpu_jtag_debug_module;
  input            cpu_instruction_master_granted_onchip_mem_s1;
  input            cpu_instruction_master_granted_ssram_s1;
  input            cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_instruction_master_qualified_request_onchip_mem_s1;
  input            cpu_instruction_master_qualified_request_ssram_s1;
  input            cpu_instruction_master_read;
  input            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_instruction_master_read_data_valid_onchip_mem_s1;
  input            cpu_instruction_master_read_data_valid_ssram_s1;
  input            cpu_instruction_master_requests_cpu_jtag_debug_module;
  input            cpu_instruction_master_requests_onchip_mem_s1;
  input            cpu_instruction_master_requests_ssram_s1;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_onchip_mem_s1_end_xfer;
  input            d1_tristate_bridge_avalon_slave_end_xfer;
  input   [ 31: 0] incoming_data_to_and_from_the_ssram;
  input   [ 31: 0] onchip_mem_s1_readdata_from_sa;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 22: 0] cpu_instruction_master_address_last_time;
  wire    [ 22: 0] cpu_instruction_master_address_to_slave;
  wire             cpu_instruction_master_is_granted_some_slave;
  reg     [  2: 0] cpu_instruction_master_latency_counter;
  reg              cpu_instruction_master_read_but_no_slave_selected;
  reg              cpu_instruction_master_read_last_time;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_run;
  wire             cpu_instruction_master_waitrequest;
  wire    [  2: 0] latency_load_value;
  wire    [  2: 0] p1_cpu_instruction_master_latency_counter;
  wire             pre_flush_cpu_instruction_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_requests_cpu_jtag_debug_module) & (cpu_instruction_master_granted_cpu_jtag_debug_module | ~cpu_instruction_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_read | (1 & ~d1_cpu_jtag_debug_module_end_xfer & cpu_instruction_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign cpu_instruction_master_run = r_0 & r_1 & r_2;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & (cpu_instruction_master_qualified_request_onchip_mem_s1 | ~cpu_instruction_master_requests_onchip_mem_s1) & (cpu_instruction_master_granted_onchip_mem_s1 | ~cpu_instruction_master_qualified_request_onchip_mem_s1) & ((~cpu_instruction_master_qualified_request_onchip_mem_s1 | ~(cpu_instruction_master_read) | (1 & (cpu_instruction_master_read))));

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = 1 & (cpu_instruction_master_qualified_request_ssram_s1 | ~cpu_instruction_master_requests_ssram_s1) & (cpu_instruction_master_granted_ssram_s1 | ~cpu_instruction_master_qualified_request_ssram_s1) & ((~cpu_instruction_master_qualified_request_ssram_s1 | ~(cpu_instruction_master_read) | (1 & (cpu_instruction_master_read))));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_instruction_master_address_to_slave = cpu_instruction_master_address[22 : 0];

  //cpu_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_but_no_slave_selected <= 0;
      else 
        cpu_instruction_master_read_but_no_slave_selected <= cpu_instruction_master_read & cpu_instruction_master_run & ~cpu_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_instruction_master_is_granted_some_slave = cpu_instruction_master_granted_cpu_jtag_debug_module |
    cpu_instruction_master_granted_onchip_mem_s1 |
    cpu_instruction_master_granted_ssram_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_instruction_master_readdatavalid = cpu_instruction_master_read_data_valid_onchip_mem_s1 |
    cpu_instruction_master_read_data_valid_ssram_s1;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_instruction_master_readdatavalid = cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_data_valid_cpu_jtag_debug_module |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid;

  //cpu/instruction_master readdata mux, which is an e_mux
  assign cpu_instruction_master_readdata = ({32 {~(cpu_instruction_master_qualified_request_cpu_jtag_debug_module & cpu_instruction_master_read)}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_instruction_master_read_data_valid_onchip_mem_s1}} | onchip_mem_s1_readdata_from_sa) &
    ({32 {~cpu_instruction_master_read_data_valid_ssram_s1}} | incoming_data_to_and_from_the_ssram);

  //actual waitrequest port, which is an e_assign
  assign cpu_instruction_master_waitrequest = ~cpu_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_latency_counter <= 0;
      else 
        cpu_instruction_master_latency_counter <= p1_cpu_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_instruction_master_latency_counter = ((cpu_instruction_master_run & cpu_instruction_master_read))? latency_load_value :
    (cpu_instruction_master_latency_counter)? cpu_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = ({3 {cpu_instruction_master_requests_onchip_mem_s1}} & 1) |
    ({3 {cpu_instruction_master_requests_ssram_s1}} & 4);


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_address_last_time <= 0;
      else 
        cpu_instruction_master_address_last_time <= cpu_instruction_master_address;
    end


  //cpu/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu_instruction_master_waitrequest & (cpu_instruction_master_read);
    end


  //cpu_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_address != cpu_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_last_time <= 0;
      else 
        cpu_instruction_master_read_last_time <= cpu_instruction_master_read;
    end


  //cpu_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_read != cpu_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module jtag_uart_avalon_jtag_slave_arbitrator (
                                                // inputs:
                                                 clk,
                                                 cpu_data_master_address_to_slave,
                                                 cpu_data_master_latency_counter,
                                                 cpu_data_master_read,
                                                 cpu_data_master_write,
                                                 cpu_data_master_writedata,
                                                 jtag_uart_avalon_jtag_slave_dataavailable,
                                                 jtag_uart_avalon_jtag_slave_irq,
                                                 jtag_uart_avalon_jtag_slave_readdata,
                                                 jtag_uart_avalon_jtag_slave_readyfordata,
                                                 jtag_uart_avalon_jtag_slave_waitrequest,
                                                 reset_n,

                                                // outputs:
                                                 cpu_data_master_granted_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_requests_jtag_uart_avalon_jtag_slave,
                                                 d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                                 jtag_uart_avalon_jtag_slave_address,
                                                 jtag_uart_avalon_jtag_slave_chipselect,
                                                 jtag_uart_avalon_jtag_slave_dataavailable_from_sa,
                                                 jtag_uart_avalon_jtag_slave_irq_from_sa,
                                                 jtag_uart_avalon_jtag_slave_read_n,
                                                 jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_readyfordata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_reset_n,
                                                 jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                                 jtag_uart_avalon_jtag_slave_write_n,
                                                 jtag_uart_avalon_jtag_slave_writedata
                                              )
;

  output           cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  output           d1_jtag_uart_avalon_jtag_slave_end_xfer;
  output           jtag_uart_avalon_jtag_slave_address;
  output           jtag_uart_avalon_jtag_slave_chipselect;
  output           jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  output           jtag_uart_avalon_jtag_slave_irq_from_sa;
  output           jtag_uart_avalon_jtag_slave_read_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  output           jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  output           jtag_uart_avalon_jtag_slave_reset_n;
  output           jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  output           jtag_uart_avalon_jtag_slave_write_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            jtag_uart_avalon_jtag_slave_dataavailable;
  input            jtag_uart_avalon_jtag_slave_irq;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  input            jtag_uart_avalon_jtag_slave_readyfordata;
  input            jtag_uart_avalon_jtag_slave_waitrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_saved_grant_jtag_uart_avalon_jtag_slave;
  reg              d1_jtag_uart_avalon_jtag_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_allgrants;
  wire             jtag_uart_avalon_jtag_slave_allow_new_arb_cycle;
  wire             jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant;
  wire             jtag_uart_avalon_jtag_slave_any_continuerequest;
  wire             jtag_uart_avalon_jtag_slave_arb_counter_enable;
  reg              jtag_uart_avalon_jtag_slave_arb_share_counter;
  wire             jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
  wire             jtag_uart_avalon_jtag_slave_arb_share_set_values;
  wire             jtag_uart_avalon_jtag_slave_beginbursttransfer_internal;
  wire             jtag_uart_avalon_jtag_slave_begins_xfer;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_end_xfer;
  wire             jtag_uart_avalon_jtag_slave_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_grant_vector;
  wire             jtag_uart_avalon_jtag_slave_in_a_read_cycle;
  wire             jtag_uart_avalon_jtag_slave_in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_master_qreq_vector;
  wire             jtag_uart_avalon_jtag_slave_non_bursting_master_requests;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  reg              jtag_uart_avalon_jtag_slave_reg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  reg              jtag_uart_avalon_jtag_slave_slavearbiterlockenable;
  wire             jtag_uart_avalon_jtag_slave_slavearbiterlockenable2;
  wire             jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_waits_for_read;
  wire             jtag_uart_avalon_jtag_slave_waits_for_write;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [ 22: 0] shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master;
  wire             wait_for_jtag_uart_avalon_jtag_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~jtag_uart_avalon_jtag_slave_end_xfer;
    end


  assign jtag_uart_avalon_jtag_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave));
  //assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata;

  assign cpu_data_master_requests_jtag_uart_avalon_jtag_slave = ({cpu_data_master_address_to_slave[22 : 3] , 3'b0} == 23'h4410a0) & (cpu_data_master_read | cpu_data_master_write);
  //assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable;

  //assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata;

  //assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest;

  //jtag_uart_avalon_jtag_slave_arb_share_counter set values, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_arb_share_set_values = 1;

  //jtag_uart_avalon_jtag_slave_non_bursting_master_requests mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_non_bursting_master_requests = cpu_data_master_requests_jtag_uart_avalon_jtag_slave;

  //jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant = 0;

  //jtag_uart_avalon_jtag_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_share_counter_next_value = jtag_uart_avalon_jtag_slave_firsttransfer ? (jtag_uart_avalon_jtag_slave_arb_share_set_values - 1) : |jtag_uart_avalon_jtag_slave_arb_share_counter ? (jtag_uart_avalon_jtag_slave_arb_share_counter - 1) : 0;

  //jtag_uart_avalon_jtag_slave_allgrants all slave grants, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_allgrants = |jtag_uart_avalon_jtag_slave_grant_vector;

  //jtag_uart_avalon_jtag_slave_end_xfer assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_end_xfer = ~(jtag_uart_avalon_jtag_slave_waits_for_read | jtag_uart_avalon_jtag_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave = jtag_uart_avalon_jtag_slave_end_xfer & (~jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //jtag_uart_avalon_jtag_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & jtag_uart_avalon_jtag_slave_allgrants) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests);

  //jtag_uart_avalon_jtag_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= 0;
      else if (jtag_uart_avalon_jtag_slave_arb_counter_enable)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= 0;
      else if ((|jtag_uart_avalon_jtag_slave_master_qreq_vector & end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests))
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //cpu/data_master jtag_uart/avalon_jtag_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = jtag_uart_avalon_jtag_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 = |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;

  //cpu/data_master jtag_uart/avalon_jtag_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave = cpu_data_master_requests_jtag_uart_avalon_jtag_slave & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave = cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_read & ~jtag_uart_avalon_jtag_slave_waits_for_read;

  //jtag_uart_avalon_jtag_slave_writedata mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_jtag_uart_avalon_jtag_slave = cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;

  //cpu/data_master saved-grant jtag_uart/avalon_jtag_slave, which is an e_assign
  assign cpu_data_master_saved_grant_jtag_uart_avalon_jtag_slave = cpu_data_master_requests_jtag_uart_avalon_jtag_slave;

  //allow new arb cycle for jtag_uart/avalon_jtag_slave, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign jtag_uart_avalon_jtag_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign jtag_uart_avalon_jtag_slave_master_qreq_vector = 1;

  //jtag_uart_avalon_jtag_slave_reset_n assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_reset_n = reset_n;

  assign jtag_uart_avalon_jtag_slave_chipselect = cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  //jtag_uart_avalon_jtag_slave_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_firsttransfer = jtag_uart_avalon_jtag_slave_begins_xfer ? jtag_uart_avalon_jtag_slave_unreg_firsttransfer : jtag_uart_avalon_jtag_slave_reg_firsttransfer;

  //jtag_uart_avalon_jtag_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_unreg_firsttransfer = ~(jtag_uart_avalon_jtag_slave_slavearbiterlockenable & jtag_uart_avalon_jtag_slave_any_continuerequest);

  //jtag_uart_avalon_jtag_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= 1'b1;
      else if (jtag_uart_avalon_jtag_slave_begins_xfer)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
    end


  //jtag_uart_avalon_jtag_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_beginbursttransfer_internal = jtag_uart_avalon_jtag_slave_begins_xfer;

  //~jtag_uart_avalon_jtag_slave_read_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_read_n = ~(cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_read);

  //~jtag_uart_avalon_jtag_slave_write_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_write_n = ~(cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_write);

  assign shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //jtag_uart_avalon_jtag_slave_address mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_address = shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master >> 2;

  //d1_jtag_uart_avalon_jtag_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_jtag_uart_avalon_jtag_slave_end_xfer <= 1;
      else 
        d1_jtag_uart_avalon_jtag_slave_end_xfer <= jtag_uart_avalon_jtag_slave_end_xfer;
    end


  //jtag_uart_avalon_jtag_slave_waits_for_read in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_read = jtag_uart_avalon_jtag_slave_in_a_read_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_read_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_read_cycle = cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = jtag_uart_avalon_jtag_slave_in_a_read_cycle;

  //jtag_uart_avalon_jtag_slave_waits_for_write in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_write = jtag_uart_avalon_jtag_slave_in_a_write_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_write_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_write_cycle = cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = jtag_uart_avalon_jtag_slave_in_a_write_cycle;

  assign wait_for_jtag_uart_avalon_jtag_slave_counter = 0;
  //assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //jtag_uart/avalon_jtag_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module lcd_control_slave_arbitrator (
                                      // inputs:
                                       clk,
                                       cpu_data_master_address_to_slave,
                                       cpu_data_master_byteenable,
                                       cpu_data_master_latency_counter,
                                       cpu_data_master_read,
                                       cpu_data_master_write,
                                       cpu_data_master_writedata,
                                       lcd_control_slave_readdata,
                                       reset_n,

                                      // outputs:
                                       cpu_data_master_granted_lcd_control_slave,
                                       cpu_data_master_qualified_request_lcd_control_slave,
                                       cpu_data_master_read_data_valid_lcd_control_slave,
                                       cpu_data_master_requests_lcd_control_slave,
                                       d1_lcd_control_slave_end_xfer,
                                       lcd_control_slave_address,
                                       lcd_control_slave_begintransfer,
                                       lcd_control_slave_read,
                                       lcd_control_slave_readdata_from_sa,
                                       lcd_control_slave_wait_counter_eq_0,
                                       lcd_control_slave_write,
                                       lcd_control_slave_writedata
                                    )
;

  output           cpu_data_master_granted_lcd_control_slave;
  output           cpu_data_master_qualified_request_lcd_control_slave;
  output           cpu_data_master_read_data_valid_lcd_control_slave;
  output           cpu_data_master_requests_lcd_control_slave;
  output           d1_lcd_control_slave_end_xfer;
  output  [  1: 0] lcd_control_slave_address;
  output           lcd_control_slave_begintransfer;
  output           lcd_control_slave_read;
  output  [  7: 0] lcd_control_slave_readdata_from_sa;
  output           lcd_control_slave_wait_counter_eq_0;
  output           lcd_control_slave_write;
  output  [  7: 0] lcd_control_slave_writedata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [  7: 0] lcd_control_slave_readdata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_lcd_control_slave;
  wire             cpu_data_master_qualified_request_lcd_control_slave;
  wire             cpu_data_master_read_data_valid_lcd_control_slave;
  wire             cpu_data_master_requests_lcd_control_slave;
  wire             cpu_data_master_saved_grant_lcd_control_slave;
  reg              d1_lcd_control_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_lcd_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] lcd_control_slave_address;
  wire             lcd_control_slave_allgrants;
  wire             lcd_control_slave_allow_new_arb_cycle;
  wire             lcd_control_slave_any_bursting_master_saved_grant;
  wire             lcd_control_slave_any_continuerequest;
  wire             lcd_control_slave_arb_counter_enable;
  reg              lcd_control_slave_arb_share_counter;
  wire             lcd_control_slave_arb_share_counter_next_value;
  wire             lcd_control_slave_arb_share_set_values;
  wire             lcd_control_slave_beginbursttransfer_internal;
  wire             lcd_control_slave_begins_xfer;
  wire             lcd_control_slave_begintransfer;
  wire    [  6: 0] lcd_control_slave_counter_load_value;
  wire             lcd_control_slave_end_xfer;
  wire             lcd_control_slave_firsttransfer;
  wire             lcd_control_slave_grant_vector;
  wire             lcd_control_slave_in_a_read_cycle;
  wire             lcd_control_slave_in_a_write_cycle;
  wire             lcd_control_slave_master_qreq_vector;
  wire             lcd_control_slave_non_bursting_master_requests;
  wire             lcd_control_slave_pretend_byte_enable;
  wire             lcd_control_slave_read;
  wire    [  7: 0] lcd_control_slave_readdata_from_sa;
  reg              lcd_control_slave_reg_firsttransfer;
  reg              lcd_control_slave_slavearbiterlockenable;
  wire             lcd_control_slave_slavearbiterlockenable2;
  wire             lcd_control_slave_unreg_firsttransfer;
  reg     [  6: 0] lcd_control_slave_wait_counter;
  wire             lcd_control_slave_wait_counter_eq_0;
  wire             lcd_control_slave_waits_for_read;
  wire             lcd_control_slave_waits_for_write;
  wire             lcd_control_slave_write;
  wire    [  7: 0] lcd_control_slave_writedata;
  wire    [ 22: 0] shifted_address_to_lcd_control_slave_from_cpu_data_master;
  wire             wait_for_lcd_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~lcd_control_slave_end_xfer;
    end


  assign lcd_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_lcd_control_slave));
  //assign lcd_control_slave_readdata_from_sa = lcd_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign lcd_control_slave_readdata_from_sa = lcd_control_slave_readdata;

  assign cpu_data_master_requests_lcd_control_slave = ({cpu_data_master_address_to_slave[22 : 4] , 4'b0} == 23'h441080) & (cpu_data_master_read | cpu_data_master_write);
  //lcd_control_slave_arb_share_counter set values, which is an e_mux
  assign lcd_control_slave_arb_share_set_values = 1;

  //lcd_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign lcd_control_slave_non_bursting_master_requests = cpu_data_master_requests_lcd_control_slave;

  //lcd_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign lcd_control_slave_any_bursting_master_saved_grant = 0;

  //lcd_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign lcd_control_slave_arb_share_counter_next_value = lcd_control_slave_firsttransfer ? (lcd_control_slave_arb_share_set_values - 1) : |lcd_control_slave_arb_share_counter ? (lcd_control_slave_arb_share_counter - 1) : 0;

  //lcd_control_slave_allgrants all slave grants, which is an e_mux
  assign lcd_control_slave_allgrants = |lcd_control_slave_grant_vector;

  //lcd_control_slave_end_xfer assignment, which is an e_assign
  assign lcd_control_slave_end_xfer = ~(lcd_control_slave_waits_for_read | lcd_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_lcd_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_lcd_control_slave = lcd_control_slave_end_xfer & (~lcd_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //lcd_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign lcd_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_lcd_control_slave & lcd_control_slave_allgrants) | (end_xfer_arb_share_counter_term_lcd_control_slave & ~lcd_control_slave_non_bursting_master_requests);

  //lcd_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_arb_share_counter <= 0;
      else if (lcd_control_slave_arb_counter_enable)
          lcd_control_slave_arb_share_counter <= lcd_control_slave_arb_share_counter_next_value;
    end


  //lcd_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_slavearbiterlockenable <= 0;
      else if ((|lcd_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_lcd_control_slave) | (end_xfer_arb_share_counter_term_lcd_control_slave & ~lcd_control_slave_non_bursting_master_requests))
          lcd_control_slave_slavearbiterlockenable <= |lcd_control_slave_arb_share_counter_next_value;
    end


  //cpu/data_master lcd/control_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = lcd_control_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //lcd_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign lcd_control_slave_slavearbiterlockenable2 = |lcd_control_slave_arb_share_counter_next_value;

  //cpu/data_master lcd/control_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = lcd_control_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //lcd_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign lcd_control_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_lcd_control_slave = cpu_data_master_requests_lcd_control_slave & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_lcd_control_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_lcd_control_slave = cpu_data_master_granted_lcd_control_slave & cpu_data_master_read & ~lcd_control_slave_waits_for_read;

  //lcd_control_slave_writedata mux, which is an e_mux
  assign lcd_control_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_lcd_control_slave = cpu_data_master_qualified_request_lcd_control_slave;

  //cpu/data_master saved-grant lcd/control_slave, which is an e_assign
  assign cpu_data_master_saved_grant_lcd_control_slave = cpu_data_master_requests_lcd_control_slave;

  //allow new arb cycle for lcd/control_slave, which is an e_assign
  assign lcd_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign lcd_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign lcd_control_slave_master_qreq_vector = 1;

  assign lcd_control_slave_begintransfer = lcd_control_slave_begins_xfer;
  //lcd_control_slave_firsttransfer first transaction, which is an e_assign
  assign lcd_control_slave_firsttransfer = lcd_control_slave_begins_xfer ? lcd_control_slave_unreg_firsttransfer : lcd_control_slave_reg_firsttransfer;

  //lcd_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign lcd_control_slave_unreg_firsttransfer = ~(lcd_control_slave_slavearbiterlockenable & lcd_control_slave_any_continuerequest);

  //lcd_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_reg_firsttransfer <= 1'b1;
      else if (lcd_control_slave_begins_xfer)
          lcd_control_slave_reg_firsttransfer <= lcd_control_slave_unreg_firsttransfer;
    end


  //lcd_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign lcd_control_slave_beginbursttransfer_internal = lcd_control_slave_begins_xfer;

  //lcd_control_slave_read assignment, which is an e_mux
  assign lcd_control_slave_read = ((cpu_data_master_granted_lcd_control_slave & cpu_data_master_read))& ~lcd_control_slave_begins_xfer & (lcd_control_slave_wait_counter < 25);

  //lcd_control_slave_write assignment, which is an e_mux
  assign lcd_control_slave_write = ((cpu_data_master_granted_lcd_control_slave & cpu_data_master_write)) & ~lcd_control_slave_begins_xfer & (lcd_control_slave_wait_counter >= 25) & (lcd_control_slave_wait_counter < 50) & lcd_control_slave_pretend_byte_enable;

  assign shifted_address_to_lcd_control_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //lcd_control_slave_address mux, which is an e_mux
  assign lcd_control_slave_address = shifted_address_to_lcd_control_slave_from_cpu_data_master >> 2;

  //d1_lcd_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_lcd_control_slave_end_xfer <= 1;
      else 
        d1_lcd_control_slave_end_xfer <= lcd_control_slave_end_xfer;
    end


  //lcd_control_slave_waits_for_read in a cycle, which is an e_mux
  assign lcd_control_slave_waits_for_read = lcd_control_slave_in_a_read_cycle & wait_for_lcd_control_slave_counter;

  //lcd_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign lcd_control_slave_in_a_read_cycle = cpu_data_master_granted_lcd_control_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = lcd_control_slave_in_a_read_cycle;

  //lcd_control_slave_waits_for_write in a cycle, which is an e_mux
  assign lcd_control_slave_waits_for_write = lcd_control_slave_in_a_write_cycle & wait_for_lcd_control_slave_counter;

  //lcd_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign lcd_control_slave_in_a_write_cycle = cpu_data_master_granted_lcd_control_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = lcd_control_slave_in_a_write_cycle;

  assign lcd_control_slave_wait_counter_eq_0 = lcd_control_slave_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_wait_counter <= 0;
      else 
        lcd_control_slave_wait_counter <= lcd_control_slave_counter_load_value;
    end


  assign lcd_control_slave_counter_load_value = ((lcd_control_slave_in_a_read_cycle & lcd_control_slave_begins_xfer))? 48 :
    ((lcd_control_slave_in_a_write_cycle & lcd_control_slave_begins_xfer))? 73 :
    (~lcd_control_slave_wait_counter_eq_0)? lcd_control_slave_wait_counter - 1 :
    0;

  assign wait_for_lcd_control_slave_counter = lcd_control_slave_begins_xfer | ~lcd_control_slave_wait_counter_eq_0;
  //lcd_control_slave_pretend_byte_enable byte enable port mux, which is an e_mux
  assign lcd_control_slave_pretend_byte_enable = (cpu_data_master_granted_lcd_control_slave)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //lcd/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module onchip_mem_s1_arbitrator (
                                  // inputs:
                                   clk,
                                   cpu_data_master_address_to_slave,
                                   cpu_data_master_byteenable,
                                   cpu_data_master_latency_counter,
                                   cpu_data_master_read,
                                   cpu_data_master_write,
                                   cpu_data_master_writedata,
                                   cpu_instruction_master_address_to_slave,
                                   cpu_instruction_master_latency_counter,
                                   cpu_instruction_master_read,
                                   onchip_mem_s1_readdata,
                                   reset_n,

                                  // outputs:
                                   cpu_data_master_granted_onchip_mem_s1,
                                   cpu_data_master_qualified_request_onchip_mem_s1,
                                   cpu_data_master_read_data_valid_onchip_mem_s1,
                                   cpu_data_master_requests_onchip_mem_s1,
                                   cpu_instruction_master_granted_onchip_mem_s1,
                                   cpu_instruction_master_qualified_request_onchip_mem_s1,
                                   cpu_instruction_master_read_data_valid_onchip_mem_s1,
                                   cpu_instruction_master_requests_onchip_mem_s1,
                                   d1_onchip_mem_s1_end_xfer,
                                   onchip_mem_s1_address,
                                   onchip_mem_s1_byteenable,
                                   onchip_mem_s1_chipselect,
                                   onchip_mem_s1_clken,
                                   onchip_mem_s1_readdata_from_sa,
                                   onchip_mem_s1_write,
                                   onchip_mem_s1_writedata
                                )
;

  output           cpu_data_master_granted_onchip_mem_s1;
  output           cpu_data_master_qualified_request_onchip_mem_s1;
  output           cpu_data_master_read_data_valid_onchip_mem_s1;
  output           cpu_data_master_requests_onchip_mem_s1;
  output           cpu_instruction_master_granted_onchip_mem_s1;
  output           cpu_instruction_master_qualified_request_onchip_mem_s1;
  output           cpu_instruction_master_read_data_valid_onchip_mem_s1;
  output           cpu_instruction_master_requests_onchip_mem_s1;
  output           d1_onchip_mem_s1_end_xfer;
  output  [ 14: 0] onchip_mem_s1_address;
  output  [  3: 0] onchip_mem_s1_byteenable;
  output           onchip_mem_s1_chipselect;
  output           onchip_mem_s1_clken;
  output  [ 31: 0] onchip_mem_s1_readdata_from_sa;
  output           onchip_mem_s1_write;
  output  [ 31: 0] onchip_mem_s1_writedata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 22: 0] cpu_instruction_master_address_to_slave;
  input   [  2: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] onchip_mem_s1_readdata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_onchip_mem_s1;
  wire             cpu_data_master_qualified_request_onchip_mem_s1;
  wire             cpu_data_master_read_data_valid_onchip_mem_s1;
  reg              cpu_data_master_read_data_valid_onchip_mem_s1_shift_register;
  wire             cpu_data_master_read_data_valid_onchip_mem_s1_shift_register_in;
  wire             cpu_data_master_requests_onchip_mem_s1;
  wire             cpu_data_master_saved_grant_onchip_mem_s1;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_onchip_mem_s1;
  wire             cpu_instruction_master_qualified_request_onchip_mem_s1;
  wire             cpu_instruction_master_read_data_valid_onchip_mem_s1;
  reg              cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register;
  wire             cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register_in;
  wire             cpu_instruction_master_requests_onchip_mem_s1;
  wire             cpu_instruction_master_saved_grant_onchip_mem_s1;
  reg              d1_onchip_mem_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_onchip_mem_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_onchip_mem_s1;
  reg              last_cycle_cpu_instruction_master_granted_slave_onchip_mem_s1;
  wire    [ 14: 0] onchip_mem_s1_address;
  wire             onchip_mem_s1_allgrants;
  wire             onchip_mem_s1_allow_new_arb_cycle;
  wire             onchip_mem_s1_any_bursting_master_saved_grant;
  wire             onchip_mem_s1_any_continuerequest;
  reg     [  1: 0] onchip_mem_s1_arb_addend;
  wire             onchip_mem_s1_arb_counter_enable;
  reg              onchip_mem_s1_arb_share_counter;
  wire             onchip_mem_s1_arb_share_counter_next_value;
  wire             onchip_mem_s1_arb_share_set_values;
  wire    [  1: 0] onchip_mem_s1_arb_winner;
  wire             onchip_mem_s1_arbitration_holdoff_internal;
  wire             onchip_mem_s1_beginbursttransfer_internal;
  wire             onchip_mem_s1_begins_xfer;
  wire    [  3: 0] onchip_mem_s1_byteenable;
  wire             onchip_mem_s1_chipselect;
  wire    [  3: 0] onchip_mem_s1_chosen_master_double_vector;
  wire    [  1: 0] onchip_mem_s1_chosen_master_rot_left;
  wire             onchip_mem_s1_clken;
  wire             onchip_mem_s1_end_xfer;
  wire             onchip_mem_s1_firsttransfer;
  wire    [  1: 0] onchip_mem_s1_grant_vector;
  wire             onchip_mem_s1_in_a_read_cycle;
  wire             onchip_mem_s1_in_a_write_cycle;
  wire    [  1: 0] onchip_mem_s1_master_qreq_vector;
  wire             onchip_mem_s1_non_bursting_master_requests;
  wire    [ 31: 0] onchip_mem_s1_readdata_from_sa;
  reg              onchip_mem_s1_reg_firsttransfer;
  reg     [  1: 0] onchip_mem_s1_saved_chosen_master_vector;
  reg              onchip_mem_s1_slavearbiterlockenable;
  wire             onchip_mem_s1_slavearbiterlockenable2;
  wire             onchip_mem_s1_unreg_firsttransfer;
  wire             onchip_mem_s1_waits_for_read;
  wire             onchip_mem_s1_waits_for_write;
  wire             onchip_mem_s1_write;
  wire    [ 31: 0] onchip_mem_s1_writedata;
  wire             p1_cpu_data_master_read_data_valid_onchip_mem_s1_shift_register;
  wire             p1_cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register;
  wire    [ 22: 0] shifted_address_to_onchip_mem_s1_from_cpu_data_master;
  wire    [ 22: 0] shifted_address_to_onchip_mem_s1_from_cpu_instruction_master;
  wire             wait_for_onchip_mem_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~onchip_mem_s1_end_xfer;
    end


  assign onchip_mem_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_onchip_mem_s1 | cpu_instruction_master_qualified_request_onchip_mem_s1));
  //assign onchip_mem_s1_readdata_from_sa = onchip_mem_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign onchip_mem_s1_readdata_from_sa = onchip_mem_s1_readdata;

  assign cpu_data_master_requests_onchip_mem_s1 = ({cpu_data_master_address_to_slave[22 : 17] , 17'b0} == 23'h420000) & (cpu_data_master_read | cpu_data_master_write);
  //onchip_mem_s1_arb_share_counter set values, which is an e_mux
  assign onchip_mem_s1_arb_share_set_values = 1;

  //onchip_mem_s1_non_bursting_master_requests mux, which is an e_mux
  assign onchip_mem_s1_non_bursting_master_requests = cpu_data_master_requests_onchip_mem_s1 |
    cpu_instruction_master_requests_onchip_mem_s1 |
    cpu_data_master_requests_onchip_mem_s1 |
    cpu_instruction_master_requests_onchip_mem_s1;

  //onchip_mem_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign onchip_mem_s1_any_bursting_master_saved_grant = 0;

  //onchip_mem_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign onchip_mem_s1_arb_share_counter_next_value = onchip_mem_s1_firsttransfer ? (onchip_mem_s1_arb_share_set_values - 1) : |onchip_mem_s1_arb_share_counter ? (onchip_mem_s1_arb_share_counter - 1) : 0;

  //onchip_mem_s1_allgrants all slave grants, which is an e_mux
  assign onchip_mem_s1_allgrants = (|onchip_mem_s1_grant_vector) |
    (|onchip_mem_s1_grant_vector) |
    (|onchip_mem_s1_grant_vector) |
    (|onchip_mem_s1_grant_vector);

  //onchip_mem_s1_end_xfer assignment, which is an e_assign
  assign onchip_mem_s1_end_xfer = ~(onchip_mem_s1_waits_for_read | onchip_mem_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_onchip_mem_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_onchip_mem_s1 = onchip_mem_s1_end_xfer & (~onchip_mem_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //onchip_mem_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign onchip_mem_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_onchip_mem_s1 & onchip_mem_s1_allgrants) | (end_xfer_arb_share_counter_term_onchip_mem_s1 & ~onchip_mem_s1_non_bursting_master_requests);

  //onchip_mem_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_mem_s1_arb_share_counter <= 0;
      else if (onchip_mem_s1_arb_counter_enable)
          onchip_mem_s1_arb_share_counter <= onchip_mem_s1_arb_share_counter_next_value;
    end


  //onchip_mem_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_mem_s1_slavearbiterlockenable <= 0;
      else if ((|onchip_mem_s1_master_qreq_vector & end_xfer_arb_share_counter_term_onchip_mem_s1) | (end_xfer_arb_share_counter_term_onchip_mem_s1 & ~onchip_mem_s1_non_bursting_master_requests))
          onchip_mem_s1_slavearbiterlockenable <= |onchip_mem_s1_arb_share_counter_next_value;
    end


  //cpu/data_master onchip_mem/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = onchip_mem_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //onchip_mem_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign onchip_mem_s1_slavearbiterlockenable2 = |onchip_mem_s1_arb_share_counter_next_value;

  //cpu/data_master onchip_mem/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = onchip_mem_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master onchip_mem/s1 arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = onchip_mem_s1_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master onchip_mem/s1 arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = onchip_mem_s1_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted onchip_mem/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_onchip_mem_s1 <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_onchip_mem_s1 <= cpu_instruction_master_saved_grant_onchip_mem_s1 ? 1 : (onchip_mem_s1_arbitration_holdoff_internal | ~cpu_instruction_master_requests_onchip_mem_s1) ? 0 : last_cycle_cpu_instruction_master_granted_slave_onchip_mem_s1;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_onchip_mem_s1 & cpu_instruction_master_requests_onchip_mem_s1;

  //onchip_mem_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign onchip_mem_s1_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_onchip_mem_s1 = cpu_data_master_requests_onchip_mem_s1 & ~((cpu_data_master_read & ((1 < cpu_data_master_latency_counter))) | cpu_instruction_master_arbiterlock);
  //cpu_data_master_read_data_valid_onchip_mem_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_onchip_mem_s1_shift_register_in = cpu_data_master_granted_onchip_mem_s1 & cpu_data_master_read & ~onchip_mem_s1_waits_for_read;

  //shift register p1 cpu_data_master_read_data_valid_onchip_mem_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_onchip_mem_s1_shift_register = {cpu_data_master_read_data_valid_onchip_mem_s1_shift_register, cpu_data_master_read_data_valid_onchip_mem_s1_shift_register_in};

  //cpu_data_master_read_data_valid_onchip_mem_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_onchip_mem_s1_shift_register <= 0;
      else 
        cpu_data_master_read_data_valid_onchip_mem_s1_shift_register <= p1_cpu_data_master_read_data_valid_onchip_mem_s1_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_onchip_mem_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_onchip_mem_s1 = cpu_data_master_read_data_valid_onchip_mem_s1_shift_register;

  //onchip_mem_s1_writedata mux, which is an e_mux
  assign onchip_mem_s1_writedata = cpu_data_master_writedata;

  //mux onchip_mem_s1_clken, which is an e_mux
  assign onchip_mem_s1_clken = 1'b1;

  assign cpu_instruction_master_requests_onchip_mem_s1 = (({cpu_instruction_master_address_to_slave[22 : 17] , 17'b0} == 23'h420000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted onchip_mem/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_onchip_mem_s1 <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_onchip_mem_s1 <= cpu_data_master_saved_grant_onchip_mem_s1 ? 1 : (onchip_mem_s1_arbitration_holdoff_internal | ~cpu_data_master_requests_onchip_mem_s1) ? 0 : last_cycle_cpu_data_master_granted_slave_onchip_mem_s1;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_onchip_mem_s1 & cpu_data_master_requests_onchip_mem_s1;

  assign cpu_instruction_master_qualified_request_onchip_mem_s1 = cpu_instruction_master_requests_onchip_mem_s1 & ~((cpu_instruction_master_read & ((1 < cpu_instruction_master_latency_counter))) | cpu_data_master_arbiterlock);
  //cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register_in = cpu_instruction_master_granted_onchip_mem_s1 & cpu_instruction_master_read & ~onchip_mem_s1_waits_for_read;

  //shift register p1 cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register = {cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register, cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register_in};

  //cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register <= 0;
      else 
        cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register <= p1_cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register;
    end


  //local readdatavalid cpu_instruction_master_read_data_valid_onchip_mem_s1, which is an e_mux
  assign cpu_instruction_master_read_data_valid_onchip_mem_s1 = cpu_instruction_master_read_data_valid_onchip_mem_s1_shift_register;

  //allow new arb cycle for onchip_mem/s1, which is an e_assign
  assign onchip_mem_s1_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for onchip_mem/s1, which is an e_assign
  assign onchip_mem_s1_master_qreq_vector[0] = cpu_instruction_master_qualified_request_onchip_mem_s1;

  //cpu/instruction_master grant onchip_mem/s1, which is an e_assign
  assign cpu_instruction_master_granted_onchip_mem_s1 = onchip_mem_s1_grant_vector[0];

  //cpu/instruction_master saved-grant onchip_mem/s1, which is an e_assign
  assign cpu_instruction_master_saved_grant_onchip_mem_s1 = onchip_mem_s1_arb_winner[0] && cpu_instruction_master_requests_onchip_mem_s1;

  //cpu/data_master assignment into master qualified-requests vector for onchip_mem/s1, which is an e_assign
  assign onchip_mem_s1_master_qreq_vector[1] = cpu_data_master_qualified_request_onchip_mem_s1;

  //cpu/data_master grant onchip_mem/s1, which is an e_assign
  assign cpu_data_master_granted_onchip_mem_s1 = onchip_mem_s1_grant_vector[1];

  //cpu/data_master saved-grant onchip_mem/s1, which is an e_assign
  assign cpu_data_master_saved_grant_onchip_mem_s1 = onchip_mem_s1_arb_winner[1] && cpu_data_master_requests_onchip_mem_s1;

  //onchip_mem/s1 chosen-master double-vector, which is an e_assign
  assign onchip_mem_s1_chosen_master_double_vector = {onchip_mem_s1_master_qreq_vector, onchip_mem_s1_master_qreq_vector} & ({~onchip_mem_s1_master_qreq_vector, ~onchip_mem_s1_master_qreq_vector} + onchip_mem_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign onchip_mem_s1_arb_winner = (onchip_mem_s1_allow_new_arb_cycle & | onchip_mem_s1_grant_vector) ? onchip_mem_s1_grant_vector : onchip_mem_s1_saved_chosen_master_vector;

  //saved onchip_mem_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_mem_s1_saved_chosen_master_vector <= 0;
      else if (onchip_mem_s1_allow_new_arb_cycle)
          onchip_mem_s1_saved_chosen_master_vector <= |onchip_mem_s1_grant_vector ? onchip_mem_s1_grant_vector : onchip_mem_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign onchip_mem_s1_grant_vector = {(onchip_mem_s1_chosen_master_double_vector[1] | onchip_mem_s1_chosen_master_double_vector[3]),
    (onchip_mem_s1_chosen_master_double_vector[0] | onchip_mem_s1_chosen_master_double_vector[2])};

  //onchip_mem/s1 chosen master rotated left, which is an e_assign
  assign onchip_mem_s1_chosen_master_rot_left = (onchip_mem_s1_arb_winner << 1) ? (onchip_mem_s1_arb_winner << 1) : 1;

  //onchip_mem/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_mem_s1_arb_addend <= 1;
      else if (|onchip_mem_s1_grant_vector)
          onchip_mem_s1_arb_addend <= onchip_mem_s1_end_xfer? onchip_mem_s1_chosen_master_rot_left : onchip_mem_s1_grant_vector;
    end


  assign onchip_mem_s1_chipselect = cpu_data_master_granted_onchip_mem_s1 | cpu_instruction_master_granted_onchip_mem_s1;
  //onchip_mem_s1_firsttransfer first transaction, which is an e_assign
  assign onchip_mem_s1_firsttransfer = onchip_mem_s1_begins_xfer ? onchip_mem_s1_unreg_firsttransfer : onchip_mem_s1_reg_firsttransfer;

  //onchip_mem_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign onchip_mem_s1_unreg_firsttransfer = ~(onchip_mem_s1_slavearbiterlockenable & onchip_mem_s1_any_continuerequest);

  //onchip_mem_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_mem_s1_reg_firsttransfer <= 1'b1;
      else if (onchip_mem_s1_begins_xfer)
          onchip_mem_s1_reg_firsttransfer <= onchip_mem_s1_unreg_firsttransfer;
    end


  //onchip_mem_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign onchip_mem_s1_beginbursttransfer_internal = onchip_mem_s1_begins_xfer;

  //onchip_mem_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign onchip_mem_s1_arbitration_holdoff_internal = onchip_mem_s1_begins_xfer & onchip_mem_s1_firsttransfer;

  //onchip_mem_s1_write assignment, which is an e_mux
  assign onchip_mem_s1_write = cpu_data_master_granted_onchip_mem_s1 & cpu_data_master_write;

  assign shifted_address_to_onchip_mem_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //onchip_mem_s1_address mux, which is an e_mux
  assign onchip_mem_s1_address = (cpu_data_master_granted_onchip_mem_s1)? (shifted_address_to_onchip_mem_s1_from_cpu_data_master >> 2) :
    (shifted_address_to_onchip_mem_s1_from_cpu_instruction_master >> 2);

  assign shifted_address_to_onchip_mem_s1_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_onchip_mem_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_onchip_mem_s1_end_xfer <= 1;
      else 
        d1_onchip_mem_s1_end_xfer <= onchip_mem_s1_end_xfer;
    end


  //onchip_mem_s1_waits_for_read in a cycle, which is an e_mux
  assign onchip_mem_s1_waits_for_read = onchip_mem_s1_in_a_read_cycle & 0;

  //onchip_mem_s1_in_a_read_cycle assignment, which is an e_assign
  assign onchip_mem_s1_in_a_read_cycle = (cpu_data_master_granted_onchip_mem_s1 & cpu_data_master_read) | (cpu_instruction_master_granted_onchip_mem_s1 & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = onchip_mem_s1_in_a_read_cycle;

  //onchip_mem_s1_waits_for_write in a cycle, which is an e_mux
  assign onchip_mem_s1_waits_for_write = onchip_mem_s1_in_a_write_cycle & 0;

  //onchip_mem_s1_in_a_write_cycle assignment, which is an e_assign
  assign onchip_mem_s1_in_a_write_cycle = cpu_data_master_granted_onchip_mem_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = onchip_mem_s1_in_a_write_cycle;

  assign wait_for_onchip_mem_s1_counter = 0;
  //onchip_mem_s1_byteenable byte enable port mux, which is an e_mux
  assign onchip_mem_s1_byteenable = (cpu_data_master_granted_onchip_mem_s1)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //onchip_mem/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_onchip_mem_s1 + cpu_instruction_master_granted_onchip_mem_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_onchip_mem_s1 + cpu_instruction_master_saved_grant_onchip_mem_s1 > 1)
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

module pio_led_s1_arbitrator (
                               // inputs:
                                clk,
                                cpu_data_master_address_to_slave,
                                cpu_data_master_latency_counter,
                                cpu_data_master_read,
                                cpu_data_master_write,
                                cpu_data_master_writedata,
                                pio_led_s1_readdata,
                                reset_n,

                               // outputs:
                                cpu_data_master_granted_pio_led_s1,
                                cpu_data_master_qualified_request_pio_led_s1,
                                cpu_data_master_read_data_valid_pio_led_s1,
                                cpu_data_master_requests_pio_led_s1,
                                d1_pio_led_s1_end_xfer,
                                pio_led_s1_address,
                                pio_led_s1_chipselect,
                                pio_led_s1_readdata_from_sa,
                                pio_led_s1_reset_n,
                                pio_led_s1_write_n,
                                pio_led_s1_writedata
                             )
;

  output           cpu_data_master_granted_pio_led_s1;
  output           cpu_data_master_qualified_request_pio_led_s1;
  output           cpu_data_master_read_data_valid_pio_led_s1;
  output           cpu_data_master_requests_pio_led_s1;
  output           d1_pio_led_s1_end_xfer;
  output  [  1: 0] pio_led_s1_address;
  output           pio_led_s1_chipselect;
  output  [  5: 0] pio_led_s1_readdata_from_sa;
  output           pio_led_s1_reset_n;
  output           pio_led_s1_write_n;
  output  [  5: 0] pio_led_s1_writedata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [  5: 0] pio_led_s1_readdata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_pio_led_s1;
  wire             cpu_data_master_qualified_request_pio_led_s1;
  wire             cpu_data_master_read_data_valid_pio_led_s1;
  wire             cpu_data_master_requests_pio_led_s1;
  wire             cpu_data_master_saved_grant_pio_led_s1;
  reg              d1_pio_led_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_pio_led_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] pio_led_s1_address;
  wire             pio_led_s1_allgrants;
  wire             pio_led_s1_allow_new_arb_cycle;
  wire             pio_led_s1_any_bursting_master_saved_grant;
  wire             pio_led_s1_any_continuerequest;
  wire             pio_led_s1_arb_counter_enable;
  reg              pio_led_s1_arb_share_counter;
  wire             pio_led_s1_arb_share_counter_next_value;
  wire             pio_led_s1_arb_share_set_values;
  wire             pio_led_s1_beginbursttransfer_internal;
  wire             pio_led_s1_begins_xfer;
  wire             pio_led_s1_chipselect;
  wire             pio_led_s1_end_xfer;
  wire             pio_led_s1_firsttransfer;
  wire             pio_led_s1_grant_vector;
  wire             pio_led_s1_in_a_read_cycle;
  wire             pio_led_s1_in_a_write_cycle;
  wire             pio_led_s1_master_qreq_vector;
  wire             pio_led_s1_non_bursting_master_requests;
  wire    [  5: 0] pio_led_s1_readdata_from_sa;
  reg              pio_led_s1_reg_firsttransfer;
  wire             pio_led_s1_reset_n;
  reg              pio_led_s1_slavearbiterlockenable;
  wire             pio_led_s1_slavearbiterlockenable2;
  wire             pio_led_s1_unreg_firsttransfer;
  wire             pio_led_s1_waits_for_read;
  wire             pio_led_s1_waits_for_write;
  wire             pio_led_s1_write_n;
  wire    [  5: 0] pio_led_s1_writedata;
  wire    [ 22: 0] shifted_address_to_pio_led_s1_from_cpu_data_master;
  wire             wait_for_pio_led_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~pio_led_s1_end_xfer;
    end


  assign pio_led_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_pio_led_s1));
  //assign pio_led_s1_readdata_from_sa = pio_led_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pio_led_s1_readdata_from_sa = pio_led_s1_readdata;

  assign cpu_data_master_requests_pio_led_s1 = ({cpu_data_master_address_to_slave[22 : 4] , 4'b0} == 23'h441070) & (cpu_data_master_read | cpu_data_master_write);
  //pio_led_s1_arb_share_counter set values, which is an e_mux
  assign pio_led_s1_arb_share_set_values = 1;

  //pio_led_s1_non_bursting_master_requests mux, which is an e_mux
  assign pio_led_s1_non_bursting_master_requests = cpu_data_master_requests_pio_led_s1;

  //pio_led_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign pio_led_s1_any_bursting_master_saved_grant = 0;

  //pio_led_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign pio_led_s1_arb_share_counter_next_value = pio_led_s1_firsttransfer ? (pio_led_s1_arb_share_set_values - 1) : |pio_led_s1_arb_share_counter ? (pio_led_s1_arb_share_counter - 1) : 0;

  //pio_led_s1_allgrants all slave grants, which is an e_mux
  assign pio_led_s1_allgrants = |pio_led_s1_grant_vector;

  //pio_led_s1_end_xfer assignment, which is an e_assign
  assign pio_led_s1_end_xfer = ~(pio_led_s1_waits_for_read | pio_led_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_pio_led_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_pio_led_s1 = pio_led_s1_end_xfer & (~pio_led_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //pio_led_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign pio_led_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_pio_led_s1 & pio_led_s1_allgrants) | (end_xfer_arb_share_counter_term_pio_led_s1 & ~pio_led_s1_non_bursting_master_requests);

  //pio_led_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_led_s1_arb_share_counter <= 0;
      else if (pio_led_s1_arb_counter_enable)
          pio_led_s1_arb_share_counter <= pio_led_s1_arb_share_counter_next_value;
    end


  //pio_led_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_led_s1_slavearbiterlockenable <= 0;
      else if ((|pio_led_s1_master_qreq_vector & end_xfer_arb_share_counter_term_pio_led_s1) | (end_xfer_arb_share_counter_term_pio_led_s1 & ~pio_led_s1_non_bursting_master_requests))
          pio_led_s1_slavearbiterlockenable <= |pio_led_s1_arb_share_counter_next_value;
    end


  //cpu/data_master pio_led/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = pio_led_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //pio_led_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign pio_led_s1_slavearbiterlockenable2 = |pio_led_s1_arb_share_counter_next_value;

  //cpu/data_master pio_led/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = pio_led_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //pio_led_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign pio_led_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_pio_led_s1 = cpu_data_master_requests_pio_led_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_pio_led_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_pio_led_s1 = cpu_data_master_granted_pio_led_s1 & cpu_data_master_read & ~pio_led_s1_waits_for_read;

  //pio_led_s1_writedata mux, which is an e_mux
  assign pio_led_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_pio_led_s1 = cpu_data_master_qualified_request_pio_led_s1;

  //cpu/data_master saved-grant pio_led/s1, which is an e_assign
  assign cpu_data_master_saved_grant_pio_led_s1 = cpu_data_master_requests_pio_led_s1;

  //allow new arb cycle for pio_led/s1, which is an e_assign
  assign pio_led_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign pio_led_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign pio_led_s1_master_qreq_vector = 1;

  //pio_led_s1_reset_n assignment, which is an e_assign
  assign pio_led_s1_reset_n = reset_n;

  assign pio_led_s1_chipselect = cpu_data_master_granted_pio_led_s1;
  //pio_led_s1_firsttransfer first transaction, which is an e_assign
  assign pio_led_s1_firsttransfer = pio_led_s1_begins_xfer ? pio_led_s1_unreg_firsttransfer : pio_led_s1_reg_firsttransfer;

  //pio_led_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign pio_led_s1_unreg_firsttransfer = ~(pio_led_s1_slavearbiterlockenable & pio_led_s1_any_continuerequest);

  //pio_led_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_led_s1_reg_firsttransfer <= 1'b1;
      else if (pio_led_s1_begins_xfer)
          pio_led_s1_reg_firsttransfer <= pio_led_s1_unreg_firsttransfer;
    end


  //pio_led_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign pio_led_s1_beginbursttransfer_internal = pio_led_s1_begins_xfer;

  //~pio_led_s1_write_n assignment, which is an e_mux
  assign pio_led_s1_write_n = ~(cpu_data_master_granted_pio_led_s1 & cpu_data_master_write);

  assign shifted_address_to_pio_led_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //pio_led_s1_address mux, which is an e_mux
  assign pio_led_s1_address = shifted_address_to_pio_led_s1_from_cpu_data_master >> 2;

  //d1_pio_led_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_pio_led_s1_end_xfer <= 1;
      else 
        d1_pio_led_s1_end_xfer <= pio_led_s1_end_xfer;
    end


  //pio_led_s1_waits_for_read in a cycle, which is an e_mux
  assign pio_led_s1_waits_for_read = pio_led_s1_in_a_read_cycle & pio_led_s1_begins_xfer;

  //pio_led_s1_in_a_read_cycle assignment, which is an e_assign
  assign pio_led_s1_in_a_read_cycle = cpu_data_master_granted_pio_led_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = pio_led_s1_in_a_read_cycle;

  //pio_led_s1_waits_for_write in a cycle, which is an e_mux
  assign pio_led_s1_waits_for_write = pio_led_s1_in_a_write_cycle & 0;

  //pio_led_s1_in_a_write_cycle assignment, which is an e_assign
  assign pio_led_s1_in_a_write_cycle = cpu_data_master_granted_pio_led_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = pio_led_s1_in_a_write_cycle;

  assign wait_for_pio_led_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //pio_led/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module pll_pll_slave_arbitrator (
                                  // inputs:
                                   DE2_70_SOPC_clock_0_out_address_to_slave,
                                   DE2_70_SOPC_clock_0_out_read,
                                   DE2_70_SOPC_clock_0_out_write,
                                   DE2_70_SOPC_clock_0_out_writedata,
                                   clk,
                                   pll_pll_slave_readdata,
                                   reset_n,

                                  // outputs:
                                   DE2_70_SOPC_clock_0_out_granted_pll_pll_slave,
                                   DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave,
                                   DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave,
                                   DE2_70_SOPC_clock_0_out_requests_pll_pll_slave,
                                   d1_pll_pll_slave_end_xfer,
                                   pll_pll_slave_address,
                                   pll_pll_slave_read,
                                   pll_pll_slave_readdata_from_sa,
                                   pll_pll_slave_reset,
                                   pll_pll_slave_write,
                                   pll_pll_slave_writedata
                                )
;

  output           DE2_70_SOPC_clock_0_out_granted_pll_pll_slave;
  output           DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  output           DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  output           DE2_70_SOPC_clock_0_out_requests_pll_pll_slave;
  output           d1_pll_pll_slave_end_xfer;
  output  [  1: 0] pll_pll_slave_address;
  output           pll_pll_slave_read;
  output  [ 31: 0] pll_pll_slave_readdata_from_sa;
  output           pll_pll_slave_reset;
  output           pll_pll_slave_write;
  output  [ 31: 0] pll_pll_slave_writedata;
  input   [  3: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  input            DE2_70_SOPC_clock_0_out_read;
  input            DE2_70_SOPC_clock_0_out_write;
  input   [ 31: 0] DE2_70_SOPC_clock_0_out_writedata;
  input            clk;
  input   [ 31: 0] pll_pll_slave_readdata;
  input            reset_n;

  wire             DE2_70_SOPC_clock_0_out_arbiterlock;
  wire             DE2_70_SOPC_clock_0_out_arbiterlock2;
  wire             DE2_70_SOPC_clock_0_out_continuerequest;
  wire             DE2_70_SOPC_clock_0_out_granted_pll_pll_slave;
  wire             DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  wire             DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  wire             DE2_70_SOPC_clock_0_out_requests_pll_pll_slave;
  wire             DE2_70_SOPC_clock_0_out_saved_grant_pll_pll_slave;
  reg              d1_pll_pll_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_pll_pll_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] pll_pll_slave_address;
  wire             pll_pll_slave_allgrants;
  wire             pll_pll_slave_allow_new_arb_cycle;
  wire             pll_pll_slave_any_bursting_master_saved_grant;
  wire             pll_pll_slave_any_continuerequest;
  wire             pll_pll_slave_arb_counter_enable;
  reg              pll_pll_slave_arb_share_counter;
  wire             pll_pll_slave_arb_share_counter_next_value;
  wire             pll_pll_slave_arb_share_set_values;
  wire             pll_pll_slave_beginbursttransfer_internal;
  wire             pll_pll_slave_begins_xfer;
  wire             pll_pll_slave_end_xfer;
  wire             pll_pll_slave_firsttransfer;
  wire             pll_pll_slave_grant_vector;
  wire             pll_pll_slave_in_a_read_cycle;
  wire             pll_pll_slave_in_a_write_cycle;
  wire             pll_pll_slave_master_qreq_vector;
  wire             pll_pll_slave_non_bursting_master_requests;
  wire             pll_pll_slave_read;
  wire    [ 31: 0] pll_pll_slave_readdata_from_sa;
  reg              pll_pll_slave_reg_firsttransfer;
  wire             pll_pll_slave_reset;
  reg              pll_pll_slave_slavearbiterlockenable;
  wire             pll_pll_slave_slavearbiterlockenable2;
  wire             pll_pll_slave_unreg_firsttransfer;
  wire             pll_pll_slave_waits_for_read;
  wire             pll_pll_slave_waits_for_write;
  wire             pll_pll_slave_write;
  wire    [ 31: 0] pll_pll_slave_writedata;
  wire    [  3: 0] shifted_address_to_pll_pll_slave_from_DE2_70_SOPC_clock_0_out;
  wire             wait_for_pll_pll_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~pll_pll_slave_end_xfer;
    end


  assign pll_pll_slave_begins_xfer = ~d1_reasons_to_wait & ((DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave));
  //assign pll_pll_slave_readdata_from_sa = pll_pll_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pll_pll_slave_readdata_from_sa = pll_pll_slave_readdata;

  assign DE2_70_SOPC_clock_0_out_requests_pll_pll_slave = (1) & (DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write);
  //pll_pll_slave_arb_share_counter set values, which is an e_mux
  assign pll_pll_slave_arb_share_set_values = 1;

  //pll_pll_slave_non_bursting_master_requests mux, which is an e_mux
  assign pll_pll_slave_non_bursting_master_requests = DE2_70_SOPC_clock_0_out_requests_pll_pll_slave;

  //pll_pll_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign pll_pll_slave_any_bursting_master_saved_grant = 0;

  //pll_pll_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign pll_pll_slave_arb_share_counter_next_value = pll_pll_slave_firsttransfer ? (pll_pll_slave_arb_share_set_values - 1) : |pll_pll_slave_arb_share_counter ? (pll_pll_slave_arb_share_counter - 1) : 0;

  //pll_pll_slave_allgrants all slave grants, which is an e_mux
  assign pll_pll_slave_allgrants = |pll_pll_slave_grant_vector;

  //pll_pll_slave_end_xfer assignment, which is an e_assign
  assign pll_pll_slave_end_xfer = ~(pll_pll_slave_waits_for_read | pll_pll_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_pll_pll_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_pll_pll_slave = pll_pll_slave_end_xfer & (~pll_pll_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //pll_pll_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign pll_pll_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_pll_pll_slave & pll_pll_slave_allgrants) | (end_xfer_arb_share_counter_term_pll_pll_slave & ~pll_pll_slave_non_bursting_master_requests);

  //pll_pll_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_pll_slave_arb_share_counter <= 0;
      else if (pll_pll_slave_arb_counter_enable)
          pll_pll_slave_arb_share_counter <= pll_pll_slave_arb_share_counter_next_value;
    end


  //pll_pll_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_pll_slave_slavearbiterlockenable <= 0;
      else if ((|pll_pll_slave_master_qreq_vector & end_xfer_arb_share_counter_term_pll_pll_slave) | (end_xfer_arb_share_counter_term_pll_pll_slave & ~pll_pll_slave_non_bursting_master_requests))
          pll_pll_slave_slavearbiterlockenable <= |pll_pll_slave_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_0/out pll/pll_slave arbiterlock, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_arbiterlock = pll_pll_slave_slavearbiterlockenable & DE2_70_SOPC_clock_0_out_continuerequest;

  //pll_pll_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign pll_pll_slave_slavearbiterlockenable2 = |pll_pll_slave_arb_share_counter_next_value;

  //DE2_70_SOPC_clock_0/out pll/pll_slave arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_arbiterlock2 = pll_pll_slave_slavearbiterlockenable2 & DE2_70_SOPC_clock_0_out_continuerequest;

  //pll_pll_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign pll_pll_slave_any_continuerequest = 1;

  //DE2_70_SOPC_clock_0_out_continuerequest continued request, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_continuerequest = 1;

  assign DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave = DE2_70_SOPC_clock_0_out_requests_pll_pll_slave;
  //pll_pll_slave_writedata mux, which is an e_mux
  assign pll_pll_slave_writedata = DE2_70_SOPC_clock_0_out_writedata;

  //master is always granted when requested
  assign DE2_70_SOPC_clock_0_out_granted_pll_pll_slave = DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave;

  //DE2_70_SOPC_clock_0/out saved-grant pll/pll_slave, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_saved_grant_pll_pll_slave = DE2_70_SOPC_clock_0_out_requests_pll_pll_slave;

  //allow new arb cycle for pll/pll_slave, which is an e_assign
  assign pll_pll_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign pll_pll_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign pll_pll_slave_master_qreq_vector = 1;

  //~pll_pll_slave_reset assignment, which is an e_assign
  assign pll_pll_slave_reset = ~reset_n;

  //pll_pll_slave_firsttransfer first transaction, which is an e_assign
  assign pll_pll_slave_firsttransfer = pll_pll_slave_begins_xfer ? pll_pll_slave_unreg_firsttransfer : pll_pll_slave_reg_firsttransfer;

  //pll_pll_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign pll_pll_slave_unreg_firsttransfer = ~(pll_pll_slave_slavearbiterlockenable & pll_pll_slave_any_continuerequest);

  //pll_pll_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_pll_slave_reg_firsttransfer <= 1'b1;
      else if (pll_pll_slave_begins_xfer)
          pll_pll_slave_reg_firsttransfer <= pll_pll_slave_unreg_firsttransfer;
    end


  //pll_pll_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign pll_pll_slave_beginbursttransfer_internal = pll_pll_slave_begins_xfer;

  //pll_pll_slave_read assignment, which is an e_mux
  assign pll_pll_slave_read = DE2_70_SOPC_clock_0_out_granted_pll_pll_slave & DE2_70_SOPC_clock_0_out_read;

  //pll_pll_slave_write assignment, which is an e_mux
  assign pll_pll_slave_write = DE2_70_SOPC_clock_0_out_granted_pll_pll_slave & DE2_70_SOPC_clock_0_out_write;

  assign shifted_address_to_pll_pll_slave_from_DE2_70_SOPC_clock_0_out = DE2_70_SOPC_clock_0_out_address_to_slave;
  //pll_pll_slave_address mux, which is an e_mux
  assign pll_pll_slave_address = shifted_address_to_pll_pll_slave_from_DE2_70_SOPC_clock_0_out >> 2;

  //d1_pll_pll_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_pll_pll_slave_end_xfer <= 1;
      else 
        d1_pll_pll_slave_end_xfer <= pll_pll_slave_end_xfer;
    end


  //pll_pll_slave_waits_for_read in a cycle, which is an e_mux
  assign pll_pll_slave_waits_for_read = pll_pll_slave_in_a_read_cycle & 0;

  //pll_pll_slave_in_a_read_cycle assignment, which is an e_assign
  assign pll_pll_slave_in_a_read_cycle = DE2_70_SOPC_clock_0_out_granted_pll_pll_slave & DE2_70_SOPC_clock_0_out_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = pll_pll_slave_in_a_read_cycle;

  //pll_pll_slave_waits_for_write in a cycle, which is an e_mux
  assign pll_pll_slave_waits_for_write = pll_pll_slave_in_a_write_cycle & 0;

  //pll_pll_slave_in_a_write_cycle assignment, which is an e_assign
  assign pll_pll_slave_in_a_write_cycle = DE2_70_SOPC_clock_0_out_granted_pll_pll_slave & DE2_70_SOPC_clock_0_out_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = pll_pll_slave_in_a_write_cycle;

  assign wait_for_pll_pll_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //pll/pll_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sysid_control_slave_arbitrator (
                                        // inputs:
                                         clk,
                                         cpu_data_master_address_to_slave,
                                         cpu_data_master_latency_counter,
                                         cpu_data_master_read,
                                         cpu_data_master_write,
                                         reset_n,
                                         sysid_control_slave_readdata,

                                        // outputs:
                                         cpu_data_master_granted_sysid_control_slave,
                                         cpu_data_master_qualified_request_sysid_control_slave,
                                         cpu_data_master_read_data_valid_sysid_control_slave,
                                         cpu_data_master_requests_sysid_control_slave,
                                         d1_sysid_control_slave_end_xfer,
                                         sysid_control_slave_address,
                                         sysid_control_slave_readdata_from_sa,
                                         sysid_control_slave_reset_n
                                      )
;

  output           cpu_data_master_granted_sysid_control_slave;
  output           cpu_data_master_qualified_request_sysid_control_slave;
  output           cpu_data_master_read_data_valid_sysid_control_slave;
  output           cpu_data_master_requests_sysid_control_slave;
  output           d1_sysid_control_slave_end_xfer;
  output           sysid_control_slave_address;
  output  [ 31: 0] sysid_control_slave_readdata_from_sa;
  output           sysid_control_slave_reset_n;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_saved_grant_sysid_control_slave;
  reg              d1_reasons_to_wait;
  reg              d1_sysid_control_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sysid_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 22: 0] shifted_address_to_sysid_control_slave_from_cpu_data_master;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_allgrants;
  wire             sysid_control_slave_allow_new_arb_cycle;
  wire             sysid_control_slave_any_bursting_master_saved_grant;
  wire             sysid_control_slave_any_continuerequest;
  wire             sysid_control_slave_arb_counter_enable;
  reg              sysid_control_slave_arb_share_counter;
  wire             sysid_control_slave_arb_share_counter_next_value;
  wire             sysid_control_slave_arb_share_set_values;
  wire             sysid_control_slave_beginbursttransfer_internal;
  wire             sysid_control_slave_begins_xfer;
  wire             sysid_control_slave_end_xfer;
  wire             sysid_control_slave_firsttransfer;
  wire             sysid_control_slave_grant_vector;
  wire             sysid_control_slave_in_a_read_cycle;
  wire             sysid_control_slave_in_a_write_cycle;
  wire             sysid_control_slave_master_qreq_vector;
  wire             sysid_control_slave_non_bursting_master_requests;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  reg              sysid_control_slave_reg_firsttransfer;
  wire             sysid_control_slave_reset_n;
  reg              sysid_control_slave_slavearbiterlockenable;
  wire             sysid_control_slave_slavearbiterlockenable2;
  wire             sysid_control_slave_unreg_firsttransfer;
  wire             sysid_control_slave_waits_for_read;
  wire             sysid_control_slave_waits_for_write;
  wire             wait_for_sysid_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sysid_control_slave_end_xfer;
    end


  assign sysid_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_sysid_control_slave));
  //assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata;

  assign cpu_data_master_requests_sysid_control_slave = (({cpu_data_master_address_to_slave[22 : 3] , 3'b0} == 23'h4410a8) & (cpu_data_master_read | cpu_data_master_write)) & cpu_data_master_read;
  //sysid_control_slave_arb_share_counter set values, which is an e_mux
  assign sysid_control_slave_arb_share_set_values = 1;

  //sysid_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign sysid_control_slave_non_bursting_master_requests = cpu_data_master_requests_sysid_control_slave;

  //sysid_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign sysid_control_slave_any_bursting_master_saved_grant = 0;

  //sysid_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign sysid_control_slave_arb_share_counter_next_value = sysid_control_slave_firsttransfer ? (sysid_control_slave_arb_share_set_values - 1) : |sysid_control_slave_arb_share_counter ? (sysid_control_slave_arb_share_counter - 1) : 0;

  //sysid_control_slave_allgrants all slave grants, which is an e_mux
  assign sysid_control_slave_allgrants = |sysid_control_slave_grant_vector;

  //sysid_control_slave_end_xfer assignment, which is an e_assign
  assign sysid_control_slave_end_xfer = ~(sysid_control_slave_waits_for_read | sysid_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_sysid_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sysid_control_slave = sysid_control_slave_end_xfer & (~sysid_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sysid_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign sysid_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_sysid_control_slave & sysid_control_slave_allgrants) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests);

  //sysid_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_arb_share_counter <= 0;
      else if (sysid_control_slave_arb_counter_enable)
          sysid_control_slave_arb_share_counter <= sysid_control_slave_arb_share_counter_next_value;
    end


  //sysid_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_slavearbiterlockenable <= 0;
      else if ((|sysid_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_sysid_control_slave) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests))
          sysid_control_slave_slavearbiterlockenable <= |sysid_control_slave_arb_share_counter_next_value;
    end


  //cpu/data_master sysid/control_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = sysid_control_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //sysid_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sysid_control_slave_slavearbiterlockenable2 = |sysid_control_slave_arb_share_counter_next_value;

  //cpu/data_master sysid/control_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = sysid_control_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //sysid_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign sysid_control_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_sysid_control_slave = cpu_data_master_requests_sysid_control_slave & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_sysid_control_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_sysid_control_slave = cpu_data_master_granted_sysid_control_slave & cpu_data_master_read & ~sysid_control_slave_waits_for_read;

  //master is always granted when requested
  assign cpu_data_master_granted_sysid_control_slave = cpu_data_master_qualified_request_sysid_control_slave;

  //cpu/data_master saved-grant sysid/control_slave, which is an e_assign
  assign cpu_data_master_saved_grant_sysid_control_slave = cpu_data_master_requests_sysid_control_slave;

  //allow new arb cycle for sysid/control_slave, which is an e_assign
  assign sysid_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign sysid_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign sysid_control_slave_master_qreq_vector = 1;

  //sysid_control_slave_reset_n assignment, which is an e_assign
  assign sysid_control_slave_reset_n = reset_n;

  //sysid_control_slave_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_firsttransfer = sysid_control_slave_begins_xfer ? sysid_control_slave_unreg_firsttransfer : sysid_control_slave_reg_firsttransfer;

  //sysid_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_unreg_firsttransfer = ~(sysid_control_slave_slavearbiterlockenable & sysid_control_slave_any_continuerequest);

  //sysid_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_reg_firsttransfer <= 1'b1;
      else if (sysid_control_slave_begins_xfer)
          sysid_control_slave_reg_firsttransfer <= sysid_control_slave_unreg_firsttransfer;
    end


  //sysid_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sysid_control_slave_beginbursttransfer_internal = sysid_control_slave_begins_xfer;

  assign shifted_address_to_sysid_control_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //sysid_control_slave_address mux, which is an e_mux
  assign sysid_control_slave_address = shifted_address_to_sysid_control_slave_from_cpu_data_master >> 2;

  //d1_sysid_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sysid_control_slave_end_xfer <= 1;
      else 
        d1_sysid_control_slave_end_xfer <= sysid_control_slave_end_xfer;
    end


  //sysid_control_slave_waits_for_read in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_read = sysid_control_slave_in_a_read_cycle & sysid_control_slave_begins_xfer;

  //sysid_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_read_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sysid_control_slave_in_a_read_cycle;

  //sysid_control_slave_waits_for_write in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_write = sysid_control_slave_in_a_write_cycle & 0;

  //sysid_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_write_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sysid_control_slave_in_a_write_cycle;

  assign wait_for_sysid_control_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sysid/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer_s1_arbitrator (
                             // inputs:
                              clk,
                              cpu_data_master_address_to_slave,
                              cpu_data_master_latency_counter,
                              cpu_data_master_read,
                              cpu_data_master_write,
                              cpu_data_master_writedata,
                              reset_n,
                              timer_s1_irq,
                              timer_s1_readdata,

                             // outputs:
                              cpu_data_master_granted_timer_s1,
                              cpu_data_master_qualified_request_timer_s1,
                              cpu_data_master_read_data_valid_timer_s1,
                              cpu_data_master_requests_timer_s1,
                              d1_timer_s1_end_xfer,
                              timer_s1_address,
                              timer_s1_chipselect,
                              timer_s1_irq_from_sa,
                              timer_s1_readdata_from_sa,
                              timer_s1_reset_n,
                              timer_s1_write_n,
                              timer_s1_writedata
                           )
;

  output           cpu_data_master_granted_timer_s1;
  output           cpu_data_master_qualified_request_timer_s1;
  output           cpu_data_master_read_data_valid_timer_s1;
  output           cpu_data_master_requests_timer_s1;
  output           d1_timer_s1_end_xfer;
  output  [  2: 0] timer_s1_address;
  output           timer_s1_chipselect;
  output           timer_s1_irq_from_sa;
  output  [ 15: 0] timer_s1_readdata_from_sa;
  output           timer_s1_reset_n;
  output           timer_s1_write_n;
  output  [ 15: 0] timer_s1_writedata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;
  input            timer_s1_irq;
  input   [ 15: 0] timer_s1_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_timer_s1;
  wire             cpu_data_master_qualified_request_timer_s1;
  wire             cpu_data_master_read_data_valid_timer_s1;
  wire             cpu_data_master_requests_timer_s1;
  wire             cpu_data_master_saved_grant_timer_s1;
  reg              d1_reasons_to_wait;
  reg              d1_timer_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_timer_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 22: 0] shifted_address_to_timer_s1_from_cpu_data_master;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_allgrants;
  wire             timer_s1_allow_new_arb_cycle;
  wire             timer_s1_any_bursting_master_saved_grant;
  wire             timer_s1_any_continuerequest;
  wire             timer_s1_arb_counter_enable;
  reg              timer_s1_arb_share_counter;
  wire             timer_s1_arb_share_counter_next_value;
  wire             timer_s1_arb_share_set_values;
  wire             timer_s1_beginbursttransfer_internal;
  wire             timer_s1_begins_xfer;
  wire             timer_s1_chipselect;
  wire             timer_s1_end_xfer;
  wire             timer_s1_firsttransfer;
  wire             timer_s1_grant_vector;
  wire             timer_s1_in_a_read_cycle;
  wire             timer_s1_in_a_write_cycle;
  wire             timer_s1_irq_from_sa;
  wire             timer_s1_master_qreq_vector;
  wire             timer_s1_non_bursting_master_requests;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  reg              timer_s1_reg_firsttransfer;
  wire             timer_s1_reset_n;
  reg              timer_s1_slavearbiterlockenable;
  wire             timer_s1_slavearbiterlockenable2;
  wire             timer_s1_unreg_firsttransfer;
  wire             timer_s1_waits_for_read;
  wire             timer_s1_waits_for_write;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  wire             wait_for_timer_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~timer_s1_end_xfer;
    end


  assign timer_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_timer_s1));
  //assign timer_s1_readdata_from_sa = timer_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_readdata_from_sa = timer_s1_readdata;

  assign cpu_data_master_requests_timer_s1 = ({cpu_data_master_address_to_slave[22 : 5] , 5'b0} == 23'h441020) & (cpu_data_master_read | cpu_data_master_write);
  //timer_s1_arb_share_counter set values, which is an e_mux
  assign timer_s1_arb_share_set_values = 1;

  //timer_s1_non_bursting_master_requests mux, which is an e_mux
  assign timer_s1_non_bursting_master_requests = cpu_data_master_requests_timer_s1;

  //timer_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign timer_s1_any_bursting_master_saved_grant = 0;

  //timer_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign timer_s1_arb_share_counter_next_value = timer_s1_firsttransfer ? (timer_s1_arb_share_set_values - 1) : |timer_s1_arb_share_counter ? (timer_s1_arb_share_counter - 1) : 0;

  //timer_s1_allgrants all slave grants, which is an e_mux
  assign timer_s1_allgrants = |timer_s1_grant_vector;

  //timer_s1_end_xfer assignment, which is an e_assign
  assign timer_s1_end_xfer = ~(timer_s1_waits_for_read | timer_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_timer_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_timer_s1 = timer_s1_end_xfer & (~timer_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //timer_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign timer_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_timer_s1 & timer_s1_allgrants) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests);

  //timer_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_arb_share_counter <= 0;
      else if (timer_s1_arb_counter_enable)
          timer_s1_arb_share_counter <= timer_s1_arb_share_counter_next_value;
    end


  //timer_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_slavearbiterlockenable <= 0;
      else if ((|timer_s1_master_qreq_vector & end_xfer_arb_share_counter_term_timer_s1) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests))
          timer_s1_slavearbiterlockenable <= |timer_s1_arb_share_counter_next_value;
    end


  //cpu/data_master timer/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = timer_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //timer_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign timer_s1_slavearbiterlockenable2 = |timer_s1_arb_share_counter_next_value;

  //cpu/data_master timer/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = timer_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //timer_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign timer_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_timer_s1 = cpu_data_master_requests_timer_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_timer_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_timer_s1 = cpu_data_master_granted_timer_s1 & cpu_data_master_read & ~timer_s1_waits_for_read;

  //timer_s1_writedata mux, which is an e_mux
  assign timer_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_timer_s1 = cpu_data_master_qualified_request_timer_s1;

  //cpu/data_master saved-grant timer/s1, which is an e_assign
  assign cpu_data_master_saved_grant_timer_s1 = cpu_data_master_requests_timer_s1;

  //allow new arb cycle for timer/s1, which is an e_assign
  assign timer_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign timer_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign timer_s1_master_qreq_vector = 1;

  //timer_s1_reset_n assignment, which is an e_assign
  assign timer_s1_reset_n = reset_n;

  assign timer_s1_chipselect = cpu_data_master_granted_timer_s1;
  //timer_s1_firsttransfer first transaction, which is an e_assign
  assign timer_s1_firsttransfer = timer_s1_begins_xfer ? timer_s1_unreg_firsttransfer : timer_s1_reg_firsttransfer;

  //timer_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign timer_s1_unreg_firsttransfer = ~(timer_s1_slavearbiterlockenable & timer_s1_any_continuerequest);

  //timer_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_reg_firsttransfer <= 1'b1;
      else if (timer_s1_begins_xfer)
          timer_s1_reg_firsttransfer <= timer_s1_unreg_firsttransfer;
    end


  //timer_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign timer_s1_beginbursttransfer_internal = timer_s1_begins_xfer;

  //~timer_s1_write_n assignment, which is an e_mux
  assign timer_s1_write_n = ~(cpu_data_master_granted_timer_s1 & cpu_data_master_write);

  assign shifted_address_to_timer_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //timer_s1_address mux, which is an e_mux
  assign timer_s1_address = shifted_address_to_timer_s1_from_cpu_data_master >> 2;

  //d1_timer_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_timer_s1_end_xfer <= 1;
      else 
        d1_timer_s1_end_xfer <= timer_s1_end_xfer;
    end


  //timer_s1_waits_for_read in a cycle, which is an e_mux
  assign timer_s1_waits_for_read = timer_s1_in_a_read_cycle & timer_s1_begins_xfer;

  //timer_s1_in_a_read_cycle assignment, which is an e_assign
  assign timer_s1_in_a_read_cycle = cpu_data_master_granted_timer_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = timer_s1_in_a_read_cycle;

  //timer_s1_waits_for_write in a cycle, which is an e_mux
  assign timer_s1_waits_for_write = timer_s1_in_a_write_cycle & 0;

  //timer_s1_in_a_write_cycle assignment, which is an e_assign
  assign timer_s1_in_a_write_cycle = cpu_data_master_granted_timer_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = timer_s1_in_a_write_cycle;

  assign wait_for_timer_s1_counter = 0;
  //assign timer_s1_irq_from_sa = timer_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_irq_from_sa = timer_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //timer/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer_stamp_s1_arbitrator (
                                   // inputs:
                                    clk,
                                    cpu_data_master_address_to_slave,
                                    cpu_data_master_latency_counter,
                                    cpu_data_master_read,
                                    cpu_data_master_write,
                                    cpu_data_master_writedata,
                                    reset_n,
                                    timer_stamp_s1_irq,
                                    timer_stamp_s1_readdata,

                                   // outputs:
                                    cpu_data_master_granted_timer_stamp_s1,
                                    cpu_data_master_qualified_request_timer_stamp_s1,
                                    cpu_data_master_read_data_valid_timer_stamp_s1,
                                    cpu_data_master_requests_timer_stamp_s1,
                                    d1_timer_stamp_s1_end_xfer,
                                    timer_stamp_s1_address,
                                    timer_stamp_s1_chipselect,
                                    timer_stamp_s1_irq_from_sa,
                                    timer_stamp_s1_readdata_from_sa,
                                    timer_stamp_s1_reset_n,
                                    timer_stamp_s1_write_n,
                                    timer_stamp_s1_writedata
                                 )
;

  output           cpu_data_master_granted_timer_stamp_s1;
  output           cpu_data_master_qualified_request_timer_stamp_s1;
  output           cpu_data_master_read_data_valid_timer_stamp_s1;
  output           cpu_data_master_requests_timer_stamp_s1;
  output           d1_timer_stamp_s1_end_xfer;
  output  [  2: 0] timer_stamp_s1_address;
  output           timer_stamp_s1_chipselect;
  output           timer_stamp_s1_irq_from_sa;
  output  [ 15: 0] timer_stamp_s1_readdata_from_sa;
  output           timer_stamp_s1_reset_n;
  output           timer_stamp_s1_write_n;
  output  [ 15: 0] timer_stamp_s1_writedata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;
  input            timer_stamp_s1_irq;
  input   [ 15: 0] timer_stamp_s1_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_timer_stamp_s1;
  wire             cpu_data_master_qualified_request_timer_stamp_s1;
  wire             cpu_data_master_read_data_valid_timer_stamp_s1;
  wire             cpu_data_master_requests_timer_stamp_s1;
  wire             cpu_data_master_saved_grant_timer_stamp_s1;
  reg              d1_reasons_to_wait;
  reg              d1_timer_stamp_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_timer_stamp_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 22: 0] shifted_address_to_timer_stamp_s1_from_cpu_data_master;
  wire    [  2: 0] timer_stamp_s1_address;
  wire             timer_stamp_s1_allgrants;
  wire             timer_stamp_s1_allow_new_arb_cycle;
  wire             timer_stamp_s1_any_bursting_master_saved_grant;
  wire             timer_stamp_s1_any_continuerequest;
  wire             timer_stamp_s1_arb_counter_enable;
  reg              timer_stamp_s1_arb_share_counter;
  wire             timer_stamp_s1_arb_share_counter_next_value;
  wire             timer_stamp_s1_arb_share_set_values;
  wire             timer_stamp_s1_beginbursttransfer_internal;
  wire             timer_stamp_s1_begins_xfer;
  wire             timer_stamp_s1_chipselect;
  wire             timer_stamp_s1_end_xfer;
  wire             timer_stamp_s1_firsttransfer;
  wire             timer_stamp_s1_grant_vector;
  wire             timer_stamp_s1_in_a_read_cycle;
  wire             timer_stamp_s1_in_a_write_cycle;
  wire             timer_stamp_s1_irq_from_sa;
  wire             timer_stamp_s1_master_qreq_vector;
  wire             timer_stamp_s1_non_bursting_master_requests;
  wire    [ 15: 0] timer_stamp_s1_readdata_from_sa;
  reg              timer_stamp_s1_reg_firsttransfer;
  wire             timer_stamp_s1_reset_n;
  reg              timer_stamp_s1_slavearbiterlockenable;
  wire             timer_stamp_s1_slavearbiterlockenable2;
  wire             timer_stamp_s1_unreg_firsttransfer;
  wire             timer_stamp_s1_waits_for_read;
  wire             timer_stamp_s1_waits_for_write;
  wire             timer_stamp_s1_write_n;
  wire    [ 15: 0] timer_stamp_s1_writedata;
  wire             wait_for_timer_stamp_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~timer_stamp_s1_end_xfer;
    end


  assign timer_stamp_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_timer_stamp_s1));
  //assign timer_stamp_s1_readdata_from_sa = timer_stamp_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_stamp_s1_readdata_from_sa = timer_stamp_s1_readdata;

  assign cpu_data_master_requests_timer_stamp_s1 = ({cpu_data_master_address_to_slave[22 : 5] , 5'b0} == 23'h441040) & (cpu_data_master_read | cpu_data_master_write);
  //timer_stamp_s1_arb_share_counter set values, which is an e_mux
  assign timer_stamp_s1_arb_share_set_values = 1;

  //timer_stamp_s1_non_bursting_master_requests mux, which is an e_mux
  assign timer_stamp_s1_non_bursting_master_requests = cpu_data_master_requests_timer_stamp_s1;

  //timer_stamp_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign timer_stamp_s1_any_bursting_master_saved_grant = 0;

  //timer_stamp_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign timer_stamp_s1_arb_share_counter_next_value = timer_stamp_s1_firsttransfer ? (timer_stamp_s1_arb_share_set_values - 1) : |timer_stamp_s1_arb_share_counter ? (timer_stamp_s1_arb_share_counter - 1) : 0;

  //timer_stamp_s1_allgrants all slave grants, which is an e_mux
  assign timer_stamp_s1_allgrants = |timer_stamp_s1_grant_vector;

  //timer_stamp_s1_end_xfer assignment, which is an e_assign
  assign timer_stamp_s1_end_xfer = ~(timer_stamp_s1_waits_for_read | timer_stamp_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_timer_stamp_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_timer_stamp_s1 = timer_stamp_s1_end_xfer & (~timer_stamp_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //timer_stamp_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign timer_stamp_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_timer_stamp_s1 & timer_stamp_s1_allgrants) | (end_xfer_arb_share_counter_term_timer_stamp_s1 & ~timer_stamp_s1_non_bursting_master_requests);

  //timer_stamp_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_stamp_s1_arb_share_counter <= 0;
      else if (timer_stamp_s1_arb_counter_enable)
          timer_stamp_s1_arb_share_counter <= timer_stamp_s1_arb_share_counter_next_value;
    end


  //timer_stamp_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_stamp_s1_slavearbiterlockenable <= 0;
      else if ((|timer_stamp_s1_master_qreq_vector & end_xfer_arb_share_counter_term_timer_stamp_s1) | (end_xfer_arb_share_counter_term_timer_stamp_s1 & ~timer_stamp_s1_non_bursting_master_requests))
          timer_stamp_s1_slavearbiterlockenable <= |timer_stamp_s1_arb_share_counter_next_value;
    end


  //cpu/data_master timer_stamp/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = timer_stamp_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //timer_stamp_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign timer_stamp_s1_slavearbiterlockenable2 = |timer_stamp_s1_arb_share_counter_next_value;

  //cpu/data_master timer_stamp/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = timer_stamp_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //timer_stamp_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign timer_stamp_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_timer_stamp_s1 = cpu_data_master_requests_timer_stamp_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_timer_stamp_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_timer_stamp_s1 = cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_read & ~timer_stamp_s1_waits_for_read;

  //timer_stamp_s1_writedata mux, which is an e_mux
  assign timer_stamp_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_timer_stamp_s1 = cpu_data_master_qualified_request_timer_stamp_s1;

  //cpu/data_master saved-grant timer_stamp/s1, which is an e_assign
  assign cpu_data_master_saved_grant_timer_stamp_s1 = cpu_data_master_requests_timer_stamp_s1;

  //allow new arb cycle for timer_stamp/s1, which is an e_assign
  assign timer_stamp_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign timer_stamp_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign timer_stamp_s1_master_qreq_vector = 1;

  //timer_stamp_s1_reset_n assignment, which is an e_assign
  assign timer_stamp_s1_reset_n = reset_n;

  assign timer_stamp_s1_chipselect = cpu_data_master_granted_timer_stamp_s1;
  //timer_stamp_s1_firsttransfer first transaction, which is an e_assign
  assign timer_stamp_s1_firsttransfer = timer_stamp_s1_begins_xfer ? timer_stamp_s1_unreg_firsttransfer : timer_stamp_s1_reg_firsttransfer;

  //timer_stamp_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign timer_stamp_s1_unreg_firsttransfer = ~(timer_stamp_s1_slavearbiterlockenable & timer_stamp_s1_any_continuerequest);

  //timer_stamp_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_stamp_s1_reg_firsttransfer <= 1'b1;
      else if (timer_stamp_s1_begins_xfer)
          timer_stamp_s1_reg_firsttransfer <= timer_stamp_s1_unreg_firsttransfer;
    end


  //timer_stamp_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign timer_stamp_s1_beginbursttransfer_internal = timer_stamp_s1_begins_xfer;

  //~timer_stamp_s1_write_n assignment, which is an e_mux
  assign timer_stamp_s1_write_n = ~(cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_write);

  assign shifted_address_to_timer_stamp_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //timer_stamp_s1_address mux, which is an e_mux
  assign timer_stamp_s1_address = shifted_address_to_timer_stamp_s1_from_cpu_data_master >> 2;

  //d1_timer_stamp_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_timer_stamp_s1_end_xfer <= 1;
      else 
        d1_timer_stamp_s1_end_xfer <= timer_stamp_s1_end_xfer;
    end


  //timer_stamp_s1_waits_for_read in a cycle, which is an e_mux
  assign timer_stamp_s1_waits_for_read = timer_stamp_s1_in_a_read_cycle & timer_stamp_s1_begins_xfer;

  //timer_stamp_s1_in_a_read_cycle assignment, which is an e_assign
  assign timer_stamp_s1_in_a_read_cycle = cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = timer_stamp_s1_in_a_read_cycle;

  //timer_stamp_s1_waits_for_write in a cycle, which is an e_mux
  assign timer_stamp_s1_waits_for_write = timer_stamp_s1_in_a_write_cycle & 0;

  //timer_stamp_s1_in_a_write_cycle assignment, which is an e_assign
  assign timer_stamp_s1_in_a_write_cycle = cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = timer_stamp_s1_in_a_write_cycle;

  assign wait_for_timer_stamp_s1_counter = 0;
  //assign timer_stamp_s1_irq_from_sa = timer_stamp_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_stamp_s1_irq_from_sa = timer_stamp_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //timer_stamp/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module tristate_bridge_avalon_slave_arbitrator (
                                                 // inputs:
                                                  clk,
                                                  cpu_data_master_address_to_slave,
                                                  cpu_data_master_byteenable,
                                                  cpu_data_master_latency_counter,
                                                  cpu_data_master_read,
                                                  cpu_data_master_write,
                                                  cpu_data_master_writedata,
                                                  cpu_instruction_master_address_to_slave,
                                                  cpu_instruction_master_latency_counter,
                                                  cpu_instruction_master_read,
                                                  reset_n,

                                                 // outputs:
                                                  address_to_the_ssram,
                                                  adsc_n_to_the_ssram,
                                                  bw_n_to_the_ssram,
                                                  bwe_n_to_the_ssram,
                                                  chipenable1_n_to_the_ssram,
                                                  cpu_data_master_granted_ssram_s1,
                                                  cpu_data_master_qualified_request_ssram_s1,
                                                  cpu_data_master_read_data_valid_ssram_s1,
                                                  cpu_data_master_requests_ssram_s1,
                                                  cpu_instruction_master_granted_ssram_s1,
                                                  cpu_instruction_master_qualified_request_ssram_s1,
                                                  cpu_instruction_master_read_data_valid_ssram_s1,
                                                  cpu_instruction_master_requests_ssram_s1,
                                                  d1_tristate_bridge_avalon_slave_end_xfer,
                                                  data_to_and_from_the_ssram,
                                                  incoming_data_to_and_from_the_ssram,
                                                  outputenable_n_to_the_ssram
                                               )
;

  output  [ 20: 0] address_to_the_ssram;
  output           adsc_n_to_the_ssram;
  output  [  3: 0] bw_n_to_the_ssram;
  output           bwe_n_to_the_ssram;
  output           chipenable1_n_to_the_ssram;
  output           cpu_data_master_granted_ssram_s1;
  output           cpu_data_master_qualified_request_ssram_s1;
  output           cpu_data_master_read_data_valid_ssram_s1;
  output           cpu_data_master_requests_ssram_s1;
  output           cpu_instruction_master_granted_ssram_s1;
  output           cpu_instruction_master_qualified_request_ssram_s1;
  output           cpu_instruction_master_read_data_valid_ssram_s1;
  output           cpu_instruction_master_requests_ssram_s1;
  output           d1_tristate_bridge_avalon_slave_end_xfer;
  inout   [ 31: 0] data_to_and_from_the_ssram;
  output  [ 31: 0] incoming_data_to_and_from_the_ssram;
  output           outputenable_n_to_the_ssram;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 22: 0] cpu_instruction_master_address_to_slave;
  input   [  2: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input            reset_n;

  reg     [ 20: 0] address_to_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              adsc_n_to_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg     [  3: 0] bw_n_to_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              bwe_n_to_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              chipenable1_n_to_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_ssram_s1;
  wire             cpu_data_master_qualified_request_ssram_s1;
  wire             cpu_data_master_read_data_valid_ssram_s1;
  reg     [  3: 0] cpu_data_master_read_data_valid_ssram_s1_shift_register;
  wire             cpu_data_master_read_data_valid_ssram_s1_shift_register_in;
  wire             cpu_data_master_requests_ssram_s1;
  wire             cpu_data_master_saved_grant_ssram_s1;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_ssram_s1;
  wire             cpu_instruction_master_qualified_request_ssram_s1;
  wire             cpu_instruction_master_read_data_valid_ssram_s1;
  reg     [  3: 0] cpu_instruction_master_read_data_valid_ssram_s1_shift_register;
  wire             cpu_instruction_master_read_data_valid_ssram_s1_shift_register_in;
  wire             cpu_instruction_master_requests_ssram_s1;
  wire             cpu_instruction_master_saved_grant_ssram_s1;
  reg              d1_in_a_write_cycle /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_ENABLE_REGISTER=ON"  */;
  reg     [ 31: 0] d1_outgoing_data_to_and_from_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              d1_reasons_to_wait;
  reg              d1_tristate_bridge_avalon_slave_end_xfer;
  wire    [ 31: 0] data_to_and_from_the_ssram;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_tristate_bridge_avalon_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg     [ 31: 0] incoming_data_to_and_from_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_INPUT_REGISTER=ON"  */;
  reg              last_cycle_cpu_data_master_granted_slave_ssram_s1;
  reg              last_cycle_cpu_instruction_master_granted_slave_ssram_s1;
  wire    [ 31: 0] outgoing_data_to_and_from_the_ssram;
  reg              outputenable_n_to_the_ssram /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire    [ 20: 0] p1_address_to_the_ssram;
  wire             p1_adsc_n_to_the_ssram;
  wire    [  3: 0] p1_bw_n_to_the_ssram;
  wire             p1_bwe_n_to_the_ssram;
  wire             p1_chipenable1_n_to_the_ssram;
  wire    [  3: 0] p1_cpu_data_master_read_data_valid_ssram_s1_shift_register;
  wire    [  3: 0] p1_cpu_instruction_master_read_data_valid_ssram_s1_shift_register;
  wire             p1_outputenable_n_to_the_ssram;
  wire             ssram_s1_in_a_read_cycle;
  wire             ssram_s1_in_a_write_cycle;
  wire             ssram_s1_waits_for_read;
  wire             ssram_s1_waits_for_write;
  wire             ssram_s1_with_write_latency;
  wire             time_to_write;
  wire             tristate_bridge_avalon_slave_allgrants;
  wire             tristate_bridge_avalon_slave_allow_new_arb_cycle;
  wire             tristate_bridge_avalon_slave_any_bursting_master_saved_grant;
  wire             tristate_bridge_avalon_slave_any_continuerequest;
  reg     [  1: 0] tristate_bridge_avalon_slave_arb_addend;
  wire             tristate_bridge_avalon_slave_arb_counter_enable;
  reg              tristate_bridge_avalon_slave_arb_share_counter;
  wire             tristate_bridge_avalon_slave_arb_share_counter_next_value;
  wire             tristate_bridge_avalon_slave_arb_share_set_values;
  wire    [  1: 0] tristate_bridge_avalon_slave_arb_winner;
  wire             tristate_bridge_avalon_slave_arbitration_holdoff_internal;
  wire             tristate_bridge_avalon_slave_beginbursttransfer_internal;
  wire             tristate_bridge_avalon_slave_begins_xfer;
  wire    [  3: 0] tristate_bridge_avalon_slave_chosen_master_double_vector;
  wire    [  1: 0] tristate_bridge_avalon_slave_chosen_master_rot_left;
  wire             tristate_bridge_avalon_slave_end_xfer;
  wire             tristate_bridge_avalon_slave_firsttransfer;
  wire    [  1: 0] tristate_bridge_avalon_slave_grant_vector;
  wire    [  1: 0] tristate_bridge_avalon_slave_master_qreq_vector;
  wire             tristate_bridge_avalon_slave_non_bursting_master_requests;
  wire             tristate_bridge_avalon_slave_read_pending;
  reg              tristate_bridge_avalon_slave_reg_firsttransfer;
  reg     [  1: 0] tristate_bridge_avalon_slave_saved_chosen_master_vector;
  reg              tristate_bridge_avalon_slave_slavearbiterlockenable;
  wire             tristate_bridge_avalon_slave_slavearbiterlockenable2;
  wire             tristate_bridge_avalon_slave_unreg_firsttransfer;
  wire             tristate_bridge_avalon_slave_write_pending;
  wire             wait_for_ssram_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~tristate_bridge_avalon_slave_end_xfer;
    end


  assign tristate_bridge_avalon_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_ssram_s1 | cpu_instruction_master_qualified_request_ssram_s1));
  assign cpu_data_master_requests_ssram_s1 = ({cpu_data_master_address_to_slave[22 : 21] , 21'b0} == 23'h200000) & (cpu_data_master_read | cpu_data_master_write);
  //~chipenable1_n_to_the_ssram of type chipselect to ~p1_chipenable1_n_to_the_ssram, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          chipenable1_n_to_the_ssram <= ~0;
      else 
        chipenable1_n_to_the_ssram <= p1_chipenable1_n_to_the_ssram;
    end


  assign tristate_bridge_avalon_slave_write_pending = 0;
  //tristate_bridge/avalon_slave read pending calc, which is an e_assign
  assign tristate_bridge_avalon_slave_read_pending = (|cpu_data_master_read_data_valid_ssram_s1_shift_register[1 : 0]) | (|cpu_instruction_master_read_data_valid_ssram_s1_shift_register[1 : 0]);

  //tristate_bridge_avalon_slave_arb_share_counter set values, which is an e_mux
  assign tristate_bridge_avalon_slave_arb_share_set_values = 1;

  //tristate_bridge_avalon_slave_non_bursting_master_requests mux, which is an e_mux
  assign tristate_bridge_avalon_slave_non_bursting_master_requests = cpu_data_master_requests_ssram_s1 |
    cpu_instruction_master_requests_ssram_s1 |
    cpu_data_master_requests_ssram_s1 |
    cpu_instruction_master_requests_ssram_s1;

  //tristate_bridge_avalon_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign tristate_bridge_avalon_slave_any_bursting_master_saved_grant = 0;

  //tristate_bridge_avalon_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign tristate_bridge_avalon_slave_arb_share_counter_next_value = tristate_bridge_avalon_slave_firsttransfer ? (tristate_bridge_avalon_slave_arb_share_set_values - 1) : |tristate_bridge_avalon_slave_arb_share_counter ? (tristate_bridge_avalon_slave_arb_share_counter - 1) : 0;

  //tristate_bridge_avalon_slave_allgrants all slave grants, which is an e_mux
  assign tristate_bridge_avalon_slave_allgrants = (|tristate_bridge_avalon_slave_grant_vector) |
    (|tristate_bridge_avalon_slave_grant_vector) |
    (|tristate_bridge_avalon_slave_grant_vector) |
    (|tristate_bridge_avalon_slave_grant_vector);

  //tristate_bridge_avalon_slave_end_xfer assignment, which is an e_assign
  assign tristate_bridge_avalon_slave_end_xfer = ~(ssram_s1_waits_for_read | ssram_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_tristate_bridge_avalon_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_tristate_bridge_avalon_slave = tristate_bridge_avalon_slave_end_xfer & (~tristate_bridge_avalon_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //tristate_bridge_avalon_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign tristate_bridge_avalon_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_tristate_bridge_avalon_slave & tristate_bridge_avalon_slave_allgrants) | (end_xfer_arb_share_counter_term_tristate_bridge_avalon_slave & ~tristate_bridge_avalon_slave_non_bursting_master_requests);

  //tristate_bridge_avalon_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_avalon_slave_arb_share_counter <= 0;
      else if (tristate_bridge_avalon_slave_arb_counter_enable)
          tristate_bridge_avalon_slave_arb_share_counter <= tristate_bridge_avalon_slave_arb_share_counter_next_value;
    end


  //tristate_bridge_avalon_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_avalon_slave_slavearbiterlockenable <= 0;
      else if ((|tristate_bridge_avalon_slave_master_qreq_vector & end_xfer_arb_share_counter_term_tristate_bridge_avalon_slave) | (end_xfer_arb_share_counter_term_tristate_bridge_avalon_slave & ~tristate_bridge_avalon_slave_non_bursting_master_requests))
          tristate_bridge_avalon_slave_slavearbiterlockenable <= |tristate_bridge_avalon_slave_arb_share_counter_next_value;
    end


  //cpu/data_master tristate_bridge/avalon_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = tristate_bridge_avalon_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //tristate_bridge_avalon_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign tristate_bridge_avalon_slave_slavearbiterlockenable2 = |tristate_bridge_avalon_slave_arb_share_counter_next_value;

  //cpu/data_master tristate_bridge/avalon_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = tristate_bridge_avalon_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master tristate_bridge/avalon_slave arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = tristate_bridge_avalon_slave_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master tristate_bridge/avalon_slave arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = tristate_bridge_avalon_slave_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted ssram/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_ssram_s1 <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_ssram_s1 <= cpu_instruction_master_saved_grant_ssram_s1 ? 1 : (tristate_bridge_avalon_slave_arbitration_holdoff_internal | ~cpu_instruction_master_requests_ssram_s1) ? 0 : last_cycle_cpu_instruction_master_granted_slave_ssram_s1;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_ssram_s1 & cpu_instruction_master_requests_ssram_s1;

  //tristate_bridge_avalon_slave_any_continuerequest at least one master continues requesting, which is an e_mux
  assign tristate_bridge_avalon_slave_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_ssram_s1 = cpu_data_master_requests_ssram_s1 & ~((cpu_data_master_read & (tristate_bridge_avalon_slave_write_pending | (tristate_bridge_avalon_slave_read_pending & !((((|cpu_data_master_read_data_valid_ssram_s1_shift_register[1 : 0]) | (|cpu_instruction_master_read_data_valid_ssram_s1_shift_register[1 : 0]))))) | (4 < cpu_data_master_latency_counter))) | ((tristate_bridge_avalon_slave_read_pending) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_data_master_read_data_valid_ssram_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_ssram_s1_shift_register_in = cpu_data_master_granted_ssram_s1 & cpu_data_master_read & ~ssram_s1_waits_for_read;

  //shift register p1 cpu_data_master_read_data_valid_ssram_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_ssram_s1_shift_register = {cpu_data_master_read_data_valid_ssram_s1_shift_register, cpu_data_master_read_data_valid_ssram_s1_shift_register_in};

  //cpu_data_master_read_data_valid_ssram_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_ssram_s1_shift_register <= 0;
      else 
        cpu_data_master_read_data_valid_ssram_s1_shift_register <= p1_cpu_data_master_read_data_valid_ssram_s1_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_ssram_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_ssram_s1 = cpu_data_master_read_data_valid_ssram_s1_shift_register[3];

  //data_to_and_from_the_ssram register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          incoming_data_to_and_from_the_ssram <= 0;
      else 
        incoming_data_to_and_from_the_ssram <= data_to_and_from_the_ssram;
    end


  //ssram_s1_with_write_latency assignment, which is an e_assign
  assign ssram_s1_with_write_latency = in_a_write_cycle & (cpu_data_master_qualified_request_ssram_s1 | cpu_instruction_master_qualified_request_ssram_s1);

  //time to write the data, which is an e_mux
  assign time_to_write = (ssram_s1_with_write_latency)? 1 :
    0;

  //d1_outgoing_data_to_and_from_the_ssram register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_outgoing_data_to_and_from_the_ssram <= 0;
      else 
        d1_outgoing_data_to_and_from_the_ssram <= outgoing_data_to_and_from_the_ssram;
    end


  //write cycle delayed by 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_in_a_write_cycle <= 0;
      else 
        d1_in_a_write_cycle <= time_to_write;
    end


  //d1_outgoing_data_to_and_from_the_ssram tristate driver, which is an e_assign
  assign data_to_and_from_the_ssram = (d1_in_a_write_cycle)? d1_outgoing_data_to_and_from_the_ssram:{32{1'bz}};

  //outgoing_data_to_and_from_the_ssram mux, which is an e_mux
  assign outgoing_data_to_and_from_the_ssram = cpu_data_master_writedata;

  assign cpu_instruction_master_requests_ssram_s1 = (({cpu_instruction_master_address_to_slave[22 : 21] , 21'b0} == 23'h200000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted ssram/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_ssram_s1 <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_ssram_s1 <= cpu_data_master_saved_grant_ssram_s1 ? 1 : (tristate_bridge_avalon_slave_arbitration_holdoff_internal | ~cpu_data_master_requests_ssram_s1) ? 0 : last_cycle_cpu_data_master_granted_slave_ssram_s1;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_ssram_s1 & cpu_data_master_requests_ssram_s1;

  assign cpu_instruction_master_qualified_request_ssram_s1 = cpu_instruction_master_requests_ssram_s1 & ~((cpu_instruction_master_read & (tristate_bridge_avalon_slave_write_pending | (tristate_bridge_avalon_slave_read_pending & !((((|cpu_data_master_read_data_valid_ssram_s1_shift_register[1 : 0]) | (|cpu_instruction_master_read_data_valid_ssram_s1_shift_register[1 : 0]))))) | (4 < cpu_instruction_master_latency_counter))) | cpu_data_master_arbiterlock);
  //cpu_instruction_master_read_data_valid_ssram_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_instruction_master_read_data_valid_ssram_s1_shift_register_in = cpu_instruction_master_granted_ssram_s1 & cpu_instruction_master_read & ~ssram_s1_waits_for_read;

  //shift register p1 cpu_instruction_master_read_data_valid_ssram_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_instruction_master_read_data_valid_ssram_s1_shift_register = {cpu_instruction_master_read_data_valid_ssram_s1_shift_register, cpu_instruction_master_read_data_valid_ssram_s1_shift_register_in};

  //cpu_instruction_master_read_data_valid_ssram_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_data_valid_ssram_s1_shift_register <= 0;
      else 
        cpu_instruction_master_read_data_valid_ssram_s1_shift_register <= p1_cpu_instruction_master_read_data_valid_ssram_s1_shift_register;
    end


  //local readdatavalid cpu_instruction_master_read_data_valid_ssram_s1, which is an e_mux
  assign cpu_instruction_master_read_data_valid_ssram_s1 = cpu_instruction_master_read_data_valid_ssram_s1_shift_register[3];

  //allow new arb cycle for tristate_bridge/avalon_slave, which is an e_assign
  assign tristate_bridge_avalon_slave_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for ssram/s1, which is an e_assign
  assign tristate_bridge_avalon_slave_master_qreq_vector[0] = cpu_instruction_master_qualified_request_ssram_s1;

  //cpu/instruction_master grant ssram/s1, which is an e_assign
  assign cpu_instruction_master_granted_ssram_s1 = tristate_bridge_avalon_slave_grant_vector[0];

  //cpu/instruction_master saved-grant ssram/s1, which is an e_assign
  assign cpu_instruction_master_saved_grant_ssram_s1 = tristate_bridge_avalon_slave_arb_winner[0] && cpu_instruction_master_requests_ssram_s1;

  //cpu/data_master assignment into master qualified-requests vector for ssram/s1, which is an e_assign
  assign tristate_bridge_avalon_slave_master_qreq_vector[1] = cpu_data_master_qualified_request_ssram_s1;

  //cpu/data_master grant ssram/s1, which is an e_assign
  assign cpu_data_master_granted_ssram_s1 = tristate_bridge_avalon_slave_grant_vector[1];

  //cpu/data_master saved-grant ssram/s1, which is an e_assign
  assign cpu_data_master_saved_grant_ssram_s1 = tristate_bridge_avalon_slave_arb_winner[1] && cpu_data_master_requests_ssram_s1;

  //tristate_bridge/avalon_slave chosen-master double-vector, which is an e_assign
  assign tristate_bridge_avalon_slave_chosen_master_double_vector = {tristate_bridge_avalon_slave_master_qreq_vector, tristate_bridge_avalon_slave_master_qreq_vector} & ({~tristate_bridge_avalon_slave_master_qreq_vector, ~tristate_bridge_avalon_slave_master_qreq_vector} + tristate_bridge_avalon_slave_arb_addend);

  //stable onehot encoding of arb winner
  assign tristate_bridge_avalon_slave_arb_winner = (tristate_bridge_avalon_slave_allow_new_arb_cycle & | tristate_bridge_avalon_slave_grant_vector) ? tristate_bridge_avalon_slave_grant_vector : tristate_bridge_avalon_slave_saved_chosen_master_vector;

  //saved tristate_bridge_avalon_slave_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_avalon_slave_saved_chosen_master_vector <= 0;
      else if (tristate_bridge_avalon_slave_allow_new_arb_cycle)
          tristate_bridge_avalon_slave_saved_chosen_master_vector <= |tristate_bridge_avalon_slave_grant_vector ? tristate_bridge_avalon_slave_grant_vector : tristate_bridge_avalon_slave_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign tristate_bridge_avalon_slave_grant_vector = {(tristate_bridge_avalon_slave_chosen_master_double_vector[1] | tristate_bridge_avalon_slave_chosen_master_double_vector[3]),
    (tristate_bridge_avalon_slave_chosen_master_double_vector[0] | tristate_bridge_avalon_slave_chosen_master_double_vector[2])};

  //tristate_bridge/avalon_slave chosen master rotated left, which is an e_assign
  assign tristate_bridge_avalon_slave_chosen_master_rot_left = (tristate_bridge_avalon_slave_arb_winner << 1) ? (tristate_bridge_avalon_slave_arb_winner << 1) : 1;

  //tristate_bridge/avalon_slave's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_avalon_slave_arb_addend <= 1;
      else if (|tristate_bridge_avalon_slave_grant_vector)
          tristate_bridge_avalon_slave_arb_addend <= tristate_bridge_avalon_slave_end_xfer? tristate_bridge_avalon_slave_chosen_master_rot_left : tristate_bridge_avalon_slave_grant_vector;
    end


  //~adsc_n_to_the_ssram of type begintransfer to ~p1_adsc_n_to_the_ssram, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          adsc_n_to_the_ssram <= ~0;
      else 
        adsc_n_to_the_ssram <= p1_adsc_n_to_the_ssram;
    end


  assign p1_adsc_n_to_the_ssram = ~tristate_bridge_avalon_slave_begins_xfer;
  //~outputenable_n_to_the_ssram of type outputenable to ~p1_outputenable_n_to_the_ssram, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          outputenable_n_to_the_ssram <= ~0;
      else 
        outputenable_n_to_the_ssram <= p1_outputenable_n_to_the_ssram;
    end


  //~p1_outputenable_n_to_the_ssram assignment, which is an e_mux
  assign p1_outputenable_n_to_the_ssram = ~((|cpu_data_master_read_data_valid_ssram_s1_shift_register[1 : 0]) | (|cpu_instruction_master_read_data_valid_ssram_s1_shift_register[1 : 0]) | ssram_s1_in_a_read_cycle);

  assign p1_chipenable1_n_to_the_ssram = ~(cpu_data_master_granted_ssram_s1 | cpu_instruction_master_granted_ssram_s1 | (|cpu_data_master_read_data_valid_ssram_s1_shift_register[1 : 0]) | (|cpu_instruction_master_read_data_valid_ssram_s1_shift_register[1 : 0]));
  //tristate_bridge_avalon_slave_firsttransfer first transaction, which is an e_assign
  assign tristate_bridge_avalon_slave_firsttransfer = tristate_bridge_avalon_slave_begins_xfer ? tristate_bridge_avalon_slave_unreg_firsttransfer : tristate_bridge_avalon_slave_reg_firsttransfer;

  //tristate_bridge_avalon_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign tristate_bridge_avalon_slave_unreg_firsttransfer = ~(tristate_bridge_avalon_slave_slavearbiterlockenable & tristate_bridge_avalon_slave_any_continuerequest);

  //tristate_bridge_avalon_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_avalon_slave_reg_firsttransfer <= 1'b1;
      else if (tristate_bridge_avalon_slave_begins_xfer)
          tristate_bridge_avalon_slave_reg_firsttransfer <= tristate_bridge_avalon_slave_unreg_firsttransfer;
    end


  //tristate_bridge_avalon_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign tristate_bridge_avalon_slave_beginbursttransfer_internal = tristate_bridge_avalon_slave_begins_xfer;

  //tristate_bridge_avalon_slave_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign tristate_bridge_avalon_slave_arbitration_holdoff_internal = tristate_bridge_avalon_slave_begins_xfer & tristate_bridge_avalon_slave_firsttransfer;

  //~bwe_n_to_the_ssram of type write to ~p1_bwe_n_to_the_ssram, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          bwe_n_to_the_ssram <= ~0;
      else 
        bwe_n_to_the_ssram <= p1_bwe_n_to_the_ssram;
    end


  //~bw_n_to_the_ssram of type byteenable to ~p1_bw_n_to_the_ssram, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          bw_n_to_the_ssram <= ~0;
      else 
        bw_n_to_the_ssram <= p1_bw_n_to_the_ssram;
    end


  //~p1_bwe_n_to_the_ssram assignment, which is an e_mux
  assign p1_bwe_n_to_the_ssram = ~(cpu_data_master_granted_ssram_s1 & cpu_data_master_write);

  //address_to_the_ssram of type address to p1_address_to_the_ssram, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          address_to_the_ssram <= 0;
      else 
        address_to_the_ssram <= p1_address_to_the_ssram;
    end


  //p1_address_to_the_ssram mux, which is an e_mux
  assign p1_address_to_the_ssram = (cpu_data_master_granted_ssram_s1)? cpu_data_master_address_to_slave :
    cpu_instruction_master_address_to_slave;

  //d1_tristate_bridge_avalon_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_tristate_bridge_avalon_slave_end_xfer <= 1;
      else 
        d1_tristate_bridge_avalon_slave_end_xfer <= tristate_bridge_avalon_slave_end_xfer;
    end


  //ssram_s1_waits_for_read in a cycle, which is an e_mux
  assign ssram_s1_waits_for_read = ssram_s1_in_a_read_cycle & 0;

  //ssram_s1_in_a_read_cycle assignment, which is an e_assign
  assign ssram_s1_in_a_read_cycle = (cpu_data_master_granted_ssram_s1 & cpu_data_master_read) | (cpu_instruction_master_granted_ssram_s1 & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = ssram_s1_in_a_read_cycle;

  //ssram_s1_waits_for_write in a cycle, which is an e_mux
  assign ssram_s1_waits_for_write = ssram_s1_in_a_write_cycle & 0;

  //ssram_s1_in_a_write_cycle assignment, which is an e_assign
  assign ssram_s1_in_a_write_cycle = cpu_data_master_granted_ssram_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = ssram_s1_in_a_write_cycle;

  assign wait_for_ssram_s1_counter = 0;
  //~p1_bw_n_to_the_ssram byte enable port mux, which is an e_mux
  assign p1_bw_n_to_the_ssram = ~((cpu_data_master_granted_ssram_s1)? cpu_data_master_byteenable :
    -1);


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //ssram/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_ssram_s1 + cpu_instruction_master_granted_ssram_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_ssram_s1 + cpu_instruction_master_saved_grant_ssram_s1 > 1)
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

module tristate_bridge_bridge_arbitrator 
;



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module uart_s1_arbitrator (
                            // inputs:
                             clk,
                             cpu_data_master_address_to_slave,
                             cpu_data_master_latency_counter,
                             cpu_data_master_read,
                             cpu_data_master_write,
                             cpu_data_master_writedata,
                             reset_n,
                             uart_s1_dataavailable,
                             uart_s1_irq,
                             uart_s1_readdata,
                             uart_s1_readyfordata,

                            // outputs:
                             cpu_data_master_granted_uart_s1,
                             cpu_data_master_qualified_request_uart_s1,
                             cpu_data_master_read_data_valid_uart_s1,
                             cpu_data_master_requests_uart_s1,
                             d1_uart_s1_end_xfer,
                             uart_s1_address,
                             uart_s1_begintransfer,
                             uart_s1_chipselect,
                             uart_s1_dataavailable_from_sa,
                             uart_s1_irq_from_sa,
                             uart_s1_read_n,
                             uart_s1_readdata_from_sa,
                             uart_s1_readyfordata_from_sa,
                             uart_s1_reset_n,
                             uart_s1_write_n,
                             uart_s1_writedata
                          )
;

  output           cpu_data_master_granted_uart_s1;
  output           cpu_data_master_qualified_request_uart_s1;
  output           cpu_data_master_read_data_valid_uart_s1;
  output           cpu_data_master_requests_uart_s1;
  output           d1_uart_s1_end_xfer;
  output  [  2: 0] uart_s1_address;
  output           uart_s1_begintransfer;
  output           uart_s1_chipselect;
  output           uart_s1_dataavailable_from_sa;
  output           uart_s1_irq_from_sa;
  output           uart_s1_read_n;
  output  [ 15: 0] uart_s1_readdata_from_sa;
  output           uart_s1_readyfordata_from_sa;
  output           uart_s1_reset_n;
  output           uart_s1_write_n;
  output  [ 15: 0] uart_s1_writedata;
  input            clk;
  input   [ 22: 0] cpu_data_master_address_to_slave;
  input   [  2: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;
  input            uart_s1_dataavailable;
  input            uart_s1_irq;
  input   [ 15: 0] uart_s1_readdata;
  input            uart_s1_readyfordata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_uart_s1;
  wire             cpu_data_master_qualified_request_uart_s1;
  wire             cpu_data_master_read_data_valid_uart_s1;
  wire             cpu_data_master_requests_uart_s1;
  wire             cpu_data_master_saved_grant_uart_s1;
  reg              d1_reasons_to_wait;
  reg              d1_uart_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_uart_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 22: 0] shifted_address_to_uart_s1_from_cpu_data_master;
  wire    [  2: 0] uart_s1_address;
  wire             uart_s1_allgrants;
  wire             uart_s1_allow_new_arb_cycle;
  wire             uart_s1_any_bursting_master_saved_grant;
  wire             uart_s1_any_continuerequest;
  wire             uart_s1_arb_counter_enable;
  reg              uart_s1_arb_share_counter;
  wire             uart_s1_arb_share_counter_next_value;
  wire             uart_s1_arb_share_set_values;
  wire             uart_s1_beginbursttransfer_internal;
  wire             uart_s1_begins_xfer;
  wire             uart_s1_begintransfer;
  wire             uart_s1_chipselect;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_end_xfer;
  wire             uart_s1_firsttransfer;
  wire             uart_s1_grant_vector;
  wire             uart_s1_in_a_read_cycle;
  wire             uart_s1_in_a_write_cycle;
  wire             uart_s1_irq_from_sa;
  wire             uart_s1_master_qreq_vector;
  wire             uart_s1_non_bursting_master_requests;
  wire             uart_s1_read_n;
  wire    [ 15: 0] uart_s1_readdata_from_sa;
  wire             uart_s1_readyfordata_from_sa;
  reg              uart_s1_reg_firsttransfer;
  wire             uart_s1_reset_n;
  reg              uart_s1_slavearbiterlockenable;
  wire             uart_s1_slavearbiterlockenable2;
  wire             uart_s1_unreg_firsttransfer;
  wire             uart_s1_waits_for_read;
  wire             uart_s1_waits_for_write;
  wire             uart_s1_write_n;
  wire    [ 15: 0] uart_s1_writedata;
  wire             wait_for_uart_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~uart_s1_end_xfer;
    end


  assign uart_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_uart_s1));
  //assign uart_s1_readdata_from_sa = uart_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_readdata_from_sa = uart_s1_readdata;

  assign cpu_data_master_requests_uart_s1 = ({cpu_data_master_address_to_slave[22 : 5] , 5'b0} == 23'h441000) & (cpu_data_master_read | cpu_data_master_write);
  //assign uart_s1_dataavailable_from_sa = uart_s1_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_dataavailable_from_sa = uart_s1_dataavailable;

  //assign uart_s1_readyfordata_from_sa = uart_s1_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_readyfordata_from_sa = uart_s1_readyfordata;

  //uart_s1_arb_share_counter set values, which is an e_mux
  assign uart_s1_arb_share_set_values = 1;

  //uart_s1_non_bursting_master_requests mux, which is an e_mux
  assign uart_s1_non_bursting_master_requests = cpu_data_master_requests_uart_s1;

  //uart_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign uart_s1_any_bursting_master_saved_grant = 0;

  //uart_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign uart_s1_arb_share_counter_next_value = uart_s1_firsttransfer ? (uart_s1_arb_share_set_values - 1) : |uart_s1_arb_share_counter ? (uart_s1_arb_share_counter - 1) : 0;

  //uart_s1_allgrants all slave grants, which is an e_mux
  assign uart_s1_allgrants = |uart_s1_grant_vector;

  //uart_s1_end_xfer assignment, which is an e_assign
  assign uart_s1_end_xfer = ~(uart_s1_waits_for_read | uart_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_uart_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_uart_s1 = uart_s1_end_xfer & (~uart_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //uart_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign uart_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_uart_s1 & uart_s1_allgrants) | (end_xfer_arb_share_counter_term_uart_s1 & ~uart_s1_non_bursting_master_requests);

  //uart_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_arb_share_counter <= 0;
      else if (uart_s1_arb_counter_enable)
          uart_s1_arb_share_counter <= uart_s1_arb_share_counter_next_value;
    end


  //uart_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_slavearbiterlockenable <= 0;
      else if ((|uart_s1_master_qreq_vector & end_xfer_arb_share_counter_term_uart_s1) | (end_xfer_arb_share_counter_term_uart_s1 & ~uart_s1_non_bursting_master_requests))
          uart_s1_slavearbiterlockenable <= |uart_s1_arb_share_counter_next_value;
    end


  //cpu/data_master uart/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = uart_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //uart_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign uart_s1_slavearbiterlockenable2 = |uart_s1_arb_share_counter_next_value;

  //cpu/data_master uart/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = uart_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //uart_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign uart_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_uart_s1 = cpu_data_master_requests_uart_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_uart_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_uart_s1 = cpu_data_master_granted_uart_s1 & cpu_data_master_read & ~uart_s1_waits_for_read;

  //uart_s1_writedata mux, which is an e_mux
  assign uart_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_uart_s1 = cpu_data_master_qualified_request_uart_s1;

  //cpu/data_master saved-grant uart/s1, which is an e_assign
  assign cpu_data_master_saved_grant_uart_s1 = cpu_data_master_requests_uart_s1;

  //allow new arb cycle for uart/s1, which is an e_assign
  assign uart_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign uart_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign uart_s1_master_qreq_vector = 1;

  assign uart_s1_begintransfer = uart_s1_begins_xfer;
  //uart_s1_reset_n assignment, which is an e_assign
  assign uart_s1_reset_n = reset_n;

  assign uart_s1_chipselect = cpu_data_master_granted_uart_s1;
  //uart_s1_firsttransfer first transaction, which is an e_assign
  assign uart_s1_firsttransfer = uart_s1_begins_xfer ? uart_s1_unreg_firsttransfer : uart_s1_reg_firsttransfer;

  //uart_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign uart_s1_unreg_firsttransfer = ~(uart_s1_slavearbiterlockenable & uart_s1_any_continuerequest);

  //uart_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_reg_firsttransfer <= 1'b1;
      else if (uart_s1_begins_xfer)
          uart_s1_reg_firsttransfer <= uart_s1_unreg_firsttransfer;
    end


  //uart_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign uart_s1_beginbursttransfer_internal = uart_s1_begins_xfer;

  //~uart_s1_read_n assignment, which is an e_mux
  assign uart_s1_read_n = ~(cpu_data_master_granted_uart_s1 & cpu_data_master_read);

  //~uart_s1_write_n assignment, which is an e_mux
  assign uart_s1_write_n = ~(cpu_data_master_granted_uart_s1 & cpu_data_master_write);

  assign shifted_address_to_uart_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //uart_s1_address mux, which is an e_mux
  assign uart_s1_address = shifted_address_to_uart_s1_from_cpu_data_master >> 2;

  //d1_uart_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_uart_s1_end_xfer <= 1;
      else 
        d1_uart_s1_end_xfer <= uart_s1_end_xfer;
    end


  //uart_s1_waits_for_read in a cycle, which is an e_mux
  assign uart_s1_waits_for_read = uart_s1_in_a_read_cycle & uart_s1_begins_xfer;

  //uart_s1_in_a_read_cycle assignment, which is an e_assign
  assign uart_s1_in_a_read_cycle = cpu_data_master_granted_uart_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = uart_s1_in_a_read_cycle;

  //uart_s1_waits_for_write in a cycle, which is an e_mux
  assign uart_s1_waits_for_write = uart_s1_in_a_write_cycle & uart_s1_begins_xfer;

  //uart_s1_in_a_write_cycle assignment, which is an e_assign
  assign uart_s1_in_a_write_cycle = cpu_data_master_granted_uart_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = uart_s1_in_a_write_cycle;

  assign wait_for_uart_s1_counter = 0;
  //assign uart_s1_irq_from_sa = uart_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_irq_from_sa = uart_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //uart/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_reset_pll_c0_system_domain_synch_module (
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

module DE2_70_SOPC_reset_clk_domain_synch_module (
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

module DE2_70_SOPC (
                     // 1) global signals:
                      clk,
                      pll_c0_system,
                      pll_c1_memory,
                      reset_n,

                     // the_camera
                      avs_s1_export_address_from_the_camera,
                      avs_s1_export_clk_from_the_camera,
                      avs_s1_export_read_from_the_camera,
                      avs_s1_export_readdata_to_the_camera,
                      avs_s1_export_reset_from_the_camera,
                      avs_s1_export_write_from_the_camera,
                      avs_s1_export_writedata_from_the_camera,

                     // the_cpu
                      clkx2_to_the_cpu,
                      jtag_debug_offchip_trace_clk_from_the_cpu,
                      jtag_debug_offchip_trace_data_from_the_cpu,
                      jtag_debug_trigout_from_the_cpu,

                     // the_lcd
                      LCD_E_from_the_lcd,
                      LCD_RS_from_the_lcd,
                      LCD_RW_from_the_lcd,
                      LCD_data_to_and_from_the_lcd,

                     // the_pio_led
                      out_port_from_the_pio_led,

                     // the_pll
                      locked_from_the_pll,
                      phasedone_from_the_pll,

                     // the_tristate_bridge_avalon_slave
                      address_to_the_ssram,
                      adsc_n_to_the_ssram,
                      bw_n_to_the_ssram,
                      bwe_n_to_the_ssram,
                      chipenable1_n_to_the_ssram,
                      data_to_and_from_the_ssram,
                      outputenable_n_to_the_ssram,

                     // the_uart
                      cts_n_to_the_uart,
                      rts_n_from_the_uart,
                      rxd_to_the_uart,
                      txd_from_the_uart
                   )
;

  output           LCD_E_from_the_lcd;
  output           LCD_RS_from_the_lcd;
  output           LCD_RW_from_the_lcd;
  inout   [  7: 0] LCD_data_to_and_from_the_lcd;
  output  [ 20: 0] address_to_the_ssram;
  output           adsc_n_to_the_ssram;
  output  [  1: 0] avs_s1_export_address_from_the_camera;
  output           avs_s1_export_clk_from_the_camera;
  output           avs_s1_export_read_from_the_camera;
  output           avs_s1_export_reset_from_the_camera;
  output           avs_s1_export_write_from_the_camera;
  output  [ 31: 0] avs_s1_export_writedata_from_the_camera;
  output  [  3: 0] bw_n_to_the_ssram;
  output           bwe_n_to_the_ssram;
  output           chipenable1_n_to_the_ssram;
  inout   [ 31: 0] data_to_and_from_the_ssram;
  output           jtag_debug_offchip_trace_clk_from_the_cpu;
  output  [ 17: 0] jtag_debug_offchip_trace_data_from_the_cpu;
  output           jtag_debug_trigout_from_the_cpu;
  output           locked_from_the_pll;
  output  [  5: 0] out_port_from_the_pio_led;
  output           outputenable_n_to_the_ssram;
  output           phasedone_from_the_pll;
  output           pll_c0_system;
  output           pll_c1_memory;
  output           rts_n_from_the_uart;
  output           txd_from_the_uart;
  input   [ 31: 0] avs_s1_export_readdata_to_the_camera;
  input            clk;
  input            clkx2_to_the_cpu;
  input            cts_n_to_the_uart;
  input            reset_n;
  input            rxd_to_the_uart;

  wire    [  3: 0] DE2_70_SOPC_clock_0_in_address;
  wire    [  3: 0] DE2_70_SOPC_clock_0_in_byteenable;
  wire             DE2_70_SOPC_clock_0_in_endofpacket;
  wire             DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  wire    [  1: 0] DE2_70_SOPC_clock_0_in_nativeaddress;
  wire             DE2_70_SOPC_clock_0_in_read;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_in_readdata;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  wire             DE2_70_SOPC_clock_0_in_reset_n;
  wire             DE2_70_SOPC_clock_0_in_waitrequest;
  wire             DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_0_in_write;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_in_writedata;
  wire    [  3: 0] DE2_70_SOPC_clock_0_out_address;
  wire    [  3: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  wire    [  3: 0] DE2_70_SOPC_clock_0_out_byteenable;
  wire             DE2_70_SOPC_clock_0_out_endofpacket;
  wire             DE2_70_SOPC_clock_0_out_granted_pll_pll_slave;
  wire    [  1: 0] DE2_70_SOPC_clock_0_out_nativeaddress;
  wire             DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  wire             DE2_70_SOPC_clock_0_out_read;
  wire             DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_out_readdata;
  wire             DE2_70_SOPC_clock_0_out_requests_pll_pll_slave;
  wire             DE2_70_SOPC_clock_0_out_reset_n;
  wire             DE2_70_SOPC_clock_0_out_waitrequest;
  wire             DE2_70_SOPC_clock_0_out_write;
  wire    [ 31: 0] DE2_70_SOPC_clock_0_out_writedata;
  wire             LCD_E_from_the_lcd;
  wire             LCD_RS_from_the_lcd;
  wire             LCD_RW_from_the_lcd;
  wire    [  7: 0] LCD_data_to_and_from_the_lcd;
  wire    [ 20: 0] address_to_the_ssram;
  wire             adsc_n_to_the_ssram;
  wire    [  1: 0] avs_s1_export_address_from_the_camera;
  wire             avs_s1_export_clk_from_the_camera;
  wire             avs_s1_export_read_from_the_camera;
  wire             avs_s1_export_reset_from_the_camera;
  wire             avs_s1_export_write_from_the_camera;
  wire    [ 31: 0] avs_s1_export_writedata_from_the_camera;
  wire    [  3: 0] bw_n_to_the_ssram;
  wire             bwe_n_to_the_ssram;
  wire    [  1: 0] camera_s1_address;
  wire             camera_s1_read;
  wire    [ 31: 0] camera_s1_readdata;
  wire    [ 31: 0] camera_s1_readdata_from_sa;
  wire             camera_s1_reset;
  wire             camera_s1_write;
  wire    [ 31: 0] camera_s1_writedata;
  wire             chipenable1_n_to_the_ssram;
  wire             clk_reset_n;
  wire    [ 22: 0] cpu_data_master_address;
  wire    [ 22: 0] cpu_data_master_address_to_slave;
  wire    [  3: 0] cpu_data_master_byteenable;
  wire             cpu_data_master_debugaccess;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_granted_camera_s1;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_granted_lcd_control_slave;
  wire             cpu_data_master_granted_onchip_mem_s1;
  wire             cpu_data_master_granted_pio_led_s1;
  wire             cpu_data_master_granted_ssram_s1;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire             cpu_data_master_granted_timer_s1;
  wire             cpu_data_master_granted_timer_stamp_s1;
  wire             cpu_data_master_granted_uart_s1;
  wire    [ 31: 0] cpu_data_master_irq;
  wire    [  2: 0] cpu_data_master_latency_counter;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_qualified_request_camera_s1;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_lcd_control_slave;
  wire             cpu_data_master_qualified_request_onchip_mem_s1;
  wire             cpu_data_master_qualified_request_pio_led_s1;
  wire             cpu_data_master_qualified_request_ssram_s1;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_qualified_request_timer_s1;
  wire             cpu_data_master_qualified_request_timer_stamp_s1;
  wire             cpu_data_master_qualified_request_uart_s1;
  wire             cpu_data_master_read;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_read_data_valid_camera_s1;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_lcd_control_slave;
  wire             cpu_data_master_read_data_valid_onchip_mem_s1;
  wire             cpu_data_master_read_data_valid_pio_led_s1;
  wire             cpu_data_master_read_data_valid_ssram_s1;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire             cpu_data_master_read_data_valid_timer_s1;
  wire             cpu_data_master_read_data_valid_timer_stamp_s1;
  wire             cpu_data_master_read_data_valid_uart_s1;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_readdatavalid;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_0_in;
  wire             cpu_data_master_requests_camera_s1;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_requests_lcd_control_slave;
  wire             cpu_data_master_requests_onchip_mem_s1;
  wire             cpu_data_master_requests_pio_led_s1;
  wire             cpu_data_master_requests_ssram_s1;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_requests_timer_s1;
  wire             cpu_data_master_requests_timer_stamp_s1;
  wire             cpu_data_master_requests_uart_s1;
  wire             cpu_data_master_waitrequest;
  wire             cpu_data_master_write;
  wire    [ 31: 0] cpu_data_master_writedata;
  wire    [ 22: 0] cpu_instruction_master_address;
  wire    [ 22: 0] cpu_instruction_master_address_to_slave;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_granted_onchip_mem_s1;
  wire             cpu_instruction_master_granted_ssram_s1;
  wire    [  2: 0] cpu_instruction_master_latency_counter;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_onchip_mem_s1;
  wire             cpu_instruction_master_qualified_request_ssram_s1;
  wire             cpu_instruction_master_read;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_onchip_mem_s1;
  wire             cpu_instruction_master_read_data_valid_ssram_s1;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_onchip_mem_s1;
  wire             cpu_instruction_master_requests_ssram_s1;
  wire             cpu_instruction_master_waitrequest;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire             cpu_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  wire             d1_DE2_70_SOPC_clock_0_in_end_xfer;
  wire             d1_camera_s1_end_xfer;
  wire             d1_cpu_jtag_debug_module_end_xfer;
  wire             d1_jtag_uart_avalon_jtag_slave_end_xfer;
  wire             d1_lcd_control_slave_end_xfer;
  wire             d1_onchip_mem_s1_end_xfer;
  wire             d1_pio_led_s1_end_xfer;
  wire             d1_pll_pll_slave_end_xfer;
  wire             d1_sysid_control_slave_end_xfer;
  wire             d1_timer_s1_end_xfer;
  wire             d1_timer_stamp_s1_end_xfer;
  wire             d1_tristate_bridge_avalon_slave_end_xfer;
  wire             d1_uart_s1_end_xfer;
  wire    [ 31: 0] data_to_and_from_the_ssram;
  wire    [ 31: 0] incoming_data_to_and_from_the_ssram;
  wire             jtag_debug_offchip_trace_clk_from_the_cpu;
  wire    [ 17: 0] jtag_debug_offchip_trace_data_from_the_cpu;
  wire             jtag_debug_trigout_from_the_cpu;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_irq;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  wire             jtag_uart_avalon_jtag_slave_waitrequest;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [  1: 0] lcd_control_slave_address;
  wire             lcd_control_slave_begintransfer;
  wire             lcd_control_slave_read;
  wire    [  7: 0] lcd_control_slave_readdata;
  wire    [  7: 0] lcd_control_slave_readdata_from_sa;
  wire             lcd_control_slave_wait_counter_eq_0;
  wire             lcd_control_slave_write;
  wire    [  7: 0] lcd_control_slave_writedata;
  wire             locked_from_the_pll;
  wire    [ 14: 0] onchip_mem_s1_address;
  wire    [  3: 0] onchip_mem_s1_byteenable;
  wire             onchip_mem_s1_chipselect;
  wire             onchip_mem_s1_clken;
  wire    [ 31: 0] onchip_mem_s1_readdata;
  wire    [ 31: 0] onchip_mem_s1_readdata_from_sa;
  wire             onchip_mem_s1_write;
  wire    [ 31: 0] onchip_mem_s1_writedata;
  wire             out_clk_pll_c0;
  wire             out_clk_pll_c1;
  wire    [  5: 0] out_port_from_the_pio_led;
  wire             outputenable_n_to_the_ssram;
  wire             phasedone_from_the_pll;
  wire    [  1: 0] pio_led_s1_address;
  wire             pio_led_s1_chipselect;
  wire    [  5: 0] pio_led_s1_readdata;
  wire    [  5: 0] pio_led_s1_readdata_from_sa;
  wire             pio_led_s1_reset_n;
  wire             pio_led_s1_write_n;
  wire    [  5: 0] pio_led_s1_writedata;
  wire             pll_c0_system;
  wire             pll_c0_system_reset_n;
  wire             pll_c1_memory;
  wire    [  1: 0] pll_pll_slave_address;
  wire             pll_pll_slave_read;
  wire    [ 31: 0] pll_pll_slave_readdata;
  wire    [ 31: 0] pll_pll_slave_readdata_from_sa;
  wire             pll_pll_slave_reset;
  wire             pll_pll_slave_write;
  wire    [ 31: 0] pll_pll_slave_writedata;
  wire             reset_n_sources;
  wire             rts_n_from_the_uart;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_clock;
  wire    [ 31: 0] sysid_control_slave_readdata;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  wire             sysid_control_slave_reset_n;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_chipselect;
  wire             timer_s1_irq;
  wire             timer_s1_irq_from_sa;
  wire    [ 15: 0] timer_s1_readdata;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  wire             timer_s1_reset_n;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  wire    [  2: 0] timer_stamp_s1_address;
  wire             timer_stamp_s1_chipselect;
  wire             timer_stamp_s1_irq;
  wire             timer_stamp_s1_irq_from_sa;
  wire    [ 15: 0] timer_stamp_s1_readdata;
  wire    [ 15: 0] timer_stamp_s1_readdata_from_sa;
  wire             timer_stamp_s1_reset_n;
  wire             timer_stamp_s1_write_n;
  wire    [ 15: 0] timer_stamp_s1_writedata;
  wire             txd_from_the_uart;
  wire    [  2: 0] uart_s1_address;
  wire             uart_s1_begintransfer;
  wire             uart_s1_chipselect;
  wire             uart_s1_dataavailable;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_irq;
  wire             uart_s1_irq_from_sa;
  wire             uart_s1_read_n;
  wire    [ 15: 0] uart_s1_readdata;
  wire    [ 15: 0] uart_s1_readdata_from_sa;
  wire             uart_s1_readyfordata;
  wire             uart_s1_readyfordata_from_sa;
  wire             uart_s1_reset_n;
  wire             uart_s1_write_n;
  wire    [ 15: 0] uart_s1_writedata;
  DE2_70_SOPC_clock_0_in_arbitrator the_DE2_70_SOPC_clock_0_in
    (
      .DE2_70_SOPC_clock_0_in_address                           (DE2_70_SOPC_clock_0_in_address),
      .DE2_70_SOPC_clock_0_in_byteenable                        (DE2_70_SOPC_clock_0_in_byteenable),
      .DE2_70_SOPC_clock_0_in_endofpacket                       (DE2_70_SOPC_clock_0_in_endofpacket),
      .DE2_70_SOPC_clock_0_in_endofpacket_from_sa               (DE2_70_SOPC_clock_0_in_endofpacket_from_sa),
      .DE2_70_SOPC_clock_0_in_nativeaddress                     (DE2_70_SOPC_clock_0_in_nativeaddress),
      .DE2_70_SOPC_clock_0_in_read                              (DE2_70_SOPC_clock_0_in_read),
      .DE2_70_SOPC_clock_0_in_readdata                          (DE2_70_SOPC_clock_0_in_readdata),
      .DE2_70_SOPC_clock_0_in_readdata_from_sa                  (DE2_70_SOPC_clock_0_in_readdata_from_sa),
      .DE2_70_SOPC_clock_0_in_reset_n                           (DE2_70_SOPC_clock_0_in_reset_n),
      .DE2_70_SOPC_clock_0_in_waitrequest                       (DE2_70_SOPC_clock_0_in_waitrequest),
      .DE2_70_SOPC_clock_0_in_waitrequest_from_sa               (DE2_70_SOPC_clock_0_in_waitrequest_from_sa),
      .DE2_70_SOPC_clock_0_in_write                             (DE2_70_SOPC_clock_0_in_write),
      .DE2_70_SOPC_clock_0_in_writedata                         (DE2_70_SOPC_clock_0_in_writedata),
      .clk                                                      (pll_c0_system),
      .cpu_data_master_address_to_slave                         (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                               (cpu_data_master_byteenable),
      .cpu_data_master_granted_DE2_70_SOPC_clock_0_in           (cpu_data_master_granted_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_latency_counter                          (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in (cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_read                                     (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in   (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_requests_DE2_70_SOPC_clock_0_in          (cpu_data_master_requests_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_write                                    (cpu_data_master_write),
      .cpu_data_master_writedata                                (cpu_data_master_writedata),
      .d1_DE2_70_SOPC_clock_0_in_end_xfer                       (d1_DE2_70_SOPC_clock_0_in_end_xfer),
      .reset_n                                                  (pll_c0_system_reset_n)
    );

  DE2_70_SOPC_clock_0_out_arbitrator the_DE2_70_SOPC_clock_0_out
    (
      .DE2_70_SOPC_clock_0_out_address                         (DE2_70_SOPC_clock_0_out_address),
      .DE2_70_SOPC_clock_0_out_address_to_slave                (DE2_70_SOPC_clock_0_out_address_to_slave),
      .DE2_70_SOPC_clock_0_out_byteenable                      (DE2_70_SOPC_clock_0_out_byteenable),
      .DE2_70_SOPC_clock_0_out_granted_pll_pll_slave           (DE2_70_SOPC_clock_0_out_granted_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave (DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_read                            (DE2_70_SOPC_clock_0_out_read),
      .DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave   (DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_readdata                        (DE2_70_SOPC_clock_0_out_readdata),
      .DE2_70_SOPC_clock_0_out_requests_pll_pll_slave          (DE2_70_SOPC_clock_0_out_requests_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_reset_n                         (DE2_70_SOPC_clock_0_out_reset_n),
      .DE2_70_SOPC_clock_0_out_waitrequest                     (DE2_70_SOPC_clock_0_out_waitrequest),
      .DE2_70_SOPC_clock_0_out_write                           (DE2_70_SOPC_clock_0_out_write),
      .DE2_70_SOPC_clock_0_out_writedata                       (DE2_70_SOPC_clock_0_out_writedata),
      .clk                                                     (clk),
      .d1_pll_pll_slave_end_xfer                               (d1_pll_pll_slave_end_xfer),
      .pll_pll_slave_readdata_from_sa                          (pll_pll_slave_readdata_from_sa),
      .reset_n                                                 (clk_reset_n)
    );

  DE2_70_SOPC_clock_0 the_DE2_70_SOPC_clock_0
    (
      .master_address       (DE2_70_SOPC_clock_0_out_address),
      .master_byteenable    (DE2_70_SOPC_clock_0_out_byteenable),
      .master_clk           (clk),
      .master_endofpacket   (DE2_70_SOPC_clock_0_out_endofpacket),
      .master_nativeaddress (DE2_70_SOPC_clock_0_out_nativeaddress),
      .master_read          (DE2_70_SOPC_clock_0_out_read),
      .master_readdata      (DE2_70_SOPC_clock_0_out_readdata),
      .master_reset_n       (DE2_70_SOPC_clock_0_out_reset_n),
      .master_waitrequest   (DE2_70_SOPC_clock_0_out_waitrequest),
      .master_write         (DE2_70_SOPC_clock_0_out_write),
      .master_writedata     (DE2_70_SOPC_clock_0_out_writedata),
      .slave_address        (DE2_70_SOPC_clock_0_in_address),
      .slave_byteenable     (DE2_70_SOPC_clock_0_in_byteenable),
      .slave_clk            (pll_c0_system),
      .slave_endofpacket    (DE2_70_SOPC_clock_0_in_endofpacket),
      .slave_nativeaddress  (DE2_70_SOPC_clock_0_in_nativeaddress),
      .slave_read           (DE2_70_SOPC_clock_0_in_read),
      .slave_readdata       (DE2_70_SOPC_clock_0_in_readdata),
      .slave_reset_n        (DE2_70_SOPC_clock_0_in_reset_n),
      .slave_waitrequest    (DE2_70_SOPC_clock_0_in_waitrequest),
      .slave_write          (DE2_70_SOPC_clock_0_in_write),
      .slave_writedata      (DE2_70_SOPC_clock_0_in_writedata)
    );

  camera_s1_arbitrator the_camera_s1
    (
      .camera_s1_address                           (camera_s1_address),
      .camera_s1_read                              (camera_s1_read),
      .camera_s1_readdata                          (camera_s1_readdata),
      .camera_s1_readdata_from_sa                  (camera_s1_readdata_from_sa),
      .camera_s1_reset                             (camera_s1_reset),
      .camera_s1_write                             (camera_s1_write),
      .camera_s1_writedata                         (camera_s1_writedata),
      .clk                                         (pll_c0_system),
      .cpu_data_master_address_to_slave            (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_camera_s1           (cpu_data_master_granted_camera_s1),
      .cpu_data_master_latency_counter             (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_camera_s1 (cpu_data_master_qualified_request_camera_s1),
      .cpu_data_master_read                        (cpu_data_master_read),
      .cpu_data_master_read_data_valid_camera_s1   (cpu_data_master_read_data_valid_camera_s1),
      .cpu_data_master_requests_camera_s1          (cpu_data_master_requests_camera_s1),
      .cpu_data_master_write                       (cpu_data_master_write),
      .cpu_data_master_writedata                   (cpu_data_master_writedata),
      .d1_camera_s1_end_xfer                       (d1_camera_s1_end_xfer),
      .reset_n                                     (pll_c0_system_reset_n)
    );

  camera the_camera
    (
      .avs_s1_address          (camera_s1_address),
      .avs_s1_clk              (pll_c0_system),
      .avs_s1_export_address   (avs_s1_export_address_from_the_camera),
      .avs_s1_export_clk       (avs_s1_export_clk_from_the_camera),
      .avs_s1_export_read      (avs_s1_export_read_from_the_camera),
      .avs_s1_export_readdata  (avs_s1_export_readdata_to_the_camera),
      .avs_s1_export_reset     (avs_s1_export_reset_from_the_camera),
      .avs_s1_export_write     (avs_s1_export_write_from_the_camera),
      .avs_s1_export_writedata (avs_s1_export_writedata_from_the_camera),
      .avs_s1_read             (camera_s1_read),
      .avs_s1_readdata         (camera_s1_readdata),
      .avs_s1_reset            (camera_s1_reset),
      .avs_s1_write            (camera_s1_write),
      .avs_s1_writedata        (camera_s1_writedata)
    );

  cpu_jtag_debug_module_arbitrator the_cpu_jtag_debug_module
    (
      .clk                                                            (pll_c0_system),
      .cpu_data_master_address_to_slave                               (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                     (cpu_data_master_byteenable),
      .cpu_data_master_debugaccess                                    (cpu_data_master_debugaccess),
      .cpu_data_master_granted_cpu_jtag_debug_module                  (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_latency_counter                                (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module        (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_read                                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module          (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_requests_cpu_jtag_debug_module                 (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_write                                          (cpu_data_master_write),
      .cpu_data_master_writedata                                      (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_jtag_debug_module_address                                  (cpu_jtag_debug_module_address),
      .cpu_jtag_debug_module_begintransfer                            (cpu_jtag_debug_module_begintransfer),
      .cpu_jtag_debug_module_byteenable                               (cpu_jtag_debug_module_byteenable),
      .cpu_jtag_debug_module_chipselect                               (cpu_jtag_debug_module_chipselect),
      .cpu_jtag_debug_module_debugaccess                              (cpu_jtag_debug_module_debugaccess),
      .cpu_jtag_debug_module_readdata                                 (cpu_jtag_debug_module_readdata),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .cpu_jtag_debug_module_reset_n                                  (cpu_jtag_debug_module_reset_n),
      .cpu_jtag_debug_module_resetrequest                             (cpu_jtag_debug_module_resetrequest),
      .cpu_jtag_debug_module_resetrequest_from_sa                     (cpu_jtag_debug_module_resetrequest_from_sa),
      .cpu_jtag_debug_module_write                                    (cpu_jtag_debug_module_write),
      .cpu_jtag_debug_module_writedata                                (cpu_jtag_debug_module_writedata),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .reset_n                                                        (pll_c0_system_reset_n)
    );

  cpu_data_master_arbitrator the_cpu_data_master
    (
      .DE2_70_SOPC_clock_0_in_readdata_from_sa                       (DE2_70_SOPC_clock_0_in_readdata_from_sa),
      .DE2_70_SOPC_clock_0_in_waitrequest_from_sa                    (DE2_70_SOPC_clock_0_in_waitrequest_from_sa),
      .camera_s1_readdata_from_sa                                    (camera_s1_readdata_from_sa),
      .clk                                                           (pll_c0_system),
      .cpu_data_master_address                                       (cpu_data_master_address),
      .cpu_data_master_address_to_slave                              (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                    (cpu_data_master_byteenable),
      .cpu_data_master_granted_DE2_70_SOPC_clock_0_in                (cpu_data_master_granted_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_granted_camera_s1                             (cpu_data_master_granted_camera_s1),
      .cpu_data_master_granted_cpu_jtag_debug_module                 (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_granted_lcd_control_slave                     (cpu_data_master_granted_lcd_control_slave),
      .cpu_data_master_granted_onchip_mem_s1                         (cpu_data_master_granted_onchip_mem_s1),
      .cpu_data_master_granted_pio_led_s1                            (cpu_data_master_granted_pio_led_s1),
      .cpu_data_master_granted_ssram_s1                              (cpu_data_master_granted_ssram_s1),
      .cpu_data_master_granted_sysid_control_slave                   (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_granted_timer_s1                              (cpu_data_master_granted_timer_s1),
      .cpu_data_master_granted_timer_stamp_s1                        (cpu_data_master_granted_timer_stamp_s1),
      .cpu_data_master_granted_uart_s1                               (cpu_data_master_granted_uart_s1),
      .cpu_data_master_irq                                           (cpu_data_master_irq),
      .cpu_data_master_latency_counter                               (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in      (cpu_data_master_qualified_request_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_qualified_request_camera_s1                   (cpu_data_master_qualified_request_camera_s1),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module       (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_qualified_request_lcd_control_slave           (cpu_data_master_qualified_request_lcd_control_slave),
      .cpu_data_master_qualified_request_onchip_mem_s1               (cpu_data_master_qualified_request_onchip_mem_s1),
      .cpu_data_master_qualified_request_pio_led_s1                  (cpu_data_master_qualified_request_pio_led_s1),
      .cpu_data_master_qualified_request_ssram_s1                    (cpu_data_master_qualified_request_ssram_s1),
      .cpu_data_master_qualified_request_sysid_control_slave         (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_qualified_request_timer_s1                    (cpu_data_master_qualified_request_timer_s1),
      .cpu_data_master_qualified_request_timer_stamp_s1              (cpu_data_master_qualified_request_timer_stamp_s1),
      .cpu_data_master_qualified_request_uart_s1                     (cpu_data_master_qualified_request_uart_s1),
      .cpu_data_master_read                                          (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in        (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_read_data_valid_camera_s1                     (cpu_data_master_read_data_valid_camera_s1),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module         (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_read_data_valid_lcd_control_slave             (cpu_data_master_read_data_valid_lcd_control_slave),
      .cpu_data_master_read_data_valid_onchip_mem_s1                 (cpu_data_master_read_data_valid_onchip_mem_s1),
      .cpu_data_master_read_data_valid_pio_led_s1                    (cpu_data_master_read_data_valid_pio_led_s1),
      .cpu_data_master_read_data_valid_ssram_s1                      (cpu_data_master_read_data_valid_ssram_s1),
      .cpu_data_master_read_data_valid_sysid_control_slave           (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_read_data_valid_timer_s1                      (cpu_data_master_read_data_valid_timer_s1),
      .cpu_data_master_read_data_valid_timer_stamp_s1                (cpu_data_master_read_data_valid_timer_stamp_s1),
      .cpu_data_master_read_data_valid_uart_s1                       (cpu_data_master_read_data_valid_uart_s1),
      .cpu_data_master_readdata                                      (cpu_data_master_readdata),
      .cpu_data_master_readdatavalid                                 (cpu_data_master_readdatavalid),
      .cpu_data_master_requests_DE2_70_SOPC_clock_0_in               (cpu_data_master_requests_DE2_70_SOPC_clock_0_in),
      .cpu_data_master_requests_camera_s1                            (cpu_data_master_requests_camera_s1),
      .cpu_data_master_requests_cpu_jtag_debug_module                (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_requests_lcd_control_slave                    (cpu_data_master_requests_lcd_control_slave),
      .cpu_data_master_requests_onchip_mem_s1                        (cpu_data_master_requests_onchip_mem_s1),
      .cpu_data_master_requests_pio_led_s1                           (cpu_data_master_requests_pio_led_s1),
      .cpu_data_master_requests_ssram_s1                             (cpu_data_master_requests_ssram_s1),
      .cpu_data_master_requests_sysid_control_slave                  (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_requests_timer_s1                             (cpu_data_master_requests_timer_s1),
      .cpu_data_master_requests_timer_stamp_s1                       (cpu_data_master_requests_timer_stamp_s1),
      .cpu_data_master_requests_uart_s1                              (cpu_data_master_requests_uart_s1),
      .cpu_data_master_waitrequest                                   (cpu_data_master_waitrequest),
      .cpu_data_master_write                                         (cpu_data_master_write),
      .cpu_data_master_writedata                                     (cpu_data_master_writedata),
      .cpu_jtag_debug_module_readdata_from_sa                        (cpu_jtag_debug_module_readdata_from_sa),
      .d1_DE2_70_SOPC_clock_0_in_end_xfer                            (d1_DE2_70_SOPC_clock_0_in_end_xfer),
      .d1_camera_s1_end_xfer                                         (d1_camera_s1_end_xfer),
      .d1_cpu_jtag_debug_module_end_xfer                             (d1_cpu_jtag_debug_module_end_xfer),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                       (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .d1_lcd_control_slave_end_xfer                                 (d1_lcd_control_slave_end_xfer),
      .d1_onchip_mem_s1_end_xfer                                     (d1_onchip_mem_s1_end_xfer),
      .d1_pio_led_s1_end_xfer                                        (d1_pio_led_s1_end_xfer),
      .d1_sysid_control_slave_end_xfer                               (d1_sysid_control_slave_end_xfer),
      .d1_timer_s1_end_xfer                                          (d1_timer_s1_end_xfer),
      .d1_timer_stamp_s1_end_xfer                                    (d1_timer_stamp_s1_end_xfer),
      .d1_tristate_bridge_avalon_slave_end_xfer                      (d1_tristate_bridge_avalon_slave_end_xfer),
      .d1_uart_s1_end_xfer                                           (d1_uart_s1_end_xfer),
      .incoming_data_to_and_from_the_ssram                           (incoming_data_to_and_from_the_ssram),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                       (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                  (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa               (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .lcd_control_slave_readdata_from_sa                            (lcd_control_slave_readdata_from_sa),
      .lcd_control_slave_wait_counter_eq_0                           (lcd_control_slave_wait_counter_eq_0),
      .onchip_mem_s1_readdata_from_sa                                (onchip_mem_s1_readdata_from_sa),
      .pio_led_s1_readdata_from_sa                                   (pio_led_s1_readdata_from_sa),
      .reset_n                                                       (pll_c0_system_reset_n),
      .sysid_control_slave_readdata_from_sa                          (sysid_control_slave_readdata_from_sa),
      .timer_s1_irq_from_sa                                          (timer_s1_irq_from_sa),
      .timer_s1_readdata_from_sa                                     (timer_s1_readdata_from_sa),
      .timer_stamp_s1_irq_from_sa                                    (timer_stamp_s1_irq_from_sa),
      .timer_stamp_s1_readdata_from_sa                               (timer_stamp_s1_readdata_from_sa),
      .uart_s1_irq_from_sa                                           (uart_s1_irq_from_sa),
      .uart_s1_readdata_from_sa                                      (uart_s1_readdata_from_sa)
    );

  cpu_instruction_master_arbitrator the_cpu_instruction_master
    (
      .clk                                                            (pll_c0_system),
      .cpu_instruction_master_address                                 (cpu_instruction_master_address),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_granted_onchip_mem_s1                   (cpu_instruction_master_granted_onchip_mem_s1),
      .cpu_instruction_master_granted_ssram_s1                        (cpu_instruction_master_granted_ssram_s1),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_qualified_request_onchip_mem_s1         (cpu_instruction_master_qualified_request_onchip_mem_s1),
      .cpu_instruction_master_qualified_request_ssram_s1              (cpu_instruction_master_qualified_request_ssram_s1),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_read_data_valid_onchip_mem_s1           (cpu_instruction_master_read_data_valid_onchip_mem_s1),
      .cpu_instruction_master_read_data_valid_ssram_s1                (cpu_instruction_master_read_data_valid_ssram_s1),
      .cpu_instruction_master_readdata                                (cpu_instruction_master_readdata),
      .cpu_instruction_master_readdatavalid                           (cpu_instruction_master_readdatavalid),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_onchip_mem_s1                  (cpu_instruction_master_requests_onchip_mem_s1),
      .cpu_instruction_master_requests_ssram_s1                       (cpu_instruction_master_requests_ssram_s1),
      .cpu_instruction_master_waitrequest                             (cpu_instruction_master_waitrequest),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .d1_onchip_mem_s1_end_xfer                                      (d1_onchip_mem_s1_end_xfer),
      .d1_tristate_bridge_avalon_slave_end_xfer                       (d1_tristate_bridge_avalon_slave_end_xfer),
      .incoming_data_to_and_from_the_ssram                            (incoming_data_to_and_from_the_ssram),
      .onchip_mem_s1_readdata_from_sa                                 (onchip_mem_s1_readdata_from_sa),
      .reset_n                                                        (pll_c0_system_reset_n)
    );

  cpu the_cpu
    (
      .clk                                   (pll_c0_system),
      .clkx2                                 (clkx2_to_the_cpu),
      .d_address                             (cpu_data_master_address),
      .d_byteenable                          (cpu_data_master_byteenable),
      .d_irq                                 (cpu_data_master_irq),
      .d_read                                (cpu_data_master_read),
      .d_readdata                            (cpu_data_master_readdata),
      .d_readdatavalid                       (cpu_data_master_readdatavalid),
      .d_waitrequest                         (cpu_data_master_waitrequest),
      .d_write                               (cpu_data_master_write),
      .d_writedata                           (cpu_data_master_writedata),
      .i_address                             (cpu_instruction_master_address),
      .i_read                                (cpu_instruction_master_read),
      .i_readdata                            (cpu_instruction_master_readdata),
      .i_readdatavalid                       (cpu_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu_jtag_debug_module_byteenable),
      .jtag_debug_module_debugaccess         (cpu_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu_jtag_debug_module_readdata),
      .jtag_debug_module_resetrequest        (cpu_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu_jtag_debug_module_writedata),
      .jtag_debug_offchip_trace_clk          (jtag_debug_offchip_trace_clk_from_the_cpu),
      .jtag_debug_offchip_trace_data         (jtag_debug_offchip_trace_data_from_the_cpu),
      .jtag_debug_trigout                    (jtag_debug_trigout_from_the_cpu),
      .reset_n                               (cpu_jtag_debug_module_reset_n)
    );

  jtag_uart_avalon_jtag_slave_arbitrator the_jtag_uart_avalon_jtag_slave
    (
      .clk                                                           (pll_c0_system),
      .cpu_data_master_address_to_slave                              (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_latency_counter                               (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_read                                          (cpu_data_master_read),
      .cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_write                                         (cpu_data_master_write),
      .cpu_data_master_writedata                                     (cpu_data_master_writedata),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                       (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .jtag_uart_avalon_jtag_slave_address                           (jtag_uart_avalon_jtag_slave_address),
      .jtag_uart_avalon_jtag_slave_chipselect                        (jtag_uart_avalon_jtag_slave_chipselect),
      .jtag_uart_avalon_jtag_slave_dataavailable                     (jtag_uart_avalon_jtag_slave_dataavailable),
      .jtag_uart_avalon_jtag_slave_dataavailable_from_sa             (jtag_uart_avalon_jtag_slave_dataavailable_from_sa),
      .jtag_uart_avalon_jtag_slave_irq                               (jtag_uart_avalon_jtag_slave_irq),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                       (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_read_n                            (jtag_uart_avalon_jtag_slave_read_n),
      .jtag_uart_avalon_jtag_slave_readdata                          (jtag_uart_avalon_jtag_slave_readdata),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                  (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_readyfordata                      (jtag_uart_avalon_jtag_slave_readyfordata),
      .jtag_uart_avalon_jtag_slave_readyfordata_from_sa              (jtag_uart_avalon_jtag_slave_readyfordata_from_sa),
      .jtag_uart_avalon_jtag_slave_reset_n                           (jtag_uart_avalon_jtag_slave_reset_n),
      .jtag_uart_avalon_jtag_slave_waitrequest                       (jtag_uart_avalon_jtag_slave_waitrequest),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa               (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .jtag_uart_avalon_jtag_slave_write_n                           (jtag_uart_avalon_jtag_slave_write_n),
      .jtag_uart_avalon_jtag_slave_writedata                         (jtag_uart_avalon_jtag_slave_writedata),
      .reset_n                                                       (pll_c0_system_reset_n)
    );

  jtag_uart the_jtag_uart
    (
      .av_address     (jtag_uart_avalon_jtag_slave_address),
      .av_chipselect  (jtag_uart_avalon_jtag_slave_chipselect),
      .av_irq         (jtag_uart_avalon_jtag_slave_irq),
      .av_read_n      (jtag_uart_avalon_jtag_slave_read_n),
      .av_readdata    (jtag_uart_avalon_jtag_slave_readdata),
      .av_waitrequest (jtag_uart_avalon_jtag_slave_waitrequest),
      .av_write_n     (jtag_uart_avalon_jtag_slave_write_n),
      .av_writedata   (jtag_uart_avalon_jtag_slave_writedata),
      .clk            (pll_c0_system),
      .dataavailable  (jtag_uart_avalon_jtag_slave_dataavailable),
      .readyfordata   (jtag_uart_avalon_jtag_slave_readyfordata),
      .rst_n          (jtag_uart_avalon_jtag_slave_reset_n)
    );

  lcd_control_slave_arbitrator the_lcd_control_slave
    (
      .clk                                                 (pll_c0_system),
      .cpu_data_master_address_to_slave                    (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                          (cpu_data_master_byteenable),
      .cpu_data_master_granted_lcd_control_slave           (cpu_data_master_granted_lcd_control_slave),
      .cpu_data_master_latency_counter                     (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_lcd_control_slave (cpu_data_master_qualified_request_lcd_control_slave),
      .cpu_data_master_read                                (cpu_data_master_read),
      .cpu_data_master_read_data_valid_lcd_control_slave   (cpu_data_master_read_data_valid_lcd_control_slave),
      .cpu_data_master_requests_lcd_control_slave          (cpu_data_master_requests_lcd_control_slave),
      .cpu_data_master_write                               (cpu_data_master_write),
      .cpu_data_master_writedata                           (cpu_data_master_writedata),
      .d1_lcd_control_slave_end_xfer                       (d1_lcd_control_slave_end_xfer),
      .lcd_control_slave_address                           (lcd_control_slave_address),
      .lcd_control_slave_begintransfer                     (lcd_control_slave_begintransfer),
      .lcd_control_slave_read                              (lcd_control_slave_read),
      .lcd_control_slave_readdata                          (lcd_control_slave_readdata),
      .lcd_control_slave_readdata_from_sa                  (lcd_control_slave_readdata_from_sa),
      .lcd_control_slave_wait_counter_eq_0                 (lcd_control_slave_wait_counter_eq_0),
      .lcd_control_slave_write                             (lcd_control_slave_write),
      .lcd_control_slave_writedata                         (lcd_control_slave_writedata),
      .reset_n                                             (pll_c0_system_reset_n)
    );

  lcd the_lcd
    (
      .LCD_E         (LCD_E_from_the_lcd),
      .LCD_RS        (LCD_RS_from_the_lcd),
      .LCD_RW        (LCD_RW_from_the_lcd),
      .LCD_data      (LCD_data_to_and_from_the_lcd),
      .address       (lcd_control_slave_address),
      .begintransfer (lcd_control_slave_begintransfer),
      .read          (lcd_control_slave_read),
      .readdata      (lcd_control_slave_readdata),
      .write         (lcd_control_slave_write),
      .writedata     (lcd_control_slave_writedata)
    );

  onchip_mem_s1_arbitrator the_onchip_mem_s1
    (
      .clk                                                    (pll_c0_system),
      .cpu_data_master_address_to_slave                       (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                             (cpu_data_master_byteenable),
      .cpu_data_master_granted_onchip_mem_s1                  (cpu_data_master_granted_onchip_mem_s1),
      .cpu_data_master_latency_counter                        (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_onchip_mem_s1        (cpu_data_master_qualified_request_onchip_mem_s1),
      .cpu_data_master_read                                   (cpu_data_master_read),
      .cpu_data_master_read_data_valid_onchip_mem_s1          (cpu_data_master_read_data_valid_onchip_mem_s1),
      .cpu_data_master_requests_onchip_mem_s1                 (cpu_data_master_requests_onchip_mem_s1),
      .cpu_data_master_write                                  (cpu_data_master_write),
      .cpu_data_master_writedata                              (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_onchip_mem_s1           (cpu_instruction_master_granted_onchip_mem_s1),
      .cpu_instruction_master_latency_counter                 (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_onchip_mem_s1 (cpu_instruction_master_qualified_request_onchip_mem_s1),
      .cpu_instruction_master_read                            (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_onchip_mem_s1   (cpu_instruction_master_read_data_valid_onchip_mem_s1),
      .cpu_instruction_master_requests_onchip_mem_s1          (cpu_instruction_master_requests_onchip_mem_s1),
      .d1_onchip_mem_s1_end_xfer                              (d1_onchip_mem_s1_end_xfer),
      .onchip_mem_s1_address                                  (onchip_mem_s1_address),
      .onchip_mem_s1_byteenable                               (onchip_mem_s1_byteenable),
      .onchip_mem_s1_chipselect                               (onchip_mem_s1_chipselect),
      .onchip_mem_s1_clken                                    (onchip_mem_s1_clken),
      .onchip_mem_s1_readdata                                 (onchip_mem_s1_readdata),
      .onchip_mem_s1_readdata_from_sa                         (onchip_mem_s1_readdata_from_sa),
      .onchip_mem_s1_write                                    (onchip_mem_s1_write),
      .onchip_mem_s1_writedata                                (onchip_mem_s1_writedata),
      .reset_n                                                (pll_c0_system_reset_n)
    );

  onchip_mem the_onchip_mem
    (
      .address    (onchip_mem_s1_address),
      .byteenable (onchip_mem_s1_byteenable),
      .chipselect (onchip_mem_s1_chipselect),
      .clk        (pll_c0_system),
      .clken      (onchip_mem_s1_clken),
      .readdata   (onchip_mem_s1_readdata),
      .write      (onchip_mem_s1_write),
      .writedata  (onchip_mem_s1_writedata)
    );

  pio_led_s1_arbitrator the_pio_led_s1
    (
      .clk                                          (pll_c0_system),
      .cpu_data_master_address_to_slave             (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_pio_led_s1           (cpu_data_master_granted_pio_led_s1),
      .cpu_data_master_latency_counter              (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_pio_led_s1 (cpu_data_master_qualified_request_pio_led_s1),
      .cpu_data_master_read                         (cpu_data_master_read),
      .cpu_data_master_read_data_valid_pio_led_s1   (cpu_data_master_read_data_valid_pio_led_s1),
      .cpu_data_master_requests_pio_led_s1          (cpu_data_master_requests_pio_led_s1),
      .cpu_data_master_write                        (cpu_data_master_write),
      .cpu_data_master_writedata                    (cpu_data_master_writedata),
      .d1_pio_led_s1_end_xfer                       (d1_pio_led_s1_end_xfer),
      .pio_led_s1_address                           (pio_led_s1_address),
      .pio_led_s1_chipselect                        (pio_led_s1_chipselect),
      .pio_led_s1_readdata                          (pio_led_s1_readdata),
      .pio_led_s1_readdata_from_sa                  (pio_led_s1_readdata_from_sa),
      .pio_led_s1_reset_n                           (pio_led_s1_reset_n),
      .pio_led_s1_write_n                           (pio_led_s1_write_n),
      .pio_led_s1_writedata                         (pio_led_s1_writedata),
      .reset_n                                      (pll_c0_system_reset_n)
    );

  pio_led the_pio_led
    (
      .address    (pio_led_s1_address),
      .chipselect (pio_led_s1_chipselect),
      .clk        (pll_c0_system),
      .out_port   (out_port_from_the_pio_led),
      .readdata   (pio_led_s1_readdata),
      .reset_n    (pio_led_s1_reset_n),
      .write_n    (pio_led_s1_write_n),
      .writedata  (pio_led_s1_writedata)
    );

  pll_pll_slave_arbitrator the_pll_pll_slave
    (
      .DE2_70_SOPC_clock_0_out_address_to_slave                (DE2_70_SOPC_clock_0_out_address_to_slave),
      .DE2_70_SOPC_clock_0_out_granted_pll_pll_slave           (DE2_70_SOPC_clock_0_out_granted_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave (DE2_70_SOPC_clock_0_out_qualified_request_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_read                            (DE2_70_SOPC_clock_0_out_read),
      .DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave   (DE2_70_SOPC_clock_0_out_read_data_valid_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_requests_pll_pll_slave          (DE2_70_SOPC_clock_0_out_requests_pll_pll_slave),
      .DE2_70_SOPC_clock_0_out_write                           (DE2_70_SOPC_clock_0_out_write),
      .DE2_70_SOPC_clock_0_out_writedata                       (DE2_70_SOPC_clock_0_out_writedata),
      .clk                                                     (clk),
      .d1_pll_pll_slave_end_xfer                               (d1_pll_pll_slave_end_xfer),
      .pll_pll_slave_address                                   (pll_pll_slave_address),
      .pll_pll_slave_read                                      (pll_pll_slave_read),
      .pll_pll_slave_readdata                                  (pll_pll_slave_readdata),
      .pll_pll_slave_readdata_from_sa                          (pll_pll_slave_readdata_from_sa),
      .pll_pll_slave_reset                                     (pll_pll_slave_reset),
      .pll_pll_slave_write                                     (pll_pll_slave_write),
      .pll_pll_slave_writedata                                 (pll_pll_slave_writedata),
      .reset_n                                                 (clk_reset_n)
    );

  //pll_c0_system out_clk assignment, which is an e_assign
  assign pll_c0_system = out_clk_pll_c0;

  //pll_c1_memory out_clk assignment, which is an e_assign
  assign pll_c1_memory = out_clk_pll_c1;

  pll the_pll
    (
      .address   (pll_pll_slave_address),
      .c0        (out_clk_pll_c0),
      .c1        (out_clk_pll_c1),
      .clk       (clk),
      .locked    (locked_from_the_pll),
      .phasedone (phasedone_from_the_pll),
      .read      (pll_pll_slave_read),
      .readdata  (pll_pll_slave_readdata),
      .reset     (pll_pll_slave_reset),
      .write     (pll_pll_slave_write),
      .writedata (pll_pll_slave_writedata)
    );

  sysid_control_slave_arbitrator the_sysid_control_slave
    (
      .clk                                                   (pll_c0_system),
      .cpu_data_master_address_to_slave                      (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_sysid_control_slave           (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_latency_counter                       (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_sysid_control_slave (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_read                                  (cpu_data_master_read),
      .cpu_data_master_read_data_valid_sysid_control_slave   (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_requests_sysid_control_slave          (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_write                                 (cpu_data_master_write),
      .d1_sysid_control_slave_end_xfer                       (d1_sysid_control_slave_end_xfer),
      .reset_n                                               (pll_c0_system_reset_n),
      .sysid_control_slave_address                           (sysid_control_slave_address),
      .sysid_control_slave_readdata                          (sysid_control_slave_readdata),
      .sysid_control_slave_readdata_from_sa                  (sysid_control_slave_readdata_from_sa),
      .sysid_control_slave_reset_n                           (sysid_control_slave_reset_n)
    );

  sysid the_sysid
    (
      .address  (sysid_control_slave_address),
      .clock    (sysid_control_slave_clock),
      .readdata (sysid_control_slave_readdata),
      .reset_n  (sysid_control_slave_reset_n)
    );

  timer_s1_arbitrator the_timer_s1
    (
      .clk                                        (pll_c0_system),
      .cpu_data_master_address_to_slave           (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_timer_s1           (cpu_data_master_granted_timer_s1),
      .cpu_data_master_latency_counter            (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_timer_s1 (cpu_data_master_qualified_request_timer_s1),
      .cpu_data_master_read                       (cpu_data_master_read),
      .cpu_data_master_read_data_valid_timer_s1   (cpu_data_master_read_data_valid_timer_s1),
      .cpu_data_master_requests_timer_s1          (cpu_data_master_requests_timer_s1),
      .cpu_data_master_write                      (cpu_data_master_write),
      .cpu_data_master_writedata                  (cpu_data_master_writedata),
      .d1_timer_s1_end_xfer                       (d1_timer_s1_end_xfer),
      .reset_n                                    (pll_c0_system_reset_n),
      .timer_s1_address                           (timer_s1_address),
      .timer_s1_chipselect                        (timer_s1_chipselect),
      .timer_s1_irq                               (timer_s1_irq),
      .timer_s1_irq_from_sa                       (timer_s1_irq_from_sa),
      .timer_s1_readdata                          (timer_s1_readdata),
      .timer_s1_readdata_from_sa                  (timer_s1_readdata_from_sa),
      .timer_s1_reset_n                           (timer_s1_reset_n),
      .timer_s1_write_n                           (timer_s1_write_n),
      .timer_s1_writedata                         (timer_s1_writedata)
    );

  timer the_timer
    (
      .address    (timer_s1_address),
      .chipselect (timer_s1_chipselect),
      .clk        (pll_c0_system),
      .irq        (timer_s1_irq),
      .readdata   (timer_s1_readdata),
      .reset_n    (timer_s1_reset_n),
      .write_n    (timer_s1_write_n),
      .writedata  (timer_s1_writedata)
    );

  timer_stamp_s1_arbitrator the_timer_stamp_s1
    (
      .clk                                              (pll_c0_system),
      .cpu_data_master_address_to_slave                 (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_timer_stamp_s1           (cpu_data_master_granted_timer_stamp_s1),
      .cpu_data_master_latency_counter                  (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_timer_stamp_s1 (cpu_data_master_qualified_request_timer_stamp_s1),
      .cpu_data_master_read                             (cpu_data_master_read),
      .cpu_data_master_read_data_valid_timer_stamp_s1   (cpu_data_master_read_data_valid_timer_stamp_s1),
      .cpu_data_master_requests_timer_stamp_s1          (cpu_data_master_requests_timer_stamp_s1),
      .cpu_data_master_write                            (cpu_data_master_write),
      .cpu_data_master_writedata                        (cpu_data_master_writedata),
      .d1_timer_stamp_s1_end_xfer                       (d1_timer_stamp_s1_end_xfer),
      .reset_n                                          (pll_c0_system_reset_n),
      .timer_stamp_s1_address                           (timer_stamp_s1_address),
      .timer_stamp_s1_chipselect                        (timer_stamp_s1_chipselect),
      .timer_stamp_s1_irq                               (timer_stamp_s1_irq),
      .timer_stamp_s1_irq_from_sa                       (timer_stamp_s1_irq_from_sa),
      .timer_stamp_s1_readdata                          (timer_stamp_s1_readdata),
      .timer_stamp_s1_readdata_from_sa                  (timer_stamp_s1_readdata_from_sa),
      .timer_stamp_s1_reset_n                           (timer_stamp_s1_reset_n),
      .timer_stamp_s1_write_n                           (timer_stamp_s1_write_n),
      .timer_stamp_s1_writedata                         (timer_stamp_s1_writedata)
    );

  timer_stamp the_timer_stamp
    (
      .address    (timer_stamp_s1_address),
      .chipselect (timer_stamp_s1_chipselect),
      .clk        (pll_c0_system),
      .irq        (timer_stamp_s1_irq),
      .readdata   (timer_stamp_s1_readdata),
      .reset_n    (timer_stamp_s1_reset_n),
      .write_n    (timer_stamp_s1_write_n),
      .writedata  (timer_stamp_s1_writedata)
    );

  tristate_bridge_avalon_slave_arbitrator the_tristate_bridge_avalon_slave
    (
      .address_to_the_ssram                              (address_to_the_ssram),
      .adsc_n_to_the_ssram                               (adsc_n_to_the_ssram),
      .bw_n_to_the_ssram                                 (bw_n_to_the_ssram),
      .bwe_n_to_the_ssram                                (bwe_n_to_the_ssram),
      .chipenable1_n_to_the_ssram                        (chipenable1_n_to_the_ssram),
      .clk                                               (pll_c0_system),
      .cpu_data_master_address_to_slave                  (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                        (cpu_data_master_byteenable),
      .cpu_data_master_granted_ssram_s1                  (cpu_data_master_granted_ssram_s1),
      .cpu_data_master_latency_counter                   (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_ssram_s1        (cpu_data_master_qualified_request_ssram_s1),
      .cpu_data_master_read                              (cpu_data_master_read),
      .cpu_data_master_read_data_valid_ssram_s1          (cpu_data_master_read_data_valid_ssram_s1),
      .cpu_data_master_requests_ssram_s1                 (cpu_data_master_requests_ssram_s1),
      .cpu_data_master_write                             (cpu_data_master_write),
      .cpu_data_master_writedata                         (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave           (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_ssram_s1           (cpu_instruction_master_granted_ssram_s1),
      .cpu_instruction_master_latency_counter            (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_ssram_s1 (cpu_instruction_master_qualified_request_ssram_s1),
      .cpu_instruction_master_read                       (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_ssram_s1   (cpu_instruction_master_read_data_valid_ssram_s1),
      .cpu_instruction_master_requests_ssram_s1          (cpu_instruction_master_requests_ssram_s1),
      .d1_tristate_bridge_avalon_slave_end_xfer          (d1_tristate_bridge_avalon_slave_end_xfer),
      .data_to_and_from_the_ssram                        (data_to_and_from_the_ssram),
      .incoming_data_to_and_from_the_ssram               (incoming_data_to_and_from_the_ssram),
      .outputenable_n_to_the_ssram                       (outputenable_n_to_the_ssram),
      .reset_n                                           (pll_c0_system_reset_n)
    );

  uart_s1_arbitrator the_uart_s1
    (
      .clk                                       (pll_c0_system),
      .cpu_data_master_address_to_slave          (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_uart_s1           (cpu_data_master_granted_uart_s1),
      .cpu_data_master_latency_counter           (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_uart_s1 (cpu_data_master_qualified_request_uart_s1),
      .cpu_data_master_read                      (cpu_data_master_read),
      .cpu_data_master_read_data_valid_uart_s1   (cpu_data_master_read_data_valid_uart_s1),
      .cpu_data_master_requests_uart_s1          (cpu_data_master_requests_uart_s1),
      .cpu_data_master_write                     (cpu_data_master_write),
      .cpu_data_master_writedata                 (cpu_data_master_writedata),
      .d1_uart_s1_end_xfer                       (d1_uart_s1_end_xfer),
      .reset_n                                   (pll_c0_system_reset_n),
      .uart_s1_address                           (uart_s1_address),
      .uart_s1_begintransfer                     (uart_s1_begintransfer),
      .uart_s1_chipselect                        (uart_s1_chipselect),
      .uart_s1_dataavailable                     (uart_s1_dataavailable),
      .uart_s1_dataavailable_from_sa             (uart_s1_dataavailable_from_sa),
      .uart_s1_irq                               (uart_s1_irq),
      .uart_s1_irq_from_sa                       (uart_s1_irq_from_sa),
      .uart_s1_read_n                            (uart_s1_read_n),
      .uart_s1_readdata                          (uart_s1_readdata),
      .uart_s1_readdata_from_sa                  (uart_s1_readdata_from_sa),
      .uart_s1_readyfordata                      (uart_s1_readyfordata),
      .uart_s1_readyfordata_from_sa              (uart_s1_readyfordata_from_sa),
      .uart_s1_reset_n                           (uart_s1_reset_n),
      .uart_s1_write_n                           (uart_s1_write_n),
      .uart_s1_writedata                         (uart_s1_writedata)
    );

  uart the_uart
    (
      .address       (uart_s1_address),
      .begintransfer (uart_s1_begintransfer),
      .chipselect    (uart_s1_chipselect),
      .clk           (pll_c0_system),
      .cts_n         (cts_n_to_the_uart),
      .dataavailable (uart_s1_dataavailable),
      .irq           (uart_s1_irq),
      .read_n        (uart_s1_read_n),
      .readdata      (uart_s1_readdata),
      .readyfordata  (uart_s1_readyfordata),
      .reset_n       (uart_s1_reset_n),
      .rts_n         (rts_n_from_the_uart),
      .rxd           (rxd_to_the_uart),
      .txd           (txd_from_the_uart),
      .write_n       (uart_s1_write_n),
      .writedata     (uart_s1_writedata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  DE2_70_SOPC_reset_pll_c0_system_domain_synch_module DE2_70_SOPC_reset_pll_c0_system_domain_synch
    (
      .clk      (pll_c0_system),
      .data_in  (1'b1),
      .data_out (pll_c0_system_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    cpu_jtag_debug_module_resetrequest_from_sa |
    cpu_jtag_debug_module_resetrequest_from_sa |
    0);

  //reset is asserted asynchronously and deasserted synchronously
  DE2_70_SOPC_reset_clk_domain_synch_module DE2_70_SOPC_reset_clk_domain_synch
    (
      .clk      (clk),
      .data_in  (1'b1),
      .data_out (clk_reset_n),
      .reset_n  (reset_n_sources)
    );

  //DE2_70_SOPC_clock_0_out_endofpacket of type endofpacket does not connect to anything so wire it to default (0)
  assign DE2_70_SOPC_clock_0_out_endofpacket = 0;

  //sysid_control_slave_clock of type clock does not connect to anything so wire it to default (0)
  assign sysid_control_slave_clock = 0;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ssram_lane0_module (
                            // inputs:
                             clk,
                             data,
                             rdaddress,
                             rdclken,
                             reset_n,
                             wraddress,
                             wrclock,
                             wren,

                            // outputs:
                             q
                          )
;

  output  [  7: 0] q;
  input            clk;
  input   [  7: 0] data;
  input   [ 18: 0] rdaddress;
  input            rdclken;
  input            reset_n;
  input   [ 18: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [ 18: 0] d1_rdaddress;
  reg     [  7: 0] mem_array [524287: 0];
  wire    [  7: 0] q;
  reg     [ 18: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
        begin
          d1_rdaddress <= 0;
          read_address <= 0;
        end
      else if (rdclken)
        begin
          d1_rdaddress <= rdaddress;
          read_address <= d1_rdaddress;
        end
    end


  // Data read is synchronized through latent_rdaddress.
  assign q = mem_array[read_address];

initial
    $readmemh("ssram_lane0.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .rdclock (clk),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "ssram_lane0.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "REGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "REGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 19,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ssram_lane1_module (
                            // inputs:
                             clk,
                             data,
                             rdaddress,
                             rdclken,
                             reset_n,
                             wraddress,
                             wrclock,
                             wren,

                            // outputs:
                             q
                          )
;

  output  [  7: 0] q;
  input            clk;
  input   [  7: 0] data;
  input   [ 18: 0] rdaddress;
  input            rdclken;
  input            reset_n;
  input   [ 18: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [ 18: 0] d1_rdaddress;
  reg     [  7: 0] mem_array [524287: 0];
  wire    [  7: 0] q;
  reg     [ 18: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
        begin
          d1_rdaddress <= 0;
          read_address <= 0;
        end
      else if (rdclken)
        begin
          d1_rdaddress <= rdaddress;
          read_address <= d1_rdaddress;
        end
    end


  // Data read is synchronized through latent_rdaddress.
  assign q = mem_array[read_address];

initial
    $readmemh("ssram_lane1.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .rdclock (clk),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "ssram_lane1.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "REGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "REGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 19,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ssram_lane2_module (
                            // inputs:
                             clk,
                             data,
                             rdaddress,
                             rdclken,
                             reset_n,
                             wraddress,
                             wrclock,
                             wren,

                            // outputs:
                             q
                          )
;

  output  [  7: 0] q;
  input            clk;
  input   [  7: 0] data;
  input   [ 18: 0] rdaddress;
  input            rdclken;
  input            reset_n;
  input   [ 18: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [ 18: 0] d1_rdaddress;
  reg     [  7: 0] mem_array [524287: 0];
  wire    [  7: 0] q;
  reg     [ 18: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
        begin
          d1_rdaddress <= 0;
          read_address <= 0;
        end
      else if (rdclken)
        begin
          d1_rdaddress <= rdaddress;
          read_address <= d1_rdaddress;
        end
    end


  // Data read is synchronized through latent_rdaddress.
  assign q = mem_array[read_address];

initial
    $readmemh("ssram_lane2.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .rdclock (clk),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "ssram_lane2.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "REGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "REGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 19,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ssram_lane3_module (
                            // inputs:
                             clk,
                             data,
                             rdaddress,
                             rdclken,
                             reset_n,
                             wraddress,
                             wrclock,
                             wren,

                            // outputs:
                             q
                          )
;

  output  [  7: 0] q;
  input            clk;
  input   [  7: 0] data;
  input   [ 18: 0] rdaddress;
  input            rdclken;
  input            reset_n;
  input   [ 18: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [ 18: 0] d1_rdaddress;
  reg     [  7: 0] mem_array [524287: 0];
  wire    [  7: 0] q;
  reg     [ 18: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
        begin
          d1_rdaddress <= 0;
          read_address <= 0;
        end
      else if (rdclken)
        begin
          d1_rdaddress <= rdaddress;
          read_address <= d1_rdaddress;
        end
    end


  // Data read is synchronized through latent_rdaddress.
  assign q = mem_array[read_address];

initial
    $readmemh("ssram_lane3.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .rdclock (clk),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "ssram_lane3.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "REGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "REGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 19,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ssram (
               // inputs:
                address,
                adsc_n,
                bw_n,
                bwe_n,
                chipenable1_n,
                clk,
                outputenable_n,
                reset_n,

               // outputs:
                data
             )
;

  inout   [ 31: 0] data;
  input   [ 18: 0] address;
  input            adsc_n;
  input   [  3: 0] bw_n;
  input            bwe_n;
  input            chipenable1_n;
  input            clk;
  input            outputenable_n;
  input            reset_n;

  wire    [ 31: 0] data;
  wire    [  7: 0] data_0;
  wire    [  7: 0] data_1;
  wire    [  7: 0] data_2;
  wire    [  7: 0] data_3;
  wire    [ 31: 0] logic_vector_gasket;
  wire    [  7: 0] q_0;
  wire    [  7: 0] q_1;
  wire    [  7: 0] q_2;
  wire    [  7: 0] q_3;
  //s1, which is an e_ptf_slave

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  assign logic_vector_gasket = data;
  assign data_0 = logic_vector_gasket[7 : 0];
  //ssram_lane0, which is an e_ram
  ssram_lane0_module ssram_lane0
    (
      .clk       (clk),
      .data      (data_0),
      .q         (q_0),
      .rdaddress (address),
      .rdclken   (1'b1),
      .reset_n   (reset_n),
      .wraddress (address),
      .wrclock   (clk),
      .wren      (~chipenable1_n & ~bwe_n & ~bw_n[0])
    );

  assign data_1 = logic_vector_gasket[15 : 8];
  //ssram_lane1, which is an e_ram
  ssram_lane1_module ssram_lane1
    (
      .clk       (clk),
      .data      (data_1),
      .q         (q_1),
      .rdaddress (address),
      .rdclken   (1'b1),
      .reset_n   (reset_n),
      .wraddress (address),
      .wrclock   (clk),
      .wren      (~chipenable1_n & ~bwe_n & ~bw_n[1])
    );

  assign data_2 = logic_vector_gasket[23 : 16];
  //ssram_lane2, which is an e_ram
  ssram_lane2_module ssram_lane2
    (
      .clk       (clk),
      .data      (data_2),
      .q         (q_2),
      .rdaddress (address),
      .rdclken   (1'b1),
      .reset_n   (reset_n),
      .wraddress (address),
      .wrclock   (clk),
      .wren      (~chipenable1_n & ~bwe_n & ~bw_n[2])
    );

  assign data_3 = logic_vector_gasket[31 : 24];
  //ssram_lane3, which is an e_ram
  ssram_lane3_module ssram_lane3
    (
      .clk       (clk),
      .data      (data_3),
      .q         (q_3),
      .rdaddress (address),
      .rdclken   (1'b1),
      .reset_n   (reset_n),
      .wraddress (address),
      .wrclock   (clk),
      .wren      (~chipenable1_n & ~bwe_n & ~bw_n[3])
    );

  assign data = (~chipenable1_n & ~outputenable_n)? {q_3,
    q_2,
    q_1,
    q_0}: {32{1'bz}};


//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

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

`include "c:/altera/10.0/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/10.0/quartus/eda/sim_lib/220model.v"
`include "c:/altera/10.0/quartus/eda/sim_lib/sgate.v"
`include "pll.v"
`include "camera.v"
`include "DE2_70_SOPC_clock_0.v"
`include "uart.v"
`include "cpu_test_bench.v"
`include "cpu_mult_cell.v"
`include "cpu_oci_test_bench.v"
`include "cpu_jtag_debug_module_tck.v"
`include "cpu_jtag_debug_module_sysclk.v"
`include "cpu_jtag_debug_module_wrapper.v"
`include "cpu.v"
`include "sysid.v"
`include "timer.v"
`include "onchip_mem.v"
`include "pio_led.v"
`include "jtag_uart.v"
`include "lcd.v"
`include "timer_stamp.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire             DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_0_out_endofpacket;
  wire    [  1: 0] DE2_70_SOPC_clock_0_out_nativeaddress;
  wire             LCD_E_from_the_lcd;
  wire             LCD_RS_from_the_lcd;
  wire             LCD_RW_from_the_lcd;
  wire    [  7: 0] LCD_data_to_and_from_the_lcd;
  wire    [ 20: 0] address_to_the_ssram;
  wire             adsc_n_to_the_ssram;
  wire    [  1: 0] avs_s1_export_address_from_the_camera;
  wire             avs_s1_export_clk_from_the_camera;
  wire             avs_s1_export_read_from_the_camera;
  wire    [ 31: 0] avs_s1_export_readdata_to_the_camera;
  wire             avs_s1_export_reset_from_the_camera;
  wire             avs_s1_export_write_from_the_camera;
  wire    [ 31: 0] avs_s1_export_writedata_from_the_camera;
  wire    [  3: 0] bw_n_to_the_ssram;
  wire             bwe_n_to_the_ssram;
  wire             chipenable1_n_to_the_ssram;
  reg              clk;
  wire             clkx2_to_the_cpu;
  wire             cts_n_to_the_uart;
  wire    [ 31: 0] data_to_and_from_the_ssram;
  wire             jtag_debug_offchip_trace_clk_from_the_cpu;
  wire    [ 17: 0] jtag_debug_offchip_trace_data_from_the_cpu;
  wire             jtag_debug_trigout_from_the_cpu;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire             locked_from_the_pll;
  wire    [  5: 0] out_port_from_the_pio_led;
  wire             outputenable_n_to_the_ssram;
  wire             phasedone_from_the_pll;
  wire             pll_c0_system;
  wire             pll_c1_memory;
  reg              reset_n;
  wire             rts_n_from_the_uart;
  wire             rxd_to_the_uart;
  wire             sysid_control_slave_clock;
  wire             txd_from_the_uart;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_readyfordata_from_sa;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  DE2_70_SOPC DUT
    (
      .LCD_E_from_the_lcd                         (LCD_E_from_the_lcd),
      .LCD_RS_from_the_lcd                        (LCD_RS_from_the_lcd),
      .LCD_RW_from_the_lcd                        (LCD_RW_from_the_lcd),
      .LCD_data_to_and_from_the_lcd               (LCD_data_to_and_from_the_lcd),
      .address_to_the_ssram                       (address_to_the_ssram),
      .adsc_n_to_the_ssram                        (adsc_n_to_the_ssram),
      .avs_s1_export_address_from_the_camera      (avs_s1_export_address_from_the_camera),
      .avs_s1_export_clk_from_the_camera          (avs_s1_export_clk_from_the_camera),
      .avs_s1_export_read_from_the_camera         (avs_s1_export_read_from_the_camera),
      .avs_s1_export_readdata_to_the_camera       (avs_s1_export_readdata_to_the_camera),
      .avs_s1_export_reset_from_the_camera        (avs_s1_export_reset_from_the_camera),
      .avs_s1_export_write_from_the_camera        (avs_s1_export_write_from_the_camera),
      .avs_s1_export_writedata_from_the_camera    (avs_s1_export_writedata_from_the_camera),
      .bw_n_to_the_ssram                          (bw_n_to_the_ssram),
      .bwe_n_to_the_ssram                         (bwe_n_to_the_ssram),
      .chipenable1_n_to_the_ssram                 (chipenable1_n_to_the_ssram),
      .clk                                        (clk),
      .clkx2_to_the_cpu                           (clkx2_to_the_cpu),
      .cts_n_to_the_uart                          (cts_n_to_the_uart),
      .data_to_and_from_the_ssram                 (data_to_and_from_the_ssram),
      .jtag_debug_offchip_trace_clk_from_the_cpu  (jtag_debug_offchip_trace_clk_from_the_cpu),
      .jtag_debug_offchip_trace_data_from_the_cpu (jtag_debug_offchip_trace_data_from_the_cpu),
      .jtag_debug_trigout_from_the_cpu            (jtag_debug_trigout_from_the_cpu),
      .locked_from_the_pll                        (locked_from_the_pll),
      .out_port_from_the_pio_led                  (out_port_from_the_pio_led),
      .outputenable_n_to_the_ssram                (outputenable_n_to_the_ssram),
      .phasedone_from_the_pll                     (phasedone_from_the_pll),
      .pll_c0_system                              (pll_c0_system),
      .pll_c1_memory                              (pll_c1_memory),
      .reset_n                                    (reset_n),
      .rts_n_from_the_uart                        (rts_n_from_the_uart),
      .rxd_to_the_uart                            (rxd_to_the_uart),
      .txd_from_the_uart                          (txd_from_the_uart)
    );

  ssram the_ssram
    (
      .address        (address_to_the_ssram[20 : 2]),
      .adsc_n         (adsc_n_to_the_ssram),
      .bw_n           (bw_n_to_the_ssram),
      .bwe_n          (bwe_n_to_the_ssram),
      .chipenable1_n  (chipenable1_n_to_the_ssram),
      .clk            (pll_c0_system),
      .data           (data_to_and_from_the_ssram),
      .outputenable_n (outputenable_n_to_the_ssram),
      .reset_n        (reset_n)
    );

  initial
    clk = 1'b0;
  always
    #10 clk <= ~clk;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on