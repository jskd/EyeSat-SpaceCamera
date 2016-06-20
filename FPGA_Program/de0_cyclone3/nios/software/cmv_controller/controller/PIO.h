/*
 * PIO.h
 *
 *  Created on: 20 juin 2016
 *      Author: innovlab
 */

#ifndef PIO_H_
#define PIO_H_





class PIO {
	public:

		enum Mode {
			INPUT        = 0x00,
			OUTPUT       = 0x01
		};

		PIO(const unsigned long base_address, const unsigned char lenght, Mode mode);
		virtual ~PIO();

		virtual void init_irq( void );

		unsigned int getValue();

		void setValue(unsigned int val );

	private:

		unsigned char _width;
		unsigned long _base_address;
		Mode _mode;
		unsigned int _value;

};

#endif /* PIO_H_ */
