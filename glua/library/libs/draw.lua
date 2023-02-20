---@meta
draw = {}
--- Simple draw text at position, but this will expand newlines and tabs.
--- 
--- 
--- 
--- See also [MarkupObject](/gmod/MarkupObject) for limited width and markup support.
---@param text string Text to be drawn. 
---@param font? string Name of font to draw the text in. See [surface.CreateFont](/gmod/surface.CreateFont) to create your own, or [Default Fonts](/gmod/Default%20Fonts) for a list of default fonts. 
---@param x? number The X Coordinate. 
---@param y? number The Y Coordinate. 
---@param color? table Color to draw the text in. Uses the [Color](/gmod/Color). 
---@param xAlign? number Where to align the text horizontally. Uses the [TEXT_ALIGN](/gmod/Enums/TEXT_ALIGN). 
function draw.DrawText( text, font, x, y, color, xAlign ) end
--- Returns the height of the specified font in pixels. This is equivalent to the height of the character `W`. See [surface.GetTextSize](/gmod/surface.GetTextSize).
---@param font string Name of the font to get the height of. 
---@return number
function draw.GetFontHeight( font ) end
--- Sets drawing texture to a default white texture (vgui/white) via [surface.SetMaterial](/gmod/surface.SetMaterial). Useful for resetting the drawing texture.
function draw.NoTexture(  ) end
--- Draws a rounded rectangle.
---@param cornerRadius number Radius of the rounded corners, works best with a multiple of 2. 
---@param x number The x coordinate of the top left of the rectangle. 
---@param y number The y coordinate of the top left of the rectangle. 
---@param width number The width of the rectangle. 
---@param height number The height of the rectangle. 
---@param color table The color to fill the rectangle with. Uses the [Color](/gmod/Color). 
function draw.RoundedBox( cornerRadius, x, y, width, height, color ) end
--- Draws a rounded rectangle. This function also lets you specify which corners are drawn rounded.
---@param cornerRadius number Radius of the rounded corners, works best with a power of 2 number. 
---@param x number The x coordinate of the top left of the rectangle. 
---@param y number The y coordinate of the top left of the rectangle. 
---@param width number The width of the rectangle. 
---@param height number The height of the rectangle. 
---@param color table The color to fill the rectangle with. Uses the [Color](/gmod/Color). 
---@param roundTopLeft? boolean Whether the top left corner should be rounded. 
---@param roundTopRight? boolean Whether the top right corner should be rounded. 
---@param roundBottomLeft? boolean Whether the bottom left corner should be rounded. 
---@param roundBottomRight? boolean Whether the bottom right corner should be rounded. 
function draw.RoundedBoxEx( cornerRadius, x, y, width, height, color, roundTopLeft, roundTopRight, roundBottomLeft, roundBottomRight ) end
--- Draws text on the screen.
---@param text string The text to be drawn. 
---@param font? string The font. See [surface.CreateFont](/gmod/surface.CreateFont) to create your own, or see [Default Fonts](/gmod/Default%20Fonts) for a list of default fonts. 
---@param x? number The X Coordinate. 
---@param y? number The Y Coordinate. 
---@param color? table The color of the text. Uses the [Color](/gmod/Color). 
---@param xAlign? number The alignment of the X coordinate using [TEXT_ALIGN](/gmod/Enums/TEXT_ALIGN). 
---@param yAlign? number The alignment of the Y coordinate using [TEXT_ALIGN](/gmod/Enums/TEXT_ALIGN). 
---@return number
---@return number
function draw.SimpleText( text, font, x, y, color, xAlign, yAlign ) end
--- Creates a simple line of text that is outlined.
---@param Text string The text to draw. 
---@param font? string The font name to draw with. See [surface.CreateFont](/gmod/surface.CreateFont) to create your own, or [here](/gmod/Default_Fonts) for a list of default fonts. 
---@param x? number The X Coordinate. 
---@param y? number The Y Coordinate. 
---@param color? table The color of the text. Uses the [Color](/gmod/Color). 
---@param xAlign? number The alignment of the X Coordinate using [TEXT_ALIGN](/gmod/Enums/TEXT_ALIGN). 
---@param yAlign? number The alignment of the Y Coordinate using [TEXT_ALIGN](/gmod/Enums/TEXT_ALIGN). 
---@param outlinewidth number Width of the outline. 
---@param outlinecolor? table Color of the outline. Uses the [Color](/gmod/Color). 
---@return number
---@return number
function draw.SimpleTextOutlined( Text, font, x, y, color, xAlign, yAlign, outlinewidth, outlinecolor ) end
--- Works like [draw.SimpleText](/gmod/draw.SimpleText) but uses a table structure instead.
---@param textdata table The text properties. See the [TextData](/gmod/Structures/TextData) 
---@return number
---@return number
function draw.Text( textdata ) end
--- Works like [draw.Text](/gmod/draw.Text), but draws the text as a shadow.
---@param textdata table The text properties. See [TextData](/gmod/Structures/TextData) 
---@param distance number How far away the shadow appears. 
---@param alpha? number How visible the shadow is (0-255). 
function draw.TextShadow( textdata, distance, alpha ) end
--- Draws a texture with a table structure.
---@param texturedata table The texture properties. See [TextureData](/gmod/Structures/TextureData). 
function draw.TexturedQuad( texturedata ) end
--- Draws a rounded box with text in it.
---@param bordersize number Size of border, should be multiple of 2. Ideally this will be 8 or 16. 
---@param x number The X Coordinate. 
---@param y number The Y Coordinate. 
---@param text string Text to draw. 
---@param font string Font to draw in. See [surface.CreateFont](/gmod/surface.CreateFont) to create your own, or [here](/gmod/Default_Fonts) for a list of default fonts. 
---@param boxcolor table The box color. Uses the [Color](/gmod/Color). 
---@param textcolor table The text color. Uses the [Color](/gmod/Color). 
---@return number
---@return number
function draw.WordBox( bordersize, x, y, text, font, boxcolor, textcolor ) end
