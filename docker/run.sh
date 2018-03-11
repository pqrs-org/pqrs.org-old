#!/bin/bash

cd "$(dirname $0)"
docker run \
       --rm \
       -v "$(pwd)/..:/opt/pqrs.org" \
       -p 127.0.0.1:$HTTP_SERVER_PORT:8000 \
       pqrs.org \
       /usr/bin/ruby /opt/pqrs.org/source/watch.rb
