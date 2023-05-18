#!/bin/bash

mysql_install_db
service mysql start
mysql_secure_installation <<EOF

Y
Y
Y
Y
n
Y
Y
EOF

