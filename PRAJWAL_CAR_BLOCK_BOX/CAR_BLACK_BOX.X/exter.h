#ifndef External_eeprom
#define External_eeprom

#define SLAVE_READ_E		0xA1
#define SLAVE_WRITE_E		0xA0


void write_external_eeprom(unsigned char address,  unsigned char data);
unsigned char read_external_eeprom(unsigned char address);

#endif
