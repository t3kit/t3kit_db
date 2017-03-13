#!/bin/bash

DATABASE="t3kit"

# Create new database
echo "Creating DB $DATABASE ..."
mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e "ALTER DATABASE $DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;"
mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf $DATABASE < /t3kit_db/t3kit8.sql
