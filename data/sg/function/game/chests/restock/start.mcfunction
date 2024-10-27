#TODO: error message if restock is already in progress

execute unless score $RestockInProgress chestRestock matches 1 run function sg:game/chests/restock/loop/begin
