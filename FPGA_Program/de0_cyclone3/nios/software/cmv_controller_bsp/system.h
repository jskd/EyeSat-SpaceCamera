/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'CPU' in SOPC Builder design 'nios'
 * SOPC Builder design path: C:/Users/innovlab/workspace/EyeSat_CMOS_Image_Sensor/FPGA_Program/de0_cyclone3/nios/nios.sopcinfo
 *
 * Generated: Mon Jun 13 12:19:22 CEST 2016
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x802820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x18
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x801020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x18
#define ALT_CPU_NAME "CPU"
#define ALT_CPU_RESET_ADDR 0x801000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x802820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x18
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x801020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x18
#define NIOS2_RESET_ADDR 0x801000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SPI
#define __ALTERA_AVALON_UART
#define __ALTERA_NIOS2_QSYS


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone III"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x803090
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x803090
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x803090
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "nios"


/*
 * cmv_transmit_data configuration
 *
 */

#define ALT_MODULE_CLASS_cmv_transmit_data altera_avalon_pio
#define CMV_TRANSMIT_DATA_BASE 0x803040
#define CMV_TRANSMIT_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define CMV_TRANSMIT_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CMV_TRANSMIT_DATA_CAPTURE 0
#define CMV_TRANSMIT_DATA_DATA_WIDTH 8
#define CMV_TRANSMIT_DATA_DO_TEST_BENCH_WIRING 0
#define CMV_TRANSMIT_DATA_DRIVEN_SIM_VALUE 0
#define CMV_TRANSMIT_DATA_EDGE_TYPE "NONE"
#define CMV_TRANSMIT_DATA_FREQ 50000000
#define CMV_TRANSMIT_DATA_HAS_IN 0
#define CMV_TRANSMIT_DATA_HAS_OUT 1
#define CMV_TRANSMIT_DATA_HAS_TRI 0
#define CMV_TRANSMIT_DATA_IRQ -1
#define CMV_TRANSMIT_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CMV_TRANSMIT_DATA_IRQ_TYPE "NONE"
#define CMV_TRANSMIT_DATA_NAME "/dev/cmv_transmit_data"
#define CMV_TRANSMIT_DATA_RESET_VALUE 0
#define CMV_TRANSMIT_DATA_SPAN 16
#define CMV_TRANSMIT_DATA_TYPE "altera_avalon_pio"


/*
 * data_ch1 configuration
 *
 */

#define ALT_MODULE_CLASS_data_ch1 altera_avalon_pio
#define DATA_CH1_BASE 0x803060
#define DATA_CH1_BIT_CLEARING_EDGE_REGISTER 0
#define DATA_CH1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DATA_CH1_CAPTURE 0
#define DATA_CH1_DATA_WIDTH 10
#define DATA_CH1_DO_TEST_BENCH_WIRING 1
#define DATA_CH1_DRIVEN_SIM_VALUE 0
#define DATA_CH1_EDGE_TYPE "NONE"
#define DATA_CH1_FREQ 50000000
#define DATA_CH1_HAS_IN 1
#define DATA_CH1_HAS_OUT 0
#define DATA_CH1_HAS_TRI 0
#define DATA_CH1_IRQ -1
#define DATA_CH1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DATA_CH1_IRQ_TYPE "NONE"
#define DATA_CH1_NAME "/dev/data_ch1"
#define DATA_CH1_RESET_VALUE 0
#define DATA_CH1_SPAN 16
#define DATA_CH1_TYPE "altera_avalon_pio"


/*
 * data_ch9 configuration
 *
 */

#define ALT_MODULE_CLASS_data_ch9 altera_avalon_pio
#define DATA_CH9_BASE 0x803050
#define DATA_CH9_BIT_CLEARING_EDGE_REGISTER 0
#define DATA_CH9_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DATA_CH9_CAPTURE 0
#define DATA_CH9_DATA_WIDTH 10
#define DATA_CH9_DO_TEST_BENCH_WIRING 1
#define DATA_CH9_DRIVEN_SIM_VALUE 0
#define DATA_CH9_EDGE_TYPE "NONE"
#define DATA_CH9_FREQ 50000000
#define DATA_CH9_HAS_IN 1
#define DATA_CH9_HAS_OUT 0
#define DATA_CH9_HAS_TRI 0
#define DATA_CH9_IRQ -1
#define DATA_CH9_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DATA_CH9_IRQ_TYPE "NONE"
#define DATA_CH9_NAME "/dev/data_ch9"
#define DATA_CH9_RESET_VALUE 0
#define DATA_CH9_SPAN 16
#define DATA_CH9_TYPE "altera_avalon_pio"


/*
 * data_clk configuration
 *
 */

#define ALT_MODULE_CLASS_data_clk altera_avalon_pio
#define DATA_CLK_BASE 0x803080
#define DATA_CLK_BIT_CLEARING_EDGE_REGISTER 0
#define DATA_CLK_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DATA_CLK_CAPTURE 1
#define DATA_CLK_DATA_WIDTH 1
#define DATA_CLK_DO_TEST_BENCH_WIRING 1
#define DATA_CLK_DRIVEN_SIM_VALUE 0
#define DATA_CLK_EDGE_TYPE "RISING"
#define DATA_CLK_FREQ 50000000
#define DATA_CLK_HAS_IN 1
#define DATA_CLK_HAS_OUT 0
#define DATA_CLK_HAS_TRI 0
#define DATA_CLK_IRQ 1
#define DATA_CLK_IRQ_INTERRUPT_CONTROLLER_ID 0
#define DATA_CLK_IRQ_TYPE "EDGE"
#define DATA_CLK_NAME "/dev/data_clk"
#define DATA_CLK_RESET_VALUE 0
#define DATA_CLK_SPAN 16
#define DATA_CLK_TYPE "altera_avalon_pio"


/*
 * data_ctr configuration
 *
 */

#define ALT_MODULE_CLASS_data_ctr altera_avalon_pio
#define DATA_CTR_BASE 0x803070
#define DATA_CTR_BIT_CLEARING_EDGE_REGISTER 0
#define DATA_CTR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DATA_CTR_CAPTURE 0
#define DATA_CTR_DATA_WIDTH 10
#define DATA_CTR_DO_TEST_BENCH_WIRING 1
#define DATA_CTR_DRIVEN_SIM_VALUE 0
#define DATA_CTR_EDGE_TYPE "NONE"
#define DATA_CTR_FREQ 50000000
#define DATA_CTR_HAS_IN 1
#define DATA_CTR_HAS_OUT 0
#define DATA_CTR_HAS_TRI 0
#define DATA_CTR_IRQ -1
#define DATA_CTR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DATA_CTR_IRQ_TYPE "NONE"
#define DATA_CTR_NAME "/dev/data_ctr"
#define DATA_CTR_RESET_VALUE 0
#define DATA_CTR_SPAN 16
#define DATA_CTR_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x803090
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x801000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "nios_onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 4096
#define ONCHIP_MEMORY_SPAN 4096
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * sdram_controller configuration
 *
 */

#define ALT_MODULE_CLASS_sdram_controller altera_avalon_new_sdram_controller
#define SDRAM_CONTROLLER_BASE 0x0
#define SDRAM_CONTROLLER_CAS_LATENCY 3
#define SDRAM_CONTROLLER_CONTENTS_INFO
#define SDRAM_CONTROLLER_INIT_NOP_DELAY 0.0
#define SDRAM_CONTROLLER_INIT_REFRESH_COMMANDS 2
#define SDRAM_CONTROLLER_IRQ -1
#define SDRAM_CONTROLLER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_CONTROLLER_IS_INITIALIZED 1
#define SDRAM_CONTROLLER_NAME "/dev/sdram_controller"
#define SDRAM_CONTROLLER_POWERUP_DELAY 100.0
#define SDRAM_CONTROLLER_REFRESH_PERIOD 15.625
#define SDRAM_CONTROLLER_REGISTER_DATA_IN 1
#define SDRAM_CONTROLLER_SDRAM_ADDR_WIDTH 0x16
#define SDRAM_CONTROLLER_SDRAM_BANK_WIDTH 2
#define SDRAM_CONTROLLER_SDRAM_COL_WIDTH 8
#define SDRAM_CONTROLLER_SDRAM_DATA_WIDTH 16
#define SDRAM_CONTROLLER_SDRAM_NUM_BANKS 4
#define SDRAM_CONTROLLER_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_CONTROLLER_SDRAM_ROW_WIDTH 12
#define SDRAM_CONTROLLER_SHARED_DATA 0
#define SDRAM_CONTROLLER_SIM_MODEL_BASE 1
#define SDRAM_CONTROLLER_SPAN 8388608
#define SDRAM_CONTROLLER_STARVATION_INDICATOR 0
#define SDRAM_CONTROLLER_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_CONTROLLER_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_CONTROLLER_T_AC 5.5
#define SDRAM_CONTROLLER_T_MRD 3
#define SDRAM_CONTROLLER_T_RCD 20.0
#define SDRAM_CONTROLLER_T_RFC 70.0
#define SDRAM_CONTROLLER_T_RP 20.0
#define SDRAM_CONTROLLER_T_WR 14.0


/*
 * spi configuration
 *
 */

#define ALT_MODULE_CLASS_spi altera_avalon_spi
#define SPI_BASE 0x803020
#define SPI_CLOCKMULT 1
#define SPI_CLOCKPHASE 0
#define SPI_CLOCKPOLARITY 0
#define SPI_CLOCKUNITS "Hz"
#define SPI_DATABITS 8
#define SPI_DATAWIDTH 16
#define SPI_DELAYMULT "1.0E-9"
#define SPI_DELAYUNITS "ns"
#define SPI_EXTRADELAY 0
#define SPI_INSERT_SYNC 0
#define SPI_IRQ 3
#define SPI_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SPI_ISMASTER 1
#define SPI_LSBFIRST 0
#define SPI_NAME "/dev/spi"
#define SPI_NUMSLAVES 1
#define SPI_PREFIX "spi_"
#define SPI_SPAN 32
#define SPI_SYNC_REG_DEPTH 2
#define SPI_TARGETCLOCK 128000u
#define SPI_TARGETSSDELAY "0.0"
#define SPI_TYPE "altera_avalon_spi"


/*
 * uart configuration
 *
 */

#define ALT_MODULE_CLASS_uart altera_avalon_uart
#define UART_BASE 0x803000
#define UART_BAUD 115200
#define UART_DATA_BITS 8
#define UART_FIXED_BAUD 1
#define UART_FREQ 50000000
#define UART_IRQ 2
#define UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define UART_NAME "/dev/uart"
#define UART_PARITY 'N'
#define UART_SIM_CHAR_STREAM ""
#define UART_SIM_TRUE_BAUD 0
#define UART_SPAN 32
#define UART_STOP_BITS 1
#define UART_SYNC_REG_DEPTH 2
#define UART_TYPE "altera_avalon_uart"
#define UART_USE_CTS_RTS 0
#define UART_USE_EOP_REGISTER 0

#endif /* __SYSTEM_H_ */
