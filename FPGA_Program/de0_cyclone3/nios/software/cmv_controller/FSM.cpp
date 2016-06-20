/*
 * FSM.cpp
 *
 *  Created on: 20 juin 2016
 *      Author: innovlab
 */

#include "FSM.h"
#include "system.h"
#include "controller/UART.h"
#include "controller/SPI.h"
#include "controller/PIO.h"

FSM::FSM() {
	_current_state = init;
}

FSM::~FSM() {
	_unset();
}

void FSM::action(void) {

	switch (_current_state) {

		case init:
			_init();
			break;
		case select_mode:

			break;
		case wait_request:

			break;
		case spi_menu:

			break;

		case spi_read:

			break;

		case spi_write:

			break;
		case spi_read_all:

			break;
		case unset:
			_unset();
			break;
	}
}

void FSM::transition(void) {

	switch (_current_state)
	{
		case init:
			_current_state= select_mode;
			break;
		case select_mode:

			break;
		case wait_request:

			break;
		case spi_menu:

			break;

		case spi_read:

			break;

		case spi_write:

			break;
		case spi_read_all:

			break;
		case unset:
			_current_state= init;
			break;
	}
}

void FSM::_init(void) {
	this->_uart = new UART(UART_BASE, UART_IRQ, 64, 64);
	_uart->buffer_printf("Init UART ok\r\n");
	this->_spi = new SPI(SPI_BASE);
	_uart->buffer_printf("Init SPI ok\r\n");
	_uart->buffer_printf("reg(78)=%d\r\n", _spi->readCMVRegister(78));

	PIO* test= new PIO(DATA_LVDS_IN_BASE, DATA_LVDS_IN_DATA_WIDTH, PIO::INPUT);

	;
	_uart->buffer_printf("pio = %8x\r\n", test->getValue());

	_uart->sendAll();
}

void FSM::_unset(void) {
	delete this->_uart;
	delete this->_spi;
}


void FSM::_select_mode(void) {
	// TODO Auto-generated destructor stub
}

void FSM::_wait_request(void) {
	// TODO Auto-generated destructor stub
}

void FSM::_spi_menu(void) {
	// TODO Auto-generated
}

void FSM::_spi_read(void) {
	// TODO Auto-generated
}

void FSM::_spi_write(void) {
	// TODO Auto-generated
}
