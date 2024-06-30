docker network create ecosystem

docker-compose --env-file .env -f docker-compose_windows.yaml down
docker-compose --env-file .env -f docker-compose_windows.yaml pull
docker-compose --env-file .env -f docker-compose_windows.yaml up -d 
