set_global_assignment -entity "nios" -library "lib_nios" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "nios" -library "lib_nios" -name IP_TOOL_VERSION "13.0sp1"
set_global_assignment -entity "nios" -library "lib_nios" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_nios" -name SPD_FILE [file join $::quartus(sip_path) "../../nios.spd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "../../nios.qsys"]

set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_onchip_memory_s1_translator_avalon_universal_slave_0_agent.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_width_adapter.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_width_adapter_001.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_cpu_instruction_master_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_cpu_data_master_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_onchip_memory_s1_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_cpu_jtag_debug_module_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_sdram_controller_s1_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_data_clk_s1_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_data_ch9_s1_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_spi_spi_control_port_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_uart_s1_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_jtag_uart_avalon_jtag_slave_translator.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_rst_controller.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "nios_rst_controller_001.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_irq_mapper.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_width_adapter.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_address_alignment.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_burst_uncompressor.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_width_adapter.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_address_alignment.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_burst_uncompressor.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_rsp_xbar_mux_001.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_rsp_xbar_mux.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_rsp_xbar_demux_007.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_rsp_xbar_demux.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_cmd_xbar_mux.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_cmd_xbar_demux_001.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_cmd_xbar_demux.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_reset_controller.v"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_reset_controller.v"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_burst_adapter.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_burst_adapter.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_id_router_007.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_id_router_002.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_id_router.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_addr_router_001.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_addr_router.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent_rdata_fifo.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_sdram_controller_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_onchip_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_slave_agent.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_slave_agent.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_master_agent.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_master_agent.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_slave_translator.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_slave_translator.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_merlin_master_translator.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_merlin_master_translator.sv"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_cmv_transmit_data.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_spi.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_sdram_controller.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_sdram_controller_test_component.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_uart.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_jtag_uart.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_onchip_memory.hex"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_onchip_memory.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_data_clk.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU.sdc"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_jtag_debug_module_sysclk.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_jtag_debug_module_tck.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_jtag_debug_module_wrapper.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_nios2_waves.do"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_ociram_default_contents.dat"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_ociram_default_contents.hex"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_ociram_default_contents.mif"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_oci_test_bench.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_rf_ram_a.dat"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_rf_ram_a.hex"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_rf_ram_a.mif"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_rf_ram_b.dat"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_rf_ram_b.hex"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_rf_ram_b.mif"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_CPU_test_bench.vhd"]
set_global_assignment -library "lib_nios" -name MISC_FILE [file join $::quartus(sip_path) "submodules/nios_data_ctr.vhd"]
