---@meta
game = {}
--- Adds a new ammo type to the game.
--- 
--- You can find a list of default ammo types [here](https://wiki.facepunch.com/gmod/Default_Ammo_Types).
---@param ammoData table The attributes of the ammo. See the [AmmoData](/gmod/Structures/AmmoData). 
function game.AddAmmoType( ammoData ) end
--- Registers a new decal.
---@param decalName string The name of the decal. 
---@param materialName string The material to be used for the decal. May also be a list of material names, in which case a random material from that list will be chosen every time the decal is placed. 
function game.AddDecal( decalName, materialName ) end
--- Loads a particle file.
---@param particleFileName string The path of the file to add. Must be (file).pcf. 
function game.AddParticles( particleFileName ) end
--- Called by the engine to retrieve the ammo types.
---@return table
function game.BuildAmmoTypes(  ) end
--- If called serverside it will remove **ALL** entities which were not created by the map (not players or weapons held by players).
--- 
--- On the client it will remove decals, sounds, gibs, dead NPCs, and entities created via [ents.CreateClientProp](/gmod/ents.CreateClientProp).
--- 
--- This function calls [GM:PreCleanupMap](/gmod/GM:PreCleanupMap) before cleaning up the map and [GM:PostCleanupMap](/gmod/GM:PostCleanupMap) after cleaning up the map.
---@param dontSendToClients? boolean If set to `true`, don't run this functions on all clients. 
---@param extraFilters? table Entity classes not to reset during cleanup. 
function game.CleanUpMap( dontSendToClients, extraFilters ) end
--- Runs a console command.
--- Make sure to add a newline ("\n") at the end of the command.
---@param stringCommand string String containing the command and arguments to be ran. 
function game.ConsoleCommand( stringCommand ) end
--- Returns the damage type of given ammo type.
---@param id number Ammo ID to retrieve the damage type of. Starts from 1. 
---@return number
function game.GetAmmoDamageType( id ) end
--- Returns the [AmmoData](/gmod/Structures/AmmoData) for given ID.
---@param id number ID of the ammo type to look up the data for 
---@return table
function game.GetAmmoData( id ) end
--- Returns the ammo bullet force that is applied when an entity is hit by a bullet of given ammo type.
---@param id number Ammo ID to retrieve the force of. Starts from 1. 
---@return number
function game.GetAmmoForce( id ) end
--- Returns the ammo type ID for given ammo type name.
--- 
--- See [game.GetAmmoName](/gmod/game.GetAmmoName) for reverse.
---@param name string Name of the ammo type to look up ID of 
---@return number
function game.GetAmmoID( name ) end
--- Returns the real maximum amount of ammo of given ammo ID, regardless of the setting of `gmod_maxammo` convar.
---@param id number Ammo type ID 
---@return number
function game.GetAmmoMax( id ) end
--- Returns the ammo name for given ammo type ID.
--- 
--- See [game.GetAmmoID](/gmod/game.GetAmmoID) for reverse.
---@param id number Ammo ID to retrieve the name of. Starts from 1. 
---@return string
function game.GetAmmoName( id ) end
--- Returns the damage given ammo type should do to NPCs.
---@param id number Ammo ID to retrieve the damage info of. Starts from 1. 
---@return number
function game.GetAmmoNPCDamage( id ) end
--- Returns the damage given ammo type should do to players.
---@param id number Ammo ID to retrieve the damage info of. Starts from 1. 
---@return number
function game.GetAmmoPlayerDamage( id ) end
--- Returns a list of all ammo types currently registered.
---@return table
function game.GetAmmoTypes(  ) end
--- Returns the counter of a Global State.
--- 
--- See [Global States](/gmod/Global%20States) for more information.
---@param name string The name of the Global State to set.     If the Global State by that name does not exist, it will be created.    See [Global States](/gmod/Global%20States) for a list of default global states. 
---@return number
function game.GetGlobalCounter( name ) end
--- Returns whether a Global State is off, active or dead ( inactive )
--- 
--- See [Global States](/gmod/Global%20States) for more information.
---@param name string The name of the Global State to retrieve the state of.     If the Global State by that name does not exist, **GLOBAL_DEAD** will be returned.    See [Global States](/gmod/Global%20States) for a list of default global states. 
---@return number
function game.GetGlobalState( name ) end
--- Returns the public IP address and port of the current server. This will return the IP/port that you are connecting through when ran clientside.
---@return string
function game.GetIPAddress(  ) end
--- Returns the name of the current map, without a file extension.
--- On the menu state, returns "menu".
---@return string
function game.GetMap(  ) end
--- Returns the next map that would be loaded according to the file that is set by the mapcyclefile convar.
---@return string
function game.GetMapNext(  ) end
--- Returns the VBSP version of the current map.
---@return number
function game.GetMapVersion(  ) end
--- Returns the difficulty level of the game.
--- 
--- **TIP:** You can use this function in your scripted NPCs or Nextbots to make them harder, however, it is a good idea to lock powerful attacks behind the highest difficulty instead of just increasing the health.
---@return number
function game.GetSkillLevel(  ) end
--- Returns the time scale of the game
---@return number
function game.GetTimeScale(  ) end
--- Returns the worldspawn entity.
---@return Entity
function game.GetWorld(  ) end
--- Returns true if the server is a dedicated server, false if it is a listen server or a singleplayer game.
---@return boolean
function game.IsDedicated(  ) end
--- Kicks a player from the server. This can be ran before the player has spawned.
---@param id string UserID or SteamID of the player to kick. 
---@param reason? string Reason to display to the player. This can span across multiple lines. 
function game.KickID( id, reason ) end
--- Loads the next map according to the nextlevel convar, or from the current mapcycle file set by the respective convar.
function game.LoadNextMap(  ) end
--- Returns the map load type of the current map.
--- 
--- After changing the map with the console command `changelevel`, "newgame" is returned. With `changelevel2` (single player only), "transition" is returned.
---@return string
function game.MapLoadType(  ) end
--- Returns the maximum amount of players (including bots) that the server can have.
---@return number
function game.MaxPlayers(  ) end
--- Mounts a GMA addon from the disk.
--- Can be used with [steamworks.DownloadUGC](/gmod/steamworks.DownloadUGC)
---@param path string Location of the GMA file to mount, retrieved from [steamworks.DownloadUGC](/gmod/steamworks.DownloadUGC). This file does not have to end with the .gma extension, but will be interpreted as a GMA. 
---@return boolean
---@return table
function game.MountGMA( path ) end
--- Removes all the clientside ragdolls.
function game.RemoveRagdolls(  ) end
--- Sets the counter of a Global State.
--- 
--- See [Global States](/gmod/Global%20States) for more information.
---@param name string The name of the Global State to set.     If the Global State by that name does not exist, it will be created.    See [Global States](/gmod/Global%20States) for a list of default global states. 
---@param count number The value to set for that Global State. 
function game.SetGlobalCounter( name, count ) end
--- Sets whether a Global State is off, active or dead ( inactive )
--- 
--- See [Global States](/gmod/Global%20States) for more information.
---@param name string The name of the Global State to set.     If the Global State by that name does not exist, it will be created.    See [Global States](/gmod/Global%20States) for a list of default global states. 
---@param state number The state of the Global State. See [GLOBAL](/gmod/Enums/GLOBAL) 
function game.SetGlobalState( name, state ) end
--- Sets the difficulty level of the game, can be retrieved with [game.GetSkillLevel](/gmod/game.GetSkillLevel).
--- 
--- This will automatically change whenever the "skill" convar is modified serverside.
---@param level number The difficulty level, Easy( 1 ), Normal( 2 ), Hard( 3 ). 
function game.SetSkillLevel( level ) end
--- Sets the time scale of the game.
--- 
--- This function is supposed to remove the need of using the host_timescale convar, which is cheat protected.
--- 
--- To slow down or speed up the movement of a specific player, use [Player:SetLaggedMovementValue](/gmod/Player:SetLaggedMovementValue) instead.
---@param timeScale number The new timescale, minimum value is 0.001 and maximum is 5. 
function game.SetTimeScale( timeScale ) end
--- Returns whether the current session is a single player game.
---@return boolean
function game.SinglePlayer(  ) end
--- Returns position the player should start from, this is not the same thing as spawn points, it is used to properly transit the player between maps.
---@return Vector
function game.StartSpot(  ) end
