#!/bin/bash
service mysql restart

mysql -e "CREATE DATABASE IF NOT EXISTS testdata;"
mysql -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'localhost' IDENTIFIED BY '$SQL_PASSWORD';"
#mysql -e "GRANT ALL PRIVILEGES ON testdata.* TO '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
#mysql -e "GRANT ALL PRIVILEGES ON . TO 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
#mysql -e "FLUSH PRIVILEGES;"
#mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

#mysqladmin -u root shutdown

