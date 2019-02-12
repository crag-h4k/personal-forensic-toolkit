#!/usr/bin/sh
base_pkgs=" apt-transport-https build-essential byobu cmake curl deborphan dtrx git golang htop make gcc g++ libffi-dev libpython3-all-dev libssl-dev ncdu net-tools netselect-apt nmap python3-pip python3-jedi ranger ssh sudo tree tmux vim wget zsh "
base_pkgs_dir='./base_pkgs'
#
sec_pkgs=" nmap bro broctl wireshark tor psad fail2ban chromium-driver suricata "
sec_pkgs_dir='./sec_pkgs'
#
wm_pkgs=" chromium feh fonts-hack-otf fonts-hack-ttf fonts-hack-web i3 rxvt-unicode-256color sddm suckless-tools thunar vlc "
wm_pkgs_dir='./wm_pkgs'
#
#bro_pkgs=" git cmake make gcc g++ flex bison libpcap-dev libssl1.0-dev python-dev swig zlib1g-dev sendmail "
#bro_pkgs_dir='./bro_pkgs'
#
apt install -d --reinstall -y --no-install-recommends $base_pkgs
mkdir -p $base_pkgs_dir
mv /var/cache/apt/archives/*.deb $base_pkgs_dir 
#
apt install -d --reinstall -y --no-install-recommends $sec_pkgs
mkdir -p $sec_pkgs_dir
mv /var/cache/apt/archives/*.deb $sec_pkgs_dir 
#
apt install -d --reinstall -y --no-install-recommends $wm_pkgs
mkdir -p $wm_pkgs_dir
mv /var/cache/apt/archives/*.deb $wm_pkgs_dir 
#
#apt install -d --reinstall -y $bro_pkgs
#mkdir -p $bro_pkgs_dir
#mv /var/cache/apt/archives/*.deb $bro_pkgs_dir 
#


