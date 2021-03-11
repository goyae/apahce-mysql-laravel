# createproject:
#   docker-compose exec web composer create-project "laravel/laravel=~8.0" --prefer-dist .
#   docker-compose exec web chown www-data:www-data -R .

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