#!/bin/bash

eeprom -d /dev/i2c-9 -a 0x50 -p 1 -f /tmp/dump.bin
serial="$(dd if=/tmp/dump.bin bs=1 skip=68 count=11 2>/dev/null)"
mv /tmp/dump.bin "backups/${serial}-$(date +%s).bin"


