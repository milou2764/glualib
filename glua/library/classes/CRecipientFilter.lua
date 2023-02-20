---@meta
---@class CRecipientFilter
CRecipientFilter = {}
--- Adds all players to the recipient filter.
function CRecipientFilter:AddAllPlayers(  ) end
--- Adds all players that are in the same [PAS (Potentially Audible Set)](https://developer.valvesoftware.com/wiki/PAS "PAS - Valve Developer Community") as this position.
---@param pos Vector A position that players may be able to hear, usually the position of an entity the sound is playing played from. 
function CRecipientFilter:AddPAS( pos ) end
--- Adds a player to the recipient filter
---@param Player Player Player to add to the recipient filter. 
function CRecipientFilter:AddPlayer( Player ) end
--- Adds all players that are in the same [PVS(Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") as this position.
---@param Position Vector PVS position that players may be able to see. 
function CRecipientFilter:AddPVS( Position ) end
--- Adds all players that are on the given team to the filter.
---@param teamid number Team index to add players from. 
function CRecipientFilter:AddRecipientsByTeam( teamid ) end
--- Returns the number of valid players in the recipient filter.
---@return number
function CRecipientFilter:GetCount(  ) end
--- Returns a table of all valid players currently in the recipient filter.
---@return table
function CRecipientFilter:GetPlayers(  ) end
--- Removes all players from the recipient filter.
function CRecipientFilter:RemoveAllPlayers(  ) end
--- Removes all players from the filter that are in Potentially Audible Set for given position.
---@param position Vector The position to test 
function CRecipientFilter:RemovePAS( position ) end
--- Removes the player from the recipient filter.
---@param Player Player The player that should be in the recipient filter if you call this function. 
function CRecipientFilter:RemovePlayer( Player ) end
--- Removes all players that can see this PVS from the recipient filter.
---@param pos Vector Position that players may be able to see. 
function CRecipientFilter:RemovePVS( pos ) end
--- Removes all players that are on the given team from the filter.
---@param teamid number Team index to remove players from. 
function CRecipientFilter:RemoveRecipientsByTeam( teamid ) end
--- Removes all players that are not on the given team from the filter.
---@param teamid number Team index. 
function CRecipientFilter:RemoveRecipientsNotOnTeam( teamid ) end
