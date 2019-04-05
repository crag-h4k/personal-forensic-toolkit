pkg_file='./forensics_pkgs.txt'

apt update
cat $pkg_file|xargs apt install -y
