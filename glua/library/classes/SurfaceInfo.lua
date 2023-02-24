---@meta
---@class SurfaceInfo:Entity
SurfaceInfo = {}
--- Returns the brush surface's material.
---@return IMaterial
function SurfaceInfo:GetMaterial(  ) end
--- Returns a list of vertices the brush surface is built from.
---@return table
function SurfaceInfo:GetVertices(  ) end
--- Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.
---@return boolean
function SurfaceInfo:IsNoDraw(  ) end
--- Checks if the brush surface is displaying the skybox.
---@return boolean
function SurfaceInfo:IsSky(  ) end
--- Checks if the brush surface is water.
---@return boolean
function SurfaceInfo:IsWater(  ) end
