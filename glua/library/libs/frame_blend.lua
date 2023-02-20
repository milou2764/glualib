---@meta
frame_blend = {}
--- Adds a frame to the blend. Calls [frame_blend.CompleteFrame](/gmod/frame_blend.CompleteFrame) once enough frames have passed since last [frame_blend.CompleteFrame](/gmod/frame_blend.CompleteFrame) call.
function frame_blend.AddFrame(  ) end
--- Blends the frame(s).
function frame_blend.BlendFrame(  ) end
--- Renders the frame onto internal render target.
function frame_blend.CompleteFrame(  ) end
--- Actually draws the frame blend effect.
function frame_blend.DrawPreview(  ) end
--- Returns whether frame blend post processing effect is enabled or not.
---@return boolean
function frame_blend.IsActive(  ) end
--- Returns whether the current frame is the last frame?
---@return boolean
function frame_blend.IsLastFrame(  ) end
--- Returns amount of frames needed to render?
---@return number
function frame_blend.RenderableFrames(  ) end
--- Returns whether we should skip frame or not
---@return boolean
function frame_blend.ShouldSkipFrame(  ) end
