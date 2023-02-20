---@meta
---@class CamData
---@field origin Vector The camera's position 
---@field angles Angle The camera's angles 
---@field fov number The camera's FOV 
---@field znear number Distance to near clipping plane 
---@field zfar number Distance to far clipping plane 
---@field drawviewer boolean Set true to draw local players player model. 
---@field ortho table If set, enables orthographic mode. The table has following arguments: * [number](/gmod/number) left * [number](/gmod/number) right * [number](/gmod/number) top * [number](/gmod/number) bottom  Each describes where their border starts, (`left`+`right`) and (`top`+`bottom`) should equal `0` to center on the view position. 
CamData = {}