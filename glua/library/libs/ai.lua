---@meta
ai = {}
--- Translates a schedule name to its corresponding ID.
---@param sched string Then schedule name. In most cases, this will be the same as the [SCHED](/gmod/Enums/SCHED) name. 
---@return number
function ai.GetScheduleID( sched ) end
--- Returns the squad leader of the given squad.
---@param squad string The squad name. 
---@return NPC
function ai.GetSquadLeader( squad ) end
--- Returns the amount of members a given squad has.
---@param squad string The squad name. 
---@return number
function ai.GetSquadMemberCount( squad ) end
--- Returns all members of a given squad.
---@param squad string The squad name. 
---@return table
function ai.GetSquadMembers( squad ) end
--- Translates a task name to its corresponding ID.
---@param task string The task name. 
---@return number
function ai.GetTaskID( task ) end
