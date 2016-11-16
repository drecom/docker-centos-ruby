# docker-ubuntu-ruby
[![CircleCI](https://circleci.com/gh/drecom/docker-centos-ruby/tree/master.svg?style=svg)](https://circleci.com/gh/drecom/docker-centos-ruby/tree/master)

A Ubuntu ruby docker container

It's on [docker-hub](https://hub.docker.com/r/drecom/centos-ruby/) and [github](https://github.com/drecom/docker-centos-ruby/)

## tags and links
* `latest` [(master/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/master/Dockerfile)
* `2.3.2` [(2.3.2/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.3.2/Dockerfile)
* `2.3.1` [(2.3.1/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.3.1/Dockerfile)
* `2.3.0` [(2.3.0/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.3.0/Dockerfile)
* `2.2.6` [(2.2.6/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.2.6/Dockerfile)
* `2.2.3` [(2.2.3/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.2.3/Dockerfile)
* `2.1.10` [(2.1.10/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.1.10/Dockerfile)
* `2.0.0-p648` [(2.0.0-p648/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/2.0.0-p648/Dockerfile)
* `1.9.3-p551` [(1.9.3-p551/Dockerfile)](https://github.com/drecom/docker-centos-ruby/blob/1.9.3-p551/Dockerfile)

## how to build

```sh
docker build --rm -t centos-ruby .
```

## running

```sh
docker run -it --rm drecom/centos-ruby /bin/bash
```
