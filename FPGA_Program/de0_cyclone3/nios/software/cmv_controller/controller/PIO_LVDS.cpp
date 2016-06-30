/*
 * PIOlvdsin.cpp
 *
 *  Created on: 24 juin 2016
 *      Author: innovlab
 */

#include "PIO_LVDS.h"

#include "PIO.h"
#include "PIO_Bus.h"
#include "PIO_Pin.h"
#include "system.h"
#include "unistd.h"
#include "altera_avalon_pio_regs.h"
#include <streambuf>
#include <iostream>
#include "system.h"
#include "altera_avalon_uart_regs.h"
#include "priv/alt_legacy_irq.h"
#include "UART.h"
#include "../utils/FIFO.hpp"
#include "stdio.h"

#include "malloc.h"
#include "string.h"
#include "stdarg.h"
static volatile int edge_capture_pio;

PIO_LVDS::PIO_LVDS(const unsigned long base_address, const unsigned char width,
    Mode mode) :
		PIO(base_address, width, mode) {
}

PIO_LVDS::~PIO_LVDS() {

}

static void pio_it(void* context) {
	//count++;
	//IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, 0x55);
	/* cast the context pointer to an integer pointer. */

	/*
	 * Read the edge capture register on the button PIO.
	 * Store value.
	 */
	/* Write to the edge capture register to reset it. */
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(DATA_LVDS_IN_BASE, 0);
	/* reset interrupt capability for the Button PIO. */
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(DATA_LVDS_IN_BASE, 0x01);

}

void PIO_LVDS::_init_irq(void) {

	void* edge_capture_pio_ptr = (void*) &edge_capture_pio;

	/* Enable all 4 button interrupts. */
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(DATA_LVDS_IN_BASE, 0x01);
	/* Reset the edge capture register. */
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(DATA_LVDS_IN_BASE, 0x0);

	/* Register the ISR. */
	alt_irq_register(DATA_LVDS_IN_IRQ, edge_capture_pio_ptr, pio_it);
}
