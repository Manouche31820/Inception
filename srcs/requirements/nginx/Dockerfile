FROM debian:buster

RUN apt update
RUN apt install -y nginx
RUN apt install -y vim
RUN apt install -y openssl telnet net-tools
RUN mkdir /usr/ebaraton
RUN openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 -keyout /usr/ebaraton/localhost.key -out /usr/ebaraton/localhost.crt \
    -subj "/CN=localhost"
COPY ./www/ /tmp/
COPY ./conf/server.conf /etc/nginx/conf.d/
COPY ./tools/copy.sh /home/
RUN chmod 777 /home/copy.sh
RUN ./home/copy.sh
EXPOSE 443
ENTRYPOINT ["nginx", "-g", "daemon off;"]
