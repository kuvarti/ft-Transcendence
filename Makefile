VOLUMES= frontend/volume backend/volume db/volume
COMMAND= docker-compose

all:
	DOCKER_BUILDKIT=1
	mkdir -p ${VOLUMES}
	eval "$(ssh-agent -s)"
	${COMMAND} up -d --build

start:
	${COMMAND} start

stop:
	${COMMAND} stop

log:
	${COMMAND} logs

clean:
	${COMMAND} down -v
	docker volume rm -f backendVolume frontendVolume databaseVolume
	sudo rm -rf ${VOLUMES}

fclean: clean
	docker system prune -a

# nc -zv 127.0.0.1 5432 || echo "Postgres is not running"
