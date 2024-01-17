VOLUMES= frontend/volume backend/volume db/volume

all:
	mkdir -p ${VOLUMES}
	docker-compose up -d --build

start:
	docker-compose start -d

stop:
	docker-compose stop

clean:
	docker-compose down -v
	rm -rf ${VOLUMES}
