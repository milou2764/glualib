---@meta
---@class IRestore
IRestore = {}
--- Ends current data block started with [IRestore:StartBlock](/gmod/IRestore:StartBlock) and returns to the parent block.
--- 
--- To avoid all sorts of errors, you **must** end all blocks you start.
function IRestore:EndBlock(  ) end
--- Reads next bytes from the restore object as an [Angle](/gmod/Angle).
---@return Angle
function IRestore:ReadAngle(  ) end
--- Reads next bytes from the restore object as a [boolean](/gmod/boolean).
---@return boolean
function IRestore:ReadBool(  ) end
--- Reads next bytes from the restore object as an [Entity](/gmod/Entity).
---@return Entity
function IRestore:ReadEntity(  ) end
--- Reads next bytes from the restore object as a floating point [number](/gmod/number).
---@return number
function IRestore:ReadFloat(  ) end
--- Reads next bytes from the restore object as an integer [number](/gmod/number).
---@return number
function IRestore:ReadInt(  ) end
--- Reads next bytes from the restore object as a [string](/gmod/string).
---@return string
function IRestore:ReadString(  ) end
--- Reads next bytes from the restore object as a [Vector](/gmod/Vector).
---@return Vector
function IRestore:ReadVector(  ) end
--- Loads next block of data to be read inside current block. Blocks **must** be ended with [IRestore:EndBlock](/gmod/IRestore:EndBlock).
---@return string
function IRestore:StartBlock(  ) end
