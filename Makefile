all:
	docker-compose -f ./srcs/docker-compose.yml up
clean:
	docker-compose -f srcs/docker-compose.yml down
fclean: clean
	sudo docker rm $(docker ps -a -q)
	sudo docker rmi $(docker images -qa)
	sudo docker volume rm $(docker volume ls -q)
	sudo docker system prune -a --force