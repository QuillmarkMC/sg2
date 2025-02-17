#called with sg:teams page_data

$item replace entity @s enderchest.$(Slot) with phantom_membrane
$item modify entity @s enderchest.$(Slot) [{\
    "function":"set_name",\
    "entity":"this",\
    "name":[\
        {"text":"$(Name)'s Team","color":"$(Color)","italic":false,"bold":true}\
    ]\
},\
{\
    "function":set_lore,\
    "entity":"this",\
    "lore":[\
        [{"text":"Click here to join the team","color":"dark_gray","italic":true}],\
        [{"text":"Current players: ","color":"#ed771c","italic":false},{"text":"$(CurrentSize)","color":"gray","italic":false}],\
        [{"text":"Max players: ","color":"#ed771c","italic":false},{"score":{"name":"$MaxTeamSize","objective":"options"},"color":"gray","italic":false}],\
        [{"text":""}],\
        [{"selector":"@a[team=$(ID)]","color":"white","italic":false}]\
    ],\
    "mode":"replace_all"\
},\
{\
    "function":"set_components",\
    "components":{"item_model":"lobby:menu/teams/$(Color)"}\
}]

