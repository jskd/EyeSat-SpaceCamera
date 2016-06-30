/*
 * PIOlvdsin.h
 *
 *  Created on: 24 juin 2016
 *      Author: innovlab
 */

#ifndef _PIO_LVDS_H_
#define _PIO_LVDS_H_

#include "PIO.h"

class PIO_LVDS : PIO {
	public:
		PIO_LVDS(const unsigned long base_address, const unsigned char width,
		    Mode mode);
		virtual ~PIO_LVDS();

	protected:

		void _init_irq(void);
};

#endif /* _PIO_LVDS_H_ */
