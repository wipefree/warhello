#!/bin/bash

cd /tmp/prj
sudo mvn package -DskipTests
cp /tmp/prj/target/*.war /tmp/ROOT.war
cp /tmp/prj/Dockerfile.builder /tmp/
