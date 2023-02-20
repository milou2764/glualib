---@meta
physenv = {}
--- Adds surface properties to the game's physics environment.
---@param properties string The properties to add. Each one should include "base" or the game will crash due to some values being missing. 
function physenv.AddSurfaceData( properties ) end
--- Returns the air density.
---@return number
function physenv.GetAirDensity(  ) end
--- Gets the global gravity.
---@return Vector
function physenv.GetGravity(  ) end
--- Gets the current performance settings in table form.
---@return table
function physenv.GetPerformanceSettings(  ) end
--- Sets the air density.
---@param airDensity number The new air density. 
function physenv.SetAirDensity( airDensity ) end
--- Sets the directional gravity, does not work on players.
---@param gravity Vector The new gravity. 
function physenv.SetGravity( gravity ) end
--- Sets the performance settings.
---@param performanceSettings table The new performance settings. See [PhysEnvPerformanceSettings](/gmod/Structures/PhysEnvPerformanceSettings) 
function physenv.SetPerformanceSettings( performanceSettings ) end
