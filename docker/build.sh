#!/bin/bash

cd "$(dirname $0)"
docker build -t pqrs.org .
