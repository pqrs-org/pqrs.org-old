#!/bin/bash

if [ ! -f "$priv_pem" ]; then
    echo '\033[37;41m'
    echo "ERROR: priv.pem file does not exist."
    echo '\033[0m'
    exit 1
fi
