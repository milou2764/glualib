---@meta
---@class RenderCamData
---@field x number The x position of the view port 
---@field y number The y position of the view port 
---@field w number The width of the view port 
---@field h number The height of the view port 
---@field type string The type of cam. Valid types are: * "2D" - No additional arguments are required * "3D" - Only origin and angles are needed, all other parameters are optional. 
---@field origin Vector The position to render from 
---@field angles Angle The angles to render from 
---@field fov number The field of view 
---@field aspect number The aspect ratio of the view port (Note that this is NOT set to w/h by default) 
---@field zfar number The distance to the far clipping plane 
---@field znear number The distance to the near clipping plane 
---@field subrect boolean Set to true if this is to draw into a subrect of the larger screen. 
---@field bloomtone boolean m_bDoBloomAndToneMapping 
---@field offcenter table A table having these keys: ( all floats ) * left * right * bottom * top 
---@field ortho table If set, makes the view/camera orthogonal. A table having these keys: ( all floats ) * left * right * bottom * top 
RenderCamData = {}