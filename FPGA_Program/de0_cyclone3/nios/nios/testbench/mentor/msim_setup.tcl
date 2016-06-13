
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2016.06.13.14:29:16

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "nios_tb"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/logicielge1/altera/13.0sp1/quartus/"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_onchip_memory.hex ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneiii_ver/  
  vmap       cycloneiii_ver   ./libraries/cycloneiii_ver/  
  ensure_lib                  ./libraries/altera/          
  vmap       altera           ./libraries/altera/          
  ensure_lib                  ./libraries/lpm/             
  vmap       lpm              ./libraries/lpm/             
  ensure_lib                  ./libraries/sgate/           
  vmap       sgate            ./libraries/sgate/           
  ensure_lib                  ./libraries/altera_mf/       
  vmap       altera_mf        ./libraries/altera_mf/       
  ensure_lib                  ./libraries/altera_lnsim/    
  vmap       altera_lnsim     ./libraries/altera_lnsim/    
  ensure_lib                  ./libraries/cycloneiii/      
  vmap       cycloneiii       ./libraries/cycloneiii/      
}
ensure_lib                                                                          ./libraries/irq_mapper/                                                              
vmap       irq_mapper                                                               ./libraries/irq_mapper/                                                              
ensure_lib                                                                          ./libraries/width_adapter/                                                           
vmap       width_adapter                                                            ./libraries/width_adapter/                                                           
ensure_lib                                                                          ./libraries/rsp_xbar_mux_001/                                                        
vmap       rsp_xbar_mux_001                                                         ./libraries/rsp_xbar_mux_001/                                                        
ensure_lib                                                                          ./libraries/rsp_xbar_mux/                                                            
vmap       rsp_xbar_mux                                                             ./libraries/rsp_xbar_mux/                                                            
ensure_lib                                                                          ./libraries/rsp_xbar_demux_007/                                                      
vmap       rsp_xbar_demux_007                                                       ./libraries/rsp_xbar_demux_007/                                                      
ensure_lib                                                                          ./libraries/rsp_xbar_demux/                                                          
vmap       rsp_xbar_demux                                                           ./libraries/rsp_xbar_demux/                                                          
ensure_lib                                                                          ./libraries/cmd_xbar_mux/                                                            
vmap       cmd_xbar_mux                                                             ./libraries/cmd_xbar_mux/                                                            
ensure_lib                                                                          ./libraries/cmd_xbar_demux_001/                                                      
vmap       cmd_xbar_demux_001                                                       ./libraries/cmd_xbar_demux_001/                                                      
ensure_lib                                                                          ./libraries/cmd_xbar_demux/                                                          
vmap       cmd_xbar_demux                                                           ./libraries/cmd_xbar_demux/                                                          
ensure_lib                                                                          ./libraries/rst_controller/                                                          
vmap       rst_controller                                                           ./libraries/rst_controller/                                                          
ensure_lib                                                                          ./libraries/burst_adapter/                                                           
vmap       burst_adapter                                                            ./libraries/burst_adapter/                                                           
ensure_lib                                                                          ./libraries/id_router_007/                                                           
vmap       id_router_007                                                            ./libraries/id_router_007/                                                           
ensure_lib                                                                          ./libraries/id_router_002/                                                           
vmap       id_router_002                                                            ./libraries/id_router_002/                                                           
ensure_lib                                                                          ./libraries/id_router/                                                               
vmap       id_router                                                                ./libraries/id_router/                                                               
ensure_lib                                                                          ./libraries/addr_router_001/                                                         
vmap       addr_router_001                                                          ./libraries/addr_router_001/                                                         
ensure_lib                                                                          ./libraries/addr_router/                                                             
vmap       addr_router                                                              ./libraries/addr_router/                                                             
ensure_lib                                                                          ./libraries/sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo/
vmap       sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo ./libraries/sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo/
ensure_lib                                                                          ./libraries/sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/  
vmap       sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo   ./libraries/sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/  
ensure_lib                                                                          ./libraries/onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/     
vmap       onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo      ./libraries/onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/     
ensure_lib                                                                          ./libraries/onchip_memory_s1_translator_avalon_universal_slave_0_agent/              
vmap       onchip_memory_s1_translator_avalon_universal_slave_0_agent               ./libraries/onchip_memory_s1_translator_avalon_universal_slave_0_agent/              
ensure_lib                                                                          ./libraries/CPU_instruction_master_translator_avalon_universal_master_0_agent/       
vmap       CPU_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/CPU_instruction_master_translator_avalon_universal_master_0_agent/       
ensure_lib                                                                          ./libraries/onchip_memory_s1_translator/                                             
vmap       onchip_memory_s1_translator                                              ./libraries/onchip_memory_s1_translator/                                             
ensure_lib                                                                          ./libraries/CPU_instruction_master_translator/                                       
vmap       CPU_instruction_master_translator                                        ./libraries/CPU_instruction_master_translator/                                       
ensure_lib                                                                          ./libraries/cmv_transmit_data/                                                       
vmap       cmv_transmit_data                                                        ./libraries/cmv_transmit_data/                                                       
ensure_lib                                                                          ./libraries/spi/                                                                     
vmap       spi                                                                      ./libraries/spi/                                                                     
ensure_lib                                                                          ./libraries/sdram_controller/                                                        
vmap       sdram_controller                                                         ./libraries/sdram_controller/                                                        
ensure_lib                                                                          ./libraries/uart/                                                                    
vmap       uart                                                                     ./libraries/uart/                                                                    
ensure_lib                                                                          ./libraries/jtag_uart/                                                               
vmap       jtag_uart                                                                ./libraries/jtag_uart/                                                               
ensure_lib                                                                          ./libraries/onchip_memory/                                                           
vmap       onchip_memory                                                            ./libraries/onchip_memory/                                                           
ensure_lib                                                                          ./libraries/data_clk/                                                                
vmap       data_clk                                                                 ./libraries/data_clk/                                                                
ensure_lib                                                                          ./libraries/CPU/                                                                     
vmap       CPU                                                                      ./libraries/CPU/                                                                     
ensure_lib                                                                          ./libraries/data_ctr/                                                                
vmap       data_ctr                                                                 ./libraries/data_ctr/                                                                
ensure_lib                                                                          ./libraries/sdram_controller_my_partner/                                             
vmap       sdram_controller_my_partner                                              ./libraries/sdram_controller_my_partner/                                             
ensure_lib                                                                          ./libraries/nios_inst_reset_bfm/                                                     
vmap       nios_inst_reset_bfm                                                      ./libraries/nios_inst_reset_bfm/                                                     
ensure_lib                                                                          ./libraries/nios_inst_clk_bfm/                                                       
vmap       nios_inst_clk_bfm                                                        ./libraries/nios_inst_clk_bfm/                                                       
ensure_lib                                                                          ./libraries/nios_inst/                                                               
vmap       nios_inst                                                                ./libraries/nios_inst/                                                               

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"  -work altera_lnsim_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiii_atoms.v"               -work cycloneiii_ver  
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiii_atoms.vhd"             -work cycloneiii      
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiii_components.vhd"        -work cycloneiii      
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_irq_mapper.vho"                                                               -work irq_mapper                                                              
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_width_adapter.sv"                                             -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_address_alignment.sv"                                         -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                        -work width_adapter                                                           
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_rsp_xbar_mux_001.vho"                                                         -work rsp_xbar_mux_001                                                        
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_rsp_xbar_mux.vho"                                                             -work rsp_xbar_mux                                                            
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_rsp_xbar_demux_007.vho"                                                       -work rsp_xbar_demux_007                                                      
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_rsp_xbar_demux.vho"                                                           -work rsp_xbar_demux                                                          
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_cmd_xbar_mux.vho"                                                             -work cmd_xbar_mux                                                            
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_cmd_xbar_demux_001.vho"                                                       -work cmd_xbar_demux_001                                                      
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_cmd_xbar_demux.vho"                                                           -work cmd_xbar_demux                                                          
  vlog     "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_reset_controller.v"                                                  -work rst_controller                                                          
  vlog     "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_reset_synchronizer.v"                                                -work rst_controller                                                          
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_burst_adapter.sv"                                             -work burst_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_address_alignment.sv"                                         -work burst_adapter                                                           
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_id_router_007.vho"                                                            -work id_router_007                                                           
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_id_router_002.vho"                                                            -work id_router_002                                                           
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_id_router.vho"                                                                -work id_router                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_addr_router_001.vho"                                                          -work addr_router_001                                                         
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_addr_router.vho"                                                              -work addr_router                                                             
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo.vho" -work sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"   -work sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo  
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"      -work onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo     
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_slave_agent.sv"                                               -work onchip_memory_s1_translator_avalon_universal_slave_0_agent              
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                        -work onchip_memory_s1_translator_avalon_universal_slave_0_agent              
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_master_agent.sv"                                              -work CPU_instruction_master_translator_avalon_universal_master_0_agent       
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_slave_translator.sv"                                          -work onchip_memory_s1_translator                                             
  vlog -sv "$QSYS_SIMDIR/nios_tb/simulation/submodules/mentor/altera_merlin_master_translator.sv"                                         -work CPU_instruction_master_translator                                       
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_cmv_transmit_data.vhd"                                                        -work cmv_transmit_data                                                       
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_spi.vhd"                                                                      -work spi                                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_sdram_controller.vhd"                                                         -work sdram_controller                                                        
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_sdram_controller_test_component.vhd"                                          -work sdram_controller                                                        
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_uart.vhd"                                                                     -work uart                                                                    
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_jtag_uart.vhd"                                                                -work jtag_uart                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_onchip_memory.vhd"                                                            -work onchip_memory                                                           
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_data_clk.vhd"                                                                 -work data_clk                                                                
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU.vhd"                                                                      -work CPU                                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_jtag_debug_module_sysclk.vhd"                                             -work CPU                                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_jtag_debug_module_tck.vhd"                                                -work CPU                                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_jtag_debug_module_wrapper.vhd"                                            -work CPU                                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_oci_test_bench.vhd"                                                       -work CPU                                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_CPU_test_bench.vhd"                                                           -work CPU                                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_data_ctr.vhd"                                                                 -work data_ctr                                                                
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/altera_sdram_partner_module.vhd"                                                   -work sdram_controller_my_partner                                             
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/altera_avalon_reset_source.vhd"                                                    -work nios_inst_reset_bfm                                                     
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/altera_avalon_clock_source.vhd"                                                    -work nios_inst_clk_bfm                                                       
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios.vhd"                                                                          -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_onchip_memory_s1_translator_avalon_universal_slave_0_agent.vhd"               -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent.vhd"            -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_width_adapter.vhd"                                                            -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_width_adapter_001.vhd"                                                        -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_cpu_instruction_master_translator.vhd"                                        -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_cpu_data_master_translator.vhd"                                               -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_onchip_memory_s1_translator.vhd"                                              -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_cpu_jtag_debug_module_translator.vhd"                                         -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_sdram_controller_s1_translator.vhd"                                           -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_data_clk_s1_translator.vhd"                                                   -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_data_ch9_s1_translator.vhd"                                                   -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_spi_spi_control_port_translator.vhd"                                          -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_uart_s1_translator.vhd"                                                       -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_jtag_uart_avalon_jtag_slave_translator.vhd"                                   -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_rst_controller.vhd"                                                           -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/submodules/nios_rst_controller_001.vhd"                                                       -work nios_inst                                                               
  vcom     "$QSYS_SIMDIR/nios_tb/simulation/nios_tb.vhd"                                                                                                                                                                
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_007 -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L id_router_007 -L id_router_002 -L id_router -L addr_router_001 -L addr_router -L sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo -L sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L onchip_memory_s1_translator_avalon_universal_slave_0_agent -L CPU_instruction_master_translator_avalon_universal_master_0_agent -L onchip_memory_s1_translator -L CPU_instruction_master_translator -L cmv_transmit_data -L spi -L sdram_controller -L uart -L jtag_uart -L onchip_memory -L data_clk -L CPU -L data_ctr -L sdram_controller_my_partner -L nios_inst_reset_bfm -L nios_inst_clk_bfm -L nios_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_007 -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L id_router_007 -L id_router_002 -L id_router -L addr_router_001 -L addr_router -L sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo -L sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L onchip_memory_s1_translator_avalon_universal_slave_0_agent -L CPU_instruction_master_translator_avalon_universal_master_0_agent -L onchip_memory_s1_translator -L CPU_instruction_master_translator -L cmv_transmit_data -L spi -L sdram_controller -L uart -L jtag_uart -L onchip_memory -L data_clk -L CPU -L data_ctr -L sdram_controller_my_partner -L nios_inst_reset_bfm -L nios_inst_clk_bfm -L nios_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
