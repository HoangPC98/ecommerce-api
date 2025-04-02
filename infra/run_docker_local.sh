#!/bin/bash

# docker network create --driver bridge ecom_common

docker volume create postgres
docker volume create redis
docker volume create rabbitmq
docker volume create mongodb

docker compose -f ./docker/docker-compose.db.yml up -d
docker compose -f ./docker/docker-compose.yml up -d

# docker compose -f ../ecom-gateway-api/docker-compose.yml up -d
# docker compose -f ../ecom-client-api/docker-compose.yml up -d
# docker compose -f ../ecom-messaging/docker-compose.yml up -d

# tsproto --path ./ecom-protos-grpc --output ./ecom-client-api/src/interfaces/protos