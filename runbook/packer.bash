#!/bin/bash
#
cDir="./docs/mods"
# makes tar
sudo tar -zvcf "$cDir/modpack.tar.gz" "$cDir/"*.jar
# Makes zip
sudo zip -vr "$cDir/modpack.zip" "$cDir/"*.jar