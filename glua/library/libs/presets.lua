---@meta
presets = {}
--- Adds preset to a preset group.
---@param groupname string The preset group name, usually it's tool class name. 
---@param name string Preset name, must be unique. 
---@param values table A table of preset console commands. 
function presets.Add( groupname, name, values ) end
--- Used internally to tell the player that the name they tried to use in their preset is not acceptable.
function presets.BadNameAlert(  ) end
--- Returns whether a preset with given name exists or not
---@param type string The preset group name, usually it's tool class name. 
---@param name string Name of the preset to test 
---@return boolean
function presets.Exists( type, name ) end
--- Returns a table with preset names and values from a single preset group.
---@param groupname string Preset group name. 
---@return table
function presets.GetTable( groupname ) end
--- Used internally to ask the player if they want to override an already existing preset.
---@param callback function
function presets.OverwritePresetPrompt( callback ) end
--- Removes a preset entry from a preset group.
---@param groupname string Preset group to remove from 
---@param name string Name of preset to remove 
function presets.Remove( groupname, name ) end
--- Renames preset.
---@param groupname string Preset group name 
---@param oldname string Old preset name 
---@param newname string New preset name 
function presets.Rename( groupname, oldname, newname ) end
