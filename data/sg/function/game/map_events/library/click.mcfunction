execute if score $Debug var matches 1.. run say sg:game/map_events/library/open

#check if player is holding key when they attempt to open the door
advancement revoke @s only sg:game/library_door

#if
execute if items entity @s weapon.mainhand phantom_membrane[custom_data~{"LibraryKey":true}] run return run function sg:game/map_events/library/open
#else
title @s actionbar {"translate":"sg.game.library.locked",color:white}
execute at @s run playsound block.chest.locked ambient @s ~ ~ ~