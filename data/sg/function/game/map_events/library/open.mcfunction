execute if score $Debug var matches 1.. run say sg:game/map_events/library/open
# @s = player who successfully opened door

kill @e[tag=SGLibraryDoor,type=interaction]
#TODO: change model of door from locked to unlocked
execute as @e[type=item_display,tag=SGLibraryDoor,limit=2] run data modify entity @s item.components.minecraft:item_model set value "sg:library_door_unlocked"
execute as @e[type=item_display,tag=SGLibraryDoor,limit=2] at @s run rotate @s ~90 0
fill -335 82 -296 -335 83 -296 air
fill -372 82 -296 -372 83 -296 air
execute positioned -335 82 -296 run playsound block.iron_door.open ambient @a
execute positioned -372 82 -296 run playsound block.iron_door.open ambient @a

clear @s phantom_membrane[custom_data~{"LibraryKey":true}]

scoreboard players set $LibraryDoor events 1