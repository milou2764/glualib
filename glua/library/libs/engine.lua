---@meta
engine = {}
--- Returns the name of the currently running gamemode.
---@return string
function engine.ActiveGamemode(  ) end
--- Closes the server and completely exits.
--- 
--- This is only functional when running in server test mode (launch option -systemtest). Server test mode is used internally at Facepunch as part of the build process to make sure that the dedicated servers aren't crashing on startup.
function engine.CloseServer(  ) end
--- Returns a list of addons the player have subscribed to on the workshop.
--- 
--- This list will also include "Floating" .gma addons that are mounted by the game, but not the folder addons.
---@return table
function engine.GetAddons(  ) end
--- When starting playing a demo, [engine.GetDemoPlaybackTick](/gmod/engine.GetDemoPlaybackTick) will be reset and its old value will be added to this functions return value.
---@return number
function engine.GetDemoPlaybackStartTick(  ) end
--- Current tick of currently loaded demo.
--- 
--- If not playing a demo, it will return amount of ticks since last demo playback.
---@return number
function engine.GetDemoPlaybackTick(  ) end
--- Returns time scale of demo playback.
--- 
--- If not during demo playback, returns 1.
---@return number
function engine.GetDemoPlaybackTimeScale(  ) end
--- Returns total amount of ticks of currently loaded demo.
--- 
--- If not playing a demo, returns 0 or the value of last played demo.
---@return number
function engine.GetDemoPlaybackTotalTicks(  ) end
--- Returns a table containing info for all installed gamemodes
---@return table
function engine.GetGamemodes(  ) end
--- Returns an array of tables corresponding to all games from which Garry's Mod supports mounting content.
---@return table
function engine.GetGames(  ) end
--- Returns the UGC (demos, saves and dupes) the player have subscribed to on the workshop.
---@return table
function engine.GetUserContent(  ) end
--- Returns true if we're currently playing a demo.
--- 
--- You will notice that there's no server-side version of this. That's because there is no server when playing a demo. Demos are both recorded and played back purely clientside.
---@return boolean
function engine.IsPlayingDemo(  ) end
--- Returns true if the game is currently recording a demo file (.dem) using gm_demo
---@return boolean
function engine.IsRecordingDemo(  ) end
--- This is a direct binding to the function `engine->LightStyle`. This function allows you to change the default light style of the map - so you can make lighting lighter or darker. You’ll need to call [render.RedownloadAllLightmaps](/gmod/render.RedownloadAllLightmaps) clientside to refresh the lightmaps to this new color.
---@param lightstyle number The lightstyle to edit. 0 to 63. If you want to edit map lighting, you want to set this to 0. 
---@param pattern string The pattern to change the lightstyle to. `a` is the darkest, `z` is the brightest. You can use stuff like "abcxyz" to make flashing patterns. The normal brightness for a map is `m`. Values over `z` are allowed, `~` for instance. 
function engine.LightStyle( lightstyle, pattern ) end
--- Loads a duplication from the local filesystem.
---@param dupeName string Name of the file. e.g, engine.OpenDupe("dupes/8b809dd7a1a9a375e75be01cdc12e61f.dupe") 
---@return string
function engine.OpenDupe( dupeName ) end
--- Returns an estimate of the server's performance. Equivalent to calling [FrameTime](/gmod/Global.FrameTime) from the server, according to source code.
---@return number
---@return number
function engine.ServerFrameTime(  ) end
--- Sets the mounting options for mountable content.
---@param depotID string The depot id of the game to mount. 
---@param doMount boolean The mount state, true to mount, false to unmount 
function engine.SetMounted( depotID, doMount ) end
--- Returns the number of ticks since the game server started.
---@return number
function engine.TickCount(  ) end
--- Returns the number of seconds between each gametick.
---@return number
function engine.TickInterval(  ) end
--- Returns video recording settings set by [video.Record](/gmod/video.Record). Used by Demo-To-Video feature.
---@return table
function engine.VideoSettings(  ) end
--- Saves a duplication as a file.
---@param dupe string Dupe table, encoded by [util.TableToJSON](/gmod/util.TableToJSON) and compressed by [util.Compress](/gmod/util.Compress) 
---@param jpeg string The dupe icon, created by [render.Capture](/gmod/render.Capture) 
function engine.WriteDupe( dupe, jpeg ) end
--- Stores savedata into the game (can be loaded using the LoadGame menu)
---@param saveData string Data generated by gmsave.SaveMap 
---@param name string Name the save will have. 
---@param time number When the save was saved during the game (Put CurTime here) 
---@param map string The map the save is used for. 
function engine.WriteSave( saveData, name, time, map ) end