build:
	docker build -t zsdemo .

init-db:
	docker-compose exec web pipenv run flask init-db
