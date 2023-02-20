---@meta
---@class CUserCmd
CUserCmd = {}
--- Removes all keys from the command.
function CUserCmd:ClearButtons(  ) end
--- Clears the movement from the command.
--- 
--- See also [CUserCmd:SetForwardMove](/gmod/CUserCmd:SetForwardMove), [CUserCmd:SetSideMove](/gmod/CUserCmd:SetSideMove) and  [CUserCmd:SetUpMove](/gmod/CUserCmd:SetUpMove).
function CUserCmd:ClearMovement(  ) end
--- Returns an increasing number representing the index of the user cmd.
---@return number
function CUserCmd:CommandNumber(  ) end
--- Returns a bitflag indicating which buttons are pressed.
---@return number
function CUserCmd:GetButtons(  ) end
--- The speed the client wishes to move forward with, negative if the clients wants to move backwards.
---@return number
function CUserCmd:GetForwardMove(  ) end
--- Gets the current impulse from the client, usually 0. [See impulses list](https://developer.valvesoftware.com/wiki/Impulse) and some [GMod specific impulses](/gmod/CUserCmd:SetImpulse).
---@return number
function CUserCmd:GetImpulse(  ) end
--- Returns the scroll delta as whole number.
---@return number
function CUserCmd:GetMouseWheel(  ) end
--- Returns the delta of the angular horizontal mouse movement of the player.
---@return number
function CUserCmd:GetMouseX(  ) end
--- Returns the delta of the angular vertical mouse movement of the player.
---@return number
function CUserCmd:GetMouseY(  ) end
--- The speed the client wishes to move sideways with, positive if it wants to move right, negative if it wants to move left.
---@return number
function CUserCmd:GetSideMove(  ) end
--- The speed the client wishes to move up with, negative if the clients wants to move down.
---@return number
function CUserCmd:GetUpMove(  ) end
--- Gets the direction the player is looking in.
---@return Angle
function CUserCmd:GetViewAngles(  ) end
--- When players are not sending usercommands to the server (often due to lag), their last usercommand will be executed multiple times as a backup. This function returns true if that is happening.
--- 
--- This will never return true clientside.
---@return boolean
function CUserCmd:IsForced(  ) end
--- Returns true if the specified button(s) is pressed.
---@param key number Bitflag representing which button to check, see [IN](/gmod/Enums/IN). 
---@return boolean
function CUserCmd:KeyDown( key ) end
--- Removes a key bit from the current key bitflag. For movement you will want to use [CUserCmd:SetForwardMove](/gmod/CUserCmd:SetForwardMove), [CUserCmd:SetUpMove](/gmod/CUserCmd:SetUpMove) and [CUserCmd:SetSideMove](/gmod/CUserCmd:SetSideMove).
---@param button number Bitflag to be removed from the key bitflag, see [IN](/gmod/Enums/IN). 
function CUserCmd:RemoveKey( button ) end
--- Forces the associated player to select a weapon. This is used internally in the default HL2 weapon selection HUD.
--- 
--- This may not work immediately if the current command is in prediction. Use [input.SelectWeapon](/gmod/input.SelectWeapon) to switch the weapon from the client when the next available command can do so.
---@param weapon Weapon The weapon entity to select. 
function CUserCmd:SelectWeapon( weapon ) end
--- Sets the buttons as a bitflag. See also [CUserCmd:GetButtons](/gmod/CUserCmd:GetButtons).
---@param buttons number Bitflag representing which buttons are "down", see [IN](/gmod/Enums/IN). 
function CUserCmd:SetButtons( buttons ) end
--- Sets speed the client wishes to move forward with, negative if the clients wants to move backwards.
--- 
--- See also [CUserCmd:ClearMovement](/gmod/CUserCmd:ClearMovement), [CUserCmd:SetSideMove](/gmod/CUserCmd:SetSideMove) and [CUserCmd:SetUpMove](/gmod/CUserCmd:SetUpMove).
---@param speed number The new speed to request. The client will not be able to move faster than their set walk/sprint speed. 
function CUserCmd:SetForwardMove( speed ) end
--- Sets the impulse command to be sent to the server.
--- 
--- Here are a few examples of impulse numbers:
--- - `100` toggles their flashlight
--- - `101` gives the player all Half-Life 2 weapons with `sv_cheats` set to `1`
--- - `200` toggles holstering / restoring the current weapon  
---   When holstered, the `EF_NODRAW` flag is set on the active weapon.
--- - `154` toggles noclip
--- 
--- [See full list](https://developer.valvesoftware.com/wiki/Impulse)
---@param impulse number The impulse to send. 
function CUserCmd:SetImpulse( impulse ) end
--- Sets the scroll delta.
---@param speed number The scroll delta. 
function CUserCmd:SetMouseWheel( speed ) end
--- Sets the delta of the angular horizontal mouse movement of the player.
--- 
--- See also [CUserCmd:SetMouseY](/gmod/CUserCmd:SetMouseY).
---@param speed number Angular horizontal move delta. 
function CUserCmd:SetMouseX( speed ) end
--- Sets the delta of the angular vertical mouse movement of the player.
--- 
--- See also [CUserCmd:SetMouseX](/gmod/CUserCmd:SetMouseX).
---@param speed number Angular vertical move delta. 
function CUserCmd:SetMouseY( speed ) end
--- Sets speed the client wishes to move sidewards with, positive to move right, negative to move left.
--- 
--- See also [CUserCmd:SetForwardMove](/gmod/CUserCmd:SetForwardMove) and  [CUserCmd:SetUpMove](/gmod/CUserCmd:SetUpMove).
---@param speed number The new speed to request. 
function CUserCmd:SetSideMove( speed ) end
--- Sets speed the client wishes to move upwards with, negative to move down.
--- 
--- See also [CUserCmd:SetSideMove](/gmod/CUserCmd:SetSideMove) and  [CUserCmd:SetForwardMove](/gmod/CUserCmd:SetForwardMove).
---@param speed number The new speed to request. 
function CUserCmd:SetUpMove( speed ) end
--- Sets the direction the client wants to move in.
---@param viewAngle Angle New view angles. 
function CUserCmd:SetViewAngles( viewAngle ) end
--- Returns tick count since joining the server.
---@return number
function CUserCmd:TickCount(  ) end
