#display particles per player at the next checkpoint pickup
#check per player if they are near the next checkpoint
#action bar timer?

execute store result storage sg:parkour Index int 1 run scoreboard players get @s parkour
function sg:lobby/parkour/checkpoint/get_index with storage sg:parkour