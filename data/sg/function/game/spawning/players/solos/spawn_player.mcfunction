execute if score $Debug var matches 3.. run say sg:game/spawning/players/solos/spawn_player

tag @e[type=marker,tag=PlayerSpawnPlatform,limit=1,sort=random] add NextPlayerSpawnPosition
execute at @e[type=marker,tag=NextPlayerSpawnPosition,limit=1] run tp @s ~ ~1.5 ~ facing entity @e[type=armor_stand,tag=PlatformCenter,limit=1]
kill @e[type=marker,tag=NextPlayerSpawnPosition,limit=1]