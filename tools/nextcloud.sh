docker stop nextcloud
docker rm nextcloud
docker image rm misr-docker_nextcloud
docker-compose up -d --no-deps --build nextcloud