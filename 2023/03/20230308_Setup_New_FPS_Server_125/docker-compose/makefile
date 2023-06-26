help:
	echo "make [config | status | start | restart | stop | logs] options."

config:
	docker-compose config

status:
	docker-compose ps --all

start:
	docker-compose run --rm createdir
	docker-compose --compatibility up -d mssql_fps

restart:
	docker-compose down
	docker-compose --compatibility up -d mssql_fps

stop:
	docker-compose down

logs:
	docker-compose logs
