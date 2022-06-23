#!/bin/bash
DOCKER_USER="ggmartinez"
DOCKER_PASSWORD="R3al7IME"
IMAGE="$DOCKER_USER/terraform"
TAG="1.2.3"

expect <<EOF
spawn docker login -u ${DOCKER_USER}
while (1) {
  expect {
    -re ".*Password:.*" { send "${DOCKER_PASSWORD}\r" }
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
