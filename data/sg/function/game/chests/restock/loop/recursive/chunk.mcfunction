execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/recursive/chunk

#separated the recursive logic into new function so it could be handled over multiple ticks
#check if there are any more chunks in the list
execute store result storage sg:restock ChunkIndex int 1 run scoreboard players remove $ChunkIndex chestRestock 1
execute if score $ChunkIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/finish
execute unless score $ChunkIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/chunk with storage sg:restock
