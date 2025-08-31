#!/bin/bash

#
# INSTALLS IN THE CURRENT DIR. BEWARE!
#

if [[ -z $MC_VERSION ]]; then
    exit 1
else
    echo "Minecraft Version: [$MC_VERSION]"
fi

# generate Eula text
echo "eula=true" > eula.txt
# Timeout so we can generate the world - required as forge will not do so
#timeout 30s java -jar server.jar
# installer does not need this. only forge.jar

# Move desired forge installer to local dir
cp -rv "../installers/$MC_VERSION/." .

# Install forge
java -jar neoforge-*.jar --installServer
rm -fr neoforge-*.jar*
rm -fr ../installers