#!/bin/bash
service mysql start
echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root
echo "CREATE USER IF NOT EXISTS '$SQL_USER'@'$IP_WORDPRESS' IDENTIFIED BY '$SQL_PASSWORD';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO '${SQL_USER}'@'$IP_WORDPRESS' IDENTIFIED BY '${SQL_PASSWORD}';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

service mysql stop

#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
#mysql -e "GRANT ALL PRIVILEGES ON . TO 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
#mysql -e "FLUSH PRIVILEGES;"
#mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

#mysqladmin -u root shutdown

exec mysqld
