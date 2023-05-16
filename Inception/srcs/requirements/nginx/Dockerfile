FROM debian:buster

RUN apt update
RUN apt upgrade -y
RUN apt install -y nginx
RUN apt install -y vim
RUN apt install -y openssl telnet net-tools
RUN mkdir /usr/ebaraton
RUN openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 -keyout /usr/ebaraton/localhost.key -out /usr/ebaraton/localhost.crt \
    -subj "/CN=localhost"
COPY ./www/ /tmp/
COPY ./server.conf /etc/nginx/conf.d/
EXPOSE 443
ENTRYPOINT 
CMD ["nginx", "-g", "daemon off;"]




