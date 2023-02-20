---@meta
gmsave = {}
--- Loads a saved map.
---@param mapData string The JSON encoded string containing all the map data. 
---@param ply? Player The player to load positions for. 
---@param callback? function A function to be called after all the entities have been placed. 
function gmsave.LoadMap( mapData, ply, callback ) end
--- Sets player position and angles from supplied table
---@param ply Player The player to "load" values for 
---@param data table A table containing Origin and Angle keys for position and angles to set. 
function gmsave.PlayerLoad( ply, data ) end
--- Returns a table containing player position and angles. Used by [gmsave.SaveMap](/gmod/gmsave.SaveMap).
---@param ply Player The player to "save" 
---@return table
function gmsave.PlayerSave( ply ) end
--- Saves the map
---@param ply Player The player, whose position should be saved for loading the save 
---@return string
function gmsave.SaveMap( ply ) end
--- Returns if we should save this entity in a duplication or a map save or not.
---@param ent Entity The entity 
---@param t table A table containing classname key with entities classname. 
---@return boolean
function gmsave.ShouldSaveEntity( ent, t ) end
