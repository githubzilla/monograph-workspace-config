#/bin/sh
ulimit -c unlimited
sudo sysctl -w kern.coredump=1
sudo chmod 777 /cores
