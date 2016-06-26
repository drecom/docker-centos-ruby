# docker-ubuntu-ruby


A Ubuntu ruby docker container

It's on [docker-hub](https://hub.docker.com/r/drecom/centos-ruby/) and [github](https://github.com/drecom/docker-centos-ruby/)

## tags and links
* `latest` [(master/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/master/Dockerfile)
* `2.3.1` [(2.3.1/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.3.1/Dockerfile)
* `2.3.0` [(2.3.0/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.3.0/Dockerfile)
* `2.2.3` [(2.2.3/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.2.3/Dockerfile)

## how to build

```sh
docker build --rm -t centos-ruby .
```

## running

```sh
docker run -it --rm drecom/centos-ruby /bin/bash
```
