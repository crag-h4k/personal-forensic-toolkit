#!/usr/bin/env bash
pi_pkgs=" build-essential byobu cmake curl dtrx git htop make gcc g++ libffi-dev libpython3-all-dev libssl-dev mailtools ncdu net-tools netselect-apt nmap python3-pip python3-jedi ranger sudo tree tmux vim wget zsh nmap wireshark "

apt update -y
apt full-upgrade -y
apt install $pi_pkgs -y
