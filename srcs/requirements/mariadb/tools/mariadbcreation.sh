#!/bin/bash
service mysql start
echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root
echo "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
if [ -f "/var/local/bin/filename.sql" ]; then
    mysql -u $SQL_USER --password=$SQL_PASSWORD  wordpress < /var/local/bin/filename.sql
    mv /var/local/bin/filename.sql /var/local/
fi
service mysql stop
exec mysqld
