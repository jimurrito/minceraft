#!/bin/bash

#
# INSTALLS IN THE CURRENT DIR. BEWARE!
#

# generate Eula text
echo "eula=true" > eula.txt
# Timeout so we can generate the world - required as forge will not do so
#timeout 30s java -jar server.jar
# installer does not need this. only forge.jar

# Install forge
java -jar neoforge-20.2.88-installer.jar --installServer
rm -fr neoforge-20.2.88-installer.jar*