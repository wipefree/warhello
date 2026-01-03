#!/bin/bash

sudo apt-get update
sudo apt-get -y maven docker.io
sudo systemctl start docker
cd /tmp/prj
mvn package -DskipTests
docker build -f Dockerfile.builder -t cr.yandex/crpirf1t243rd4chrqfd/hello:latest .
docker push cr.yandex/crpirf1t243rd4chrqfd/hello:latest
