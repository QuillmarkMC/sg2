#unloads the currently loaded state, called in each state's main load function
execute if score $State gameState = $Lobby gameState in the_end run function sg:lobby/unload
execute if score $State gameState = $Game gameState in overworld run function sg:game/unload