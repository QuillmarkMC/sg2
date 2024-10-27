execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/finish

#TODO: debug message to admins about chest restock finishing

scoreboard players set $RestockInProgress chestRestock 0
scoreboard players set $Restocking chestRestock 1