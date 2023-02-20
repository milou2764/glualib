---@meta
---@class Trace
---@field start Vector The start position of the trace 
---@field endpos Vector The end position of the trace 
---@field filter Entity Things the trace should not hit. Can also be a table of entities or a function with one argument:   * [Entity](/gmod/Entity) ent - The entity that the trace hit  Return true in the function to hit the entity, false to skip it. 
---@field mask number The trace mask [MASK](/gmod/Enums/MASK). This determines what the trace should hit and what it shouldn't hit. A mask is a combination of [CONTENTS](/gmod/Enums/CONTENTS) - you can use these for more advanced masks. 
---@field collisiongroup number The collision group [COLLISION_GROUP](/gmod/Enums/COLLISION_GROUP). This determines what the trace should hit in regards to the entity's collision group. 
---@field ignoreworld boolean Should the trace ignore world or not 
---@field output table If set, the trace result will be written to the supplied table instead of returning a new table 
Trace = {}