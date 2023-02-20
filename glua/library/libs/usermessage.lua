---@meta
usermessage = {}
--- Returns a table of every usermessage hook
---@return table
function usermessage.GetTable(  ) end
--- Sets a hook for the specified to be called when a usermessage with the specified name arrives.
---@param name string The message name to hook to. 
---@param callback? function The function to be called if the specified message was received.  Parameters (Optional):  * [bf_read](/gmod/bf_read) msg  * [vararg](/gmod/vararg) preArgs 
---@param preArgs? any Arguments that are passed to the callback function when the hook is called. *ring ring* 
function usermessage.Hook( name, callback, preArgs ) end
--- Called by the engine when a usermessage arrives, this method calls the hook function specified by [usermessage.Hook](/gmod/usermessage.Hook) if any.
---@param name string The message name. 
---@param msg bf_read The message. 
function usermessage.IncomingMessage( name, msg ) end
