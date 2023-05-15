SRCS := srcs/docker-compose.yml

all: build

build:
	@docker-compose -f $(SRCS) build --no-cache
run:
	@docker-compose -f $(SRCS) up -d
clean:
	@docker-compose -f $(SRCS) down
	@docker rmi -f wordpress nginx mariadb
	@docker rm -f wordpress nginx mariadb
	@docker volume rm -f srcs_my_volume
	@docker network rm -f mynetwork

.PHONY: all build stop clean fclean re

