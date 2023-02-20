---@meta
---@class AnimationData
---@field StartTime number The system time value returned by [SysTime](/gmod/Global.SysTime) when the animation starts/will start. 
---@field EndTime number The system time value returned by [SysTime](/gmod/Global.SysTime) when the animation ends/will end. 
---@field Ease number The ease in/out level of the animation. 
---@field OnEnd function The callback function that will be called upon completion of the animation. The arguments passed to it are: * [table](/gmod/table) animData - This structure. * [Panel](/gmod/Panel) tgtPanel - The panel the animation was run on. 
---@field Think function The `think` function called every frame that will animate the panel object. This varies based on the animation. You can create a custom function for this if you aren't using the stock panel methods. The arguments passed to it are: * [table](/gmod/table) animData - This structure. * [Panel](/gmod/Panel) tgtPanel - The panel the animation is being run on. * [number](/gmod/number) fraction - The progress fraction of the animation, between 0 and 1. The change rate of this number will not be linear if you are easing. 
---@field Pos Vector The target position, or target translation of the panel object. Used by [Panel:MoveTo](/gmod/Panel:MoveTo) and [Panel:MoveBy](/gmod/Panel:MoveBy) respectively. 
---@field StartPos Vector The position of the panel object when the animation started. Used by [Panel:MoveTo](/gmod/Panel:MoveTo) and [Panel:MoveBy](/gmod/Panel:MoveBy). 
---@field SizeX boolean Whether to resize the panel horizontally or not. Only used by [Panel:SizeTo](/gmod/Panel:SizeTo). 
---@field SizeY boolean Whether to resize the panel vertically or not. Only used by [Panel:SizeTo](/gmod/Panel:SizeTo). 
---@field Size Vector The target size of the panel object. Only used by [Panel:SizeTo](/gmod/Panel:SizeTo). 
---@field StartSize Vector The size of the panel object when the animation started. Only used by [Panel:SizeTo](/gmod/Panel:SizeTo). 
---@field Color table The target colour of the panel object. Only used by [Panel:ColorTo](/gmod/Panel:ColorTo). 
---@field StartColor table The colour of the panel object when the animation started. Only used by [Panel:ColorTo](/gmod/Panel:ColorTo). 
---@field Alpha number The target alpha (0-255) of the panel object. Only used by [Panel:AlphaTo](/gmod/Panel:AlphaTo). 
---@field StartAlpha number The alpha (0-255) of the panel object when the animation started. Only used by [Panel:AlphaTo](/gmod/Panel:AlphaTo). 
---@field Speed number The speed to use for transitions when using linear interpolation (Lerp) animations. Only used by [Panel:LerpPositions](/gmod/Panel:LerpPositions). 
---@field UseGravity boolean Whether or not to use easing to make the panel 'jump' at its target, slowing as it approaches. Only used by [Panel:LerpPositions](/gmod/Panel:LerpPositions). 
AnimationData = {}