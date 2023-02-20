---@meta
---@class Undo
---@field Owner Player The player responsible who owns the undo 
---@field Name string The name of the text to report to the player 
---@field Entities table A table of entities to be removed by the undo 
---@field Functions table A table of {function_to_call, func_arg2, func_arg3} 
---@field CustomUndoText string A custom undo text to show the client 
---@field NiceName string A "nice" name of the undo, which will be used for the UI 
Undo = {}