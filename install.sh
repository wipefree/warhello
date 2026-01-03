#!/bin/bash

sudo apt-get update
sudo apt-get -y maven docker.io
sudo systemctl start docker
cd /tmp/prj
sudo mvn package -DskipTests
sudo docker build -f Dockerfile.builder -t cr.yandex/crpirf1t243rd4chrqfd/hello:latest .
sudo docker push cr.yandex/crpirf1t243rd4chrqfd/hello:latest
