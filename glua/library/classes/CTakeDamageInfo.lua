---@meta
---@class CTakeDamageInfo
CTakeDamageInfo = {}
--- Increases the damage by damageIncrease.
---@param damageIncrease number The damage to add. 
function CTakeDamageInfo:AddDamage( damageIncrease ) end
--- Returns the ammo type used by the weapon that inflicted the damage.
---@return number
function CTakeDamageInfo:GetAmmoType(  ) end
--- Returns the attacker ( character who originated the attack ), for example a player or an NPC that shot the weapon.
---@return Entity
function CTakeDamageInfo:GetAttacker(  ) end
--- Returns the initial unmodified by skill level ( [game.GetSkillLevel](/gmod/game.GetSkillLevel) ) damage.
---@return number
function CTakeDamageInfo:GetBaseDamage(  ) end
--- Returns the total damage.
---@return number
function CTakeDamageInfo:GetDamage(  ) end
--- Gets the current bonus damage.
---@return number
function CTakeDamageInfo:GetDamageBonus(  ) end
--- Gets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default.
---@return number
function CTakeDamageInfo:GetDamageCustom(  ) end
--- Returns a vector representing the damage force.
--- 
--- Can be set with [CTakeDamageInfo:SetDamageForce](/gmod/CTakeDamageInfo:SetDamageForce).
---@return Vector
function CTakeDamageInfo:GetDamageForce(  ) end
--- Returns the position where the damage was or is going to be applied to.
--- 
--- Can be set using [CTakeDamageInfo:SetDamagePosition](/gmod/CTakeDamageInfo:SetDamagePosition).
---@return Vector
function CTakeDamageInfo:GetDamagePosition(  ) end
--- Returns a bitflag which indicates the damage type(s) of the damage.
--- 
--- Consider using [CTakeDamageInfo:IsDamageType](/gmod/CTakeDamageInfo:IsDamageType) instead. Value returned by this function can contain multiple damage types.
---@return number
function CTakeDamageInfo:GetDamageType(  ) end
--- Returns the inflictor of the damage. This is not necessarily a weapon.
--- 
--- For hitscan weapons this is the weapon.
--- 
--- For projectile weapons this is the projectile.
--- 
--- For a more reliable method of getting the weapon that damaged an entity, use [GetAttacker](/gmod/CTakeDamageInfo:GetAttacker) with [GetActiveWeapon](/gmod/Player:GetActiveWeapon).
---@return Entity
function CTakeDamageInfo:GetInflictor(  ) end
--- Returns the maximum damage.
---@return number
function CTakeDamageInfo:GetMaxDamage(  ) end
--- Returns the initial, unmodified position where the damage occured.
---@return Vector
function CTakeDamageInfo:GetReportedPosition(  ) end
--- Returns true if the damage was caused by a bullet.
---@return boolean
function CTakeDamageInfo:IsBulletDamage(  ) end
--- Returns whenever the damageinfo contains the damage type specified.
---@param dmgType number Damage type to test. See [DMG](/gmod/Enums/DMG). 
---@return boolean
function CTakeDamageInfo:IsDamageType( dmgType ) end
--- Returns whenever the damageinfo contains explosion damage.
---@return boolean
function CTakeDamageInfo:IsExplosionDamage(  ) end
--- Returns whenever the damageinfo contains fall damage.
---@return boolean
function CTakeDamageInfo:IsFallDamage(  ) end
--- Scales the damage by the given value.
---@param scale number Value to scale the damage with. 
function CTakeDamageInfo:ScaleDamage( scale ) end
--- Changes the ammo type used by the weapon that inflicted the damage.
---@param ammoType number Ammo type ID 
function CTakeDamageInfo:SetAmmoType( ammoType ) end
--- Sets the attacker ( character who originated the attack ) of the damage, for example a player or an NPC.
---@param ent Entity The entity to be set as the attacker. 
function CTakeDamageInfo:SetAttacker( ent ) end
--- Sets the initial unmodified by skill level ( [game.GetSkillLevel](/gmod/game.GetSkillLevel) ) damage. This function will not update or touch [CTakeDamageInfo:GetDamage](/gmod/CTakeDamageInfo:GetDamage).
function CTakeDamageInfo:SetBaseDamage(  ) end
--- Sets the amount of damage.
---@param damage number The value to set the absolute damage to. 
function CTakeDamageInfo:SetDamage( damage ) end
--- Sets the bonus damage. Bonus damage isn't automatically applied, so this will have no outer effect by default.
---@param damage number The extra damage to be added. 
function CTakeDamageInfo:SetDamageBonus( damage ) end
--- Sets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default.
---@param DamageType number Any integer - can be based on your own custom enums. 
function CTakeDamageInfo:SetDamageCustom( DamageType ) end
--- Sets the directional force of the damage.
---@param force Vector The vector to set the force to. 
function CTakeDamageInfo:SetDamageForce( force ) end
--- Sets the position of where the damage gets applied to.
---@param pos Vector The position where the damage will be applied. 
function CTakeDamageInfo:SetDamagePosition( pos ) end
--- Sets the damage type.
---@param type number The damage type, see [DMG](/gmod/Enums/DMG). 
function CTakeDamageInfo:SetDamageType( type ) end
--- Sets the inflictor of the damage for example a weapon.
--- 
--- For hitscan/bullet weapons this should the weapon.
--- 
--- For projectile ( rockets, etc ) weapons this should be the projectile.
---@param inflictor Entity The new inflictor. 
function CTakeDamageInfo:SetInflictor( inflictor ) end
--- Sets the maximum damage the object can cause.
---@param maxDamage number Maximum damage value. 
function CTakeDamageInfo:SetMaxDamage( maxDamage ) end
--- Sets the origin of the damage.
---@param pos Vector The location of where the damage is originating 
function CTakeDamageInfo:SetReportedPosition( pos ) end
--- Subtracts the specified amount from the damage.
---@param damage number Value to subtract. 
function CTakeDamageInfo:SubtractDamage( damage ) end
