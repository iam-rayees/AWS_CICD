#!/bin/bash
containerId=`docker ps -q`

docker stop $containerId
docker rm -f $containerId

