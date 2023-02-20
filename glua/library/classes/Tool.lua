---@meta
---@class Tool
Tool = {}
--- Returns whether the tool is allowed to be used or not. This function ignores the [SANDBOX:CanTool](/gmod/SANDBOX:CanTool) hook.
--- 
--- By default this will always return true clientside and uses `TOOL.AllowedCVar`which is a [ConVar](/gmod/ConVar) object pointing to  `toolmode_allow_*toolname*` convar on the server.
---@return boolean
function Tool:Allowed(  ) end
--- Builds a list of all ConVars set via the ClientConVar variable on the [TOOL](/gmod/Structures/TOOL) and their default values. This is used for the preset system.
---@return table
function Tool:BuildConVarList(  ) end
--- Checks all added objects to see if they're still valid, if not, clears the list of objects.
function Tool:CheckObjects(  ) end
--- Clears all objects previously set with [Tool:SetObject](/gmod/Tool:SetObject).
function Tool:ClearObjects(  ) end
--- Initializes the tool object
---@return Tool
function Tool:Create(  ) end
--- Creates clientside ConVars based on the ClientConVar table specified in the tool structure. Also creates the 'toolmode_allow_X' ConVar.
function Tool:CreateConVars(  ) end
--- Retrieves a physics bone number previously stored using [Tool:SetObject](/gmod/Tool:SetObject).
---@param id number The id of the object which was set in [Tool:SetObject](/gmod/Tool:SetObject). 
---@return number
function Tool:GetBone( id ) end
--- Attempts to grab a clientside tool [ConVar](/gmod/ConVar).
---@param name string Name of the convar to retrieve. The function will automatically add the "mytoolfilename_" part to it. 
---@return string
function Tool:GetClientInfo( name ) end
--- Attempts to grab a clientside tool [ConVar](/gmod/ConVar).
---@param name string Name of the convar to retrieve. The function will automatically add the "mytoolfilename_" part to it. 
---@param default? number The default value to return in case the lookup fails. 
---@return number
function Tool:GetClientNumber( name, default ) end
--- Retrieves an Entity previously stored using [Tool:SetObject](/gmod/Tool:SetObject).
---@param id number The id of the object which was set in [Tool:SetObject](/gmod/Tool:SetObject). 
---@return Entity
function Tool:GetEnt( id ) end
--- Returns a language key based on this tool's name and the current stage it is on.
---@return string
function Tool:GetHelpText(  ) end
--- Retrieves an local vector previously stored using [Tool:SetObject](/gmod/Tool:SetObject).
--- See also [Tool:GetPos](/gmod/Tool:GetPos).
---@param id number The id of the object which was set in [Tool:SetObject](/gmod/Tool:SetObject). 
---@return Vector
function Tool:GetLocalPos( id ) end
--- Returns the name of the current tool mode.
---@return string
function Tool:GetMode(  ) end
--- Retrieves an normal vector previously stored using [Tool:SetObject](/gmod/Tool:SetObject).
---@param id number The id of the object which was set in [Tool:SetObject](/gmod/Tool:SetObject). 
---@return Vector
function Tool:GetNormal( id ) end
--- Returns the current operation of the tool set by [Tool:SetOperation](/gmod/Tool:SetOperation).
---@return number
function Tool:GetOperation(  ) end
--- Returns the owner of this tool.
---@return Entity
function Tool:GetOwner(  ) end
--- Retrieves an [PhysObj](/gmod/PhysObj) previously stored using [Tool:SetObject](/gmod/Tool:SetObject).
--- See also [Tool:GetEnt](/gmod/Tool:GetEnt).
---@param id number The id of the object which was set in [Tool:SetObject](/gmod/Tool:SetObject). 
---@return PhysObj
function Tool:GetPhys( id ) end
--- Retrieves an vector previously stored using [Tool:SetObject](/gmod/Tool:SetObject). See also [Tool:GetLocalPos](/gmod/Tool:GetLocalPos).
---@param id number The id of the object which was set in [Tool:SetObject](/gmod/Tool:SetObject). 
---@return Vector
function Tool:GetPos( id ) end
--- Attempts to grab a serverside tool [ConVar](/gmod/ConVar).
--- This will not do anything on client, despite the function being defined shared.
---@param name string Name of the convar to retrieve. The function will automatically add the "mytoolfilename_" part to it. 
---@return string
function Tool:GetServerInfo( name ) end
--- Returns the current stage of the tool set by [Tool:SetStage](/gmod/Tool:SetStage).
---@return number
function Tool:GetStage(  ) end
--- Initializes the ghost entity with the given model. Removes any old ghost entity if called multiple times.
--- 
--- The ghost is a regular prop_physics entity in singleplayer games, and a clientside prop in multiplayer games.
---@param model string The model of the new ghost entity 
---@param pos Vector Position to initialize the ghost entity at, usually not needed since this is updated in [Tool:UpdateGhostEntity](/gmod/Tool:UpdateGhostEntity). 
---@param angle Angle Angle to initialize the ghost entity at, usually not needed since this is updated in [Tool:UpdateGhostEntity](/gmod/Tool:UpdateGhostEntity). 
function Tool:MakeGhostEntity( model, pos, angle ) end
--- Returns the amount of stored objects ( [Entity](/gmod/Entity)s ) the tool has.
---@return number
function Tool:NumObjects(  ) end
--- Removes any ghost entity created for this tool.
function Tool:ReleaseGhostEntity(  ) end
--- Stores an [Entity](/gmod/Entity) for later use in the tool.
--- 
--- The stored values can be retrieved by [Tool:GetEnt](/gmod/Tool:GetEnt), [Tool:GetPos](/gmod/Tool:GetPos), [Tool:GetLocalPos](/gmod/Tool:GetLocalPos), [Tool:GetPhys](/gmod/Tool:GetPhys), [Tool:GetBone](/gmod/Tool:GetBone) and [Tool:GetNormal](/gmod/Tool:GetNormal)
---@param id number The id of the object to store. 
---@param ent Entity The entity to store. 
---@param pos Vector The position to store. 
---@param phys PhysObj The physics object to store. 
---@param bone number The hit bone to store. 
---@param normal Vector The hit normal to store. 
function Tool:SetObject( id, ent, pos, phys, bone, normal ) end
--- Sets the current operation of the tool. Does nothing clientside. See also [Tool:SetStage](/gmod/Tool:SetStage).
--- 
--- Operations and stages work as follows:
--- * Operation 1
--- * * Stage 1
--- * * Stage 2
--- * * Stage 3
--- * Operation 2
--- * * Stage 1
--- * * Stage 2
--- * * Stage ...
---@param operation number The new operation ID to set. 
function Tool:SetOperation( operation ) end
--- Sets the current stage of the tool. Does nothing clientside.
--- 
--- See also [Tool:SetOperation](/gmod/Tool:SetOperation).
---@param stage number The new stage to set. 
function Tool:SetStage( stage ) end
--- Initializes the ghost entity based on the supplied entity.
---@param ent Entity The entity to copy ghost parameters off 
function Tool:StartGhostEntity( ent ) end
--- Sets the tool's stage to how many stored objects the tool has.
function Tool:UpdateData(  ) end
--- Updates the position and orientation of the ghost entity based on where the toolgun owner is looking along with data from object with id 1 set by [Tool:SetObject](/gmod/Tool:SetObject).
--- 
--- This should be called in the tool's [TOOL:Think](/gmod/TOOL:Think) hook.
--- 
--- This command is only used for tools that move props, such as easy weld, axis and motor. If you want to update a ghost like the thruster tool does it for example, check its [source code](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stools/thruster.lua#L179).
function Tool:UpdateGhostEntity(  ) end
