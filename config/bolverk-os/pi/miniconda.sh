#!/usr/bin/env bash
dest="/root/miniconda3_installer.sh"
url="https://repo.continuum.io/miniconda/Miniconda-3.16.0-Linux-armv7l.sh"
curl $url >> $dest
bash $dest
