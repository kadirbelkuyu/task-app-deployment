#!/bin/bash
docker build -t your-dockerhub-username/task-app:latest .
docker build -t your-dockerhub-username/task-app-worker:latest -f Dockerfile.worker .
docker push your-dockerhub-username/task-app:latest
docker push your-dockerhub-username/task-app-worker:latest
