FROM debian:buster

RUN apt update && \
    apt install -y mariadb-server mariadb-client vim expect

RUN mkdir -p /var/run/mysqld && \
chown -R mysql:mysql /var/run/mysqld && \
chmod 777 /var/run/mysqld

COPY ./tools/mariadbinstall.sh /var/local/bin/

RUN chmod +x /var/local/bin/mariadbinstall.sh
RUN /var/local/bin/mariadbinstall.sh

EXPOSE 3306

