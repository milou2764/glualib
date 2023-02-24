---@meta
---@class CNewParticleEffect:Entity
CNewParticleEffect = {}
--- Adds a control point to the particle system.
---@param cpID number The control point ID, 0 to 63. 
---@param ent Entity The entity to attach the control point to. 
---@param partAttachment number See [PATTACH](/gmod/Enums/PATTACH). 
---@param entAttachment? number The attachment ID on the entity to attach the particle system to 
---@param offset? Vector The offset from the [Entity:GetPos](/gmod/Entity:GetPos) of the entity we are attaching this CP to. 
function CNewParticleEffect:AddControlPoint( cpID, ent, partAttachment, entAttachment, offset ) end
---@return boolean
function CNewParticleEffect:GetAutoUpdateBBox(  ) end
--- Returns the name of the particle effect this system is set to emit.
---@return string
function CNewParticleEffect:GetEffectName(  ) end
--- Returns the highest control point number for given particle system.
---@return boolean
function CNewParticleEffect:GetHighestControlPoint(  ) end
--- Returns the owner of the particle system, the entity the particle system is attached to.
---@return Entity
function CNewParticleEffect:GetOwner(  ) end
--- Returns whether the particle system has finished emitting particles or not.
---@return boolean
function CNewParticleEffect:IsFinished(  ) end
--- Returns whether the particle system is valid or not.
---@return boolean
function CNewParticleEffect:IsValid(  ) end
--- Returns whether the particle system is intended to be used on a view model?
---@return boolean
function CNewParticleEffect:IsViewModelEffect(  ) end
--- Forces the particle system to render using current rendering context.
--- 
--- Can be used to render the particle system in vgui panels, etc.
--- 
--- Used in conjunction with [CNewParticleEffect:SetShouldDraw](/gmod/CNewParticleEffect:SetShouldDraw).
function CNewParticleEffect:Render(  ) end
--- Forces the particle system to restart emitting particles.
function CNewParticleEffect:Restart(  ) end
--- Sets a value for given control point.
---@param cpID number The control point ID, 0 to 63. 
---@param value Vector The value to set for given control point. 
function CNewParticleEffect:SetControlPoint( cpID, value ) end
--- Essentially makes child control point follow the parent entity.
---@param child number The child control point ID, 0 to 63. 
---@param parent Entity The parent entity to follow. 
function CNewParticleEffect:SetControlPointEntity( child, parent ) end
--- Sets the forward direction for given control point.
---@param cpID number The control point ID, 0 to 63. 
---@param forward Vector The forward direction for given control point 
function CNewParticleEffect:SetControlPointForwardVector( cpID, forward ) end
--- Sets the orientation for given control point.
---@param cpID number The control point ID, 0 to 63. 
---@param forward Vector The forward direction for given control point 
---@param right Vector The right direction for given control point 
---@param up Vector The up direction for given control point 
function CNewParticleEffect:SetControlPointOrientation( cpID, forward, right, up ) end
--- Essentially makes child control point follow the parent control point.
---@param child number The child control point ID, 0 to 63. 
---@param parent number The parent control point ID, 0 to 63. 
function CNewParticleEffect:SetControlPointParent( child, parent ) end
--- Sets the right direction for given control point.
---@param cpID number The control point ID, 0 to 63. 
---@param right Vector The right direction for given control point. 
function CNewParticleEffect:SetControlPointRightVector( cpID, right ) end
--- Sets the upward direction for given control point.
---@param cpID number The control point ID, 0 to 63. 
---@param upward Vector The upward direction for given control point 
function CNewParticleEffect:SetControlPointUpVector( cpID, upward ) end
---@param isViewModel boolean
function CNewParticleEffect:SetIsViewModelEffect( isViewModel ) end
--- Forces the particle system to stop automatically rendering.
--- 
--- Used in conjunction with [CNewParticleEffect:Render](/gmod/CNewParticleEffect:Render).
---@param should boolean Whether to automatically draw the particle effect or not. 
function CNewParticleEffect:SetShouldDraw( should ) end
--- Sets the sort origin for given particle system. This is used as a helper to determine which particles are in front of which.
---@param origin Vector The new sort origin. 
function CNewParticleEffect:SetSortOrigin( origin ) end
--- Starts the particle emission.
---@param infiniteOnly? boolean
function CNewParticleEffect:StartEmission( infiniteOnly ) end
--- Stops the particle emission.
---@param infiniteOnly? boolean
---@param removeAllParticles? boolean
---@param wakeOnStop? boolean
function CNewParticleEffect:StopEmission( infiniteOnly, removeAllParticles, wakeOnStop ) end
--- Stops particle emission and destroys all particles instantly. Also detaches the particle effect from the entity it was attached to.
--- 
--- Consider using [CNewParticleEffect:StopEmission](/gmod/CNewParticleEffect:StopEmission)( false, true ) instead, which has same effect, but doesn't require owner entity, and does't detach the particle system from its entity.
function CNewParticleEffect:StopEmissionAndDestroyImmediately(  ) end
