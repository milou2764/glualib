---@meta
os = {}
--- Returns the approximate cpu time the application ran.
--- See also [SysTime](/gmod/Global.SysTime)
---@return number
function os.clock(  ) end
--- Returns the date/time as a formatted string or in a table.
---@param format string The format string.    If this is equal to `*t` or `!*t` then this function will return a [DateData](/gmod/Structures/DateData), otherwise it will return a string.    If this starts with an `!`, the returned data will use the UTC timezone rather than the local timezone.    See http://www.mkssoftware.com/docs/man3/strftime.3.asp for available format flags.        Known formats that work on all platforms:    | Format | Description | Example of the output |  |:------:|:-----------:|:---------------------:|  | `%a` | Abbreviated weekday name | `Wed` |  | `%A` | Full weekday name | `Wednesday` |  | `%b` | Abbreviated month name | `Sep` |  | `%B` | Full month name | `September` |  | `%c` | Locale-appropriate date and time | Varies by platform and language settings |  | `%d` | Day of the month [01-31] | `16` |  | `%H` | Hour, using a 24-hour clock [00-23] | `23` |  | `%I` | Hour, using a 12-hour clock [01-12] | `11` |  | `%j` | Day of the year [001-365] | `259` |  | `%m` | Month [01-12] | `09` |  | `%M` | Minute [00-59] | `48` |  | `%p` | Either `am` or `pm` | `pm` |  | `%S` | Second [00-60] | `10` |  | `%w` | Weekday [0-6 = Sunday-Saturday] | `3` |  | `%W` | Week of the year [00-53] | `37` |  | `%x` | Date (Same as `%m/%d/%y`) | `09/16/98` |  | `%X` | Time (Same as `%H:%M:%S`) | `24:48:10` |  | `%y` | Two-digit year [00-99] | `98` |  | `%Y` | Full year | `1998` |  | `%z` | Timezone | `-0300` |  | `%%` | A percent sign | `%` | 
---@param time? number Time to use for the format. 
---@return string
function os.date( format, time ) end
--- Subtracts the second from the first value and rounds the result.
---@param timeA number The first value. 
---@param timeB number The value to subtract. 
---@return number
function os.difftime( timeA, timeB ) end
--- Returns the system time in seconds past the unix epoch. If a table is supplied, the function attempts to build a system time with the specified table members.
---@param dateData? table Table to generate the time from. This table's data is interpreted as being in the local timezone. See [DateData](/gmod/Structures/DateData) 
---@return number
function os.time( dateData ) end
