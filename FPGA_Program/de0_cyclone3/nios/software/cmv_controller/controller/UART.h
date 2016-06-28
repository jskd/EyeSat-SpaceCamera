#ifndef _UART_H_
#define _UART_H_

#include <iostream>
using namespace std;

template<class T>
class FIFO ;

typedef struct{
		 FIFO<char>*  _in_buffer;
		 unsigned long _base_adress;
} UART_interrupt_context;

class UART {

	public:

		UART(unsigned long base_adress, unsigned long irq, unsigned size_buffer=64);

		virtual ~UART();

		bool inBuffer_isEmpty( void );

		char buffer_getchar( void );

		void buffer_printf(const char* format, ...);

		void buffer_putchar(const char character);

		void buffer_putstr(const char* str);

		void send(char c);

    friend void operator<<( ostream &output,  const UART &uart );

    friend istream& operator>>( istream  &input, UART &uart );

	protected:

		FIFO<char>* _in_buffer;
		unsigned long _base_adress;
		unsigned _size_buffer;

	private:

		UART_interrupt_context* irq_context;
};

#endif /*_UART_H_ */
