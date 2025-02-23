execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/actions/set_loot_table

#called with storage sg:restock
scoreboard players set $CancelThisChest chestRestock 0
execute if score $Restocking chestRestock matches 1 if data storage sg:options {Options:{chest_restock_mode:"cornucopia"}} run function sg:game/chests/restock/loop/actions/check_restock_mode with storage sg:restock
execute if score $CancelThisChest chestRestock matches 1 run return fail

$data merge block $(xyz) {Items:[],LootTable:""}
$data modify block $(xyz) LootTable set value "sg:chests/normal/$(Quality)"