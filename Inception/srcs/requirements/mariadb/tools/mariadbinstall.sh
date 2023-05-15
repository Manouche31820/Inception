#!/bin/bash

mysql_install_db
service mysql start
mysql_secure_installation <<EOF

Y
Y
Y
Y
Y
Y
Y
EOF

mysql -u root -ppassword -e "GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION; \
FLUSH PRIVILEGES; \
CREATE DATABASE wp1; \
USE wp1; \
CREATE USER 'ebaraton'@'localhost' IDENTIFIED BY 'mdp'; \
GRANT ALL PRIVILEGES ON wp1.* TO 'ebaraton'@'localhost'; \
FLUSH PRIVILEGES;"

