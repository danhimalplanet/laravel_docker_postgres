build-docker: # gets postgres database and password from .env
	sh scripts/build-docker.sh

key:
	docker-compose exec app php artisan key:generate

migrate: # rolls back all migrations, applies migrations, seeds database
	#docker-compose exec app php artisan migrate
	docker-compose exec app php artisan migrate:refresh --seed

seed:
	docker-compose exec app php artisan db:seed

reset:
	docker-compose exec app php artisan migrate:reset

optimize: # generate optimized class loader
	docker-compose exec app php artisan optimize
