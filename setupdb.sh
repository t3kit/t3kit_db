#!/bin/bash

# Create new database
echo "Creating DB $DB_NAME ..."
mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "ALTER DATABASE $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;"
mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME $DB_NAME < /var/www/html/vendor/t3kit/db/t3kit8.sql
echo "Done"
