---@meta
---@class DebugInfo
---@field func function Reference to the function that was passed in. If a stack level was specified, this will be the function at that stack level. 0 = debug.getinfo, 1 = function that called debug.getinfo, etc.  **Option: f** 
---@field linedefined number The line where the function definiton starts (where "function" is located).  **Option: S** 
---@field lastlinedefined number The line the function definition ended (where "end" is located).  **Option: S** 
---@field source string The path to the file where the passed function is defined prepended by an @ (ex. "@lua/autorun/mytestfile.lua"). This will be the [CompileString](/gmod/Global.CompileString) or [RunString](/gmod/Global.RunString) identifier if the function wasn't defined in a file, also prepended by an @.  **Option: S** 
---@field short_src string The shortened name of the source (without the @). May be truncated if the source path is long.  **Option: S** 
---@field what string The language used. Either "Lua" or "C".  **Option: S** 
---@field currentline number The current line. This will be -1 if the code is not executed from a file.  **Option: l** (lowercase L) 
---@field name string The function name. This will be nil if the name cannot be found. Only works if stack level is passed rather than function pointer.  **Option: n** 
---@field namewhat string The function "type". This will be "global", "local", "method", "field". Can also be an empty string if the function name could not be found. Only works if stack level is passed rather than function pointer.  **Option: n** 
---@field isvararg boolean Whether the function is variadic (has a `...` argument).  **Option: u** 
---@field nparams number The number of arguments the function uses excluding varargs.  **Option: u** 
---@field nups number Upvalue count. Max index that can be used with [debug.getupvalue](/gmod/debug.getupvalue). C functions can have upvalues but they cannot be accessed from Lua.  **Option: u** 
---@field activelines table A table of all the active lines in the function - that is, lines with code that actually does something (not blank lines or lines with comments only).  The table keys will be line numbers, and their values will all be true. Lines that are inactive are simply not included in the table - they have the value nil.  It doesn't check for activeline in subfunctions.  **Option: L** 
DebugInfo = {}