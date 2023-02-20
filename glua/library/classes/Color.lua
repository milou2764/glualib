---@meta
---@class Color
Color = {}
--- Sets the red, green, blue, and alpha of the color.
---@param r number The red component 
---@param g number The green component 
---@param b number The blue component 
---@param a number The alpha component 
function Color:SetUnpacked( r, g, b, a ) end
--- Converts a [Color](/gmod/Color) into HSL color space. This calls [ColorToHSL](/gmod/Global.ColorToHSL) internally.
---@return number
---@return number
---@return number
function Color:ToHSL(  ) end
--- Converts a [Color](/gmod/Color) into HSV color space. This calls [ColorToHSV](/gmod/Global.ColorToHSV) internally.
---@return number
---@return number
---@return number
function Color:ToHSV(  ) end
--- Returns the color as a table with four elements.
---@return table
function Color:ToTable(  ) end
--- Translates the [Color](/gmod/Color) into a [Vector](/gmod/Vector), losing the alpha channel.
--- This will also range the values from 0 - 255 to 0 - 1
--- 
--- r / 255 -> x
--- g / 255 -> y
--- b / 255 -> z
--- 
--- This is the opposite of [Vector:ToColor](/gmod/Vector:ToColor)
---@return Vector
function Color:ToVector(  ) end
--- Returns the red, green, blue, and alpha of the color.
---@return number
---@return number
---@return number
---@return number
function Color:Unpack(  ) end
