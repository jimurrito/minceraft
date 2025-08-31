#!/bin/bash

if [[ -z "$1" ]]; then 
    echo "Please provide a rpm file to convert. Ex: bash rpm_to_deb.bash <filename>.rpm"
    exit 1
fi

docker build -t rpm2deb .
docker run --rm -v ./:/src rpm2deb alien -v "/src/$1"