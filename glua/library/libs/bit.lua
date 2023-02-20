---@meta
bit = {}
--- Returns the arithmetically shifted value.
---@param value number The value to be manipulated. 
---@param shiftCount number Amounts of bits to shift. 
---@return number
function bit.arshift( value, shiftCount ) end
--- Performs the bitwise "and" for all values specified.
---@param value number The value to be manipulated. 
---@param otherValues? number Values bit to perform bitwise "and" with. Optional. 
---@return number
function bit.band( value, otherValues ) end
--- Returns the bitwise not of the value.
---@param value number The value to be inverted. 
---@return number
function bit.bnot( value ) end
--- Returns the bitwise OR of all values specified.
---@param value1 number The first value. 
---@param ... any Extra values to be evaluated. (must all be numbers) 
---@return number
function bit.bor( value1, ... ) end
--- Swaps the byte order.
---@param value number The value to be byte swapped. 
---@return number
function bit.bswap( value ) end
--- Returns the bitwise xor of all values specified.
---@param value number The value to be manipulated. 
---@param otherValues? number Values bit xor with. Optional. 
---@return number
function bit.bxor( value, otherValues ) end
--- Returns the left shifted value.
---@param value number The value to be manipulated. 
---@param shiftCount number Amounts of bits to shift left by. 
---@return number
function bit.lshift( value, shiftCount ) end
--- Returns the left rotated value.
---@param value number The value to be manipulated. 
---@param shiftCount number Amounts of bits to rotate left by. 
---@return number
function bit.rol( value, shiftCount ) end
--- Returns the right rotated value.
---@param value number The value to be manipulated. 
---@param shiftCount number Amounts of bits to rotate right by. 
---@return number
function bit.ror( value, shiftCount ) end
--- Returns the right shifted value.
---@param value number The value to be manipulated. 
---@param shiftCount number Amounts of bits to shift right by. 
---@return number
function bit.rshift( value, shiftCount ) end
--- Normalizes the specified value and clamps it in the range of a signed 32bit integer.
---@param value number The value to be normalized. 
---@return number
function bit.tobit( value ) end
--- Returns the hexadecimal representation of the number with the specified digits.
---@param value number The value to be normalized. 
---@param digits? number The number of digits. Optional 
---@return string
function bit.tohex( value, digits ) end
