/*
 * PIOPin.cpp
 *
 *  Created on: 21 juin 2016
 *      Author: innovlab
 */

#include "PIO_Pin.h"

PIO_Pin::PIO_Pin(PIO& pio, unsigned char id, unsigned int mask) :
		_pio(pio), _id(id), _mask(mask) {
}

void PIO_Pin::on(void) {
	_pio.setValue(_pio.getValue() | _mask);
}

void PIO_Pin::off(void) {
	_pio.setValue(_pio.getValue() & (~_mask));
}

void PIO_Pin::toggle(void) {
	_pio.setValue(_pio.getValue() ^ _mask);
}

unsigned char PIO_Pin::getValue(void) {
	return ((_pio.getValue() & _mask) != 0);
}



PIO_Pin::~PIO_Pin() {
}

