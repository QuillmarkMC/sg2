scoreboard players set $Timer border 120
execute store result bossbar sg:border max run scoreboard players get $Timer border
bossbar set sg:border visible true
scoreboard players operation $State border = $Deathmatch border
execute as @a at @s run playsound sg:music.deathmatch record @s ~ ~ ~ 1 1
tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.deathmatch.begin","with": [{"score": {"name": "$Timer","objective": "border"}}],"bold": false,"color": "white"}]
