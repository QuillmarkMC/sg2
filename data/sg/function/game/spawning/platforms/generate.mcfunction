#kill old markers, if they werent already cleared
execute as @e[type=pig,tag=PlayerSpawnPlatform] at @s run tp @s ~ -200 ~
kill @e[type=pig,tag=PlayerSpawnPlatform]

#input number of players, scale by 1000, then do math for float precision before scaling back by 0.001
scoreboard players set $RotationAngle platformVar 360000
scoreboard players operation #NumPlayers_math platformVar = $NumPlayers platformVar
scoreboard players operation #NumPlayers_math platformVar *= #1000 math
execute store result storage sg:platforms Platform.Angle float 0.001 run scoreboard players operation $RotationAngle platformVar /= $NumPlayers platformVar

#reset armor stand rotation
execute as @e[type=armor_stand,tag=PlatformCenter,limit=1] at @s run tp @s ~ ~ ~ 0.0 0.0

scoreboard players set $Count platformVar 0
execute store result storage sg:platforms Platform.Distance int 1 run scoreboard players get $Radius platformVar
execute as @e[type=armor_stand,tag=PlatformCenter,limit=1] at @s run function sg:game/spawning/platforms/loop/advance with storage sg:platforms Platform
