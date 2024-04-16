# (Minceraft) Minecraft v1.20.2 Docker Server
A simple Forge Minecraft server, running in a docker container.

Runs a Forge Minecraft server, version 1.20.2.
Supports ARM64 and x86-64

All options within the `server.properties` file have been ported to enviromental variables. Using these variables, the server.properties file is regenerated on each startup of the container. It's recommended to use a `.env` file for your variables to avoid unexpected changes to your server configuration.

### Links

- [Docker Hub](https://hub.docker.com/r/jimurrito/minceraft)

- [Github](https://github.com/jimurrito/minceraft)

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
    -e LEVELNAME="My Minceraft Server" \
    -e LEVELSEED="docker" \
    -p 25565:25565 \
    jimurrito/minceraft:latest
```


### Run with imported mods & Customized server config in a .env file.
```bash
docker run -it \
    --name minceraft \
    -v /path/to/mods:/mods \
    -v /path/to/logs:/logs \
    --env-file ./server.env \
    -p 25565:25565 \
    jimurrito/minceraft:latest
```

`./server.env`
```bash
LEVELNAME="My Minceraft Server"
LEVELSEED="docker"
MOTD="I love Minceraft!"
```

## Parameters

### Minecraft Server settings 
Options below are used to generate `server.properties` on each start-up.

| Variable | Default |
| --- | --- |
| ALLOWFLIGHT | "false" |
| ALLOWNETHER | "true" |
| BROADCASTCONSOLETOOPS | "true" |
| BROADCASTRCONTOOPS | "true" |
| DIFFICULTY | "easy" |
| ENABLECOMMANDBLOCK | "false" |
| ENABLEJMXMONITORING | "false" |
| ENABLEQUERY | "false" |
| ENABLERCON | "false" |
| ENABLESTATUS | "true" |
| ENFORCESECUREPROFILE | "true" |
| ENFORCEWHITELIST | "false" |
| ENTITYBROADCASTRANGEPERCENTAGE | "100" |
| FORCEGAMEMODE | "false" |
| FUNCTIONPERMISSIONLEVEL | "2" |
| GAMEMODE | "survival" |
| GENERATESTRUCTURES | "true" |
| GENERATORSETTINGS | "{}" |
| HARDCORE | "false" |
| HIDEONLINEPLAYERS | "false" |
| INITIALDISABLEDPACKS |  |
| INITIALENABLEDPACKS | "vanilla" |
| LEVELNAME | "minceraft-server" |
| LEVELSEED |  |
| LEVELTYPE | "minecraft:normal" |
| LOGIPS | "true" |
| MAXCHAINEDNEIGHBORUPDATES | "1000000" |
| MAXPLAYERS | "20" |
| MAXTICKTIME | "60000" |
| MAXWORLDSIZE | "29999984" |
| MOTD | -Server-Promo- |
| NETWORKCOMPRESSIONTHRESHOLD | "256" |
| ONLINEMODE | "true" |
| OPPERMISSIONLEVEL | "4" |
| PLAYERIDLETIMEOUT | "0" |
| PREVENTPROXYCONNECTIONS | "false" |
| PVP | "true" |
| QUERYPORT | "25565" |
| RATELIMIT | "0" |
| RCONPASSWORD |  |
| RCONPORT | "25575" |
| REQUIRERESOURCEPACK | "false" |
| RESOURCEPACK |  |
| RESOURCEPACKPROMPT |  |
| RESOURCEPACKSHA1 |  |
| SERVERIP |  |
| SERVERPORT | "25565" |
| SIMULATIONDISTANCE | "10" |
| SPAWNANIMALS | "true" |
| SPAWNMONSTERS | "true" |
| SPAWNNPCS | "true" |
| SPAWNPROTECTION | "16" |
| SYNCCHUNKWRITES | "true" |
| TEXTFILTERINGCONFIG |  |
| USENATIVETRANSPORT | "true" |
| VIEWDISTANCE | "10" |
| WHITELIST | "false" |


[For more information, please checkout the Minecraft Wiki](https://minecraft.fandom.com/wiki/Server.properties)
