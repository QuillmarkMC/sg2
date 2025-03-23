execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 1
scoreboard players reset @s parkourTimer
scoreboard players operation @s respawnState = $Lobby.Parkour respawnState