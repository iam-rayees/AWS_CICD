#!/bin/bash
containerIds=$(docker ps -q)

if [ -n "$containerIds" ]; then
  docker rm -f $containerIds
else
  echo "No running containers found."
fi
