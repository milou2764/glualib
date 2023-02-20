---@meta
effects = {}
--- Creates a "beam ring point" effect.
---@param pos Vector The origin position of the effect. 
---@param lifetime number How long the effect will be drawing for, in seconds. 
---@param startRad number Initial radius of the effect. 
---@param endRad number Final radius of the effect, at the end of the effect's lifetime. 
---@param width number How thick the beam should be. 
---@param amplitude number How noisy the beam should be. 
---@param color table Beam's [Color](/gmod/Global.Color). 
---@param extra? table Extra info, all optional. A table with the following keys: (any combination)  * [number](/gmod/number) speed - ?  * [number](/gmod/number) spread - ?  * [number](/gmod/number) delay - Delay in seconds after which the effect should appear.  * [number](/gmod/number) flags- Beam flags.  * [number](/gmod/number) framerate - texture framerate.  * [string](/gmod/string) material - The material to use instead of the default one. 
function effects.BeamRingPoint( pos, lifetime, startRad, endRad, width, amplitude, color, extra ) end
--- Creates a bunch of bubbles inside a defined box.
---@param mins Vector The lowest extents of the box. 
---@param maxs Vector The highest extents of the box. 
---@param count number How many bubbles to spawn. There's a hard limit of 500 tempents at any time. 
---@param height number How high the bubbles can fly up before disappearing. 
---@param speed? number How quickly the bubbles move. 
---@param delay? number Delay in seconds after the function call and before the effect actually spawns. 
function effects.Bubbles( mins, maxs, count, height, speed, delay ) end
--- Creates a bubble trail effect, the very same you get when shooting underwater.
---@param startPos Vector The start position of the effect. 
---@param endPos Vector The end position of the effects. 
---@param count number How many bubbles to spawn. There's a hard limit of 500 tempents at any time. 
---@param height number How high the bubbles can fly up before disappearing. 
---@param speed? number How quickly the bubbles move. 
---@param delay? number Delay in seconds after the function call and before the effect actually spawns. 
function effects.BubbleTrail( startPos, endPos, count, height, speed, delay ) end
--- Returns the table of the effect specified.
---@param name string Effect name. 
---@return table
function effects.Create( name ) end
--- Returns a list of all Lua-defined effects.
---@return table
function effects.GetList(  ) end
--- Registers a new effect.
---@param effect_table table Effect table. 
---@param name string Effect name. 
function effects.Register( effect_table, name ) end
