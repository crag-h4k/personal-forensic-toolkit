#!/usr/bin/sh
PKGS=""
apt-get dowload $(apt-cache depends --recurse --no-recommends --no-suggests )
