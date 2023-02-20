---@meta
properties = {}
--- Add properties to the properties module
---@param name string A unique name used to identify the property 
---@param propertyData table A table that defines the property. Uses the [PropertyAdd](/gmod/Structures/PropertyAdd). 
function properties.Add( name, propertyData ) end
--- Returns true if given entity can be targeted by the player via the properties system.
--- 
--- This should be used serverside in your properties to prevent abuse by clientside scripting.
---@param ent Entity The entity to test 
---@param ply Player If given, will also perform a distance check based on the entity's Orientated Bounding Box. 
---@return boolean
function properties.CanBeTargeted( ent, ply ) end
--- Returns an entity player is hovering over with his cursor.
---@param pos Vector Eye position of local player, [Entity:EyePos](/gmod/Entity:EyePos) 
---@param aimVec Vector Aim vector of local player, [Player:GetAimVector](/gmod/Player:GetAimVector) 
---@return Entity
function properties.GetHovered( pos, aimVec ) end
--- Checks if player hovers over any entities and open a properties menu for it.
---@param eyepos Vector The eye pos of a player 
---@param eyevec Vector The aim vector of a player 
function properties.OnScreenClick( eyepos, eyevec ) end
--- Opens properties menu for given entity.
---@param ent Entity The entity to open menu for 
---@param tr table The trace that is passed as second argument to Action callback of a property 
function properties.OpenEntityMenu( ent, tr ) end
