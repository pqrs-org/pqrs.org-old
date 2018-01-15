#!/bin/bash

cd "$(dirname $0)"
docker run --rm -v "$(pwd)/..:/opt/pqrs.org" pqrs.org make -C /opt/pqrs.org/source
