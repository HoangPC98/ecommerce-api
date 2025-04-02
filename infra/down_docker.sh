#!/bin/bash


# docker compose -f ./docker/docker-compose.db.yml up -d
docker compose -f ./docker/docker-compose.yml down

docker compose -f ../ecom-gateway-api/docker-compose.yml down
docker compose -f ../ecom-client-api/docker-compose.yml down
docker compose -f ../ecom-messaging/docker-compose.yml down

# tsproto --path ./ecom-protos-grpc --output ./ecom-client-api/src/interfaces/protos