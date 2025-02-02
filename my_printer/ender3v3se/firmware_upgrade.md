# format the SD card

For display card, you need a micro sd card

sudo mkfs.vfat -F 32 -s 8 -n "MYCARD" /dev/sda1
