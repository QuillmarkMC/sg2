kill @e[tag=SGLibraryDoor]
#east side
summon interaction -334.5 82.0 -295.5 {Tags:["SGLibraryDoor"],width:1.0f,height:2.0f,response:true}
execute positioned -334.5 82.0 -295.5 positioned ~ ~0.5 ~-0.499 run summon item_display ~ ~ ~ {teleport_duration:2,item:{id:"phantom_membrane",count:1,components:{"item_model":"sg:library_door_locked"}},Rotation:[90f,0f],Tags:["SGLibraryDoor"]}
fill -335 82 -296 -335 83 -296 brown_stained_glass_pane
#west side
summon interaction -371.5 82.0 -295.5 {Tags:["SGLibraryDoor"],width:1.0f,height:2.0f,response:true}
execute positioned -371.5 82.0 -295.5 positioned ~ ~0.5 ~0.499 run summon item_display ~ ~ ~ {teleport_duration:2,item:{id:"phantom_membrane",count:1,components:{"item_model":"sg:library_door_locked"}},Rotation:[-90f,0f],Tags:["SGLibraryDoor"]}
fill -372 82 -296 -372 83 -296 brown_stained_glass_pane

scoreboard players set $LibraryDoor events 0