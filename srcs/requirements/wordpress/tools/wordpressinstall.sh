#!/bin/bash

mkdir -p /var/www/html/
cd /var/www/html/
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
mv wordpress/* .
rmdir wordpress
rm latest.tar.gz
mv /tmp/wp-config.php ./
mv /tmp/my.cnf /etc/mysql/
exec /usr/sbin/php-fpm7.3 -F
