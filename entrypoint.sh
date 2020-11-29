#!/bin/sh
set -e

if [ -n "$2" ]; then
  docker_cmd="docker run -d --name gha_aerospike -p $1:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 aerospike --config-file /github/workspace/$2"
else
  docker_cmd="docker run -d --name gha_aerospike -p $1:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 aerospike"
fi

sh -c "$docker_cmd"