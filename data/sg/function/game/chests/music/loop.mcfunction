#loop background music during loot generation at the beginning of a match
execute as @a at @s run playsound sg:music.loot record @s ~ ~ ~ 1 1
schedule function sg:game/chests/music/loop 430t