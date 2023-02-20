---@meta
vgui = {}
--- Creates a panel by the specified classname.
---@param classname string Classname of the panel to create. Valid classnames are listed at: [VGUI Element List](/gmod/VGUI%20Element%20List). 
---@param parent? Panel Parent of the created panel. 
---@param name? string Name of the created panel. 
---@return Panel
function vgui.Create( classname, parent, name ) end
--- Creates a panel from table.
---@param metatable table Your PANEL table 
---@param parent? Panel Which panel to parent the newly created panel to 
---@param name? string Name of your panel 
---@return Panel
function vgui.CreateFromTable( metatable, parent, name ) end
--- Creates a engine panel.
---@param class string Class of the panel to create 
---@param parent? Panel If specified, parents created panel to given one 
---@param name? string Name of the created panel 
---@return Panel
function vgui.CreateX( class, parent, name ) end
--- Returns whenever the cursor is currently active and visible.
---@return boolean
function vgui.CursorVisible(  ) end
--- Returns whether the currently focused panel is a child of the given one.
---@param parent Panel The parent panel to check the currently focused one against. This doesn't need to be a direct parent (focused panel can be a child of a child and so on). 
---@return boolean
function vgui.FocusedHasParent( parent ) end
--- Gets the method table of this panel. Does not return parent methods!
---@param Panelname string The name of the panel 
---@return table
function vgui.GetControlTable( Panelname ) end
--- Returns the panel the cursor is hovering above.
---@return Panel
function vgui.GetHoveredPanel(  ) end
--- Returns the panel which is currently receiving keyboard input.
---@return Panel
function vgui.GetKeyboardFocus(  ) end
--- Returns the global world panel which is the parent to all others, except for the HUD panel.
--- 
--- See also [GetHUDPanel](/gmod/Global.GetHUDPanel).
---@return Panel
function vgui.GetWorldPanel(  ) end
--- Returns whenever the cursor is hovering the world panel.
---@return boolean
function vgui.IsHoveringWorld(  ) end
--- Registers a panel for later creation.
---@param classname string Classname of the panel to create. 
---@param panelTable table The table containg the panel information. 
---@param baseName? string Name of the base of the panel. 
---@return table
function vgui.Register( classname, panelTable, baseName ) end
--- Registers a new VGUI panel from a file.
---@param file string The file to register 
---@return table
function vgui.RegisterFile( file ) end
--- Registers a table to use as a panel. All this function does is assigns Base key to your table and returns the table.
---@param panel table The PANEL table 
---@param base? string A base for the panel 
---@return table
function vgui.RegisterTable( panel, base ) end
