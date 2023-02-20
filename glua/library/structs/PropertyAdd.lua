---@meta
---@class PropertyAdd
---@field Type string Can be set to "toggle" to make this property a toggle property. 
---@field MenuLabel string Label to show on opened menu 
---@field MenuIcon string Icon to show on opened menu for this item. Optional for simple properties and unused for toggle properties. 
---@field StructureField (Order) number Where in the list should the property be positioned, relative to other properties.  For reference, here are the default properties and their Order values:  Property |  Order | ---------|-------| | Bone Manipulate | 500 | | Bodygroups | 600 | | Skin | 601 | | Keep Upright | 900 | | Ignite/Extinguish | 999 | | Remove | 1000 | | Gravity | 1001 | | Drive | 1100 | | Collision | 1500 | | Statue | 1501 | | NPC Biggify/Smallify | 1799, 1800 | | Motion Control (Kinect) | 2500 | | [Edit Properties](/gmod/Editable_Entities) | 90001 | 
---@field PrependSpacer boolean Whether to add a spacer before this property. This should generally be true for the first property in a group of properties. 
---@field Filter function Used **clientside** to decide whether this property should be shown for an entity. Gets these arguments: * [table](/gmod/table) self - the property table * [Entity](/gmod/Entity) ent - the entity the player clicked  Return true if the property should be shown for this entity. It's good practice to call [SANDBOX:CanProperty](/gmod/SANDBOX:CanProperty) in this hook via [gamemode.Call](/gmod/gamemode.Call) or [hook.Run](/gmod/hook.Run). 
---@field Checked function Required for toggle properties (clientside). Must return a boolean value to either check or uncheck the toggle property. * [table](/gmod/table) self - the property table * [Entity](/gmod/Entity) ent - the entity the player clicked * [table](/gmod/table) tr - the player's eye trace 
---@field Action function Called **clientside** when the property is clicked with these arguments: * [table](/gmod/table) self - the property table * [Entity](/gmod/Entity) ent - the entity the player clicked * [table](/gmod/table) tr - the player's eye trace  When appropriate, within this function you can call self:MsgStart(), write data with the [net](/gmod/net) 'Write' functions, and finish with self:MsgEnd(). This will activate the 'Receive' function on the server. In most cases, you will want to send the entity to the server, as it's not done by default. 
---@field Receive function Called **serverside** if the client sends a message in the 'Action' function (see above). * [table](/gmod/table) self - the property table * [number](/gmod/number) len - the net message length, although this includes the property identifier used internally (the name of the property) * [Player](/gmod/Player) ply - the player who clicked the property  You can read data received from the client with the [net](/gmod/net) 'Read' functions. It's good practice to check [SANDBOX:CanProperty](/gmod/SANDBOX:CanProperty) here via [gamemode.Call](/gmod/gamemode.Call) or [hook.Run](/gmod/hook.Run). 
---@field MenuOpen function Called **clientside** when the property option has been created in the right-click menu. This is not called for toggle properties! * [table](/gmod/table) self - the property table * [DMenuOption](/gmod/DMenuOption) option - the menu option * [Entity](/gmod/Entity) ent - the entity the player right-clicked * [table](/gmod/table) tr - the player's eye trace 
---@field OnCreate function Same as MenuOpen, but also called for toggle properties and has different arguments. This is called immediately after MenuOpen, but nothing happens in between so you should only ever use one or the other. * [table](/gmod/table) self - the property table * [DMenu](/gmod/DMenu) menu - the property menu * [DMenuOption](/gmod/DMenuOption) option - the menu option 
PropertyAdd = {}