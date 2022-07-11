all:
	docker-compose -f ./srcs/docker-compose.yml up
clean:
	docker-compose -f srcs/docker-compose.yml down
fclean:
	docker rm $(docker ps -a -q)
	docker rmi $(docker images -a -q)
	docker volume rm $(docker volume ls -q)
	docker system prune -a --force
	sudo rm -r /data/svirgil/wordpress
	sudo rm -r /data/svirgil/mariadb
	sudo mkdir /data/svirgil/wordpress
	sudo mkdir /data/svirgil/mariadb