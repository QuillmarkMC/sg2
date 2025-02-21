execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/finish

#TODO: debug message to admins about chest restock finishing
# $Restocking chestRestock will only be 0 during the first chest generation cycle, aka the beginning of the game, so the countdown will not start until all loot is generated
execute if score $Restocking chestRestock matches 0 run function sg:game/start_countdown/begin
scoreboard players set $RestockInProgress chestRestock 0
