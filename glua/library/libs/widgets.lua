---@meta
widgets = {}
--- Automatically called to update all widgets.
---@param ply Player The player 
---@param mv CMoveData Player move data 
function widgets.PlayerTick( ply, mv ) end
--- Renders a widget. Normally you won't need to call this.
---@param ent Entity Widget entity to render 
function widgets.RenderMe( ent ) end
