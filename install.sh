#!/bin/bash

sudo apt-get update
sudo apt-get -y maven docker.io
sudo systemctl start docker
cd /tmp/prj
mvn package -DskipTests
docker build -f Dockerfile.builder -t cr.yandex/crpirf1t243rd4chrqfd/hello:latest .
#docker login -u {{ docker_user }} -p {{ docker_pass }}
#docker push {{ docker_user }}/{{ img_name }}
