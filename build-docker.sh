#!/bin/bash

echo ---- SET DOCKER MACHINE VARIABLES ----
DOCKER_MACHINE_NAME="containerization"


echo ---- CREATE DOCKER MACHINE ----
docker-machine create -d virtualbox --virtualbox-cpu-count 2 --virtualbox-memory "1024" ${DOCKER_MACHINE_NAME}

echo ---- STARTING DOCKER MACHINE ----
docker-machine start ${DOCKER_MACHINE_NAME}
docker-machine regenerate-certs ${DOCKER_MACHINE_NAME} --force

echo --- SHOW ALL DOCKER MACHINES  ----
docker-machine ls

eval "$(docker-machine env ${DOCKER_MACHINE_NAME})"

echo --- STOPPING RUNNING CONTAINERS  ----
docker-compose down

echo --- STARTING CONTAINERS  ----
docker-compose up -d
echo --- CONTAINERS STARTED  ----