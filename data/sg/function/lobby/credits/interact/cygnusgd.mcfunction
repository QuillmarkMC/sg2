advancement revoke @s only sg:lobby/credits/cygnusgd
tellraw @s [{"text":"[!] ","color":"dark_green","bold": true},{"translate": "sg.lobby.credits.name.cygnusgd","color":"green","bold": false},{"translate": "sg.lobby.credits.role.builder","color":"white","bold": false},{"translate": "sg.lobby.credits.role.textures","color":"white","bold": false},{"translate": "sg.lobby.credits.role.models","color":"white","bold": false}]
execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 2
