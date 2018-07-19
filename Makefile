build:
	docker-compose -f backend/docker-compose.yml -f frontend/docker-compose.yml -f api-specification/docker-compose.yml -f docker-compose.yml build frontend-app backend-app mysql proxy

init:
	docker-compose -f backend/docker-compose.yml -f docker-compose.yml up init

up:
	docker-compose -f backend/docker-compose.yml -f frontend/docker-compose.yml -f api-specification/docker-compose.yml -f docker-compose.yml up -d frontend-app backend-app mysql proxy documentation mock