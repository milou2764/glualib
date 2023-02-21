---@meta
string = {}
--- Returns the given string's characters in their numeric ASCII representation.
---@param string string The string to get the chars from. 
---@param startPos? number The first character of the string to get the byte of. 
---@param endPos? number The last character of the string to get the byte of. 
---@return any
function string.byte( string, startPos, endPos ) end
--- Takes the given numerical bytes and converts them to a string.
---@param bytes any The bytes to create the string from. 
---@return string
function string.char( bytes ) end
--- Inserts commas for every third digit.
---@param InputNumber number The input number to commafy 
---@return string
function string.Comma( InputNumber ) end
--- Returns the binary bytecode of the given function.
---@param func function The function to get the bytecode of 
---@param stripDebugInfo? boolean True to strip the debug data, false to keep it 
---@return string
function string.dump( func, stripDebugInfo ) end
--- Returns whether or not the second passed string matches the end of the first.
---@param str string The string whose end is to be checked. 
---@param end_ string The string to be matched with the end of the first. 
---@return boolean
function string.EndsWith( str, end_ ) end
--- Splits a string up wherever it finds the given separator.
--- 
--- This is the reverse of [string.Implode](/gmod/string.Implode).
---@param separator string The string will be separated wherever this sequence is found. 
---@param str string The string to split up. 
---@param use_patterns boolean Set this to true if your separator is a [pattern](/gmod/Patterns). 
---@return table
function string.Explode( separator, str, use_patterns ) end
--- Attempts to find the specified substring in a string, uses [Patterns](/gmod/Patterns) by default.
---@param haystack string The string to search in. 
---@param needle string The string to find, can contain patterns if enabled. 
---@param startPos? number The position to start the search from, can be negative start position will be relative to the end position. 
---@param noPatterns? boolean Disable patterns. 
---@return number
---@return number
---@return string
function string.find( haystack, needle, startPos, noPatterns ) end
--- Formats the specified values into the string given.
---@param format string The string to be formatted.  Follows this format: http://www.cplusplus.com/reference/cstdio/printf/    LuaJIT supports all specifiers and doesn't support `*` width and `.*` presision.    LuaJIT exclusives:    | Format | Description | Example of the output |  |:------:|:-----------:|:---------------------:|  | %p | Returns pointer to supplied structure (table/function) | `0xf20a8968` |  | %q | Formats a string between double quotes, using escape sequences when necessary to ensure that it can safely be read back by the Lua interpreter | `"test\1\2test"` | 
---@param formatParameters any Values to be formatted into the string. 
---@return string
function string.format( format, formatParameters ) end
--- Returns the time as a formatted string or as a table if no format is given.
---@param float number The time in seconds to format. 
---@param format? string An optional formatting to use. If no format it specified, a table will be returned instead. 
---@return string
function string.FormattedTime( float, format ) end
--- Creates a string from a Color variable.
---@param color table The color to put in the string. 
---@return string
function string.FromColor( color ) end
--- Returns char value from the specified index in the supplied string.
---@param str string The string that you will be searching with the supplied index. 
---@param index number The index's value of the string to be returned. 
---@return string
function string.GetChar( str, index ) end
--- Returns extension of the file.
---@param file string String eg. file-path to get the file extensions from. 
---@return string
function string.GetExtensionFromFilename( file ) end
--- Returns file name and extension.
---@param pathString string The string eg. file-path to get the file-name from. 
---@return string
function string.GetFileFromFilename( pathString ) end
--- Returns the path only from a file's path.
---@param Inputstring string String to get path from. 
---@return string
function string.GetPathFromFilename( Inputstring ) end
--- Returns an iterator function that is called for every complete match of the pattern, all sub matches will be passed as to the loop.
---@param data string The string to search in 
---@param pattern string The pattern to search for 
---@return function
function string.gfind( data, pattern ) end
--- Using [Patterns](/gmod/Patterns), returns an iterator which will return either one value if no capture groups are defined, or any capture group matches.
---@param data string The string to search in 
---@param pattern string The pattern to search for 
---@return function
function string.gmatch( data, pattern ) end
--- This functions main purpose is to replace certain character sequences in a string using [Patterns](/gmod/Patterns).
---@param string string String which should be modified. 
---@param pattern string The pattern that defines what should be matched and eventually be replaced. 
---@param replacement string In case of a string the matched sequence will be replaced with it.    In case of a table, the matched sequence will be used as key and the table will tested for the key, if a value exists it will be used as replacement.    In case of a function all matches will be passed as parameters to the function, the return value(s) of the function will then be used as replacement. 
---@param maxReplaces? number Maximum number of replacements to be made. 
---@return string
---@return number
function string.gsub( string, pattern, replacement, maxReplaces ) end
--- Joins the values of a table together to form a string.
--- 
--- This is the reverse of [string.Explode](/gmod/string.Explode) and is functionally identical to [table.concat](/gmod/table.concat), but with less features.
---@param separator string The separator to insert between each piece. 
---@param pieces table The table of pieces to concatenate. The keys for these must be numeric and sequential. 
---@return string
function string.Implode( separator, pieces ) end
--- Escapes special characters for JavaScript in a string, making the string safe for inclusion in to JavaScript strings.
---@param str string The string that should be escaped. 
---@return string
function string.JavascriptSafe( str ) end
--- Returns everything left of supplied place of that string.
---@param str string The string to extract from. 
---@param num number Amount of chars relative to the beginning (starting from 1). 
---@return string
function string.Left( str, num ) end
--- Counts the number of characters in the string (length). This is equivalent to using the length operator (#).
---@param str string The string to find the length of. 
---@return number
function string.len( str ) end
--- Changes any upper-case letters in a string to lower-case letters.
---@param str string The string to convert. 
---@return string
function string.lower( str ) end
--- Finds a [Pattern](/gmod/Patterns) in a string.
---@param string string String which should be searched in for matches. 
---@param pattern string The pattern that defines what should be matched. 
---@param startPosition? number The start index to start the matching from, can be negative to start the match from a position relative to the end. 
---@return any
function string.match( string, pattern, startPosition ) end
--- Converts a digital filesize to human-readable text.
---@param bytes number The filesize in bytes. 
---@return string
function string.NiceSize( bytes ) end
--- Formats the supplied number (in seconds) to the highest possible time unit.
---@param num number The number to format, in seconds. 
---@return string
function string.NiceTime( num ) end
--- Escapes all special characters within a string, making the string safe for inclusion in a Lua pattern.
---@param str string The string to be sanitized 
---@return string
function string.PatternSafe( str ) end
--- Repeats a string by the provided number, with an optional separator.
---@param str string The string to convert. 
---@param repetitions number Timer to repeat, this values gets rounded internally. 
---@param separator string String that will separate the repeated piece. Notice that it doesn't add this string to the start or the end of the result, only between the repeated parts. 
---@return string
function string.rep( str, repetitions, separator ) end
--- Replaces all occurrences of the supplied second string.
---@param str string The string we are seeking to replace an occurrence(s). 
---@param find string What we are seeking to replace. 
---@param replace string What to replace find with. 
---@return string
function string.Replace( str, find, replace ) end
--- Reverses a string.
---@param str string The string to be reversed. 
---@return string
function string.reverse( str ) end
--- Returns the last n-th characters of the string.
---@param str string The string to extract from. 
---@param num number Amount of chars relative to the end (starting from 1). 
---@return string
function string.Right( str, num ) end
--- Sets the character at the specific index of the string.
---@param InputString string The input string 
---@param Index number The character index, 1 is the first from left. 
---@param ReplacementChar string String to replace with. 
---@return string
function string.SetChar( InputString, Index, ReplacementChar ) end
--- Splits the string into a table of strings, separated by the second argument.
--- 
--- This is an alias of [string.Explode](/gmod/string.Explode).
---@param Inputstring string String to split 
---@param Separator string Character(s) to split with. 
---@return table
function string.Split( Inputstring, Separator ) end
--- Returns whether or not the first string starts with the second.
---@param inputStr string String to check. 
---@param start string String to check with. 
---@return boolean
function string.StartWith( inputStr, start ) end
--- Removes the extension of a path.
---@param Inputstring string The path to change. 
---@return string
function string.StripExtension( Inputstring ) end
--- Returns a sub-string, starting from the character at position `StartPos` of the string (inclusive), and optionally ending at the character at position `EndPos` of the string (also inclusive). If EndPos is not given, the rest of the string is returned.
---@param string string The string you'll take a sub-string out of. 
---@param StartPos number The position of the first character that will be included in the sub-string. 
---@param EndPos? number The position of the last character to be included in the sub-string. It can be negative to count from the end. 
---@return string
function string.sub( string, StartPos, EndPos ) end
--- Fetches a Color type from a string.
---@param Inputstring string The string to convert from. 
---@return table
function string.ToColor( Inputstring ) end
--- Returns given time in "MM:SS" format.
---@param time number Time in seconds 
---@return string
function string.ToMinutesSeconds( time ) end
--- Returns given time in "MM:SS:MS" format.
---@param time number Time in seconds 
---@return string
function string.ToMinutesSecondsMilliseconds( time ) end
--- Splits the string into characters and creates a sequential table of characters.
---@param str string The string you'll turn into a table. 
---@return table
function string.ToTable( str ) end
--- Removes leading and trailing matches of a string.
---@param Inputstring string The string to trim. 
---@param Char? string String to match - can be multiple characters. Matches spaces by default. 
---@return string
function string.Trim( Inputstring, Char ) end
--- Removes leading spaces/characters from a string.
---@param str string String to trim 
---@param char string Custom character to remove 
---@return string
function string.TrimLeft( str, char ) end
--- Removes trailing spaces/passed character from a string.
---@param str string String to remove from 
---@param char string Custom character to remove, default is a space 
---@return string
function string.TrimRight( str, char ) end
--- Changes any lower-case letters in a string to upper-case letters.
---@param str string The string to convert. 
---@return string
function string.upper( str ) end
