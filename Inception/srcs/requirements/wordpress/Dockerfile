FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y curl vim php7.3 php7.3-fpm telnet net-tools
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
#WORKDIR /opt/
#RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN chmod +x wp-cli.phar
#RUN mv wp-cli.phar /usr/local/bin/wp
#RUN wp core download --allow-root
EXPOSE 9000
ENTRYPOINT service php7.3-fpm start; while true; do sleep 5; done;
