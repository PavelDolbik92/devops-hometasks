#!/bin/bash

docker run --name statichtml -d -p 8081:80 hometask-image
docker cp index.html statichtml:/var/www/html/index.html