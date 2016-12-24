#!/usr/bin/env bash

docker rmi iris-test-arm

env GOOS=linux GOARCH=arm go build -o helloworld-arm -v helloworld.go

docker build -f Dockerfile-arm -t iris-test-arm .

docker tag iris-test-arm sanderman123/test

docker push sanderman123/test/iris-test-arm
