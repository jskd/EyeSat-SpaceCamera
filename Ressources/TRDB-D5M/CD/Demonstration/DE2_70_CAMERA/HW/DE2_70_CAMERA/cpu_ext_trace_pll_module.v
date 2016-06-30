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


// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_ext_trace_pll_module (
                                  // inputs:
                                   clk,
                                   reset_n,

                                  // outputs:
                                   clkx2
                                )
;

  output           clkx2;
  input            clk;
  input            reset_n;

  reg              clkx2;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  initial
    clkx2 = 1'b0;
  always
     if (clkx2 == 1'b1) 
    #2 clkx2 <= ~clkx2;
     else 
    #3 clkx2 <= ~clkx2;
  

//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  
//  altclklock cpu_nios2_oci_altclklock
//    (
//      .clock1  (clkx2),
//      .inclock (clk)
//    );
//  defparam cpu_nios2_oci_altclklock.clock1_boost = 2,
//           cpu_nios2_oci_altclklock.clock1_divide = 1,
//           cpu_nios2_oci_altclklock.inclock_period = 10000,
//           cpu_nios2_oci_altclklock.intended_device_family = "CYCLONEII",
//           cpu_nios2_oci_altclklock.invalid_lock_cycles = 5,
//           cpu_nios2_oci_altclklock.invalid_lock_multiplier = 5,
//           cpu_nios2_oci_altclklock.lpm_type = "altclklock",
//           cpu_nios2_oci_altclklock.operation_mode = "NORMAL",
//           cpu_nios2_oci_altclklock.outclock_phase_shift = 0,
//           cpu_nios2_oci_altclklock.valid_lock_cycles = 1,
//           cpu_nios2_oci_altclklock.valid_lock_multiplier = 1;
//
//synthesis read_comments_as_HDL off

endmodule

