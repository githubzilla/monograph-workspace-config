#!/bin/bash
nohup mariadb-bin/bin/mysqld  --defaults-file=mariadb-conf/my-config.cnf3 >mysqld3.log 2>&1 &
