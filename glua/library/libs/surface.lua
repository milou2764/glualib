---@meta
surface = {}
--- Creates a new font.
--- 
--- To prevent the font from displaying incorrectly when using the `outline` setting, set `antialias` to false. This will ensure the text properly fills out the entire outline.
--- 
--- Be sure to check the [List of Default Fonts](/gmod/Default_Fonts) first! Those fonts can be used without using this function.
--- 
--- See Also: [Finding the Font Name](/gmod/Finding%20the%20Font%20Name).
---@param fontName string The new font name. 
---@param fontData table The font properties. See the [FontData](/gmod/Structures/FontData). 
function surface.CreateFont( fontName, fontData ) end
--- Enables or disables the clipping used by the VGUI that limits the drawing operations to a panels bounds.
--- 
--- Identical to [DisableClipping](/gmod/Global.DisableClipping). See also [Panel:NoClipping](/gmod/Panel:NoClipping).
---@param disable boolean True to disable, false to enable the clipping 
function surface.DisableClipping( disable ) end
--- Draws a hollow circle, made of lines. For a filled circle, see examples for [surface.DrawPoly](/gmod/surface.DrawPoly).
---@param originX number The center x integer coordinate. 
---@param originY number The center y integer coordinate. 
---@param radius number The radius of the circle. 
---@param r number The red value of the color to draw the circle with, or a [Color](/gmod/Color). 
---@param g number The green value of the color to draw the circle with. Unused if a [Color](/gmod/Color) was given. 
---@param b number The blue value of the color to draw the circle with. Unused if a [Color](/gmod/Color) was given. 
---@param a? number The alpha value of the color to draw the circle with. Unused if a [Color](/gmod/Color) was given. 
function surface.DrawCircle( originX, originY, radius, r, g, b, a ) end
--- Draws a line from one point to another.
---@param startX number The start x integer coordinate. 
---@param startY number The start y integer coordinate. 
---@param endX number The end x integer coordinate. 
---@param endY number The end y integer coordinate. 
function surface.DrawLine( startX, startY, endX, endY ) end
--- Draws a hollow box with a given border width.
---@param x number The start x integer coordinate. 
---@param y number The start y integer coordinate. 
---@param w number The integer width. 
---@param h number The integer height. 
---@param thickness number The thickness of the outlined box border. 
function surface.DrawOutlinedRect( x, y, w, h, thickness ) end
--- Draws a textured polygon (secretly a triangle fan) with a maximum of 4096 vertices.
--- Only works properly with convex polygons. You may try to render concave polygons, but there is no guarantee that things wont get messed up.
--- 
--- Unlike most surface library functions, non-integer coordinates are not rounded.
---@param vertices table A table containing integer vertices. See the [PolygonVertex](/gmod/Structures/PolygonVertex).    **The vertices must be in clockwise order.** 
function surface.DrawPoly( vertices ) end
--- Draws a solid rectangle on the screen.
---@param x number The X integer co-ordinate. 
---@param y number The Y integer co-ordinate. 
---@param width number The integer width of the rectangle. 
---@param height number The integer height of the rectangle. 
function surface.DrawRect( x, y, width, height ) end
--- Draw the specified text on the screen, using the previously set position, font and color.
---@param text string The text to be rendered. 
---@param forceAdditive? boolean `true` to force text to render additive, `false` to force not additive, `nil` to use font's value. 
function surface.DrawText( text, forceAdditive ) end
--- Draw a textured rectangle with the given position and dimensions on the screen, using the current active texture set with [surface.SetMaterial](/gmod/surface.SetMaterial). It is also affected by [surface.SetDrawColor](/gmod/surface.SetDrawColor).
--- 
--- See also [render.SetMaterial](/gmod/render.SetMaterial) and [render.DrawScreenQuadEx](/gmod/render.DrawScreenQuadEx).
--- 
--- See also [surface.DrawTexturedRectUV](/gmod/surface.DrawTexturedRectUV).
---@param x number The X integer co-ordinate. 
---@param y number The Y integer co-ordinate. 
---@param width number The integer width of the rectangle. 
---@param height number The integer height of the rectangle. 
function surface.DrawTexturedRect( x, y, width, height ) end
--- Draw a textured rotated rectangle with the given position and dimensions and angle on the screen, using the current active texture.
---@param x number The X integer co-ordinate, representing the center of the rectangle. 
---@param y number The Y integer co-ordinate, representing the center of the rectangle. 
---@param width number The integer width of the rectangle. 
---@param height number The integer height of the rectangle. 
---@param rotation number The rotation of the rectangle, in degrees. 
function surface.DrawTexturedRectRotated( x, y, width, height, rotation ) end
--- Draws a textured rectangle with a repeated or partial texture.
--- 
--- u and v refer to texture coordinates.
--- * (u, v) = (0, 0) is the top left
--- * (u, v) = (1, 0) is the top right
--- * (u, v) = (1, 1) is the bottom right
--- * (u, v) = (0, 1) is the bottom left
--- 
--- Using a start point of (1, 0) and an end point to (0, 1), you can draw an image flipped horizontally, same goes with other directions. Going above 1 will tile the texture. Negative values are allowed as well.
--- 
--- Here's a helper image:
---@param x number The X integer coordinate. 
---@param y number The Y integer coordinate. 
---@param width number The integer width of the rectangle. 
---@param height number The integer height of the rectangle. 
---@param startU number The U texture mapping of the rectangle origin. 
---@param startV number The V texture mapping of the rectangle origin. 
---@param endU number The U texture mapping of the rectangle end. 
---@param endV number The V texture mapping of the rectangle end. 
function surface.DrawTexturedRectUV( x, y, width, height, startU, startV, endU, endV ) end
--- Returns the current alpha multiplier affecting drawing operations. This is set by [surface.SetAlphaMultiplier](/gmod/surface.SetAlphaMultiplier) or by the game engine in certain other cases.
---@return number
function surface.GetAlphaMultiplier(  ) end
--- Returns the current color affecting draw operations.
---@return table
function surface.GetDrawColor(  ) end
--- Gets the [HUD icon](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/hud_textures.txt) TextureID with the specified name.
---@param name string The name of the texture. 
---@return number
function surface.GetHUDTexture( name ) end
--- Returns the current color affecting text draw operations.
---@return table
function surface.GetTextColor(  ) end
--- Returns the width and height (in pixels) of the given text, but only if the font has been set with [surface.SetFont](/gmod/surface.SetFont).
---@param text string The string to check the size of. 
---@return number
---@return number
function surface.GetTextSize( text ) end
--- Returns the texture id of the material with the given name/path.
---@param namepath string Name or path of the texture. 
---@return number
function surface.GetTextureID( namepath ) end
--- Returns the size of the texture with the associated texture ID.
--- 
--- For `.png/.jpg` textures loaded with [Material](/gmod/Global.Material) you can use the `$realheight` and `$realwidth` material parameters ([IMaterial:GetInt](/gmod/IMaterial:GetInt)) to get the size of the image.
---@param textureID number The texture ID, returned by [surface.GetTextureID](/gmod/surface.GetTextureID). 
---@return number
---@return number
function surface.GetTextureSize( textureID ) end
--- Play a sound file directly on the client (such as UI sounds, etc).
---@param soundfile string The path to the sound file, which must be relative to the sound/ folder. 
function surface.PlaySound( soundfile ) end
--- Returns the height of the current client's screen.
---@return number
function surface.ScreenHeight(  ) end
--- Returns the width of the current client's screen.
---@return number
function surface.ScreenWidth(  ) end
--- Sets the alpha multiplier that will influence all upcoming drawing operations.
--- See also [render.SetBlend](/gmod/render.SetBlend).
---@param multiplier number The multiplier ranging from 0 to 1. 
function surface.SetAlphaMultiplier( multiplier ) end
--- Set the color of any future shapes to be drawn, can be set by either using R, G, B, A as separate values or by a [Color](/gmod/Color). Using a color structure is not recommended to be created procedurally.
---@param r number The red value of color, or a [Color](/gmod/Color). 
---@param g number The green value of color. Unused if a [Color](/gmod/Color) was given. 
---@param b number The blue value of color. Unused if a [Color](/gmod/Color) was given. 
---@param a? number The alpha value of color. Unused if a [Color](/gmod/Color) was given. 
function surface.SetDrawColor( r, g, b, a ) end
--- Set the current font to be used for text operations later.
--- 
--- The fonts must first be created with [surface.CreateFont](/gmod/surface.CreateFont) or be one of the [Default Fonts](/gmod/Default%20Fonts).
---@param fontName string The name of the font to use. 
function surface.SetFont( fontName ) end
--- Sets the material to be used in all upcoming draw operations using the surface library.
--- 
--- Not to be confused with [render.SetMaterial](/gmod/render.SetMaterial).
--- 
--- See also [surface.SetTexture](/gmod/surface.SetTexture).
--- 
--- If you need to unset the texture, use the [draw.NoTexture](/gmod/draw.NoTexture) convenience function.
---@param material IMaterial The material to be used. 
function surface.SetMaterial( material ) end
--- Set the color of any future text to be drawn, can be set by either using R, G, B, A as separate numbers or by a [Color](/gmod/Color).
--- 
--- Using a color structure is not recommended to be created procedurally.
---@param r number The red value of color, or a [Color](/gmod/Color). 
---@param g number The green value of color 
---@param b number The blue value of color 
---@param a? number The alpha value of color 
function surface.SetTextColor( r, g, b, a ) end
--- Set the top-left position to draw any future text at.
---@param x number The X integer co-ordinate. 
---@param y number The Y integer co-ordinate. 
function surface.SetTextPos( x, y ) end
--- Sets the texture to be used in all upcoming draw operations using the surface library.
--- 
--- See also [surface.SetMaterial](/gmod/surface.SetMaterial) for an [IMaterial](/gmod/IMaterial) alternative.
---@param textureID number The ID of the texture to draw with returned by [surface.GetTextureID](/gmod/surface.GetTextureID). 
function surface.SetTexture( textureID ) end
