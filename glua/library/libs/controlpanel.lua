---@meta
controlpanel = {}
--- Clears ALL the control panels ( for tools )
function controlpanel.Clear(  ) end
--- Returns (or creates if not exists) a control panel.
---@param name string The name of the panel. For normal tools this will be equal to `TOOL.Mode` (the tool's filename without the extension).    When you create a tool/option via [spawnmenu.AddToolMenuOption](/gmod/spawnmenu.AddToolMenuOption), the internal control panel name is `TOOL.Mode .. "_" .. tool_tab:lower() .. "_" .. tool_category:lower()`. 
---@return Panel
function controlpanel.Get( name ) end
