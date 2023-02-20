---@meta
---@class Entity
Entity = {}
--- Activates the entity. This needs to be used on some entities (like constraints) after being spawned.
function Entity:Activate(  ) end
--- Add a callback function to a specific event. This is used instead of hooks to avoid calling empty functions unnecessarily.
--- 
--- This also allows you to use certain hooks in engine entities (non-scripted entities).
---@param hook string The hook name to hook onto. See [Entity Callbacks](/gmod/Entity%20Callbacks) 
---@param func function The function to call 
---@return number
function Entity:AddCallback( hook, func ) end
--- Applies an engine effect to an entity.
--- 
--- See also [Entity:IsEffectActive](/gmod/Entity:IsEffectActive) and  [Entity:RemoveEffects](/gmod/Entity:RemoveEffects).
---@param effect number The effect to apply, see [EF](/gmod/Enums/EF). 
function Entity:AddEffects( effect ) end
--- Adds engine flags.
---@param flag number Engine flag to add, see [EFL](/gmod/Enums/EFL) 
function Entity:AddEFlags( flag ) end
--- Adds flags to the entity.
---@param flag number Flag to add, see [FL](/gmod/Enums/FL) 
function Entity:AddFlags( flag ) end
--- Adds a gesture animation to the entity and plays it.
--- 
--- See [Entity:AddGestureSequence](/gmod/Entity:AddGestureSequence) and [Entity:AddLayeredSequence](/gmod/Entity:AddLayeredSequence) for functions that takes sequences instead of [ACT](/gmod/Enums/ACT).
---@param activity number The activity to play as the gesture. See [ACT](/gmod/Enums/ACT). 
---@param autokill? boolean
---@return number
function Entity:AddGesture( activity, autokill ) end
--- Adds a gesture animation to the entity and plays it.
--- 
--- See [Entity:AddGesture](/gmod/Entity:AddGesture) for a function that takes [ACT](/gmod/Enums/ACT).
--- 
--- See also [Entity:AddLayeredSequence](/gmod/Entity:AddLayeredSequence).
---@param sequence number The sequence ID to play as the gesture. See [Entity:LookupSequence](/gmod/Entity:LookupSequence). 
---@param autokill? boolean
---@return number
function Entity:AddGestureSequence( sequence, autokill ) end
--- Adds a gesture animation to the entity and plays it.
--- 
--- See [Entity:AddGestureSequence](/gmod/Entity:AddGestureSequence) for a function that doesn't take priority.
--- 
--- See [Entity:AddGesture](/gmod/Entity:AddGesture) for a function that takes [ACT](/gmod/Enums/ACT).
---@param sequence number The sequence ID to play as the gesture. See [Entity:LookupSequence](/gmod/Entity:LookupSequence). 
---@param priority number
---@return number
function Entity:AddLayeredSequence( sequence, priority ) end
--- Adds solid flag(s) to the entity.
---@param flags number The flag(s) to apply, see [FSOLID](/gmod/Enums/FSOLID). 
function Entity:AddSolidFlags( flags ) end
--- Adds a [PhysObj](/gmod/PhysObj)ect to the entity's motion controller so that [ENTITY:PhysicsSimulate](/gmod/ENTITY:PhysicsSimulate) will be called for given [PhysObj](/gmod/PhysObj)ect as well.
--- 
--- You must first create a motion controller with [Entity:StartMotionController](/gmod/Entity:StartMotionController).
--- 
--- You can remove added [PhysObj](/gmod/PhysObj)ects by using [Entity:RemoveFromMotionController](/gmod/Entity:RemoveFromMotionController).
---@param physObj PhysObj The [PhysObj](/gmod/PhysObj) to add to the motion controller. 
function Entity:AddToMotionController( physObj ) end
--- Returns an angle based on the ones inputted that you can use to align an object.
---@param from Angle The angle you want to align from 
---@param to Angle The angle you want to align to 
---@return Angle
function Entity:AlignAngles( from, to ) end
--- Spawns a clientside ragdoll for the entity, positioning it in place of the original entity, and makes the entity invisible. It doesn't preserve flex values (face posing) as CSRagdolls don't support flex.
--- 
--- It does not work on players. Use [Player:CreateRagdoll](/gmod/Player:CreateRagdoll) instead.
--- 
--- The original entity is not removed, and neither are any ragdolls previously generated with this function.
--- 
--- To make the entity re-appear, run [Entity:SetNoDraw](/gmod/Entity:SetNoDraw)( false )
---@return Entity
function Entity:BecomeRagdollOnClient(  ) end
--- Returns true if the entity is being looked at by the local player and is within 256 units of distance.
---@return boolean
function Entity:BeingLookedAtByLocalPlayer(  ) end
--- Dispatches blocked events to this entity's blocked handler. This function is only useful when interacting with entities like func_movelinear.
---@param entity Entity The entity that is blocking us 
function Entity:Blocked( entity ) end
--- Returns a centered vector of this entity, NPCs use this internally to aim at their targets.
---@param origin Vector The vector of where the the attack comes from. 
---@param noisy? boolean Decides if it should return the centered vector with a random offset to it. 
---@return Vector
function Entity:BodyTarget( origin, noisy ) end
--- Returns whether the entity's bone has the flag or not.
---@param boneID number Bone ID to test flag of. 
---@param flag number The flag to test, see [BONE](/gmod/Enums/BONE) 
---@return boolean
function Entity:BoneHasFlag( boneID, flag ) end
--- Returns the length between given bone's position and the position of given bone's parent.
---@param boneID number The ID of the bone you want the length of. You may want to get the length of the next bone ( boneID + 1 ) for decent results 
---@return number
function Entity:BoneLength( boneID ) end
--- Returns the distance between the center of the bounding box and the furthest bounding box corner.
---@return number
function Entity:BoundingRadius(  ) end
--- Causes a specified function to be run if the entity is removed by any means. This can later be undone by [Entity:RemoveCallOnRemove](/gmod/Entity:RemoveCallOnRemove) if you need it to not run.
---@param identifier string Identifier of the function within CallOnRemove 
---@param removeFunc function Function to be called on remove 
---@param argn...? any Optional arguments to pass to removeFunc. Do note that the first argument passed to the function will always be the entity being removed, and the arguments passed on here start after that. 
function Entity:CallOnRemove( identifier, removeFunc, argn... ) end
--- Resets all pose parameters such as aim_yaw, aim_pitch and rotation.
function Entity:ClearPoseParameters(  ) end
--- Declares that the collision rules of the entity have changed, and subsequent calls for [GM:ShouldCollide](/gmod/GM:ShouldCollide) with this entity may return a different value than they did previously.
function Entity:CollisionRulesChanged(  ) end
--- Creates bone followers based on the current entity model.
--- 
--- Bone followers are physics objects that follow the visual mesh. This is what is used by `prop_dynamic` for things like big combine doors for vehicles with multiple physics objects which follow the visual mesh of the door when it animates.
--- 
--- You must call [Entity:UpdateBoneFollowers](/gmod/Entity:UpdateBoneFollowers) every tick for bone followers to update their positions.
function Entity:CreateBoneFollowers(  ) end
--- Returns whether the entity was created by map or not.
---@return boolean
function Entity:CreatedByMap(  ) end
--- Creates a clientside particle system attached to the entity. See also [CreateParticleSystem](/gmod/Global.CreateParticleSystem)
---@param particle string The particle name to create 
---@param attachment number Attachment ID to attach the particle to 
---@param options? table A table of tables ( IDs 1 to 64 ) having the following structure:  * [number](/gmod/number) attachtype - The particle attach type. See [PATTACH](/gmod/Enums/PATTACH). **Default:** PATTACH_ABSORIGIN  * [Entity](/gmod/Entity) entity - The parent entity? **Default:** NULL  * [Vector](/gmod/Vector) position - The offset position for given control point. **Default:**  nil    This only affects the control points of the particle effects and will do nothing if the effect doesn't use control points. 
---@return CNewParticleEffect
function Entity:CreateParticleEffect( particle, attachment, options ) end
--- Draws the shadow of an entity.
function Entity:CreateShadow(  ) end
--- Whenever the entity is removed, entityToRemove will be removed also.
---@param entityToRemove Entity The entity to be removed 
function Entity:DeleteOnRemove( entityToRemove ) end
--- Destroys bone followers created by [Entity:CreateBoneFollowers](/gmod/Entity:CreateBoneFollowers).
function Entity:DestroyBoneFollowers(  ) end
--- Removes the shadow for the entity.
--- 
--- The shadow will be recreated as soon as the entity wakes.
function Entity:DestroyShadow(  ) end
--- Disables an active matrix.
---@param matrixType string The name of the matrix type to disable.    The only known matrix type is "RenderMultiply". 
function Entity:DisableMatrix( matrixType ) end
--- Performs a trace attack.
---@param damageInfo CTakeDamageInfo The damage to apply. 
---@param traceRes table Trace result to use to deal damage. See [TraceResult](/gmod/Structures/TraceResult) 
---@param dir? Vector Direction of the attack. 
function Entity:DispatchTraceAttack( damageInfo, traceRes, dir ) end
--- This removes the argument entity from an ent's list of entities to 'delete on remove'
---@param entityToUnremove Entity The entity to be removed from the list of entities to delete 
function Entity:DontDeleteOnRemove( entityToUnremove ) end
--- Draws the entity or model.
--- 
--- If called inside [ENTITY:Draw](/gmod/ENTITY:Draw) or [ENTITY:DrawTranslucent](/gmod/ENTITY:DrawTranslucent), it only draws the entity's model itself.
--- 
--- If called outside of those hooks, it will call both of said hooks depending on [Entity:GetRenderGroup](/gmod/Entity:GetRenderGroup), drawing the entire entity again.
---@param flags? number The optional [STUDIO_](/gmod/Enums/STUDIO) flags, usually taken from [ENTITY:Draw](/gmod/ENTITY:Draw) and similar hooks. 
function Entity:DrawModel( flags ) end
--- Sets whether an entity's shadow should be drawn.
---@param shouldDraw boolean True to enable, false to disable shadow drawing. 
function Entity:DrawShadow( shouldDraw ) end
--- Move an entity down until it collides with something.
function Entity:DropToFloor(  ) end
--- Sets up a self.dt.NAME alias for a Data Table variable.
---@param Type string The type of the DTVar being set up. It can be one of the following: 'Int', 'Float', 'Vector', 'Angle', 'Bool', 'Entity' or 'String' 
---@param ID number The ID of the DTVar. Can be between 0 and 3 for strings, 0 and 31 for everything else. 
---@param Name string Name by which you will refer to DTVar. It must be a valid variable name. (No spaces!) 
function Entity:DTVar( Type, ID, Name ) end
--- Plays a sound on an entity. If run clientside, the sound will only be heard locally.
--- 
--- If used on a player or NPC character with the mouth rigged, the character will "lip-sync". This does not work with all sound files.
---@param soundName string The name of the sound to be played. 
---@param soundLevel? number A modifier for the distance this sound will reach, acceptable range is 0 to 511. 100 means no adjustment to the level. See [SNDLVL](/gmod/Enums/SNDLVL)    Will not work if a [sound script](https://developer.valvesoftware.com/wiki/Soundscripts) is used. 
---@param pitchPercent? number The pitch applied to the sound. The acceptable range is from 0 to 255. 100 means the pitch is not changed. 
---@param volume? number The volume, from 0 to 1. 
---@param channel? number The sound channel, see [CHAN](/gmod/Enums/CHAN).    Will not work if a [sound script](https://developer.valvesoftware.com/wiki/Soundscripts) is used. 
---@param soundFlags? number The flags of the sound, see [SND](/gmod/Enums/SND) 
---@param dsp? number The DSP preset for this sound. [List of DSP presets](https://developer.valvesoftware.com/wiki/Dsp_presets) 
function Entity:EmitSound( soundName, soundLevel, pitchPercent, volume, channel, soundFlags, dsp ) end
--- Toggles the constraints of this ragdoll entity on and off.
---@param toggleConstraints boolean Set to true to enable the constraints and false to disable them.    Disabling constraints will delete the constraint entities. 
function Entity:EnableConstraints( toggleConstraints ) end
--- Flags an entity as using custom lua defined collisions. Fixes entities having spongy player collisions or not hitting traces, such as after [Entity:PhysicsFromMesh](/gmod/Entity:PhysicsFromMesh)
--- 
--- Internally identical to `Entity:AddSolidFlags( bit.bor( FSOLID_CUSTOMRAYTEST, FSOLID_CUSTOMBOXTEST ) )`
--- 
--- Do not confuse this function with [Entity:SetCustomCollisionCheck](/gmod/Entity:SetCustomCollisionCheck), they are not the same.
---@param useCustom boolean True to flag this entity 
function Entity:EnableCustomCollisions( useCustom ) end
--- Can be used to apply a custom [VMatrix](/gmod/VMatrix) to the entity, mostly used for scaling the model by a [Vector](/gmod/Vector).
--- 
--- To disable it, use [Entity:DisableMatrix](/gmod/Entity:DisableMatrix).
--- 
--- If your old scales are wrong due to a recent update, use [Entity:SetLegacyTransform](/gmod/Entity:SetLegacyTransform) as a quick fix.
---@param matrixType string The name of the matrix type.   The only implemented matrix type is "RenderMultiply". 
---@param matrix VMatrix The matrix to apply before drawing the entity. 
function Entity:EnableMatrix( matrixType, matrix ) end
--- Gets the unique entity index of an entity.
---@return number
function Entity:EntIndex(  ) end
--- Extinguishes the entity if it is on fire.
--- 
--- Has no effect if called inside [GM:EntityTakeDamage](/gmod/GM:EntityTakeDamage) (and the attacker is the flame that's hurting the entity)
--- 
--- See also [Entity:Ignite](/gmod/Entity:Ignite).
function Entity:Extinguish(  ) end
--- Returns the direction a player/npc/ragdoll is looking as a world-oriented angle.
---@return Angle
function Entity:EyeAngles(  ) end
--- Returns the position of an Player/NPC's view.
---@return Vector
function Entity:EyePos(  ) end
--- Searches for bodygroup with given name.
---@param name string The bodygroup name to search for. 
---@return number
function Entity:FindBodygroupByName( name ) end
--- Returns a transition from the given start and end sequence.
--- 
--- This function was only used by HL1 entities and NPCs, before the advent of sequence blending and gestures.
---@param currentSequence number The currently playing sequence 
---@param goalSequence number The goal sequence. 
---@return number
function Entity:FindTransitionSequence( currentSequence, goalSequence ) end
--- Fires an entity's input, conforming to the map IO event queue system. You can find inputs for most entities on the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/Output)
--- 
--- See also [Entity:Input](/gmod/Entity:Input) for a function that bypasses the event queue and [GM:AcceptInput](/gmod/GM:AcceptInput).
---@param input string The name of the input to fire 
---@param param? string The value to give to the input, can also be a [number](/gmod/number) or a [boolean](/gmod/boolean). 
---@param delay? number Delay in seconds before firing 
---@param activator? Entity The entity that caused this input (i.e. the player who pushed a button) 
---@param caller? Entity The entity that is triggering this input (i.e. the button that was pushed) 
function Entity:Fire( input, param, delay, activator, caller ) end
--- Fires a bullet.
--- 
--- When used in a  hook such as [WEAPON:Think](/gmod/WEAPON:Think) or [WEAPON:PrimaryAttack](/gmod/WEAPON:PrimaryAttack), it will use [Player:LagCompensation](/gmod/Player:LagCompensation) internally.
---@param bulletInfo table The bullet data to be used. See the [Bullet](/gmod/Structures/Bullet). 
---@param suppressHostEvents? boolean Has the effect of encasing the FireBullets call in [SuppressHostEvents](/gmod/Global.SuppressHostEvents), only works in multiplayer. 
function Entity:FireBullets( bulletInfo, suppressHostEvents ) end
--- Makes an entity follow another entity's bone.
--- 
--- Internally this function calls [Entity:SetParent](/gmod/Entity:SetParent)( parent, boneid ), [Entity:AddEffects](/gmod/Entity:AddEffects)( EF_FOLLOWBONE 
---  ) and sets an internal flag to always rebuild all bones.
---@param parent? Entity The entity to follow the bone of. If unset, removes the FollowBone effect. 
---@param boneid number The bone to follow 
function Entity:FollowBone( parent, boneid ) end
--- Forces the Entity to be dropped, when it is being held by a player's gravitygun or physgun.
function Entity:ForcePlayerDrop(  ) end
--- Advances the cycle of an animated entity.
--- 
--- Animations that loop will automatically reset the cycle so you don't have to - ones that do not will stop animating once you reach the end of their sequence.
function Entity:FrameAdvance(  ) end
--- Returns the entity's velocity.
---@return Vector
function Entity:GetAbsVelocity(  ) end
--- Gets the angles of given entity.
---@return Angle
function Entity:GetAngles(  ) end
--- Returns a table containing the number of frames, flags, name, and FPS of an entity's animation ID.
---@param animIndex number The animation ID to look up 
---@return table
function Entity:GetAnimInfo( animIndex ) end
--- Returns the last time the entity had an animation update. Returns 0 if the entity doesn't animate.
---@return number
function Entity:GetAnimTime(  ) end
--- Returns the amount of time since last animation.
--- 
--- Works only on `CBaseAnimating` entities.
---@return number
function Entity:GetAnimTimeInterval(  ) end
--- Gets the orientation and position of the attachment by its ID, returns nothing if the attachment does not exist.
---@param attachmentId number The internal ID of the attachment. 
---@return table
function Entity:GetAttachment( attachmentId ) end
--- Returns a table containing all attachments of the given entitys model.
--- 
--- Returns an empty table or **nil** in case it's model has no attachments.
---@return table
function Entity:GetAttachments(  ) end
--- Returns the entity's base velocity which is their velocity due to forces applied by other entities. This includes entity-on-entity collision or riding a treadmill.
---@return Vector
function Entity:GetBaseVelocity(  ) end
--- Returns the blood color of this entity. This can be set with [Entity:SetBloodColor](/gmod/Entity:SetBloodColor).
---@return number
function Entity:GetBloodColor(  ) end
--- Gets the exact value for specific bodygroup of given entity.
---@param id number The id of bodygroup to get value of. Starts from 0. 
---@return number
function Entity:GetBodygroup( id ) end
--- Returns the count of possible values for this bodygroup.
--- 
--- This is **not** the maximum value, since the bodygroups start with 0, not 1.
---@param bodygroup number The ID of bodygroup to retrieve count of. 
---@return number
function Entity:GetBodygroupCount( bodygroup ) end
--- Gets the name of specific bodygroup for given entity.
---@param id number The id of bodygroup to get the name of. 
---@return string
function Entity:GetBodygroupName( id ) end
--- Returns a list of all bodygroups of the entity.
---@return table
function Entity:GetBodyGroups(  ) end
--- Returns the contents of the specified bone.
---@param bone number The bone id. See [Entity:LookupBone](/gmod/Entity:LookupBone). 
---@return number
function Entity:GetBoneContents( bone ) end
--- Returns the value of the bone controller with the specified ID.
---@param boneID number ID of the bone controller. Goes from 0 to 3. 
---@return number
function Entity:GetBoneController( boneID ) end
--- Returns the amount of bones in the entity.
---@return number
function Entity:GetBoneCount(  ) end
--- Returns the transformation matrix of a given bone on the entity's model. The matrix contains the transformation used to position the bone in the world. It is not relative to the parent bone.
--- 
--- This is equivalent to constructing a [VMatrix](/gmod/VMatrix) using [Entity:GetBonePosition](/gmod/Entity:GetBonePosition).
---@param boneID number The bone to retrieve matrix of.  * Bones clientside and serverside will differ 
---@return VMatrix
function Entity:GetBoneMatrix( boneID ) end
--- Returns name of given bone id.
---@param index number ID of bone to lookup name of. 
---@return string
function Entity:GetBoneName( index ) end
--- Returns parent bone of given bone.
---@param bone number The bode ID of the bone to get parent of 
---@return number
function Entity:GetBoneParent( bone ) end
--- Returns the position and angle of the given attachment, relative to the world.
---@param boneIndex number The bone index of the bone to get the position of. See [Entity:LookupBone](/gmod/Entity:LookupBone). 
---@return Vector
---@return Angle
function Entity:GetBonePosition( boneIndex ) end
--- Returns the surface property of the specified bone.
---@param bone number The bone id. See [Entity:LookupBone](/gmod/Entity:LookupBone). 
---@return string
function Entity:GetBoneSurfaceProp( bone ) end
--- Returns info about given plane of non-nodraw brush model surfaces of the entity's model. Works on worldspawn as well.
---@param id number The index of the plane to get info of. Starts from 0. 
---@return Vector
---@return Vector
---@return number
function Entity:GetBrushPlane( id ) end
--- Returns the amount of planes of non-nodraw brush model surfaces of the entity's model.
---@return number
function Entity:GetBrushPlaneCount(  ) end
--- Returns a table of brushes surfaces for brush model entities.
---@return table
function Entity:GetBrushSurfaces(  ) end
--- Returns the specified hook callbacks for this entity added with [Entity:AddCallback](/gmod/Entity:AddCallback)
--- 
--- The callbacks can then be removed with [Entity:RemoveCallback](/gmod/Entity:RemoveCallback).
---@param hook string The hook to retrieve the callbacks from, see [Entity Callbacks](/gmod/Entity%20Callbacks) for the possible hooks. 
---@return table
function Entity:GetCallbacks( hook ) end
--- Returns ids of child bones of given bone.
---@param boneid number Bone id to lookup children of 
---@return table
function Entity:GetChildBones( boneid ) end
--- Gets the children of the entity - that is, every entity whose move parent is this entity.
---@return table
function Entity:GetChildren(  ) end
--- Returns the classname of a entity. This is often the name of the Lua file or folder containing the files for the entity
---@return string
function Entity:GetClass(  ) end
--- Returns an entity's collision bounding box. In most cases, this will return the same bounding box as [Entity:GetModelBounds](/gmod/Entity:GetModelBounds) unless the entity does not have a physics mesh or it has a [PhysObj](/gmod/PhysObj) different from the default.
---@return Vector
---@return Vector
function Entity:GetCollisionBounds(  ) end
--- Returns the entity's collision group
---@return number
function Entity:GetCollisionGroup(  ) end
--- Returns the color the entity is set to.
---@return table
function Entity:GetColor(  ) end
--- Returns the two entities involved in a constraint ent, or nil if the entity is not a constraint.
---@return Entity
---@return Entity
function Entity:GetConstrainedEntities(  ) end
--- Returns the two entities physobjects involved in a constraint ent, or no value if the entity is not a constraint.
---@return PhysObj
---@return PhysObj
function Entity:GetConstrainedPhysObjects(  ) end
--- Returns entity's creation ID. Unlike [Entity:EntIndex](/gmod/Entity:EntIndex) or  [Entity:MapCreationID](/gmod/Entity:MapCreationID), it will always increase and old values won't be reused.
---@return number
function Entity:GetCreationID(  ) end
--- Returns the time the entity was created on, relative to [CurTime](/gmod/Global.CurTime).
---@return number
function Entity:GetCreationTime(  ) end
--- Gets the creator of the SENT.
---@return Player
function Entity:GetCreator(  ) end
--- Returns whether this entity uses custom collision check set by [Entity:SetCustomCollisionCheck](/gmod/Entity:SetCustomCollisionCheck).
---@return boolean
function Entity:GetCustomCollisionCheck(  ) end
--- Returns the frame of the currently played sequence. This will be a number between 0 and 1 as a representation of sequence progress.
---@return number
function Entity:GetCycle(  ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Get an angle stored in the datatable of the entity.
---@param key number Goes from 0 to 31.  Specifies what key to grab from datatable. 
---@return Angle
function Entity:GetDTAngle( key ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Get a boolean stored in the datatable of the entity.
---@param key number Goes from 0 to 31.  Specifies what key to grab from datatable. 
---@return boolean
function Entity:GetDTBool( key ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Returns an entity stored in the datatable of the entity.
---@param key number Goes from 0 to 31.  Specifies what key to grab from datatable. 
---@return Entity
function Entity:GetDTEntity( key ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Get a float stored in the datatable of the entity.
---@param key number Goes from 0 to 31.  Specifies what key to grab from datatable. 
---@return number
function Entity:GetDTFloat( key ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Get an integer stored in the datatable of the entity.
---@param key number Goes from 0 to 31.  Specifies what key to grab from datatable. 
---@return number
function Entity:GetDTInt( key ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Get a string stored in the datatable of the entity.
---@param key number Goes from 0 to 3.  Specifies what key to grab from datatable. 
---@return string
function Entity:GetDTString( key ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Get a vector stored in the datatable of the entity.
---@param key number Goes from 0 to 31.  Specifies what key to grab from datatable. 
---@return Vector
function Entity:GetDTVector( key ) end
--- Returns internal data about editable [Entity:NetworkVar](/gmod/Entity:NetworkVar)s.
--- 
--- 		This is used internally by [DEntityProperties](/gmod/DEntityProperties) and [Editable Entities](/gmod/Editable%20Entities) system.
---@return table
function Entity:GetEditingData(  ) end
--- Returns a bit flag of all engine effect flags of the entity.
---@return number
function Entity:GetEffects(  ) end
--- Returns a bit flag of all engine flags of the entity.
---@return number
function Entity:GetEFlags(  ) end
--- Returns the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding.
---@return number
function Entity:GetElasticity(  ) end
--- Returns all flags of given entity.
---@return number
function Entity:GetFlags(  ) end
--- Returns acceptable value range for the flex.
---@param flex number The ID of the flex to look up bounds of 
---@return number
---@return number
function Entity:GetFlexBounds( flex ) end
--- Returns the ID of the flex based on given name.
---@param name string The name of the flex to get the ID of. Case sensitive. 
---@return number
function Entity:GetFlexIDByName( name ) end
--- Returns flex name.
---@param id number The flex id to look up name of 
---@return string
function Entity:GetFlexName( id ) end
--- Returns the number of flexes this entity has.
---@return number
function Entity:GetFlexNum(  ) end
--- Returns the flex scale of the entity.
---@return number
function Entity:GetFlexScale(  ) end
--- Returns current weight ( value ) of the flex.
---@param flex number The ID of the flex to get weight of 
---@return number
function Entity:GetFlexWeight( flex ) end
--- Returns the forward vector of the entity, as a normalized direction vector
---@return Vector
function Entity:GetForward(  ) end
--- Returns how much friction an entity has. Entities default to 1 (100%) and can be higher or even negative.
---@return number
function Entity:GetFriction(  ) end
--- Gets the gravity multiplier of the entity.
---@return number
function Entity:GetGravity(  ) end
--- Returns the object the entity is standing on.
---@return Entity
function Entity:GetGroundEntity(  ) end
--- Returns the entity's ground speed velocity, which is based on the entity's walk/run speed and/or the ground speed of their sequence ( [Entity:GetSequenceGroundSpeed](/gmod/Entity:GetSequenceGroundSpeed) ). Will return an empty [Vector](/gmod/Vector) if the entity isn't moving on the ground.
---@return Vector
function Entity:GetGroundSpeedVelocity(  ) end
--- Gets the bone the hit box is attached to.
---@param hitbox number The number of the hit box. 
---@param hboxset number The number of the hit box set. This should be 0 in most cases.    Numbering for these sets start from 0. The total amount of sets can be found with [Entity:GetHitBoxSetCount](/gmod/Entity:GetHitBoxSetCount). 
---@return number
function Entity:GetHitBoxBone( hitbox, hboxset ) end
--- Gets the bounds (min and max corners) of a hit box.
---@param hitbox number The number of the hit box. 
---@param group number The group of the hit box. This should be 0 in most cases. 
---@return Vector
---@return Vector
function Entity:GetHitBoxBounds( hitbox, group ) end
--- Gets how many hit boxes are in a given hit box group.
---@param group number The number of the hit box group. 
---@return number
function Entity:GetHitBoxCount( group ) end
--- Returns the number of hit box sets that an entity has. Functionally identical to [Entity:GetHitboxSetCount](/gmod/Entity:GetHitboxSetCount)
---@return number
function Entity:GetHitBoxGroupCount(  ) end
--- Gets the hit group of a given hitbox in a given hitbox set.
---@param hitbox number The number of the hit box. 
---@param hitboxset number The number of the hit box set. This should be 0 in most cases.    Numbering for these sets start from 0. The total group count can be found with [Entity:GetHitBoxSetCount](/gmod/Entity:GetHitBoxSetCount). 
---@return number
function Entity:GetHitBoxHitGroup( hitbox, hitboxset ) end
--- Returns entity's current hit box set
---@return number
---@return string
function Entity:GetHitboxSet(  ) end
--- Returns the amount of hitbox sets in the entity.
---@return number
function Entity:GetHitboxSetCount(  ) end
--- An interface for accessing internal key values on entities.
--- 
--- See [Entity:GetSaveTable](/gmod/Entity:GetSaveTable) for a more detailed explanation. See [Entity:SetSaveValue](/gmod/Entity:SetSaveValue) for the opposite of this function.
---@param variableName string Name of variable corresponding to an entity save value. 
---@return any
function Entity:GetInternalVariable( variableName ) end
--- Returns a table containing all key values the entity has.
--- 
--- Single key values can usually be retrieved with [Entity:GetInternalVariable](/gmod/Entity:GetInternalVariable).
--- 
--- 
--- 
--- Here's a list of keyvalues that will not appear in this list, as they are not stored/defined as actual keyvalues internally:
--- * rendercolor - [Entity:GetColor](/gmod/Entity:GetColor) (Only RGB)
--- * rendercolor32 - [Entity:GetColor](/gmod/Entity:GetColor) (RGBA)
--- * renderamt - [Entity:GetColor](/gmod/Entity:GetColor) (Alpha)
--- * disableshadows - EF_NOSHADOW
--- * mins - [Entity:GetCollisionBounds](/gmod/Entity:GetCollisionBounds)
--- * maxs - [Entity:GetCollisionBounds](/gmod/Entity:GetCollisionBounds)
--- * disablereceiveshadows - EF_NORECEIVESHADOW
--- * nodamageforces - EFL_NO_DAMAGE_FORCES
--- * angle - [Entity:GetAngles](/gmod/Entity:GetAngles)
--- * angles - [Entity:GetAngles](/gmod/Entity:GetAngles)
--- * origin - [Entity:GetPos](/gmod/Entity:GetPos)
--- * targetname - [Entity:GetName](/gmod/Entity:GetName)
---@return table
function Entity:GetKeyValues(  ) end
--- Returns the animation cycle/frame for given layer.
---@param layerID number The Layer ID 
---@return number
function Entity:GetLayerCycle( layerID ) end
--- Returns the duration of given layer.
---@param layerID number The Layer ID 
---@return number
function Entity:GetLayerDuration( layerID ) end
--- Returns the layer playback rate. See also [Entity:GetLayerDuration](/gmod/Entity:GetLayerDuration).
---@param layerID number The Layer ID 
---@return number
function Entity:GetLayerPlaybackRate( layerID ) end
--- Returns the sequence id of given layer.
---@param layerID number The Layer ID. 
---@return number
function Entity:GetLayerSequence( layerID ) end
--- Returns the current weight of the layer. See [Entity:SetLayerWeight](/gmod/Entity:SetLayerWeight) for more information.
---@param layerID number The Layer ID 
---@return number
function Entity:GetLayerWeight( layerID ) end
--- Returns the entity that is being used as the light origin position for this entity.
---@return Entity
function Entity:GetLightingOriginEntity(  ) end
--- Returns the rotation of the entity relative to its parent entity.
---@return Angle
function Entity:GetLocalAngles(  ) end
--- Returns the non-VPhysics angular velocity of the entity relative to its parent entity.
---@return Angle
function Entity:GetLocalAngularVelocity(  ) end
--- Returns entity's position relative to it's parent.
---@return Vector
function Entity:GetLocalPos(  ) end
--- Gets the entity's angle manipulation of the given bone. This is relative to the default angle, so the angle is zero when unmodified.
---@param boneID number The bone's ID 
---@return Angle
function Entity:GetManipulateBoneAngles( boneID ) end
--- Returns the jiggle amount of the entity's bone.
--- 
--- See [Entity:ManipulateBoneJiggle](/gmod/Entity:ManipulateBoneJiggle) for more info.
---@param boneID number The bone ID 
---@return number
function Entity:GetManipulateBoneJiggle( boneID ) end
--- Gets the entity's position manipulation of the given bone. This is relative to the default position, so it is zero when unmodified.
---@param boneId number The bone's ID 
---@return Vector
function Entity:GetManipulateBonePosition( boneId ) end
--- Gets the entity's scale manipulation of the given bone. Normal scale is Vector( 1, 1, 1 )
---@param boneID number The bone's ID 
---@return Vector
function Entity:GetManipulateBoneScale( boneID ) end
--- Returns the material override for this entity. 
--- 
--- Returns an empty string if no material override exists. Use [Entity:GetMaterials](/gmod/Entity:GetMaterials) to list it's default materials.
---@return string
function Entity:GetMaterial(  ) end
--- Returns all materials of the entity's model.
--- 
--- This function is unaffected by [Entity:SetSubMaterial](/gmod/Entity:SetSubMaterial) as it returns the original materials.
---@return table
function Entity:GetMaterials(  ) end
--- Returns the surface material of this entity.
---@return number
function Entity:GetMaterialType(  ) end
--- Returns the max health that the entity was given. It can be set via [Entity:SetMaxHealth](/gmod/Entity:SetMaxHealth).
---@return number
function Entity:GetMaxHealth(  ) end
--- Gets the model of given entity.
---@return string
function Entity:GetModel(  ) end
--- Returns the entity's model bounds. This is different than the collision bounds/hull. This is not scaled with [Entity:SetModelScale](/gmod/Entity:SetModelScale), and will return the model's original, unmodified mins and maxs. This can be used to get world bounds.
---@return Vector
---@return Vector
function Entity:GetModelBounds(  ) end
--- Returns the contents of the entity's current model.
---@return number
function Entity:GetModelContents(  ) end
--- Gets the physics bone count of the entity's model. This is only applicable to `anim` type [Scripted Entities](/gmod/Scripted%20Entities) with ragdoll models.
---@return number
function Entity:GetModelPhysBoneCount(  ) end
--- Gets the models radius.
---@return number
function Entity:GetModelRadius(  ) end
--- Returns the entity's model render bounds. By default this will return the same bounds as [Entity:GetModelBounds](/gmod/Entity:GetModelBounds).
---@return Vector
---@return Vector
function Entity:GetModelRenderBounds(  ) end
--- Gets the selected entity's model scale.
---@return number
function Entity:GetModelScale(  ) end
--- Returns the amount a momentary_rot_button entity is turned based on the given angle. 0 meaning completely turned closed, 1 meaning completely turned open.
---@param turnAngle Angle The angle of rotation to compare - usually should be [Entity:GetAngles](/gmod/Entity:GetAngles). 
---@return number
function Entity:GetMomentaryRotButtonPos( turnAngle ) end
--- Returns the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide?
---@return number
function Entity:GetMoveCollide(  ) end
--- Returns the movement parent of this entity.
--- 
--- See [Entity:SetMoveParent](/gmod/Entity:SetMoveParent) for more info.
---@return Entity
function Entity:GetMoveParent(  ) end
--- Returns the entity's movetype
---@return number
function Entity:GetMoveType(  ) end
--- Returns the mapping name of this entity.
---@return string
function Entity:GetName(  ) end
--- Gets networked angles for entity.
---@return Angle
function Entity:GetNetworkAngles(  ) end
--- Retrieves a networked angle value at specified index on the entity that is set by [Entity:SetNetworkedAngle](/gmod/Entity:SetNetworkedAngle).
---@param key string The key that is associated with the value 
---@param fallback? Angle The value to return if we failed to retrieve the value. ( If it isn't set ) 
---@return Angle
function Entity:GetNetworkedAngle( key, fallback ) end
--- Retrieves a networked boolean value at specified index on the entity that is set by [Entity:SetNetworkedBool](/gmod/Entity:SetNetworkedBool).
---@param key string The key that is associated with the value 
---@param fallback? boolean The value to return if we failed to retrieve the value. ( If it isn't set ) 
---@return boolean
function Entity:GetNetworkedBool( key, fallback ) end
--- Retrieves a networked float value at specified index on the entity that is set by [Entity:SetNetworkedEntity](/gmod/Entity:SetNetworkedEntity).
---@param key string The key that is associated with the value 
---@param fallback? Entity The value to return if we failed to retrieve the value. ( If it isn't set ) 
---@return Entity
function Entity:GetNetworkedEntity( key, fallback ) end
--- Retrieves a networked float value at specified index on the entity that is set by [Entity:SetNetworkedFloat](/gmod/Entity:SetNetworkedFloat).
--- 
--- Seems to be the same as [Entity:GetNetworkedInt](/gmod/Entity:GetNetworkedInt).
---@param key string The key that is associated with the value 
---@param fallback? number The value to return if we failed to retrieve the value. ( If it isn't set ) 
---@return number
function Entity:GetNetworkedFloat( key, fallback ) end
--- Retrieves a networked integer value at specified index on the entity that is set by [Entity:SetNetworkedInt](/gmod/Entity:SetNetworkedInt).
---@param key string The key that is associated with the value 
---@param fallback? number The value to return if we failed to retrieve the value. ( If it isn't set ) 
---@return number
function Entity:GetNetworkedInt( key, fallback ) end
--- Retrieves a networked string value at specified index on the entity that is set by [Entity:SetNetworkedString](/gmod/Entity:SetNetworkedString).
---@param key string The key that is associated with the value 
---@param fallback string The value to return if we failed to retrieve the value. ( If it isn't set ) 
---@return string
function Entity:GetNetworkedString( key, fallback ) end
--- Returns callback function for given NWVar of this entity.
---@param name string The name of the NWVar to get callback of. 
---@return function
function Entity:GetNetworkedVarProxy( name ) end
--- Returns all the networked variables in an entity.
---@return table
function Entity:GetNetworkedVarTable(  ) end
--- Retrieves a networked vector value at specified index on the entity that is set by [Entity:SetNetworkedVector](/gmod/Entity:SetNetworkedVector).
---@param key string The key that is associated with the value 
---@param fallback? Vector The value to return if we failed to retrieve the value. ( If it isn't set ) 
---@return Vector
function Entity:GetNetworkedVector( key, fallback ) end
--- Gets networked origin for entity.
---@return Vector
function Entity:GetNetworkOrigin(  ) end
--- Returns all network vars created by [Entity:NetworkVar](/gmod/Entity:NetworkVar) and [Entity:NetworkVarElement](/gmod/Entity:NetworkVarElement) and their current values.
--- 
--- 		This is used internally by the duplicator.
--- 
--- 		For NWVars see [Entity:GetNWVarTable](/gmod/Entity:GetNWVarTable).
---@return table
function Entity:GetNetworkVars(  ) end
--- Returns if the entity's rendering and transmitting has been disabled.
---@return boolean
function Entity:GetNoDraw(  ) end
--- Returns the body group count of the entity.
---@return number
function Entity:GetNumBodyGroups(  ) end
--- Returns the number of pose parameters this entity has.
---@return number
function Entity:GetNumPoseParameters(  ) end
--- Retrieves a networked angle value at specified index on the entity that is set by [Entity:SetNWAngle](/gmod/Entity:SetNWAngle).
---@param key string The key that is associated with the value 
---@param fallback? any The value to return if we failed to retrieve the value. (If it isn't set) 
---@return any
function Entity:GetNWAngle( key, fallback ) end
--- Retrieves a networked boolean value at specified index on the entity that is set by [Entity:SetNWBool](/gmod/Entity:SetNWBool).
---@param key string The key that is associated with the value 
---@param fallback? any The value to return if we failed to retrieve the value. (If it isn't set) 
---@return any
function Entity:GetNWBool( key, fallback ) end
--- Retrieves a networked entity value at specified index on the entity that is set by [Entity:SetNWEntity](/gmod/Entity:SetNWEntity).
---@param key string The key that is associated with the value 
---@param fallback? any The value to return if we failed to retrieve the value. (If it isn't set) 
---@return any
function Entity:GetNWEntity( key, fallback ) end
--- Retrieves a networked float value at specified index on the entity that is set by [Entity:SetNWFloat](/gmod/Entity:SetNWFloat).
---@param key string The key that is associated with the value 
---@param fallback? any The value to return if we failed to retrieve the value. (If it isn't set) 
---@return any
function Entity:GetNWFloat( key, fallback ) end
--- Retrieves a networked integer (whole number) value that was previously set by [Entity:SetNWInt](/gmod/Entity:SetNWInt).
---@param key string The key that is associated with the value 
---@param fallback? any The value to return if we failed to retrieve the value (If it isn't set). 
---@return any
function Entity:GetNWInt( key, fallback ) end
--- Retrieves a networked string value at specified index on the entity that is set by [Entity:SetNWString](/gmod/Entity:SetNWString).
---@param key string The key that is associated with the value 
---@param fallback any The value to return if we failed to retrieve the value. (If it isn't set) 
---@return any
function Entity:GetNWString( key, fallback ) end
--- Returns callback function for given NWVar of this entity.
---@param key any The key of the NWVar to get callback of. 
---@return function
function Entity:GetNWVarProxy( key ) end
--- Returns all the networked variables in an entity.
---@return table
function Entity:GetNWVarTable(  ) end
--- Retrieves a networked vector value at specified index on the entity that is set by [Entity:SetNWVector](/gmod/Entity:SetNWVector).
---@param key string The key that is associated with the value 
---@param fallback? any The value to return if we failed to retrieve the value. (If it isn't set) 
---@return any
function Entity:GetNWVector( key, fallback ) end
--- Returns the owner entity of this entity. See [Entity:SetOwner](/gmod/Entity:SetOwner) for more info.
---@return Entity
function Entity:GetOwner(  ) end
--- Returns the parent entity of this entity.
---@return Entity
function Entity:GetParent(  ) end
--- Returns the attachment index of the entity's parent. Returns 0 if the entity is not parented to a specific attachment or if it isn't parented at all.
--- 
--- This is set by second argument of [Entity:SetParent](/gmod/Entity:SetParent) or the **SetParentAttachment** input.
---@return number
function Entity:GetParentAttachment(  ) end
--- If the entity is parented to an entity that has a model with multiple physics objects (like a ragdoll), this is used to retrieve what physics object number the entity is parented to on it's parent.
---@return number
function Entity:GetParentPhysNum(  ) end
--- Returns the position and angle of the entity's move parent as a 3x4 matrix ([VMatrix](/gmod/VMatrix) is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.
---@return VMatrix
function Entity:GetParentWorldTransformMatrix(  ) end
--- Returns whether the entity is persistent or not.
--- 
--- See [Entity:SetPersistent](/gmod/Entity:SetPersistent) for more information on persistence.
---@return boolean
function Entity:GetPersistent(  ) end
--- Returns player who is claiming kills of physics damage the entity deals.
---@param timeLimit? number The time to check if the entity was still a proper physics attacker. 
---@return Player
function Entity:GetPhysicsAttacker( timeLimit ) end
--- Returns the entity's physics object, if the entity has physics.
---@return PhysObj
function Entity:GetPhysicsObject(  ) end
--- Returns the number of physics objects an entity has (usually 1 for non-ragdolls)
---@return number
function Entity:GetPhysicsObjectCount(  ) end
--- Returns a specific physics object from an entity with multiple [PhysObj](/gmod/PhysObj)ects (like ragdolls)
--- 
--- See also [Entity:TranslateBoneToPhysBone](/gmod/Entity:TranslateBoneToPhysBone).
---@param physNum number The number corresponding to the [PhysObj](/gmod/PhysObj) to grab. Starts at 0. 
---@return PhysObj
function Entity:GetPhysicsObjectNum( physNum ) end
--- Returns the playback rate of the main sequence on this entity, with 1.0 being the default speed.
---@return number
function Entity:GetPlaybackRate(  ) end
--- Gets the position of entity in world.
---@return Vector
function Entity:GetPos(  ) end
--- Returns the pose parameter value
---@param name string Pose parameter name to look up 
---@return number
function Entity:GetPoseParameter( name ) end
--- Returns name of given pose parameter
---@param id number Id of the pose paremeter 
---@return string
function Entity:GetPoseParameterName( id ) end
--- Returns pose parameter range
---@param id number Pose parameter ID to look up 
---@return number
---@return number
function Entity:GetPoseParameterRange( id ) end
--- Returns whether this entity is predictable or not.
--- 
--- See [Entity:SetPredictable](/gmod/Entity:SetPredictable) for more information
---@return boolean
function Entity:GetPredictable(  ) end
--- Called to override the preferred carry angles of this object.
---@param ply Player The player who is holding the object. 
---@return Angle
function Entity:GetPreferredCarryAngles( ply ) end
--- Returns the entity which the ragdoll came from. The opposite of [Player:GetRagdollEntity](/gmod/Player:GetRagdollEntity).
---@return Entity
function Entity:GetRagdollOwner(  ) end
--- Returns the entity's render angles, set by [Entity:SetRenderAngles](/gmod/Entity:SetRenderAngles) in a drawing hook.
---@return Angle
function Entity:GetRenderAngles(  ) end
--- Returns render bounds of the entity. Can be overridden by [Entity:SetRenderBounds](/gmod/Entity:SetRenderBounds).
--- 
--- If the render bounds are not inside players view, the entity will not be drawn!
---@return Vector
---@return Vector
function Entity:GetRenderBounds(  ) end
--- Returns current render FX of the entity.
---@return number
function Entity:GetRenderFX(  ) end
--- Returns the render group of the entity.
---@return number
function Entity:GetRenderGroup(  ) end
--- Returns the render mode of the entity.
---@return number
function Entity:GetRenderMode(  ) end
--- Returns the entity's render origin, set by [Entity:SetRenderOrigin](/gmod/Entity:SetRenderOrigin) in a drawing hook.
---@return Vector
function Entity:GetRenderOrigin(  ) end
--- Returns the rightward vector of the entity, as a normalized direction vector
---@return Vector
function Entity:GetRight(  ) end
--- Returns the min and max of the entity's axis-aligned bounding box.
---@param min Vector Minimum extent of the bounding box. 
---@param max Vector Maximum extent of the bounding box. 
---@return Vector
---@return Vector
function Entity:GetRotatedAABB( min, max ) end
--- Returns a table of save values for an entity.
--- 
--- These tables are not the same between the client and the server, and different entities may have different fields.
--- 
--- You can get the list different fields an entity has by looking at it's source code (the 2013 SDK can be found [online](https://github.com/ValveSoftware/source-sdk-2013)). Accessible fields are defined by each `DEFINE_FIELD` and `DEFINE_KEYFIELD` inside the `DATADESC` block.
--- 
--- Take the headcrab, for example:
--- 
--- ```
--- BEGIN_DATADESC( CBaseHeadcrab )
--- 	// m_nGibCount - don't save
--- 	DEFINE_FIELD( m_bHidden, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_flTimeDrown, FIELD_TIME ),
--- 	DEFINE_FIELD( m_bCommittedToJump, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_vecCommittedJumpPos, FIELD_POSITION_VECTOR ),
--- 	DEFINE_FIELD( m_flNextNPCThink, FIELD_TIME ),
--- 	DEFINE_FIELD( m_flIgnoreWorldCollisionTime, FIELD_TIME ),
--- 	
--- 	DEFINE_KEYFIELD( m_bStartBurrowed, FIELD_BOOLEAN, "startburrowed" ),
--- 	DEFINE_FIELD( m_bBurrowed, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_flBurrowTime, FIELD_TIME ),
--- 	DEFINE_FIELD( m_nContext, FIELD_INTEGER ),
--- 	DEFINE_FIELD( m_bCrawlFromCanister, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_bMidJump, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_nJumpFromCanisterDir, FIELD_INTEGER ),
--- 	DEFINE_FIELD( m_bHangingFromCeiling, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_flIlluminatedTime, FIELD_TIME ),
--- 		
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "Burrow", InputBurrow ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "BurrowImmediate", InputBurrowImmediate ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "Unburrow", InputUnburrow ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "StartHangingFromCeiling", InputStartHangingFromCeiling ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "DropFromCeiling", InputDropFromCeiling ),
--- 	
--- 	// Function Pointers
--- 	DEFINE_THINKFUNC( EliminateRollAndPitch ),
--- 	DEFINE_THINKFUNC( ThrowThink ),
--- 	DEFINE_ENTITYFUNC( LeapTouch ),
--- END_DATADESC()
--- ```
--- 
--- * For each **DEFINE_FIELD**, the save table will have a key with name of **first** argument.
--- * For each **DEFINE_KEYFIELD**, the save table will have a key with name of the **third** argument.
--- 
--- See [Entity:GetInternalVariable](/gmod/Entity:GetInternalVariable) for only retrieving one key of the save table.
---@param showAll boolean If set, shows all variables, not just the ones for save. 
---@return table
function Entity:GetSaveTable( showAll ) end
--- Return the index of the model sequence that is currently active for the entity.
---@return number
function Entity:GetSequence(  ) end
--- Return activity id out of sequence id. Opposite of [Entity:SelectWeightedSequence](/gmod/Entity:SelectWeightedSequence).
---@param seq number The sequence ID 
---@return number
function Entity:GetSequenceActivity( seq ) end
--- Returns the activity name for the given sequence id.
---@param sequenceId number The sequence id. 
---@return string
function Entity:GetSequenceActivityName( sequenceId ) end
--- Returns the amount of sequences ( animations ) the entity's model has.
---@return number
function Entity:GetSequenceCount(  ) end
--- Returns the ground speed of the entity's sequence.
---@param sequenceId number The sequence ID. 
---@return number
function Entity:GetSequenceGroundSpeed( sequenceId ) end
--- Returns a table of information about an entity's sequence.
---@param sequenceId number The sequence id of the entity. 
---@return table
function Entity:GetSequenceInfo( sequenceId ) end
--- Returns a list of all sequences ( animations ) the model has.
---@return table
function Entity:GetSequenceList(  ) end
--- Returns an entity's sequence move distance (the change in position over the course of the entire sequence).
---@param sequenceId number The sequence index. 
---@return number
function Entity:GetSequenceMoveDist( sequenceId ) end
--- Returns the delta movement and angles of a sequence of the entity's model.
---@param sequenceId number The sequence index. See [Entity:GetSequenceName](/gmod/Entity:GetSequenceName). 
---@param startCycle? number The sequence start cycle. 0 is the start of the animation, 1 is the end. 
---@param endCyclnde? number The sequence end cycle. 0 is the start of the animation, 1 is the end. Values like 2, etc are allowed. 
---@return boolean
---@return Vector
---@return Angle
function Entity:GetSequenceMovement( sequenceId, startCycle, endCyclnde ) end
--- Returns the change in heading direction in between the start and the end of the sequence.
---@param seq number The sequence index. See [Entity:LookupSequence](/gmod/Entity:LookupSequence). 
---@return number
function Entity:GetSequenceMoveYaw( seq ) end
--- Return the name of the sequence for the index provided.
--- Refer to [Entity:GetSequence](/gmod/Entity:GetSequence) to find the current active sequence on this entity.
---@param index number The index of the sequence to look up. 
---@return string
function Entity:GetSequenceName( index ) end
--- Checks if the entity plays a sound when picked up by a player.
---@return boolean
function Entity:GetShouldPlayPickupSound(  ) end
--- Returns if entity should create a server ragdoll on death or a client one.
---@return boolean
function Entity:GetShouldServerRagdoll(  ) end
--- Returns the skin index of the current skin.
---@return number
function Entity:GetSkin(  ) end
--- Returns solid type of an entity.
---@return number
function Entity:GetSolid(  ) end
--- Returns solid flag(s) of an entity.
---@return number
function Entity:GetSolidFlags(  ) end
--- Returns if we should show a spawn effect on spawn on this entity.
---@return boolean
function Entity:GetSpawnEffect(  ) end
--- Returns the bitwise spawn flags used by the entity.
---@return number
function Entity:GetSpawnFlags(  ) end
--- Returns the material override for the given index. 
--- 
--- Returns "" if no material override exists. Use [Entity:GetMaterials](/gmod/Entity:GetMaterials) to list it's default materials.
---@param index number The index of the sub material. Acceptable values are from 0 to 31. 
---@return string
function Entity:GetSubMaterial( index ) end
--- Returns a list of models included into the entity's model in the .qc file.
---@return table
function Entity:GetSubModels(  ) end
--- Returns the table that contains all values saved within the entity.
---@return table
function Entity:GetTable(  ) end
--- Returns the last trace used in the collision callbacks such as [ENTITY:StartTouch](/gmod/ENTITY:StartTouch), [ENTITY:Touch](/gmod/ENTITY:Touch) and [ENTITY:EndTouch](/gmod/ENTITY:EndTouch).
---@return table
function Entity:GetTouchTrace(  ) end
--- Returns true if the TransmitWithParent flag is set or not.
---@return boolean
function Entity:GetTransmitWithParent(  ) end
--- Returns if the entity is unfreezable, meaning it can't be frozen with the physgun. By default props are freezable, so this function will typically return false.
---@return boolean
function Entity:GetUnFreezable(  ) end
--- Returns the upward vector of the entity, as a normalized direction vector
---@return Vector
function Entity:GetUp(  ) end
--- Retrieves a value from entity's [Entity:GetTable](/gmod/Entity:GetTable). Set by [Entity:SetVar](/gmod/Entity:SetVar).
---@param key any Key of the value to retrieve 
---@param default? any A default value to fallback to if we couldn't retrieve the value from entity 
---@return any
function Entity:GetVar( key, default ) end
--- Returns the entity's velocity.
---@return Vector
function Entity:GetVelocity(  ) end
--- Returns ID of workshop addon that the entity is from.
---@return number
function Entity:GetWorkshopID(  ) end
--- Returns the position and angle of the entity as a 3x4 matrix ([VMatrix](/gmod/VMatrix) is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.
---@return VMatrix
function Entity:GetWorldTransformMatrix(  ) end
--- Causes the entity to break into its current models gibs, if it has any.
--- 
--- You must call [Entity:PrecacheGibs](/gmod/Entity:PrecacheGibs) on the entity before using this function, or it will not create any gibs.
--- 
--- If called on server, the gibs will be spawned on the currently connected clients and will not be synchronized. Otherwise the gibs will be spawned only for the client the function is called on.
--- 
--- Note, that this function will not remove or hide the entity it is called on.
--- 
--- For more expensive version of this function see [Entity:GibBreakServer](/gmod/Entity:GibBreakServer).
---@param force Vector The force to apply to the created gibs. 
---@param clr? table If set, this will be color of the broken gibs instead of the entity's color. 
function Entity:GibBreakClient( force, clr ) end
--- Causes the entity to break into its current models gibs, if it has any.
--- 
--- You must call [Entity:PrecacheGibs](/gmod/Entity:PrecacheGibs) on the entity before using this function, or it will not create any gibs.
--- 
--- The gibs will be spawned on the server and be synchronized with all clients.
--- 
--- Note, that this function will not remove or hide the entity it is called on.
--- 
--- This function is affected by `props_break_max_pieces_perframe` and `props_break_max_pieces` console variables.
---@param force Vector The force to apply to the created gibs 
function Entity:GibBreakServer( force ) end
--- Returns whether or not the bone manipulation functions have ever been called on given  entity.
--- 
--- Related functions are [Entity:ManipulateBonePosition](/gmod/Entity:ManipulateBonePosition), [Entity:ManipulateBoneAngles](/gmod/Entity:ManipulateBoneAngles), [Entity:ManipulateBoneJiggle](/gmod/Entity:ManipulateBoneJiggle), and [Entity:ManipulateBoneScale](/gmod/Entity:ManipulateBoneScale).
---@return boolean
function Entity:HasBoneManipulations(  ) end
--- Returns whether or not the the entity has had flex manipulations performed with [Entity:SetFlexWeight](/gmod/Entity:SetFlexWeight) or [Entity:SetFlexScale](/gmod/Entity:SetFlexScale).
---@return boolean
function Entity:HasFlexManipulatior(  ) end
--- Returns whether this entity has the specified spawnflags bits set.
---@param spawnFlags number The spawnflag bits to check, see [SF](/gmod/Enums/SF). 
---@return boolean
function Entity:HasSpawnFlags( spawnFlags ) end
--- Returns the position of the head of this entity, NPCs use this internally to aim at their targets.
---@param origin Vector The vector of where the attack comes from. 
---@return Vector
function Entity:HeadTarget( origin ) end
--- Returns the health of the entity.
---@return number
function Entity:Health(  ) end
--- Sets the entity on fire.
--- 
--- See also [Entity:Extinguish](/gmod/Entity:Extinguish).
---@param length number How long to keep the entity ignited, in seconds. 
---@param radius? number The radius of the ignition, will ignite everything around the entity that is in this radius. 
function Entity:Ignite( length, radius ) end
--- Initializes this entity as being clientside only.
--- 
--- Only works on entities fully created clientside, and as such it has currently no use due this being automatically called by [ents.CreateClientProp](/gmod/ents.CreateClientProp), [ents.CreateClientside](/gmod/ents.CreateClientside), [ClientsideModel](/gmod/Global.ClientsideModel) and [ClientsideScene](/gmod/Global.ClientsideScene).
function Entity:InitializeAsClientEntity(  ) end
--- Fires input to the entity with the ability to make another entity responsible, bypassing the event queue system.
--- 
--- You should only use this function over [Entity:Fire](/gmod/Entity:Fire) if you know what you are doing.
--- 
--- See also [Entity:Fire](/gmod/Entity:Fire) for a function that conforms to the internal map IO event queue and [GM:AcceptInput](/gmod/GM:AcceptInput) for a hook that can intercept inputs.
---@param input string The name of the input to fire 
---@param activator? Entity The entity that caused this input (i.e. the player who pushed a button) 
---@param caller? Entity The entity that is triggering this input (i.e. the button that was pushed) 
---@param param? any The value to give to the input. Can be either a [string](/gmod/string), a [number](/gmod/number) or a [boolean](/gmod/boolean). 
function Entity:Input( input, activator, caller, param ) end
--- Sets up Data Tables from entity to use with [Entity:NetworkVar](/gmod/Entity:NetworkVar).
function Entity:InstallDataTable(  ) end
--- Resets the entity's bone cache values in order to prepare for a model change.
--- 
--- This should be called after calling [Entity:SetPoseParameter](/gmod/Entity:SetPoseParameter).
function Entity:InvalidateBoneCache(  ) end
--- Returns true if the entity has constraints attached to it
---@return boolean
function Entity:IsConstrained(  ) end
--- Returns if entity is constraint or not
---@return boolean
function Entity:IsConstraint(  ) end
--- Returns whether the entity is dormant or not. Client/server entities become dormant when they leave the PVS on the server. Client side entities can decide for themselves whether to become dormant. This mainly applies to PVS.
---@return boolean
function Entity:IsDormant(  ) end
--- Returns whether an entity has engine effect applied or not.
---@param effect number The effect to check for, see [EF](/gmod/Enums/EF). 
---@return boolean
function Entity:IsEffectActive( effect ) end
--- Checks if given flag is set or not.
---@param flag number The engine flag to test, see [EFL](/gmod/Enums/EFL) 
---@return boolean
function Entity:IsEFlagSet( flag ) end
--- Checks if given flag(s) is set or not.
---@param flag number The engine flag(s) to test, see [FL](/gmod/Enums/FL) 
---@return boolean
function Entity:IsFlagSet( flag ) end
--- Returns whether the entity is inside a wall or outside of the map.
---@return boolean
function Entity:IsInWorld(  ) end
--- Returns whether the entity is lag compensated or not.
---@return boolean
function Entity:IsLagCompensated(  ) end
--- Returns true if the target is in line of sight.
---@param target Vector The target to test. You can also supply an [Entity](/gmod/Entity) instead of a [Vector](/gmod/Vector) 
---@return boolean
function Entity:IsLineOfSightClear( target ) end
--- Returns if the entity is going to be deleted in the next frame.
---@return boolean
function Entity:IsMarkedForDeletion(  ) end
--- Checks if the entity is a [NextBot](/gmod/NextBot) or not.
---@return boolean
function Entity:IsNextBot(  ) end
--- Checks if the entity is an NPC or not.
--- 
--- This will return false for [NextBot](/gmod/NextBot)s, see [Entity:IsNextBot](/gmod/Entity:IsNextBot) for that.
---@return boolean
function Entity:IsNPC(  ) end
--- Returns whether the entity is on fire.
---@return boolean
function Entity:IsOnFire(  ) end
--- Returns whether the entity is on ground or not.
--- 
--- Internally, this checks if [FL_ONGROUND](/gmod/Enums/FL) is set on the entity.
--- 
--- This function is an alias of [Entity:OnGround](/gmod/Entity:OnGround).
---@return boolean
function Entity:IsOnGround(  ) end
--- Checks if the entity is a player or not.
---@return boolean
function Entity:IsPlayer(  ) end
--- Returns true if the entity is being held by a player. Either by physics gun, gravity gun or use-key (+use).
---@return boolean
function Entity:IsPlayerHolding(  ) end
--- Returns whether there's a gesture is given activity being played.
---@param activity number The activity to test. See [ACT](/gmod/Enums/ACT). 
---@return boolean
function Entity:IsPlayingGesture( activity ) end
--- Checks if the entity is a ragdoll.
---@return boolean
function Entity:IsRagdoll(  ) end
--- Checks if the entity is a SENT or a built-in entity.
---@return boolean
function Entity:IsScripted(  ) end
--- Returns whether the entity's current sequence is finished or not.
---@return boolean
function Entity:IsSequenceFinished(  ) end
--- Returns if the entity is solid or not.
--- Very useful for determining if the entity is a trigger or not.
---@return boolean
function Entity:IsSolid(  ) end
--- Returns whether the entity is a valid entity or not.
--- 
--- An entity is valid if:
--- * It is not a [NULL](/gmod/Global_Variables) entity
--- * It is not the worldspawn entity ([game.GetWorld](/gmod/game.GetWorld))
--- 
--- 
--- 
--- It will check whether the given variable contains an object (an Entity) or nothing at all for you. See examples.
--- 
--- 
--- This might be a cause for a lot of headache. Usually happening during networking etc., when completely valid entities suddenly become invalid on the client, but are never filtered with IsValid(). See [GM:InitPostEntity](/gmod/GM:InitPostEntity) for more details.
---@return boolean
function Entity:IsValid(  ) end
--- Returns whether the given layer ID is valid and exists on this entity.
---@param layerID number The Layer ID 
---@return boolean
function Entity:IsValidLayer( layerID ) end
--- Checks if the entity is a vehicle or not.
---@return boolean
function Entity:IsVehicle(  ) end
--- Checks if the entity is a weapon or not.
---@return boolean
function Entity:IsWeapon(  ) end
--- Returns whether the entity is a widget or not.
--- 
--- This is used by the "Edit Bones" context menu property.
---@return boolean
function Entity:IsWidget(  ) end
--- Returns if the entity is the map's Entity[0] worldspawn
---@return boolean
function Entity:IsWorld(  ) end
--- Converts a vector local to an entity into a worldspace vector
---@param lpos Vector The local vector 
---@return Vector
function Entity:LocalToWorld( lpos ) end
--- Converts a local angle (local to the entity) to a world angle.
---@param ang Angle The local angle 
---@return Angle
function Entity:LocalToWorldAngles( ang ) end
--- Returns the attachment index of the given attachment name.
---@param attachmentName string The name of the attachment. 
---@return number
function Entity:LookupAttachment( attachmentName ) end
--- Gets the bone index of the given bone name, returns nothing if the bone does not exist.
---@param boneName string The name of the bone.    Common generic bones ( for player models and some HL2 models ):   * ValveBiped.Bip01_Head1  * ValveBiped.Bip01_Spine  * ValveBiped.Anim_Attachment_RH    Common hand bones (left hand equivalents also available, replace _R_ with _L_)  * ValveBiped.Bip01_R_Hand  * ValveBiped.Bip01_R_Forearm  * ValveBiped.Bip01_R_Foot  * ValveBiped.Bip01_R_Thigh  * ValveBiped.Bip01_R_Calf  * ValveBiped.Bip01_R_Shoulder  * ValveBiped.Bip01_R_Elbow 
---@return number
function Entity:LookupBone( boneName ) end
--- Returns pose parameter ID from its name.
---@param name string Pose parameter name 
---@return number
function Entity:LookupPoseParameter( name ) end
--- Returns sequence ID from its name.
---@param name string Sequence name 
---@return number
---@return number
function Entity:LookupSequence( name ) end
--- Turns the [Entity:GetPhysicsObject](/gmod/Entity:GetPhysicsObject) into a physics shadow.
--- It's used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.
--- 
--- A physics shadow can be used to have static entities that never move by setting both arguments to false.
---@param allowPhysicsMovement boolean Whether to allow the physics shadow to move under stress. 
---@param allowPhysicsRotation boolean Whether to allow the physics shadow to rotate under stress. 
function Entity:MakePhysicsObjectAShadow( allowPhysicsMovement, allowPhysicsRotation ) end
--- Sets custom bone angles.
---@param boneID number Index of the bone you want to manipulate 
---@param ang Angle Angle to apply.    The angle is relative to the original bone angle, not relative to the world or the entity. 
function Entity:ManipulateBoneAngles( boneID, ang ) end
--- Manipulates the bone's jiggle status. This allows non jiggly bones to become jiggly.
---@param boneID number Index of the bone you want to manipulate. 
---@param enabled number 0 = No Jiggle  1 = Jiggle 
function Entity:ManipulateBoneJiggle( boneID, enabled ) end
--- Sets custom bone offsets.
---@param boneID number Index of the bone you want to manipulate 
---@param pos Vector Position vector to apply    Note that the position is relative to the original bone position, not relative to the world or the entity. 
function Entity:ManipulateBonePosition( boneID, pos ) end
--- Sets custom bone scale.
---@param boneID number Index of the bone you want to manipulate 
---@param scale Vector Scale vector to apply. Note that the scale is relative to the original bone scale, not relative to the world or the entity. 
function Entity:ManipulateBoneScale( boneID, scale ) end
--- Returns entity's map creation ID. Unlike [Entity:EntIndex](/gmod/Entity:EntIndex) or [Entity:GetCreationID](/gmod/Entity:GetCreationID), it will always be the same on same map, no matter how much you clean up or restart it.
--- 
--- To be used in conjunction with [ents.GetMapCreatedEntity](/gmod/ents.GetMapCreatedEntity).
---@return number
function Entity:MapCreationID(  ) end
--- Refreshes the shadow of the entity.
function Entity:MarkShadowAsDirty(  ) end
--- Fires the muzzle flash effect of the weapon the entity is carrying. This only creates a light effect and is often called alongside [Weapon:SendWeaponAnim](/gmod/Weapon:SendWeaponAnim)
function Entity:MuzzleFlash(  ) end
--- Performs a Ray-Orientated Bounding Box intersection from the given position to the origin of the OBBox with the entity and returns the hit position on the OBBox.
--- 
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by `SOLID_NONE`
---@param position Vector The vector to start the intersection from. 
---@return Vector
function Entity:NearestPoint( position ) end
--- Creates a network variable on the entity and adds Set/Get functions for it. This function should only be called in [ENTITY:SetupDataTables](/gmod/ENTITY:SetupDataTables).
--- 
--- See [Entity:NetworkVarNotify](/gmod/Entity:NetworkVarNotify) for a function to hook NetworkVar changes.
---@param type string Supported choices:    * `String`  * `Bool`  * `Float`  * `Int` (32-bit signed integer)  * `Vector`  * `Angle`  * `Entity` 
---@param slot number Each network variable has to have a unique slot. The slot is per type - so you can have an int in slot `0`, a bool in slot `0` and a float in slot `0` etc. You can't have two ints in slot `0`, instead you would do a int in slot `0` and another int in slot `1`.    The max slots right now are `32` - so you should pick a number between `0` and `31`. An exception to this is strings which has a max slots of `4`. 
---@param name string The name will affect how you access it. If you call it `Foo` you would add two new functions on your entity - `SetFoo()` and `GetFoo()`. So be careful that what you call it won't collide with any existing functions (don't call it `Pos` for example). 
---@param extended? table A table of extended information.    `KeyName`  * Allows the NetworkVar to be set using [Entity:SetKeyValue](/gmod/Entity:SetKeyValue). This is useful if you're making an entity that you want to be loaded in a map. The sky entity uses this.    `Edit`  * The edit key lets you mark this variable as editable. See [Editable Entities](/gmod/Editable%20Entities) for more information. 
function Entity:NetworkVar( type, slot, name, extended ) end
--- Similarly to [Entity:NetworkVar](/gmod/Entity:NetworkVar), creates a network variable on the entity and adds Set/Get functions for it. This method stores it's value as a member value of a vector or an angle. This allows to go beyond the normal variable limit of [Entity:NetworkVar](/gmod/Entity:NetworkVar) for `Int` and `Float` types, at the expense of `Vector` and `Angle` limit.
--- 
--- This function should only be called in [ENTITY:SetupDataTables](/gmod/ENTITY:SetupDataTables).
---@param type string Supported choices:  * `Vector`  * `Angle` 
---@param slot number The slot for this `Vector` or `Angle`, from `0` to `31`. See [Entity:NetworkVar](/gmod/Entity:NetworkVar) for more detailed explanation. 
---@param element string Which element of a `Vector` or an `Angle` to store the value on. This can be `p`, `y`, `r` for [Angle](/gmod/Angle)s, and `x`, `y`, `z` for [Vector](/gmod/Vector)s 
---@param name string The name will affect how you access it. If you call it `Foo` you would add two new functions on your entity - `SetFoo()` and `GetFoo()`. So be careful that what you call it won't collide with any existing functions (don't call it "Pos" for example). 
---@param extended? table A table of extra information. See [Entity:NetworkVar](/gmod/Entity:NetworkVar) for details. 
function Entity:NetworkVarElement( type, slot, element, name, extended ) end
--- Creates a callback that will execute when the given network variable changes - that is, when the `Set
---@param name string Name of variable to track changes of. 
---@param callback function The function to call when the variable changes. It is passed 4 arguments:  * [Entity](/gmod/Entity) entity - Entity whos variable changed.  * [string](/gmod/string) name - Name of changed variable.  * [any](/gmod/any) old - Old/current variable value.  * [any](/gmod/any) new - New variable value that it was set to. 
function Entity:NetworkVarNotify( name, callback ) end
--- In the case of a scripted entity, this will cause the next [ENTITY:Think](/gmod/ENTITY:Think) event to be run at the given time.
--- 
--- Does not work clientside! Use [Entity:SetNextClientThink](/gmod/Entity:SetNextClientThink) instead.
---@param timestamp number The relative to [CurTime](/gmod/Global.CurTime) timestamp, at which the next think should occur. 
function Entity:NextThink( timestamp ) end
--- Returns the center of an entity's bounding box as a local vector.
---@return Vector
function Entity:OBBCenter(  ) end
--- Returns the highest corner of an entity's bounding box as a local vector.
---@return Vector
function Entity:OBBMaxs(  ) end
--- Returns the lowest corner of an entity's bounding box as a local vector.
---@return Vector
function Entity:OBBMins(  ) end
--- Returns the entity's capabilities as a bitfield.
--- 
--- In the engine this function is mostly used to check the use type, the save/restore system and level transitions flags.
--- 
--- Even though the function is defined shared, it is not guaranteed to return the same value across states.
---@return number
function Entity:ObjectCaps(  ) end
--- Returns true if the entity is on the ground, and false if it isn't.
--- 
--- Internally, this checks if [FL_ONGROUND](/gmod/Enums/FL) is set on the entity. This is only updated for players and NPCs, and thus won't inherently work for other entities.
---@return boolean
function Entity:OnGround(  ) end
--- Tests whether the damage passes the entity filter.
--- 
--- This will call [ENTITY:PassesDamageFilter](/gmod/ENTITY:PassesDamageFilter) on scripted entities of the type "filter".
---@param dmg CTakeDamageInfo The damage info to test 
---@return boolean
function Entity:PassesDamageFilter( dmg ) end
--- Tests whether the entity passes the entity filter.
--- 
--- This will call [ENTITY:PassesFilter](/gmod/ENTITY:PassesFilter) on scripted entities of the type "filter".
---@param caller Entity The initiator of the test.    For example the trigger this filter entity is used in. 
---@param ent Entity The entity to test against the entity filter. 
---@return boolean
function Entity:PassesFilter( caller, ent ) end
--- Destroys the current physics object of an entity.
function Entity:PhysicsDestroy(  ) end
--- Initializes the physics mesh of the entity from a triangle soup defined by a table of vertices. The resulting mesh is hollow, may contain holes, and always has a volume of 0.
--- 
--- While this is very useful for static geometry such as terrain displacements, it is advised to use [Entity:PhysicsInitConvex](/gmod/Entity:PhysicsInitConvex) or [Entity:PhysicsInitMultiConvex](/gmod/Entity:PhysicsInitMultiConvex) for moving solid objects instead.
--- 
--- [Entity:EnableCustomCollisions](/gmod/Entity:EnableCustomCollisions) needs to be called if you want players to collide with the entity correctly.
---@param vertices table A table consisting of [MeshVertex](/gmod/Structures/MeshVertex) (only the `pos` element is taken into account). Every 3 vertices define a triangle in the physics mesh. 
---@return boolean
function Entity:PhysicsFromMesh( vertices ) end
--- Initializes the [physics object](/gmod/Entity:GetPhysicsObject) of the entity using its current [model](/gmod/Entity:GetModel). Deletes the previous physics object if it existed and the new object creation was successful.
--- 
--- If the entity's current model has no physics mesh associated to it, no physics object will be created and the previous object will still exist, if applicable.
---@param solidType number The solid type of the physics object to create, see [SOLID](/gmod/Enums/SOLID). Should be `SOLID_VPHYSICS` in most cases. 
---@return boolean
function Entity:PhysicsInit( solidType ) end
--- Makes the physics object of the entity a AABB.
--- 
--- This function will automatically destroy any previous physics objects and do the following:
--- * [Entity:SetSolid](/gmod/Entity:SetSolid)( SOLID_BBOX )
--- * [Entity:SetMoveType](/gmod/Entity:SetMoveType)( MOVETYPE_VPHYSICS )
--- * [Entity:SetCollisionBounds](/gmod/Entity:SetCollisionBounds)( mins, maxs )
---@param mins Vector The minimum position of the box. This is automatically ordered with the maxs. 
---@param maxs Vector The maximum position of the box. This is automatically ordered with the mins. 
---@return boolean
function Entity:PhysicsInitBox( mins, maxs ) end
--- Initializes the physics mesh of the entity with a convex mesh defined by a table of points. The resulting mesh is the  of all the input points. If successful, the previous physics object will be removed.
--- 
--- This is the standard way of creating moving physics objects with a custom convex shape. For more complex, concave shapes, see [Entity:PhysicsInitMultiConvex](/gmod/Entity:PhysicsInitMultiConvex).
---@param points table A table of eight [Vector](/gmod/Vector)s, in local coordinates, to be used in the computation of the convex mesh. Order does not matter. 
---@return boolean
function Entity:PhysicsInitConvex( points ) end
--- An advanced version of [Entity:PhysicsInitConvex](/gmod/Entity:PhysicsInitConvex) which initializes a physics object from multiple convex meshes. This should be used for physics objects with a custom shape which cannot be represented by a single convex mesh.
--- 
--- If successful, the previous physics object will be removed.
---@param vertices table A table consisting of tables of [Vector](/gmod/Vector)s. Each sub-table defines a set of points to be used in the computation of one convex mesh. 
---@return boolean
function Entity:PhysicsInitMultiConvex( vertices ) end
--- Initializes the entity's physics object as a physics shadow. Removes the previous physics object if successful. This is used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.
--- 
--- A physics shadow can be used to have static entities that never move by setting both arguments to false.
---@param allowPhysicsMovement? boolean Whether to allow the physics shadow to move under stress. 
---@param allowPhysicsRotation? boolean Whether to allow the physics shadow to rotate under stress. 
---@return boolean
function Entity:PhysicsInitShadow( allowPhysicsMovement, allowPhysicsRotation ) end
--- Makes the physics object of the entity a sphere.
--- 
--- This function will automatically destroy any previous physics objects and do the following:
--- * [Entity:SetSolid](/gmod/Entity:SetSolid)( SOLID_BBOX )
--- * [Entity:SetMoveType](/gmod/Entity:SetMoveType)( MOVETYPE_VPHYSICS )
---@param radius number The radius of the sphere. 
---@param physmat string Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) or added with [physenv.AddSurfaceData](/gmod/physenv.AddSurfaceData). 
---@return boolean
function Entity:PhysicsInitSphere( radius, physmat ) end
--- Initializes a static physics object of the entity using its [current model](/gmod/Entity:GetModel). If successful, the previous physics object is removed.
--- 
--- This is what used by entities such as func_breakable, prop_dynamic, item_suitcharger, prop_thumper and npc_rollermine while it is in its "buried" state in the Half-Life 2 Campaign.
--- 
--- If the entity's current model has no physics mesh associated to it, no physics object will be created.
---@param solidType number The solid type of the physics object to create, see [SOLID](/gmod/Enums/SOLID). Should be SOLID_VPHYSICS in most cases. 
---@return boolean
function Entity:PhysicsInitStatic( solidType ) end
--- Wakes up the entity's physics object
function Entity:PhysWake(  ) end
--- Makes the entity play a .vcd scene. [All scenes from Half-Life 2](https://developer.valvesoftware.com/wiki/Half-Life_2_Scenes_List).
---@param scene string Filepath to scene. 
---@param delay? number Delay in seconds until the scene starts playing. 
---@return number
---@return Entity
function Entity:PlayScene( scene, delay ) end
--- Changes an entities angles so that it faces the target entity.
---@param target Entity The entity to face. 
function Entity:PointAtEntity( target ) end
--- Precaches gibs for the entity's model.
--- 
--- Normally this function should be ran when the entity is spawned, for example the [ENTITY:Initialize](/gmod/ENTITY:Initialize), after [Entity:SetModel](/gmod/Entity:SetModel) is called.
--- 
--- This is required for [Entity:GibBreakServer](/gmod/Entity:GibBreakServer) and [Entity:GibBreakClient](/gmod/Entity:GibBreakClient) to work.
---@return number
function Entity:PrecacheGibs(  ) end
--- Normalizes the ragdoll. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity.
function Entity:RagdollSolve(  ) end
--- Sets the function to build the ragdoll. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity.
function Entity:RagdollStopControlling(  ) end
--- Makes the physics objects follow the set bone positions. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity.
function Entity:RagdollUpdatePhysics(  ) end
--- Removes the entity it is used on. The entity will be removed at the start of next tick.
function Entity:Remove(  ) end
--- Removes all decals from the entities surface.
function Entity:RemoveAllDecals(  ) end
--- Removes and stops all gestures.
function Entity:RemoveAllGestures(  ) end
--- Removes a callback previously added with [Entity:AddCallback](/gmod/Entity:AddCallback)
---@param hook string The hook name to remove. See [Entity Callbacks](/gmod/Entity%20Callbacks) 
---@param callbackid number The callback id previously retrieved with the return of [Entity:AddCallback](/gmod/Entity:AddCallback) or [Entity:GetCallbacks](/gmod/Entity:GetCallbacks) 
function Entity:RemoveCallback( hook, callbackid ) end
--- Removes a function previously added via [Entity:CallOnRemove](/gmod/Entity:CallOnRemove).
---@param identifier string Identifier of the function within CallOnRemove 
function Entity:RemoveCallOnRemove( identifier ) end
--- Removes an engine effect applied to an entity.
---@param effect number The effect to remove, see [EF](/gmod/Enums/EF). 
function Entity:RemoveEffects( effect ) end
--- Removes specified engine flag
---@param flag number The flag to remove, see [EFL](/gmod/Enums/EFL) 
function Entity:RemoveEFlags( flag ) end
--- Removes specified flag(s) from the entity
---@param flag number The flag(s) to remove, see [FL](/gmod/Enums/FL) 
function Entity:RemoveFlags( flag ) end
--- Removes a [PhysObj](/gmod/PhysObj)ect from the entity's motion controller so that [ENTITY:PhysicsSimulate](/gmod/ENTITY:PhysicsSimulate) will no longer be called for given [PhysObj](/gmod/PhysObj)ect.
--- 
--- You must first create a motion controller with [Entity:StartMotionController](/gmod/Entity:StartMotionController).
---@param physObj PhysObj The [PhysObj](/gmod/PhysObj) to remove from the motion controller. 
function Entity:RemoveFromMotionController( physObj ) end
--- Removes and stops the gesture with given activity.
---@param activity number The activity remove. See [ACT](/gmod/Enums/ACT). 
function Entity:RemoveGesture( activity ) end
--- Breaks internal Ragdoll constrains, so you can for example separate an arm from the body of a ragdoll and preserve all physics.
--- 
--- The visual mesh will still stretch as if it was properly connected unless the ragdoll model is specifically designed to avoid that.
---@param num? number Which constraint to break, values below 0 mean break them all 
function Entity:RemoveInternalConstraint( num ) end
--- Removes solid flag(s) from the entity.
---@param flags number The flag(s) to remove, see [FSOLID](/gmod/Enums/FSOLID). 
function Entity:RemoveSolidFlags( flags ) end
--- Plays an animation on the entity. This may not always work on engine entities.
---@param sequence number The sequence to play. Also accepts strings. 
function Entity:ResetSequence( sequence ) end
--- Reset entity sequence info such as playback rate, ground speed, last event check, etc.
function Entity:ResetSequenceInfo(  ) end
--- Makes the entity/weapon respawn.
--- 
--- Only usable on HL2 pickups and any weapons. Seems to be buggy with weapons.
--- Very unreliable.
function Entity:Respawn(  ) end
--- Restarts the entity's animation gesture. If the given gesture is already playing, it will reset it and play it from the beginning.
---@param activity number The activity number to send to the entity. See [ACT](/gmod/Enums/ACT) and [Entity:GetSequenceActivity](/gmod/Entity:GetSequenceActivity) 
---@param addIfMissing? boolean Add/start the gesture to if it has not been yet started. 
---@param autokill? boolean
function Entity:RestartGesture( activity, addIfMissing, autokill ) end
--- Returns sequence ID corresponding to given activity ID.
--- 
--- Opposite of [Entity:GetSequenceActivity](/gmod/Entity:GetSequenceActivity).
--- 
--- Similar to [Entity:LookupSequence](/gmod/Entity:LookupSequence).
--- 
--- See also [Entity:SelectWeightedSequenceSeeded](/gmod/Entity:SelectWeightedSequenceSeeded).
---@param act number The activity ID, see [ACT](/gmod/Enums/ACT). 
---@return number
function Entity:SelectWeightedSequence( act ) end
--- Returns the sequence ID corresponding to given activity ID, and uses the provided seed for random selection. The seed should be the same server-side and client-side if used in a predicted environment.
--- 
--- See [Entity:SelectWeightedSequence](/gmod/Entity:SelectWeightedSequence) for a provided-seed version of this function.
---@param act number The activity ID, see [ACT](/gmod/Enums/ACT). 
---@param seed number The seed to use for randomly selecting a sequence in the case the activity ID has multiple sequences bound to it. [Entity:SelectWeightedSequence](/gmod/Entity:SelectWeightedSequence) uses the same seed as [util.SharedRandom](/gmod/util.SharedRandom) internally for this. 
---@return number
function Entity:SelectWeightedSequenceSeeded( act, seed ) end
--- Sends sequence animation to the view model. It is recommended to use this for view model animations, instead of [Entity:ResetSequence](/gmod/Entity:ResetSequence).
--- 
--- This function is only usable on view models.
---@param seq number The sequence ID returned by [Entity:LookupSequence](/gmod/Entity:LookupSequence) or  [Entity:SelectWeightedSequence](/gmod/Entity:SelectWeightedSequence). 
function Entity:SendViewModelMatchingSequence( seq ) end
--- Returns length of currently played sequence.
---@param seqid? number A sequence ID to return the length specific sequence of instead of the entity's main/currently playing sequence. 
---@return number
function Entity:SequenceDuration( seqid ) end
--- Sets the entity's velocity.
---@param velocity Vector The new velocity to set. 
function Entity:SetAbsVelocity( velocity ) end
--- Sets the angles of the entity.
---@param angles Angle The new angles. 
function Entity:SetAngles( angles ) end
--- Sets a player's third-person animation. Mainly used by [Weapon](/gmod/Weapon)s to start the player's weapon attack and reload animations.
---@param playerAnim number Player animation, see [PLAYER](/gmod/Enums/PLAYER). 
function Entity:SetAnimation( playerAnim ) end
--- Sets the start time (relative to [CurTime](/gmod/Global.CurTime)) of the current animation, which is used to determine [Entity:GetCycle](/gmod/Entity:GetCycle). Should be less than CurTime to play an animation from the middle.
---@param time number The time the animation was supposed to begin. 
function Entity:SetAnimTime( time ) end
--- Parents the sprite to an attachment on another model.
--- 
--- Works only on env_sprite.
--- 
--- Despite existing on client, it doesn't actually do anything on client.
---@param ent Entity The entity to attach/parent to 
---@param attachment number The attachment ID to parent to 
function Entity:SetAttachment( ent, attachment ) end
--- Sets the blood color this entity uses.
---@param bloodColor number An integer corresponding to [BLOOD_COLOR](/gmod/Enums/BLOOD_COLOR). 
function Entity:SetBloodColor( bloodColor ) end
--- Sets an entities' bodygroup.
---@param bodygroup number The id of the bodygroup you're setting. Starts from 0. 
---@param value number The value you're setting the bodygroup to. Starts from 0. 
function Entity:SetBodygroup( bodygroup, value ) end
--- Sets the bodygroups from a string. A convenience function for [Entity:SetBodygroup](/gmod/Entity:SetBodygroup).
---@param bodygroups string Body groups to set. Each single-digit number in the string represents a separate bodygroup. **This makes it impossible to set any bodygroup to a value higher than 9!** For that you need to use [Entity:SetBodygroup](/gmod/Entity:SetBodygroup). 
function Entity:SetBodyGroups( bodygroups ) end
--- Sets the specified value on the bone controller with the given ID of this entity, it's used in HL1 to change the head rotation of NPCs, turret aiming and so on.
---@param boneControllerID number The ID of the bone controller to set the value to.  Goes from 0 to 3. 
---@param value number The value to set on the specified bone controller. 
function Entity:SetBoneController( boneControllerID, value ) end
--- Sets the bone matrix of given bone to given matrix. See also [Entity:GetBoneMatrix](/gmod/Entity:GetBoneMatrix).
---@param boneid number The ID of the bone 
---@param matrix VMatrix The matrix to set. 
function Entity:SetBoneMatrix( boneid, matrix ) end
--- Sets the bone position and angles.
---@param bone number The bone ID to manipulate 
---@param pos Vector The position to set 
---@param ang Angle The angles to set 
function Entity:SetBonePosition( bone, pos, ang ) end
--- Sets the collision bounds for the entity, which are used for triggers ( [Entity:SetTrigger](/gmod/Entity:SetTrigger), [ENTITY:Touch](/gmod/ENTITY:Touch) ), and collision ( If [Entity:SetSolid](/gmod/Entity:SetSolid) set as [SOLID_BBOX](/gmod/Enums/SOLID) ).
--- 
--- Input bounds are relative to [Entity:GetPos](/gmod/Entity:GetPos)! 
--- See also [Entity:SetCollisionBoundsWS](/gmod/Entity:SetCollisionBoundsWS).
---@param mins Vector The minimum vector of the bounds. The vector must be smaller than second argument on all axises. 
---@param maxs Vector The maximum vector of the bounds. The vector must be bigger than first argument on all axises. 
function Entity:SetCollisionBounds( mins, maxs ) end
--- Sets the collision bounds for the entity, which are used for triggers ( [Entity:SetTrigger](/gmod/Entity:SetTrigger), [ENTITY:Touch](/gmod/ENTITY:Touch) ), determining if rendering is necessary clientside, and collision ( If [Entity:SetSolid](/gmod/Entity:SetSolid) set as [SOLID_BBOX](/gmod/Enums/SOLID) ).
--- 
--- Input bounds are in world coordinates!
--- See also [Entity:SetCollisionBounds](/gmod/Entity:SetCollisionBounds).
---@param vec1 Vector The first vector of the bounds. 
---@param vec2 Vector The second vector of the bounds. 
function Entity:SetCollisionBoundsWS( vec1, vec2 ) end
--- Sets the entity's collision group.
---@param group number Collision group of the entity, see [COLLISION_GROUP](/gmod/Enums/COLLISION_GROUP) 
function Entity:SetCollisionGroup( group ) end
--- Sets the color of an entity.
--- 
--- Some entities may need a custom [render mode](Enums/RENDERMODE) set for transparency to work. See example 2.
--- Entities also must have a proper [render group](Enums/RENDERGROUP) set for transparency to work.
---@param color? table The color to set. Uses the [Color](/gmod/Color). 
function Entity:SetColor( color ) end
--- Sets the creator of the Entity. This is set automatically in Sandbox gamemode when spawning SENTs, but is never used/read by default.
---@param ply Player The creator 
function Entity:SetCreator( ply ) end
--- Marks the entity to call [GM:ShouldCollide](/gmod/GM:ShouldCollide). Not to be confused with [Entity:EnableCustomCollisions](/gmod/Entity:EnableCustomCollisions).
---@param enable boolean Enable or disable the custom collision check 
function Entity:SetCustomCollisionCheck( enable ) end
--- Sets the progress of the current animation to a specific value between 0 and 1.
---@param value number The desired cycle value 
function Entity:SetCycle( value ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Sets the specified angle on the entity's datatable.
---@param key number Goes from 0 to 31. 
---@param ang Angle The angle to write on the entity's datatable. 
function Entity:SetDTAngle( key, ang ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Sets the specified bool on the entity's datatable.
---@param key number Goes from 0 to 31. 
---@param bool boolean The boolean to write on the entity's metatable. 
function Entity:SetDTBool( key, bool ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Sets the specified entity on this entity's datatable.
---@param key number Goes from 0 to 31. 
---@param ent Entity The entity to write on this entity's datatable. 
function Entity:SetDTEntity( key, ent ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Sets the specified float on the entity's datatable.
---@param key number Goes from 0 to 31. 
---@param float number The float to write on the entity's datatable. 
function Entity:SetDTFloat( key, float ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Sets the specified integer on the entity's datatable.
---@param key number Goes from 0 to 31. 
---@param integer number The integer to write on the entity's datatable. This will be cast to a 32-bit signed integer internally. 
function Entity:SetDTInt( key, integer ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Sets the specified string on the entity's datatable.
---@param key number Goes from 0 to 3. 
---@param str string The string to write on the entity's datatable, can't be more than 512 characters per string. 
function Entity:SetDTString( key, str ) end
--- This is called internally by the [Entity:NetworkVar](/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- 
--- Sets the specified vector on the entity's datatable.
---@param key number Goes from 0 to 31. 
---@param vec Vector The vector to write on the entity's datatable. 
function Entity:SetDTVector( key, vec ) end
--- Sets the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding.
---@param elasticity number The elasticity to set. 
function Entity:SetElasticity( elasticity ) end
--- Allows you to set the Start or End entity attachment for the rope.
---@param name string The name of the variable to modify.  Accepted names are StartEntity and EndEntity. 
---@param entity Entity The entity to apply to the specific attachment. 
function Entity:SetEntity( name, entity ) end
--- Sets the position an entity's eyes look toward.
---@param pos Vector The world position the entity is looking toward. 
function Entity:SetEyeTarget( pos ) end
--- Sets the flex scale of the entity.
---@param scale number The new flex scale to set to 
function Entity:SetFlexScale( scale ) end
--- Sets the flex weight.
---@param flex number The ID of the flex to modify weight of 
---@param weight number The new weight to set 
function Entity:SetFlexWeight( flex, weight ) end
--- Sets how much friction an entity has when sliding against a surface. Entities default to 1 (100%) and can be higher or even negative.
---@param friction number Friction multiplier 
function Entity:SetFriction( friction ) end
--- Sets the gravity multiplier of the entity.
---@param gravityMultiplier number Value which specifies the gravity multiplier. 
function Entity:SetGravity( gravityMultiplier ) end
--- Sets the ground the entity is standing on.
---@param ground Entity The ground entity. 
function Entity:SetGroundEntity( ground ) end
--- Sets the health of the entity.
---@param newHealth number New health value. 
function Entity:SetHealth( newHealth ) end
--- Sets the current Hitbox set for the entity.
---@param id number The new hitbox set to set. Can be a name as a [string](/gmod/string), or the ID as a [number](/gmod/number).    If the operation failed, the function will silently fail. 
function Entity:SetHitboxSet( id ) end
--- Enables or disable the inverse kinematic usage of this entity.
---@param useIK? boolean The state of the IK. 
function Entity:SetIK( useIK ) end
--- Sets Hammer key values on an entity.
--- 
--- You can look up which entities have what key values on the [Valve Developer Community](https://developer.valvesoftware.com/wiki/) on entity pages.
--- 
--- A  list of basic entities can be found [here](https://developer.valvesoftware.com/wiki/List_of_entities).
--- 
--- Alternatively you can look at the .fgd files shipped with Garry's Mod in the bin/ folder with a text editor to see the key values as they appear in Hammer.
---@param key string The internal key name 
---@param value string The value to set 
function Entity:SetKeyValue( key, value ) end
--- This allows the entity to be lag compensated during [Player:LagCompensation](/gmod/Player:LagCompensation).
--- 
--- 
--- 
--- As a side note for parented entities, if your entity can be shot at, keep in mind that its collision bounds need to be bigger than the bone's hitbox the entity is parented to, or hull/line traces ( such as the crowbar attack or bullets ) might not hit at all.
---@param enable boolean Whether the entity should be lag compensated or not. 
function Entity:SetLagCompensated( enable ) end
---@param layerID number The Layer ID 
---@param blendIn number
function Entity:SetLayerBlendIn( layerID, blendIn ) end
---@param layerID number The Layer ID 
---@param blendOut number
function Entity:SetLayerBlendOut( layerID, blendOut ) end
--- Sets the animation cycle/frame of given layer.
---@param layerID number The Layer ID 
---@param cycle number The new animation cycle/frame for given layer. 
function Entity:SetLayerCycle( layerID, cycle ) end
--- Sets the duration of given layer. This internally overrides the [Entity:SetLayerPlaybackRate](/gmod/Entity:SetLayerPlaybackRate).
---@param layerID number The Layer ID 
---@param duration number The new duration of the layer in seconds. 
function Entity:SetLayerDuration( layerID, duration ) end
--- Sets whether the layer should loop or not.
---@param layerID number The Layer ID 
---@param loop boolean Whether the layer should loop or not. 
function Entity:SetLayerLooping( layerID, loop ) end
--- Sets the layer playback rate. See also [Entity:SetLayerDuration](/gmod/Entity:SetLayerDuration).
---@param layerID number The Layer ID 
---@param rate number The new playback rate. 
function Entity:SetLayerPlaybackRate( layerID, rate ) end
--- Sets the priority of given layer.
---@param layerID number The Layer ID 
---@param priority number The new priority of the layer. 
function Entity:SetLayerPriority( layerID, priority ) end
--- Sets the sequence of given layer.
---@param layerID number The Layer ID. 
---@param seq number The sequenceID to set. See [Entity:LookupSequence](/gmod/Entity:LookupSequence). 
function Entity:SetLayerSequence( layerID, seq ) end
--- Sets the layer weight. This influences how strongly the animation should be overriding the normal animations of the entity.
---@param layerID number The Layer ID 
---@param weight number The new layer weight. 
function Entity:SetLayerWeight( layerID, weight ) end
--- This forces an entity to use the bone transformation behaviour from versions prior to **8 July 2014**.
--- 
--- This behaviour affects [Entity:EnableMatrix](/gmod/Entity:EnableMatrix) and [Entity:SetModelScale](/gmod/Entity:SetModelScale) and is incorrect, therefore this function be used exclusively as a quick fix for old scripts that rely on it.
---@param enabled boolean Whether the entity should use the old bone transformation behaviour or not. 
function Entity:SetLegacyTransform( enabled ) end
--- Sets the entity to be used as the light origin position for this entity.
---@param lightOrigin Entity The lighting entity. 
function Entity:SetLightingOriginEntity( lightOrigin ) end
--- Sets angles relative to angles of [Entity:GetParent](/gmod/Entity:GetParent)
---@param ang Angle The local angle 
function Entity:SetLocalAngles( ang ) end
--- Sets the entity's angular velocity (rotation speed).
---@param angVel Angle The angular velocity to set. 
function Entity:SetLocalAngularVelocity( angVel ) end
--- Sets local position relative to the parented position. This is for use with [Entity:SetParent](/gmod/Entity:SetParent) to offset position.
---@param pos Vector The local position 
function Entity:SetLocalPos( pos ) end
--- Sets the entity's local velocity which is their velocity due to movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision or other world movement.
---@param velocity Vector The new velocity to set. 
function Entity:SetLocalVelocity( velocity ) end
--- Sets the Level Of Detail model to use with this entity. This may not work for all models if the model doesn't include any LOD sub models.
--- 
--- This function works exactly like the clientside r_lod convar and takes priority over it.
---@param lod? number The Level Of Detail model ID to use. -1 leaves the engine to automatically set the Level of Detail.    The Level Of Detail may range from 0 to 8, with 0 being the highest quality and 8 the lowest. 
function Entity:SetLOD( lod ) end
--- Sets the rendering material override of the entity.
--- 
--- To set a Lua material created with [CreateMaterial](/gmod/Global.CreateMaterial), just prepend a "!" to the material name.
--- 
--- If you wish to override a single material on the model, use [Entity:SetSubMaterial](/gmod/Entity:SetSubMaterial) instead.
---@param materialName string New material name. Use an empty string ("") to reset to the default materials. 
function Entity:SetMaterial( materialName ) end
--- Sets the maximum health for entity. Note, that you can still set entity's health above this amount with [Entity:SetHealth](/gmod/Entity:SetHealth).
---@param maxhealth number What the max health should be 
function Entity:SetMaxHealth( maxhealth ) end
--- Sets the NPC max yaw speed. Internally sets the `m_fMaxYawSpeed` variable which is polled by the engine.
---@param maxyaw number The new max yaw value to set 
function Entity:SetMaxYawSpeed( maxyaw ) end
--- Sets the model of the entity.
--- 
--- This does not update the physics of the entity - see [Entity:PhysicsInit](/gmod/Entity:PhysicsInit).
---@param modelName string New model value. 
function Entity:SetModel( modelName ) end
--- Alter the model name returned by [Entity:GetModel](/gmod/Entity:GetModel). Does not affect the entity's actual model.
---@param modelname string The new model name. 
function Entity:SetModelName( modelname ) end
--- Scales the model of the entity, if the entity is a [Player](/gmod/Player) or an [NPC](/gmod/NPC) the hitboxes will be scaled as well.
--- 
--- For some entities, calling [Entity:Activate](/gmod/Entity:Activate) after this will scale the collision bounds and [PhysObj](/gmod/PhysObj) as well; be wary as there's no optimization being done internally and highly complex collision models might crash the server.
--- 
--- This is the same system used in TF2 for the Mann Vs Machine robots.
--- 
--- To resize the entity along any axis, use [Entity:EnableMatrix](/gmod/Entity:EnableMatrix) instead.
--- 
--- If your old scales are wrong, use [Entity:SetLegacyTransform](/gmod/Entity:SetLegacyTransform) as a quick fix.
---@param scale number A float to scale the model by. 0 will not draw anything. A number less than 0 will draw the model inverted. 
---@param deltaTime? number Transition time of the scale change, set to 0 to modify the scale right away. 
function Entity:SetModelScale( scale, deltaTime ) end
--- Sets the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide?
---@param moveCollideType number The move collide type, see [MOVECOLLIDE](/gmod/Enums/MOVECOLLIDE) 
function Entity:SetMoveCollide( moveCollideType ) end
--- Sets the Movement Parent of an entity to another entity.
--- 
--- Similar to [Entity:SetParent](/gmod/Entity:SetParent), except the object's coordinates are not translated automatically before parenting.
---@param Parent Entity The entity to change this entity's Movement Parent to. 
function Entity:SetMoveParent( Parent ) end
--- Sets the entity's move type. This should be called before initializing the physics object on the entity, unless it will override SetMoveType such as [Entity:PhysicsInitBox](/gmod/Entity:PhysicsInitBox).
--- 
--- Despite existing on client, it doesn't actually do anything on client.
---@param movetype number The new movetype, see [MOVETYPE](/gmod/Enums/MOVETYPE) 
function Entity:SetMoveType( movetype ) end
--- Sets the mapping name of the entity.
---@param mappingName string The name to set for the entity. 
function Entity:SetName( mappingName ) end
--- Alters the entity's perceived serverside angle on the client.
---@param angle Angle Networked angle. 
function Entity:SetNetworkAngles( angle ) end
--- Sets a networked angle value at specified index on the entity.
--- 
--- The value then can be accessed with [Entity:GetNetworkedAngle](/gmod/Entity:GetNetworkedAngle) both from client and server.
---@param key string The key to associate the value with 
---@param value? Angle The value to set 
function Entity:SetNetworkedAngle( key, value ) end
--- Sets a networked boolean value at specified index on the entity.
--- 
--- The value then can be accessed with [Entity:GetNetworkedBool](/gmod/Entity:GetNetworkedBool) both from client and server.
---@param key string The key to associate the value with 
---@param value? boolean The value to set 
function Entity:SetNetworkedBool( key, value ) end
--- Sets a networked entity value at specified index on the entity.
--- 
--- The value then can be accessed with [Entity:GetNetworkedEntity](/gmod/Entity:GetNetworkedEntity) both from client and server.
---@param key string The key to associate the value with 
---@param value? Entity The value to set 
function Entity:SetNetworkedEntity( key, value ) end
--- Sets a networked float value at specified index on the entity.
--- 
--- The value then can be accessed with [Entity:GetNetworkedFloat](/gmod/Entity:GetNetworkedFloat) both from client and server.
--- 
--- Seems to be the same as [Entity:GetNetworkedInt](/gmod/Entity:GetNetworkedInt).
---@param key string The key to associate the value with 
---@param value? number The value to set 
function Entity:SetNetworkedFloat( key, value ) end
--- Sets a networked integer value at specified index on the entity.
--- 
--- The value then can be accessed with [Entity:GetNetworkedInt](/gmod/Entity:GetNetworkedInt) both from client and server.
---@param key string The key to associate the value with 
---@param value? number The value to set 
function Entity:SetNetworkedInt( key, value ) end
--- Sets a networked number at the specified index on the entity.
---@param index any The index that the value is stored in. 
---@param number number The value to network. 
function Entity:SetNetworkedNumber( index, number ) end
--- Sets a networked string value at specified index on the entity.
--- 
--- The value then can be accessed with [Entity:GetNetworkedString](/gmod/Entity:GetNetworkedString) both from client and server.
---@param key string The key to associate the value with 
---@param value string The value to set 
function Entity:SetNetworkedString( key, value ) end
--- Sets callback function to be called when given NWVar changes.
---@param name string The name of the NWVar to add callback for. 
---@param callback function The function to be called when the NWVar changes. 
function Entity:SetNetworkedVarProxy( name, callback ) end
--- Sets a networked vector value at specified index on the entity.
--- 
--- The value then can be accessed with [Entity:GetNetworkedVector](/gmod/Entity:GetNetworkedVector) both from client and server.
---@param key string The key to associate the value with 
---@param value? Vector The value to set 
function Entity:SetNetworkedVector( key, value ) end
--- Virtually changes entity position for clients. Does the same thing as [Entity:SetPos](/gmod/Entity:SetPos) when used serverside.
---@param origin Vector The position to make clients think this entity is at. 
function Entity:SetNetworkOrigin( origin ) end
--- Sets the next time the clientside [ENTITY:Think](/gmod/ENTITY:Think) is called.
---@param nextthink number The next time, relative to [CurTime](/gmod/Global.CurTime), to execute the [ENTITY:Think](/gmod/ENTITY:Think) clientside. 
function Entity:SetNextClientThink( nextthink ) end
--- Sets if the entity's model should render at all.
--- 
--- If set on the server, this entity will no longer network to clients, and for all intents and purposes cease to exist clientside.
---@param shouldNotDraw boolean true disables drawing 
function Entity:SetNoDraw( shouldNotDraw ) end
--- Sets whether the entity is solid or not.
---@param IsNotSolid boolean True will make the entity not solid, false will make it solid. 
function Entity:SetNotSolid( IsNotSolid ) end
--- Sets the NPC classification. Internally sets the `m_iClass` variable which is polled by the engine.
---@param classification number The [CLASS Enum](/gmod/Enums/CLASS) 
function Entity:SetNPCClass( classification ) end
--- Sets a networked angle value on the entity.
--- 
--- The value can then be accessed with [Entity:GetNWAngle](/gmod/Entity:GetNWAngle) both from client and server.
---@param key string The key to associate the value with 
---@param value Angle The value to set 
function Entity:SetNWAngle( key, value ) end
--- Sets a networked boolean value on the entity.
--- 
--- The value can then be accessed with [Entity:GetNWBool](/gmod/Entity:GetNWBool) both from client and server.
---@param key string The key to associate the value with 
---@param value boolean The value to set 
function Entity:SetNWBool( key, value ) end
--- Sets a networked entity value on the entity.
--- 
--- The value can then be accessed with [Entity:GetNWEntity](/gmod/Entity:GetNWEntity) both from client and server.
---@param key string The key to associate the value with 
---@param value Entity The value to set 
function Entity:SetNWEntity( key, value ) end
--- Sets a networked float (number) value on the entity.
--- 
--- The value can then be accessed with [Entity:GetNWFloat](/gmod/Entity:GetNWFloat) both from client and server.
--- 
--- Unlike [Entity:SetNWInt](/gmod/Entity:SetNWInt), floats don't have to be whole numbers.
---@param key string The key to associate the value with 
---@param value number The value to set 
function Entity:SetNWFloat( key, value ) end
--- Sets a networked integer (whole number) value on the entity.
--- 
--- The value can then be accessed with [Entity:GetNWInt](/gmod/Entity:GetNWInt) both from client and server.
--- 
--- See [Entity:SetNWFloat](/gmod/Entity:SetNWFloat) for numbers that aren't integers.
---@param key string The key to associate the value with 
---@param value number The value to set 
function Entity:SetNWInt( key, value ) end
--- Sets a networked string value on the entity.
--- 
--- The value can then be accessed with [Entity:GetNWString](/gmod/Entity:GetNWString) both from client and server.
---@param key string The key to associate the value with 
---@param value string The value to set, up to 199 characters. 
function Entity:SetNWString( key, value ) end
--- Sets a function to be called when the NWVar changes.
---@param key any The key of the NWVar to add callback for. 
---@param callback function The function to be called when the NWVar changes. It has 4 arguments:  * [Entity](/gmod/Entity) ent - The entity  * [string](/gmod/string) name - Name of the NWVar that has changed  * [any](/gmod/any) oldval - The old value  * [any](/gmod/any) newval - The new value 
function Entity:SetNWVarProxy( key, callback ) end
--- Sets a networked vector value on the entity.
--- 
--- The value can then be accessed with [Entity:GetNWVector](/gmod/Entity:GetNWVector) both from client and server.
---@param key string The key to associate the value with 
---@param value Vector The value to set 
function Entity:SetNWVector( key, value ) end
--- Sets the owner of this entity, disabling all physics interaction with it.
---@param owner? Entity The entity to be set as owner. 
function Entity:SetOwner( owner ) end
--- Sets the parent of this entity, making it move with its parent. This will make the child entity non solid, nothing can interact with them, including traces.
---@param parent? Entity The entity to parent to. Setting this to nil will clear the parent. 
---@param attachmentId? number The attachment id to use when parenting, defaults to -1 or whatever the parent had set previously. 
function Entity:SetParent( parent, attachmentId ) end
--- Sets the parent of an entity to another entity with the given physics bone number. Similar to [Entity:SetParent](/gmod/Entity:SetParent), except it is parented to a physbone. This function is useful mainly for ragdolls.
---@param bone number Physics bone number to attach to. Use 0 for objects with only one physics bone. (See [Entity:GetPhysicsObjectNum](/gmod/Entity:GetPhysicsObjectNum)) 
function Entity:SetParentPhysNum( bone ) end
--- Sets whether or not the given entity is persistent. A persistent entity will be saved on server shutdown and loaded back when the server starts up. Additionally, by default persistent entities cannot be grabbed with the physgun and tools cannot be used on them.
--- 
--- In sandbox, this can be set on an entity by opening the context menu, right clicking the entity, and choosing "Make Persistent".
---@param persist boolean Whether or not the entity should be persistent. 
function Entity:SetPersistent( persist ) end
--- When called on a constraint entity, sets the two physics objects to be constrained.
--- 
--- Usage is not recommended as the Constraint library provides easier ways to deal with constraints.
---@param Phys1 PhysObj The first physics object to be constrained. 
---@param Phys2 PhysObj The second physics object to be constrained. 
function Entity:SetPhysConstraintObjects( Phys1, Phys2 ) end
--- Sets the player who gets credit if this entity kills something with physics damage within the time limit.
---@param ent Player Player who gets the kills. Setting this to a non-player entity will not work. 
---@param timeLimit? number Time in seconds until the entity forgets its physics attacker and prevents it from getting the kill credit. 
function Entity:SetPhysicsAttacker( ent, timeLimit ) end
--- Allows you to set how fast an entity's animation will play, with 1.0 being the default speed.
---@param fSpeed number How fast the animation will play. 
function Entity:SetPlaybackRate( fSpeed ) end
--- Moves the entity to the specified position.
---@param position Vector The position to move the entity to. 
function Entity:SetPos( position ) end
--- Sets the specified pose parameter to the specified value.
--- 
--- You should call [Entity:InvalidateBoneCache](/gmod/Entity:InvalidateBoneCache) after calling this function.
---@param poseName string Name of the pose parameter. [Entity:GetPoseParameterName](/gmod/Entity:GetPoseParameterName) might come in handy here. 
---@param poseValue number The value to set the pose to. 
function Entity:SetPoseParameter( poseName, poseValue ) end
--- Sets whether an entity should be predictable or not.
--- When an entity is set as predictable, its DT vars can be changed during predicted hooks. This is useful for entities which can be controlled by player input.
--- 
--- Any datatable value that mismatches from the server will be overridden and a prediction error will be spewed.
--- 
--- Weapons are predictable by default, and the drive system uses this function to make the controlled prop predictable as well.
--- 
--- Visit  for a list of all predicted hooks, and the [Prediction](/gmod/Prediction) page.
--- For further technical information on the subject, visit [valve's wiki](https://developer.valvesoftware.com/wiki/Prediction).
---@param setPredictable boolean whether to make this entity predictable or not. 
function Entity:SetPredictable( setPredictable ) end
--- Prevents the server from sending any further information about the entity to a player.
---@param player Player The player to stop networking the entity to. 
---@param stopTransmitting boolean true to stop the entity from networking, false to make it network again. 
function Entity:SetPreventTransmit( player, stopTransmitting ) end
--- Sets the bone angles. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity.
---@param boneid number Bone ID 
---@param pos Angle Angle to set 
function Entity:SetRagdollAng( boneid, pos ) end
--- Sets the function to build the ragdoll. This is used alongside Kinect, for more info see ragdoll_motion entity.
---@param func function The build function. This function has one argument:  * [Entity](/gmod/Entity) ragdoll - The ragdoll to build 
function Entity:SetRagdollBuildFunction( func ) end
--- Sets the bone position. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity.
---@param boneid number Bone ID 
---@param pos Vector Position to set 
function Entity:SetRagdollPos( boneid, pos ) end
--- Sets the render angles of the Entity.
---@param newAngles Angle The new render angles to be set to. 
function Entity:SetRenderAngles( newAngles ) end
--- Sets the render bounds for the entity. For world space coordinates see [Entity:SetRenderBoundsWS](/gmod/Entity:SetRenderBoundsWS).
---@param mins Vector The minimum corner of the bounds, relative to origin of the entity. 
---@param maxs Vector The maximum corner of the bounds, relative to origin of the entity. 
---@param add? Vector If defined, adds this vector to maxs and subtracts this vector from mins. 
function Entity:SetRenderBounds( mins, maxs, add ) end
--- Sets the render bounds for the entity in world space coordinates. For relative coordinates see [Entity:SetRenderBounds](/gmod/Entity:SetRenderBounds).
---@param mins Vector The minimum corner of the bounds, relative to origin of the world/map. 
---@param maxs Vector The maximum corner of the bounds, relative to origin of the world/map. 
---@param add? Vector If defined, adds this vector to maxs and subtracts this vector from mins. 
function Entity:SetRenderBoundsWS( mins, maxs, add ) end
--- Used to specify a plane, past which an object will be visually clipped.
---@param planeNormal Vector The normal of the plane. Anything behind the normal will be clipped. 
---@param planePosition number The position of the plane. 
function Entity:SetRenderClipPlane( planeNormal, planePosition ) end
--- Enables the use of clipping planes to "cut" objects.
---@param enabled boolean Enable or disable clipping planes 
function Entity:SetRenderClipPlaneEnabled( enabled ) end
--- Sets entity's render FX.
---@param renderFX number The new render FX to set, see [kRenderFx](/gmod/Enums/kRenderFx) 
function Entity:SetRenderFX( renderFX ) end
--- Sets the render mode of the entity.
---@param renderMode number New render mode to set, see [RENDERMODE](/gmod/Enums/RENDERMODE). 
function Entity:SetRenderMode( renderMode ) end
--- Set the origin in which the Entity will be drawn from.
---@param newOrigin Vector The new origin in world coordinates where the Entity's model will now be rendered from. 
function Entity:SetRenderOrigin( newOrigin ) end
--- Sets a save value for an entity. You can see a full list of an entity's save values by creating it and printing [Entity:GetSaveTable](/gmod/Entity:GetSaveTable)().
--- 
--- See [Entity:GetInternalVariable](/gmod/Entity:GetInternalVariable) for the opposite of this function.
---@param name string Name of the save value to set 
---@param value any Value to set 
---@return boolean
function Entity:SetSaveValue( name, value ) end
--- Sets the entity's model sequence.
--- 
--- If the specified sequence is already active, the animation will not be restarted. See [Entity:ResetSequence](/gmod/Entity:ResetSequence) for a function that restarts the animation even if it is already playing.
--- 
--- In some cases you want to run [Entity:ResetSequenceInfo](/gmod/Entity:ResetSequenceInfo) to make this function run.
---@param sequenceId number The sequence to play. Also accepts strings. 
function Entity:SetSequence( sequenceId ) end
--- Sets whether or not the entity should make a physics contact sound when it's been picked up by a player.
---@param playsound? boolean True to play the pickup sound, false otherwise. 
function Entity:SetShouldPlayPickupSound( playsound ) end
--- Sets if entity should create a server ragdoll on death or a client one.
---@param serverragdoll boolean Set `true` if ragdoll should be created on server, `false` if on client. 
function Entity:SetShouldServerRagdoll( serverragdoll ) end
--- Sets the skin of the entity.
---@param skinIndex number 0-based index of the skin to use. 
function Entity:SetSkin( skinIndex ) end
--- Sets the solidity of an entity.
---@param solid_type number The solid type. See the [SOLID](/gmod/Enums/SOLID). 
function Entity:SetSolid( solid_type ) end
--- Sets solid flag(s) for the entity.
--- 
--- This overrides any other flags the entity might have had. See [Entity:AddSolidFlags](/gmod/Entity:AddSolidFlags) for adding flags.
---@param flags number The flag(s) to set, see [FSOLID](/gmod/Enums/FSOLID). 
function Entity:SetSolidFlags( flags ) end
--- Sets whether the entity should use a spawn effect when it is created on the client.
--- 
--- See [Entity:GetSpawnEffect](/gmod/Entity:GetSpawnEffect) for more information on how the effect is applied.
---@param spawnEffect boolean Sets if we should show a spawn effect. 
function Entity:SetSpawnEffect( spawnEffect ) end
--- Overrides a single material on the model of this entity.
--- 
--- To set a Lua material created with [CreateMaterial](/gmod/Global.CreateMaterial), just prepend a "!" to the material name.
---@param index? number Index of the material to override, acceptable values are from 0 to 31.    Indexes are by [Entity:GetMaterials](/gmod/Entity:GetMaterials), but you have to subtract 1 from them.    If called with no arguments, all sub materials will be reset. 
---@param material? string The material to override the default one with. Set to nil to revert to default material. 
function Entity:SetSubMaterial( index, material ) end
--- Changes the table that can be accessed by indexing an entity. Each entity starts with its own table by default.
---@param tab table Table for the entity to use 
function Entity:SetTable( tab ) end
--- When this flag is set the entity will only transmit to the player when its parent is transmitted. This is useful for things like viewmodel attachments since without this flag they will transmit to everyone (and cause the viewmodels to transmit to everyone too).
---@param onoff boolean Will set the TransmitWithParent flag on or off 
function Entity:SetTransmitWithParent( onoff ) end
--- Marks the entity as a trigger, so it will generate [ENTITY:StartTouch](/gmod/ENTITY:StartTouch), [ENTITY:Touch](/gmod/ENTITY:Touch) and [ENTITY:EndTouch](/gmod/ENTITY:EndTouch) callbacks.
--- 
--- Internally this is stored as [FSOLID_TRIGGER](/gmod/Enums/FSOLID) flag.
---@param maketrigger boolean Make the entity trigger or not 
function Entity:SetTrigger( maketrigger ) end
--- Sets whether an entity can be unfrozen, meaning that it cannot be unfrozen using the physgun.
---@param freezable? boolean True to make the entity unfreezable, false otherwise. 
function Entity:SetUnFreezable( freezable ) end
--- Forces the entity to reconfigure its bones. You might need to call this after changing your model's scales or when manually drawing the entity multiple times at different positions.
function Entity:SetupBones(  ) end
--- Initializes the class names of an entity's phoneme mappings (mouth movement data). This is called by default with argument "phonemes" when a flex-based entity (such as an [NPC](/gmod/NPC)) is created.
---@param fileRoot string The file prefix of the phoneme mappings (relative to "garrysmod/expressions/"). 
function Entity:SetupPhonemeMappings( fileRoot ) end
--- Sets the use type of an entity, affecting how often [ENTITY:Use](/gmod/ENTITY:Use) will be called for Lua entities.
---@param useType number The use type to apply to the entity. Uses [_USE](/gmod/Enums/_USE). 
function Entity:SetUseType( useType ) end
--- Allows to quickly set variable to entity's [Entity:GetTable](/gmod/Entity:GetTable).
---@param key any Key of the value to set 
---@param value any Value to set the variable to 
function Entity:SetVar( key, value ) end
--- Sets the entity's velocity. For entities with physics, consider using [PhysObj:SetVelocity](/gmod/PhysObj:SetVelocity) on the [PhysObj](/gmod/PhysObj) of the entity.
---@param velocity Vector The new velocity to set. 
function Entity:SetVelocity( velocity ) end
--- Sets the model and associated weapon to this viewmodel entity.
--- 
--- This is used internally when the player switches weapon.
---@param viewModel string The model string to give to this viewmodel.  Example: "models/weapons/c_smg1.mdl" 
---@param weapon? Weapon The weapon entity to associate this viewmodel to. 
function Entity:SetWeaponModel( viewModel, weapon ) end
--- Returns the amount of skins the entity has.
---@return number
function Entity:SkinCount(  ) end
--- Moves the model instance from the source entity to this entity. This can be used to transfer decals that have been applied on one entity to another.
--- 
--- Both entities must have the same model.
---@param srcEntity Entity Entity to move the model instance from. 
---@return boolean
function Entity:SnatchModelInstance( srcEntity ) end
--- Initializes the entity and starts its networking. If called on a player, it will respawn them.
--- 
--- This calls [ENTITY:Initialize](/gmod/ENTITY:Initialize) on Lua-defined entities.
function Entity:Spawn(  ) end
--- Starts a "looping" sound. As with any other sound playing methods, this function expects the sound file to be looping itself and will not automatically loop a non looping sound file as one might expect.
--- 
--- This function is almost identical to [CreateSound](/gmod/Global.CreateSound), with the exception of the sound being created in the STATIC channel and with normal attenuation.
--- 
--- See also [Entity:StopLoopingSound](/gmod/Entity:StopLoopingSound)
---@param sound string Sound to play. Can be either a sound script or a filepath. 
---@return number
function Entity:StartLoopingSound( sound ) end
--- Starts a motion controller in the physics engine tied to this entity's [PhysObj](/gmod/PhysObj), which enables the use of [ENTITY:PhysicsSimulate](/gmod/ENTITY:PhysicsSimulate).
--- 
--- The motion controller can later be destroyed via [Entity:StopMotionController](/gmod/Entity:StopMotionController).
--- 
--- Motion controllers are used internally to control other Entities' [PhysObj](/gmod/PhysObj)ects, such as the Gravity Gun, +use pickup and the Physics Gun.
--- 
--- This function should be called every time you recreate the Entity's [PhysObj](/gmod/PhysObj). Or alternatively you should call [Entity:AddToMotionController](/gmod/Entity:AddToMotionController) on the new [PhysObj](/gmod/PhysObj).
--- 
--- Also see [Entity:AddToMotionController](/gmod/Entity:AddToMotionController) and [Entity:RemoveFromMotionController](/gmod/Entity:RemoveFromMotionController).
function Entity:StartMotionController(  ) end
--- Stops all particle effects parented to the entity and immediately destroys them.
function Entity:StopAndDestroyParticles(  ) end
--- Stops a sound created by [Entity:StartLoopingSound](/gmod/Entity:StartLoopingSound).
---@param id number The sound ID returned by [Entity:StartLoopingSound](/gmod/Entity:StartLoopingSound) 
function Entity:StopLoopingSound( id ) end
--- Stops the motion controller created with [Entity:StartMotionController](/gmod/Entity:StartMotionController).
function Entity:StopMotionController(  ) end
--- Stops all particle effects parented to the entity.
--- 
--- This is ran automatically on every client by [Entity:StopParticles](/gmod/Entity:StopParticles) if called on the server.
function Entity:StopParticleEmission(  ) end
--- Stops any attached to the entity .pcf particles using [ParticleEffectAttach](/gmod/Global.ParticleEffectAttach).
--- 
--- On client, this is the same as [Entity:StopParticleEmission](/gmod/Entity:StopParticleEmission). ( and you should use StopParticleEmission instead )
--- 
--- On server, this is the same as running [Entity:StopParticleEmission](/gmod/Entity:StopParticleEmission) on every client.
function Entity:StopParticles(  ) end
--- Stops all particle effects parented to the entity with given name.
---@param name string The name of the particle to stop. 
function Entity:StopParticlesNamed( name ) end
--- Stops all particle effects parented to the entity with given name on given attachment.
---@param name string The name of the particle to stop. 
---@param attachment number The attachment of the entity to stop particles on. 
function Entity:StopParticlesWithNameAndAttachment( name, attachment ) end
--- Stops emitting the given sound from the entity, especially useful for looping sounds.
---@param sound string The name of the sound script or the filepath to stop playback of. 
function Entity:StopSound( sound ) end
--- Applies the specified amount of damage to the entity with [DMG_GENERIC](/gmod/Enums/DMG) flag.
---@param damageAmount number The amount of damage to be applied. 
---@param attacker Entity The entity that initiated the attack that caused the damage. 
---@param inflictor Entity The entity that applied the damage, eg. a weapon. 
function Entity:TakeDamage( damageAmount, attacker, inflictor ) end
--- Applies the damage specified by the damage info to the entity.
---@param damageInfo CTakeDamageInfo The damage to apply. 
function Entity:TakeDamageInfo( damageInfo ) end
--- Applies forces to our physics object in response to damage.
---@param dmginfo CTakeDamageInfo The damageinfo to apply. Only [CTakeDamageInfo:GetDamageForce](/gmod/CTakeDamageInfo:GetDamageForce) and [CTakeDamageInfo:GetDamagePosition](/gmod/CTakeDamageInfo:GetDamagePosition) are used. 
function Entity:TakePhysicsDamage( dmginfo ) end
--- Check if the given position or entity is within this entity's PVS.
--- 
--- See also [Entity:IsDormant](/gmod/Entity:IsDormant).
---@param testPoint any [Entity](/gmod/Entity) or [Vector](/gmod/Vector) to test against. If an entity is given, this function will test using its bounding box. 
---@return boolean
function Entity:TestPVS( testPoint ) end
--- Returns the ID of a [PhysObj](/gmod/PhysObj) attached to the given bone. To be used with [Entity:GetPhysicsObjectNum](/gmod/Entity:GetPhysicsObjectNum).
--- 
--- See [Entity:TranslatePhysBoneToBone](/gmod/Entity:TranslatePhysBoneToBone) for reverse function.
---@param boneID number The ID of a bone to look up the "physics root" bone of. 
---@return number
function Entity:TranslateBoneToPhysBone( boneID ) end
--- Returns the boneID of the bone the given [PhysObj](/gmod/PhysObj) is attached to.
--- 
--- See [Entity:TranslateBoneToPhysBone](/gmod/Entity:TranslateBoneToPhysBone) for reverse function.
---@param physNum number The [PhysObj](/gmod/PhysObj) number on the entity 
---@return number
function Entity:TranslatePhysBoneToBone( physNum ) end
--- Updates positions of bone followers created by [Entity:CreateBoneFollowers](/gmod/Entity:CreateBoneFollowers).
--- 
--- This should be called every tick.
function Entity:UpdateBoneFollowers(  ) end
--- Simulates a `+use` action on an entity.
---@param activator Entity The entity that caused this input. This will usually be the player who pressed their use key 
---@param caller? Entity The entity responsible for the input. This will typically be the same as `activator` unless some other entity is acting as a proxy 
---@param useType? number Use type, see [USE](/gmod/Enums/USE). 
---@param value? number Any value. 
function Entity:Use( activator, caller, useType, value ) end
--- Animations will be handled purely clientside instead of a fixed animtime, enabling interpolation. This does not affect layers and gestures.
function Entity:UseClientSideAnimation(  ) end
--- Enables or disables trigger bounds.
--- 
--- This will give the entity a "trigger box" that extends around its bounding box by boundSize units in X/Y and (boundSize / 2) in +Z (-Z remains the same).
--- The trigger box is world aligned and will work regardless of the object's solidity and collision group.
--- 
--- Valve use trigger boxes for all pickup items. Their bloat size is 24, a surprisingly large figure.
---@param enable boolean Enable or disable the bounds. 
---@param boundSize? number The distance/size of the trigger bounds. 
function Entity:UseTriggerBounds( enable, boundSize ) end
--- Returns the index of this view model, it can be used to identify which one of the player's view models this entity is.
---@return number
function Entity:ViewModelIndex(  ) end
--- Returns whether the target/given entity is visible from the this entity.
--- 
--- This is meant to be used only with NPCs.
--- 
--- Differences from a simple trace include:
--- * If target has **FL_NOTARGET**, returns false
--- * If **ai_ignoreplayers** is turned on and target is a player, returns false
--- * Reacts to **ai_LOS_mode**:
--- * * If 1, does a simple trace with **COLLISION_GROUP_NONE** and **MASK_BLOCKLOS**
--- * * If not, does a trace with **MASK_BLOCKLOS_AND_NPCS** ( - **CONTENTS_BLOCKLOS** is target is player ) and a custom LOS filter ( **CTraceFilterLOS** )
--- * Returns true if hits a vehicle the target is driving
---@param target Entity Entity to check for visibility to. 
---@return boolean
function Entity:Visible( target ) end
--- Returns true if supplied vector is visible from the entity's line of sight.
--- 
--- This is achieved similarly to a trace.
---@param pos Vector The position to check for visibility 
---@return boolean
function Entity:VisibleVec( pos ) end
--- Returns an integer that represents how deep in water the entity is.
--- 
--- * **0** - The entity isn't in water.
--- 
--- * **1** - Slightly submerged (at least to the feet).
--- 
--- * **2** - The majority of the entity is submerged (at least to the waist).
--- 
--- * **3** - Completely submerged.
---@return number
function Entity:WaterLevel(  ) end
--- Sets the activity of the entity's active weapon.
---@param act number Activity number. See [ACT](/gmod/Enums/ACT). 
---@param duration number How long the animation should take in seconds. 
function Entity:Weapon_SetActivity( act, duration ) end
--- Calls and returns [WEAPON:TranslateActivity](/gmod/WEAPON:TranslateActivity) on the weapon the entity ( player or NPC ) carries.
--- 
--- Despite existing on client, it doesn't actually do anything on client.
---@param act number The activity to translate 
---@return number
function Entity:Weapon_TranslateActivity( act ) end
--- Returns two vectors representing the minimum and maximum extent of the entity's bounding box.
---@return Vector
---@return Vector
function Entity:WorldSpaceAABB(  ) end
--- Returns the center of the entity according to its collision model.
---@return Vector
function Entity:WorldSpaceCenter(  ) end
--- Converts a worldspace vector into a vector local to an entity
---@param wpos Vector The world vector 
---@return Vector
function Entity:WorldToLocal( wpos ) end
--- Converts world angles to local angles ( local to the entity )
---@param ang Angle The world angles 
---@return Angle
function Entity:WorldToLocalAngles( ang ) end
