advancement revoke @s only sg:lobby/credits/strongis13
tellraw @s [{"text":"[!] ","color":"dark_green","bold": true},{"translate": "sg.lobby.credits.name.strongis13","color":"green","bold": false},{"translate": "sg.lobby.credits.role.lead","color":"white","bold": false},{"translate": "sg.lobby.credits.role.programmer","color":"white","bold": false}]
execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 2
