docker network create ecosystem

docker compose --env-file .env -f docker-compose_arm.yaml down
docker compose --env-file .env -f docker-compose_arm.yaml pull
docker compose --env-file .env -f docker-compose_arm.yaml up -d 
