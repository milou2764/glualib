---@meta
---@class DynamicLight
---@field brightness number The brightness of the light. 
---@field decay number Fade out speed. Here's a formula for calculating Decay for your light: 1000 / fadeOutTimeInSeconds. For example setting decay to 1000 would fade out the light in 1 second, 2000 - 0.5 seconds. 
---@field dietime number Time after which light will be removed.  This is relative to [CurTime](/gmod/Global.CurTime). If you put in a value that is less than or equal to [CurTime](/gmod/Global.CurTime), the light will not behave properly.  Note, that it does not affect fading out. Light will be removed regardless of it being fully faded out or not. 
---@field dir Vector The light direction. Used with **InnerAngle** and **OuterAngle**. 
---@field innerangle number The closer this is to zero, the smoother the light will be. Requires **Dir** and **OuterAngle** to be set. 
---@field outerangle number The angle of the Dynamic Light. Requires **Dir** to be set. 
---@field key number Makes the light brighter and flicker? Changing the value does not seem to affect anything. 
---@field minlight number Minimum light 
---@field noworld boolean Don't light the world. Has no effect for elights since they never light the world. 
---@field nomodel boolean Don't light models 
---@field pos Vector Position of the light 
---@field size number Radius of the light 
---@field style number Flicker style, see [this page](https://developer.valvesoftware.com/wiki/Light_dynamic#Appearances) for examples. 
---@field b number The blue part of the color 
---@field g number The green part of the color 
---@field r number The red part of the color 
DynamicLight = {}