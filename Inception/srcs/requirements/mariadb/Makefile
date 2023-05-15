all: build

build:
	@docker build --no-cache -t mariadb .

run:
	@docker run -it -p 3306:3306 -d --name mariadb mariadb

exec:
	@docker exec -ti mariadb bash

stop:
	@docker stop mariadb

clean: stop
	@docker rm -f mariadb

fclean: clean
	@docker rmi -f mariadb

.PHONY: all build stop clean fclean re

