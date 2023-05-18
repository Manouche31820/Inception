SRCS := srcs/docker-compose.yml

all: build run

run:
	@docker-compose -f $(SRCS) up -d

build:
	@sudo mkdir -p /home/ebaraton/data/ngwp
	@sudo mkdir -p /home/ebaraton/data/mdb
	@docker-compose -f $(SRCS) build --no-cache

stop:
	@docker-compose -f $(SRCS) stop

restart: stop up

nginx:
	@docker exec -it nginx bash

wordpress:
	@docker exec -it wordpress bash

mariadb:
	@docker exec -it mariadb bash

clean: stop
	@docker rmi -f nginx
	@docker rmi -f mariadb
	@docker rmi -f wordpress
	@docker rmi -f debian
	@docker rm -f nginx
	@docker rm -f mariadb
	@docker rm -f wordpress
	@docker volume rm -f ngwp-volume
	@docker volume rm -f mdb-volume
	@docker network rm -f mynetwork

fclean: clean
	@sudo rm -rf /home/ebaraton/
	@docker system df
	@docker system prune --all --force --volumes

rebuild: fclean all

.PHONY: all build stop restart clean fclean

