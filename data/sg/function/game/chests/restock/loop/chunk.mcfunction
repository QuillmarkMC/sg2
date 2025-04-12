execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/chunk

#called with storage sg:restock
#$(ChunkIndex) is the chunk array index that is currently being counted

#$execute store result score $ChestIndex chestRestock run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
#execute store result storage sg:restock ChestIndex int 1 run scoreboard players remove $ChestIndex chestRestock 1

#scoreboard players set $ForceloadQueryOnce chestRestock 0
#function sg:game/chests/restock/loop/recursive/load_storage with storage sg:restock



$data modify storage sg:restock xyz set from storage sg:chests Chunks[$(MasterChunkIndex)].Pos
function sg:game/chests/restock/loop/initial/check_loaded with storage sg:restock
