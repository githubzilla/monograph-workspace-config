#!/bin/bash
nohup mariadb-bin/bin/mysqld  --defaults-file=mariadb-conf/my-config.standalone.cnf >mysqld0.log 2>&1 &
