#!/bin/bash
#
cDir=$PWD
tDir="./docs/mods"
#
cd "$tDir"
# makes tar
sudo tar -zvcf modpack.tar.gz *.jar
# Makes zip
sudo zip -vr modpack.zip *.jar
#
cd "$cDir"
