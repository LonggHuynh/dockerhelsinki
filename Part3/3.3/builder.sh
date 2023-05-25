#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 [github repo] [docker repo]"
  exit 1
fi


mkdir "$1"

docker login

git clone https://github.com/"$1".git "$1"

cd "$1"


docker build -t "$2"  .
docker push "$2"

