---@meta
cvars = {}
--- Adds a callback to be called when the named convar changes.
---@param name string The name of the convar to add the change callback to. 
---@param callback function The function to be called when the convar changes. The arguments passed are:  * [string](/gmod/string) convar - The name of the convar.  * [string](/gmod/string) oldValue - The old value of the convar.  * [string](/gmod/string) newValue - The new value of the convar. 
---@param identifier? string If set, you will be able to remove the callback using [cvars.RemoveChangeCallback](/gmod/cvars.RemoveChangeCallback). 
function cvars.AddChangeCallback( name, callback, identifier ) end
--- Retrieves console variable as a boolean.
---@param cvar string Name of console variable 
---@param default? boolean The value to return if the console variable does not exist 
---@return boolean
function cvars.Bool( cvar, default ) end
--- Returns a table of the given [ConVar](/gmod/ConVar)s callbacks.
---@param name string The name of the [ConVar](/gmod/ConVar). 
---@param createIfNotFound? boolean Whether or not to create the internal callback table for given [ConVar](/gmod/ConVar) if there isn't one yet.    This argument is internal and should not be used. 
---@return table
function cvars.GetConVarCallbacks( name, createIfNotFound ) end
--- Retrieves console variable as a number.
---@param cvar string Name of console variable 
---@param default? any The value to return if the console variable does not exist 
---@return number
function cvars.Number( cvar, default ) end
--- Called by the engine when a convar value changes.
---@param name string Convar name 
---@param oldVal string The old value of the convar 
---@param newVal string The new value of the convar 
function cvars.OnConVarChanged( name, oldVal, newVal ) end
--- Removes a callback for a convar using the the callback's identifier. The identifier should be the third argument specified for [cvars.AddChangeCallback](/gmod/cvars.AddChangeCallback).
---@param name string The name of the convar to remove the callback from. 
---@param indentifier string The callback's identifier. 
function cvars.RemoveChangeCallback( name, indentifier ) end
--- Retrieves console variable as a string.
---@param cvar string Name of console variable 
---@param default? any The value to return if the console variable does not exist 
---@return string
function cvars.String( cvar, default ) end
