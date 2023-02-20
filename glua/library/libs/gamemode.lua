---@meta
gamemode = {}
--- Called by the engine to call a hook within the loaded gamemode.
--- 
--- The supplied event 'name' must be defined in the active gamemode. Otherwise, nothing will happen - not even hooks added with [hook.Add](/gmod/hook.Add) will be called.
--- 
--- This is similar to [hook.Run](/gmod/hook.Run) and [hook.Call](/gmod/hook.Call), except the hook library will call hooks created with hook.Add even if there is no corresponding gamemode function.
---@param name string The name of the hook to call. 
---@param args any The arguments 
---@return any
function gamemode.Call( name, args ) end
--- This returns the internally stored gamemode table.
---@param name string The name of the gamemode you want to get 
---@return table
function gamemode.Get( name ) end
--- Called by the engine when a gamemode is being loaded.
---@param gm table Your GM table 
---@param name string Name of your gamemode, lowercase, no spaces. 
---@param derived string The gamemode name that your gamemode is derived from 
function gamemode.Register( gm, name, derived ) end
