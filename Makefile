ps:
	docker-compose ps

build:
	docker-compose build

u: upd

up:
	docker-compose up

upd:
	docker-compose up -d

d: down

down:
	docker-compose down

stop:
	docker-compose stop

web:
	docker-compose exec web bash