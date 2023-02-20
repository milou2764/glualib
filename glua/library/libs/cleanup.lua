---@meta
cleanup = {}
--- Adds an entity to a player's cleanup list.
---@param pl Player Who's cleanup list to add the entity to. 
---@param type string The type of cleanup. 
---@param ent Entity The entity to add to the player's cleanup list. 
function cleanup.Add( pl, type, ent ) end
--- Called by the `gmod_admin_cleanup` console command. Allows admins to clean up the server.
---@param pl Player The player that called the console command. 
---@param command string The console command that called this function. 
---@param args table First and only arg is the cleanup type. 
function cleanup.CC_AdminCleanup( pl, command, args ) end
--- Called by the `gmod_cleanup` console command. Allows players to cleanup their own props.
---@param pl Player The player that called the console command. 
---@param command string The console command that called this function. 
---@param args table First and only arg is the cleanup type. 
function cleanup.CC_Cleanup( pl, command, args ) end
--- Gets the cleanup list.
function cleanup.GetList(  ) end
--- Gets the table of cleanup types.
---@return table
function cleanup.GetTable(  ) end
--- Registers a new cleanup type.
---@param type string Name of type. 
function cleanup.Register( type ) end
--- Replaces one entity in the cleanup module with another
---@param from Entity Old entity 
---@param to Entity New entity 
---@return boolean
function cleanup.ReplaceEntity( from, to ) end
--- Repopulates the clients cleanup menu
function cleanup.UpdateUI(  ) end
