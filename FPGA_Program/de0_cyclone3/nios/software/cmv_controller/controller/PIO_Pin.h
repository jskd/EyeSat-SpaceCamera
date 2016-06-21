/*
 * PIOPin.h
 *
 *  Created on: 21 juin 2016
 *      Author: innovlab
 */

#ifndef _PIO_PIN_H_
#define _PIO_PIN_H_

#include "PIO.h"

class PIO_Pin {

	public:
		PIO_Pin(PIO& pio, unsigned char id, unsigned int mask);

		void on(void);

		void off(void);

		void toggle(void);

		virtual ~PIO_Pin();

		unsigned char getValue();

	private:

		PIO& _pio;

		unsigned char _id;

		unsigned int _mask;
};

#endif /* _PIO_PIN_H_ */
