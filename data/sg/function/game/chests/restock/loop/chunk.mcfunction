execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/chunk

#called with storage sg:restock
#$(ChunkIndex) is the chunk array index that is currently being counted

$execute store result score $ChestIndex chestRestock run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
scoreboard players remove $ChestIndex chestRestock 1
execute store result storage sg:restock ChestIndex int 1 run scoreboard players get $ChestIndex chestRestock

scoreboard players set $ForceloadQueryOnce chestRestock 0
function sg:game/chests/restock/loop/recursive/load_storage with storage sg:restock
