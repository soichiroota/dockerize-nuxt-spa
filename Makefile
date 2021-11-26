up:
	docker-compose up

up--build:
	docker-compose up --build

down:
	docker-compose down

install:
	docker-compose build
	docker-compose run --rm app yarn install

dev:
	docker-compose run --rm --service-ports app yarn dev

generate:
	docker-compose run --rm app yarn generate

start:
	docker-compose run --rm --service-ports app yarn start

jest:
	make install
	docker-compose run --rm app yarn test

lint:
	docker-compose run --rm app yarn lint

up--build--production:
	docker build -t nuxt-app .
	docker run -it -p 8080:80 --rm --name nuxt-app-1 nuxt-app