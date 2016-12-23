#!/usr/bin/env bash

docker rmi iris-test

if [ "$1" == "-arm" ]; then
    env GOOS=linux GOARCH=arm go build -v helloworld.go
else
    env GOOS=linux go build -v helloworld.go
fi

docker build -t iris-test .
