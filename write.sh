#!/bin/bash

#NEWSTR="CISCO-FINISAR"
NEWSTR="CYBER-DISCO    "

if [[ ! "${#NEWSTR}" = "15" ]]; then
	echo "NOOOPE!"
	exit 1
fi

./unlock.sh
sleep 1
writeaddr=20

for chr in $(printf "${NEWSTR}" | xxd -p -c1); do
	i2cset -y 9 0x50 0x$(printf "%02x" ${writeaddr}) 0x$chr
	sleep 0.05
	writeaddr=$((writeaddr+1))
done

