---@meta
chat = {}
--- Adds text to the local player's chat box (which only they can read).
---@param arguments any The arguments. Arguments can be:  * [table](/gmod/table) - [Color](/gmod/Color). Will set the color for all following strings until the next Color argument.  * [string](/gmod/string) - Text to be added to the chat box.  * [Player](/gmod/Player) - Adds the name of the player in the player's team color to the chat box.  * [any](/gmod/any) - Any other type, such as [Entity](/gmod/Entity) will be converted to string and added as text. 
function chat.AddText( arguments ) end
--- Closes the chat window.
function chat.Close(  ) end
--- Returns the chatbox position.
---@return number
---@return number
function chat.GetChatBoxPos(  ) end
--- Returns the chatbox size.
---@return number
---@return number
function chat.GetChatBoxSize(  ) end
--- Opens the chat window.
---@param mode number If equals 1, opens public chat, otherwise opens team chat 
function chat.Open( mode ) end
--- Plays the chat "tick" sound.
function chat.PlaySound(  ) end
