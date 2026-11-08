advancement revoke @s only sg:lobby/credits/galacticcharlie
tellraw @s [{"text":"[!] ","color":"dark_green","bold": true},{"translate": "sg.lobby.credits.name.galacticcharlie","color":"green","bold": false},{"translate": "sg.lobby.credits.role.builder","color":"white","bold": false}]
execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 2
