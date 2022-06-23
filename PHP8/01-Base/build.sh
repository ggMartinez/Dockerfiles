#!/bin/bash
IMAGE="$DOCKERHUB_USER/php"
TAG="8"

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

docker logout
