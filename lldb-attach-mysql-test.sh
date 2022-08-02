#!/bin/bash
echo "Wait for install db to start"
until pids=`pgrep mariadbd`
do
    echo -n "."
    sleep 1
done
echo "Install db started"

sleep 5
echo "Wait for install db to finish"
lsof -p `pgrep mariadbd` +r 1 &>/dev/null  

echo "Wait for mysql-test to start"
until pids=`pgrep mariadbd`
do
    echo -n "."
    sleep 1
done
echo "mysql-test started"

sleep 2
echo "lldb attach to mariadbd"
lldb -n mariadbd
