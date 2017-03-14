#!/bin/bash

DATABASE="t3kit"

mysqldump --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf "$DATABASE" be_users > /t3kit_db/be_users.sql
