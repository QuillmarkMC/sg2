#kill @e[tag=SGLibraryDoor]
#TODO: rotate doors so they swing open with teleport interpolation
fill -335 82 -296 -335 83 -296 air
fill -372 82 -296 -372 83 -296 air
execute positioned -335 82 -296 run playsound block.copper_door.open ambient @a
execute positioned -372 82 -296 run playsound block.copper_door.open ambient @a

scoreboard players set $LibraryDoor events 1