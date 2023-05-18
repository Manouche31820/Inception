FROM debian:buster

RUN apt update && \
    apt install -y mariadb-server vim expect mariadb-client telnet

RUN mkdir -p /var/run/mysqld && \
chown -R mysql:mysql /var/run/mysqld && \
chmod 777 /var/run/mysqld
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadbinstall.sh /var/local/bin/
COPY ./tools/mariadbcreation.sh /var/local/bin/

RUN chmod +x /var/local/bin/mariadbinstall.sh
RUN /var/local/bin/mariadbinstall.sh
RUN chmod +x /var/local/bin/mariadbcreation.sh
RUN /var/local/bin/mariadbcreation.sh

ENTRYPOINT service mysql start; while true; do sleep 5; done;
