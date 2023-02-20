---@meta
player = {}
--- Similar to the serverside command "bot", this function creates a new Player bot with the given name. This bot will not obey to the usual "bot_*" commands, and it's the same bot base used in TF2 and CS:S.
--- 
--- The best way to control the behaviour of a Player bot right now is to use the [GM:StartCommand](/gmod/GM:StartCommand) hook and modify its input serverside.
---@param botName string The name of the bot, using an already existing name will append brackets at the end of it with a number pertaining it.    Example: "Bot name test", "Bot name test(1)". 
---@return Player
function player.CreateNextBot( botName ) end
--- Gets all the current players in the server (not including connecting clients).
---@return table
function player.GetAll(  ) end
--- Returns a table of all bots on the server.
---@return table
function player.GetBots(  ) end
--- Gets the player with the specified AccountID.
---@param accountID number The [Player:AccountID](/gmod/Player:AccountID) to find the player by. 
---@return Player
function player.GetByAccountID( accountID ) end
--- Gets the player with the specified connection ID.
--- 
--- Connection ID can be retrieved via [gameevent.Listen](/gmod/gameevent.Listen) events.
--- 
--- For a function that returns a player based on their [Entity:EntIndex](/gmod/Entity:EntIndex), see [Entity](/gmod/Global.Entity).
--- 
--- For a function that returns a player based on their [Player:UserID](/gmod/Player:UserID), see [Player](/gmod/Global.Player).
---@param connectionID number The connection ID to find the player by. 
---@return Player
function player.GetByID( connectionID ) end
--- Gets the player with the specified SteamID.
---@param steamID string The [Player:SteamID](/gmod/Player:SteamID) to find the player by. 
---@return Player
function player.GetBySteamID( steamID ) end
--- Gets the player with the specified SteamID64.
---@param steamID64 string The [Player:SteamID64](/gmod/Player:SteamID64) to find the player by. 
---@return Player
function player.GetBySteamID64( steamID64 ) end
--- Gets the player with the specified uniqueID (not recommended way to identify players).
---@param uniqueID string The [Player:UniqueID](/gmod/Player:UniqueID) to find the player by. 
---@return Player
function player.GetByUniqueID( uniqueID ) end
--- Gives you the player count.
---@return number
function player.GetCount(  ) end
--- Returns a table of all human ( non bot/AI ) players.
--- 
--- Unlike [player.GetAll](/gmod/player.GetAll), this does not include bots.
---@return table
function player.GetHumans(  ) end
