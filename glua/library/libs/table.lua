---@meta
table = {}
--- Adds the contents from one table into another. The target table will be modified.
--- 
--- See also [table.insert](/gmod/table.insert), [table.Inherit](/gmod/table.Inherit) and [table.Merge](/gmod/table.Merge).
---@param target table The table to insert the new values into. 
---@param source table The table to retrieve the values from. 
---@return table
function table.Add( target, source ) end
--- Changes all keys to sequential integers. This creates a new table object and does not affect the original.
---@param table table The original table to modify. 
---@param saveKeys? boolean Save the keys within each member table. This will insert a new field `__key` into each value, and should not be used if the table contains non-table values. 
---@return table
function table.ClearKeys( table, saveKeys ) end
--- Collapses a table with keyvalue structure
---@param input table Input table 
---@return table
function table.CollapseKeyValue( input ) end
--- Concatenates the contents of a table to a string.
---@param tbl table The table to concatenate. 
---@param concatenator string A separator to insert between strings 
---@param startPos? number The key to start at 
---@param endPos? number The key to end at 
---@return string
function table.concat( tbl, concatenator, startPos, endPos ) end
--- Creates a deep copy and returns that copy.
---@param originalTable table The table to be copied. 
---@return table
function table.Copy( originalTable ) end
--- Empties the target table, and merges all values from the source table into it.
---@param source table The table to copy from. 
---@param target table The table to write to. 
function table.CopyFromTo( source, target ) end
--- Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed. For those tables, consider the length (**#**) operator.
--- 
--- If you only want to test if the table is empty or not, use [table.IsEmpty](/gmod/table.IsEmpty) instead as it is a lot faster.
---@param tbl table The table to count the keys of. 
---@return number
function table.Count( tbl ) end
--- Converts a table that has been sanitised with [table.Sanitise](/gmod/table.Sanitise) back to its original form
---@param tbl table Table to be de-sanitised 
---@return table
function table.DeSanitise( tbl ) end
--- Removes all values from a table.
---@param tbl table The table to empty. 
function table.Empty( tbl ) end
--- Returns the value positioned after the supplied value in a table. If it isn't found then the first element in the table is returned
---@param tbl table Table to search 
---@param value any Value to return element after 
---@return any
function table.FindNext( tbl, value ) end
--- Returns the value positioned before the supplied value in a table. If it isn't found then the last element in the table is returned
---@param tbl table Table to search 
---@param value any Value to return element before 
---@return any
function table.FindPrev( tbl, value ) end
--- Inserts a value in to the given table even if the table is non-existent
---@param tab? table Table to insert value in to 
---@param value any Value to insert 
---@return table
function table.ForceInsert( tab, value ) end
--- Iterates for each key-value pair in the table, calling the function with the key and value of the pair. If the function returns anything, the loop is broken.
--- 
--- This is inherited from the original Lua implementation and is deprecated in Lua as of 5.1; see [here](http://lua-users.org/wiki/TableLibraryTutorial). You should use [pairs](/gmod/Global.pairs) instead. The GLua interpretation of this is [table.ForEach](/gmod/table.ForEach).
---@param tbl table The table to iterate over. 
---@param callback function The function to run for each key and value. 
function table.foreach( tbl, callback ) end
--- Iterates for each numeric index in the table in order.
--- 
--- This is inherited from the original Lua implementation and is deprecated in Lua as of 5.1; see [here](http://lua-users.org/wiki/TableLibraryTutorial). You should use [ipairs](/gmod/Global.ipairs)() instead.
---@param table table The table to iterate over. 
---@param func function The function to run for each index. 
function table.foreachi( table, func ) end
--- Returns the first key found in the given table
---@param tab table Table to retrieve key from 
---@return any
function table.GetFirstKey( tab ) end
--- Returns the first value found in the given table
---@param tab table Table to retrieve value from 
---@return any
function table.GetFirstValue( tab ) end
--- Returns all keys of a table.
---@param tabl table The table to get keys of 
---@return table
function table.GetKeys( tabl ) end
--- Returns the last key found in the given table
---@param tab table Table to retrieve key from 
---@return any
function table.GetLastKey( tab ) end
--- Returns the last value found in the given table
---@param tab table Table to retrieve value from 
---@return any
function table.GetLastValue( tab ) end
--- Returns the length of the table.
---@param tbl table The table to check. 
---@return number
function table.getn( tbl ) end
--- Returns a key of the supplied table with the highest number value.
---@param inputTable table The table to search in. 
---@return any
function table.GetWinningKey( inputTable ) end
--- Checks if a table has a value.
---@param tbl table Table to check 
---@param value any Value to search for 
---@return boolean
function table.HasValue( tbl, value ) end
--- Copies any missing data from base to target, and sets the target's `BaseClass` member to the base table's pointer.
--- 
--- See [table.Merge](/gmod/table.Merge), which overrides existing values and doesn't add a BaseClass member.
--- 
--- 
--- See also [table.Add](/gmod/table.Add), which simply adds values of one table to another.
---@param target table Table to copy data to 
---@param base table Table to copy data from 
---@return table
function table.Inherit( target, base ) end
--- Inserts a value into a table at the end of the table or at the given position.
---@param tbl table The table to insert the variable into. 
---@param position number The position in the table to insert the variable. If the third argument is nil this argument becomes the value to insert at the end of given table. 
---@param value any The variable to insert into the table. 
---@return number
function table.insert( tbl, position, value ) end
--- Returns whether or not the given table is empty.
--- 
--- This works on both sequential and non-sequential tables, and is a lot faster to use than `table.Count(tbl) == 0`.
---@param tab table Table to check. 
---@return boolean
function table.IsEmpty( tab ) end
--- Returns whether or not the table's keys are sequential
---@param tab table Table to check 
---@return boolean
function table.IsSequential( tab ) end
--- Returns the first key found to be containing the supplied value
---@param tab table Table to search 
---@param value any Value to search for 
---@return any
function table.KeyFromValue( tab, value ) end
--- Returns a table of keys containing the supplied value
---@param tab table Table to search 
---@param value any Value to search for 
---@return table
function table.KeysFromValue( tab, value ) end
--- Returns a copy of the input table with all string keys converted to be lowercase recursively
---@param tbl table Table to convert 
---@return table
function table.LowerKeyNames( tbl ) end
--- Returns the highest numerical key.
---@param tbl table The table to search. 
---@return number
function table.maxn( tbl ) end
--- Merges the contents of the second table with the content in the first one. The destination table will be modified.
--- 
--- See [table.Inherit](/gmod/table.Inherit), which doesn't override existing values.
--- 
--- 
--- See also [table.Add](/gmod/table.Add), which simply adds values of one table to another.
---@param destination table The table you want the source table to merge with 
---@param source table The table you want to merge with the destination table 
---@return table
function table.Merge( destination, source ) end
--- Returns a random value from the supplied table.
---@param haystack table The table to choose from. 
---@return any
---@return any
function table.Random( haystack ) end
--- Removes a value from a table and shifts any other values down to fill the gap.
---@param tbl table The table to remove the value from. 
---@param index? number The index of the value to remove. 
---@return any
function table.remove( tbl, index ) end
--- Removes the first instance of a given value from the specified table with [table.remove](/gmod/table.remove), then returns the key that the value was found at.
---@param tbl table The table that will be searched. 
---@param val any The value to find within the table. 
---@return any
function table.RemoveByValue( tbl, val ) end
--- Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied.
---@param tbl table Table to reverse. 
---@return table
function table.Reverse( tbl ) end
--- Converts [Vector](/gmod/Vector)s, [Angle](/gmod/Angle)s and [boolean](/gmod/boolean)s to be able to be converted to and from key-values. [table.DeSanitise](/gmod/table.DeSanitise) does the opposite
---@param tab table Table to sanitise 
---@return table
function table.Sanitise( tab ) end
--- Sorts a sequential table either ascending or by the given sort function.
---@param tbl table The table to sort. 
---@param sorter function If specified, the function will be called with 2 parameters each.  Return true in this function if you want the first parameter to come first in the sorted array. 
function table.sort( tbl, sorter ) end
--- Returns a list of keys sorted based on values of those keys.
--- 
--- For normal sorting see [table.sort](/gmod/table.sort).
---@param tab table Table to sort. All values of this table must be of same type. 
---@param descending? boolean Should the order be descending? 
---@return table
function table.SortByKey( tab, descending ) end
--- Sorts a table by a named member.
---@param tab table Table to sort. 
---@param memberKey any The key used to identify the member. 
---@param ascending? boolean Whether or not the order should be ascending. 
function table.SortByMember( tab, memberKey, ascending ) end
--- Sorts a table in reverse order from [table.sort](/gmod/table.sort).
---@param tbl table The table to sort in descending order. 
function table.SortDesc( tbl ) end
--- Converts a table into a string
---@param tbl table The table to iterate over. 
---@param displayName? string Optional. A name for the table. 
---@param niceFormatting boolean Adds new lines and tabs to the string. 
---@return string
function table.ToString( tbl, displayName, niceFormatting ) end
