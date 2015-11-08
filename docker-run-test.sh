#!/bin/sh

set -x

echo "DOCKER_HOST=$DOCKER_HOST"

docker info

docker ps

docker stop $(docker ps -q)

docker build -t web web

docker run -p 80:80 -d web

docker ps
