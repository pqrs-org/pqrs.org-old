#!/bin/bash

cd "$(dirname $0)"
docker run --rm -v "$(pwd)/..:/opt/pqrs.org" pqrs.org /usr/bin/ruby /opt/pqrs.org/source/watch.rb
