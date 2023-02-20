---@meta
search = {}
--- Adds a search result provider. For examples, see gamemodes/sandbox/gamemode/cl_search_models.lua
---@param provider function Provider function. It has one argument: [string](/gmod/string) searchQuery  You must return a list of tables structured like this:  * [string](/gmod/string) text - Text to "Copy to clipboard"  * [function](/gmod/function) func - Function to use/spawn the item  * [Panel](/gmod/Panel) icon - A panel to add to spawnmenu  * [table](/gmod/table) words - A table of words? 
---@param id? string If provided, ensures that only one provider exists with the given ID at a time. 
function search.AddProvider( provider, id ) end
--- Retrieves search results.
---@param query string Search query 
---@param types? string If set, only searches given provider type(s), instead of everything. For example `"tool"` will only search tools in Sandbox. Can be a table for multiple types. 
---@param maxResults? number How many results to stop at 
---@return table
function search.GetResults( query, types, maxResults ) end
