# (Minceraft) Minecraft v1.20.4 Docker Server
A simple NeoForge Minecraft server, running in a docker container.

Runs a NeoForge Minecraft server, version 1.20.4.
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
    -v /minceraft:/server \
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
    -v /minceraft:/server \
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
    -v /minceraft:/server \
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

| Variable | Description | Default |
| --- | --- | --- |
| ALLOWFLIGHT | Allows players to fly in Survival mode | false |
| ALLOWNETHER | Allows players to travel to the Nether | true |
| BROADCASTCONSOLETOOPS | Sends console commands to operators | true |
| BROADCASTRCONTOOPS | Sends RCON commands to operators | true |
| BUGREPORTLINK | URL for bug reporting | "" |
| DEBUG | Enables debug mode | false |
| DIFFICULTY | Sets the difficulty level (peaceful, easy, normal, hard) | easy |
| ENABLECOMMANDBLOCK | Enables command blocks | true |
| ENABLEJMXMONITORING | Enables JMX monitoring | false |
| ENABLEQUERY | Enables GameSpy4 protocol server listener | false |
| ENABLERCON | Enables remote access to the server console | false |
| ENABLESTATUS | Enables server status | true |
| ENFORCESECUREPROFILE | Enforces secure profiles | true |
| ENFORCEWHITELIST | Enforces the whitelist | false |
| ENTITYBROADCASTRANGEPERCENTAGE | Entity broadcast range percentage | 100 |
| FORCEGAMEMODE | Forces players to join in the default game mode | false |
| FUNCTIONPERMISSIONLEVEL | Permission level for function commands | 2 |
| GAMEMODE | Sets the game mode (survival, creative, adventure, spectator) | survival |
| GENERATESTRUCTURES | Generates structures like villages | true |
| GENERATORSETTINGS | Custom generator settings | {} |
| HARDCORE | Enables hardcore mode | false |
| HIDEONLINEPLAYERS | Hides online players from the server list | false |
| INITIALDISABLEDPACKS | Initial disabled data packs | "" |
| INITIALENABLEDPACKS | Initial enabled data packs | vanilla |
| LEVELNAME | Name of the level | world |
| LEVELSEED | Seed for the level generator | "" |
| LEVELTYPE | Type of the level generator | minecraft:normal |
| LOGIPS | Logs player IP addresses | true |
| MAXCHAINEDNEIGHBORUPDATES | Maximum chained neighbor updates | 1000000 |
| MAXPLAYERS | Maximum number of players | 20 |
| MAXTICKTIME | Maximum tick time | 60000 |
| MAXWORLDSIZE | Maximum world size | 29999984 |
| MOTD | Message of the day | A Minecraft Server |
| NETWORKCOMPRESSIONTHRESHOLD | Network compression threshold | 256 |
| ONLINEMODE | Server verifies connecting players | true |
| OPPERMISSIONLEVEL | Operator permission level | 4 |
| PLAYERIDLETIMEOUT | Player idle timeout | 0 |
| PREVENTPROXYCONNECTIONS | Prevents proxy connections | false |
| PVP | Enables player vs player combat | true |
| QUERYPORT | Query port | 25565 |
| RATELIMIT | Rate limit for packets | 0 |
| RCONPASSWORD | RCON password | "" |
| RCONPORT | RCON port | 25575 |
| REGIONFILECOMPRESSION | Region file compression method | deflate |
| REQUIRERESOURCEPACK | Requires players to use the resource pack | false |
| RESOURCEPACK | URL to the resource pack | "" |
| RESOURCEPACKID | Resource pack ID | "" |
| RESOURCEPACKPROMPT | Resource pack prompt message | "" |
| RESOURCEPACKSHA1 | SHA-1 hash of the resource pack | "" |
| SERVERIP | Server IP address | "" |
| SERVERPORT | Server port | 25565 |
| SIMULATIONDISTANCE | Simulation distance | 10 |
| SPAWNANIMALS | Spawns animals | true |
| SPAWNMONSTERS | Spawns monsters | true |
| SPAWNNPCS | Spawns NPCs | true |
| SPAWNPROTECTION | Spawn protection radius | 16 |
| SYNCCHUNKWITES | Synchronizes chunk writes | true |
| TEXTFILTERINGCONFIG | Text filtering configuration | "" |
| USENATIVETRANSPORT | Uses native transport | true |
| VIEWDISTANCE | View distance | 10 |
| WHITELIST | Enables the whitelist | false |



[For more information, please checkout the Minecraft Wiki](https://minecraft.fandom.com/wiki/Server.properties)
