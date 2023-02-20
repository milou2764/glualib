---@meta
---@class ConVar
ConVar = {}
--- Tries to convert the current string value of a [ConVar](/gmod/ConVar) to a boolean.
---@return boolean
function ConVar:GetBool(  ) end
--- Returns the default value of the [ConVar](/gmod/ConVar)
---@return string
function ConVar:GetDefault(  ) end
--- Returns the [FCVAR](/gmod/Enums/FCVAR) flags of the ConVar
---@return number
function ConVar:GetFlags(  ) end
--- Attempts to convert the [ConVar](/gmod/ConVar) value to a float
---@return number
function ConVar:GetFloat(  ) end
--- Returns the help text assigned to that convar.
---@return string
function ConVar:GetHelpText(  ) end
--- Attempts to convert the [ConVar](/gmod/ConVar) value to a integer.
---@return number
function ConVar:GetInt(  ) end
--- Returns the maximum value of the [ConVar](/gmod/ConVar)
---@return number
function ConVar:GetMax(  ) end
--- Returns the minimum value of the [ConVar](/gmod/ConVar)
---@return number
function ConVar:GetMin(  ) end
--- Returns the name of the [ConVar](/gmod/ConVar).
---@return string
function ConVar:GetName(  ) end
--- Returns the current [ConVar](/gmod/ConVar) value as a string.
---@return string
function ConVar:GetString(  ) end
--- Returns whether the specified flag is set on the [ConVar](/gmod/ConVar)
---@param flag number The [FCVAR](/gmod/Enums/FCVAR) flag to test 
---@return boolean
function ConVar:IsFlagSet( flag ) end
--- Reverts [ConVar](/gmod/ConVar) to its default value
function ConVar:Revert(  ) end
--- Sets a ConVar's value to 1 or 0 based on the input boolean. This can only be ran on ConVars created from within Lua.
---@param value boolean Value to set the ConVar to. 
function ConVar:SetBool( value ) end
--- Sets a ConVar's value to the input number.
---@param value number Value to set the ConVar to. 
function ConVar:SetFloat( value ) end
--- Sets a ConVar's value to the input number after converting it to an integer.
---@param value number Value to set the ConVar to. 
function ConVar:SetInt( value ) end
--- Sets a ConVar's value to the input string. This can only be ran on ConVars created from within Lua.
---@param value string Value to set the ConVar to. 
function ConVar:SetString( value ) end
