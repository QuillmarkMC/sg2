execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/finish

#TODO: debug message to admins about chest restock finishing
#TODO: dont spam finish function 1000 times when loot generation is over
# $Restocking chestRestock will only be 0 during the first chest generation cycle, aka the beginning of the game, so the countdown will not start until all loot is generated
execute if score $Restocking chestRestock matches 0 run function sg:game/start_countdown/begin
execute if score $Restocking chestRestock matches 1 run tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.chest.restock.finish","bold": false,"color": "white"}]
#execute if score $Restocking chestRestock matches 1 as @a at @s run playsound minecraft:block.chest.open record @s ~ ~ ~ 0.8 0.8
scoreboard players set $RestockInProgress chestRestock 0
