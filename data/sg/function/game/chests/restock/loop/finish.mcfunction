execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/finish

# $Restocking chestRestock will only be 0 during the first chest generation cycle, aka the beginning of the game, so the countdown will not start until all loot is generated
execute if score $Restocking chestRestock matches 0 run function sg:game/start_countdown/begin
execute if score $Restocking chestRestock matches 0 as @a at @s run playsound minecraft:block.respawn_anchor.deplete ambient @s ~ ~ ~ 1 1
execute if score $Restocking chestRestock matches 1 if data storage sg:options {Options:{chest_restock_mode:"all"}} run tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.chest.restock.finish.all","bold": false,"color": "white"}]
execute if score $Restocking chestRestock matches 1 if data storage sg:options {Options:{chest_restock_mode:"cornucopia"}} run tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.chest.restock.finish.cornucopia","bold": false,"color": "white"}]
execute if score $Restocking chestRestock matches 1 as @a at @s run playsound minecraft:block.chest.open ambient @s ~ ~ ~ 0.8 0.8
scoreboard players set $InProgress chestRestock 0
bossbar set sg:loot visible false