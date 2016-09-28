#!/bin/bash

PASSWORD="root"
DATABASE="dockertypo3"
USERNAME="root"

mysql -hdb -u"$USERNAME" -p""$PASSWORD"" -e "SHOW DATABASES;"
echo -e "Dropping a database $DATABASE... \r10% "
mysql -hdb -u"$USERNAME" -p"$PASSWORD" -e "DROP DATABASE $DATABASE;"

echo -e "Installing DB $DATABASE... \r40% "
mysql -hdb -u"$USERNAME" -p"$PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $DATABASE CHARACTER SET utf8 COLLATE utf8_swedish_ci;"
mysql -hdb -u"$USERNAME" -p"$PASSWORD" -e "GRANT ALL PRIVILEGES ON $DATABASE.* TO '$USERNAME'@localhost IDENTIFIED BY '$PASSWORD';"
mysql -hdb -u"$USERNAME" -p"$PASSWORD" $DATABASE < /var/www/shared/db/t3kit.sql

