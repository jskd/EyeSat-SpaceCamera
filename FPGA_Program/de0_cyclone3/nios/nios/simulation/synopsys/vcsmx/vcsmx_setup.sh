
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

# ACDS 13.0sp1 232 win32 2016.06.13.14:19:19

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="nios"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/logicielge1/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/rsp_xbar_mux_001/
mkdir -p ./libraries/rsp_xbar_mux/
mkdir -p ./libraries/rsp_xbar_demux_007/
mkdir -p ./libraries/rsp_xbar_demux/
mkdir -p ./libraries/cmd_xbar_mux/
mkdir -p ./libraries/cmd_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_demux/
mkdir -p ./libraries/id_router_007/
mkdir -p ./libraries/id_router_002/
mkdir -p ./libraries/id_router/
mkdir -p ./libraries/addr_router_001/
mkdir -p ./libraries/addr_router/
mkdir -p ./libraries/sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo/
mkdir -p ./libraries/sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/cmv_transmit_data/
mkdir -p ./libraries/spi/
mkdir -p ./libraries/sdram_controller/
mkdir -p ./libraries/uart/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/onchip_memory/
mkdir -p ./libraries/data_clk/
mkdir -p ./libraries/CPU/
mkdir -p ./libraries/data_ctr/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneiii/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/nios_onchip_memory.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_CPU_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm         
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm         
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate       
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiii_atoms.vhd"             -work cycloneiii  
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiii_components.vhd"        -work cycloneiii  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_irq_mapper.vho"                                                               -work irq_mapper                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_rsp_xbar_mux_001.vho"                                                         -work rsp_xbar_mux_001                                                        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_rsp_xbar_mux.vho"                                                             -work rsp_xbar_mux                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_rsp_xbar_demux_007.vho"                                                       -work rsp_xbar_demux_007                                                      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_rsp_xbar_demux.vho"                                                           -work rsp_xbar_demux                                                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_cmd_xbar_mux.vho"                                                             -work cmd_xbar_mux                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_cmd_xbar_demux_001.vho"                                                       -work cmd_xbar_demux_001                                                      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_cmd_xbar_demux.vho"                                                           -work cmd_xbar_demux                                                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_id_router_007.vho"                                                            -work id_router_007                                                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_id_router_002.vho"                                                            -work id_router_002                                                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_id_router.vho"                                                                -work id_router                                                               
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_addr_router_001.vho"                                                          -work addr_router_001                                                         
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_addr_router.vho"                                                              -work addr_router                                                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo.vho" -work sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"   -work sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo  
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"      -work onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_cmv_transmit_data.vhd"                                                        -work cmv_transmit_data                                                       
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_spi.vhd"                                                                      -work spi                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_sdram_controller.vhd"                                                         -work sdram_controller                                                        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_sdram_controller_test_component.vhd"                                          -work sdram_controller                                                        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_uart.vhd"                                                                     -work uart                                                                    
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_jtag_uart.vhd"                                                                -work jtag_uart                                                               
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_onchip_memory.vhd"                                                            -work onchip_memory                                                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_data_clk.vhd"                                                                 -work data_clk                                                                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_CPU.vhd"                                                                      -work CPU                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_CPU_jtag_debug_module_sysclk.vhd"                                             -work CPU                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_CPU_jtag_debug_module_tck.vhd"                                                -work CPU                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_CPU_jtag_debug_module_wrapper.vhd"                                            -work CPU                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_CPU_oci_test_bench.vhd"                                                       -work CPU                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_CPU_test_bench.vhd"                                                           -work CPU                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/nios_data_ctr.vhd"                                                                 -work data_ctr                                                                
  vhdlan -xlrm "$QSYS_SIMDIR/nios.vhd"                                                                                                                                                                   
  vhdlan -xlrm "$QSYS_SIMDIR/nios_onchip_memory_s1_translator_avalon_universal_slave_0_agent.vhd"                                                                                                        
  vhdlan -xlrm "$QSYS_SIMDIR/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent.vhd"                                                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/nios_width_adapter.vhd"                                                                                                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/nios_width_adapter_001.vhd"                                                                                                                                                 
  vhdlan -xlrm "$QSYS_SIMDIR/nios_cpu_instruction_master_translator.vhd"                                                                                                                                 
  vhdlan -xlrm "$QSYS_SIMDIR/nios_cpu_data_master_translator.vhd"                                                                                                                                        
  vhdlan -xlrm "$QSYS_SIMDIR/nios_onchip_memory_s1_translator.vhd"                                                                                                                                       
  vhdlan -xlrm "$QSYS_SIMDIR/nios_cpu_jtag_debug_module_translator.vhd"                                                                                                                                  
  vhdlan -xlrm "$QSYS_SIMDIR/nios_sdram_controller_s1_translator.vhd"                                                                                                                                    
  vhdlan -xlrm "$QSYS_SIMDIR/nios_data_clk_s1_translator.vhd"                                                                                                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/nios_data_ch9_s1_translator.vhd"                                                                                                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/nios_spi_spi_control_port_translator.vhd"                                                                                                                                   
  vhdlan -xlrm "$QSYS_SIMDIR/nios_uart_s1_translator.vhd"                                                                                                                                                
  vhdlan -xlrm "$QSYS_SIMDIR/nios_jtag_uart_avalon_jtag_slave_translator.vhd"                                                                                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/nios_rst_controller.vhd"                                                                                                                                                    
  vhdlan -xlrm "$QSYS_SIMDIR/nios_rst_controller_001.vhd"                                                                                                                                                
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
