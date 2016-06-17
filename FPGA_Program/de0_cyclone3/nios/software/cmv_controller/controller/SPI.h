#ifndef _SPI_H_
#define _SPI_H_

#define SPI_SLAVE_CMV_ENABLE 0x00


class SPI {

	public:

		SPI(unsigned long base_address);

		virtual ~SPI();

		unsigned char readCMVRegister(unsigned char address);

		bool writeCMVRegister(unsigned char address, unsigned char value);

	protected:

		unsigned long _base_address;

};

#endif
