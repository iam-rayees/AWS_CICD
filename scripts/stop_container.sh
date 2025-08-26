#!/bin/bash
containerIds=$(docker ps -q)

if [[ -z $containerIds ]]; then
   echo "There are no containers available"
else
   docker rm -f $containerIds
fi
