SHELL=/bin/sh

# createproject:
#   docker-compose exec web composer create-project "laravel/laravel=~8.0" --prefer-dist .
#   docker-compose exec web chown www-data:www-data -R storage

v:
	docker -v

sleep:
	python scripts/sleep.py

ps:
	docker-compose ps

build: v
	docker-compose down --volumes --remove-orphans
	python scripts/rmdbdata.py
	python scripts/copyenv.py develop
	docker-compose build

buildup: build u logs sleep seed

seed:
	docker-compose exec web php artisan migrate:fresh --seed

u: upd

up:
	docker-compose up

upd:
	docker-compose up -d

d: down

down:
	docker-compose down

start:
	docker-compose start

stop:
	docker-compose stop

logs:
	-docker-compose logs -f

web:
	docker-compose exec web bash