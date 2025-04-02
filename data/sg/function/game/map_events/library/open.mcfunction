execute positioned -351 82 -287 run playsound block.piston.extend ambient @a ~ ~ ~ 1 0.75
setblock -351 83 -287 air
setblock -351 82 -287 air
setblock -351 81 -287 campfire[lit=false]
setblock -352 82 -288 air
scoreboard players set $LibraryDoor events 1