---@meta
motionsensor = {}
---@param translator table
---@param player Player
---@param rotation Angle
---@return Vector
---@return Angle
---@return any
function motionsensor.BuildSkeleton( translator, player, rotation ) end
---@param ent Entity Entity to choose builder for 
---@return string
function motionsensor.ChooseBuilderFromEntity( ent ) end
--- Returns the depth map material.
---@return IMaterial
function motionsensor.GetColourMaterial(  ) end
function motionsensor.GetSkeleton(  ) end
--- Return whether a kinect is connected - and active (ie - Start has been called).
---@return boolean
function motionsensor.IsActive(  ) end
--- Returns true if we have detected that there's a kinect connected to the PC
---@return boolean
function motionsensor.IsAvailable(  ) end
---@param translator table
---@param sensor table
---@param pos Vector
---@param ang Angle
---@param special_vectors table
---@param boneid number
---@param v table
---@return boolean
function motionsensor.ProcessAngle( translator, sensor, pos, ang, special_vectors, boneid, v ) end
---@param translator table
---@param sensor table
---@param pos Vector
---@param rotation Angle
---@return Angle
function motionsensor.ProcessAnglesTable( translator, sensor, pos, rotation ) end
---@param translator table
---@param sensor table
---@return Vector
function motionsensor.ProcessPositionTable( translator, sensor ) end
--- This starts access to the kinect sensor. Note that this usually freezes the game for a couple of seconds.
function motionsensor.Start(  ) end
--- Stops the motion capture.
function motionsensor.Stop(  ) end
