---@meta
halo = {}
--- Applies a [halo](/gmod/halo) glow effect to one or multiple entities.
---@param entities table A table of entities to add the halo effect to. 
---@param color table The desired color of the halo. See [Color](/gmod/Color). 
---@param blurX? number The strength of the halo's blur on the x axis. 
---@param blurY? number The strength of the halo's blur on the y axis. 
---@param passes? number The number of times the halo should be drawn per frame. **Increasing this may hinder player FPS**. 
---@param additive? boolean Sets the render mode of the halo to additive. 
---@param ignoreZ? boolean Renders the halo through anything when set to `true`. 
function halo.Add( entities, color, blurX, blurY, passes, additive, ignoreZ ) end
--- Renders a halo according to the specified table, only used internally, called from a [GM:PostDrawEffects](/gmod/GM:PostDrawEffects) hook added by the halo library.
---@param entry table Table with info about the halo to draw. 
function halo.Render( entry ) end
--- Returns the entity the halo library is currently rendering the halo for.
--- 
--- The main purpose of this function is to be used in [ENTITY:Draw](/gmod/ENTITY:Draw) in order not to draw certain parts of the entity when the halo is being rendered, so there's no halo around unwanted entity parts, such as lasers, 3D2D displays, etc.
---@return Entity
function halo.RenderedEntity(  ) end
