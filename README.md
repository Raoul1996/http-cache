# Http 缓存学习

> docker 下使用 nginx 学习 HTTP 缓存

### Clone Repos

```shell
$ git clone https://github.com/Raoul1996/http-cache.git 
```

### RUN

please install Docker before use docker command

```shell
$ cd http-cache
$ docker run \
-d \
-p 8080:80 \
-p 8081:443 \
--volume "$PWD/html":/usr/share/nginx/html \
--volume "$PWD/conf":/etc/nginx \
--volume "$PWD/log":/var/log \
--rm \
--name mynginx \
nginx
```

### attach the contianer named mynginx and reload nginx

```shell
$ docker exec -it mynginx bash

# in the tty supported by mynginx contianer
nginx -t && service nginx reload
```
PS: don't use `service nginx restart`, this command will kill the nginx process, reload is enough.
