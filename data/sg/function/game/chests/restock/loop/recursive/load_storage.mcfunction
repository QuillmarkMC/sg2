execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/recursive/load_storage

#called with storage sg:restock
#load everything into storage needed for chests, as well as to check for chunk loading
#separated from other functions so it can be easily scheduled
$data modify storage sg:restock xyz set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].xyz
function sg:game/chests/restock/loop/recursive/check_loaded with storage sg:restock