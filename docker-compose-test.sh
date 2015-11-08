#/bin/sh

set -x

echo "DOCKER_HOST=$DOCKER_HOST"

docker info

docker stop $(docker ps -q)

docker-compose -f single-webserver.yml up -d

docker ps
