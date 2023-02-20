---@meta
---@class Vehicle
Vehicle = {}
--- Returns the remaining boosting time left.
---@return number
function Vehicle:BoostTimeLeft(  ) end
--- Tries to find an Exit Point for leaving vehicle, if one is unobstructed in the direction given.
---@param yaw number Yaw/roll from vehicle angle to check for exit 
---@param distance number Distance from origin to drop player 
---@return Vector
function Vehicle:CheckExitPoint( yaw, distance ) end
--- Sets whether the engine is enabled or disabled, i.e. can be started or not.
---@param enable boolean Enable or disable the engine 
function Vehicle:EnableEngine( enable ) end
--- Returns information about the ammo of the vehicle
---@return number
---@return number
---@return number
function Vehicle:GetAmmo(  ) end
--- Returns third person camera distance.
---@return number
function Vehicle:GetCameraDistance(  ) end
--- Gets the driver of the vehicle, returns `NULL` if no driver is present.
---@return Entity
function Vehicle:GetDriver(  ) end
--- Returns the current speed of the vehicle in Half-Life Hammer Units (in/s). Same as [Entity:GetVelocity](/gmod/Entity:GetVelocity) + [Vector:Length](/gmod/Vector:Length).
---@return number
function Vehicle:GetHLSpeed(  ) end
--- Returns the max speed of the vehicle in MPH.
---@return number
function Vehicle:GetMaxSpeed(  ) end
--- Returns some info about the vehicle.
---@return table
function Vehicle:GetOperatingParams(  ) end
--- Gets the passenger of the vehicle, returns NULL if no drivers is present.
---@param passenger number The index of the passenger 
---@return Entity
function Vehicle:GetPassenger( passenger ) end
--- Returns the seat position and angle of a given passenger seat.
---@param role number The passenger role. ( 1 is the driver ) 
---@return Vector
---@return Angle
function Vehicle:GetPassengerSeatPoint( role ) end
--- Returns the current RPM of the vehicle. This value is fake and doesn't actually affect the vehicle movement.
---@return number
function Vehicle:GetRPM(  ) end
--- Returns the current speed of the vehicle in MPH.
---@return number
function Vehicle:GetSpeed(  ) end
--- Returns the current steering of the vehicle.
---@return number
function Vehicle:GetSteering(  ) end
--- Returns the maximum steering degree of the vehicle
---@return number
function Vehicle:GetSteeringDegrees(  ) end
--- Returns if vehicle has thirdperson mode enabled or not.
---@return boolean
function Vehicle:GetThirdPersonMode(  ) end
--- Returns the current throttle of the vehicle.
---@return number
function Vehicle:GetThrottle(  ) end
--- Returns the vehicle class name. This is only useful for Sandbox spawned vehicles or any vehicle that properly sets the vehicle class with [Vehicle:SetVehicleClass](/gmod/Vehicle:SetVehicleClass).
---@return string
function Vehicle:GetVehicleClass(  ) end
--- Returns the vehicle parameters of given vehicle.
---@return table
function Vehicle:GetVehicleParams(  ) end
--- Returns the view position and forward angle of a given passenger seat.
---@param role? number The passenger role. 0 is the driver. This parameter seems to be ignored by the game engine and is therefore optional. 
---@return Vector
---@return Angle
---@return number
function Vehicle:GetVehicleViewPosition( role ) end
--- Returns the [PhysObj](/gmod/PhysObj) of given wheel.
---@param wheel number The wheel to retrieve 
---@return PhysObj
function Vehicle:GetWheel( wheel ) end
--- Returns the base wheel height.
---@param wheel number The wheel to get the base wheel height of. 
---@return number
function Vehicle:GetWheelBaseHeight( wheel ) end
--- Returns the wheel contact point.
---@param wheel number The wheel to check 
---@return Vector
---@return number
---@return boolean
function Vehicle:GetWheelContactPoint( wheel ) end
--- Returns the wheel count of the vehicle
---@return number
function Vehicle:GetWheelCount(  ) end
--- Returns the total wheel height.
---@param wheel number The wheel to get the base wheel height of. 
---@return number
function Vehicle:GetWheelTotalHeight( wheel ) end
--- Returns whether this vehicle has boost at all.
---@return boolean
function Vehicle:HasBoost(  ) end
--- Returns whether this vehicle has a brake pedal. See [Vehicle:SetHasBrakePedal](/gmod/Vehicle:SetHasBrakePedal).
---@return boolean
function Vehicle:HasBrakePedal(  ) end
--- Returns whether this vehicle is currently boosting or not.
---@return boolean
function Vehicle:IsBoosting(  ) end
--- Returns whether the engine is enabled or not, i.e. whether it can be started.
---@return boolean
function Vehicle:IsEngineEnabled(  ) end
--- Returns whether the engine is started or not.
---@return boolean
function Vehicle:IsEngineStarted(  ) end
--- Returns true if the vehicle object is a valid or not. This will return false when [Vehicle](/gmod/Vehicle) functions are not usable on the vehicle.
---@return boolean
function Vehicle:IsValidVehicle(  ) end
--- Returns whether this vehicle's engine is underwater or not. ( Internally the attachment point "engine" or "vehicle_engine" is checked )
---@return boolean
function Vehicle:IsVehicleBodyInWater(  ) end
--- Releases the vehicle's handbrake (Jeep) so it can roll without any passengers.
--- 
--- This will be overwritten if the vehicle has a driver. Same as [Vehicle:SetHandbrake](/gmod/Vehicle:SetHandbrake)( false )
function Vehicle:ReleaseHandbrake(  ) end
--- Sets the boost. It is possible that this function does not work while the vehicle has a valid driver in it.
---@param boost number The new boost value 
function Vehicle:SetBoost( boost ) end
--- Sets the third person camera distance of the vehicle.
---@param distance number Camera distance to set to 
function Vehicle:SetCameraDistance( distance ) end
--- Turns on or off the Jeep handbrake so it can roll without a driver inside.
--- 
--- Does nothing while the vehicle has a driver in it.
---@param handbrake boolean true to turn on, false to turn off. 
function Vehicle:SetHandbrake( handbrake ) end
--- Sets whether this vehicle has a brake pedal.
---@param brakePedal boolean Whether this vehicle has a brake pedal 
function Vehicle:SetHasBrakePedal( brakePedal ) end
--- Sets maximum reverse throttle
---@param maxRevThrottle number The new maximum throttle. This number must be negative. 
function Vehicle:SetMaxReverseThrottle( maxRevThrottle ) end
--- Sets maximum forward throttle
---@param maxThrottle number The new maximum throttle. 
function Vehicle:SetMaxThrottle( maxThrottle ) end
--- Sets spring length of given wheel
---@param wheel number The wheel to change spring length of 
---@param length number The new spring length 
function Vehicle:SetSpringLength( wheel, length ) end
--- Sets the steering of the vehicle.
---@param front number Angle of the front wheels (-1 to 1) 
---@param rear number Angle of the rear wheels (-1 to 1) 
function Vehicle:SetSteering( front, rear ) end
--- Sets the maximum steering degrees of the vehicle
---@param steeringDegrees number The new maximum steering degree 
function Vehicle:SetSteeringDegrees( steeringDegrees ) end
--- Sets the third person mode state.
---@param enable boolean Enable or disable the third person mode for this vehicle 
function Vehicle:SetThirdPersonMode( enable ) end
--- Sets the throttle of the vehicle. It is possible that this function does not work with a valid driver in it.
---@param throttle number The new throttle. 
function Vehicle:SetThrottle( throttle ) end
--- Sets the vehicle class name.
---@param class string The vehicle class name to set 
function Vehicle:SetVehicleClass( class ) end
--- Sets whether the entry or exit camera animation should be played or not.
---@param bOn boolean Whether the entry or exit camera animation should be played or not. 
function Vehicle:SetVehicleEntryAnim( bOn ) end
--- Sets the vehicle parameters for given vehicle.
---@param params table The new new vehicle parameters. See [VehicleParams](/gmod/Structures/VehicleParams). 
function Vehicle:SetVehicleParams( params ) end
--- Sets friction of given wheel.  This function may be broken.
---@param wheel number The wheel to change the friction of 
---@param friction number The new friction to set 
function Vehicle:SetWheelFriction( wheel, friction ) end
--- Starts or stops the engine.
---@param start boolean True to start, false to stop. 
function Vehicle:StartEngine( start ) end
