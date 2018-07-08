build:
	cd docker; docker-compose -f docker-compose.yml build

up:
	cd docker; docker-compose -f docker-compose.yml up -d

up-fg:
	cd docker; docker-compose -f docker-compose.yml up

down:
	cd docker; docker-compose -f docker-compose.yml down

bash:
	cd docker; docker-compose -f docker-compose.yml exec docker-php53 /bin/bash

bash2:
	cd docker; docker-compose -f docker-compose.yml run --name docker-php53 docker-php53 /bin/bash
