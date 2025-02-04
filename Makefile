.PHONY: start stop test

build:
	docker-compose build

start:
	docker-compose up --build

stop:
	docker-compose down

start-react:
	docker-compose up --build client-react

start-vue:
	docker-compose up --build client-vue
