execute if score $Debug var matches 2.. run say sg:game/spawning/players/no_cap/spawn_player

# @s = current player getting spawned

scoreboard players add $PlayerCount var 1
tag @e[type=marker,tag=PlayerSpawnPlatform,limit=1,sort=random] add NextPlayerSpawnPosition
execute at @e[type=marker,tag=NextPlayerSpawnPosition,limit=1] run tp @s ~ ~1.5 ~ facing entity @e[type=armor_stand,tag=PlatformCenter,limit=1]
kill @e[type=marker,tag=NextPlayerSpawnPosition,limit=1]

execute if score $PlayerCount var >= $MAX_PLAYERS var run function sg:game/spawning/players/no_cap/reset_count