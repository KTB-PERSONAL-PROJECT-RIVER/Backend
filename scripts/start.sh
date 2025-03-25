#!/bin/bash

JAR_PATH="/home/ubuntu/deploy/app.jar"

echo "Starting Spring Boot App..."
nohup java -jar "$JAR_PATH" > /home/ubuntu/app.log 2>&1 &