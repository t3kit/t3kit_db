#!/bin/bash

PASSWORD="t3kit1234"
DATABASE="t3kit"
USERNAME="t3kit"

mysql -uroot -p1234 -e "SHOW DATABASES;"
echo -e "Dropping a database $DATABASE... \r10% "
mysql -uroot -p1234 -e "DROP DATABASE $DATABASE;"

echo -e "Installing DB $DATABASE... \r40% "
mysql -uroot -p1234 -e "CREATE DATABASE IF NOT EXISTS $DATABASE CHARACTER SET utf8 COLLATE utf8_swedish_ci;"
mysql -uroot -p1234 -e "GRANT ALL PRIVILEGES ON $DATABASE.* TO '$USERNAME'@localhost IDENTIFIED BY '$PASSWORD';"
mysql -uroot -p1234 $DATABASE < /var/www/shared/db/$DATABASE.sql

echo -e "Restarting MySQL... \r60% "
service mysql restart > /dev/null 2>&1
echo -e "Restarting Apache... \r85% "
service apache2 restart > /dev/null 2>&1
