---@meta
---@class Angle
Angle = {}
--- Adds the values of the argument angle to the orignal angle. 
--- 
--- This functions the same as angle1 + angle2 without creating a new angle object, skipping object construction and garbage collection.
---@param angle Angle The angle to add. 
function Angle:Add( angle ) end
--- Divides all values of the original angle by a scalar. This functions the same as angle1 / num without creating a new angle object, skipping object construction and garbage collection.
---@param scalar number The number to divide by. 
function Angle:Div( scalar ) end
--- Returns a normal vector facing in the direction that the angle points.
---@return Vector
function Angle:Forward(  ) end
--- Returns whether the pitch, yaw and roll are 0 or not.
---@return boolean
function Angle:IsZero(  ) end
--- Multiplies a scalar to all the values of the orignal angle. This functions the same as num * angle without creating a new angle object, skipping object construction and garbage collection.
---@param scalar number The number to multiply. 
function Angle:Mul( scalar ) end
--- Normalizes the angles by applying a module with 360 to pitch, yaw and roll.
function Angle:Normalize(  ) end
--- Returns a normal vector facing in the direction that points right relative to the angle's direction.
---@return Vector
function Angle:Right(  ) end
--- Rotates the angle around the specified axis by the specified degrees.
---@param axis Vector The axis to rotate around as a normalized unit vector. When argument is not a unit vector, you will experience numerical offset errors in the rotated angle. 
---@param rotation number The degrees to rotate around the specified axis. 
function Angle:RotateAroundAxis( axis, rotation ) end
--- Copies pitch, yaw and roll from the second angle to the first.
---@param originalAngle Angle The angle to copy the values from. 
function Angle:Set( originalAngle ) end
--- Sets the p, y, and r of the angle.
---@param p number The pitch component of the Angle 
---@param y number The yaw component of the Angle 
---@param r number The roll component of the Angle 
function Angle:SetUnpacked( p, y, r ) end
--- Snaps the angle to nearest interval of degrees.
---@param axis string The component/axis to snap. Can be either "p"/"pitch", "y"/"yaw" or "r"/"roll". 
---@param target number The target angle snap interval 
---@return Angle
function Angle:SnapTo( axis, target ) end
--- Subtracts the values of the argument angle to the orignal angle. This functions the same as angle1 - angle2 without creating a new angle object, skipping object construction and garbage collection.
---@param angle Angle The angle to subtract. 
function Angle:Sub( angle ) end
--- Returns the angle as a table with three elements.
---@return table
function Angle:ToTable(  ) end
--- Returns the pitch, yaw, and roll components of the angle.
---@return number
---@return number
---@return number
function Angle:Unpack(  ) end
--- Returns a normal vector facing in the direction that points up relative to the angle's direction.
---@return Vector
function Angle:Up(  ) end
--- Sets pitch, yaw and roll to 0.
--- This function is faster than doing it manually.
function Angle:Zero(  ) end
