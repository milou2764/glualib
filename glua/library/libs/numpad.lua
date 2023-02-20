---@meta
numpad = {}
--- Activates numpad key owned by the player
---@param ply Player The player whose numpad should be simulated 
---@param key number The key to press, see [KEY](/gmod/Enums/KEY) 
---@param isButton boolean Should this keypress pretend to be a from a gmod_button? (causes [numpad.FromButton](/gmod/numpad.FromButton) to return true) 
function numpad.Activate( ply, key, isButton ) end
--- Deactivates numpad key owned by the player
---@param ply Player The player whose numpad should be simulated 
---@param key number The key to press, corresponding to [KEY](/gmod/Enums/KEY) 
---@param isButton boolean Should this keypress pretend to be a from a gmod_button? (causes [numpad.FromButton](/gmod/numpad.FromButton) to return true) 
function numpad.Deactivate( ply, key, isButton ) end
--- Returns true during a function added with [numpad.Register](/gmod/numpad.Register) when the third argument to [numpad.Activate](/gmod/numpad.Activate) is true.
--- 
--- This is caused when a numpad function is triggered by a button SENT being used.
---@return boolean
function numpad.FromButton(  ) end
--- Calls a function registered with [numpad.Register](/gmod/numpad.Register) when a player presses specified key.
--- 
--- See for key released action: [numpad.OnUp](/gmod/numpad.OnUp)
---@param ply Player The player whose numpad should be watched 
---@param key number The key, corresponding to [KEY](/gmod/Enums/KEY) 
---@param name string The name of the function to run, corresponding with the one used in [numpad.Register](/gmod/numpad.Register) 
---@param ... any Arguments to pass to the function passed to [numpad.Register](/gmod/numpad.Register). 
---@return number
function numpad.OnDown( ply, key, name, ... ) end
--- Calls a function registered with [numpad.Register](/gmod/numpad.Register) when a player releases specified key.
--- 
--- See for key pressed action: [numpad.OnDown](/gmod/numpad.OnDown)
---@param ply Player The player whose numpad should be watched 
---@param key number The key, corresponding to [KEY](/gmod/Enums/KEY) 
---@param name string The name of the function to run, corresponding with the one used in [numpad.Register](/gmod/numpad.Register) 
---@param ... any Arguments to pass to the function passed to [numpad.Register](/gmod/numpad.Register). 
---@return number
function numpad.OnUp( ply, key, name, ... ) end
--- Registers a numpad library action for use with [numpad.OnDown](/gmod/numpad.OnDown) and [numpad.OnUp](/gmod/numpad.OnUp)
---@param id string The unique id of your action. 
---@param func function The function to be executed.    Arguments are:    [Player](/gmod/Player) ply - The player who pressed the button    [vararg](/gmod/vararg) ... - The 4th and all subsequent arguments passed from [numpad.OnDown](/gmod/numpad.OnDown) and/or [numpad.OnUp](/gmod/numpad.OnUp)    Returning **false** in this function will remove the listener which triggered this function (example: return false if one of your varargs is an entity which is no longer valid) 
function numpad.Register( id, func ) end
--- Removes a function added by either [numpad.OnUp](/gmod/numpad.OnUp) or [numpad.OnDown](/gmod/numpad.OnDown)
---@param ID number The impulse ID returned by [numpad.OnUp](/gmod/numpad.OnUp) or [numpad.OnDown](/gmod/numpad.OnDown) 
function numpad.Remove( ID ) end
--- Either runs [numpad.Activate](/gmod/numpad.Activate) or [numpad.Deactivate](/gmod/numpad.Deactivate) depending on the key's current state
---@param ply Player The player whose numpad should be simulated 
---@param key number The key to press, corresponding to [KEY](/gmod/Enums/KEY) 
function numpad.Toggle( ply, key ) end
