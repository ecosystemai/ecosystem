echo "Pull the latest docker images and start the ecosystem.Ai services on x86 platform."
echo "The following services will be started:"
echo "1. Prediction Server"
echo "2. Workbench"
echo "3. Runtime Engine x 3"
echo "4. Python Notebooks"
echo ""

docker network create ecosystem

docker-compose --env-file .env -f docker-compose_x86.yaml down
docker-compose --env-file .env -f docker-compose_x86.yaml pull
docker-compose --env-file .env -f docker-compose_x86.yaml up -d 

echo ""
echo "ecosystem.Ai services started successfully on x86 platform. Workench is available at http://localhost."
echo "To stop the services, run stop_dev.sh script."