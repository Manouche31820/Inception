all: build

build:
	@docker build --no-cache -t nginx .

run:
	@docker run -it -p 3306:3306 -d --name nginx nginx

exec:
	@docker exec -ti nginx bash

stop:
	@docker stop nginx

clean: stop
	@docker rm -f nginx

fclean: clean
	@docker rmi -f nginx

.PHONY: all build stop clean fclean re

