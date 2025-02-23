execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/begin

tellraw @a[tag=Admin] [{"text":"[!] ","color":"gold","bold": true},{"translate":"text.admin.chest.restock.begin","bold": false,"color": "white"}]
scoreboard players set $InProgress chestRestock 1
scoreboard players set $Timer chestRestock 0

#get number of chunks, use it as index to loop through chunk array and get all chests per chunk
execute store result score $ChunkIndex chestRestock run data get storage sg:chests Chunks
#execute if score $Restocking chestRestock matches 0 run function sg:game/chests/restock/bossbar/show
scoreboard players remove $ChunkIndex chestRestock 1

execute store result storage sg:restock ChunkIndex int 1 run scoreboard players get $ChunkIndex chestRestock
execute unless score $ChunkIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/chunk with storage sg:restock
execute if score $ChunkIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/finish
