#!/bin/bash
echo > server.properties

OPTIONS=()
OPTIONS+=("generator-settings=$SRVR_GENERATORSETTINGS")
OPTIONS+=("op-permission-level=$SRVR_OPPERMISSIONLEVEL")
OPTIONS+=("allow-nether=$SRVR_ALLOWNETHER")
OPTIONS+=("level-name=$SRVR_LEVELNAME")
OPTIONS+=("enable-query=$SRVR_ENABLEQUERY")
OPTIONS+=("allow-flight=$SRVR_ALLOWFLIGHT")
OPTIONS+=("prevent-proxy-connections=$SRVR_PREVENTPROXYCONNECTIONS")
OPTIONS+=("server-port=$SRVR_SERVERPORT")
OPTIONS+=("max-world-size=$SRVR_MAXWORLDSIZE")
OPTIONS+=("level-type=$SRVR_LEVELTYPE")
OPTIONS+=("enable-rcon=$SRVR_ENABLERCON")
OPTIONS+=("level-seed=$SRVR_LEVELSEED")
OPTIONS+=("force-gamemode=$SRVR_FORCEGAMEMODE")
OPTIONS+=("server-ip=$SRVR_SERVERIP")
OPTIONS+=("network-compression-threshold=$SRVR_NETWORKCOMPRESSIONTHRESHOLD")
OPTIONS+=("max-build-height=$SRVR_MAXBUILDHEIGHT")
OPTIONS+=("spawn-npcs=$SRVR_SPAWNNPCS")
OPTIONS+=("white-list=$SRVR_WHITELIST")
OPTIONS+=("spawn-animals=$SRVR_SPAWNANIMALS")
OPTIONS+=("hardcore=$SRVR_HARDCORE")
OPTIONS+=("snooper-enabled=$SRVR_SNOOPERENABLED")
OPTIONS+=("resource-pack-sha1=$SRVR_RESOURCEPACKSHA1")
OPTIONS+=("online-mode=$SRVR_ONLINEMODE")
OPTIONS+=("resource-pack=$SRVR_RESOURCEPACK")
OPTIONS+=("pvp=$SRVR_PVP")
OPTIONS+=("difficulty=$SRVR_DIFFICULTY")
OPTIONS+=("enable-command-block=$SRVR_ENABLECOMMANDBLOCK")
OPTIONS+=("gamemode=$SRVR_GAMEMODE")
OPTIONS+=("player-idle-timeout=$SRVR_PLAYERIDLETIMEOUT")
OPTIONS+=("max-players=$SRVR_MAXPLAYERS")
OPTIONS+=("max-tick-time=$SRVR_MAXTICKTIME")
OPTIONS+=("spawn-monsters=$SRVR_SPAWNMONSTERS")
OPTIONS+=("view-distance=$SRVR_VIEWDISTANCE")
OPTIONS+=("generate-structures=$SRVR_GENERATESTRUCTURES")
OPTIONS+=("motd=$SRVR_MOTD")

for OPTION in "${OPTIONS[@]}"; do 
    echo "$OPTION" >> server.properties
done