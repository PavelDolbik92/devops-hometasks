#!/bin/bash

docker build -t hometask-image -f Dockerfile .
docker run --name dynamichtml -d -p 8080:80 hometask-image