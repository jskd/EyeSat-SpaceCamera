/*
 * FSM.h
 *
 *  Created on: 20 juin 2016
 *      Author: innovlab
 */

#ifndef _FSM_H_
#define _FSM_H_

class UART;
class SPI;
class PIO;

typedef enum
{
	init,
	unset,
	select_mode,
	wait_request,
	spi_menu,
	spi_read,
	spi_write,
	spi_read_all
} FSM_state_t;

class FSM {
	public:

		FSM();

		virtual ~FSM();

		void action( void );

		void transition( void );


	private:

		FSM_state_t _current_state;
		UART* _uart;
		SPI* _spi;

		bool _interactive_mode;

		void _init( void );

		void _unset( void );

		void _select_mode( void );

		void _wait_request( void );

		void _spi_menu( void );

		void _spi_read( void );

		void _spi_write( void );

};

#endif /* _FSM_H_ */
