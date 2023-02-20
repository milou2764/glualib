---@meta
weapons = {}
--- Get a `copy` of weapon table by name. This function also inherits fields from the weapon's base class, unlike [weapons.GetStored](/gmod/weapons.GetStored).
---@param classname string Class name of weapon to retrieve 
---@return table
function weapons.Get( classname ) end
--- Get a list of all the registered SWEPs. This does not include weapons added to spawnmenu manually.
---@return table
function weapons.GetList(  ) end
--- Gets the REAL weapon table, not a copy. The produced table does `not` inherit fields from the weapon's base class, unlike [weapons.Get](/gmod/weapons.Get).
---@param weapon_class string Weapon class to retrieve weapon table of 
---@return table
function weapons.GetStored( weapon_class ) end
--- Checks if name is based on base
---@param name string Entity's class name to be checked 
---@param base string Base class name to be checked 
---@return boolean
function weapons.IsBasedOn( name, base ) end
--- Called after all SWEPS have been loaded and runs [baseclass.Set](/gmod/baseclass.Set) on each one.
--- 
--- You can retrieve all the currently registered SWEPS with [weapons.GetList](/gmod/weapons.GetList).
function weapons.OnLoaded(  ) end
--- Registers a Scripted Weapon (SWEP) class manually. When the engine spawns an entity, weapons registered with this function will be created if the class names match.
--- 
--- See also [scripted_ents.Register](/gmod/scripted_ents.Register) for Scritped Entities (SENTs)
---@param swep_table table The SWEP table 
---@param classname string Classname to assign to that swep 
function weapons.Register( swep_table, classname ) end
