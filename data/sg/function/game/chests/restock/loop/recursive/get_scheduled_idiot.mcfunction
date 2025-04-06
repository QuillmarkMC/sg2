execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/recursive/get_scheduled_idiot

#count how many ticks were delayed for forceloading
scoreboard players add $Timer chestRestock 1
function sg:game/chests/restock/loop/recursive/load_storage with storage sg:restock
