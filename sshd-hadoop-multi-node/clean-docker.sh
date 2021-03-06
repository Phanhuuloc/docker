#!/usr/bin/env bash
# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)

docker volume rm $(docker volume ls -qf dangling=true)