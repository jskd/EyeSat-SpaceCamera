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
			INPUT = 0x00, OUTPUT = 0x01
		};

		PIO(const unsigned long base_address, const unsigned char width,
		    Mode mode);

		virtual ~PIO();

		unsigned int getValue();

		void setValue(unsigned int val);

		void addPin(unsigned char id, unsigned int mask);

		void addGroup(unsigned char id, const unsigned char width, const unsigned char left_shift);

	protected:

		virtual void _init_irq(void);

	private:

		unsigned char _width;
		unsigned long _base_address;
		Mode _mode;
		unsigned int _value;

};

#endif /* PIO_H_ */
