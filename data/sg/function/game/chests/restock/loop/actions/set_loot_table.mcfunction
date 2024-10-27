execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/actions/set_loot_table

#called with storage sg:restock

$data merge block $(xyz) {Items:[],LootTable:""}
$data modify block $(xyz) LootTable set value "sg:chests/normal/$(Quality)"