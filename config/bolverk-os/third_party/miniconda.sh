#!/usr/bin/env bash
dest="/root/miniconda3_installer.sh"
curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh >> $dest
bash $dest
