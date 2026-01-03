#!/bin/bash

repo="crpirf1t243rd4chrqfd"
img="hello:latest"

sudo apt-get update
sudo apt-get -y maven docker.io
sudo systemctl start docker
cd /tmp/prj
sudo mvn package -DskipTests
sudo cat /tmp/key.json | docker login --username json_key --password-stdin cr.yandex
sudo docker build -f Dockerfile.builder -t cr.yandex/$repo/$img .
sudo docker push cr.yandex/$repo/$img
