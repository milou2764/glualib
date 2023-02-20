---@meta
---@class MarkupObject
MarkupObject = {}
--- Draws the computed markupobject to the screen.
---@param xOffset number The X coordinate on the screen. 
---@param yOffset number The Y coordinate on the screen. 
---@param xAlign number The alignment of the x coordinate using [TEXT_ALIGN](/gmod/Enums/TEXT_ALIGN) 
---@param yAlign number The alignment of the y coordinate using [TEXT_ALIGN](/gmod/Enums/TEXT_ALIGN) 
---@param alphaoverride? number Sets the alpha of all drawn objects to this. 
function MarkupObject:Draw( xOffset, yOffset, xAlign, yAlign, alphaoverride ) end
--- Gets computed the height of the markupobject.
---@return number
function MarkupObject:GetHeight(  ) end
--- Gets computed the width of the markupobject.
---@return number
function MarkupObject:GetWidth(  ) end
--- Gets computed the width and height of the markupobject.
---@return number
---@return number
function MarkupObject:Size(  ) end
