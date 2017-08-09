Just a few scripts for modifying the contents of an SFP modules EEPROM

I used https://github.com/daniel-thompson/i2c-star on a cheap STM32 board
as an USB I2C adapter but you could also do this on a Raspberry Pi or by
soldering to your mainboards smbus or whatever. It's just I2C, just a tiny
bit of magic involved.

As a breakout I used a cheap/used Cisco Twingig adapter like described here:
http://eoinpk.blogspot.de/2014/05/raspberry-pi-and-programming-eeproms-on.html

Documentation I used was mainly https://cdn.hackaday.io/files/21599924091616/AN_2030_DDMI_for_SFP_Rev_E2.pdf
which also contained the default password for the Cisco Finisar modules (0x00000000).
