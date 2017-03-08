#!/bin/bash

DATABASE="t3kit"
T3KIT_USER="t3kit"
T3KIT_PASSWORD="t3kit1234"

if [ "`mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e 'show databases;' | grep ${DATABASE}`" != "${DATABASE}" ]; then

    # Create new database
    echo "Installing DB $DATABASE ..."
    mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e "CREATE DATABASE IF NOT EXISTS $DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;"
    mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e "GRANT ALL PRIVILEGES ON $DATABASE.* TO '$T3KIT_USER'@db IDENTIFIED BY '$T3KIT_PASSWORD';"
    mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf $DATABASE < /t3kit_db/t3kit.sql

fi
