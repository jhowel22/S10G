#!/bin/sh
wget http://github.com/jhowel22/S10G/raw/main/pkg.tgz -O /tmp/pkg.tgz
echo "Checking hash!"
hash=$(md5sum /tmp/pkg.tgz | awk '{print $1}')
echo "$hash = ad4bcbbd36cf7e4ebf92335be92b8d0b"
if [ $hash == 'ad4bcbbd36cf7e4ebf92335be92b8d0b' ]
then
echo "Same!"
tar -zxvf /tmp/pkg.tgz -C /
at_cmd at+zreset
reboot
else
echo "Not same!"
fi
