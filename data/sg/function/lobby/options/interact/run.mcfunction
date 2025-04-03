#called with entity Marker riding Interaction custom data
$execute if score $Locked options matches 1 if predicate {"condition": "minecraft:random_chance","chance": $(AdminLocked)} unless entity @s[tag=Admin] run return run function freeze:lobby/menu/interact/fail

execute at @s run playsound ui.button.click ambient @s ~ ~ ~ 0.5 0.75
$function $(Function)
