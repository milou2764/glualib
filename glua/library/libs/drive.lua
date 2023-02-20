---@meta
drive = {}
--- Optionally alter the view.
---@param ply Player The player 
---@param view table The view, see [ViewData](/gmod/Structures/ViewData) 
---@return boolean
function drive.CalcView( ply, view ) end
--- Clientside, the client creates the cmd (usercommand) from their input device (mouse, keyboard) and then it's sent to the server. Restrict view angles here.
---@param cmd CUserCmd The user command 
---@return boolean
function drive.CreateMove( cmd ) end
--- Destroys players current driving method.
---@param ply Player The player to affect 
function drive.DestroyMethod( ply ) end
--- Player has stopped driving the entity.
---@param ply Player The player 
---@param ent Entity The entity 
function drive.End( ply, ent ) end
--- The move is finished. Copy mv back into the target.
---@param ply Player The player 
---@param mv CMoveData The move data 
---@return boolean
function drive.FinishMove( ply, mv ) end
--- Returns ( or creates if inexistent ) a driving method.
---@param ply Player The player 
---@return table
function drive.GetMethod( ply ) end
--- The move is executed here.
---@param ply Player The player 
---@param mv CMoveData The move data 
---@return boolean
function drive.Move( ply, mv ) end
--- Starts driving for the player.
---@param ply Player The player to affect 
---@param ent Entity The entity to drive 
---@param mode string The driving mode 
function drive.PlayerStartDriving( ply, ent, mode ) end
--- Stops the player from driving anything. ( For example a prop in sandbox )
---@param ply Player The player to affect 
function drive.PlayerStopDriving( ply ) end
--- Registers a new entity drive.
---@param name string The name of the drive. 
---@param data table The data required to create the drive. This includes the functions used by the drive. 
---@param base string The base of the drive. 
function drive.Register( name, data, base ) end
--- Called when the player first starts driving this entity
---@param ply Player The player 
---@param ent Entity The entity 
function drive.Start( ply, ent ) end
--- The user command is received by the server and then converted into a move. This is also run clientside when in multiplayer, for prediction to work.
---@param ply Player The player 
---@param mv CMoveData The move data 
---@param cmd CUserCmd The user command 
---@return boolean
function drive.StartMove( ply, mv, cmd ) end
