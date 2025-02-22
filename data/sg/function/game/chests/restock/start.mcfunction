#TODO: error message to admins about chest restock already in progress
#execute if score $RestockInProgress chestRestock matches 1
execute unless score $RestockInProgress chestRestock matches 1 run function sg:game/chests/restock/loop/begin
