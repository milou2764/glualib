---@meta
---@class ServerQueryData
---@field GameDir string The game directory to get the servers for 
---@field Type string Type of servers to retrieve. Valid values are: * "internet" * "favorite" * "history" * "lan" 
---@field AppID number Steam application ID to get the servers for 
---@field Callback function Called when a new server is found and queried. Arguments:   [number](/gmod/number) ping - Latency to the server.   [string](/gmod/string) name - Name of the server   [string](/gmod/string) desc - "Nice" gamemode name   [string](/gmod/string) map - Current map   [number](/gmod/number) players - Total player number ( bot + human )   [number](/gmod/number) maxplayers - Maximum reported amount of players   [number](/gmod/number) botplayers - Amount of bots on the server   [boolean](/gmod/boolean) pass - Whether this server has password or not   [number](/gmod/number) lastplayed - Time when you last played on this server, as UNIX timestamp or 0   [string](/gmod/string) address - IP Address of the server   [string](/gmod/string) gamemode - Gamemode folder name   [number](/gmod/number) workshopid - Gamemode Steam Workshop ID      Return false to stop the query. 
---@field Finished function Called when the query is finished. No arguments 
ServerQueryData = {}