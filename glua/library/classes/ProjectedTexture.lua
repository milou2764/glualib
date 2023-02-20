---@meta
---@class ProjectedTexture
ProjectedTexture = {}
--- Returns the angle of the ProjectedTexture, which were previously set by [ProjectedTexture:SetAngles](/gmod/ProjectedTexture:SetAngles)
---@return Angle
function ProjectedTexture:GetAngles(  ) end
--- Returns the brightness of the ProjectedTexture, which was previously set by [ProjectedTexture:SetBrightness](/gmod/ProjectedTexture:SetBrightness)
---@return number
function ProjectedTexture:GetBrightness(  ) end
--- Returns the color of the ProjectedTexture, which was previously set by [ProjectedTexture:SetColor](/gmod/ProjectedTexture:SetColor).
---@return table
function ProjectedTexture:GetColor(  ) end
--- Returns the constant attenuation of the projected texture, which can also be set by [ProjectedTexture:SetConstantAttenuation](/gmod/ProjectedTexture:SetConstantAttenuation).
---@return number
function ProjectedTexture:GetConstantAttenuation(  ) end
--- Returns whether shadows are enabled for this ProjectedTexture, which was previously set by [ProjectedTexture:SetEnableShadows](/gmod/ProjectedTexture:SetEnableShadows)
---@return boolean
function ProjectedTexture:GetEnableShadows(  ) end
--- Returns the projection distance of the ProjectedTexture, which was previously set by [ProjectedTexture:SetFarZ](/gmod/ProjectedTexture:SetFarZ)
---@return number
function ProjectedTexture:GetFarZ(  ) end
--- Returns the horizontal FOV of the ProjectedTexture, which was previously set by [ProjectedTexture:SetHorizontalFOV](/gmod/ProjectedTexture:SetHorizontalFOV) or [ProjectedTexture:SetFOV](/gmod/ProjectedTexture:SetFOV)
---@return number
function ProjectedTexture:GetHorizontalFOV(  ) end
--- Returns the linear attenuation of the projected texture, which can also be set by [ProjectedTexture:SetLinearAttenuation](/gmod/ProjectedTexture:SetLinearAttenuation).
---@return number
function ProjectedTexture:GetLinearAttenuation(  ) end
--- Returns the NearZ value of the ProjectedTexture, which was previously set by [ProjectedTexture:SetNearZ](/gmod/ProjectedTexture:SetNearZ)
---@return number
function ProjectedTexture:GetNearZ(  ) end
--- Returns the current orthographic settings of the Projected Texture. To set these values, use [ProjectedTexture:SetOrthographic](/gmod/ProjectedTexture:SetOrthographic).
---@return boolean
---@return number
---@return number
---@return number
---@return number
function ProjectedTexture:GetOrthographic(  ) end
--- Returns the position of the ProjectedTexture, which was previously set by [ProjectedTexture:SetPos](/gmod/ProjectedTexture:SetPos)
---@return Vector
function ProjectedTexture:GetPos(  ) end
--- Returns the quadratic attenuation of the projected texture, which can also be set by [ProjectedTexture:SetQuadraticAttenuation](/gmod/ProjectedTexture:SetQuadraticAttenuation).
---@return number
function ProjectedTexture:GetQuadraticAttenuation(  ) end
--- Returns the shadow depth bias of the projected texture.
--- 
--- Set by [ProjectedTexture:SetShadowDepthBias](/gmod/ProjectedTexture:SetShadowDepthBias).
---@return number
function ProjectedTexture:GetShadowDepthBias(  ) end
--- Returns the shadow "filter size" of the projected texture. `0` is fully pixelated, higher values will blur the shadow more.
--- 
--- Set by [ProjectedTexture:SetShadowFilter](/gmod/ProjectedTexture:SetShadowFilter).
---@return number
function ProjectedTexture:GetShadowFilter(  ) end
--- Returns the shadow depth slope scale bias of the projected texture.
--- 
--- Set by [ProjectedTexture:SetShadowSlopeScaleDepthBias](/gmod/ProjectedTexture:SetShadowSlopeScaleDepthBias).
---@return number
function ProjectedTexture:GetShadowSlopeScaleDepthBias(  ) end
--- Returns the target entity of this projected texture.
---@return Entity
function ProjectedTexture:GetTargetEntity(  ) end
--- Returns the texture of the ProjectedTexture, which was previously set by [ProjectedTexture:SetTexture](/gmod/ProjectedTexture:SetTexture)
---@return ITexture
function ProjectedTexture:GetTexture(  ) end
--- Returns the texture frame of the ProjectedTexture, which was previously set by [ProjectedTexture:SetTextureFrame](/gmod/ProjectedTexture:SetTextureFrame)
---@return number
function ProjectedTexture:GetTextureFrame(  ) end
--- Returns the vertical FOV of the ProjectedTexture, which was previously set by [ProjectedTexture:SetVerticalFOV](/gmod/ProjectedTexture:SetVerticalFOV) or [ProjectedTexture:SetFOV](/gmod/ProjectedTexture:SetFOV)
---@return number
function ProjectedTexture:GetVerticalFOV(  ) end
--- Returns true if the projected texture is valid (i.e. has not been removed), false otherwise.
--- 
--- Instead of calling this directly it's a good idea to call [IsValid](/gmod/Global.IsValid) in case the variable is nil.
--- 
--- ```
--- IsValid( ptexture )
--- ```
--- 
--- This not only checks whether the projected texture is valid - but also checks whether it's nil.
---@return boolean
function ProjectedTexture:IsValid(  ) end
--- Removes the projected texture. After calling this, [ProjectedTexture:IsValid](/gmod/ProjectedTexture:IsValid) will return false, and any hooks with the projected texture as the identifier will be automatically deleted.
function ProjectedTexture:Remove(  ) end
--- Sets the angles (direction) of the projected texture.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param angle Angle
function ProjectedTexture:SetAngles( angle ) end
--- Sets the brightness of the projected texture.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param brightness number The brightness to give the projected texture. 
function ProjectedTexture:SetBrightness( brightness ) end
--- Sets the color of the projected texture.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param color table Must be a [Color](/gmod/Color).    Unlike other projected textures, this color can only go up to 255. 
function ProjectedTexture:SetColor( color ) end
--- Sets the constant attenuation of the projected texture.
--- 
--- See also [ProjectedTexture:SetLinearAttenuation](/gmod/ProjectedTexture:SetLinearAttenuation) and [ProjectedTexture:SetQuadraticAttenuation](/gmod/ProjectedTexture:SetQuadraticAttenuation).
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param constAtten number
function ProjectedTexture:SetConstantAttenuation( constAtten ) end
--- Enable or disable shadows cast from the projected texture.
--- 
--- 
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param newState boolean
function ProjectedTexture:SetEnableShadows( newState ) end
--- Sets the distance at which the projected texture ends.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param farZ number
function ProjectedTexture:SetFarZ( farZ ) end
--- Sets the angle of projection.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param fov number Must be higher than 0 and lower than 180 
function ProjectedTexture:SetFOV( fov ) end
--- Sets the horizontal angle of projection without affecting the vertical angle.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param hFOV number The new horizontal Field Of View for the projected texture. Must be in range between 0 and 180. 
function ProjectedTexture:SetHorizontalFOV( hFOV ) end
--- Sets the linear attenuation of the projected texture.
--- 
--- See also [ProjectedTexture:SetConstantAttenuation](/gmod/ProjectedTexture:SetConstantAttenuation) and [ProjectedTexture:SetQuadraticAttenuation](/gmod/ProjectedTexture:SetQuadraticAttenuation).
--- 
--- The default value of linear attenuation when the projected texture is created is 100. (others are 0, as you are not supposed to mix them)
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param linearAtten number
function ProjectedTexture:SetLinearAttenuation( linearAtten ) end
--- Sets the distance at which the projected texture begins its projection.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param nearZ number
function ProjectedTexture:SetNearZ( nearZ ) end
--- Changes the current projected texture between orthographic and perspective projection.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param orthographic boolean When false, all other arguments are ignored and the texture is reset to perspective projection. 
---@param left number The amount of units left from the projected texture's origin to project. 
---@param top number The amount of units upwards from the projected texture's origin to project. 
---@param right number The amount of units right from the projected texture's origin to project. 
---@param bottom number The amount of units downwards from the projected texture's origin to project. 
function ProjectedTexture:SetOrthographic( orthographic, left, top, right, bottom ) end
--- Move the Projected Texture to the specified position.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param position Vector
function ProjectedTexture:SetPos( position ) end
--- Sets the quadratic attenuation of the projected texture.
--- 
--- See also [ProjectedTexture:SetLinearAttenuation](/gmod/ProjectedTexture:SetLinearAttenuation) and [ProjectedTexture:SetConstantAttenuation](/gmod/ProjectedTexture:SetConstantAttenuation).
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param quadAtten number
function ProjectedTexture:SetQuadraticAttenuation( quadAtten ) end
--- Sets the shadow depth bias of the projected texture.
--- 
--- The initial value is `0.0001`. Normal projected textures obey the value of the `mat_depthbias_shadowmap` [ConVar](/gmod/ConVar).
---@param bias number The shadow depth bias to set. 
function ProjectedTexture:SetShadowDepthBias( bias ) end
--- Sets the shadow "filter size" of the projected texture. `0` is fully pixelated, higher values will blur the shadow more. The initial value is the value of `r_projectedtexture_grain` [ConVar](/gmod/ConVar).
---@param filter number The shadow filter size to set. 
function ProjectedTexture:SetShadowFilter( filter ) end
--- Sets the shadow depth slope scale bias of the projected texture.
--- 
--- The initial value is `2`. Normal projected textures obey the value of the `mat_slopescaledepthbias_shadowmap` [ConVar](/gmod/ConVar).
---@param bias number The shadow depth slope scale bias to set. 
function ProjectedTexture:SetShadowSlopeScaleDepthBias( bias ) end
--- Sets the target entity for this projected texture, meaning it will only be lighting the given entity and the world.
---@param target? Entity The target entity, or `NULL` to reset. 
function ProjectedTexture:SetTargetEntity( target ) end
--- Sets the texture to be projected.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param texture string The name of the texture. Can also be an [ITexture](/gmod/ITexture). 
function ProjectedTexture:SetTexture( texture ) end
--- For animated textures, this will choose which frame in the animation will be projected.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param frame number The frame index to use. 
function ProjectedTexture:SetTextureFrame( frame ) end
--- Sets the vertical angle of projection without affecting the horizontal angle.
--- 
--- You must call [ProjectedTexture:Update](/gmod/ProjectedTexture:Update) after using this function for it to take effect.
---@param vFOV number The new vertical Field Of View for the projected texture. Must be in range between 0 and 180. 
function ProjectedTexture:SetVerticalFOV( vFOV ) end
--- Updates the Projected Light and applies all previously set parameters.
function ProjectedTexture:Update(  ) end
