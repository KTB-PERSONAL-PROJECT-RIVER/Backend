#!/bin/bash

APP_PID=$(pgrep -f 'java -jar.*app.jar')

if [ -n "$APP_PID" ]; then
  echo "Stopping Spring Boot App (PID: $APP_PID)"
  kill "$APP_PID"
else
  echo "No running Spring Boot App found"
fi