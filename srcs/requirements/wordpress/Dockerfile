FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y curl vim php7.3 php7.3-fpm wget php-mysqli default-mysql-client
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN mkdir -p /run/php/
WORKDIR /opt/
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --allow-root
COPY ./conf/php.ini /etc/php/7.3/
RUN chmod 777 /etc/php/7.3/php.ini
WORKDIR /tmp
COPY ./tools/wordpressinstall.sh ./conf/my.cnf ./conf/wp-config.php  ./
RUN chmod 777 ./wordpressinstall.sh ./my.cnf ./wp-config.php
EXPOSE 9000
ENTRYPOINT ["/tmp/wordpressinstall.sh"]
