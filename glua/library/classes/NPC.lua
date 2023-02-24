---@meta
---@class NPC:Entity
NPC = {}
--- Makes the NPC like, hate, feel neutral towards, or fear the entity in question. If you want to setup relationship towards a certain entity `class`, use [NPC:AddRelationship](/gmod/NPC:AddRelationship).
---@param target Entity The entity for the relationship to be applied to. 
---@param disposition number A [D](/gmod/Enums/D) representing the relationship type. 
---@param priority number How strong the relationship is. 
function NPC:AddEntityRelationship( target, disposition, priority ) end
--- Changes how an NPC feels towards another NPC.  If you want to setup relationship towards a certain `entity`, use [NPC:AddEntityRelationship](/gmod/NPC:AddEntityRelationship).
---@param relationstring string A string representing how the relationship should be set up.  Should be formatted as `"npc_class `[D](/gmod/Enums/D)` numberPriority"`. 
function NPC:AddRelationship( relationstring ) end
--- Force an NPC to play his Alert sound.
function NPC:AlertSound(  ) end
--- Executes any movement the current sequence may have.
---@param interval number This is a good place to use [Entity:GetAnimTimeInterval](/gmod/Entity:GetAnimTimeInterval). 
---@param target? Entity
---@return boolean
function NPC:AutoMovement( interval, target ) end
--- Adds a capability to the NPC.
---@param capabilities number Capabilities to add, see [CAP](/gmod/Enums/CAP). 
function NPC:CapabilitiesAdd( capabilities ) end
--- Removes all of Capabilities the NPC has.
function NPC:CapabilitiesClear(  ) end
--- Returns the NPC's capabilities along the ones defined on its weapon.
---@return number
function NPC:CapabilitiesGet(  ) end
--- Remove a certain capability.
---@param capabilities number Capabilities to remove, see [CAP](/gmod/Enums/CAP) 
function NPC:CapabilitiesRemove( capabilities ) end
--- Returns the NPC class. Do not confuse with [Entity:GetClass](/gmod/Entity:GetClass)!
---@return number
function NPC:Classify(  ) end
--- Resets the [NPC:GetBlockingEntity](/gmod/NPC:GetBlockingEntity).
function NPC:ClearBlockingEntity(  ) end
--- Clears out the specified [COND](/gmod/Enums/COND) on this NPC.
---@param condition number The [COND](/gmod/Enums/COND) to clear out. 
function NPC:ClearCondition( condition ) end
--- Clears the Enemy from the NPC's memory, effectively forgetting it until met again with either the NPC vision or with [NPC:UpdateEnemyMemory](/gmod/NPC:UpdateEnemyMemory).
---@param enemy? Entity The enemy to mark 
function NPC:ClearEnemyMemory( enemy ) end
--- Clears the NPC's current expression which can be set with [NPC:SetExpression](/gmod/NPC:SetExpression).
function NPC:ClearExpression(  ) end
--- Clears the current NPC goal or target.
function NPC:ClearGoal(  ) end
--- Stops the current schedule that the NPC is doing.
function NPC:ClearSchedule(  ) end
--- Translates condition ID to a string.
---@param cond number The NPCs condition ID, see [COND](/gmod/Enums/COND) 
---@return string
function NPC:ConditionName( cond ) end
--- Returns the way the NPC "feels" about the entity.
---@param ent Entity The entity to get the disposition from. 
---@return number
function NPC:Disposition( ent ) end
--- Forces the NPC to drop the specified weapon.
---@param weapon? Weapon Weapon to be dropped. If unset, will default to the currently equipped weapon. 
---@param target? Vector If set, launches the weapon at given position. There is a limit to how far it is willing to throw the weapon. Overrides velocity argument. 
---@param velocity? Vector If set and previous argument is unset, launches the weapon with given velocity. If the velocity is higher than 400, it will be clamped to 400. 
function NPC:DropWeapon( weapon, target, velocity ) end
--- Makes an NPC exit a scripted sequence, if one is playing.
function NPC:ExitScriptedSequence(  ) end
--- Force an NPC to play his Fear sound.
function NPC:FearSound(  ) end
--- Force an NPC to play its FoundEnemy sound.
function NPC:FoundEnemySound(  ) end
--- Returns the weapon the NPC is currently carrying, or [NULL](/gmod/Global_Variables).
---@return Entity
function NPC:GetActiveWeapon(  ) end
--- Returns the NPC's current activity.
---@return number
function NPC:GetActivity(  ) end
--- Returns the aim vector of the NPC. NPC alternative of [Player:GetAimVector](/gmod/Player:GetAimVector).
---@return Vector
function NPC:GetAimVector(  ) end
--- Returns the activity to be played when the NPC arrives at its goal
---@return number
function NPC:GetArrivalActivity(  ) end
--- Returns the sequence to be played when the NPC arrives at its goal.
---@return number
function NPC:GetArrivalSequence(  ) end
--- Returns the entity blocking the NPC along its path.
---@return Entity
function NPC:GetBlockingEntity(  ) end
--- Returns the NPC's current schedule.
---@return number
function NPC:GetCurrentSchedule(  ) end
--- Returns how proficient (skilled) an NPC is with its current weapon.
---@return number
function NPC:GetCurrentWeaponProficiency(  ) end
--- Gets the NPC's current waypoint position (where NPC is currently moving towards), if any is available.
---@return Vector
function NPC:GetCurWaypointPos(  ) end
--- Returns the entity that this NPC is trying to fight.
---@return NPC
function NPC:GetEnemy(  ) end
--- Returns the first time an NPC's enemy was seen by the NPC.
---@param enemy? Entity The enemy to check. 
---@return number
function NPC:GetEnemyFirstTimeSeen( enemy ) end
--- Returns the last known position of an NPC's enemy.
---@param enemy? Entity The enemy to check. 
---@return Vector
function NPC:GetEnemyLastKnownPos( enemy ) end
--- Returns the last seen position of an NPC's enemy.
---@param enemy? Entity The enemy to check. 
---@return Vector
function NPC:GetEnemyLastSeenPos( enemy ) end
--- Returns the last time an NPC's enemy was seen by the NPC.
---@param enemy? Entity The enemy to check. 
---@return number
function NPC:GetEnemyLastTimeSeen( enemy ) end
--- Returns the expression file the NPC is currently playing.
---@return string
function NPC:GetExpression(  ) end
--- Returns NPCs hull type set by [NPC:SetHullType](/gmod/NPC:SetHullType).
---@return number
function NPC:GetHullType(  ) end
--- Returns the ideal activity the NPC currently wants to achieve.
---@return number
function NPC:GetIdealActivity(  ) end
--- Returns the ideal move acceleration of the NPC.
---@return number
function NPC:GetIdealMoveAcceleration(  ) end
--- Returns the ideal move speed of the NPC.
---@return number
function NPC:GetIdealMoveSpeed(  ) end
--- Returns how far should the NPC look ahead in its route.
---@return number
function NPC:GetMinMoveCheckDist(  ) end
--- Returns how far before the NPC can come to a complete stop.
---@param minResult? number The minimum value that will be returned by this function. 
---@return number
function NPC:GetMinMoveStopDist( minResult ) end
--- Returns the current timestep the internal NPC motor is working on.
---@return number
function NPC:GetMoveInterval(  ) end
--- Returns the NPC's current movement activity.
---@return number
function NPC:GetMovementActivity(  ) end
--- Returns the index of the sequence the NPC uses to move.
---@return number
function NPC:GetMovementSequence(  ) end
--- Returns the current move velocity of the NPC.
---@return Vector
function NPC:GetMoveVelocity(  ) end
--- Returns the NPC's navigation type.
---@return number
function NPC:GetNavType(  ) end
--- Returns the nearest member of the squad the NPC is in.
---@return NPC
function NPC:GetNearestSquadMember(  ) end
--- Gets the NPC's next waypoint position, where NPC will be moving after reaching current waypoint, if any is available.
---@return Vector
function NPC:GetNextWaypointPos(  ) end
--- Returns the NPC's state.
---@return number
function NPC:GetNPCState(  ) end
--- Returns the distance the NPC is from Target Goal.
---@return number
function NPC:GetPathDistanceToGoal(  ) end
--- Returns the amount of time it will take for the NPC to get to its Target Goal.
---@return number
function NPC:GetPathTimeToGoal(  ) end
--- Returns the shooting position of the NPC.
---@return Vector
function NPC:GetShootPos(  ) end
--- Returns the current squad name of the NPC.
---@return string
function NPC:GetSquad(  ) end
--- Returns the NPC's current target set by [NPC:SetTarget](/gmod/NPC:SetTarget).
---@return Entity
function NPC:GetTarget(  ) end
--- Returns the status of the current task.
---@return number
function NPC:GetTaskStatus(  ) end
--- Returns a specific weapon the NPC owns.
---@param class string A classname of the weapon to try to get. 
---@return Weapon
function NPC:GetWeapon( class ) end
--- Returns a table of the NPC's weapons.
---@return table
function NPC:GetWeapons(  ) end
--- Used to give a weapon to an already spawned NPC.
---@param weapon string Class name of the weapon to equip to the NPC. 
---@return Weapon
function NPC:Give( weapon ) end
--- Returns whether or not the NPC has the given condition.
---@param condition number The condition index, see [COND](/gmod/Enums/COND). 
---@return boolean
function NPC:HasCondition( condition ) end
--- Polls the enemy memory to check if the given entity has eluded us or not.
---@param enemy? Entity The enemy to test. 
---@return boolean
function NPC:HasEnemyEluded( enemy ) end
--- Polls the enemy memory to check if the NPC has any memory of given enemy.
---@param enemy? Entity The entity to test. 
---@return boolean
function NPC:HasEnemyMemory( enemy ) end
--- Returns true if the current navigation has a obstacle, this is different from [NPC:GetBlockingEntity](/gmod/NPC:GetBlockingEntity), this includes obstacles that it can steer around.
---@return boolean
function NPC:HasObstacles(  ) end
--- Force an NPC to play his Idle sound.
function NPC:IdleSound(  ) end
--- Returns whether or not the NPC is performing the given schedule.
---@param schedule number The schedule number, see [SCHED](/gmod/Enums/SCHED). 
---@return boolean
function NPC:IsCurrentSchedule( schedule ) end
--- Returns whether the NPC has an active goal.
---@return boolean
function NPC:IsGoalActive(  ) end
--- Returns if the current movement is locked on the Yaw axis.
---@return boolean
function NPC:IsMoveYawLocked(  ) end
--- Returns whether the NPC is moving or not.
---@return boolean
function NPC:IsMoving(  ) end
--- Checks if the NPC is running an **ai_goal**. ( e.g. An npc_citizen NPC following the Player. )
---@return boolean
function NPC:IsRunningBehavior(  ) end
--- Returns whether the current NPC is the leader of the squad it is in.
---@return boolean
function NPC:IsSquadLeader(  ) end
--- Returns true if the entity was remembered as unreachable. The memory is updated automatically from following engine tasks if they failed:
--- * TASK_GET_CHASE_PATH_TO_ENEMY
--- * TASK_GET_PATH_TO_ENEMY_LKP
--- * TASK_GET_PATH_TO_INTERACTION_PARTNER
--- * TASK_ANTLIONGUARD_GET_CHASE_PATH_ENEMY_TOLERANCE
--- * SCHED_FAIL_ESTABLISH_LINE_OF_FIRE - Combine NPCs, also when failing to change their enemy
---@param testEntity Entity The entity to test. 
---@return boolean
function NPC:IsUnreachable( testEntity ) end
--- Force an NPC to play his LostEnemy sound.
function NPC:LostEnemySound(  ) end
--- Tries to achieve our ideal animation state, playing any transition sequences that we need to play to get there.
function NPC:MaintainActivity(  ) end
--- Causes the NPC to temporarily forget the current enemy and switch on to a better one.
---@param enemy? Entity The enemy to mark 
function NPC:MarkEnemyAsEluded( enemy ) end
--- Executes a climb move.
--- 
--- Related functions are [NPC:MoveClimbStart](/gmod/NPC:MoveClimbStart) and [NPC:MoveClimbStop](/gmod/NPC:MoveClimbStop).
---@param destination Vector The destination of the climb. 
---@param dir Vector The direction of the climb. 
---@param distance number The distance. 
---@param yaw number The yaw angle. 
---@param left number Amount of climb nodes left? 
---@return number
function NPC:MoveClimbExec( destination, dir, distance, yaw, left ) end
--- Starts a climb move.
--- 
--- Related functions are [NPC:MoveClimbExec](/gmod/NPC:MoveClimbExec) and [NPC:MoveClimbStop](/gmod/NPC:MoveClimbStop).
---@param destination Vector The destination of the climb. 
---@param dir Vector The direction of the climb. 
---@param distance number The distance. 
---@param yaw number The yaw angle. 
function NPC:MoveClimbStart( destination, dir, distance, yaw ) end
--- Stops a climb move.
--- 
--- Related functions are [NPC:MoveClimbExec](/gmod/NPC:MoveClimbExec) and [NPC:MoveClimbStart](/gmod/NPC:MoveClimbStart).
function NPC:MoveClimbStop(  ) end
--- Executes a jump move.
--- 
--- Related functions are [NPC:MoveJumpStart](/gmod/NPC:MoveJumpStart) and [NPC:MoveJumpStop](/gmod/NPC:MoveJumpStop).
---@return number
function NPC:MoveJumpExec(  ) end
--- Starts a jump move.
--- 
--- Related functions are [NPC:MoveJumpExec](/gmod/NPC:MoveJumpExec) and [NPC:MoveJumpStop](/gmod/NPC:MoveJumpStop).
---@param vel Vector The jump velocity. 
function NPC:MoveJumpStart( vel ) end
--- Stops a jump move.
--- 
--- Related functions are [NPC:MoveJumpExec](/gmod/NPC:MoveJumpExec) and [NPC:MoveJumpStart](/gmod/NPC:MoveJumpStart).
---@return number
function NPC:MoveJumpStop(  ) end
--- Makes the NPC walk toward the given position. The NPC will return to the player after amount of time set by **player_squad_autosummon_time** [ConVar](/gmod/ConVar).
--- 
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.
--- 
--- The NPC **must** be in the player's squad for this to work.
---@param position Vector The target position for the NPC to walk to. 
function NPC:MoveOrder( position ) end
--- Pauses the NPC movement?
--- 
--- Related functions are [NPC:MoveStart](/gmod/NPC:MoveStart), [NPC:MoveStop](/gmod/NPC:MoveStop) and [NPC:ResetMoveCalc](/gmod/NPC:ResetMoveCalc).
function NPC:MovePause(  ) end
--- Starts NPC movement?
--- 
--- Related functions are [NPC:MoveStop](/gmod/NPC:MoveStop), [NPC:MovePause](/gmod/NPC:MovePause) and [NPC:ResetMoveCalc](/gmod/NPC:ResetMoveCalc).
function NPC:MoveStart(  ) end
--- Stops the NPC movement?
--- 
--- Related functions are [NPC:MoveStart](/gmod/NPC:MoveStart), [NPC:MovePause](/gmod/NPC:MovePause) and [NPC:ResetMoveCalc](/gmod/NPC:ResetMoveCalc).
function NPC:MoveStop(  ) end
--- Works similarly to [NPC:NavSetRandomGoal](/gmod/NPC:NavSetRandomGoal).
---@param pos Vector The origin to calculate a path from. 
---@param length number The target length of the path to calculate. 
---@param dir Vector The direction in which to look for a new path end goal. 
---@return boolean
function NPC:NavSetGoal( pos, length, dir ) end
--- Set the goal target for an NPC.
---@param target Entity The targeted entity to set the goal to. 
---@param offset Vector The offset to apply to the targeted entity's position. 
---@return boolean
function NPC:NavSetGoalTarget( target, offset ) end
--- Creates a random path of specified minimum length between a closest start node and random node in the specified direction. This won't actually force the NPC to move.
---@param minPathLength number Minimum length of path in units 
---@param dir Vector Unit vector pointing in the direction of the target random node 
---@return boolean
function NPC:NavSetRandomGoal( minPathLength, dir ) end
--- Sets a goal in x, y offsets for the NPC to wander to
---@param xOffset number X offset 
---@param yOffset number Y offset 
---@return boolean
function NPC:NavSetWanderGoal( xOffset, yOffset ) end
--- Forces the NPC to pickup an existing weapon entity. The NPC will not pick up the weapon if they already own a weapon of given type, or if the NPC could not normally have this weapon in their inventory.
---@param wep Weapon The weapon to try to pick up. 
---@return boolean
function NPC:PickupWeapon( wep ) end
--- Forces the NPC to play a sentence from scripts/sentences.txt
---@param sentence string The sentence string to speak. 
---@param delay number Delay in seconds until the sentence starts playing. 
---@param volume number The volume of the sentence, from 0 to 1. 
---@return number
function NPC:PlaySentence( sentence, delay, volume ) end
--- Makes the NPC remember an entity or an enemy as unreachable, for a specified amount of time. Use [NPC:IsUnreachable](/gmod/NPC:IsUnreachable) to check if an entity is still unreachable.
---@param ent Entity The entity to mark as unreachable. 
---@param time? number For how long to remember the entity as unreachable. Negative values will act as `3` seconds. 
function NPC:RememberUnreachable( ent, time ) end
--- This function crashes the game no matter how it is used and will be removed in a future update.
--- 
--- Use [NPC:ClearEnemyMemory](/gmod/NPC:ClearEnemyMemory) instead.
function NPC:RemoveMemory(  ) end
--- Resets the ideal activity of the NPC. See also [NPC:SetIdealActivity](/gmod/NPC:SetIdealActivity).
---@param act number The new activity. See [ACT](/gmod/Enums/ACT). 
function NPC:ResetIdealActivity( act ) end
--- Resets all the movement calculations.
--- 
--- Related functions are [NPC:MoveStart](/gmod/NPC:MoveStart), [NPC:MovePause](/gmod/NPC:MovePause) and [NPC:MoveStop](/gmod/NPC:MoveStop).
function NPC:ResetMoveCalc(  ) end
--- Starts an engine task.
--- 
--- Used internally by the [ai_task](/gmod/ai_task).
---@param taskID number The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/ai_task.h#L89-L502) 
---@param taskData number The task data. 
function NPC:RunEngineTask( taskID, taskData ) end
--- Forces the NPC to switch to a specific weapon the NPC owns. See [NPC:GetWeapons](/gmod/NPC:GetWeapons).
---@param class string A classname of the weapon or a [Weapon](/gmod/Weapon) entity to switch to. 
function NPC:SelectWeapon( class ) end
--- Stops any sounds (speech) the NPC is currently palying.
--- 
--- Equivalent to `Entity:EmitSound( "AI_BaseNPC.SentenceStop" )`
function NPC:SentenceStop(  ) end
--- Sets the NPC's current activity.
---@param act number The new activity to set, see [ACT](/gmod/Enums/ACT). 
function NPC:SetActivity( act ) end
---@param act number
function NPC:SetArrivalActivity( act ) end
function NPC:SetArrivalDirection(  ) end
--- Sets the distance to goal at which the NPC should stop moving and continue to other business such as doing the rest of their tasks in a schedule.
---@param dist number The distance to goal that is close enough for the NPC 
function NPC:SetArrivalDistance( dist ) end
function NPC:SetArrivalSequence(  ) end
--- Sets the arrival speed? of the NPC
---@param speed number The new arrival speed 
function NPC:SetArrivalSpeed( speed ) end
--- Sets an NPC condition.
---@param condition number The condition index, see [COND](/gmod/Enums/COND). 
function NPC:SetCondition( condition ) end
--- Sets the weapon proficiency of an NPC (how skilled an NPC is with its current weapon).
---@param proficiency number The proficiency for the NPC's current weapon. See [WEAPON_PROFICIENCY](/gmod/Enums/WEAPON_PROFICIENCY). 
function NPC:SetCurrentWeaponProficiency( proficiency ) end
--- Sets the target for an NPC.
---@param enemy Entity The enemy that the NPC should target 
---@param newenemy? boolean Calls [NPC:SetCondition](/gmod/NPC:SetCondition)(COND_NEW_ENEMY) if the new enemy is valid and not equal to the last enemy. 
function NPC:SetEnemy( enemy, newenemy ) end
--- Sets the NPC's .vcd expression. Similar to [Entity:PlayScene](/gmod/Entity:PlayScene) except the scene is looped until it's interrupted by default NPC behavior or [NPC:ClearExpression](/gmod/NPC:ClearExpression).
---@param expression string The expression filepath. 
---@return number
function NPC:SetExpression( expression ) end
--- Updates the NPC's hull and physics hull in order to match its model scale. [Entity:SetModelScale](/gmod/Entity:SetModelScale) seems to take care of this regardless.
function NPC:SetHullSizeNormal(  ) end
--- Sets the hull type for the NPC.
---@param hullType number Hull type. See [HULL](/gmod/Enums/HULL) 
function NPC:SetHullType( hullType ) end
--- Sets the ideal activity the NPC currently wants to achieve. This is most useful for custom SNPCs.
function NPC:SetIdealActivity(  ) end
--- Sets the ideal yaw angle (left-right rotation) for the NPC and forces them to turn to that angle.
---@param angle number The aim direction to set, the `yaw` component. 
---@param speed? number The turn speed. Special values are:  * `-1` - Calculate automatically  * `-2` - Keep the previous yaw speed 
function NPC:SetIdealYawAndUpdate( angle, speed ) end
--- Sets the last registered or memorized position for an npc. When using scheduling, the NPC will focus on navigating to the last position via nodes.
---@param Position Vector Where the NPC's last position will be set. 
function NPC:SetLastPosition( Position ) end
--- Sets how long to try rebuilding path before failing task.
---@param time number How long to try rebuilding path before failing task 
function NPC:SetMaxRouteRebuildTime( time ) end
--- Sets the timestep the internal NPC motor is working on.
---@param time number The new timestep. 
function NPC:SetMoveInterval( time ) end
--- Sets the activity the NPC uses when it moves.
---@param activity number The movement activity, see [ACT](/gmod/Enums/ACT). 
function NPC:SetMovementActivity( activity ) end
--- Sets the sequence the NPC navigation path uses for speed calculation. Doesn't seem to have any visible effect on NPC movement.
---@param sequenceId number The movement sequence index 
function NPC:SetMovementSequence( sequenceId ) end
--- Sets the move velocity of the NPC
---@param vel Vector The new movement velocity. 
function NPC:SetMoveVelocity( vel ) end
--- Sets whether the current movement should locked on the Yaw axis or not.
---@param lock boolean Whether the movement should yaw locked or not. 
function NPC:SetMoveYawLocked( lock ) end
--- Sets the navigation type of the NPC.
---@param navtype number The new nav type. See [NAV](/gmod/Enums/NAV). 
function NPC:SetNavType( navtype ) end
--- Sets the state the NPC is in to help it decide on a ideal schedule.
---@param state number New NPC state, see [NPC_STATE](/gmod/Enums/NPC_STATE) 
function NPC:SetNPCState( state ) end
--- Sets the NPC's current schedule.
---@param schedule number The NPC schedule, see [SCHED](/gmod/Enums/SCHED). 
function NPC:SetSchedule( schedule ) end
--- Assigns the NPC to a new squad. A squad can have up to 16 NPCs. NPCs in a single squad should be friendly to each other.
---@param name string The new squad name to set. 
function NPC:SetSquad( name ) end
--- Sets the NPC's target. This is used in some engine schedules.
---@param entity Entity The target of the NPC. 
function NPC:SetTarget( entity ) end
--- Sets the status of the current task.
---@param status number The status. See [TASKSTATUS](/gmod/Enums/TASKSTATUS). 
function NPC:SetTaskStatus( status ) end
--- Forces the NPC to start an engine task, this has different results for every NPC.
---@param task number The id of the task to start, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/ai_task.h#L89-L502) 
---@param taskData number The task data as a float, not all tasks make use of it. 
function NPC:StartEngineTask( task, taskData ) end
--- Resets the NPC's movement animation and velocity. Does not actually stop the NPC from moving.
function NPC:StopMoving(  ) end
--- Cancels [NPC:MoveOrder](/gmod/NPC:MoveOrder) basically.
--- 
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.
--- 
--- The NPC **must** be in the player's squad for this to work.
---@param target Entity Must be a player, does nothing otherwise. 
function NPC:TargetOrder( target ) end
--- Marks the current NPC task as completed.
--- 
--- This is meant to be used alongside [NPC:TaskFail](/gmod/NPC:TaskFail) to complete or fail custom Lua defined tasks. ([Schedule:AddTask](/gmod/Schedule:AddTask))
function NPC:TaskComplete(  ) end
--- Marks the current NPC task as failed.
--- 
--- This is meant to be used alongside [NPC:TaskComplete](/gmod/NPC:TaskComplete) to complete or fail custom Lua defined tasks. ([Schedule:AddTask](/gmod/Schedule:AddTask))
---@param task string A string most likely defined as a Source Task, for more information on Tasks go to https://developer.valvesoftware.com/wiki/Task 
function NPC:TaskFail( task ) end
--- Force the NPC to update information on the supplied enemy, as if it had line of sight to it.
---@param enemy Entity The enemy to update. 
---@param pos Vector The last known position of the enemy. 
function NPC:UpdateEnemyMemory( enemy, pos ) end
--- Updates the turn activity. Basically applies the turn animations depending on the current turn yaw.
function NPC:UpdateTurnActivity(  ) end
--- Only usable on "ai" base entities.
---@return boolean
function NPC:UseActBusyBehavior(  ) end
---@return boolean
function NPC:UseAssaultBehavior(  ) end
--- Only usable on "ai" base entities.
---@return boolean
function NPC:UseFollowBehavior(  ) end
---@return boolean
function NPC:UseFuncTankBehavior(  ) end
---@return boolean
function NPC:UseLeadBehavior(  ) end
--- Undoes the other Use*Behavior functions.
--- 
--- Only usable on "ai" base entities.
function NPC:UseNoBehavior(  ) end
