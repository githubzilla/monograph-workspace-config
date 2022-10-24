#!/bin/bash
# Wait for mariadbd to start
until pids=$(pgrep mariadbd)
do   
    sleep 1
done

sudo gdb ~/workspace/mariadb-bin/bin/mariadbd -p `pgrep mariadbd`
