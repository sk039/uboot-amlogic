#!/bin/sh

TMPDIR=`mktemp -d`

cd $TMPDIR
if [ ! -x /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin/aarch64-none-elf-gcc ]; then
wget http://openlinux.amlogic.com:8000/deploy/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux.tar
sudo tar -xf $TMPDIR/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux.tar -C /opt
fi

if [ ! -x /opt/gcc-arm-none-eabi-6-2017-q2-update/bin/arm-none-eabi-gcc ]; then 
wget http://openlinux.amlogic.com:8000/deploy/gcc-arm-none-eabi-6-2017-q2-update-linux.tar.bz2
sudo tar -xf $TMPDIR/gcc-arm-none-eabi-6-2017-q2-update-linux.tar.bz2 -C /opt
fi
cd -

rm -rf $TMPDIR

