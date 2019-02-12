#!/usr/bin/bash
media_pkgs=" deluge deluged deluge-web "
base_pkgs=" build-essential byobu cmake curl deborphan dtrx git golang htop make gcc g++ libffi-dev libpython3-all-dev libssl-dev mailtools ncdu net-tools netselect-apt nmap python3-pip python3-jedi sudo tree tmux vim wget zsh "
apt update -y
apt full-upgrade -y
apt install -y $base_pkgs
apt install -y $media_pkgs
# Download lists, unpack and filter, write to stdout
curl -s https://www.iblocklist.com/lists.php
 | sed -n "s/.*value='\(http:.*=bt_.*\)'.*/\1/p"
 | sed "s/\&amp;/\&/g"
 | sed "s/http/\"http/g"
 | sed "s/gz/gz\"/g"
 | xargs curl -L
 | gunzip
 | egrep -v '^#' > /etc/deluge/blocklist.txt

