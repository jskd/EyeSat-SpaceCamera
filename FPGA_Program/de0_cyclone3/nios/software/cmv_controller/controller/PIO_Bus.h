/*
 * PIOGroup.h
 *
 *  Created on: 21 juin 2016
 *      Author: innovlab
 */

#ifndef PIOGROUP_H_
#define PIOGROUP_H_

#include "PIO.h"

class PIO_Bus {

	public:

		PIO_Bus(PIO& pio, const unsigned char id, const unsigned char width, const unsigned char left_shift);

		virtual ~PIO_Bus();

		unsigned int getValue();

		void setValue(unsigned int val);

		void allPinOn();

		void allPinOff();

		void allPinTogle();

	private:

		PIO& _pio;

		const unsigned int _mask;
		const unsigned char _left_shift;
		const unsigned int _id;
};

#endif /* PIOGROUP_H_ */
