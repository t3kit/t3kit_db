#!/bin/bash

DATABASE="t3kit"
T3KIT_USER="t3kit"
T3KIT_PASSWORD="t3kit1234"
DBHOST="localhost"

# Create new database
echo "Creating DB $DATABASE ..."
mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e "ALTER DATABASE $DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;"
mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf $DATABASE < /t3kit_db/t3kit.sql
