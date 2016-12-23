#!/usr/bin/env bash
docker build -t iris-test .
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)