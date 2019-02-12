#!/bin/bash

#depending on your OS libssl-dev dependences can change
libssl_alternative='libssl1.0-dev'

bro_depens="git cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev mailutils "

apt install $bro_depens
git clone --recursive git://git.bro.org/bro /root/bro
cd /root/bro
./configure && make && make install

echo "REMEMBER TO MAKE SURE INTERFACE IS CORRECT AT"
echo "/usr/local/bro/etc/node.cfg"
echo "REMEMBER TO MAKE SURE NETWORKS ARE CORRECT AT"
echo "/usr/local/bro/etc/network.cfg"

systemctl disable exim4 
systemctl stop exim4
