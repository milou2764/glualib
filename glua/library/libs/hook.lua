---@meta
hook = {}
--- Add a hook to be called upon the given event occurring.
---@param eventName string The event to hook on to. This can be any [GM](/gmod/GM_Hooks) hook, gameevent after using [gameevent.Listen](/gmod/gameevent.Listen), or custom hook run with [hook.Call](/gmod/hook.Call) or [hook.Run](/gmod/hook.Run). 
---@param identifier any The unique identifier, usually a string. This can be used elsewhere in the code to replace or remove the hook. The identifier **should** be unique so that you do not accidentally override some other mods hook, unless that's what you are trying to do.    The identifier can be either a [string](/gmod/string), or a [table](/gmod/table)/object with an IsValid function defined such as an [Entity](/gmod/Entity) or [Panel](/gmod/Panel). [number](/gmod/number)s and [boolean](/gmod/boolean)s, for example, are not allowed.    If the identifier is a table/object, it will be inserted in front of the other arguments in the callback and the hook will be called as long as it's valid. However, as soon as IsValid( identifier ) returns false, the hook will be removed. 
---@param func function The function to be called, arguments given to it depend on the . 
function hook.Add( eventName, identifier, func ) end
--- Calls all hooks associated with the given event until one returns something other than nil, and then returns that data.
--- 
--- In almost all cases, you should use [hook.Run](/gmod/hook.Run) instead - it calls hook.Call internally but supplies the gamemode table by itself, making your code neater.
---@param eventName string The event to call hooks for 
---@param gamemodeTable table If the gamemode is specified, the gamemode hook within will be called, otherwise not 
---@param args any The arguments to be passed to the hooks 
---@return any
function hook.Call( eventName, gamemodeTable, args ) end
--- Returns a list of all the hooks registered with [hook.Add](/gmod/hook.Add).
---@return table
function hook.GetTable(  ) end
--- Removes the hook with the supplied identifier from the given event.
---@param eventName string The event name. 
---@param identifier any The unique identifier of the hook to remove, usually a string. 
function hook.Remove( eventName, identifier ) end
--- Calls hooks associated with the given event.
--- 
--- Calls all hooks until one returns something other than nil and then returns that data.
--- 
--- If no hook returns any data, it will try to call the GAMEMODE:<eventName> alternative, if one exists.
--- 
--- This function internally calls [hook.Call](/gmod/hook.Call).
--- 
--- See also: [gamemode.Call](/gmod/gamemode.Call) - same as this, but does not call hooks if the gamemode hasn't defined the function.
---@param eventName string The event to call hooks for 
---@param args any The arguments to be passed to the hooks 
---@return any
function hook.Run( eventName, args ) end
