---@meta
---@class RenderCaptureData
---@field format string Format of the capture. Valid formats are: * `jpeg` or `jpg` * `png` 
---@field x number X coordinate of the capture origin 
---@field y number Y coordinate of the capture origin 
---@field w number Width of the capture 
---@field h number Height of the capture 
---@field quality number The quality of the capture. Affects jpeg only. 
---@field alpha boolean Set to false to capture an image with alpha channel set to fully opaque. Affects png only. 
RenderCaptureData = {}