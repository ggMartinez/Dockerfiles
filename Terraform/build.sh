#!/bin/bash

IMAGE="$DOCKERHUB_USER/terraform"
TAG="1.2.3"

expect <<EOF
spawn docker login -u ${DOCKERHUB_USER}
while (1) {
  expect {
    -re ".*Password:.*" { send "${DOCKERHUB_PASSWORD}\r" }
    eof { break }
  }
}
EOF

docker build . -t ${IMAGE}:${TAG}
docker push ${IMAGE}:${TAG}
docker tag ${IMAGE}:${TAG} ${IMAGE}:latest
docker push ${IMAGE}:latest

docker logout
docker image rm ${IMAGE}:${TAG} ${IMAGE}:latest
