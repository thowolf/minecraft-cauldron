# Minecraft Cauldron

These are docker images for Minecraft Cauldron running on an
[Vanilla Minecraft](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/).
The cuurrent container size is ```232.1 MB```


## Usage

```
docker run -v /minecraft/merge -v /minecraft/world -v /minecraft/logs --name minecraft-data busybox true
docker run -p 25565:25565 -d --volumes-from minecraft-data --name minecraft webhippie/minecraft-cauldron:latest start

# Execute this for further available commands
docker exec -ti minecraft manage help
```


## Versions

* [latest](https://github.com/dockhippie/minecraft-cauldron/tree/master)
  available as ```webhippie/minecraft-cauldron:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-cauldron/)
* [1.1207.01](https://github.com/dockhippie/minecraft-cauldron/tree/1.1207.01)
  available as ```webhippie/minecraft-cauldron:1.1207.01``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-cauldron/)


## Available environment variables

```bash
ENV SERVER_MAXHEAP 2048M
ENV SERVER_MINHEAP 512M
ENV SERVER_MAXPERM 128M
ENV SERVER_OPTS nogui
ENV SERVER_MOTD Minecraft
ENV SERVER_RCONPWD webhippie
```


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   bash              Start a shell on container
   commands          List all available sub commands
   config            Update server config
   console           Start interactive console
   deop              Deop a specific player
   mcrcon            Execute a remote command
   op                Op a specific player
   pid               Return the process id of the server
   prepare           Prepare environment
   reload            Reload the server
   running           Check if the server is running
   save-all          Save the current world state
   save-off          Disable the autosave feature
   save-on           Enable the autosave feature
   say               Say something on the server
   start             Start the server
   stop              Stop the server
   weather-clear     Set the weather to clear
   weather-rain      Set the weather to rain
   weather-thunder   Set the weather to thunder
   whitelist         Whitelist on the server
   whitelist-add     Add player to whitelist
   whitelist-off     Disable the whitelist
   whitelist-on      Enable the whitelist
   whitelist-reload  Reload the whitelist
   whitelist-remove  Remove player from whitelist
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
