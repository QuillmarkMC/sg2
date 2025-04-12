execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/actions/place_chest
#TODO: translate
$execute if score $Debug var matches 1.. unless loaded $(xyz) run tellraw @a[tag=Admin] [{"text":"[!] ","color":"gold","bold": true},{"text":"Chest placement has failed at $(xyz)!","bold": false,"color": "white"}]

#called with storage sg:restock
#only runs on first chest stock
execute store result bossbar sg:loot value run scoreboard players add $ProgressBar chestRestock 1

$execute store success score #SpawnChest chestRestock if predicate {condition:"random_chance",chance:$(SpawnChance)}

$execute if score #SpawnChest chestRestock matches 1 if data storage sg:restock {Quality:"anvil"} run return run setblock $(xyz) anvil[facing=$(Facing)]
$execute unless score #SpawnChest chestRestock matches 1 if data storage sg:restock {Quality:"anvil"} run setblock $(xyz) air

$data merge block $(xyz) {Items:[],LootTable:""}
$execute if score #SpawnChest chestRestock matches 1 run setblock $(xyz) chest[facing=$(Facing)]
$execute unless score #SpawnChest chestRestock matches 1 run setblock $(xyz) air
execute if score #SpawnChest chestRestock matches 1 run function sg:game/chests/restock/loop/actions/set_loot_table with storage sg:restock