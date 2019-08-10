#/usr/bin/env bash

set -e

DEV=/dev/sdb
PART=${DEV}1
MNTPT=/media/usb

while /bin/true; do
    read -p "create key? [yes|no] " yn
    case $yn in
    [Nn]* )
        exit
        ;;
    [Yy]* ) 
        echo "type=7" | sudo sfdisk $DEV
        sudo mkfs.exfat $PART
        sudo mount $PART $MNTPT
        cp workshop-qwc2.ova ${MNTPT}/
        sudo umount $PART
        ;;
    esac
done
