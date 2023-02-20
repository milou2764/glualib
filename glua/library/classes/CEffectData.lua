---@meta
---@class CEffectData
CEffectData = {}
--- Returns the angles of the effect.
---@return Angle
function CEffectData:GetAngles(  ) end
--- Returns the attachment ID for the effect.
---@return number
function CEffectData:GetAttachment(  ) end
--- Returns byte which represents the color of the effect.
---@return number
function CEffectData:GetColor(  ) end
--- Returns the damage type of the effect
---@return number
function CEffectData:GetDamageType(  ) end
--- Returns the entity index of the entity set for the effect.
---@return number
function CEffectData:GetEntIndex(  ) end
--- Returns the entity assigned to the effect.
---@return Entity
function CEffectData:GetEntity(  ) end
--- Returns the flags of the effect.
---@return number
function CEffectData:GetFlags(  ) end
--- Returns the hit box ID of the effect.
---@return number
function CEffectData:GetHitBox(  ) end
--- Returns the magnitude of the effect.
---@return number
function CEffectData:GetMagnitude(  ) end
--- Returns the material ID of the effect.
---@return number
function CEffectData:GetMaterialIndex(  ) end
--- Returns the normalized direction vector of the effect.
---@return Vector
function CEffectData:GetNormal(  ) end
--- Returns the origin position of the effect.
---@return Vector
function CEffectData:GetOrigin(  ) end
--- Returns the radius of the effect.
---@return number
function CEffectData:GetRadius(  ) end
--- Returns the scale of the effect.
---@return number
function CEffectData:GetScale(  ) end
--- Returns the start position of the effect.
---@return Vector
function CEffectData:GetStart(  ) end
--- Returns the surface property index of the effect.
---@return number
function CEffectData:GetSurfaceProp(  ) end
--- Sets the angles of the effect.
---@param ang Angle The new angles to be set. 
function CEffectData:SetAngles( ang ) end
--- Sets the attachment id of the effect to be created with this effect data.
---@param attachment number New attachment ID of the effect. 
function CEffectData:SetAttachment( attachment ) end
--- Sets the "color" of the effect.
--- 
--- All this does is provide an addition 8 bits of data for the effect to use. What this will actually do will vary from effect to effect, depending on how a specific effect uses this given data, if at all.
---@param color number Color represented by a byte. 
function CEffectData:SetColor( color ) end
--- Sets the damage type of the effect to be created with this effect data.
---@param damageType number Damage type, see [DMG](/gmod/Enums/DMG). 
function CEffectData:SetDamageType( damageType ) end
--- Sets the entity of the effect via its index.
---@param entIndex number The entity index to be set. 
function CEffectData:SetEntIndex( entIndex ) end
--- Sets the entity of the effect to be created with this effect data.
---@param entity Entity Entity of the effect, mostly used for parenting. 
function CEffectData:SetEntity( entity ) end
--- Sets the flags of the effect.
---@param flags number The flags of the effect. Each effect has their own flags. 
function CEffectData:SetFlags( flags ) end
--- Sets the hit box index of the effect.
---@param hitBoxIndex number The hit box index of the effect. 
function CEffectData:SetHitBox( hitBoxIndex ) end
--- Sets the magnitude of the effect.
---@param magnitude number The magnitude of the effect. 
function CEffectData:SetMagnitude( magnitude ) end
--- Sets the material index of the effect.
---@param materialIndex number The material index of the effect. 
function CEffectData:SetMaterialIndex( materialIndex ) end
--- Sets the normalized (length=1) direction vector of the effect to be created with this effect data. This **must** be a normalized vector for networking purposes.
---@param normal Vector The normalized direction vector of the effect. 
function CEffectData:SetNormal( normal ) end
--- Sets the origin of the effect to be created with this effect data.
---@param origin Vector Origin of the effect. 
function CEffectData:SetOrigin( origin ) end
--- Sets the radius of the effect to be created with this effect data.
---@param radius number Radius of the effect. 
function CEffectData:SetRadius( radius ) end
--- Sets the scale of the effect to be created with this effect data.
---@param scale number Scale of the effect. 
function CEffectData:SetScale( scale ) end
--- Sets the start of the effect to be created with this effect data.
---@param start Vector Start of the effect. 
function CEffectData:SetStart( start ) end
--- Sets the surface property index of the effect.
---@param surfaceProperties number The surface property index of the effect. 
function CEffectData:SetSurfaceProp( surfaceProperties ) end
