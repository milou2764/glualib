---@meta
---@class MatProxyData
---@field name string The name of the material proxy 
---@field init function The function used to get variables from the ".vmt". Called once per each ".vmt". Arguments are: * [table](/gmod/table) self * [string](/gmod/string) materialName * [table](/gmod/table) values 
---@field bind function The function used to apply the proxy. This is called every frame while any materials with this proxy are used in world. Arguments are: * [table](/gmod/table) self * [string](/gmod/string) materialName * [Entity](/gmod/Entity) ent 
MatProxyData = {}