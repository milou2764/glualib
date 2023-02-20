---@meta
---@class PhysCollide
PhysCollide = {}
--- Destroys the [PhysCollide](/gmod/PhysCollide) object.
function PhysCollide:Destroy(  ) end
--- Checks whether this [PhysCollide](/gmod/PhysCollide) object is valid or not.
--- 
--- You should just use [IsValid](/gmod/Global.IsValid) instead.
---@return boolean
function PhysCollide:IsValid(  ) end
--- Performs a trace against this PhysCollide with the given parameters. This can be used for both line traces and box traces.
---@param origin Vector The origin for the PhysCollide during the trace 
---@param angles Angle The angles for the PhysCollide during the trace 
---@param rayStart Vector The start position of the trace 
---@param rayEnd Vector The end position of the trace 
---@param rayMins Vector The mins of the trace's bounds 
---@param rayMaxs Vector The maxs of the trace's bounds 
---@return Vector
---@return Vector
---@return number
function PhysCollide:TraceBox( origin, angles, rayStart, rayEnd, rayMins, rayMaxs ) end
