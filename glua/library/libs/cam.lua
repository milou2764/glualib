---@meta
cam = {}
--- Shakes the screen at a certain position.
---@param pos Vector Origin of the shake. 
---@param angles Angle Angles of the shake. 
---@param factor number The shake factor. 
function cam.ApplyShake( pos, angles, factor ) end
--- Switches the renderer back to the previous drawing mode from a 3D context.
--- 
--- This function is an alias of [cam.End3D](/gmod/cam.End3D).
function cam.End(  ) end
--- Switches the renderer back to the previous drawing mode from a 2D context.
function cam.End2D(  ) end
--- Switches the renderer back to the previous drawing mode from a 3D context.
function cam.End3D(  ) end
--- Switches the renderer back to the previous drawing mode from a 3D2D context.
function cam.End3D2D(  ) end
--- Switches the renderer back to the previous drawing mode from a 3D orthographic rendering context.
function cam.EndOrthoView(  ) end
--- Returns the currently active model matrix.
---@return VMatrix
function cam.GetModelMatrix(  ) end
--- Tells the renderer to ignore the depth buffer and draw any upcoming operation "ontop" of everything that was drawn yet.
--- 
--- This is identical to calling `render.DepthRange( 0, 0.01 )` for `true` and  `render.DepthRange( 0, 1 )` for `false`. See [render.DepthRange](/gmod/render.DepthRange).
---@param ignoreZ boolean Determines whenever to ignore the depth buffer or not. 
function cam.IgnoreZ( ignoreZ ) end
--- Pops the current active rendering matrix from the stack and reinstates the previous one.
function cam.PopModelMatrix(  ) end
--- Pushes the specified matrix onto the render matrix stack. Unlike opengl, this will replace the current model matrix.
---@param matrix VMatrix The matrix to push. 
---@param multiply? boolean If set, multiplies given matrix with currently active matrix ([cam.GetModelMatrix](/gmod/cam.GetModelMatrix)) before pushing. 
function cam.PushModelMatrix( matrix, multiply ) end
--- Sets up a new rendering context. This is an extended version of [cam.Start3D](/gmod/cam.Start3D) and [cam.Start2D](/gmod/cam.Start2D). Must be finished by [cam.End3D](/gmod/cam.End3D) or [cam.End2D](/gmod/cam.End2D).
---@param dataTbl table Render context config. See [RenderCamData](/gmod/Structures/RenderCamData) 
function cam.Start( dataTbl ) end
--- Sets up a new 2D rendering context. Must be finished by [cam.End2D](/gmod/cam.End2D).
--- 
--- This is almost always used with a render target from the [render](/gmod/render). To set its position use [render.SetViewPort](/gmod/render.SetViewPort) with a target already stored.
function cam.Start2D(  ) end
--- Sets up a new 3D rendering context. Must be finished by [cam.End3D](/gmod/cam.End3D).
--- 
--- For more advanced settings such as an orthographic view, use [cam.Start](/gmod/cam.Start) instead.
---@param pos? Vector Render cam position. 
---@param angles? Angle Render cam angles. 
---@param fov? number Field of view. 
---@param x? number X coordinate of where to start the new view port. 
---@param y? number Y coordinate of where to start the new view port. 
---@param w? number Width of the new viewport. 
---@param h? number Height of the new viewport. 
---@param zNear? number Distance to near clipping plane. 
---@param zFar? number Distance to far clipping plane. 
function cam.Start3D( pos, angles, fov, x, y, w, h, zNear, zFar ) end
--- Sets up a new 2D rendering context. Must be finished by [cam.End3D2D](/gmod/cam.End3D2D). This function pushes a new matrix onto the stack. ([cam.PushModelMatrix](/gmod/cam.PushModelMatrix))
--- 
--- Matrix formula:
--- ```
--- local m = Matrix()
--- m:SetAngles(angles)
--- m:SetTranslation(pos)
--- m:SetScale(Vector(scale, -scale, 1))
--- ```
---@param pos Vector Origin of the 3D2D context, ie. the top left corner, (0, 0). 
---@param angles Angle Angles of the 3D2D context.  +x in the 2d context corresponds to +x of the angle (its forward direction).  +y in the 2d context corresponds to -y of the angle (its right direction).    If (dx, dy) are your desired (+x, +y) unit vectors, the angle you want is dx:AngleEx(dx:Cross(-dy)). 
---@param scale number The scale of the render context.  If scale is 1 then 1 pixel in 2D context will equal to 1 unit in 3D context. 
function cam.Start3D2D( pos, angles, scale ) end
--- Sets up a new 3d context using orthographic projection.
---@param leftOffset number The left plane offset. 
---@param topOffset number The top plane offset. 
---@param rightOffset number The right plane offset. 
---@param bottomOffset number The bottom plane offset. 
function cam.StartOrthoView( leftOffset, topOffset, rightOffset, bottomOffset ) end
