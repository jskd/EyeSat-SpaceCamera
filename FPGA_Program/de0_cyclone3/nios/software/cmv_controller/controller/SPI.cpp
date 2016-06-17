/*
 * SPI.cpp
 *
 *  Created on: 17 juin 2016
 *      Author: innovlab
 */

#include "SPI.h"
#include "altera_avalon_spi.h"


SPI::SPI(unsigned long base_address){
	_base_address= base_address;
}

SPI::~SPI(){}


unsigned char SPI::readCMVRegister(unsigned char address) {

  unsigned char write_data[1];
  unsigned char read_data[1];

  write_data[0]= address & 0x7F;

	alt_avalon_spi_command( _base_address, SPI_SLAVE_CMV_ENABLE, 1, write_data, 1, read_data, 0x00);

	return read_data[0];
}

bool SPI::writeCMVRegister(unsigned char address, unsigned char value)
{
  unsigned char write_data[2];
  write_data[0]= address | 0x80;
  write_data[1]= value;

	alt_avalon_spi_command( _base_address, SPI_SLAVE_CMV_ENABLE, 2, write_data, 0, 0x00, 0x00);

	return (value == this->readCMVRegister(address));
}

