#if a reconnecting player logged out while in combat, kill them and show death message
gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a "combat logged"