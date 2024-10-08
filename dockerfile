#
FROM debian:bookworm

#
# MC Server VARs
# 

ARG ALLOWFLIGHT="false"
ENV ALLOWFLIGHT=${ALLOWFLIGHT}

ARG ALLOWNETHER="true"
ENV ALLOWNETHER=${ALLOWNETHER}

ARG BROADCASTCONSOLETOOPS="true"
ENV BROADCASTCONSOLETOOPS=${BROADCASTCONSOLETOOPS}

ARG BROADCASTRCONTOOPS="true"
ENV BROADCASTRCONTOOPS=${BROADCASTRCONTOOPS}

ARG BUGREPORTLINK=""
ENV BUGREPORTLINK=${BUGREPORTLINK}

ARG DEBUG="false"
ENV DEBUG=${DEBUG}

ARG DIFFICULTY="easy"
ENV DIFFICULTY=${DIFFICULTY}

ARG ENABLECOMMANDBLOCK="true"
ENV ENABLECOMMANDBLOCK=${ENABLECOMMANDBLOCK}

ARG ENABLEJMXMONITORING="false"
ENV ENABLEJMXMONITORING=${ENABLEJMXMONITORING}

ARG ENABLEQUERY="false"
ENV ENABLEQUERY=${ENABLEQUERY}

ARG ENABLERCON="false"
ENV ENABLERCON=${ENABLERCON}

ARG ENABLESTATUS="true"
ENV ENABLESTATUS=${ENABLESTATUS}

ARG ENFORCESECUREPROFILE="true"
ENV ENFORCESECUREPROFILE=${ENFORCESECUREPROFILE}

ARG ENFORCEWHITELIST="false"
ENV ENFORCEWHITELIST=${ENFORCEWHITELIST}

ARG ENTITYBROADCASTRANGEPERCENTAGE="100"
ENV ENTITYBROADCASTRANGEPERCENTAGE=${ENTITYBROADCASTRANGEPERCENTAGE}

ARG FORCEGAMEMODE="false"
ENV FORCEGAMEMODE=${FORCEGAMEMODE}

ARG FUNCTIONPERMISSIONLEVEL="2"
ENV FUNCTIONPERMISSIONLEVEL=${FUNCTIONPERMISSIONLEVEL}

ARG GAMEMODE="survival"
ENV GAMEMODE=${GAMEMODE}

ARG GENERATESTRUCTURES="true"
ENV GENERATESTRUCTURES=${GENERATESTRUCTURES}

ARG GENERATORSETTINGS="{}"
ENV GENERATORSETTINGS=${GENERATORSETTINGS}

ARG HARDCORE="false"
ENV HARDCORE=${HARDCORE}

ARG HIDEONLINEPLAYERS="false"
ENV HIDEONLINEPLAYERS=${HIDEONLINEPLAYERS}

ARG INITIALDISABLEDPACKS=""
ENV INITIALDISABLEDPACKS=${INITIALDISABLEDPACKS}

ARG INITIALENABLEDPACKS="vanilla"
ENV INITIALENABLEDPACKS=${INITIALENABLEDPACKS}

ARG LEVELNAME="minceraft-server"
ENV LEVELNAME=${LEVELNAME}

ARG LEVELSEED=""
ENV LEVELSEED=${LEVELSEED}

ARG LEVELTYPE="minecraft:normal"
ENV LEVELTYPE=${LEVELTYPE}

ARG LOGIPS="true"
ENV LOGIPS=${LOGIPS}

ARG MAXCHAINEDNEIGHBORUPDATES="1000000"
ENV MAXCHAINEDNEIGHBORUPDATES=${MAXCHAINEDNEIGHBORUPDATES}

ARG MAXPLAYERS="20"
ENV MAXPLAYERS=${MAXPLAYERS}

ARG MAXTICKTIME="60000"
ENV MAXTICKTIME=${MAXTICKTIME}

ARG MAXWORLDSIZE="29999984"
ENV MAXWORLDSIZE=${MAXWORLDSIZE}

ARG MOTD="Java Minceaft Server by Jimurrito"
ENV MOTD=${MOTD}

ARG NETWORKCOMPRESSIONTHRESHOLD="256"
ENV NETWORKCOMPRESSIONTHRESHOLD=${NETWORKCOMPRESSIONTHRESHOLD}

ARG ONLINEMODE="true"
ENV ONLINEMODE=${ONLINEMODE}

ARG OPPERMISSIONLEVEL="4"
ENV OPPERMISSIONLEVEL=${OPPERMISSIONLEVEL}

ARG PLAYERIDLETIMEOUT="0"
ENV PLAYERIDLETIMEOUT=${PLAYERIDLETIMEOUT}

ARG PREVENTPROXYCONNECTIONS="false"
ENV PREVENTPROXYCONNECTIONS=${PREVENTPROXYCONNECTIONS}

ARG PVP="true"
ENV PVP=${PVP}

ARG QUERYPORT="25565"
ENV QUERYPORT=${QUERYPORT}

ARG RATELIMIT="0"
ENV RATELIMIT=${RATELIMIT}

ARG RCONPASSWORD=""
ENV RCONPASSWORD=${RCONPASSWORD}

ARG RCONPORT="25575"
ENV RCONPORT=${RCONPORT}

ARG REGIONFILECOMPRESSION="deflate"
ENV REGIONFILECOMPRESSION=${REGIONFILECOMPRESSION}

ARG REQUIRERESOURCEPACK="false"
ENV REQUIRERESOURCEPACK=${REQUIRERESOURCEPACK}

ARG RESOURCEPACK=""
ENV RESOURCEPACK=${RESOURCEPACK}

ARG RESOURCEPACKID=""
ENV RESOURCEPACKID=${RESOURCEPACKID}

ARG RESOURCEPACKPROMPT=""
ENV RESOURCEPACKPROMPT=${RESOURCEPACKPROMPT}

ARG RESOURCEPACKSHA1=""
ENV RESOURCEPACKSHA1=${RESOURCEPACKSHA1}

ARG SERVERIP=""
ENV SERVERIP=${SERVERIP}

ARG SERVERPORT="25565"
ENV SERVERPORT=${SERVERPORT}

ARG SIMULATIONDISTANCE="10"
ENV SIMULATIONDISTANCE=${SIMULATIONDISTANCE}

ARG SPAWNANIMALS="true"
ENV SPAWNANIMALS=${SPAWNANIMALS}

ARG SPAWNMONSTERS="true"
ENV SPAWNMONSTERS=${SPAWNMONSTERS}

ARG SPAWNNPCS="true"
ENV SPAWNNPCS=${SPAWNNPCS}

ARG SPAWNPROTECTION="16"
ENV SPAWNPROTECTION=${SPAWNPROTECTION}

ARG SYNCCHUNKWITES="true"
ENV SYNCCHUNKWITES=${SYNCCHUNKWITES}

ARG TEXTFILTERINGCONFIG=""
ENV TEXTFILTERINGCONFIG=${TEXTFILTERINGCONFIG}

ARG USENATIVETRANSPORT="true"
ENV USENATIVETRANSPORT=${USENATIVETRANSPORT}

ARG VIEWDISTANCE="10"
ENV VIEWDISTANCE=${VIEWDISTANCE}

ARG WHITELIST="false"
ENV WHITELIST=${WHITELIST}


#
# Build
#

USER root

RUN apt update && apt install --upgrade
RUN apt install wget openjdk-17-jre-headless -y

VOLUME [ "/server" ]
RUN mkdir /server

ADD ./src /src
WORKDIR /src/server

RUN bash ../getMCServer.bash
RUN bash ../makeLinks.sh

EXPOSE 25565

CMD bash server-up.bash
