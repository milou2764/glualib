---@meta
package = {}
--- Sets a metatable for module with its __index field referring to the global environment, so that this module inherits values from the global environment. To be used as an option to [module](/gmod/Global.module).
---@param module table The module table to be given a metatable 
function package.seeall( module ) end
