---@meta
---@class CMoveData
CMoveData = {}
--- Adds keys to the move data, as if player pressed them.
---@param keys number Keys to add, see [IN](/gmod/Enums/IN) 
function CMoveData:AddKey( keys ) end
--- Gets the aim angle. Seems to be same as [CMoveData:GetAngles](/gmod/CMoveData:GetAngles).
---@return Angle
function CMoveData:GetAbsMoveAngles(  ) end
--- Gets the aim angle. On client is the same as [Entity:GetAngles](/gmod/Entity:GetAngles).
---@return Angle
function CMoveData:GetAngles(  ) end
--- Gets which buttons are down
---@return number
function CMoveData:GetButtons(  ) end
--- Returns the radius that constrains the players movement.
---@return number
function CMoveData:GetConstraintRadius(  ) end
--- Returns the players forward speed.
---@return number
function CMoveData:GetForwardSpeed(  ) end
--- Gets the number passed to "impulse" console command
---@return number
function CMoveData:GetImpulseCommand(  ) end
--- Returns the maximum client speed of the player
---@return number
function CMoveData:GetMaxClientSpeed(  ) end
--- Returns the maximum speed of the player.
---@return number
function CMoveData:GetMaxSpeed(  ) end
--- Returns the angle the player is moving at. For more info, see [CMoveData:SetMoveAngles](/gmod/CMoveData:SetMoveAngles).
---@return Angle
function CMoveData:GetMoveAngles(  ) end
--- Gets the aim angle. Only works clientside, server returns same as [CMoveData:GetAngles](/gmod/CMoveData:GetAngles).
---@return Angle
function CMoveData:GetOldAngles(  ) end
--- Get which buttons were down last frame
---@return number
function CMoveData:GetOldButtons(  ) end
--- Gets the player's position.
---@return Vector
function CMoveData:GetOrigin(  ) end
--- Returns the strafe speed of the player.
---@return number
function CMoveData:GetSideSpeed(  ) end
--- Returns the vertical speed of the player. ( Z axis of [CMoveData:GetVelocity](/gmod/CMoveData:GetVelocity) )
---@return number
function CMoveData:GetUpSpeed(  ) end
--- Gets the players velocity.
---@return Vector
function CMoveData:GetVelocity(  ) end
--- Returns whether the key is down or not
---@param key number The key to test, see [IN](/gmod/Enums/IN) 
---@return boolean
function CMoveData:KeyDown( key ) end
--- Returns whether the key was pressed. If you want to check if the key is held down, try [CMoveData:KeyDown](/gmod/CMoveData:KeyDown)
---@param key number The key to test, see [IN](/gmod/Enums/IN) 
---@return boolean
function CMoveData:KeyPressed( key ) end
--- Returns whether the key was released
---@param key number A key to test, see [IN](/gmod/Enums/IN) 
---@return boolean
function CMoveData:KeyReleased( key ) end
--- Returns whether the key was down or not.
--- 
--- 
--- 
--- 
--- Unlike [CMoveData:KeyDown](/gmod/CMoveData:KeyDown), it will return false if [CMoveData:KeyPressed](/gmod/CMoveData:KeyPressed) is true and it will return true if [CMoveData:KeyReleased](/gmod/CMoveData:KeyReleased) is true.
---@param key number The key to test, see [IN](/gmod/Enums/IN) 
---@return boolean
function CMoveData:KeyWasDown( key ) end
--- Sets absolute move angles.( ? ) Doesn't seem to do anything.
---@param ang Angle New absolute move angles 
function CMoveData:SetAbsMoveAngles( ang ) end
--- Sets angles.
---@param ang Angle The angles. 
function CMoveData:SetAngles( ang ) end
--- Sets the pressed buttons on the move data
---@param buttons number A number representing which buttons are down, see [IN](/gmod/Enums/IN) 
function CMoveData:SetButtons( buttons ) end
--- Sets the radius that constrains the players movement.
--- 
--- It is unknown what this function does as changing its values doesn't affect player movement.
---@param radius number The new constraint radius 
function CMoveData:SetConstraintRadius( radius ) end
--- Sets players forward speed.
---@param speed number New forward speed 
function CMoveData:SetForwardSpeed( speed ) end
--- Sets the impulse command. This isn't actually utilised in the engine anywhere.
---@param impulse number The impulse to set 
function CMoveData:SetImpulseCommand( impulse ) end
--- Sets the maximum player speed. Player won't be able to run or sprint faster then this value.
--- 
--- This also automatically sets [CMoveData:SetMaxSpeed](/gmod/CMoveData:SetMaxSpeed) when used in the [GM:SetupMove](/gmod/GM:SetupMove) hook. You must set it manually in the [GM:Move](/gmod/GM:Move) hook.
--- 
--- This must be called on both client and server to avoid prediction errors.
--- 
--- This will **not** reduce speed in air.
---@param maxSpeed number The new maximum speed 
function CMoveData:SetMaxClientSpeed( maxSpeed ) end
--- Sets the maximum speed of the player. This must match with [CMoveData:SetMaxClientSpeed](/gmod/CMoveData:SetMaxClientSpeed) both, on server and client.
--- 
--- Doesn't seem to be doing anything on it's own, use [CMoveData:SetMaxClientSpeed](/gmod/CMoveData:SetMaxClientSpeed) instead.
---@param maxSpeed number The new maximum speed 
function CMoveData:SetMaxSpeed( maxSpeed ) end
--- Sets the serverside move angles, making the movement keys act as if player was facing that direction.
---@param dir Angle The aim direction. 
function CMoveData:SetMoveAngles( dir ) end
--- Sets old aim angles. ( ? ) Doesn't seem to be doing anything.
---@param aimAng Angle The old angles 
function CMoveData:SetOldAngles( aimAng ) end
--- Sets the 'old' pressed buttons on the move data. These buttons are used to work out which buttons have been released, which have just been pressed and which are being held down.
---@param buttons number A number representing which buttons were down, see [IN](/gmod/Enums/IN) 
function CMoveData:SetOldButtons( buttons ) end
--- Sets the players position.
---@param pos Vector The position 
function CMoveData:SetOrigin( pos ) end
--- Sets players strafe speed.
---@param speed number Strafe speed 
function CMoveData:SetSideSpeed( speed ) end
--- Sets vertical speed of the player. ( Z axis of [CMoveData:SetVelocity](/gmod/CMoveData:SetVelocity) )
---@param speed number Vertical speed to set 
function CMoveData:SetUpSpeed( speed ) end
--- Sets the player's velocity
---@param velocity Vector The velocity to set 
function CMoveData:SetVelocity( velocity ) end
