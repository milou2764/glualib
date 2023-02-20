---@meta
---@class PhysObj
PhysObj = {}
--- Adds the specified velocity to the current.
---@param angularVelocity Vector Additional velocity. 
function PhysObj:AddAngleVelocity( angularVelocity ) end
--- Adds one or more bit flags.
---@param flags number Bitflag, see [FVPHYSICS](/gmod/Enums/FVPHYSICS). 
function PhysObj:AddGameFlag( flags ) end
--- Adds the specified velocity to the current.
---@param velocity Vector Additional velocity. 
function PhysObj:AddVelocity( velocity ) end
--- Rotates the object so that it's angles are aligned to the ones inputted.
---@param from Angle
---@param to Angle
---@return Angle
function PhysObj:AlignAngles( from, to ) end
--- Applies the specified force to the physics object (in [Newtons](https://en.wikipedia.org/wiki/Newton_(unit))).
---@param force Vector The force to be applied. 
function PhysObj:ApplyForceCenter( force ) end
--- Applies the specified force on the physics object at the specified position
---@param force Vector The force to be applied. 
---@param position Vector The position in world coordinates where the force is applied to the physics object. 
function PhysObj:ApplyForceOffset( force, position ) end
--- Applies specified angular impulse to the physics object. See [PhysObj:CalculateForceOffset](/gmod/PhysObj:CalculateForceOffset)
---@param torque Vector The angular impulse to be applied in `kg * degrees / s` (verification needed). 
function PhysObj:ApplyTorqueCenter( torque ) end
--- Calculates the force and torque on the center of mass for an offset force impulse. The outputs can be directly passed to [PhysObj:ApplyForceCenter](/gmod/PhysObj:ApplyForceCenter) and [PhysObj:ApplyTorqueCenter](/gmod/PhysObj:ApplyTorqueCenter), respectively.
---@param force Vector The initial force 
---@param pos Vector The location of the force in world coordinates 
---@return Vector
---@return Vector
function PhysObj:CalculateForceOffset( force, pos ) end
--- Calculates the linear and angular velocities on the center of mass for an offset force impulse. The outputs can be directly passed to [PhysObj:AddVelocity](/gmod/PhysObj:AddVelocity) and [PhysObj:AddAngleVelocity](/gmod/PhysObj:AddAngleVelocity), respectively.
---@param force Vector The initial force 
---@param pos Vector The location of the force in world coordinates 
---@return Vector
---@return Vector
function PhysObj:CalculateVelocityOffset( force, pos ) end
--- Removes one of more specified flags.
---@param flags number Bitflag, see [FVPHYSICS](/gmod/Enums/FVPHYSICS). 
function PhysObj:ClearGameFlag( flags ) end
--- Allows you to move a PhysObj to a point and angle in 3D space.
---@param shadowparams table The parameters for the shadow. See example code to see how its used. 
function PhysObj:ComputeShadowControl( shadowparams ) end
--- Sets whether the physics object should collide with anything or not, including world.
---@param enable boolean True to enable, false to disable. 
function PhysObj:EnableCollisions( enable ) end
--- Sets whenever the physics object should be affected by drag.
---@param enable boolean True to enable, false to disable. 
function PhysObj:EnableDrag( enable ) end
--- Sets whether the PhysObject should be affected by gravity
---@param enable boolean True to enable, false to disable. 
function PhysObj:EnableGravity( enable ) end
--- Sets whether the physobject should be able to move or not.
--- 
--- This is the exact method the Physics Gun uses to freeze props. If a motion-disabled physics object is grabbed with the physics gun, the object will be able to move again. To disallow this, use [GM:PhysgunPickup](/gmod/GM:PhysgunPickup).
---@param enable boolean True to enable, false to disable. 
function PhysObj:EnableMotion( enable ) end
--- Returns the mins and max of the physics object.
---@return Vector
---@return Vector
function PhysObj:GetAABB(  ) end
--- Returns the angles of the physics object.
---@return Angle
function PhysObj:GetAngles(  ) end
--- Gets the angular velocity of the object in degrees per second as a local vector. You can use dot product to read the magnitude from a specific axis.
---@return Vector
function PhysObj:GetAngleVelocity(  ) end
--- Returns the contents flag of the [PhysObj](/gmod/PhysObj).
---@return number
function PhysObj:GetContents(  ) end
--- Returns the linear and angular damping of the physics object.
---@return number
---@return number
function PhysObj:GetDamping(  ) end
--- Returns the sum of the linear and rotational kinetic energies of the physics object.
---@return number
function PhysObj:GetEnergy(  ) end
--- Returns the parent entity of the physics object.
---@return Entity
function PhysObj:GetEntity(  ) end
--- Returns the friction snapshot of this physics object. This is useful for determining if an object touching ground for example.
---@return table
function PhysObj:GetFrictionSnapshot(  ) end
--- Returns the directional inertia of the physics object.
---@return Vector
function PhysObj:GetInertia(  ) end
--- Returns 1 divided by the inertia.
---@return number
function PhysObj:GetInvInertia(  ) end
--- Returns 1 divided by the physics object's mass.
---@return number
function PhysObj:GetInvMass(  ) end
--- Returns the mass of the physics object.
---@return number
function PhysObj:GetMass(  ) end
--- Returns the center of mass of the physics object as a local vector.
---@return Vector
function PhysObj:GetMassCenter(  ) end
--- Returns the physical material of the physics object.
---@return string
function PhysObj:GetMaterial(  ) end
--- Returns the physics mesh of the object which is used for physobj-on-physobj collision.
---@return table
function PhysObj:GetMesh(  ) end
--- Returns all convex physics meshes of the object. See [Entity:PhysicsInitMultiConvex](/gmod/Entity:PhysicsInitMultiConvex) for more information.
---@return table
function PhysObj:GetMeshConvexes(  ) end
--- Returns the name of the physics object.
---@return string
function PhysObj:GetName(  ) end
--- Returns the position of the physics object.
---@return Vector
function PhysObj:GetPos(  ) end
--- Returns the position and angle of the physics object as a 3x4 matrix ([VMatrix](/gmod/VMatrix) is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.
---@return VMatrix
function PhysObj:GetPositionMatrix(  ) end
--- Returns the rotation damping of the physics object.
---@return number
function PhysObj:GetRotDamping(  ) end
--- Returns the angles of the [PhysObj](/gmod/PhysObj) shadow. See [PhysObj:UpdateShadow](/gmod/PhysObj:UpdateShadow).
---@return Angle
function PhysObj:GetShadowAngles(  ) end
--- Returns the position of the [PhysObj](/gmod/PhysObj) shadow. See [PhysObj:UpdateShadow](/gmod/PhysObj:UpdateShadow).
---@return Vector
function PhysObj:GetShadowPos(  ) end
--- Returns the speed damping of the physics object.
---@return number
function PhysObj:GetSpeedDamping(  ) end
--- Returns the stress of the entity.
---@return number
function PhysObj:GetStress(  ) end
--- Returns the surface area of the physics object in source-units². Or nil if the PhysObj is a generated sphere or box.
---@return number
function PhysObj:GetSurfaceArea(  ) end
--- Returns the absolute directional velocity of the physobject.
---@return Vector
function PhysObj:GetVelocity(  ) end
--- Returns the world velocity of a point in world coordinates about the object. This is useful for objects rotating around their own axis/origin.
---@param point Vector A point to test in world space coordinates 
---@return Vector
function PhysObj:GetVelocityAtPoint( point ) end
--- Returns the volume in source units³. Or nil if the PhysObj is a generated sphere or box.
---@return number
function PhysObj:GetVolume(  ) end
--- Returns whenever the specified flag(s) is/are set.
---@param flags number Bitflag, see [FVPHYSICS](/gmod/Enums/FVPHYSICS). 
---@return boolean
function PhysObj:HasGameFlag( flags ) end
--- Returns whether the physics object is "sleeping".
--- 
--- See [PhysObj:Sleep](/gmod/PhysObj:Sleep) for more information.
---@return boolean
function PhysObj:IsAsleep(  ) end
--- Returns whenever the entity is able to collide or not.
---@return boolean
function PhysObj:IsCollisionEnabled(  ) end
--- Returns whenever the entity is affected by drag.
---@return boolean
function PhysObj:IsDragEnabled(  ) end
--- Returns whenever the entity is affected by gravity.
---@return boolean
function PhysObj:IsGravityEnabled(  ) end
--- Returns if the physics object can move itself (by velocity, acceleration)
---@return boolean
function PhysObj:IsMotionEnabled(  ) end
--- Returns whenever the entity is able to move.
---@return boolean
function PhysObj:IsMoveable(  ) end
--- Returns whenever the physics object is penetrating another physics object.
--- 
--- This is internally implemented as `PhysObj:HasGameFlag( FVPHYSICS_PENETRATING )` and thus is only updated for non-static physics objects.
---@return boolean
function PhysObj:IsPenetrating(  ) end
--- Returns if the physics object is valid/not NULL.
---@return boolean
function PhysObj:IsValid(  ) end
--- Mapping a vector in local frame of the physics object to world frame.
---@param LocalVec Vector A vector in the physics object's local frame 
---@return Vector
function PhysObj:LocalToWorld( LocalVec ) end
--- Rotate a vector from the local frame of the physics object to world frame.
---@param LocalVec Vector A vector in the physics object's local frame 
---@return Vector
function PhysObj:LocalToWorldVector( LocalVec ) end
--- Prints debug info about the state of the physics object to the console.
function PhysObj:OutputDebugInfo(  ) end
--- Call this when the collision filter conditions change due to this object's state (e.g. changing solid type or collision group)
function PhysObj:RecheckCollisionFilter(  ) end
--- A convinience function for [Angle:RotateAroundAxis](/gmod/Angle:RotateAroundAxis).
---@param dir Vector Direction, around which we will rotate 
---@param ang number Amount of rotation, in degrees 
---@return Angle
function PhysObj:RotateAroundAxis( dir, ang ) end
--- Sets the amount of [drag](https://en.wikipedia.org/wiki/Drag_(physics)) to apply to a physics object when attempting to rotate.
---@param coefficient number [Drag coefficient](https://en.wikipedia.org/wiki/Drag_coefficient). The bigger this value is, the slower the angles will change. 
function PhysObj:SetAngleDragCoefficient( coefficient ) end
--- Sets the angles of the physobject.
---@param angles Angle The new angles of the physobject. 
function PhysObj:SetAngles( angles ) end
--- Sets the buoyancy ratio of the physics object. (How well it floats in water)
---@param buoyancy number Buoyancy ratio, where 0 is not buoyant at all (like a rock), and 1 is very buoyant (like wood). You can set values larger than 1 for greater effect. 
function PhysObj:SetBuoyancyRatio( buoyancy ) end
--- Sets the contents flag of the [PhysObj](/gmod/PhysObj).
---@param contents number The [CONTENTS](/gmod/Enums/CONTENTS). 
function PhysObj:SetContents( contents ) end
--- Sets the linear and angular damping of the physics object.
---@param linearDamping number Linear damping. 
---@param angularDamping number Angular damping. 
function PhysObj:SetDamping( linearDamping, angularDamping ) end
--- Modifies how much drag (air resistance) affects the object.
---@param drag number The drag coefficient  It can be positive or negative. 
function PhysObj:SetDragCoefficient( drag ) end
--- Sets the directional inertia.
---@param directionalInertia Vector The directional inertia of the object.  A value of Vector(0,0,0) makes the physobject go invalid. 
function PhysObj:SetInertia( directionalInertia ) end
--- Sets the mass of the physics object.
---@param mass number The mass in kilograms. 
function PhysObj:SetMass( mass ) end
--- Sets the material of the physobject.
---@param materialName string The name of the phys material to use. From this list: [Valve Developer](https://developer.valvesoftware.com/wiki/Material_surface_properties) 
function PhysObj:SetMaterial( materialName ) end
--- Sets the position of the physobject.
---@param position Vector The new position of the physobject. 
---@param teleport? boolean
function PhysObj:SetPos( position, teleport ) end
--- Sets the velocity of the physics object for the next iteration.
---@param velocity Vector The new velocity of the physics object. 
function PhysObj:SetVelocity( velocity ) end
--- Sets the velocity of the physics object.
---@param velocity Vector The new velocity of the physics object. 
function PhysObj:SetVelocityInstantaneous( velocity ) end
--- Makes the physics object "sleep".
--- 
--- The physics object will no longer be moving unless it is "woken up" by either a collision with another moving object, or by [PhysObj:Wake](/gmod/PhysObj:Wake). This is an optimization feature of the physics engine.
function PhysObj:Sleep(  ) end
--- Unlike [PhysObj:SetPos](/gmod/PhysObj:SetPos) and [PhysObj:SetAngles](/gmod/PhysObj:SetAngles), this allows the movement of a physobj while leaving physics interactions intact.
--- This is used internally by the motion controller of the Gravity Gun , the +use pickup and the Physics Gun, and entities such as the crane.
---@param targetPosition Vector The position we should move to. 
---@param targetAngles Angle The angle we should rotate towards. 
---@param frameTime number The frame time to use for this movement, can be generally filled with [FrameTime](/gmod/Global.FrameTime) or [ENTITY:PhysicsSimulate](/gmod/ENTITY:PhysicsSimulate) with the deltaTime.     Can be set to 0 when you need to update the physics object just once. 
function PhysObj:UpdateShadow( targetPosition, targetAngles, frameTime ) end
--- Wakes the physics object.
--- 
--- See [PhysObj:Sleep](/gmod/PhysObj:Sleep) for more information.
function PhysObj:Wake(  ) end
--- Converts a vector to a relative to the physics object coordinate system.
---@param vec Vector The vector in world space coordinates. 
---@return Vector
function PhysObj:WorldToLocal( vec ) end
--- Rotate a vector from the world frame to the local frame of the physics object.
---@param WorldVec Vector A vector in the world frame 
---@return Vector
function PhysObj:WorldToLocalVector( WorldVec ) end
