---@meta
---@class ISave
ISave = {}
--- Ends current data block started with [ISave:StartBlock](/gmod/ISave:StartBlock) and returns to the parent block.
--- 
--- To avoid all sorts of errors, you **must** end all blocks you start.
function ISave:EndBlock(  ) end
--- Starts a new block of data that you can write to inside current block. Blocks **must** be ended with [ISave:EndBlock](/gmod/ISave:EndBlock).
---@param name string Name of the new block. Used for determining which block is which, returned by [IRestore:StartBlock](/gmod/IRestore:StartBlock) during game load. 
function ISave:StartBlock( name ) end
--- Writes an [Angle](/gmod/Angle) to the save object.
---@param ang Angle The angle to write. 
function ISave:WriteAngle( ang ) end
--- Writes a [boolean](/gmod/boolean) to the save object.
---@param bool boolean The boolean to write. 
function ISave:WriteBool( bool ) end
--- Writes an [Entity](/gmod/Entity) to the save object.
---@param ent Entity The entity to write. 
function ISave:WriteEntity( ent ) end
--- Writes a floating point [number](/gmod/number) to the save object.
---@param float number The floating point number to write. 
function ISave:WriteFloat( float ) end
--- Writes an integer [number](/gmod/number) to the save object.
---@param int number The integer number to write. 
function ISave:WriteInt( int ) end
--- Writes a [string](/gmod/string) to the save object.
---@param str string The string to write. Maximum length is 1024. 
function ISave:WriteString( str ) end
--- Writes a [Vector](/gmod/Vector) to the save object.
---@param vec Vector The vector to write. 
function ISave:WriteVector( vec ) end
