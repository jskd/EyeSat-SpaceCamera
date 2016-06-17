#include "system.h"
#include "altera_avalon_uart_regs.h"
#include "priv/alt_legacy_irq.h"
#include "UART.h"
#include "../utils/FIFO.hpp"
#include "stdio.h"

#include "malloc.h"
#include "string.h"
#include "stdarg.h"

static void _UART_receive_interrupt(void* context) {
	UART_interrupt_context* interrupt_context = (UART_interrupt_context*) context;
	interrupt_context->_in_buffer->push(
	    (char) (IORD_ALTERA_AVALON_UART_RXDATA(interrupt_context->_base_adress)));
	IOWR_ALTERA_AVALON_UART_RXDATA( interrupt_context->_base_adress, 0);
}

UART::UART(unsigned long base_adress, unsigned long irq, unsigned size_in,
    unsigned size_out) {

	_base_adress = base_adress;
	_size_out = size_out;
	_size_in = size_in;
	_in_buffer = new FIFO<char>(size_in);
	_out_buffer = new FIFO<char>(size_out);

	// init irq
	irq_context = (UART_interrupt_context*) malloc(
	    sizeof(UART_interrupt_context));
	irq_context->_base_adress = _base_adress;
	irq_context->_in_buffer = _in_buffer;
	alt_irq_register(irq, irq_context, _UART_receive_interrupt);
}

UART::~UART() {
	delete _in_buffer;
	delete _out_buffer;
	free(irq_context);
}

bool UART::inBuffer_isEmpty(void) {
	return _in_buffer->isEmpty();
}

bool UART::outBuffer_isEmpty(void) {
	return _out_buffer->isEmpty();
}

char UART::buffer_getchar(void) {
	return _in_buffer->pull();
}

void UART::sendAll() {
	while (!outBuffer_isEmpty()) {
		send();
	}
}

void UART::send() {
	if (!outBuffer_isEmpty()
	    && (IORD_ALTERA_AVALON_UART_STATUS( _base_adress )
	        & ALTERA_AVALON_UART_STATUS_TRDY_MSK)) {
		IOWR_ALTERA_AVALON_UART_TXDATA(_base_adress, _out_buffer->pull());
	}
}

void UART::buffer_printf( const char* format, ... ) {

  char buffer[_size_out];
  int len;

  va_list args;
  va_start (args, format);
  len= vsnprintf(buffer, _size_out, format, args );
  va_end (args);

	for (int i = 0; i < len; i++)
		_out_buffer->push(buffer[i]);
}

void UART::buffer_putchar(const char character) {
	_out_buffer->push(character);
}

void UART::buffer_putstr(const char* str) {
	int len = strlen(str);
	for (int i = 0; i < len; i++)
		_out_buffer->push(str[i]);
}
