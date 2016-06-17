#ifndef _UART_H_
#define _UART_H_

#include "sys/types.h"

template<class T>
class FIFO ;

typedef struct{
		 FIFO<char>*  _in_buffer;
		 unsigned long _base_adress;
} UART_interrupt_context;



class UART {

	public:

		UART(unsigned long base_adress, unsigned long irq, unsigned size_in, unsigned size_out);

		virtual ~UART();

		bool inBuffer_isEmpty( void );
		bool outBuffer_isEmpty( void );

		char buffer_getchar( void );

		void buffer_printf(const char* format, ...);

		void buffer_putchar(const char character);

		void buffer_putstr(const char* str);

		void send();

		void sendAll();

	protected:

		FIFO<char>* _in_buffer;
		FIFO<char>* _out_buffer;
		unsigned long _base_adress;
		unsigned _size_in;
		unsigned _size_out;

	private:

		UART_interrupt_context* irq_context;
};

#endif /*_UART_H_ */
