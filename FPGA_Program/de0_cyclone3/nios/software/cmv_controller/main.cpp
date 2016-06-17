#include "system.h"
#include "controller/UART.h"
#include "controller/SPI.h"

int main() {

	UART* uart = new UART(UART_BASE, UART_IRQ, 64, 64);

	SPI* spi= new SPI(SPI_BASE);



	while (1) {
		if (!uart->inBuffer_isEmpty()) {
			char c = uart->buffer_getchar();
			unsigned char value;


			value = spi->readCMVRegister(72);


			uart->buffer_printf("Avant reg(72)=%d ,", value);


			bool suc = spi->writeCMVRegister(72, 3);

			uart->buffer_printf("%s", suc==true?"ok":"fail");

			value = spi->readCMVRegister(72);

			uart->buffer_printf("Apres reg(72)=%d \r\n", value);



		}
		uart->send();
	}
	return 0;
}
