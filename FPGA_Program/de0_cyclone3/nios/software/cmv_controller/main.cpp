#include "system.h"
#include "controller/UART.h"

int main() {

	UART* test = new UART(UART_BASE, UART_IRQ, 64, 64);

	while (1) {
		if (!test->inBuffer_isEmpty()) {
			char c = test->buffer_getchar();
			test->buffer_printf("caractere %c %d %c\n", c, 12, c);
		}



		test->send();
	}
	return 0;
}
