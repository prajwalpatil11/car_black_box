#include "main.h"
#include "exter.h"
#include "i2c.h"
#include <xc.h>

/* 
 * AT24C04 (external eeprm)
 * A0  -  Write Mode
 * A1  -  Read Mode
 */

void write_external_eeprom(unsigned char address, unsigned char data)
{
	i2c_start();
	i2c_write(SLAVE_WRITE_E);
	i2c_write(address);
	i2c_write(data);
	i2c_stop();
	for(unsigned int i = 1000;i--;);
}

unsigned char read_external_eeprom(unsigned char address)
{
	unsigned char data;

	i2c_start();
	i2c_write(SLAVE_WRITE_E);
	i2c_write(address);
	i2c_rep_start();
	i2c_write(SLAVE_READ_E);
	data = i2c_read();
	i2c_stop();

	return data;
}
