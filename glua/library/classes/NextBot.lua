---@meta
---@class NextBot
NextBot = {}
--- Become a ragdoll and remove the entity.
---@param info CTakeDamageInfo Damage info passed from an onkilled event 
---@return Entity
function NextBot:BecomeRagdoll( info ) end
--- Should only be called in [NEXTBOT:BodyUpdate](/gmod/NEXTBOT:BodyUpdate). This sets the `move_x` and `move_y` pose parameters of the bot to fit how they're currently moving, sets the animation speed ([Entity:GetPlaybackRate](/gmod/Entity:GetPlaybackRate)) to suit the ground speed, and calls [Entity:FrameAdvance](/gmod/Entity:FrameAdvance).
function NextBot:BodyMoveXY(  ) end
--- Like [NextBot:FindSpots](/gmod/NextBot:FindSpots) but only returns a vector.
---@param type string Either "random", "near", "far" 
---@param options table This table should contain the search info.    [string](/gmod/string) type - The type (Only'hiding' for now)    [Vector](/gmod/Vector) pos - the position to search.    [number](/gmod/number) radius - the radius to search.    [number](/gmod/number) stepup - the highest step to step up.    [number](/gmod/number) stepdown - the highest we can step down without being hurt. 
---@return Vector
function NextBot:FindSpot( type, options ) end
--- Returns a table of hiding spots.
---@param specs? table This table should contain the search info.    [string](/gmod/string) type - The type (optional, only 'hiding' supported)    [Vector](/gmod/Vector) pos - the position to search.    [number](/gmod/number) radius - the radius to search.    [number](/gmod/number) stepup - the highest step to step up.    [number](/gmod/number) stepdown - the highest we can step down without being hurt. 
---@return table
function NextBot:FindSpots( specs ) end
--- Returns the currently running activity
---@return number
function NextBot:GetActivity(  ) end
--- Returns the Field of View of the Nextbot NPC, used for its vision functionality, such as [NextBot:IsAbleToSee](/gmod/NextBot:IsAbleToSee).
---@return number
function NextBot:GetFOV(  ) end
--- Returns the maximum range the nextbot can see other nextbots/players at. See [NextBot:IsAbleToSee](/gmod/NextBot:IsAbleToSee).
---@return number
function NextBot:GetMaxVisionRange(  ) end
--- Returns squared distance to an entity or a position.
--- 
--- See also [NextBot:GetRangeTo](/gmod/NextBot:GetRangeTo).
---@param to Vector The position to measure distance to. Can be an entity. 
---@return number
function NextBot:GetRangeSquaredTo( to ) end
--- Returns the distance to an entity or position.
--- 
--- See also [NextBot:GetRangeSquaredTo](/gmod/NextBot:GetRangeSquaredTo).
---@param to Vector The position to measure distance to. Can be an entity. 
---@return number
function NextBot:GetRangeTo( to ) end
--- Returns the solid mask for given NextBot.
---@return number
function NextBot:GetSolidMask(  ) end
--- Called from Lua when the NPC is stuck. This should only be called from the behaviour coroutine - so if you want to override this function and do something special that yields - then go for it.
--- 
--- You should always call self.loco:ClearStuck() in this function to reset the stuck status - so it knows it's unstuck. See [CLuaLocomotion:ClearStuck](/gmod/CLuaLocomotion:ClearStuck).
function NextBot:HandleStuck(  ) end
--- Returns if the Nextbot NPC can see the give entity or not.
---@param ent Entity The entity to test if we can see 
---@param useFOV? number Whether to use the Field of View of the Nextbot 
---@return boolean
function NextBot:IsAbleToSee( ent, useFOV ) end
--- To be called in the behaviour coroutine only! Will yield until the bot has reached the goal or is stuck
---@param pos Vector The position we want to get to 
---@param options table A table containing a bunch of tweakable options.            [number](/gmod/number) lookahead - Minimum look ahead distance.      [number](/gmod/number) tolerance - How close we must be to the goal before it can be considered complete.      [boolean](/gmod/boolean) draw - Draw the path. Only visible on listen servers and single player.      [number](/gmod/number) maxage - Maximum age of the path before it times out.      [number](/gmod/number) repath - Rebuilds the path after this number of seconds. 
---@return string
function NextBot:MoveToPos( pos, options ) end
--- To be called in the behaviour coroutine only! Plays an animation sequence and waits for it to end before returning.
---@param name string The sequence name 
---@param speed? number Playback Rate of that sequence 
function NextBot:PlaySequenceAndWait( name, speed ) end
--- Sets the Field of View for the Nextbot NPC, used for its vision functionality, such as [NextBot:IsAbleToSee](/gmod/NextBot:IsAbleToSee).
---@param fov number The new FOV 
function NextBot:SetFOV( fov ) end
--- Sets the maximum range the nextbot can see other nextbots/players at. See [NextBot:IsAbleToSee](/gmod/NextBot:IsAbleToSee).
---@param range number The new vision range to set. 
function NextBot:SetMaxVisionRange( range ) end
--- Sets the solid mask for given NextBot.
--- 
--- The default solid mask of a NextBot is [MASK_NPCSOLID](/gmod/Enums/MASK).
---@param mask number The new mask, see [CONTENTS](/gmod/Enums/CONTENTS) and [MASK](/gmod/Enums/MASK) 
function NextBot:SetSolidMask( mask ) end
--- Start doing an activity (animation)
---@param activity number One of the [ACT](/gmod/Enums/ACT) 
function NextBot:StartActivity( activity ) end
