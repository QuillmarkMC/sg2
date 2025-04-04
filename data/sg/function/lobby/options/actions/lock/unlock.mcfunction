tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate": "text.lobby.options.actions.lock.unlock","color": "white"}]
execute at @s run playsound entity.iron_golem.death ambient @s ~ ~ ~ 1 1.5

scoreboard players set $Locked options 0
tag @s remove Admin