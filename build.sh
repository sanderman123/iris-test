#!/usr/bin/env bash

docker rmi iris-test

env GOOS=linux go build -v helloworld.go

docker build -t iris-test .
