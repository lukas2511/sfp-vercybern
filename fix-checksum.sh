#!/bin/bash

eeprom -d /dev/i2c-9 -a 0x50 -p 1 -f /tmp/dump.bin >/dev/null 2>/dev/null

sum=0

for byte in $(dd if=/tmp/dump.bin bs=1 count=62 2>/dev/null | xxd -p -c 1); do
	byte="$(printf "%d" "0x$byte")"
	sum=$(((${sum} + ${byte}) % 256))
done

checksum="$(printf "0x%02x" "${sum}")"

./unlock.sh
sleep 1
i2cset -y 9 0x50 0x3f "${checksum}"
