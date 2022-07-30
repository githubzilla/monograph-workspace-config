#!/bin/bash
# Wait for mariadbd to start
until pids=$(pgrep mariadbd)
do   
    sleep 1
done

lldb -n mariadbd
