---@meta
scripted_ents = {}
--- Defines an alias string that can be used to refer to another classname
---@param alias string A new string which can be used to refer to another classname 
---@param classname string The classname the alias should refer to 
function scripted_ents.Alias( alias, classname ) end
--- Returns a copy of the ENT table for a class, including functions defined by the base class
---@param classname string The classname of the ENT table to return, can be an alias 
---@return table
function scripted_ents.Get( classname ) end
--- Returns a copy of the list of all ENT tables registered
---@return table
function scripted_ents.GetList(  ) end
--- Retrieves a member of entity's table.
---@param class string Entity's class name 
---@param name string Name of member to retrieve 
---@return any
function scripted_ents.GetMember( class, name ) end
--- Returns a list of all ENT tables which contain ENT.Spawnable
---@return table
function scripted_ents.GetSpawnable(  ) end
--- Returns the actual ENT table for a class. Modifying functions/variables in this table will change newly spawned entities
---@param classname string The classname of the ENT table to return 
---@return table
function scripted_ents.GetStored( classname ) end
--- Returns the 'type' of a class, this will one of the following: 'anim', 'ai', 'brush', 'point'.
---@param classname string The classname to check 
---@return string
function scripted_ents.GetType( classname ) end
--- Checks if name is based on base
---@param name string Entity's class name to be checked 
---@param base string Base class name to be checked 
---@return boolean
function scripted_ents.IsBasedOn( name, base ) end
--- Called after all ENTS have been loaded and runs [baseclass.Set](/gmod/baseclass.Set) on each one.
--- 
--- You can retrieve all the currently registered ENTS with [scripted_ents.GetList](/gmod/scripted_ents.GetList).
function scripted_ents.OnLoaded(  ) end
--- Registers an ENT table with a classname. Reregistering an existing classname will automatically update the functions of all existing entities of that class.
---@param ENT table The ENT table to register. 
---@param classname string The classname to register. 
function scripted_ents.Register( ENT, classname ) end
