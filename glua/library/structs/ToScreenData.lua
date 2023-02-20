---@meta
---@class ToScreenData
---@field x number The x coordinate on the players screen 
---@field y number The y coordinate on the players screen 
---@field visible boolean The coordinate is not behind the player. **This does not mean the coordinate is on the screen.** When this is false, it means that the coordinate would not be on the screen even if the player had a full 180 degree FOV. 
ToScreenData = {}