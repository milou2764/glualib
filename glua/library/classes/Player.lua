---@meta
---@class Player:Entity
Player = {}
--- Returns the player's AccountID aka SteamID3. (`[U:1:AccountID]`)
--- 
--- For bots this will return values starting with 0 for the first bot, 1 for the second bot and so on.  
--- 
--- See [Player:SteamID](/gmod/Player:SteamID) for the text representation of the full SteamID.
--- See [Player:SteamID64](/gmod/Player:SteamID64) for a 64bit representation of the full SteamID.
--- 
--- Unlike other variations of SteamID, SteamID3 does not include the "Account Type" and "Account Instance" part of the SteamID.
---@return number
function Player:AccountID(  ) end
--- Adds an entity to the players clean up list.
---@param type string Cleanup type 
---@param ent Entity Entity to add 
function Player:AddCleanup( type, ent ) end
--- Adds an entity to the total count of entities of same class.
---@param str string Entity type 
---@param ent Entity Entity 
function Player:AddCount( str, ent ) end
--- Add a certain amount to the player's death count
---@param count number number of deaths to add 
function Player:AddDeaths( count ) end
--- Add a certain amount to the player's frag count (or kills count)
---@param count number number of frags to add 
function Player:AddFrags( count ) end
--- Adds a entity to the players list of frozen objects.
---@param ent Entity Entity 
---@param physobj PhysObj Physics object belonging to ent 
function Player:AddFrozenPhysicsObject( ent, physobj ) end
--- Sets up the voting system for the player.
--- This is a really barebone system. By calling this a vote gets started, when the player presses 0-9 the callback function gets called along with the key the player pressed. Use the draw callback to draw the vote panel.
---@param name string Name of the vote 
---@param timeout number Time until the vote expires 
---@param vote_callback function The function to be run when the player presses 0-9 while a vote is active. 
---@param draw_callback function Used to draw the vote panel. 
function Player:AddPlayerOption( name, timeout, vote_callback, draw_callback ) end
--- Plays a sequence directly from a sequence number, similar to [Player:AnimRestartGesture](/gmod/Player:AnimRestartGesture). This function has the advantage to play sequences that haven't been bound to an existing [ACT](/gmod/Enums/ACT)
---@param slot number Gesture slot using [GESTURE_SLOT](/gmod/Enums/GESTURE_SLOT) 
---@param sequenceId number The sequence ID to play, can be retrieved with [Entity:LookupSequence](/gmod/Entity:LookupSequence). 
---@param cycle number The cycle to start the animation at, ranges from 0 to 1. 
---@param autokill? boolean If the animation should not loop. true = stops the animation, false = the animation keeps playing. 
function Player:AddVCDSequenceToGestureSlot( slot, sequenceId, cycle, autokill ) end
--- Checks if the player is alive.
---@return boolean
function Player:Alive(  ) end
--- Sets if the player can toggle his flashlight. Function exists on both the server and client but has no effect when ran on the client.
---@param canFlashlight boolean True allows flashlight toggling 
function Player:AllowFlashlight( canFlashlight ) end
--- Lets the player spray his decal without delay
---@param allow boolean Allow or disallow 
function Player:AllowImmediateDecalPainting( allow ) end
--- Resets player gesture in selected slot.
---@param slot number Slot to reset. See the [GESTURE_SLOT](/gmod/Enums/GESTURE_SLOT). 
function Player:AnimResetGestureSlot( slot ) end
--- Restart a gesture on a player, within a gesture slot.
---@param slot number Gesture slot using [GESTURE_SLOT](/gmod/Enums/GESTURE_SLOT) 
---@param activity number The activity ( see [ACT](/gmod/Enums/ACT) ) or sequence that should be played 
---@param autokill? boolean Whether the animation should be automatically stopped. true = stops the animation, false = the animation keeps playing/looping 
function Player:AnimRestartGesture( slot, activity, autokill ) end
--- Restarts the main animation on the player, has the same effect as calling [Entity:SetCycle](/gmod/Entity:SetCycle)( 0 ).
function Player:AnimRestartMainSequence(  ) end
--- Sets the sequence of the animation playing in the given gesture slot.
---@param slot number The gesture slot. See [GESTURE_SLOT](/gmod/Enums/GESTURE_SLOT) 
---@param sequenceID number Sequence ID to set. 
function Player:AnimSetGestureSequence( slot, sequenceID ) end
--- Sets the weight of the animation playing in the given gesture slot.
---@param slot number The gesture slot. See [GESTURE_SLOT](/gmod/Enums/GESTURE_SLOT) 
---@param weight number The weight this slot should be set to. Value must be ranging from 0 to 1. 
function Player:AnimSetGestureWeight( slot, weight ) end
--- Returns the player's armor.
---@return number
function Player:Armor(  ) end
--- Bans the player from the server for a certain amount of minutes.
---@param minutes number Duration of the ban in minutes (0 is permanent) 
---@param kick? boolean Whether to kick the player after banning them or not 
function Player:Ban( minutes, kick ) end
--- Returns true if the player's flashlight hasn't been disabled by [Player:AllowFlashlight](/gmod/Player:AllowFlashlight).
---@return boolean
function Player:CanUseFlashlight(  ) end
--- Prints a string to the chatbox of the client.
---@param message string String to be printed 
function Player:ChatPrint( message ) end
--- Checks if the limit is hit or not. If it is, it will throw a notification saying so.
---@param limitType string Limit type. In unmodified Sandbox possible values are:  * "props"  * "ragdolls"  * "vehicles"  * "effects"  * "balloons"  * "cameras"  * "npcs"  * "sents"  * "dynamite"  * "lamps"  * "lights"  * "wheels"  * "thrusters"  * "hoverballs"  * "buttons"  * "emitters" 
---@return boolean
function Player:CheckLimit( limitType ) end
--- Runs the concommand on the player. This does not work on bots.
--- 
--- If you wish to directly modify the movement input of bots, use [GM:StartCommand](/gmod/GM:StartCommand) instead.
---@param command string command to run 
function Player:ConCommand( command ) end
--- Creates the player's death ragdoll entity and deletes the old one.
--- 
--- This is normally used when a player dies, to create their death ragdoll.
--- 
--- The ragdoll will be created with the player's properties such as [Position](/gmod/Entity:GetPos), [Angles](/gmod/Entity:GetAngles), [PlayerColor](/gmod/Player:GetPlayerColor), [Velocity](/gmod/Entity:GetVelocity) and [Model](/gmod/Entity:GetModel).
--- 
--- You can retrieve the entity this creates with [Player:GetRagdollEntity](/gmod/Player:GetRagdollEntity).
function Player:CreateRagdoll(  ) end
--- Disables the default player's crosshair. Can be reenabled with [Player:CrosshairEnable](/gmod/Player:CrosshairEnable). This will affect [WEAPON:DoDrawCrosshair](/gmod/WEAPON:DoDrawCrosshair).
function Player:CrosshairDisable(  ) end
--- Enables the player's crosshair, if it was previously disabled via [Player:CrosshairDisable](/gmod/Player:CrosshairDisable).
function Player:CrosshairEnable(  ) end
--- Returns whether the player is crouching or not ([FL_DUCKING](/gmod/Enums/FL) flag).
---@return boolean
function Player:Crouching(  ) end
--- Returns the player's death count
---@return number
function Player:Deaths(  ) end
--- Prints the players' name and position to the console.
function Player:DebugInfo(  ) end
--- Detonates all tripmines belonging to the player.
function Player:DetonateTripmines(  ) end
--- Sends a third person animation event to the player.
--- 
--- Calls [GM:DoAnimationEvent](/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_CUSTOM_GESTURE](/gmod/Enums/PLAYERANIMEVENT) as the event, data as the given data.
---@param data number The data to send. 
function Player:DoAnimationEvent( data ) end
--- Starts the player's attack animation. The attack animation is determined by the weapon's HoldType.
--- 
--- Similar to other animation event functions, calls [GM:DoAnimationEvent](/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_ATTACK_PRIMARY](/gmod/Enums/PLAYERANIMEVENT) as the event and no extra data.
function Player:DoAttackEvent(  ) end
--- Sends a specified third person animation event to the player.
--- 
--- Calls [GM:DoAnimationEvent](/gmod/GM:DoAnimationEvent) with specified arguments.
---@param event number The event to send. See [PLAYERANIMEVENT](/gmod/Enums/PLAYERANIMEVENT). 
---@param data number The data to send alongside the event. 
function Player:DoCustomAnimEvent( event, data ) end
--- Sends a third person reload animation event to the player.
--- 
--- Similar to other animation event functions, calls [GM:DoAnimationEvent](/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_RELOAD](/gmod/Enums/PLAYERANIMEVENT) as the event and no extra data.
function Player:DoReloadEvent(  ) end
--- Sends a third person secondary fire animation event to the player.
--- 
--- Similar to other animation event functions, calls [GM:DoAnimationEvent](/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_ATTACK_SECONDARY](/gmod/Enums/PLAYERANIMEVENT) as the event and no extra data.
function Player:DoSecondaryAttack(  ) end
--- Show/Hide the player's weapon's viewmodel.
---@param draw boolean Should draw 
---@param vm? number Which view model to show/hide, 0-2. 
function Player:DrawViewModel( draw, vm ) end
--- Show/Hide the player's weapon's worldmodel.
---@param draw boolean Should draw 
function Player:DrawWorldModel( draw ) end
--- Drops the players' weapon of a specific class.
---@param class string The class to drop. 
---@param target? Vector If set, launches the weapon at given position. There is a limit to how far it is willing to throw the weapon. Overrides velocity argument. 
---@param velocity? Vector If set and previous argument is unset, launches the weapon with given velocity. If the velocity is higher than 400, it will be clamped to 400. 
function Player:DropNamedWeapon( class, target, velocity ) end
--- Drops any object the player is currently holding with either gravitygun or +Use (E key)
function Player:DropObject(  ) end
--- Forces the player to drop the specified weapon
---@param weapon? Weapon Weapon to be dropped. If unset, will default to the currently equipped weapon. 
---@param target? Vector If set, launches the weapon at given position. There is a limit to how far it is willing to throw the weapon. Overrides velocity argument. 
---@param velocity? Vector If set and previous argument is unset, launches the weapon with given velocity. If the velocity is higher than 400, it will be clamped to 400. 
function Player:DropWeapon( weapon, target, velocity ) end
--- Enters the player into specified vehicle
---@param vehicle Vehicle Vehicle the player will enter 
function Player:EnterVehicle( vehicle ) end
--- Equips the player with the HEV suit.
--- 
--- Allows the player to zoom, walk slowly, sprint, pickup armor batteries, use the health and armor stations and also shows the HUD.
--- The player also emits a flatline sound on death, which can be overridden with [GM:PlayerDeathSound](/gmod/GM:PlayerDeathSound).
--- 
--- The player is automatically equipped with the suit on spawn, if you wish to stop that, use [Player:RemoveSuit](/gmod/Player:RemoveSuit).
function Player:EquipSuit(  ) end
--- Makes the player exit the vehicle if they're in one.
function Player:ExitVehicle(  ) end
--- Enables/Disables the player's flashlight.[Player:CanUseFlashlight](/gmod/Player:CanUseFlashlight) must be true in order for the player's flashlight to be changed.
---@param isOn boolean Turns the flashlight on/off 
function Player:Flashlight( isOn ) end
--- Returns true if the player's flashlight is on.
---@return boolean
function Player:FlashlightIsOn(  ) end
--- Returns the amount of kills a player has.
---@return number
function Player:Frags(  ) end
--- Freeze the player. Frozen players cannot move, look around, or attack. Key bindings are still called. Similar to [Player:Lock](/gmod/Player:Lock) but the player can still take damage.
--- 
--- Adds or removes the [FL_FROZEN](/gmod/Enums/FL) flag from the player.
---@param frozen? boolean Whether the player should be frozen. 
function Player:Freeze( frozen ) end
--- Returns the player's active weapon.
--- 
--- If used on a [LocalPlayer](/gmod/Global.LocalPlayer)() and the player is spectating another player with `OBS_MODE_IN_EYE`, the weapon returned will be of the spectated player.
---@return Weapon
function Player:GetActiveWeapon(  ) end
--- Returns the player's current activity.
---@return number
function Player:GetActivity(  ) end
--- Returns the direction that the player is aiming.
---@return Vector
function Player:GetAimVector(  ) end
--- Returns true if the players' model is allowed to rotate around the pitch and roll axis.
---@return boolean
function Player:GetAllowFullRotation(  ) end
--- Returns whether the player is allowed to use his weapons in a vehicle or not.
---@return boolean
function Player:GetAllowWeaponsInVehicle(  ) end
--- Returns a table of all ammo the player has.
---@return table
function Player:GetAmmo(  ) end
--- Gets the amount of ammo the player has.
---@param ammotype any The ammunition type. Can be either [number](/gmod/number) ammo ID or [string](/gmod/string) ammo name. 
---@return number
function Player:GetAmmoCount( ammotype ) end
--- Gets if the player will be pushed out of nocollided players.
---@return boolean
function Player:GetAvoidPlayers(  ) end
--- Returns true if the player is able to walk using the (default) alt key.
---@return boolean
function Player:GetCanWalk(  ) end
--- Determines whenever the player is allowed to use the zoom functionality.
---@return boolean
function Player:GetCanZoom(  ) end
--- Returns the player's class id.
---@return number
function Player:GetClassID(  ) end
--- Gets total count of entities of same class.
---@param type string Entity type to get count of. 
---@param minus? number If specified, it will reduce the counter by this value. Works only serverside. 
---@return number
function Player:GetCount( type, minus ) end
--- Returns the crouched walk speed multiplier.
--- 
--- See also [Player:GetWalkSpeed](/gmod/Player:GetWalkSpeed) and [Player:SetCrouchedWalkSpeed](/gmod/Player:SetCrouchedWalkSpeed).
---@return number
function Player:GetCrouchedWalkSpeed(  ) end
--- Returns the last command which was sent by the specified player. This can only be called on the player which [GetPredictionPlayer](/gmod/Global.GetPredictionPlayer)() returns.
---@return CUserCmd
function Player:GetCurrentCommand(  ) end
--- Gets the **actual** view offset which equals the difference between the players actual position and their view when standing.
--- 
--- Do not confuse with [Player:GetViewOffset](/gmod/Player:GetViewOffset) and [Player:GetViewOffsetDucked](/gmod/Player:GetViewOffsetDucked)
---@return Vector
function Player:GetCurrentViewOffset(  ) end
--- Gets the entity the player is currently driving.
---@return Entity
function Player:GetDrivingEntity(  ) end
--- Returns driving mode of the player. See [Entity Driving](/gmod/Entity%20Driving).
---@return number
function Player:GetDrivingMode(  ) end
--- Returns a player's duck speed (in seconds)
---@return number
function Player:GetDuckSpeed(  ) end
--- Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups.
---@return Entity
function Player:GetEntityInUse(  ) end
--- Returns a table with information of what the player is looking at.
--- 
--- The results of this function are **cached** clientside every frame.
--- 
--- Uses [util.GetPlayerTrace](/gmod/util.GetPlayerTrace) internally and is therefore bound by its limits.
--- 
--- See also [Player:GetEyeTraceNoCursor](/gmod/Player:GetEyeTraceNoCursor).
---@return table
function Player:GetEyeTrace(  ) end
--- Returns the trace according to the players view direction, ignoring their mouse (holding  and moving the mouse in Sandbox).
--- 
--- The results of this function are **cached** clientside every frame.
--- 
--- Uses [util.GetPlayerTrace](/gmod/util.GetPlayerTrace) internally and is therefore bound by its limits.
--- 
--- See also [Player:GetEyeTrace](/gmod/Player:GetEyeTrace).
---@return table
function Player:GetEyeTraceNoCursor(  ) end
--- Returns the FOV of the player.
---@return number
function Player:GetFOV(  ) end
--- Returns the steam "relationship" towards the player.
---@return string
function Player:GetFriendStatus(  ) end
--- Gets the hands entity of a player
---@return Entity
function Player:GetHands(  ) end
--- Returns the widget the player is hovering with his mouse.
---@return Entity
function Player:GetHoveredWidget(  ) end
--- Gets the bottom base and the top base size of the player's hull.
---@return Vector
---@return Vector
function Player:GetHull(  ) end
--- Gets the bottom base and the top base size of the player's crouch hull.
---@return Vector
---@return Vector
function Player:GetHullDuck(  ) end
--- Retrieves the value of a client-side [ConVar](/gmod/ConVar). The [ConVar](/gmod/ConVar) must have a [FCVAR_USERINFO](/gmod/Enums/FCVAR) flag for this to work.
---@param cVarName string The name of the client-side [ConVar](/gmod/ConVar). 
---@return string
function Player:GetInfo( cVarName ) end
--- Retrieves the numeric value of a client-side convar, returns nil if value is not convertible to a number. The [ConVar](/gmod/ConVar) must have a [FCVAR_USERINFO](/gmod/Enums/FCVAR) flag for this to work.
---@param cVarName string The name of the [ConVar](/gmod/ConVar) to query the value of 
---@param default number Default value if we failed to retrieve the number. 
---@return number
function Player:GetInfoNum( cVarName, default ) end
--- Returns the jump power of the player
---@return number
function Player:GetJumpPower(  ) end
--- Returns the player's ladder climbing speed.
--- 
--- See [Player:GetWalkSpeed](/gmod/Player:GetWalkSpeed) for normal walking speed, [Player:GetRunSpeed](/gmod/Player:GetRunSpeed) for sprinting speed and [Player:GetSlowWalkSpeed](/gmod/Player:GetSlowWalkSpeed) for slow walking speed.
---@return number
function Player:GetLadderClimbSpeed(  ) end
--- Returns the timescale multiplier of the player movement.
---@return number
function Player:GetLaggedMovementValue(  ) end
--- Returns the maximum amount of armor the player should have. Default value is 100.
---@return number
function Player:GetMaxArmor(  ) end
--- Returns the player's maximum movement speed.
--- 
--- See also [Player:SetMaxSpeed](/gmod/Player:SetMaxSpeed), [Player:GetWalkSpeed](/gmod/Player:GetWalkSpeed) and [Player:GetRunSpeed](/gmod/Player:GetRunSpeed).
---@return number
function Player:GetMaxSpeed(  ) end
--- Returns the player's name, this is an alias of [Player:Nick](/gmod/Player:Nick).
---@return string
function Player:GetName(  ) end
--- Returns whenever the player is set not to collide with their teammates.
---@return boolean
function Player:GetNoCollideWithTeammates(  ) end
--- Returns the the observer mode of the player
---@return number
function Player:GetObserverMode(  ) end
--- Returns the entity the player is currently observing.
--- 
--- Set using [Player:SpectateEntity](/gmod/Player:SpectateEntity).
---@return Entity
function Player:GetObserverTarget(  ) end
--- Returns a **P**layer **Data** key-value pair from the SQL database. (sv.db when called on server,  cl.db when called on client)
--- 
--- Internally uses the [sql](/gmod/sql).
---@param key string Name of the PData key 
---@param default? any Default value if PData key doesn't exist. 
---@return string
function Player:GetPData( key, default ) end
--- Returns a player model's color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1.
---@return Vector
function Player:GetPlayerColor(  ) end
--- Returns a table containing player information.
---@return table
function Player:GetPlayerInfo(  ) end
--- Returns the preferred carry angles of an object, if any are set.
--- 
--- Calls [GM:GetPreferredCarryAngles](/gmod/GM:GetPreferredCarryAngles) with the target entity and returns the carry angles.
---@param carryEnt Entity Entity to retrieve the carry angles of. 
---@return Angle
function Player:GetPreferredCarryAngles( carryEnt ) end
--- Returns the widget entity the player is using.
--- 
--- Having a pressed widget stops the player from firing his weapon to allow input to be passed onto the widget.
---@return Entity
function Player:GetPressedWidget(  ) end
--- Returns the weapon the player previously had equipped.
---@return Entity
function Player:GetPreviousWeapon(  ) end
--- Returns players screen punch effect angle.
---@return Angle
function Player:GetPunchAngle(  ) end
--- Returns players death ragdoll. The ragdoll is created by [Player:CreateRagdoll](/gmod/Player:CreateRagdoll).
---@return Entity
function Player:GetRagdollEntity(  ) end
--- Returns the render angles for the player.
---@return Angle
function Player:GetRenderAngles(  ) end
--- Returns the player's sprint speed.
--- 
--- See also [Player:SetRunSpeed](/gmod/Player:SetRunSpeed), [Player:GetWalkSpeed](/gmod/Player:GetWalkSpeed) and [Player:GetMaxSpeed](/gmod/Player:GetMaxSpeed).
---@return number
function Player:GetRunSpeed(  ) end
--- Returns the position of a Player's view
---@return Vector
function Player:GetShootPos(  ) end
--- Returns the player's slow walking speed, which is activated via  keybind.
--- 
--- See [Player:GetWalkSpeed](/gmod/Player:GetWalkSpeed) for normal walking speed, [Player:GetRunSpeed](/gmod/Player:GetRunSpeed) for sprinting speed and [Player:GetLadderClimbSpeed](/gmod/Player:GetLadderClimbSpeed) for ladder climb speed.
---@return number
function Player:GetSlowWalkSpeed(  ) end
--- Returns the maximum height player can step onto.
---@return number
function Player:GetStepSize(  ) end
--- Returns the player's HEV suit power.
---@return number
function Player:GetSuitPower(  ) end
--- Returns the number of seconds that the player has been timing out for. You can check if a player is timing out with [Player:IsTimingOut](/gmod/Player:IsTimingOut).
---@return number
function Player:GetTimeoutSeconds(  ) end
--- Returns TOOL table of players current tool, or of the one specified.
---@param mode? string Classname of the tool to retrieve. ( Filename of the tool in gmod_tool/stools/ ) 
---@return table
function Player:GetTool( mode ) end
--- Returns a player's unduck speed (in seconds)
---@return number
function Player:GetUnDuckSpeed(  ) end
--- Returns the entity the player would use if they would press their `+use` keybind.
---@return Entity
function Player:GetUseEntity(  ) end
--- Returns the player's user group.
---@return string
function Player:GetUserGroup(  ) end
--- Gets the vehicle the player is driving, returns NULL ENTITY if the player is not driving.
---@return Vehicle
function Player:GetVehicle(  ) end
--- Returns the entity the player is using to see from (such as the player itself, the camera, or another entity).
---@return Entity
function Player:GetViewEntity(  ) end
--- Returns the player's view model entity by the index.
--- Each player has 3 view models by default, but only the first one is used.
--- 
--- To use the other viewmodels in your SWEP, see [Entity:SetWeaponModel](/gmod/Entity:SetWeaponModel).
---@param index? number optional index of the view model to return, can range from 0 to 2 
---@return Entity
function Player:GetViewModel( index ) end
--- Returns the view offset of the player which equals the difference between the players actual position and their view.
--- 
--- See also [Player:GetViewOffsetDucked](/gmod/Player:GetViewOffsetDucked).
---@return Vector
function Player:GetViewOffset(  ) end
--- Returns the view offset of the player which equals the difference between the players actual position and their view when ducked.
--- 
--- See also [Player:GetViewOffset](/gmod/Player:GetViewOffset).
---@return Vector
function Player:GetViewOffsetDucked(  ) end
--- Returns players screen punch effect angle.
---@return Angle
function Player:GetViewPunchAngles(  ) end
--- Returns client's view punch velocity. See [Player:ViewPunch](/gmod/Player:ViewPunch) and [Player:SetViewPunchVelocity](/gmod/Player:SetViewPunchVelocity)
---@return Angle
function Player:GetViewPunchVelocity(  ) end
--- Returns the player's normal walking speed. Not sprinting, not slow walking. (+walk)
--- 
--- See also [Player:SetWalkSpeed](/gmod/Player:SetWalkSpeed), [Player:GetMaxSpeed](/gmod/Player:GetMaxSpeed) and [Player:GetRunSpeed](/gmod/Player:GetRunSpeed).
---@return number
function Player:GetWalkSpeed(  ) end
--- Returns the weapon for the specified class
---@param className string Class name of weapon 
---@return Weapon
function Player:GetWeapon( className ) end
--- Returns a player's weapon color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1.
---@return Vector
function Player:GetWeaponColor(  ) end
--- Returns a table of the player's weapons.
---@return table
function Player:GetWeapons(  ) end
--- Gives the player a weapon.
---@param weaponClassName string Class name of weapon to give the player 
---@param bNoAmmo? boolean Set to true to not give any ammo on weapon spawn. (Reserve ammo set by DefaultClip) 
---@return Weapon
function Player:Give( weaponClassName, bNoAmmo ) end
--- Gives ammo to a player
---@param amount number Amount of ammo 
---@param type string Type of ammo.    This can also be a number for ammo ID, useful for custom ammo types.    You can find a list of default ammo types [here](/gmod/Default_Ammo_Types). 
---@param hidePopup? boolean Hide display popup when giving the ammo 
---@return number
function Player:GiveAmmo( amount, type, hidePopup ) end
--- Disables god mode on the player.
function Player:GodDisable(  ) end
--- Enables god mode on the player.
function Player:GodEnable(  ) end
--- Returns whether the player has god mode or not, contolled by [Player:GodEnable](/gmod/Player:GodEnable) and [Player:GodDisable](/gmod/Player:GodDisable).
---@return boolean
function Player:HasGodMode(  ) end
--- Returns if the player has the specified weapon
---@param className string Class name of the weapon 
---@return boolean
function Player:HasWeapon( className ) end
--- Returns if the player is in a vehicle
---@return boolean
function Player:InVehicle(  ) end
--- Returns the player's IP address and connection port in ip:port form
---@return string
function Player:IPAddress(  ) end
--- Returns whether the player is an admin or not.
---@return boolean
function Player:IsAdmin(  ) end
--- Returns if the player is an bot or not
---@return boolean
function Player:IsBot(  ) end
--- Returns true from the point when the player is sending client info but not fully in the game until they disconnect.
---@return boolean
function Player:IsConnected(  ) end
--- Used to find out if a player is currently 'driving' an entity (by which we mean 'right click > drive' ).
---@return boolean
function Player:IsDrivingEntity(  ) end
--- Returns whether the players movement is currently frozen, controlled by [Player:Freeze](/gmod/Player:Freeze).
---@return boolean
function Player:IsFrozen(  ) end
--- Returns whether the player identity was confirmed by the steam network.
--- 
--- See also [GM:PlayerAuthed](/gmod/GM:PlayerAuthed).
---@return boolean
function Player:IsFullyAuthenticated(  ) end
--- Returns if a player is the host of the current session.
---@return boolean
function Player:IsListenServerHost(  ) end
--- Returns whether or not the player is muted locally.
---@return boolean
function Player:IsMuted(  ) end
--- Returns true if the player is playing a taunt.
---@return boolean
function Player:IsPlayingTaunt(  ) end
--- Returns whenever the player is heard by the local player.
---@return boolean
function Player:IsSpeaking(  ) end
--- Returns whether the player is currently sprinting or not, specifically if they are holding their sprint key and are allowed to sprint.
--- 
--- This will not check if the player is currently sprinting into a wall. (i.e. holding their sprint key but not moving)
---@return boolean
function Player:IsSprinting(  ) end
--- Returns whenever the player is equipped with the suit item.
---@return boolean
function Player:IsSuitEquipped(  ) end
--- Returns whether the player is a superadmin.
---@return boolean
function Player:IsSuperAdmin(  ) end
--- Returns true if the player is timing out (i.e. is losing connection), false otherwise.
---@return boolean
function Player:IsTimingOut(  ) end
--- Returns whether the player is typing in their chat.
--- 
--- This may not work properly if the server uses a custom chatbox.
---@return boolean
function Player:IsTyping(  ) end
--- Returns true/false if the player is in specified group or not.
---@param groupname string Group to check the player for. 
---@return boolean
function Player:IsUserGroup( groupname ) end
--- Returns if the player can be heard by the local player.
---@return boolean
function Player:IsVoiceAudible(  ) end
--- Returns if the player is in the context menu.
---@return boolean
function Player:IsWorldClicking(  ) end
--- Gets whether a key is down. This is not networked to other players, meaning only the local client can see the keys they are pressing.
---@param key number The key, see [IN](/gmod/Enums/IN) 
---@return boolean
function Player:KeyDown( key ) end
--- Gets whether a key was down one tick ago.
---@param key number The key, see [IN](/gmod/Enums/IN) 
---@return boolean
function Player:KeyDownLast( key ) end
--- Gets whether a key was just pressed this tick.
---@param key number Corresponds to an [IN](/gmod/Enums/IN) 
---@return boolean
function Player:KeyPressed( key ) end
--- Gets whether a key was just released this tick.
---@param key number The key, see [IN](/gmod/Enums/IN) 
---@return boolean
function Player:KeyReleased( key ) end
--- Kicks the player from the server.
---@param reason? string Reason to show for disconnection. 
function Player:Kick( reason ) end
--- Kills a player and calls [GM:PlayerDeath](/gmod/GM:PlayerDeath).
function Player:Kill(  ) end
--- Kills a player without notifying the rest of the server.
--- 
--- This will call [GM:PlayerSilentDeath](/gmod/GM:PlayerSilentDeath) instead of [GM:PlayerDeath](/gmod/GM:PlayerDeath).
function Player:KillSilent(  ) end
--- This allows the server to mitigate the lag of the player by moving back all the entities that can be lag compensated to the time the player attacked with his weapon.
--- 
--- This technique is most commonly used on things that hit other entities instantaneously, such as traces.
--- 
--- 
--- 
--- Lag compensation only works for players and entities that have been enabled with [Entity:SetLagCompensated](/gmod/Entity:SetLagCompensated)
--- 
--- Despite being defined shared, it can only be used server-side in a [Predicted Hook](/gmod/~search:%3Cpredicted%3EYes).
---@param lagCompensation boolean The state of the lag compensation, true to enable and false to disable. 
function Player:LagCompensation( lagCompensation ) end
--- Returns the hitgroup where the player was last hit.
---@return number
function Player:LastHitGroup(  ) end
--- Shows "limit hit" notification in sandbox.
---@param type string Type of hit limit. 
function Player:LimitHit( type ) end
--- Stops a player from using any inputs, such as moving, turning, or attacking. Key binds are still called. Similar to [Player:Freeze](/gmod/Player:Freeze) but the player takes no damage.
--- 
--- Adds the [FL_FROZEN](/gmod/Enums/FL) and [FL_GODMODE](/gmod/Enums/FL) flags to the player.
function Player:Lock(  ) end
--- Returns the position of a Kinect bone.
---@param bone number Bone to get the position of. Must be from 0 to 19. 
---@return Vector
function Player:MotionSensorPos( bone ) end
--- Returns the players name. Identical to [Player:Nick](/gmod/Player:Nick) and [Player:GetName](/gmod/Player:GetName).
---@return string
function Player:Name(  ) end
--- Returns the player's nickname.
---@return string
function Player:Nick(  ) end
--- Returns the 64-bit SteamID aka CommunityID of the Steam Account that owns the Garry's Mod license this player is using. This is useful for detecting players using Steam Family Sharing.
--- 
--- If player is not using Steam Family Sharing, this will return the player's actual SteamID64().
---@return string
function Player:OwnerSteamID64(  ) end
--- Returns the packet loss of the client. It is not networked so it only returns 0 when run clientside.
---@return number
function Player:PacketLoss(  ) end
--- Unfreezes the props player is looking at. This is essentially the same as pressing reload with the physics gun, including double press for unfreeze all.
---@return number
function Player:PhysgunUnfreeze(  ) end
--- This makes the player hold ( same as pressing  on a small prop ) the provided entity.
---@param entity Entity Entity to pick up. 
function Player:PickupObject( entity ) end
--- Forces the player to pickup an existing weapon entity. The player will not pick up the weapon if they already own a weapon of given type, or if the player could not normally have this weapon in their inventory.
--- 
--- This function **will** bypass [GM:PlayerCanPickupWeapon](/gmod/GM:PlayerCanPickupWeapon).
---@param wep Weapon The weapon to try to pick up. 
---@param ammoOnly? boolean If set to true, the player will only attempt to pick up the ammo from the weapon. The weapon will not be picked up even if the player doesn't have a weapon of this type, and the weapon will be removed if the player picks up any ammo from it. 
---@return boolean
function Player:PickupWeapon( wep, ammoOnly ) end
--- Returns the player's ping to server.
---@return number
function Player:Ping(  ) end
--- Plays the correct step sound according to what the player is staying on.
---@param volume number Volume for the sound, in range from 0 to 1 
function Player:PlayStepSound( volume ) end
--- Displays a message either in their chat, console, or center of the screen. See also [PrintMessage](/gmod/Global.PrintMessage).
---@param type number Which type of message should be sent to the player ([HUD](/gmod/Enums/HUD)). 
---@param message string Message to be sent to the player. 
function Player:PrintMessage( type, message ) end
--- Removes all ammo from a certain player
function Player:RemoveAllAmmo(  ) end
--- Removes all weapons and ammo from the player.
function Player:RemoveAllItems(  ) end
--- Removes the amount of the specified ammo from the player.
---@param ammoCount number The amount of ammunition to remove. 
---@param ammoName string The name of the ammunition to remove from. This can also be a [number](/gmod/number) ammoID. 
function Player:RemoveAmmo( ammoCount, ammoName ) end
--- Removes a **P**layer **Data** key-value pair from the SQL database. (sv.db when called on server,  cl.db when called on client)
--- 
--- Internally uses the [sql](/gmod/sql).
---@param key string Key to remove 
---@return boolean
function Player:RemovePData( key ) end
--- Strips the player's suit item.
function Player:RemoveSuit(  ) end
--- Resets both normal and duck hulls to their default values.
function Player:ResetHull(  ) end
--- Forces the player to say whatever the first argument is. Works on bots too.
---@param text string The text to force the player to say. 
---@param teamOnly? boolean Whether to send this message to our own team only. 
function Player:Say( text, teamOnly ) end
--- Fades the screen
---@param flags number Fade flags defined with [SCREENFADE](/gmod/Enums/SCREENFADE). 
---@param clr? number The color of the screenfade 
---@param fadeTime number Fade(in/out) effect transition time ( From no fade to full fade and vice versa ) 
---@param fadeHold number Fade effect hold time 
function Player:ScreenFade( flags, clr, fadeTime, fadeHold ) end
--- Sets the active weapon of the player by its class name.
---@param className string The class name of the weapon to switch to.    If the player doesn't have the specified weapon, nothing will happen. You can use [Player:Give](/gmod/Player:Give) to give the weapon first. 
function Player:SelectWeapon( className ) end
--- Sends a hint to a player.
---@param name string Name/class/index of the hint. The text of the hint will contain this value. ( "#Hint_" .. name ) An example is `PhysgunFreeze`. 
---@param delay number Delay in seconds before showing the hint 
function Player:SendHint( name, delay ) end
--- Executes a simple Lua string on the player.
---@param script string The script to execute. 
function Player:SendLua( script ) end
--- Sets the player's active weapon. You should use [CUserCmd:SelectWeapon](/gmod/CUserCmd:SelectWeapon) or [Player:SelectWeapon](/gmod/Player:SelectWeapon), instead in most cases.
--- 
--- This function will not trigger the weapon switch events or associated equip animations. It will bypass 
---  [GM:PlayerSwitchWeapon](/gmod/GM:PlayerSwitchWeapon) and the currently active weapon's [WEAPON:Holster](/gmod/WEAPON:Holster) return value.
---@param weapon Weapon The weapon to equip. 
function Player:SetActiveWeapon( weapon ) end
--- Sets the player's activity.
---@param act number The new activity to set. See [ACT](/gmod/Enums/ACT). 
function Player:SetActivity( act ) end
--- Set if the players' model is allowed to rotate around the pitch and roll axis.
---@param Allowed boolean Allowed to rotate 
function Player:SetAllowFullRotation( Allowed ) end
--- Allows player to use his weapons in a vehicle. You need to call this before entering a vehicle.
---@param allow boolean Show we allow player to use his weapons in a vehicle or not. 
function Player:SetAllowWeaponsInVehicle( allow ) end
--- Sets the amount of the specified ammo for the player.
---@param ammoCount number The amount of ammunition to set. 
---@param ammoType any The ammunition type. Can be either [number](/gmod/number) ammo ID or [string](/gmod/string) ammo name. 
function Player:SetAmmo( ammoCount, ammoType ) end
--- Sets the player armor to the argument.
---@param Amount number The amount that the player armor is going to be set to. 
function Player:SetArmor( Amount ) end
--- Pushes the player away from another player whenever it's inside the other players bounding box.
---@param avoidPlayers boolean Avoid or not avoid. 
function Player:SetAvoidPlayers( avoidPlayers ) end
--- Set if the player should be allowed to walk using the (default) alt key.
---@param abletowalk boolean True allows the player to walk. 
function Player:SetCanWalk( abletowalk ) end
--- Sets whether the player can use the HL2 suit zoom ("+zoom" bind) or not.
---@param canZoom boolean Whether to make the player able or unable to zoom. 
function Player:SetCanZoom( canZoom ) end
--- Sets the player's class id.
---@param classID number The class id the player is being set with. 
function Player:SetClassID( classID ) end
--- Sets the crouched walk speed multiplier.
--- 
--- Doesn't work for values above 1.
--- 
--- See also [Player:SetWalkSpeed](/gmod/Player:SetWalkSpeed) and [Player:GetCrouchedWalkSpeed](/gmod/Player:GetCrouchedWalkSpeed).
---@param speed number The walk speed multiplier that crouch speed should be. 
function Player:SetCrouchedWalkSpeed( speed ) end
--- Sets the **actual** view offset which equals the difference between the players actual position and their view when standing.
--- 
--- Do not confuse with [Player:SetViewOffset](/gmod/Player:SetViewOffset) and [Player:SetViewOffsetDucked](/gmod/Player:SetViewOffsetDucked)
---@param viewOffset Vector The new view offset. 
function Player:SetCurrentViewOffset( viewOffset ) end
--- Sets a player's death count
---@param deathcount number Number of deaths (positive or negative) 
function Player:SetDeaths( deathcount ) end
--- Sets the driving entity and driving mode.
--- 
--- Use [drive.PlayerStartDriving](/gmod/drive.PlayerStartDriving) instead, see [Entity Driving](/gmod/Entity%20Driving).
---@param drivingEntity? Entity The entity the player should drive. 
---@param drivingMode number The driving mode index. 
function Player:SetDrivingEntity( drivingEntity, drivingMode ) end
--- Applies the specified sound filter to the player.
---@param soundFilter number The index of the sound filter to apply.  Pick from the [list of DSP's](https://developer.valvesoftware.com/wiki/Dsp_presets). 
---@param fastReset boolean If set to true the sound filter will be removed faster. 
function Player:SetDSP( soundFilter, fastReset ) end
--- Sets how quickly a player ducks.
---@param duckSpeed number How quickly the player will duck. 
function Player:SetDuckSpeed( duckSpeed ) end
--- Sets the angle of the player's view (may rotate body too if angular difference is large)
---@param angle Angle Angle to set the view to 
function Player:SetEyeAngles( angle ) end
--- Set a player's FOV (Field Of View) over a certain amount of time.
---@param fov number the angle of perception (FOV). Set to 0 to return to default user FOV. ( Which is ranging from 75 to 90, depending on user settings ) 
---@param time? number the time it takes to transition to the FOV expressed in a floating point. 
---@param requester? Entity The requester or "owner" of the zoom event. 
function Player:SetFOV( fov, time, requester ) end
--- Sets a player's frags (kills)
---@param fragcount number Number of frags (positive or negative) 
function Player:SetFrags( fragcount ) end
--- Sets the hands entity of a player.
--- 
--- The hands entity is an entity introduced in Garry's Mod 13 and it's used to show the player's hands attached to the viewmodel.
--- This is similar to the approach used in L4D and CS:GO, for more information on how to implement this system in your gamemode visit [Using Viewmodel Hands](/gmod/Using%20Viewmodel%20Hands).
---@param hands Entity The hands entity to set 
function Player:SetHands( hands ) end
--- Sets the widget that is currently hovered by the player's mouse.
---@param widget? Entity The widget entity that the player is hovering. 
function Player:SetHoveredWidget( widget ) end
--- Sets the mins and maxs of the AABB of the players collision.
--- 
--- See [Player:SetHullDuck](/gmod/Player:SetHullDuck) for the hull while crouching/ducking.
---@param hullMins Vector The min coordinates of the hull. 
---@param hullMaxs Vector The max coordinates of the hull. 
function Player:SetHull( hullMins, hullMaxs ) end
--- Sets the mins and maxs of the AABB of the players collision when ducked.
--- 
--- See [Player:SetHull](/gmod/Player:SetHull) for setting the hull while standing.
---@param hullMins Vector The min coordinates of the hull. 
---@param hullMaxs Vector The max coordinates of the hull. 
function Player:SetHullDuck( hullMins, hullMaxs ) end
--- Sets the jump power, eg. the velocity the player will applied to when he jumps.
---@param jumpPower number The new jump velocity. 
function Player:SetJumpPower( jumpPower ) end
--- Sets the player's ladder climbing speed.
--- 
--- See [Player:SetWalkSpeed](/gmod/Player:SetWalkSpeed) for normal walking speed, [Player:SetRunSpeed](/gmod/Player:SetRunSpeed) for sprinting speed and [Player:SetSlowWalkSpeed](/gmod/Player:SetSlowWalkSpeed) for slow walking speed.
---@param speed number The ladder climbing speed. 
function Player:SetLadderClimbSpeed( speed ) end
--- Slows down the player movement simulation by the timescale, this is used internally in the HL2 weapon stripping sequence.
--- 
--- It achieves such behavior by multiplying the [FrameTime](/gmod/Global.FrameTime) by the specified timescale at the start of the movement simulation and then restoring it afterwards.
---@param timescale number The timescale multiplier. 
function Player:SetLaggedMovementValue( timescale ) end
--- Sets the hitgroup where the player was last hit.
---@param hitgroup number The hitgroup to set as the "last hit", see [HITGROUP](/gmod/Enums/HITGROUP). 
function Player:SetLastHitGroup( hitgroup ) end
--- Sets the maximum amount of armor the player should have. This affects default built-in armor pickups, but not [Player:SetArmor](/gmod/Player:SetArmor).
---@param maxarmor number The new max armor value. 
function Player:SetMaxArmor( maxarmor ) end
--- Sets the maximum speed which the player can move at.
---@param walkSpeed number The maximum speed. 
function Player:SetMaxSpeed( walkSpeed ) end
--- Sets if the player should be muted locally.
---@param mute boolean Mute or unmute. 
function Player:SetMuted( mute ) end
--- Sets whenever the player should not collide with their teammates.
---@param shouldNotCollide boolean True to disable, false to enable collision. 
function Player:SetNoCollideWithTeammates( shouldNotCollide ) end
--- Sets the players visibility towards NPCs.
--- 
--- Internally this toggles the [FL_NOTARGET](/gmod/Enums/FL) flag, which you can manually test for using [Entity:IsFlagSet](/gmod/Entity:IsFlagSet)
---@param visibility boolean The visibility. 
function Player:SetNoTarget( visibility ) end
--- Sets the players observer mode. You must start the spectating first with [Player:Spectate](/gmod/Player:Spectate).
---@param mode number Spectator mode using [OBS_MODE](/gmod/Enums/OBS_MODE). 
function Player:SetObserverMode( mode ) end
--- Writes a **P**layer **Data** key-value pair to the SQL database. (sv.db when called on server,  cl.db when called on client)
--- 
--- Internally uses the [sql](/gmod/sql).
---@param key string Name of the PData key 
---@param value any Value to write to the key (**must** be an SQL valid data type, such as a string or integer) 
---@return boolean
function Player:SetPData( key, value ) end
--- Sets the player model's color. The part of the model that is colored is determined by the model itself, and is different for each model.
---@param Color Vector This is the color to be set. The format is Vector(r, g, b), and each color should be between 0 and 1. 
function Player:SetPlayerColor( Color ) end
--- Sets the widget that is currently in use by the player's mouse.
--- 
--- Having a pressed widget stops the player from firing his weapon to allow input to be passed onto the widget.
---@param pressedWidget? Entity The widget the player is currently using. 
function Player:SetPressedWidget( pressedWidget ) end
--- Sets the render angles of a player.
---@param ang Angle The new render angles to set 
function Player:SetRenderAngles( ang ) end
--- Sets the player's sprint speed.
--- 
--- See also [Player:GetRunSpeed](/gmod/Player:GetRunSpeed), [Player:SetWalkSpeed](/gmod/Player:SetWalkSpeed) and [Player:SetMaxSpeed](/gmod/Player:SetMaxSpeed).
---@param runSpeed number The new sprint speed when sv_friction is below 10. Higher sv_friction values will result in slower speed.    Has to be 7 or above or the player won't be able to move. 
function Player:SetRunSpeed( runSpeed ) end
--- Sets the player's slow walking speed, which is activated via  keybind.
--- 
--- See [Player:SetWalkSpeed](/gmod/Player:SetWalkSpeed) for normal walking speed, [Player:SetRunSpeed](/gmod/Player:SetRunSpeed) for sprinting speed and [Player:SetLadderClimbSpeed](/gmod/Player:SetLadderClimbSpeed) for ladder climb speed.
---@param speed number The new slow walking speed. 
function Player:SetSlowWalkSpeed( speed ) end
--- Sets the maximum height a player can step onto without jumping.
---@param stepHeight number The new maximum height the player can step onto without jumping 
function Player:SetStepSize( stepHeight ) end
--- Sets the player's HEV suit power.
---@param power number The new suit power. 
function Player:SetSuitPower( power ) end
--- Sets whenever to suppress the pickup notification for the player.
---@param doSuppress boolean Whenever to suppress the notice or not. 
function Player:SetSuppressPickupNotices( doSuppress ) end
--- Sets the player to the chosen team.
---@param Team number The team that the player is being set to. 
function Player:SetTeam( Team ) end
--- Sets how quickly a player un-ducks
---@param UnDuckSpeed number How quickly the player will un-duck 
function Player:SetUnDuckSpeed( UnDuckSpeed ) end
--- Sets up the players view model hands. Calls [GM:PlayerSetHandsModel](/gmod/GM:PlayerSetHandsModel) to set the model of the hands.
---@param ent Entity If the player is spectating an entity, this should be the entity the player is spectating, so we can use its hands model instead. 
function Player:SetupHands( ent ) end
--- Sets the usergroup of the player.
---@param groupName string The user group of the player. 
function Player:SetUserGroup( groupName ) end
--- Attaches the players view to the position and angles of the specified entity.
---@param viewEntity Entity The entity to attach the player view to. 
function Player:SetViewEntity( viewEntity ) end
--- Sets the **desired** view offset which equals the difference between the players actual position and their view when standing.
--- 
--- If you want to set **actual** view offset, use [Player:SetCurrentViewOffset](/gmod/Player:SetCurrentViewOffset)
--- 
--- See also [Player:SetViewOffsetDucked](/gmod/Player:SetViewOffsetDucked) for **desired** view offset when crouching.
---@param viewOffset Vector The new desired view offset when standing. 
function Player:SetViewOffset( viewOffset ) end
--- Sets the **desired** view offset which equals the difference between the players actual position and their view when crouching.
--- 
--- If you want to set **actual** view offset, use [Player:SetCurrentViewOffset](/gmod/Player:SetCurrentViewOffset)
--- 
--- See also [Player:SetViewOffset](/gmod/Player:SetViewOffset) for **desired** view offset when standing.
---@param viewOffset Vector The new desired view offset when crouching. 
function Player:SetViewOffsetDucked( viewOffset ) end
--- Sets client's view punch angle, but not the velocity. See [Player:ViewPunch](/gmod/Player:ViewPunch)
---@param punchAngle Angle The angle to set. 
function Player:SetViewPunchAngles( punchAngle ) end
--- Sets client's view punch velocity. See [Player:ViewPunch](/gmod/Player:ViewPunch) and [Player:SetViewPunchAngles](/gmod/Player:SetViewPunchAngles)
---@param punchVel Angle The angle velocity to set. 
function Player:SetViewPunchVelocity( punchVel ) end
--- Sets the player's normal walking speed. Not sprinting, not slow walking .
--- 
--- 
--- See also [Player:SetSlowWalkSpeed](/gmod/Player:SetSlowWalkSpeed), [Player:GetWalkSpeed](/gmod/Player:GetWalkSpeed), [Player:SetCrouchedWalkSpeed](/gmod/Player:SetCrouchedWalkSpeed), [Player:SetMaxSpeed](/gmod/Player:SetMaxSpeed) and [Player:SetRunSpeed](/gmod/Player:SetRunSpeed).
---@param walkSpeed number The new walk speed when sv_friction is below 10. Higher sv_friction values will result in slower speed.    Has to be 7 or above or the player won't be able to move. 
function Player:SetWalkSpeed( walkSpeed ) end
--- Sets the player weapon's color. The part of the model that is colored is determined by the model itself, and is different for each model.
---@param Color Vector This is the color to be set. The format is Vector(r,g,b), and each color should be between 0 and 1. 
function Player:SetWeaponColor( Color ) end
--- Returns whether the player's player model will be drawn at the time the function is called.
---@return boolean
function Player:ShouldDrawLocalPlayer(  ) end
--- Sets whether the player's current weapon should drop on death.
---@param drop boolean Whether to drop the player's current weapon or not 
function Player:ShouldDropWeapon( drop ) end
--- Opens the player steam profile page in the steam overlay browser.
function Player:ShowProfile(  ) end
--- Signals the entity that it was dropped by the gravity gun.
---@param ent Entity Entity that was dropped. 
function Player:SimulateGravGunDrop( ent ) end
--- Signals the entity that it was picked up by the gravity gun. This call is only required if you want to simulate the situation of picking up objects.
---@param ent Entity The entity picked up 
function Player:SimulateGravGunPickup( ent ) end
--- Starts spectate mode for given player. This will also affect the players movetype in some cases.
---@param mode number Spectate mode, see [OBS_MODE](/gmod/Enums/OBS_MODE). 
function Player:Spectate( mode ) end
--- Makes the player spectate the entity.
--- 
--- To get the applied spectated entity, use [Player:GetObserverTarget](/gmod/Player:GetObserverTarget).
---@param entity Entity Entity to spectate. 
function Player:SpectateEntity( entity ) end
--- Makes a player spray their decal.
---@param sprayOrigin Vector The location to spray from 
---@param sprayEndPos Vector The location to spray to 
function Player:SprayDecal( sprayOrigin, sprayEndPos ) end
--- Disables the sprint on the player.
function Player:SprintDisable(  ) end
--- Enables the sprint on the player.
function Player:SprintEnable(  ) end
--- Doesn't appear to do anything.
function Player:StartSprinting(  ) end
--- When used in a [GM:SetupMove](/gmod/GM:SetupMove) hook, this function will force the player to walk, as well as preventing the player from sprinting.
function Player:StartWalking(  ) end
--- Returns the player's SteamID.
--- 
--- For Bots this will return `BOT` on the server and on the client it returns `NULL`.
--- 
--- See [Player:AccountID](/gmod/Player:AccountID) for a shorter version of the SteamID and [Player:SteamID64](/gmod/Player:SteamID64) for the Community/Profile formatted SteamID.
---@return string
function Player:SteamID(  ) end
--- Returns the player's 64-bit SteamID aka CommunityID.
--- 
--- See [Player:AccountID](/gmod/Player:AccountID) for a shorter version of the SteamID and [Player:SteamID](/gmod/Player:SteamID) for the normal version of the SteamID.
---@return string
function Player:SteamID64(  ) end
--- When used in a [GM:SetupMove](/gmod/GM:SetupMove) hook, this function will prevent the player from sprinting.
--- 
--- When +walk is engaged, the player will still be able to sprint to half speed (normal run speed) as opposed to full sprint speed without this function.
function Player:StopSprinting(  ) end
--- When used in a [GM:SetupMove](/gmod/GM:SetupMove) hook, this function behaves unexpectedly by preventing the player from sprinting similar to [Player:StopSprinting](/gmod/Player:StopSprinting).
function Player:StopWalking(  ) end
--- Turns off the zoom mode of the player. (+zoom console command)
--- 
--- Basically equivalent of entering "-zoom" into player's console.
function Player:StopZooming(  ) end
--- Removes all ammo from the player.
function Player:StripAmmo(  ) end
--- Removes the specified weapon class from a certain player
---@param weapon string The weapon class to remove 
function Player:StripWeapon( weapon ) end
--- Removes all weapons from a certain player
function Player:StripWeapons(  ) end
--- Prevents a hint from showing up.
---@param name string Hint name/class/index to prevent from showing up 
function Player:SuppressHint( name ) end
--- Attempts to switch the player weapon to the one specified in the "cl_defaultweapon" convar, if the player does not own the specified weapon nothing will happen.
--- 
--- If you want to switch to a specific weapon, use: [Player:SetActiveWeapon](/gmod/Player:SetActiveWeapon)
function Player:SwitchToDefaultWeapon(  ) end
--- Returns the player's team ID.
--- 
--- Returns 0 clientside when the game is not fully loaded.
---@return number
function Player:Team(  ) end
--- Returns the time in seconds since the player connected.
---@return number
function Player:TimeConnected(  ) end
--- Performs a trace hull and applies damage to the entities hit, returns the first entity hit.
---@param startPos Vector The start position of the hull trace. 
---@param endPos Vector The end position of the hull trace. 
---@param mins Vector The minimum coordinates of the hull. 
---@param maxs Vector The maximum coordinates of the hull. 
---@param damage number The damage to be applied. 
---@param damageFlags number Bitflag specifying the damage type, see [DMG](/gmod/Enums/DMG). 
---@param damageForce number The force to be applied to the hit object. 
---@param damageAllNPCs boolean Whether to apply damage to all hit NPCs or not. 
---@return Entity
function Player:TraceHullAttack( startPos, endPos, mins, maxs, damage, damageFlags, damageForce, damageAllNPCs ) end
--- Translates [ACT](/gmod/Enums/ACT) according to the holdtype of players currently held weapon.
---@param act number The initial [ACT](/gmod/Enums/ACT) 
---@return number
function Player:TranslateWeaponActivity( act ) end
--- Unfreezes all objects the player has frozen with their Physics Gun. Same as double pressing R while holding Physics Gun.
function Player:UnfreezePhysicsObjects(  ) end
--- Returns a 32 bit integer that remains constant for a player across joins/leaves and across different servers. This can be used when a string is inappropriate - e.g. in a database primary key.
---@return number
function Player:UniqueID(  ) end
--- Returns a table that will stay allocated for the specific player between connects until the server shuts down. Note, that this table is not synchronized between client and server.
---@param key any Unique table key. 
---@return table
function Player:UniqueIDTable( key ) end
--- Unlocks the player movement if locked previously.
--- 
--- Will disable godmode for the player if locked previously.
function Player:UnLock(  ) end
--- Stops the player from spectating another entity.
function Player:UnSpectate(  ) end
--- Returns the player's ID.
--- You can use [Player](/gmod/Global.Player)() to get the player by their ID.
---@return number
function Player:UserID(  ) end
--- Simulates a push on the client's screen. This **adds** view punch velocity, and does not touch the current view punch angle, for which you can use [Player:SetViewPunchAngles](/gmod/Player:SetViewPunchAngles).
---@param PunchAngle Angle The angle in which to push the player's screen. 
function Player:ViewPunch( PunchAngle ) end
--- Resets the player's view punch (and the view punch velocity, read more at [Player:ViewPunch](/gmod/Player:ViewPunch)) effect back to normal.
---@param tolerance? number Reset all ViewPunch below this threshold. 
function Player:ViewPunchReset( tolerance ) end
--- Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1.
---@return number
function Player:VoiceVolume(  ) end
