FROM debian:buster

RUN apt update && \
    apt install -y mariadb-server vim # expect mariadb-client telnet

RUN mkdir -p /var/run/mysqld && \
chown -R mysql:mysql /var/run/mysqld && \
chmod 777 /var/run/mysqld
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadbinstall.sh ./tools/mariadbcreation.sh ./conf/filename.sql /var/local/bin/

RUN chmod +x /var/local/bin/*
RUN /var/local/bin/mariadbinstall.sh
ENTRYPOINT ["/var/local/bin/mariadbcreation.sh"]
