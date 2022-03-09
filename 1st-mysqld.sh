#!/bin/bash
nohup mariadb-bin/bin/mysqld  --defaults-file=mariadb-conf/my-config.cnf1 >mysqld1.log 2>&1 &
