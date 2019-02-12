#make sure not to set a password on the ssh key
ip_addr='127.0.0.1'
ssh-keygen
# on the worker, make sure sshd is running and root can log in with a key
# PermitRootLogin prohibit-password
scp /root/.ssh/id_rsa.pub root@$ip_addr:~/.ssh/authorized_keys
#configure $bro_home/etc/node.cfg and $bro_home/etc/etc/network.cfg to reflect cluster setup
#
broctl check
#
broctl deploy
