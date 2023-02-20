---@meta
serverlist = {}
--- Adds current server the player is on to their favorites.
function serverlist.AddCurrentServerToFavorites(  ) end
--- Queries a server for its information/ping.
---@param ip string The IP address of the server, including the port. 
---@param callback function The function to be called if and when the request finishes. Function has the same arguments as the callback of [serverlist.Query](/gmod/serverlist.Query). 
function serverlist.PingServer( ip, callback ) end
--- Queries a server for its player list.
---@param ip string The IP address of the server, including the port. 
---@param callback function The function to be called if and when the request finishes. Function has one argument, a table containing tables with player info.     Each table with player info has next fields:    [number](/gmod/number) time - The amount of time the player is playing on the server, in seconds    [string](/gmod/string) name - The player name    [number](/gmod/number) score - The players score 
function serverlist.PlayerList( ip, callback ) end
--- Queries the master server for server list.
---@param data table The information about what kind of servers we want. See [ServerQueryData](/gmod/Structures/ServerQueryData). 
function serverlist.Query( data ) end
