# (Minceraft) Minecraft v1.12.2 Docker Server
A simple Forge Minecraft server, running in a docker container.

All options within the `server.properties` file have been ported to enviromental variables. Using these variables, the server.properties file is regenerated on each startup of the container. It's recommended to use a `.env` file for your variables to avoid unexpected changes to your server configuration.

## Getting Started

### Simple run with all defaults.
```bash
docker run -it \
    --name minceraft \
    -p 25565:25565 \
    jimurrito/minceraft:latest
```

### Run with imported mods
```bash
docker run -it \
    --name minceraft \
    -v /path/to/mods:/mods \
    -p 25565:25565 \
    jimurrito/minceraft:latest
```


### Run with imported mods & Customized server config
```bash
docker run -it \
    --name minceraft \
    -v /path/to/mods:/mods \
    -e SRVR_LEVELNAME="My Minceraft Server" \
    -e SRVR_LEVELSEED="docker" \
    -p 25565:25565 \
    jimurrito/minceraft:latest
```


### Run with imported mods & Customized server config in a .env file.
```bash
docker run -it \
    --name minceraft \
    -v /path/to/mods:/mods \
    --env-file ./server.env \
    -p 25565:25565 \
    jimurrito/minceraft:latest
```

`./server.env`
```bash
SRVR_LEVELNAME="My Minceraft Server"
SRVR_LEVELSEED="docker"
SRVR_MOTD="I love Minceraft!"
```

## Parameters

### Java Settings
| Variable | Description | Default |
| --- | --- | --- |
| JAVA_MINRAM | Minimum ram for JVM. | 1 (1GB) |
| JAVA_MAXRAM | Maximum ram for JVM. | 2 (2GB) |
| JAVA_GCTHREADS | Garbage collector threads. | 2 |

### Minecraft Server settings 
Options below are used to generate `server.properties` on each start-up.


| Variable | Default |
| --- | --- |
| SRVR_GENERATORSETTINGS | |
| SRVR_OPPERMISSIONLEVEL |4 |
| SRVR_ALLOWNETHER |"true" |
| SRVR_LEVELNAME |"minceraft" |
| SRVR_ENABLEQUERY |"false" |
| SRVR_ALLOWFLIGHT |"false" |
| SRVR_PREVENTPROXYCONNECTIONS |"false" |
| SRVR_SERVERPORT |25565 |
| SRVR_MAXWORLDSIZE |29999984 |
| SRVR_LEVELTYPE |"DEFAULT" |
| SRVR_ENABLERCON |"false" |
| SRVR_LEVELSEED ||
| SRVR_FORCEGAMEMODE |"false" |
| SRVR_SERVERIP ||
| SRVR_NETWORKCOMPRESSIONTHRESHOLD |256 |
| SRVR_MAXBUILDHEIGHT |256 |
| SRVR_SPAWNNPCS |"true" |
| SRVR_WHITELIST |"false" |
| SRVR_SPAWNANIMALS |"true" |
| SRVR_HARDCORE |"false" |
| SRVR_SNOOPERENABLED |"true" |
| SRVR_RESOURCEPACKSHA1 ||
| SRVR_ONLINEMODE |"true" |
| SRVR_RESOURCEPACK ||
| SRVR_PVP |"true" |
| SRVR_DIFFICULTY |1 (easy) |
| SRVR_ENABLECOMMANDBLOCK |"false" |
| SRVR_GAMEMODE |0 (survival) |
| SRVR_PLAYERIDLETIMEOUT |0 (Disabled) |
| SRVR_MAXPLAYERS |20 |
| SRVR_MAXTICKTIME |60000 |
| SRVR_SPAWNMONSTERS |"true" |
| SRVR_VIEWDISTANCE |10 |
| SRVR_GENERATESTRUCTURES |"true" |
| SRVR_MOTD |<Server Promo> |

[For more information, please checkout the Minecraft Wiki](https://minecraft.fandom.com/wiki/Server.properties)
