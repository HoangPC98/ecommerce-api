#!/bin/bash

docker network create --driver bridge ecom_common

docker volume create postgres

docker compose -f ./docker/docker-compose.yml up -d
docker compose -f ./docker/docker-compose.db.yml up -d