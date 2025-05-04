function sg:lobby/entities/kill
function sg:lobby/options/summon
function sg:lobby/credits/summon

#map
summon item_display 35549.5 56.50123437365036 35496.5 {item:{id:"phantom_membrane",count:1,components:{item_model:"lobby:map"}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0f,1.0f,3.0f]},Tags:["SGLobbyEntity"]}
#map markers

#map border
summon item_display 35549.5 56.50521851832407 35496.5 {item:{id:"phantom_membrane",count:1,components:{item_model:"lobby:map_border"}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.0f,1.0f,10.0f]},Tags:["SGLobbyEntity","SGLobbyMapBorder"]}
function sg:lobby/options/actions/border_starting_size/update_display
#pvp arena logo
summon item_display 35621.0 68.25 35496.5 {item:{id:"pufferfish",count:1,components:{item_model:"lobby:logo_big"}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.0f,10.0f,5.0f]},Tags:["SGLobbyEntity"]}
#pvp arena glass ceiling
summon item_display 35596.5 77.1875 35496.5 {item:{id:"phantom_membrane",count:1,components:{item_model:"lobby:big_glass"}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[8.333333f,1.0f,8.333333f]},Tags:["SGLobbyEntity"]}
#parkour fog
summon item_display 35549.5 49.4375 35543.75 {item:{id:"phantom_membrane",count:1,components:{item_model:"lobby:fade"}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[20.0f,1.9375001f,10.0f]},Tags:["SGLobbyEntity"]}
#guapo tank
summon pufferfish 35506 61 35496 {Tags:["SGGuapo"],PersistenceRequired:true,CustomNameVisible:false,CustomName:{"text":"Guapo"},Silent:True,Invulnerable:true}

function sg:lobby/entities/unload