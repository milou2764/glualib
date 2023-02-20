---@meta
list = {}
--- Adds an item to a named list
---@param identifier string The list identifier 
---@param item any The item to add to the list 
---@return number
function list.Add( identifier, item ) end
--- Returns true if the list contains the value. (as a value - not a key)
--- 
--- For a function that looks for a key and not a value see [list.HasEntry](/gmod/list.HasEntry).
---@param list string List to search through 
---@param value any The value to test 
---@return boolean
function list.Contains( list, value ) end
--- Returns a copy of the list stored at identifier
---@param identifier string The list identifier 
---@return table
function list.Get( identifier ) end
--- Returns the actual table of the list stored at identifier. Modifying this will affect the stored list
---@param identifier string The list identifier 
---@return table
function list.GetForEdit( identifier ) end
--- Returns a a list of all lists currently in use.
---@return table
function list.GetTable(  ) end
--- Returns true if the list contains the given key.
--- 
--- For a function that looks for values and not keys see [list.Contains](/gmod/list.Contains).
---@param list string List to search through 
---@param key any The key to test 
---@return boolean
function list.HasEntry( list, key ) end
--- Sets a specific position in the named list to a value.
---@param identifier string The list identifier 
---@param key any The key in the list to set 
---@param item any The item to set to the list as key 
function list.Set( identifier, key, item ) end
