execute if score $InProgress chestRestock matches 1 run tellraw @a[tag=Admin] [{"text":"[!] ","color":"gold","bold": true},{"translate":"text.admin.chest.error.restock_in_progress","bold": false,"color": "white"}]
execute unless score $InProgress chestRestock matches 1 run function sg:game/chests/restock/loop/begin
