---@meta
---@class CLuaEmitter
CLuaEmitter = {}
--- Creates a new [CLuaParticle](/gmod/CLuaParticle) with the given material and position.
---@param material string The particles material. Can also be an [IMaterial](/gmod/IMaterial). 
---@param position Vector The position to spawn the particle on. 
---@return CLuaParticle
function CLuaEmitter:Add( material, position ) end
--- Manually renders all particles the emitter has created.
function CLuaEmitter:Draw(  ) end
--- Removes the emitter, making it no longer usable from Lua. If particles remain, the emitter will be removed when all particles die.
function CLuaEmitter:Finish(  ) end
--- Returns the amount of active particles of this emitter.
---@return number
function CLuaEmitter:GetNumActiveParticles(  ) end
--- Returns the position of this emitter. This is set when creating the emitter with [ParticleEmitter](/gmod/Global.ParticleEmitter).
---@return Vector
function CLuaEmitter:GetPos(  ) end
--- Returns whether this emitter is 3D or not. This is set when creating the emitter with [ParticleEmitter](/gmod/Global.ParticleEmitter).
---@return boolean
function CLuaEmitter:Is3D(  ) end
--- Returns whether this [CLuaEmitter](/gmod/CLuaEmitter) is valid or not.
---@return boolean
function CLuaEmitter:IsValid(  ) end
--- Sets the bounding box for this emitter.
--- 
--- Usually the bounding box is automatically determined by the particles, but this function overrides it.
---@param mins Vector The minimum position of the box 
---@param maxs Vector The maximum position of the box 
function CLuaEmitter:SetBBox( mins, maxs ) end
--- This function sets the the distance between the render camera and the emitter at which the particles should start fading and at which distance fade ends ( alpha becomes 0 ).
---@param distanceMin number Min distance where the alpha becomes 0. 
---@param distanceMax number Max distance where the alpha starts fading. 
function CLuaEmitter:SetNearClip( distanceMin, distanceMax ) end
--- Prevents all particles of the emitter from automatically drawing.
---@param noDraw boolean Whether we should draw the particles ( false ) or not ( true ) 
function CLuaEmitter:SetNoDraw( noDraw ) end
--- The function name has not much in common with its actual function, it applies a radius to every particles that affects the building of the bounding box, as it, usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z, this function just adds/subtracts the radius and inflates the bounding box.
---@param radius number Particle radius. 
function CLuaEmitter:SetParticleCullRadius( radius ) end
--- Sets the position of the particle emitter.
---@param position Vector New position. 
function CLuaEmitter:SetPos( position ) end
