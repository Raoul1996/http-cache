#!/usr/bin/env bash
docker run -p 8080:80  \
-p 8081:443 \
--volume "$PWD/html":/usr/share/nginx/html \
--volume "$PWD/conf":/etc/nginx --volume "$PWD/log":/var/log \
--rm \
--name mynginx \
nginx
