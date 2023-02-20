---@meta
---@class Schedule
Schedule = {}
--- Adds a task to the schedule. See also [Schedule:AddTaskEx](/gmod/Schedule:AddTaskEx) if you wish to customize task start and run function names.
--- 
--- See also [ENTITY:StartSchedule](/gmod/ENTITY:StartSchedule), [NPC:StartEngineTask](/gmod/NPC:StartEngineTask), and [NPC:RunEngineTask](/gmod/NPC:RunEngineTask).
---@param taskname string Custom task name 
---@param taskdata any Task data to be passed into the NPC's functions 
function Schedule:AddTask( taskname, taskdata ) end
--- Adds a task to the schedule with completely custom function names.
--- 
--- See also [Schedule:AddTask](/gmod/Schedule:AddTask).
---@param start string The full name of a function on the entity's table to be ran when the task is started. 
---@param run string The full name of a function on the entity's table to be ran when the task is continuously running. 
---@param data number Task data to be passed into the NPC's functions 
function Schedule:AddTaskEx( start, run, data ) end
--- Adds an engine task to the schedule.
---@param taskname string Task name, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/ai_task.h#L89-L502) 
---@param taskdata number Task data, can be a float. 
function Schedule:EngTask( taskname, taskdata ) end
--- Returns the task at the given index.
---@param num number Task index. 
function Schedule:GetTask( num ) end
--- Initialises the Schedule. Called by [ai_schedule.New](/gmod/ai_schedule.New) when the Schedule is created.
---@param debugName string The name passed from [ai_schedule.New](/gmod/ai_schedule.New). 
function Schedule:Init( debugName ) end
--- Returns the number of tasks in the schedule.
---@return number
function Schedule:NumTasks(  ) end
