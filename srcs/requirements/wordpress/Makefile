all: build

build:
	@docker build --no-cache -t wordpress .

run:
	@docker run -it -p 9000:9000 -d --name wordpress wordpress

exec: build run
	@docker exec -ti wordpress bash

stop:
	@docker stop wordpress

clean: stop
	@docker rm -f wordpress

fclean: clean
	@docker rmi -f wordpress

.PHONY: all build stop clean fclean re

