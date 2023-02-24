---@meta
---@class Weapon:Entity
Weapon = {}
--- Returns whether the weapon allows to being switched from when a better ( [Weapon:GetWeight](/gmod/Weapon:GetWeight) ) weapon is being picked up.
---@return boolean
function Weapon:AllowsAutoSwitchFrom(  ) end
--- Returns whether the weapon allows to being switched to when a better ( [Weapon:GetWeight](/gmod/Weapon:GetWeight) ) weapon is being picked up.
---@return boolean
function Weapon:AllowsAutoSwitchTo(  ) end
--- Calls a SWEP function on client.
---@param functionName string Name of function to call. If you want to call SWEP:MyFunc() on client, you type in "MyFunc" 
---@param arguments string Arguments for the function, separated by spaces. 
function Weapon:CallOnClient( functionName, arguments ) end
--- Returns how much primary ammo is in the magazine.
---@return number
function Weapon:Clip1(  ) end
--- Returns how much secondary ammo is in the magazine.
---@return number
function Weapon:Clip2(  ) end
--- Forces the weapon to reload while playing given animation.
---@param act number Sequence to use as reload animation. Uses the [ACT](/gmod/Enums/ACT). 
---@return boolean
function Weapon:DefaultReload( act ) end
--- Returns the sequence enumeration number that the weapon is playing.
---@return number
function Weapon:GetActivity(  ) end
--- Returns the hold type of the weapon.
---@return string
function Weapon:GetHoldType(  ) end
--- Returns maximum primary clip size
---@return number
function Weapon:GetMaxClip1(  ) end
--- Returns maximum secondary clip size
---@return number
function Weapon:GetMaxClip2(  ) end
--- Gets the next time the weapon can primary fire. ( Can call [WEAPON:PrimaryAttack](/gmod/WEAPON:PrimaryAttack) )
---@return number
function Weapon:GetNextPrimaryFire(  ) end
--- Gets the next time the weapon can secondary fire. ( Can call [WEAPON:SecondaryAttack](/gmod/WEAPON:SecondaryAttack) )
---@return number
function Weapon:GetNextSecondaryFire(  ) end
--- Gets the primary ammo type of the given weapon.
---@return number
function Weapon:GetPrimaryAmmoType(  ) end
--- Returns the non-internal name of the weapon, that should be for displaying.
---@return string
function Weapon:GetPrintName(  ) end
--- Gets the ammo type of the given weapons secondary fire.
---@return number
function Weapon:GetSecondaryAmmoType(  ) end
--- Returns the slot of the weapon.
---@return number
function Weapon:GetSlot(  ) end
--- Returns slot position of the weapon
---@return number
function Weapon:GetSlotPos(  ) end
--- Returns the view model of the weapon.
---@return string
function Weapon:GetWeaponViewModel(  ) end
--- Returns the world model of the weapon.
---@return string
function Weapon:GetWeaponWorldModel(  ) end
--- Returns the "weight" of the weapon, which is used when deciding which [Weapon](/gmod/Weapon) is better by the engine.
---@return number
function Weapon:GetWeight(  ) end
--- Returns whether the weapon has ammo left or not. It will return false when there's no ammo left in the magazine **and** when there's no reserve ammo left.
---@return boolean
function Weapon:HasAmmo(  ) end
--- Returns whenever the weapon is carried by the local player.
---@return boolean
function Weapon:IsCarriedByLocalPlayer(  ) end
--- Checks if the weapon is a SWEP or a built-in weapon.
---@return boolean
function Weapon:IsScripted(  ) end
--- Returns whether the weapon is visible. The term visibility is not exactly what gets checked here, first it checks if the owner is a player, then checks if the active view model has EF_NODRAW flag NOT set.
---@return boolean
function Weapon:IsWeaponVisible(  ) end
--- Returns the time since this weapon last fired a bullet with [Entity:FireBullets](/gmod/Entity:FireBullets) in seconds. It is not networked.
---@return number
function Weapon:LastShootTime(  ) end
--- Forces weapon to play activity/animation.
---@param act number Activity to play. See the [ACT](/gmod/Enums/ACT) (specifically ACT_VM_). 
function Weapon:SendWeaponAnim( act ) end
--- Sets the activity the weapon is playing.
--- 
--- See also [Weapon:GetActivity](/gmod/Weapon:GetActivity).
---@param act number The new activity to set, see [ACT](/gmod/Enums/ACT). 
function Weapon:SetActivity( act ) end
--- Lets you change the number of bullets in the given weapons primary clip.
---@param ammo number The amount of bullets the clip should contain 
function Weapon:SetClip1( ammo ) end
--- Lets you change the number of bullets in the given weapons secondary clip.
---@param ammo number The amount of bullets the clip should contain 
function Weapon:SetClip2( ammo ) end
--- Sets the hold type of the weapon. This function also calls [WEAPON:SetWeaponHoldType](/gmod/WEAPON:SetWeaponHoldType) and properly networks it to all clients.
---@param name string Name of the hold type. You can find all default hold types [here](/gmod/Hold_Types) 
function Weapon:SetHoldType( name ) end
--- Sets the time since this weapon last fired in seconds. Used in conjunction with [Weapon:LastShootTime](/gmod/Weapon:LastShootTime)
---@param time? number The time in seconds when the last time the weapon was fired. 
function Weapon:SetLastShootTime( time ) end
--- Sets when the weapon can fire again. Time should be based on [CurTime](/gmod/Global.CurTime).
---@param time number Time when player should be able to use primary fire again 
function Weapon:SetNextPrimaryFire( time ) end
--- Sets when the weapon can alt-fire again. Time should be based on [CurTime](/gmod/Global.CurTime).
---@param time number Time when player should be able to use secondary fire again 
function Weapon:SetNextSecondaryFire( time ) end
