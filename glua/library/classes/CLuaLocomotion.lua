---@meta
---@class CLuaLocomotion
CLuaLocomotion = {}
--- Sets the location we want to get to
---@param goal Vector The vector we want to get to 
---@param goalweight number If unsure then set this to 1 
function CLuaLocomotion:Approach( goal, goalweight ) end
--- Removes the stuck status from the bot
function CLuaLocomotion:ClearStuck(  ) end
--- Sets the direction we want to face
---@param goal Vector The vector we want to face 
function CLuaLocomotion:FaceTowards( goal ) end
--- Returns the acceleration speed
---@return number
function CLuaLocomotion:GetAcceleration(  ) end
--- Returns the current acceleration as a vector
---@return Vector
function CLuaLocomotion:GetCurrentAcceleration(  ) end
--- Gets the height the bot is scared to fall from
---@return number
function CLuaLocomotion:GetDeathDropHeight(  ) end
--- Gets the deceleration speed
---@return number
function CLuaLocomotion:GetDeceleration(  ) end
--- Returns the locomotion's gravity.
---@return number
function CLuaLocomotion:GetGravity(  ) end
--- Return unit vector in XY plane describing our direction of motion - even if we are currently not moving
---@return Vector
function CLuaLocomotion:GetGroundMotionVector(  ) end
--- Gets the height of the bot's jump
---@return number
function CLuaLocomotion:GetJumpHeight(  ) end
--- Returns maximum jump height of this [CLuaLocomotion](/gmod/CLuaLocomotion).
---@return number
function CLuaLocomotion:GetMaxJumpHeight(  ) end
--- Returns the max rate at which the NextBot can visually rotate.
---@return number
function CLuaLocomotion:GetMaxYawRate(  ) end
--- Returns the [NextBot](/gmod/NextBot) this locomotion is associated with.
---@return NextBot
function CLuaLocomotion:GetNextBot(  ) end
--- Gets the max height the bot can step up
---@return number
function CLuaLocomotion:GetStepHeight(  ) end
--- Returns the current movement velocity as a vector
---@return Vector
function CLuaLocomotion:GetVelocity(  ) end
--- Returns whether this [CLuaLocomotion](/gmod/CLuaLocomotion) can reach and/or traverse/move in given [CNavArea](/gmod/CNavArea).
---@param area CNavArea The area to test 
---@return boolean
function CLuaLocomotion:IsAreaTraversable( area ) end
--- Returns true if we're trying to move.
---@return boolean
function CLuaLocomotion:IsAttemptingToMove(  ) end
--- Returns true of the locomotion engine is jumping or climbing
---@return boolean
function CLuaLocomotion:IsClimbingOrJumping(  ) end
--- Returns whether the nextbot this locomotion is attached to is on ground or not.
---@return boolean
function CLuaLocomotion:IsOnGround(  ) end
--- Returns true if we're stuck
---@return boolean
function CLuaLocomotion:IsStuck(  ) end
--- Returns whether or not the target in question is on a ladder or not.
---@return boolean
function CLuaLocomotion:IsUsingLadder(  ) end
--- Makes the bot jump. It must be on ground ([Entity:IsOnGround](/gmod/Entity:IsOnGround)) and its model must have `ACT_JUMP` activity.
function CLuaLocomotion:Jump(  ) end
--- Makes the bot jump across a gap. The bot must be on ground ([Entity:IsOnGround](/gmod/Entity:IsOnGround)) and its model must have `ACT_JUMP` activity.
---@param landingGoal Vector
---@param landingForward Vector
function CLuaLocomotion:JumpAcrossGap( landingGoal, landingForward ) end
--- Sets the acceleration speed
---@param speed number Speed acceleration (default is 400) 
function CLuaLocomotion:SetAcceleration( speed ) end
--- Sets the height the bot is scared to fall from.
---@param height number Height (default is 200) 
function CLuaLocomotion:SetDeathDropHeight( height ) end
--- Sets the deceleration speed.
---@param deceleration number New deceleration speed (default is 400) 
function CLuaLocomotion:SetDeceleration( deceleration ) end
--- Sets movement speed.
---@param speed number The new desired speed 
function CLuaLocomotion:SetDesiredSpeed( speed ) end
--- Sets the locomotion's gravity.
---@param gravity number New gravity to set. Default is 1000. 
function CLuaLocomotion:SetGravity( gravity ) end
--- Sets the height of the bot's jump
---@param height number Height (default is 58) 
function CLuaLocomotion:SetJumpHeight( height ) end
--- Sets the max rate at which the NextBot can visually rotate. This will not affect moving or pathing.
---@param yawRate number Desired new maximum yaw rate 
function CLuaLocomotion:SetMaxYawRate( yawRate ) end
--- Sets the max height the bot can step up
---@param height number Height (default is 18) 
function CLuaLocomotion:SetStepHeight( height ) end
--- Sets the current movement velocity
---@param velocity Vector
function CLuaLocomotion:SetVelocity( velocity ) end
