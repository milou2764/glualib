---@meta
system = {}
--- Returns the total uptime of the current application as reported by Steam.
--- 
--- This will return a similar value to [SysTime](/gmod/Global.SysTime).
---@return number
function system.AppTime(  ) end
--- Returns the current battery power.
---@return number
function system.BatteryPower(  ) end
--- Flashes the window, turning the border to white briefly
function system.FlashWindow(  ) end
--- Returns the country code of this computer, determined by the localisation settings of the OS.
---@return string
function system.GetCountry(  ) end
--- Returns whether or not the game window has focus.
---@return boolean
function system.HasFocus(  ) end
--- Returns whether the current OS is Linux.
---@return boolean
function system.IsLinux(  ) end
--- Returns whether the current OS is OSX.
---@return boolean
function system.IsOSX(  ) end
--- Returns whether the game is being run in a window or in fullscreen (you can change this by opening the menu, clicking 'Options', then clicking the 'Video' tab, and changing the Display Mode using the dropdown menu):
---@return boolean
function system.IsWindowed(  ) end
--- Returns whether the current OS is Windows.
---@return boolean
function system.IsWindows(  ) end
--- Returns the synchronized Steam time. This is the number of seconds since the [Unix epoch](http://en.wikipedia.org/wiki/Unix_time).
---@return number
function system.SteamTime(  ) end
--- Returns the amount of seconds since the Steam user last moved their mouse.
--- 
--- This is a direct binding to ISteamUtils->GetSecondsSinceComputerActive, and is most likely related to Steam's automatic "Away" online status.
---@return number
function system.UpTime(  ) end
