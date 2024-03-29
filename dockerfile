#AMD 64 VERSION
FROM debian:bookworm

#
# Java Props
#
ARG JAVA_MINRAM=1
ENV JAVA_MINRAM=${JAVA_MINRAM}

ARG JAVA_MAXRAM=2
ENV JAVA_MAXRAM=${JAVA_MAXRAM}

ARG JAVA_GCTHREADS=2
ENV JAVA_GCTHREADS=${JAVA_GCTHREADS}

#
# MC Server VARs
# 

ARG SRVR_GENERATORSETTINGS
ENV SRVR_GENERATORSETTINGS=${SRVR_GENERATORSETTINGS}

ARG SRVR_OPPERMISSIONLEVEL=4
ENV SRVR_OPPERMISSIONLEVEL=${SRVR_OPPERMISSIONLEVEL}

ARG SRVR_ALLOWNETHER="true"
ENV SRVR_ALLOWNETHER=${SRVR_ALLOWNETHER}

ARG SRVR_LEVELNAME="minceraft"
ENV SRVR_LEVELNAME=${SRVR_LEVELNAME}

ARG SRVR_ENABLEQUERY="false"
ENV SRVR_ENABLEQUERY=${SRVR_ENABLEQUERY}

ARG SRVR_ALLOWFLIGHT="false"
ENV SRVR_ALLOWFLIGHT=${SRVR_ALLOWFLIGHT}

ARG SRVR_PREVENTPROXYCONNECTIONS="false"
ENV SRVR_PREVENTPROXYCONNECTIONS=${SRVR_PREVENTPROXYCONNECTIONS}

ARG SRVR_SERVERPORT=25565
ENV SRVR_SERVERPORT=${SRVR_SERVERPORT}

ARG SRVR_MAXWORLDSIZE=29999984
ENV SRVR_MAXWORLDSIZE=${SRVR_MAXWORLDSIZE}

ARG SRVR_LEVELTYPE="DEFAULT"
ENV SRVR_LEVELTYPE=${SRVR_LEVELTYPE}

ARG SRVR_ENABLERCON="false"
ENV SRVR_ENABLERCON=${SRVR_ENABLERCON}

ARG SRVR_LEVELSEED=""
ENV SRVR_LEVELSEED=${SRVR_LEVELSEED}

ARG SRVR_FORCEGAMEMODE="false"
ENV SRVR_FORCEGAMEMODE=${SRVR_FORCEGAMEMODE}

ARG SRVR_SERVERIP=""
ENV SRVR_SERVERIP=${SRVR_SERVERIP}

ARG SRVR_NETWORKCOMPRESSIONTHRESHOLD=256
ENV SRVR_NETWORKCOMPRESSIONTHRESHOLD=${SRVR_NETWORKCOMPRESSIONTHRESHOLD}

ARG SRVR_MAXBUILDHEIGHT=256
ENV SRVR_MAXBUILDHEIGHT=${SRVR_MAXBUILDHEIGHT}

ARG SRVR_SPAWNNPCS="true"
ENV SRVR_SPAWNNPCS=${SRVR_SPAWNNPCS}

ARG SRVR_WHITELIST="false"
ENV SRVR_WHITELIST=${SRVR_WHITELIST}

ARG SRVR_SPAWNANIMALS="true"
ENV SRVR_SPAWNANIMALS=${SRVR_SPAWNANIMALS}

ARG SRVR_HARDCORE="false"
ENV SRVR_HARDCORE=${SRVR_HARDCORE}

ARG SRVR_SNOOPERENABLED="true"
ENV SRVR_SNOOPERENABLED=${SRVR_SNOOPERENABLED}

ARG SRVR_RESOURCEPACKSHA1
ENV SRVR_RESOURCEPACKSHA1=${SRVR_RESOURCEPACKSHA1}

ARG SRVR_ONLINEMODE="true"
ENV SRVR_ONLINEMODE=${SRVR_ONLINEMODE}

ARG SRVR_RESOURCEPACK
ENV SRVR_RESOURCEPACK=${SRVR_RESOURCEPACK}

ARG SRVR_PVP="true"
ENV SRVR_PVP=${SRVR_PVP}

ARG SRVR_DIFFICULTY=1
ENV SRVR_DIFFICULTY=${SRVR_DIFFICULTY}

ARG SRVR_ENABLECOMMANDBLOCK="false"
ENV SRVR_ENABLECOMMANDBLOCK=${SRVR_ENABLECOMMANDBLOCK}

ARG SRVR_GAMEMODE=0
ENV SRVR_GAMEMODE=${SRVR_GAMEMODE}

ARG SRVR_PLAYERIDLETIMEOUT=0
ENV SRVR_PLAYERIDLETIMEOUT=${SRVR_PLAYERIDLETIMEOUT}

ARG SRVR_MAXPLAYERS=20
ENV SRVR_MAXPLAYERS=${SRVR_MAXPLAYERS}

ARG SRVR_MAXTICKTIME=60000
ENV SRVR_MAXTICKTIME=${SRVR_MAXTICKTIME}

ARG SRVR_SPAWNMONSTERS="true"
ENV SRVR_SPAWNMONSTERS=${SRVR_SPAWNMONSTERS}

ARG SRVR_VIEWDISTANCE=10
ENV SRVR_VIEWDISTANCE=${SRVR_VIEWDISTANCE}

ARG SRVR_GENERATESTRUCTURES="true"
ENV SRVR_GENERATESTRUCTURES=${SRVR_GENERATESTRUCTURES}

ARG SRVR_MOTD="Download the Docker Minceraft Server @https://hub.docker.com/r/jimurrito/minceraft"
ENV SRVR_MOTD=${SRVR_MOTD}

#
# Build
# 

USER root

ADD ./scripts /scripts
ADD ./server /server

RUN bash /scripts/addRepos.sh

RUN apt update && apt install --upgrade
RUN apt install wget shared-mime-info libgtk2.0-0 perl openjdk-8-jre -y

WORKDIR /server

RUN bash /scripts/getMCServer.bash
RUN bash /scripts/makeLinks.sh
RUN rm -fr /scripts
RUN rm -f *.deb

EXPOSE 25565

CMD bash startSrvr.bash