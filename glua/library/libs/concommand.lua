---@meta
concommand = {}
--- Creates a console command that runs a function in lua with optional autocompletion function and help text.
---@param name string The command name to be used in console.    This cannot be a name of existing console command or console variable. It will silently fail if it is. 
---@param callback function The function to run when the concommand is executed. Arguments passed are:  * [Player](/gmod/Player) ply - The player that ran the concommand. NULL entity if command was entered with the dedicated server console.  * [string](/gmod/string) cmd - The concommand string (if one callback is used for several concommands).  * [table](/gmod/table) args - A table of all string arguments.  * [string](/gmod/string) argStr - The arguments as a string. 
---@param autoComplete? function The function to call which should return a table of options for autocompletion. ([Autocompletion Tutorial](/gmod/Autocomplete_Tutorial))    This only properly works on the client since it is **not** networked. Arguments passed are:  * [string](/gmod/string) cmd - The concommand this autocompletion is for.  * [string](/gmod/string) args - The arguments typed so far. 
---@param helpText? string The text to display should a user run 'help cmdName'. 
---@param flags? number Concommand modifier flags. See [FCVAR](/gmod/Enums/FCVAR). 
function concommand.Add( name, callback, autoComplete, helpText, flags ) end
--- Used by the engine to call the autocomplete function for a console command, and retrieve returned options.
---@param command string Name of command 
---@param arguments string Arguments given to the command 
---@return table
function concommand.AutoComplete( command, arguments ) end
--- Returns the tables of all console command callbacks, and autocomplete functions, that were added to the game with [concommand.Add](/gmod/concommand.Add).
---@return table
---@return table
function concommand.GetTable(  ) end
--- Removes a console command.
---@param name string The name of the command to be removed. 
function concommand.Remove( name ) end
--- Used by the engine to run a console command's callback function. This will only be called for commands that were added with [AddConsoleCommand](/gmod/Global.AddConsoleCommand), which [concommand.Add](/gmod/concommand.Add) calls internally. An error is sent to the player's chat if no callback is found.
--- 
--- This will still be called for concommands removed with [concommand.Remove](/gmod/concommand.Remove) but will return false.
---@param ply Player Player to run concommand on 
---@param cmd string Command name 
---@param args any Command arguments.  Can be table or string 
---@param argumentString string string of all arguments sent to the command 
---@return boolean
function concommand.Run( ply, cmd, args, argumentString ) end
