#!/bin/bash
set -e

docker stop brain || true
docker rm brain || true

docker pull 438296478178.dkr.ecr.ap-south-1.amazonaws.com/brain-tasks-app:latest

docker run -d \
  --name brain \
  -p 3000:3000 \
  438296478178.dkr.ecr.ap-south-1.amazonaws.com/brain-tasks-app:latest
