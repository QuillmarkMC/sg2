#called by players who are standing out of bounds, refreshes /title display
title @s times 5 0 5
title @s subtitle {"translate": "sg.game.oob.subtitle","color": "white"}
title @s title {"translate": "sg.game.oob.title","color": "dark_red"}

scoreboard players set @s oob 10