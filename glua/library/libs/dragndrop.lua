---@meta
dragndrop = {}
--- Calls the receiver function of hovered panel.
---@param bDoDrop boolean true if the mouse was released, false if we right clicked. 
---@param command number The command value. This should be the ID of the clicked dropdown menu ( if right clicked, or nil ) 
---@param mx number The local to the panel mouse cursor X position when the click happened. 
---@param my number The local to the panel  mouse cursor Y position when the click happened. 
function dragndrop.CallReceiverFunction( bDoDrop, command, mx, my ) end
--- Clears all the internal drag'n'drop variables.
function dragndrop.Clear(  ) end
--- Handles the drop action of drag'n'drop library.
function dragndrop.Drop(  ) end
--- Returns a table of currently dragged panels.
---@param name? string If set, the function will return only the panels with this [Panel:Droppable](/gmod/Panel:Droppable) name. 
---@return table
function dragndrop.GetDroppable( name ) end
--- If returns true, calls [dragndrop.StopDragging](/gmod/dragndrop.StopDragging) in [dragndrop.Drop](/gmod/dragndrop.Drop). Seems to be broken and does nothing. Is it for override?
function dragndrop.HandleDroppedInGame(  ) end
--- Handles the hover think. Called from [dragndrop.Think](/gmod/dragndrop.Think).
function dragndrop.HoverThink(  ) end
--- Returns whether the user is dragging something with the drag'n'drop system.
---@return boolean
function dragndrop.IsDragging(  ) end
--- Starts the drag'n'drop.
function dragndrop.StartDragging(  ) end
--- Stops the drag'n'drop and calls [dragndrop.Clear](/gmod/dragndrop.Clear).
function dragndrop.StopDragging(  ) end
--- Handles all the drag'n'drop processes. Calls [dragndrop.UpdateReceiver](/gmod/dragndrop.UpdateReceiver) and [dragndrop.HoverThink](/gmod/dragndrop.HoverThink).
function dragndrop.Think(  ) end
--- Updates the receiver to drop the panels onto. Called from [dragndrop.Think](/gmod/dragndrop.Think).
function dragndrop.UpdateReceiver(  ) end
