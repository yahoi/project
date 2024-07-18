#!/bin/bash

IMAGE_NAME="myreactapp"

docker rm -f `docker ps -aq`

docker rmi -f $(docker images -aq)

docker build -t $IMAGE_NAME .

docker run -itd -p 8000:80 --name prasanth $IMAGE_NAME

