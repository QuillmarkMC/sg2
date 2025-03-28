execute as @a at @s run playsound sg:music.deathmatch record @s ~ ~ ~ 1 1
tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.deathmatch.begin","with": [{"score": {"name": "$Timer","objective": "border"}}],"bold": false,"color": "white"}]
