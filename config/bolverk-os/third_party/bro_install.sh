#!/bin/bash
#run install_pf_ring() first
#pf_ring_depens=' flex bison ethtool'
#git clone https://github.com/ntop/PF_RING.git /root/PF_RING
#cd /root/PF_RING/kernel
#make && insmod ./pf_ring.ko
#cd ../userland && make && make install

bro_depens="git cmake make gcc g++ flex bison libpcap-dev libssl1.0-dev python-dev swig zlib1g-dev mailutils "
echo "Installing needed packages:\n"$bro_depens
apt install -y $bro_depens
git clone --recursive git://git.bro.org/bro /root/bro
cd /root/bro
./configure && make && make install
#echo "REMEMBER TO MAKE SURE INTERFACE IS CORRECT AT"
#echo "/usr/local/bro/etc/node.cfg"
#echo "REMEMBER TO MAKE SURE NETWORKS ARE CORRECT AT"
#echo "/usr/local/bro/etc/network.cfg"
