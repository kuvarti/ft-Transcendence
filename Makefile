Volumepath= ./Database/volume ./Frontend/volume

all:
	mkdir -p ${Volumepath}
	docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

down:
	docker-compose down

clean: down
	rm -rf ${Volumepath}

fclean: clean
	docker system prune -a