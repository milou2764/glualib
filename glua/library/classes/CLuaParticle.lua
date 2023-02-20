---@meta
---@class CLuaParticle
CLuaParticle = {}
--- Returns the air resistance of the particle.
---@return number
function CLuaParticle:GetAirResistance(  ) end
--- Returns the current orientation of the particle.
---@return Angle
function CLuaParticle:GetAngles(  ) end
--- Returns the angular velocity of the particle
---@return Angle
function CLuaParticle:GetAngleVelocity(  ) end
--- Returns the 'bounciness' of the particle.
---@return number
function CLuaParticle:GetBounce(  ) end
--- Returns the color of the particle.
---@return number
---@return number
---@return number
function CLuaParticle:GetColor(  ) end
--- Returns the amount of time in seconds after which the particle will be destroyed.
---@return number
function CLuaParticle:GetDieTime(  ) end
--- Returns the alpha value that the particle will reach on its death.
---@return number
function CLuaParticle:GetEndAlpha(  ) end
--- Returns the length that the particle will reach on its death.
---@return number
function CLuaParticle:GetEndLength(  ) end
--- Returns the size that the particle will reach on its death.
---@return number
function CLuaParticle:GetEndSize(  ) end
--- Returns the gravity of the particle.
---@return Vector
function CLuaParticle:GetGravity(  ) end
--- Returns the 'life time' of the particle, how long the particle existed since its creation.
--- 
--- This value will always be between 0 and [CLuaParticle:GetDieTime](/gmod/CLuaParticle:GetDieTime).
--- 
--- It changes automatically as time goes.
--- 
--- It can be manipulated using [CLuaParticle:SetLifeTime](/gmod/CLuaParticle:SetLifeTime).
--- 
--- If the life time of the particle will be more than [CLuaParticle:GetDieTime](/gmod/CLuaParticle:GetDieTime), it will be removed.
---@return number
function CLuaParticle:GetLifeTime(  ) end
--- Returns the current material of the particle.
---@return IMaterial
function CLuaParticle:GetMaterial(  ) end
--- Returns the absolute position of the particle.
---@return Vector
function CLuaParticle:GetPos(  ) end
--- Returns the current rotation of the particle in radians, this should only be used for 2D particles.
---@return number
function CLuaParticle:GetRoll(  ) end
--- Returns the current rotation speed of the particle in radians, this should only be used for 2D particles.
---@return number
function CLuaParticle:GetRollDelta(  ) end
--- Returns the alpha value which the particle has when it's created.
---@return number
function CLuaParticle:GetStartAlpha(  ) end
--- Returns the length which the particle has when it's created.
---@return number
function CLuaParticle:GetStartLength(  ) end
--- Returns the size which the particle has when it's created.
---@return number
function CLuaParticle:GetStartSize(  ) end
--- Returns the current velocity of the particle.
---@return Vector
function CLuaParticle:GetVelocity(  ) end
--- Sets the air resistance of the the particle.
---@param airResistance number New air resistance. 
function CLuaParticle:SetAirResistance( airResistance ) end
--- Sets the angles of the particle.
---@param ang Angle New angle. 
function CLuaParticle:SetAngles( ang ) end
--- Sets the angular velocity of the the particle.
---@param angVel Angle New angular velocity. 
function CLuaParticle:SetAngleVelocity( angVel ) end
--- Sets the 'bounciness' of the the particle.
---@param bounce number New 'bounciness' of the particle    2 means it will gain 100% of its previous velocity,    1 means it will not lose velocity,    0.5 means it will lose half of its velocity with each bounce. 
function CLuaParticle:SetBounce( bounce ) end
--- Sets the whether the particle should collide with the world or not.
---@param shouldCollide boolean Whether the particle should collide with the world or not 
function CLuaParticle:SetCollide( shouldCollide ) end
--- Sets the function that gets called whenever the particle collides with the world.
---@param collideFunc function Collide callback, the arguments are:    [CLuaParticle](/gmod/CLuaParticle) particle - The particle itself    [Vector](/gmod/Vector) hitPos - Position of the collision    [Vector](/gmod/Vector) hitNormal - Direction of the collision, perpendicular to the hit surface 
function CLuaParticle:SetCollideCallback( collideFunc ) end
--- Sets the color of the particle.
---@param r number The red component. 
---@param g number The green component. 
---@param b number The blue component. 
function CLuaParticle:SetColor( r, g, b ) end
--- Sets the time where the particle will be removed.
---@param dieTime number The new die time. 
function CLuaParticle:SetDieTime( dieTime ) end
--- Sets the alpha value of the particle that it will reach when it dies.
---@param endAlpha number The new alpha value of the particle that it will reach when it dies. 
function CLuaParticle:SetEndAlpha( endAlpha ) end
--- Sets the length of the particle that it will reach when it dies.
---@param endLength number The new length of the particle that it will reach when it dies. 
function CLuaParticle:SetEndLength( endLength ) end
--- Sets the size of the particle that it will reach when it dies.
---@param endSize number The new size of the particle that it will reach when it dies. 
function CLuaParticle:SetEndSize( endSize ) end
--- Sets the directional gravity aka. acceleration of the particle.
---@param gravity Vector The directional gravity. 
function CLuaParticle:SetGravity( gravity ) end
--- Sets the 'life time' of the particle, how long the particle existed since its creation.
--- 
--- This value should always be between 0 and [CLuaParticle:GetDieTime](/gmod/CLuaParticle:GetDieTime).
--- 
--- It changes automatically as time goes.
--- 
--- If the life time of the particle will be more than [CLuaParticle:GetDieTime](/gmod/CLuaParticle:GetDieTime), it will be removed.
---@param lifeTime number The new life time of the particle. 
function CLuaParticle:SetLifeTime( lifeTime ) end
--- Sets whether the particle should be affected by lighting.
---@param useLighting boolean Whether the particle should be affected by lighting. 
function CLuaParticle:SetLighting( useLighting ) end
--- Sets the material of the particle.
---@param mat IMaterial The new material to set. Can also be a string. 
function CLuaParticle:SetMaterial( mat ) end
--- Sets when the particles think function should be called next, this uses the synchronized server time returned by [CurTime](/gmod/Global.CurTime).
---@param nextThink number Next think time. 
function CLuaParticle:SetNextThink( nextThink ) end
--- Sets the absolute position of the particle.
---@param pos Vector The new particle position. 
function CLuaParticle:SetPos( pos ) end
--- Sets the roll of the particle in radians. This should only be used for 2D particles.
---@param roll number The new rotation of the particle in radians. 
function CLuaParticle:SetRoll( roll ) end
--- Sets the rotation speed of the particle in radians. This should only be used for 2D particles.
---@param rollDelta number The new rotation speed of the particle in radians. 
function CLuaParticle:SetRollDelta( rollDelta ) end
--- Sets the initial alpha value of the particle.
---@param startAlpha number Initial alpha. 
function CLuaParticle:SetStartAlpha( startAlpha ) end
--- Sets the initial length value of the particle.
---@param startLength number Initial length. 
function CLuaParticle:SetStartLength( startLength ) end
--- Sets the initial size value of the particle.
---@param startSize number Initial size. 
function CLuaParticle:SetStartSize( startSize ) end
--- Sets the think function of the particle.
---@param thinkFunc function Think function. It has only one argument:      [CLuaParticle](/gmod/CLuaParticle) particle - The particle the think hook is set on 
function CLuaParticle:SetThinkFunction( thinkFunc ) end
--- Sets the velocity of the particle.
---@param vel Vector The new velocity of the particle. 
function CLuaParticle:SetVelocity( vel ) end
--- Scales the velocity based on the particle speed.
---@param doScale? boolean Use velocity scaling. 
function CLuaParticle:SetVelocityScale( doScale ) end
