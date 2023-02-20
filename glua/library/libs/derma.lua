---@meta
derma = {}
--- Gets the color from a Derma skin of a panel and returns default color if not found
---@param name string
---@param pnl Panel
---@param default table The default color in case of failure. 
function derma.Color( name, pnl, default ) end
--- Defines a new Derma control with an optional base.
--- 
--- This calls [vgui.Register](/gmod/vgui.Register) internally, but also does the following:
--- * Adds the control to [derma.GetControlList](/gmod/derma.GetControlList)
--- * Adds a key "Derma" - This is returned by [derma.GetControlList](/gmod/derma.GetControlList)
--- * Makes a global table with the name of the control (This is technically deprecated and should not be relied upon)
--- * If reloading (i.e. called this function with name of an existing panel), updates all existing instances of panels with this name. (Updates functions, calls [PANEL:PreAutoRefresh](/gmod/PANEL:PreAutoRefresh) and [PANEL:PostAutoRefresh](/gmod/PANEL:PostAutoRefresh), etc.)
---@param name string Name of the newly created control 
---@param description string Description of the control 
---@param tab table Table containing control methods and properties 
---@param base string Derma control to base the new control off of 
---@return table
function derma.DefineControl( name, description, tab, base ) end
--- Defines a new skin so that it is usable by Derma. The default skin can be found in `garrysmod/lua/skins/default.lua`
---@param name string Name of the skin 
---@param descriptions string Description of the skin 
---@param skin table Table containing skin data 
function derma.DefineSkin( name, descriptions, skin ) end
--- Returns the [derma.Controls](/gmod/derma.Controls) table, a list of all derma controls registered with [derma.DefineControl](/gmod/derma.DefineControl).
---@return table
function derma.GetControlList(  ) end
--- Returns the default skin table, which can be changed with the hook [GM:ForceDermaSkin](/gmod/GM:ForceDermaSkin)
---@return table
function derma.GetDefaultSkin(  ) end
--- Returns the skin table of the skin with the supplied name
---@param name string Name of skin 
---@return table
function derma.GetNamedSkin( name ) end
--- Returns a copy of the table containing every Derma skin
---@return table
function derma.GetSkinTable(  ) end
--- Clears all cached panels so that they reassess which skin they should be using.
function derma.RefreshSkins(  ) end
--- Returns how many times [derma.RefreshSkins](/gmod/derma.RefreshSkins) has been called.
---@return number
function derma.SkinChangeIndex(  ) end
--- Calls the specified hook for the given panel
---@param type string The type of hook to run 
---@param name string The name of the hook to run 
---@param panel Panel The panel to call the hook for 
---@param w number The width of the panel 
---@param h number The height of the panel 
---@return any
function derma.SkinHook( type, name, panel, w, h ) end
--- Returns a function to draw a specified texture of panels skin.
---@param name string The identifier of the texture 
---@param pnl Panel Panel to get the skin of. 
---@param fallback? any What to return if we failed to retrieve the texture 
---@return function
function derma.SkinTexture( name, pnl, fallback ) end
--- [derma.DefineControl](/gmod/derma.DefineControl).
--- 
--- Use [derma.GetControlList](/gmod/derma.GetControlList) to retrieve this list.
--- 
--- It's a list of tables, each having 3 keys, all from [derma.DefineControl](/gmod/derma.DefineControl) arguments:
--- * [string](/gmod/string) ClassName - The class name of the panel
--- * [string](/gmod/string) Description - The description of the panel
--- * [string](/gmod/string) BaseClass - The base class of the panel
function derma.Controls(  ) end
function derma.SkinList(  ) end
