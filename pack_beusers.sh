#!/bin/bash

mysqldump -uroot -p $DB_ROOT_PASSWORD -h $DB_CONTAINER_NAME "$DB_NAME" be_users > /var/www/html/vendor/t3kit/db/be_users.sql
echo "Done"
