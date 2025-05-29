advancement revoke @s only sg:lobby/credits/trianull
tellraw @s [{"text":"[!] ","color":"dark_green","bold": true},{"translate": "sg.lobby.credits.name.trianull","color":"green","bold": false},{"translate": "sg.lobby.credits.role.music","color":"white","bold": false}]
execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 2
