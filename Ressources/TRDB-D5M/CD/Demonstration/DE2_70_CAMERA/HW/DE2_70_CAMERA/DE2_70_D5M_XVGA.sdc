#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 10.0 Build 218 06/27/2010 SJ Full Version
#
#************************************************************

# Copyright (C) 1991-2010 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints

create_clock -name "clock_50" -period 20ns [get_ports {iCLK_50}]
create_clock -name "clock_50_1" -period 20ns [get_ports {iCLK_50_2}]
create_clock -name "clock_50_2" -period 20ns [get_ports {iCLK_50_3}]
create_clock -name "clock_50_3" -period 20ns [get_ports {iCLK_50_4}]


# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
#derive_clock_uncertainty
# Not supported for family Cyclone II

# tsu/th constraints

# tco constraints

# tpd constraints

