---@meta
spawnmenu = {}
--- Activates a tool, opens context menu and brings up the tool gun.
---@param tool string Tool class/file name 
---@param menu_only boolean Should we activate this tool in the menu only or also the toolgun? True = menu only, False = toolgun aswell 
function spawnmenu.ActivateTool( tool, menu_only ) end
--- Activates tools context menu in specified tool tab.
---@param tab number The tabID of the tab to open the context menu in 
---@param cp Panel The control panel to open 
function spawnmenu.ActivateToolPanel( tab, cp ) end
--- Returns currently opened control panel of a tool, post process effect or some other menu in spawnmenu.
---@return Panel
function spawnmenu.ActiveControlPanel(  ) end
--- Registers a new content type that is saveable into spawnlists.
--- Created/called by [spawnmenu.CreateContentIcon](/gmod/spawnmenu.CreateContentIcon).
---@param name string An unique name of the content type. 
---@param constructor function A function that is called whenever we need create a new panel for this content type.    It has two arguments:    [Panel](/gmod/Panel) container - The container/parent of the new panel    [table](/gmod/table) data - Data for the content type passed from [spawnmenu.CreateContentIcon](/gmod/spawnmenu.CreateContentIcon) 
function spawnmenu.AddContentType( name, constructor ) end
--- Inserts a new tab into the CreationMenus table, which will be used by the creation menu to generate its tabs (Spawnlists, Weapons, Entities, etc.)
---@param name string What text will appear on the tab (I.E Spawnlists). 
---@param function_ function The function called to generate the content of the tab. 
---@param material? string Path to the material that will be used as an icon on the tab. 
---@param order? number The order in which this tab should be shown relative to the other tabs on the creation menu. 
---@param tooltip? string The tooltip to be shown for this tab. 
function spawnmenu.AddCreationTab( name, function_, material, order, tooltip ) end
--- Used to add addon spawnlists to the spawnmenu tree. This function should be called within [SANDBOX:PopulatePropMenu](/gmod/SANDBOX:PopulatePropMenu).
--- 
--- Addon spawnlists will not save to disk if edited.
---@param classname string A unique classname of the list. 
---@param name string The name of the category displayed to the player, e.g. `Comic Props`. 
---@param contents? table A table of entries for the spawn menu. It must be numerically indexed.    Each member of the table is a sub-table containing a type member, and other members depending on the type.    New content types can be added via [spawnmenu.AddContentType](/gmod/spawnmenu.AddContentType).    | [string](/gmod/string) type | Description | Other members |  | ------------- | ---------- | ----------------- |  | "header" | a simple header for organization | [string](/gmod/string) text - The text that the header will display |  | "model" | spawns a model where the player is looking | [string](/gmod/string) model - The path to the model file 	 [number](/gmod/number) skin - The skin for the model to use (optional)  [string](/gmod/string) body - The bodygroups for the model (optional)  [number](/gmod/number) wide - The width of the spawnicon (optional)  [number](/gmod/number) tall - The height of the spawnicon (optional) |  | "entity" | spawns an entity where the player is looking(appears in the Entities tab by default) | [string](/gmod/string) spawnname - The filename of the entity, for example "sent_ball"  [string](/gmod/string) nicename - The name of the entity to display  [string](/gmod/string) material - The icon to display, this should be set to "entities/ 
---@param icon string The icon to use in the tree. 
---@param id? number The unique ID number for the spawnlist category. Used to make sub categories. See "parentID" parameter below. If not set, it will be automatically set to ever increasing number, starting with 1000. 
---@param parentID? number The unique ID of the parent category. This will make the created category a subcategory of category with given unique ID. `0` makes this a base category (such as `Builder`). 
---@param needsApp string The needed game for this prop category, if one is needed. If the specified game is not mounted, the category isn't shown. This uses the shortcut name, e.g. `cstrike`, and not the Steam AppID. 
function spawnmenu.AddPropCategory( classname, name, contents, icon, id, parentID, needsApp ) end
--- Used to create a new category in the list inside of a spawnmenu ToolTab.
--- 
--- You must call this function from [SANDBOX:AddToolMenuCategories](/gmod/SANDBOX:AddToolMenuCategories) for it to work properly.
---@param tab string The ToolTab name, as created with [spawnmenu.AddToolTab](/gmod/spawnmenu.AddToolTab).    You can also use the default ToolTab names "Main" and "Utilities". 
---@param RealName string The identifier name 
---@param PrintName string The displayed name 
function spawnmenu.AddToolCategory( tab, RealName, PrintName ) end
--- Adds an option to the right side of the spawnmenu
---@param tab string The spawnmenu tab to add into (for example "Utilities") 
---@param category string The category to add into (for example "Admin") 
---@param class string Unique identifier of option to add 
---@param name string The nice name of item 
---@param cmd string Command to execute when the item is selected 
---@param config string Config name, used in older versions to load tool settings UI from a file. No longer works. 
---@param cpanel function A function to build the context panel. The function has one argument:  * [Panel](/gmod/Panel) pnl - A [DForm](/gmod/DForm) that will be shown in the context menu 
---@param table? table Allows to override the table that will be added to the tool list. Some of the fields will be overwritten by this function. 
function spawnmenu.AddToolMenuOption( tab, category, class, name, cmd, config, cpanel, table ) end
--- Adds a new tool tab to the right side of the spawnmenu via the [SANDBOX:AddToolMenuTabs](/gmod/SANDBOX:AddToolMenuTabs) hook.
--- 
--- This function is a inferior duplicate of [spawnmenu.GetToolMenu](/gmod/spawnmenu.GetToolMenu), just without its return value.
---@param name string The internal name of the tab. This is used for sorting. 
---@param label? string The 'nice' name of the tab (Tip: [language.Add](/gmod/language.Add)) 
---@param icon? string The filepath to the icon of the tab. Should be a .png 
function spawnmenu.AddToolTab( name, label, icon ) end
--- Clears all the tools from the different tool categories and the categories itself, if ran at the correct place.
--- 
--- Seems to only work when ran at initialization.
function spawnmenu.ClearToolMenus(  ) end
--- Creates a new content icon.
---@param type string The type of the content icon. 
---@param parent Panel The parent to add the content icon to. 
---@param data table The data to send to the content icon in [spawnmenu.AddContentType](/gmod/spawnmenu.AddContentType) 
---@return Panel
function spawnmenu.CreateContentIcon( type, parent, data ) end
--- Calls [spawnmenu.SaveToTextFiles](/gmod/spawnmenu.SaveToTextFiles).
---@param spawnlists table A table containing spawnlists. 
function spawnmenu.DoSaveToTextFiles( spawnlists ) end
--- Returns the function to create an vgui element for a specified content type
---@param contentType string
---@return function
function spawnmenu.GetContentType( contentType ) end
--- Gets the CreationMenus table, which was filled with creation menu tabs from [spawnmenu.AddCreationTab](/gmod/spawnmenu.AddCreationTab).
---@return table
function spawnmenu.GetCreationTabs(  ) end
--- Similar to [spawnmenu.GetPropTable](/gmod/spawnmenu.GetPropTable), but only returns spawnlists created by addons via [spawnmenu.AddPropCategory](/gmod/spawnmenu.AddPropCategory).
--- 
--- These spawnlists are shown in a separate menu in-game.
---@return table
function spawnmenu.GetCustomPropTable(  ) end
--- Returns a table of all prop categories and their props in the spawnmenu.
--- 
--- Note that if the spawnmenu has not been populated, this will return an empty table.
--- 
--- This will not return spawnlists created by addons, see  [spawnmenu.GetCustomPropTable](/gmod/spawnmenu.GetCustomPropTable) for that.
---@return table
function spawnmenu.GetPropTable(  ) end
--- Adds a new tool tab (or returns an existing one by name) to the right side of the spawnmenu via the [SANDBOX:AddToolMenuTabs](/gmod/SANDBOX:AddToolMenuTabs) hook.
---@param name string The internal name of the tab. This is used for sorting. 
---@param label? string The 'nice' name of the tab 
---@param icon? string The filepath to the icon of the tab. Should be a .png 
---@return table
function spawnmenu.GetToolMenu( name, label, icon ) end
--- Gets a table of tools on the client.
---@return table
function spawnmenu.GetTools(  ) end
--- Calls [spawnmenu.PopulateFromTextFiles](/gmod/spawnmenu.PopulateFromTextFiles).
function spawnmenu.PopulateFromEngineTextFiles(  ) end
--- Loads spawnlists from text files.
---@param callback function The function to call. Arguments are ( strFilename, strName, tabContents, icon, id, parentid, needsapp ) 
function spawnmenu.PopulateFromTextFiles( callback ) end
--- Saves a table of spawnlists to files.
---@param spawnlists table A table containing spawnlists. 
function spawnmenu.SaveToTextFiles( spawnlists ) end
--- Sets currently active control panel to be returned by [spawnmenu.ActiveControlPanel](/gmod/spawnmenu.ActiveControlPanel).
---@param pnl Panel The panel to set. 
function spawnmenu.SetActiveControlPanel( pnl ) end
--- Supposed to open specified tool tab in spawnmenu, in reality does nothing.
---@param id number The tab ID to open 
function spawnmenu.SwitchToolTab( id ) end
