#!/bin/bash

PASSWORD="1234"
DATABASE="t3kit"
USERNAME="root"
T3KIT_USER="t3kit"
T3KIT_PASSWORD="t3kit1234"

if [ -n "${DOCKER}" ]; then
  DBHOST="db"
else
  DBHOST="localhost"
fi
mysql -h${DBHOST} -u"$USERNAME" -p""$PASSWORD"" -e "SHOW DATABASES;"
echo -e "Dropping a database $DATABASE... \r10% "
mysql -h${DBHOST} -u"$USERNAME" -p"$PASSWORD" -e "DROP DATABASE $DATABASE;"

echo -e "Installing DB $DATABASE... \r40% "
mysql -h${DBHOST} -u"$USERNAME" -p"$PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;"
mysql -h${DBHOST} -u"$USERNAME" -p"$PASSWORD" -e "GRANT ALL PRIVILEGES ON $DATABASE.* TO '$T3KIT_USER'@localhost IDENTIFIED BY '$T3KIT_PASSWORD';"
mysql -h${DBHOST} -u"$USERNAME" -p"$PASSWORD" $DATABASE < /var/www/shared/db/t3kit.sql

if [ ! -n "${DOCKER}" ]; then
	echo -e "Restarting MySQL... \r60% "
	service mysql restart > /dev/null 2>&1
	echo -e "Restarting Apache... \r85% "
	service apache2 restart > /dev/null 2>&1
fi
