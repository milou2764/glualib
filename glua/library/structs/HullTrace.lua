---@meta
---@class HullTrace
---@field start Vector The start position of the trace 
---@field endpos Vector The end position of the trace 
---@field maxs Vector The 3D vector local to the start/endpos with the highest values. This will represent the corner with the upper bounds of the box. 
---@field mins Vector The 3D vector local to the start/endpos with the lowest (often negative) values. This will represent the corner with the lower bounds of the box. 
---@field filter Entity Things the trace should not hit. Can also be a table of entities or a function with one argument:   * [Entity](/gmod/Entity) ent - The entity that the trace hit  Using a function here is super slow. Try to avoid it. 
---@field mask number The trace mask [MASK](/gmod/Enums/MASK). This determines what the trace should hit and what it shouldn't hit. 
---@field collisiongroup number The collision group [COLLISION_GROUP](/gmod/Enums/COLLISION_GROUP). This determines what the trace should hit in regards to the entity's collision group. 
---@field ignoreworld boolean Should the trace ignore world or not. 
---@field output table If set, the trace result will be written to the supplied table instead of returning a new table 
HullTrace = {}