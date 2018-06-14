build_frontend:
	docker run -v $(shell pwd)/frontend:/src node:9 sh -c 'cd /src && npm install && npm run build'

build: build_frontend
	export LOCAL_IP="$(shell ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' | head -n1)"; \
	docker-compose -f backend/docker-compose.yml -f frontend/docker-compose.yml -f api-specification/docker-compose.yml -f docker-compose.yml build frontend-app backend-app mysql proxy

up:
	docker-compose -f backend/docker-compose.yml -f frontend/docker-compose.yml -f api-specification/docker-compose.yml -f docker-compose.yml up -d frontend-app backend-app mysql proxy documentation mock