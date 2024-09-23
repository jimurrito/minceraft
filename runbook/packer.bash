#!/bin/bash
#
cDir="./docs/mods"
# makes tar
sudo tar -zcf "$cDir/modpack.tar.gz" "$cDir/"*.jar
# Makes zip
sudo zip -fvr "$cDir/modpack.zip" "$cDir/"*.jar