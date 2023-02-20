---@meta
utf8 = {}
--- Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence and returns a string with the concatenation of all these sequences.
---@param codepoints any Unicode code points to be converted in to a UTF-8 string. 
---@return string
function utf8.char( codepoints ) end
--- Returns the codepoints (as numbers) from all characters in the given string that start between byte position startPos and endPos. It raises an error if it meets any invalid byte sequence. This functions similarly to [string.byte](/gmod/string.byte).
---@param string string The string that you will get the code(s) from. 
---@param startPos? number The starting byte of the string to get the codepoint of. 
---@param endPos? number The ending byte of the string to get the codepoint of. 
---@return any
function utf8.codepoint( string, startPos, endPos ) end
--- Returns an iterator (like [string.gmatch](/gmod/string.gmatch)) which returns both the position and codepoint of each utf8 character in the string. It raises an error if it meets any invalid byte sequence.
---@param string string The string that you will get the codes from. 
---@return function
function utf8.codes( string ) end
--- Forces a string to contain only valid UTF-8 data. Invalid sequences are replaced with U+FFFD (the Unicode replacement character).
--- 
--- This is a lazy way for users to ensure a string contains only valid UTF-8 data.
---@param string string The string that will become a valid UTF-8 string. 
---@return string
function utf8.force( string ) end
--- A UTF-8 compatible version of [string.GetChar](/gmod/string.GetChar).
---@param str string The string that you will be searching with the supplied index. 
---@param index number The index's value of the string to be returned. 
---@return string
function utf8.GetChar( str, index ) end
--- Returns the number of UTF-8 sequences in the given string between positions startPos and endPos (both inclusive). If it finds any invalid UTF-8 byte sequence, returns false as well as the position of the first invalid byte.
---@param string string The string to calculate the length of. 
---@param startPos? number The starting position to get the length from. 
---@param endPos? number The ending position to get the length from. 
---@return number
---@return number
function utf8.len( string, startPos, endPos ) end
--- Returns the byte-index of the n'th UTF-8-character after the given startPos (nil if none). startPos defaults to 1 when n is positive and -1 when n is negative. If n is zero, this function instead returns the byte-index of the UTF-8-character startPos lies within.
---@param string string The string that you will get the byte position from. 
---@param n number The position to get the beginning byte position from. 
---@param startPos? number The offset for n. 
---@return number
function utf8.offset( string, n, startPos ) end
--- A UTF-8 compatible version of [string.sub](/gmod/string.sub).
---@param string string The string you'll take a sub-string out of. 
---@param StartPos number The position of the first character that will be included in the sub-string. 
---@param EndPos? number The position of the last character to be included in the sub-string. It can be negative to count from the end. 
---@return string
function utf8.sub( string, StartPos, EndPos ) end
--- # Not a function
--- 
--- This is NOT a function, it's the [pattern](/gmod/Patterns) (a string, not a function) 
--- 
--- ```
--- "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*"
--- ```
--- which matches exactly one UTF-8 byte sequence, assuming that the subject is a valid UTF-8 string.
function utf8.charpattern(  ) end
