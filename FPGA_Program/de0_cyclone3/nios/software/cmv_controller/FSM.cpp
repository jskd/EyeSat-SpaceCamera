/*
 * FSM.cpp
 *
 *  Created on: 20 juin 2016
 *      Author: innovlab
 */

#include "FSM.h"
#include "controller/UART.h"
#include "controller/SPI.h"
#include "controller/PIO.h"
#include "controller/PIO_Bus.h"
#include "controller/PIO_Pin.h"
#include "system.h"
#include "unistd.h"
#include "altera_avalon_pio_regs.h"
#include <streambuf>
#include <iostream>

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

	switch (_current_state) {
		case init:
			_current_state = select_mode;
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
			_current_state = init;
			break;
	}
}

void FSM::_init(void) {

	this->_uart = new UART(UART_BASE, UART_IRQ, 64);
	_uart->buffer_printf("Init UART ok\r\n");

	this->_spi = new SPI(SPI_BASE);
	_uart->buffer_printf("Init SPI ok\r\n");

	_pio_input = new PIO(DATA_LVDS_IN_BASE, DATA_LVDS_IN_DATA_WIDTH, PIO::INPUT);
	_bus_lvds_ctr = new PIO_Bus(*_pio_input, 1, 10, 1);
	_bus_lvds_ch0 = new PIO_Bus(*_pio_input, 1, 10, 11);
	_bus_lvds_ch9 = new PIO_Bus(*_pio_input, 1, 10, 21);
	_lvds_clk_in= new PIO_Pin(*_pio_input, 1, 0x0001);
	_uart->buffer_printf("Init PIO input ok\r\n");

	_pio_output = new PIO(CMV_TRANSMIT_DATA_BASE, CMV_TRANSMIT_DATA_DATA_WIDTH,
	    PIO::OUTPUT);
	_res_n= new PIO_Pin(*_pio_output, 0, 0x01);
	_frame_req= new PIO_Pin(*_pio_output, 1, 0x02);
	_bus_debug= new PIO_Bus(*_pio_output, 1, 6, 2);

	_uart->buffer_printf("Init PIO output ok\r\n");


	_uart->buffer_printf("set RES N = 0; frame req = 0\r\n");

	_res_n->off();
	_frame_req->off();

	usleep(1000000);

	_uart->buffer_printf(
	    "PIO_input=%08x | CLK=%01d | CTR=%03x | CH0=%03x | CH9=%03x \r\n",
	    _pio_input->getValue(), _lvds_clk_in->getValue(),  _bus_lvds_ctr->getValue(),
	    _bus_lvds_ch0->getValue(), _bus_lvds_ch9->getValue());


	usleep(1000000);

	_uart->buffer_printf("set RES N = 1\r\n");
	_res_n->on();

	usleep(1000000);

	while(1)
	{
		_uart->buffer_printf(
		    "PIO_input=%08x | CLK=%01d | CTR=%03x | CH0=%03x | CH9=%03x \r\n",
		    _pio_input->getValue(), _lvds_clk_in->getValue(),  _bus_lvds_ctr->getValue(),
		    _bus_lvds_ch0->getValue(), _bus_lvds_ch9->getValue());
		usleep(1000000);
	}
}

void FSM::_unset(void) {

	delete _uart;
	delete _spi;

	delete _bus_lvds_ctr;
	delete _bus_lvds_ch0;
	delete _bus_lvds_ch9;
	delete _lvds_clk_in;
	delete _res_n;
	delete _frame_req;
	delete _bus_debug;

	delete _pio_output;
	delete _pio_input;
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
