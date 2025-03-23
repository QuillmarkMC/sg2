scoreboard players add @s parkourCheckpoint 1

execute if score @s parkourCheckpoint matches ..1 run function sg:lobby/parkour/start
execute if score @s parkourCheckpoint matches 2..7 at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 2
execute if score @s parkourCheckpoint matches 8.. run function sg:lobby/parkour/complete
