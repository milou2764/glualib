---@meta
net = {}
--- Sends the currently built net message to all connected players.
--- More information can be found in [Net Library Usage](/gmod/Net%20Library%20Usage).
function net.Broadcast(  ) end
--- Returns the amount of data left to read in the current message in bytes. Does nothing when sending data.
---@return number
---@return number
function net.BytesLeft(  ) end
--- Returns the size of the current message in bytes.
---@return number
---@return number
function net.BytesWritten(  ) end
--- Function called by the engine to tell the lua state a message arrived.
---@param length number The message length, in bits. 
---@param client Player The player that sent the message. This will be nil in the client state. 
function net.Incoming( length, client ) end
--- Reads an angle from the received net message.
---@return Angle
function net.ReadAngle(  ) end
--- Reads a bit from the received net message.
---@return number
function net.ReadBit(  ) end
--- Reads a boolean from the received net message.
---@return boolean
function net.ReadBool(  ) end
--- Reads a [Color](/gmod/Color) from the current net message.
---@return table
function net.ReadColor(  ) end
--- Reads pure binary data from the message.
---@param length number The length of the data to be read, in bytes. 
---@return string
function net.ReadData( length ) end
--- Reads a double-precision number from the received net message.
---@return number
function net.ReadDouble(  ) end
--- Reads an entity from the received net message. You should always check if the specified entity exists as it may have been removed and therefor NULL if it is outside of the players PVS or was already removed.
---@return Entity
function net.ReadEntity(  ) end
--- Reads a floating point number from the received net message.
---@return number
function net.ReadFloat(  ) end
--- Reads a word, basically unsigned short. This is used internally to read the "header" of the message which is an unsigned short which can be converted to the corresponding message name via [util.NetworkIDToString](/gmod/util.NetworkIDToString).
---@return number
function net.ReadHeader(  ) end
--- Reads an integer from the received net message.
---@param bitCount number The amount of bits to be read.    This must be set to what you set to [net.WriteInt](/gmod/net.WriteInt). Read more information at [net.WriteInt](/gmod/net.WriteInt). 
---@return number
function net.ReadInt( bitCount ) end
--- Reads a [VMatrix](/gmod/VMatrix) from the received net message.
---@return VMatrix
function net.ReadMatrix(  ) end
--- Reads a normal vector from the net message.
---@return Vector
function net.ReadNormal(  ) end
--- Reads a null terminated string from the net stream. The size of the string is 8 bits plus 8 bits for every ASCII character in the string.
---@return string
function net.ReadString(  ) end
--- Reads a table from the received net message.
--- 
--- 
--- 
--- 
--- See [net.WriteTable](/gmod/net.WriteTable) for extra info.
--- You may get `net.ReadType: Couldn't read type X` during the execution of the function, the problem is that you are sending objects that cannot be serialized/sent over the network.
---@return table
function net.ReadTable(  ) end
--- Reads a value from the net message with the specified type, written by [net.WriteType](/gmod/net.WriteType).
---@param typeID? number The type of value to be read, using [TYPE](/gmod/Enums/TYPE). 
---@return any
function net.ReadType( typeID ) end
--- Reads an unsigned integer with the specified number of bits from the received net message.
---@param numberOfBits number The size of the integer to be read, in bits. 
---@return number
function net.ReadUInt( numberOfBits ) end
--- Reads a vector from the received net message.  Vectors sent by this function are compressed, which may result in precision loss. See [net.WriteVector](/gmod/net.WriteVector) for more information.
---@return Vector
function net.ReadVector(  ) end
--- Adds a net message handler. Only one receiver can be used to receive the net message.
---@param messageName string The message name to hook to. 
---@param callback function The function to be called if the specified message was received. Arguments are:    [number](/gmod/number) len - Length of the message, in bits  [Player](/gmod/Player) ply - The player that sent the message, works only serverside 
function net.Receive( messageName, callback ) end
--- Sends the current message to the specified player, or to all players listed in the table.
---@param ply Player The player(s) to send the message to. Can be a table of players or a [CRecipientFilter](/gmod/CRecipientFilter). 
function net.Send( ply ) end
--- Sends the current message to all except the specified, or to all except all players in the table.
---@param ply Player The player(s) to NOT send the message to. Can be a table of players 
function net.SendOmit( ply ) end
--- Sends the message to all players that are in the same potentially audible set(PAS) as the position, or simply said, it adds all players that can potentially hear sounds from this position.
---@param position Vector PAS position. 
function net.SendPAS( position ) end
--- Sends the message to all players the position is in the PVS of or, more simply said, sends the message to players that can potentially see this position.
---@param position Vector Position that must be in players' visibility set. 
function net.SendPVS( position ) end
--- Sends the current message to the server.
function net.SendToServer(  ) end
--- Begins a new net message. If another net message is already started and hasn't been sent yet, it will be discarded.
---@param messageName string The name of the message to send 
---@param unreliable? boolean If set to true, the message is not guaranteed to reach its destination 
---@return boolean
function net.Start( messageName, unreliable ) end
--- Writes an angle to the current net message.
---@param angle Angle The angle to be sent. 
function net.WriteAngle( angle ) end
--- Appends a boolean (as 1 or 0) to the current net message.
--- 
--- Please note that the bit is written here from a [boolean](/gmod/boolean) (true/false) but [net.ReadBit](/gmod/net.ReadBit) returns a number.
---@param boolean boolean Bit status (false = 0, true = 1) 
function net.WriteBit( boolean ) end
--- Appends a boolean to the current net message. Alias of [net.WriteBit](/gmod/net.WriteBit)
---@param boolean boolean Boolean value to write 
function net.WriteBool( boolean ) end
--- Appends a [Color](/gmod/Color) to the current net message.
---@param Color table The [Color](/gmod/Color) you want to append to the net message. 
function net.WriteColor( Color ) end
--- Writes a chunk of binary data to the message.
---@param binaryData string The binary data to be sent. 
---@param length number The length of the binary data to be sent, in bytes. 
function net.WriteData( binaryData, length ) end
--- Appends a double-precision number to the current net message.
---@param double number The double to be sent 
function net.WriteDouble( double ) end
--- Appends an entity to the current net message.
---@param entity Entity The entity to be sent. 
function net.WriteEntity( entity ) end
--- Appends a float (number with decimals) to the current net message.
---@param float number The float to be sent. 
function net.WriteFloat( float ) end
--- Appends an integer - a whole number - to the current net message. Can be read back with [net.ReadInt](/gmod/net.ReadInt) on the receiving end.
--- 
--- Use [net.WriteUInt](/gmod/net.WriteUInt) to send an unsigned number (that you know will never be negative). Use [net.WriteFloat](/gmod/net.WriteFloat) for a non-whole number (e.g. 2.25).
---@param integer number The integer to be sent. 
---@param bitCount number The amount of bits the number consists of. This must be 32 or less.    If you are unsure what to set, just set it to 32.        Consult the table below to determine the bit count you need:    | Bit Count |  Minimum value |  Maximum value |  |-----------|:--------------:|:--------------:|  | 3 | -4 | 3 |  | 4 | -8 | 7 |  | 5 | -16 | 15 |  | 6 | -32 | 31 |  | 7 | -64 | 63 |  | 8 | -128 | 127 |  | 9 | -256 | 255 |  | 10 | -512 | 511 |  | 11 | -1024 | 1023 |  | 12 | -2048 | 2047 |  | 13 | -4096 | 4095 |  | 14 | -8192 | 8191 |  | 15 | -16384 | 16383 |  | 16 | -32768 | 32767 |  | 17 | -65536 | 65535 |  | 18 | -131072 | 131071 |  | 19 | -262144 | 262143 |  | 20 | -524288 | 524287 |  | 21 | -1048576 | 1048575 |  | 22 | -2097152 | 2097151 |  | 23 | -4194304 | 4194303 |  | 24 | -8388608 | 8388607 |  | 25 | -16777216 | 16777215 |  | 26 | -33554432 | 33554431 |  | 27 | -67108864 | 67108863 |  | 28 | -134217728 | 134217727 |  | 29 | -268435456 | 268435455 |  | 30 | -536870912 | 536870911 |  | 31 | -1073741824 | 1073741823 |  | 32 | -2147483648 | 2147483647 | 
function net.WriteInt( integer, bitCount ) end
--- Writes a [VMatrix](/gmod/VMatrix) to the current net message.
---@param matrix VMatrix The matrix to be sent. 
function net.WriteMatrix( matrix ) end
--- Writes a normalized/direction vector ( Vector with length of 1 ) to the net message.
--- 
--- This function uses less bandwidth compared to [net.WriteVector](/gmod/net.WriteVector) and will not send vectors with length of > 1 properly.
---@param normal Vector The normalized/direction vector to be send. 
function net.WriteNormal( normal ) end
--- Appends a string to the current net message. The size of the string is 8 bits plus 8 bits for every ASCII character in the string. The maximum allowed length of a single written string is 65533 characters.
---@param string string The string to be sent. 
function net.WriteString( string ) end
--- Appends a table to the current net message. Adds 16 extra bits per key/value pair so you're better off writing each individual key/value as the exact type if possible.
---@param table table The table to be sent. 
function net.WriteTable( table ) end
--- Appends any type of value to the current net message.
---@param Data any The data to be sent 
function net.WriteType( Data ) end
--- Appends an unsigned integer with the specified number of bits to the current net message.
--- Use [net.WriteInt](/gmod/net.WriteInt) if you want to send negative and positive numbers. Use [net.WriteFloat](/gmod/net.WriteFloat) for a non-whole number (e.g. 2.25).
---@param unsignedInteger number The unsigned integer to be sent. 
---@param numberOfBits number The size of the integer to be sent, in bits. Acceptable values range from any number 1 to 32 inclusive. For reference, 1 = bit, 4 = nibble, 8 = byte, 16 = short, 32 = long.    Consult the table below to determine the bit count you need. The minimum value for all bit counts is 0.    | Bit Count |  Maximum value |  |-----------|:--------------:|  | 1 | 1  |  | 2 | 3  |  | 3 | 7  |  | 4 | 15 |  | 5 | 31 |  | 6 | 63 |  | 7 | 127 |  | 8 | 255 |  | 9 | 511 |  | 10 | 1023 |  | 11 | 2047 |  | 12 | 4095 |  | 13 | 8191 |  | 14 | 16383 |  | 15 | 32767 |  | 16 | 65535 |  | 17 | 131071 |  | 18 | 262143 |  | 19 | 524287  |  | 20 | 1048575  |  | 21 | 2097151  |  | 22 | 4194303  |  | 23 | 8388607  |  | 24 | 16777215  |  | 25 | 33554431  |  | 26 | 67108863  |  | 27 | 134217727  |  | 28 | 268435455  |  | 29 | 536870911  |  | 30 | 1073741823 |  | 31 | 2147483647 |  | 32 | 4294967295 | 
function net.WriteUInt( unsignedInteger, numberOfBits ) end
--- Appends a vector to the current net message.
--- Vectors sent by this function are compressed, which may result in precision loss.  XYZ components greater than 16384 or less than -16384 are irrecoverably altered (most significant bits are trimmed) and precision after the decimal point is low.
---@param vector Vector The vector to be sent. 
function net.WriteVector( vector ) end
