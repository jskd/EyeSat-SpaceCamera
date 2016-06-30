//Legal Notice: (C)2007 Altera Corporation. All rights reserved.  Your
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

module audio (
               // inputs:
                avs_s1_address,
                avs_s1_clk,
                avs_s1_export_ADCDAT,
                avs_s1_export_ADCLRC,
                avs_s1_export_BCLK,
                avs_s1_export_DACLRC,
                avs_s1_read,
                avs_s1_reset,
                avs_s1_write,
                avs_s1_writedata,

               // outputs:
                avs_s1_export_DACDAT,
                avs_s1_readdata
             )
;

  output           avs_s1_export_DACDAT;
  output  [ 32: 0] avs_s1_readdata;
  input   [  4: 0] avs_s1_address;
  input            avs_s1_clk;
  input            avs_s1_export_ADCDAT;
  input            avs_s1_export_ADCLRC;
  input            avs_s1_export_BCLK;
  input            avs_s1_export_DACLRC;
  input            avs_s1_read;
  input            avs_s1_reset;
  input            avs_s1_write;
  input   [ 32: 0] avs_s1_writedata;

  wire             avs_s1_export_DACDAT;
  wire    [ 32: 0] avs_s1_readdata;
  AUDIO_IF the_AUDIO_IF
    (
      .avs_s1_address       (avs_s1_address),
      .avs_s1_clk           (avs_s1_clk),
      .avs_s1_export_ADCDAT (avs_s1_export_ADCDAT),
      .avs_s1_export_ADCLRC (avs_s1_export_ADCLRC),
      .avs_s1_export_BCLK   (avs_s1_export_BCLK),
      .avs_s1_export_DACDAT (avs_s1_export_DACDAT),
      .avs_s1_export_DACLRC (avs_s1_export_DACLRC),
      .avs_s1_read          (avs_s1_read),
      .avs_s1_readdata      (avs_s1_readdata),
      .avs_s1_reset         (avs_s1_reset),
      .avs_s1_write         (avs_s1_write),
      .avs_s1_writedata     (avs_s1_writedata)
    );


endmodule

