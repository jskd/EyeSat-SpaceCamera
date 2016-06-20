/*
 * PIO.cpp
 *
 *  Created on: 20 juin 2016
 *      Author: innovlab
 */

#include "PIO.h"
#include "altera_avalon_pio_regs.h"


PIO::PIO(const unsigned long base_address, const unsigned char width, Mode mode )
	:  _base_address( base_address ), _width( width ), _mode(mode)
{
	_value= this->getValue();
}

PIO::~PIO() {
	// TODO Auto-generated destructor stub
}

void PIO::init_irq( void ) { }

unsigned int PIO::getValue() {
	return IORD_ALTERA_AVALON_PIO_DATA(_base_address);
}

void PIO::setValue(unsigned int val) {
	if (_mode == PIO::INPUT) throw("Change value of PIO in input mode");
	IOWR_ALTERA_AVALON_PIO_DATA(_base_address, val);
	_value= this->getValue();
}
