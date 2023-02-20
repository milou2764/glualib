---@meta
---@class PathFollower
PathFollower = {}
--- If you created your path with type "Chase" this functions should be used in place of [PathFollower:Update](/gmod/PathFollower:Update) to cause the bot to chase the specified entity.
---@param bot NextBot The bot to update along the path 
---@param ent Entity The entity we want to chase 
function PathFollower:Chase( bot, ent ) end
--- Compute shortest path from bot to 'goal' via A* algorithm.
---@param from NextBot The nextbot we're generating for 
---@param to Vector To point 
---@param generator? function A funtion that allows you to alter the path generation. See example below for the default function. 
---@return boolean
function PathFollower:Compute( from, to, generator ) end
--- Draws the path. This is meant for debugging - and uses debug overlay.
function PathFollower:Draw(  ) end
--- Returns the first segment of the path.
---@return table
function PathFollower:FirstSegment(  ) end
--- Returns the age since the path was built
---@return number
function PathFollower:GetAge(  ) end
--- Returns all of the segments of the given path.
---@return table
function PathFollower:GetAllSegments(  ) end
--- The closest position along the path to a position
---@param position Vector The point we're querying for 
---@return Vector
function PathFollower:GetClosestPosition( position ) end
--- Returns the current goal data. Can return nil if the current goal is invalid, for example immediately after [PathFollower:Update](/gmod/PathFollower:Update).
---@return table
function PathFollower:GetCurrentGoal(  ) end
--- Returns the cursor data
---@return table
function PathFollower:GetCursorData(  ) end
--- Returns the current progress along the path
---@return number
function PathFollower:GetCursorPosition(  ) end
--- Returns the path end position
---@return Vector
function PathFollower:GetEnd(  ) end
--- Returns how close we can get to the goal to call it done.
---@return number
function PathFollower:GetGoalTolerance(  ) end
---@return Entity
function PathFollower:GetHindrance(  ) end
--- Returns the total length of the path
---@return number
function PathFollower:GetLength(  ) end
--- Returns the minimum range movement goal must be along path.
---@return number
function PathFollower:GetMinLookAheadDistance(  ) end
--- Returns the vector position of distance along path
---@param distance number The distance along the path to query 
---@return Vector
function PathFollower:GetPositionOnPath( distance ) end
--- Returns the path start position
---@return Vector
function PathFollower:GetStart(  ) end
--- Invalidates the current path
function PathFollower:Invalidate(  ) end
--- Returns true if the path is valid
---@return boolean
function PathFollower:IsValid(  ) end
--- Returns the last segment of the path.
---@return table
function PathFollower:LastSegment(  ) end
--- Moves the cursor by give distance.
--- 
--- For a function that sets the distance, see [PathFollower:MoveCursorTo](/gmod/PathFollower:MoveCursorTo).
---@param distance number The distance to move the cursor (in relative world units) 
function PathFollower:MoveCursor( distance ) end
--- Sets the cursor position to given distance.
--- 
--- For relative distance, see [PathFollower:MoveCursor](/gmod/PathFollower:MoveCursor).
---@param distance number The distance to move the cursor (in world units) 
function PathFollower:MoveCursorTo( distance ) end
--- Moves the cursor of the path to the closest position compared to given vector.
---@param pos Vector
---@param type? number Seek type    0 = SEEK_ENTIRE_PATH - Search the entire path length    1 = SEEK_AHEAD - Search from current cursor position forward toward end of path    2 = SEEK_BEHIND - Search from current cursor position backward toward path start 
---@param alongLimit? number
function PathFollower:MoveCursorToClosestPosition( pos, type, alongLimit ) end
--- Moves the cursor to the end of the path
function PathFollower:MoveCursorToEnd(  ) end
--- Moves the cursor to the end of the path
function PathFollower:MoveCursorToStart(  ) end
--- Resets the age which is retrieved by [PathFollower:GetAge](/gmod/PathFollower:GetAge) to 0.
function PathFollower:ResetAge(  ) end
--- How close we can get to the goal to call it done
---@param distance number The distance we're setting it to 
function PathFollower:SetGoalTolerance( distance ) end
--- Sets minimum range movement goal must be along path
---@param mindist number The minimum look ahead distance 
function PathFollower:SetMinLookAheadDistance( mindist ) end
--- Move the bot along the path.
---@param bot NextBot The bot to update along the path 
function PathFollower:Update( bot ) end
