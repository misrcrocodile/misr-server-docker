docker-compose down
docker system prune -f
docker volume prune -f
docker network prune -f
docker container prune -f
docker-compose up -d