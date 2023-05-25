#!/bin/bash




if [ $# -ne 2 ]; then
  echo "Usage: $0 [github repo] [docker repo]"
  exit 1
fi


mkdir -p "$1"

echo $DOCKER_PWD | docker login -u $DOCKER_USER --password-stdin

git clone https://github.com/"$1".git "$1"

cd "$1"


docker build -t "$2"  .
docker push "$2"

