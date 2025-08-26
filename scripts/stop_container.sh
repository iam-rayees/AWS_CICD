#!/bin/bash
containerId=`docker ps | awk -F " " '{print $1}'`

docker rm -f $containerId