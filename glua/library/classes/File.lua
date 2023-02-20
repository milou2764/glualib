---@meta
---@class File
File = {}
--- Dumps the file changes to disk and closes the file handle which makes the handle useless.
function File:Close(  ) end
--- Returns whether the [File](/gmod/File) object has reached the end of file or not.
---@return boolean
function File:EndOfFile(  ) end
--- Dumps the file changes to disk and saves the file.
function File:Flush(  ) end
--- Reads the specified amount of chars and returns them as a binary string.
---@param length number Reads the specified amount of chars. 
---@return string
function File:Read( length ) end
--- Reads one byte of the file and returns whether that byte was not 0.
---@return boolean
function File:ReadBool(  ) end
--- Reads one unsigned 8-bit integer from the file.
---@return number
function File:ReadByte(  ) end
--- Reads an 8-byte little-endian IEEE-754 floating point double from the file.
---@return number
function File:ReadDouble(  ) end
--- Reads an IEEE 754 little-endian 4-byte float from the file.
---@return number
function File:ReadFloat(  ) end
--- Returns the contents of the file from the current position up until the end of the current line.
---@return string
function File:ReadLine(  ) end
--- Reads a signed little-endian 32-bit integer from the file.
---@return number
function File:ReadLong(  ) end
--- Reads a signed little-endian 16-bit integer from the file.
---@return number
function File:ReadShort(  ) end
--- Reads an unsigned little-endian 32-bit integer from the file.
---@return number
function File:ReadULong(  ) end
--- Reads an unsigned little-endian 16-bit integer from the file.
---@return number
function File:ReadUShort(  ) end
--- Sets the file pointer to the specified position.
---@param pos number Pointer position, in bytes. 
function File:Seek( pos ) end
--- Returns the size of the file in bytes.
---@return number
function File:Size(  ) end
--- Moves the file pointer by the specified amount of chars.
---@param amount number The amount of chars to skip, can be negative to skip backwards. 
---@return number
function File:Skip( amount ) end
--- Returns the current position of the file pointer.
---@return number
function File:Tell(  ) end
--- Writes the given string into the file.
---@param data string Binary data to write to the file. 
function File:Write( data ) end
--- Writes a boolean value to the file as one **byte**.
---@param bool boolean The bool to be written to the file. 
function File:WriteBool( bool ) end
--- Write an 8-bit unsigned integer to the file.
---@param uint8 number The 8-bit unsigned integer to be written to the file. 
function File:WriteByte( uint8 ) end
--- Writes an 8-byte little-endian IEEE-754 floating point double to the file.
---@param double number The double to be written to the file. 
function File:WriteDouble( double ) end
--- Writes an IEEE 754 little-endian 4-byte float to the file.
---@param float number The float to be written to the file. 
function File:WriteFloat( float ) end
--- Writes a signed little-endian 32-bit integer to the file.
---@param int32 number The 32-bit signed integer to be written to the file. 
function File:WriteLong( int32 ) end
--- Writes a signed little-endian 16-bit integer to the file.
---@param int16 number The 16-bit signed integer to be written to the file. 
function File:WriteShort( int16 ) end
--- Writes an unsigned little-endian 32-bit integer to the file.
---@param uint32 number The unsigned 32-bit integer to be written to the file. 
function File:WriteULong( uint32 ) end
--- Writes an unsigned little-endian 16-bit integer to the file.
---@param uint16 number The unsigned 16-bit integer to the file. 
function File:WriteUShort( uint16 ) end
