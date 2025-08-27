#!/bin/bash
containerIds=$(docker ps -q)

if [[ -z "$containerIds" ]]; then
   echo "No running containers found."
   exit 0
else
   docker stop $containerIds
   docker rm -f $containerIds   
fi
