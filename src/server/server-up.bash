#!/bin/bash
mkdir -p /server
bash makeSrvrProps.bash
cp -r . /server
cd /server || exit 1
bash run.sh
