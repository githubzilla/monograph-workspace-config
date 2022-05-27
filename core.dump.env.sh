#/bin/sh
ulimit -c unlimited
sudo sysctl -w kern.coredump=1
sudo chmod 1775 /cores
