#!/usr/bin/env bash
cd `dirname $0`/..

set -e
set -x

if [ ${BRANCH_NAME} = "master" ]; then
  VERSION="latest"
else
  VERSION=${BRANCH_NAME}
fi

IMAGE_NAME=gcr.io/${PROJECT_ID}/${REPO_NAME}:${COMMIT_SHA}

docker login --username=drecomdockerhub --password=${DOCKERHUB_PASSWORD}
docker tag ${IMAGE_NAME} drecom/centos-ruby:${VERSION}
docker push drecom/centos-ruby:${VERSION}
