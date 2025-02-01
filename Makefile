.PHONY: start stop test

start:
	docker-compose up --build

stop:
	docker-compose down

test:
	docker-compose run api rails test