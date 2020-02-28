# DST-DSC
Don’t Starve Together Dedicated Server Configuration

## Intro
Read this one [Don’t Starve Together Dedicated Servers](https://dontstarve.fandom.com/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers) which written in **December 5, 2015**, some of the content is out of date.

## Server Tokens
Still, you can check how to generage a token:

> In order to run a public Dedicated Server, GSAs are required to enter their “cluster token”. This token proves ownership of Don’t Starve Together and allows Klei to moderate servers that violate their terms of service.
>
> To generate a cluster token, do the following:
>
> Run Don’t Starve Together (the actual game, not the server that is being set-up. GSAs need to log into steam). Click Play.
>
> Press tilde (~) (or ù on Azerty keyboards) to open the developer console and type:
>
> > `TheNet:GenerateClusterToken()`
> 
> This command will generate the cluster token under the name cluster_token.txt. 

## Install Mods
Put `dedicated_server_mods_setup.lua` under `Steam\steamapps\common\Don't Starve Together Dedicated Server\mods` and change to your mods you want to install to your server.

## Enable and Config Mods
Check ##Intro## link

> The second option is using a modoverrides.lua file. Dedicated servers can now enable mods and set mod configurations via a file ~~in the configuration directory named modoverrides.lua (\Documents\Klei\DoNotStarveTogether\modoverrides.lua)~~. An example of the contents of this file is

```
return {
    ["workshop-350811795"] = { enabled = true },
    ["workshop-387028143"] = { enabled = true },
    ["workshop-361336115"] = { enabled = true,
        configuration_options =
        {
            hunt_time = 6,
            ["String Phrase Option Name"] = "some value",
        }
    },
    ["workshop-336882447"] = { enabled = true }
}
```

> In order to retrieve the configuration_options for the mod, you will need to browse to the mod directory and open the modinfo.lua file. Copy the entire configuration_options table and paste in your modoverrides.lua. Then configure to your liking. If there is no configuration_options table, then the mod is not configurable.

However the file position changed:
[Dedicated Server: how can I enable server mods as of June 2019?](https://steamcommunity.com/app/322330/discussions/0/1639789306550759012/)

## Storage Folder
```
[Your cluster folder] (usually it has something like Cluster_1 in the name)
  Caves (if your claster has caves shard)
      backup (server log and char log backup after server restart)
      save (all caves data will be stored here)
      server.ini (settings for caves shard)
      leveldataoverride.lua (change it if you want to override caves generation)
      modoverrides.lua (change it to enable mods for caves)
      server_chat_log.txt (chat log for caves)
      server_log.txt (server log for caves)
  Master (for overworld shard)
      backup (server log and char log backup after server restart)
      save (all overworld data will be stored here)
      server.ini (settings for overworld shard)
      leveldataoverride.lua (change it if you want to override overworld generation)
      modoverrides.lua (change it to enable mods for overworld)
      server_chat_log.txt (chat log for overworld)
      server_log.txt (server log for overlord)
  cluster.ini (Cluster settings - name, desctiprion, game type etc.)
```

## Setup Server
https://steamcommunity.com/id/ToNiO44/myworkshopfiles/?section=guides&appid=322330
