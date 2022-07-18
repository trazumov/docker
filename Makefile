ALL_CONTAINERS = $$(docker ps -a -q)
ALL_IMAGES = $$(docker images -a -q)
ALL_VOLUMES = $$(docker volume ls -q)

all:
	docker-compose -f ./srcs/docker-compose.yml up
sql:
	bash ./create_sql_file.sh
	mv settings.sql srcs/mariadb/
stop:
	docker-compose -f srcs/docker-compose.yml down
fclean: stop
	@echo Containers: $(ALL_CONTAINERS)
	@if [ "$(ALL_CONTAINERS)" = "" ]; then echo "Containers already deleted"; else docker rm $$(docker ps -a -q); fi
	@echo Images: $(ALL_IMAGES)
	@if [ "$(ALL_IMAGES)" = "" ]; then echo "Images already deleted"; else docker rmi $$(docker images -a -q); fi
#docker-compose down --volumes
	@echo Volumes: $(ALL_VOLUMES)
	@if [ "$(ALL_VOLUMES)" = "" ]; then echo "Volumes already deleted"; else docker volume rm $$(docker volume ls -q); fi
	docker system prune -a --force
	sudo rm -r /home/svirgil/data/wordpress
	sudo rm -r /home/svirgil/data/mariadb
	sudo mkdir /home/svirgil/data/wordpress
	sudo mkdir /home/svirgil/data/mariadb