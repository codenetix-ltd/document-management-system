build_frontend:
	docker run -v $(shell pwd)/frontend:/src node:9 sh -c 'cd /src && npm install && npm run build'

build:build_frontend
	docker-compose -f backend/docker-compose.yml -f frontend/docker-compose.yml -f api-specification/docker-compose.yml -f docker-compose.yml build frontend_app backend_app mysql proxy

up:
	docker-compose -f backend/docker-compose.yml -f frontend/docker-compose.yml -f api-specification/docker-compose.yml -f docker-compose.yml up -d frontend_app backend_app mysql proxy documentation mock