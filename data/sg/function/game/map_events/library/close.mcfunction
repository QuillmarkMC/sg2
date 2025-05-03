kill @e[tag=SGLibraryDoor]
#TODO: add display entities for custom door
summon interaction -334.5 82.0 -295.5 {Tags:["SGLibraryDoor"],width:1.0f,height:2.0f,response:true}
#summon display
fill -335 82 -296 -335 83 -296 brown_stained_glass_pane

summon interaction -371.5 82.0 -295.5 {Tags:["SGLibraryDoor"],width:1.0f,height:2.0f,response:true}
#summon display
fill -372 82 -296 -372 83 -296 brown_stained_glass_pane

scoreboard players set $LibraryDoor events 0