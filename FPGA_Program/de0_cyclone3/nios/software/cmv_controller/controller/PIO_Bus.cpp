/*
 * PIOGroup.cpp
 *
 *  Created on: 21 juin 2016
 *      Author: innovlab
 */

#include "PIO_Bus.h"

PIO_Bus::PIO_Bus(PIO& pio, const unsigned char id, const unsigned char width,
    const unsigned char left_shift):
    _pio(pio), _left_shift(left_shift), _id(id)
, _mask(((1 << width)-1) << left_shift)
    {
}

PIO_Bus::~PIO_Bus() {
}

unsigned int PIO_Bus::getValue() {
	return (_pio.getValue() & _mask) >> _left_shift;
}

void PIO_Bus::setValue(unsigned int val) {
	_pio.setValue((_pio.getValue() & (~_mask) ) | (( val << _left_shift) & _mask));
}

void PIO_Bus::allPinOn() {
	setValue(0xffffffff);
}

void PIO_Bus::allPinOff() {
	setValue(0x00);
}

void PIO_Bus::allPinTogle() {
	setValue(~getValue());
}




