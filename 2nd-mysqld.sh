#!/bin/bash
nohup mariadb-bin/bin/mysqld  --defaults-file=mariadb-conf/my-config.cnf2 >mysqld2.log 2>&1 &
