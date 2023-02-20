SERVER = true
CLIENT = true
SHARED = true---@meta
AccessorFunc = {}
--- Adds simple Get/Set accessor functions on the specified table.
--- Can also force the value to be set to a number, bool or string.
---@param tab table The table to add the accessor functions too. 
---@param key any The key of the table to be get/set. 
---@param name string The name of the functions (will be prefixed with Get and Set). 
---@param force? number The type the setter should force to (uses [FORCE](/gmod/Enums/FORCE)). 
AccessorFunc = function( tab, key, name, force ) end
Add_NPC_Class = {}
--- Defines a global entity class variable with an automatic value in order to prevent collisions with other [CLASS](/gmod/Enums/CLASS). You should prefix your variable with CLASS_ for consistency.
---@param name string The name of the new enum/global variable. 
Add_NPC_Class = function( name ) end
AddBackgroundImage = {}
--- Adds the specified image path to the main menu background pool. Image can be png or jpeg.
---@param path string Path to the image. 
AddBackgroundImage = function( path ) end
AddConsoleCommand = {}
--- Tells the engine to register a console command. If the command was ran, the engine calls [concommand.Run](/gmod/concommand.Run).
---@param name string The name of the console command to add. 
---@param helpText string The help text. 
---@param flags number Concommand flags using [FCVAR](/gmod/Enums/FCVAR) 
AddConsoleCommand = function( name, helpText, flags ) end
AddCSLuaFile = {}
--- Marks a Lua file to be sent to clients when they join the server. Doesn't do anything on the client - this means you can use it in a shared file without problems.
---@param file? string The name/path to the Lua file that should be sent, **relative to the garrysmod/lua folder**. If no parameter is specified, it sends the current file.    The file path can be relative to the script it's ran from. For example, if your script is in `lua/myfolder/stuff.lua`, calling [AddCSLuaFile](/gmod/Global.AddCSLuaFile)("otherstuff.lua") and [AddCSLuaFile](/gmod/Global.AddCSLuaFile)("myfolder/otherstuff.lua") is the same thing. 
AddCSLuaFile = function( file ) end
AddonMaterial = {}
--- Loads the specified image from the `/cache` folder, used in combination [steamworks.Download](/gmod/steamworks.Download). Most addons will provide a 512x512 png image.
---@param name string The name of the file. 
---@return IMaterial
AddonMaterial = function( name ) end
AddOriginToPVS = {}
--- Adds the specified vector to the PVS which is currently building. This allows all objects in visleafs visible from that vector to be drawn.
---@param position Vector The origin to add. 
AddOriginToPVS = function( position ) end
AddWorldTip = {}
--- This function creates a World Tip, similar to the one shown when aiming at a Thruster where it shows you its force.
--- 
--- This function will make a World Tip that will only last 50 milliseconds (1/20th of a second), so you must call it continuously as long as you want the World Tip to be shown. It is common to call it inside a Think hook.
--- 
--- Contrary to what the function's name implies, it is impossible to create more than one World Tip at the same time. A new World Tip will overwrite the old one, so only use this function when you know nothing else will also be using it.
--- 
--- See [SANDBOX:PaintWorldTips](/gmod/SANDBOX:PaintWorldTips) for more information.
---@param entindex? number **This argument is no longer used**; it has no effect on anything. You can use nil in this argument. 
---@param text string The text for the world tip to display. 
---@param dieTime? number **This argument is no longer used**; when you add a World Tip it will always last only 0.05 seconds. You can use nil in this argument. 
---@param pos? Vector Where in the world you want the World Tip to be drawn. If you add a valid Entity in the next argument, this argument will have no effect on the actual World Tip. 
---@param ent? Entity Which entity you want to associate with the World Tip. This argument is optional. If set to a valid entity, this will override the position set in `pos` with the Entity's position. 
AddWorldTip = function( entindex, text, dieTime, pos, ent ) end
Angle = {}
--- Creates an [Angle](/gmod/Angle) object.
---@param pitch? number The pitch value of the angle.    If this is an [Angle](/gmod/Angle), this function will return a copy of the given angle.    If this is a [string](/gmod/string), this function will try to parse the string as a angle. If it fails, it returns a 0 angle.  (See examples) 
---@param yaw? number The yaw value of the angle. 
---@param roll? number The roll value of the angle. 
---@return Angle
Angle = function( pitch, yaw, roll ) end
AngleRand = {}
--- Returns an angle with a randomized pitch, yaw, and roll between min(inclusive), max(exclusive).
---@param min? number Min bound inclusive. 
---@param max? number Max bound exclusive. 
---@return Angle
AngleRand = function( min, max ) end
assert = {}
--- If the result of the first argument is false or nil, an error is thrown with the second argument as the message.
---@param expression any The expression to assert. 
---@param errorMessage? string The error message to throw when assertion fails. This is only type-checked if the assertion fails. 
---@param returns? any Any arguments past the error message will be returned by a successful assert. 
---@return any
---@return any
---@return any
assert = function( expression, errorMessage, returns ) end
BroadcastLua = {}
--- Sends the specified Lua code to all connected clients and executes it.
---@param code string The code to be executed. Capped at length of 254 characters. 
BroadcastLua = function( code ) end
BuildNetworkedVarsTable = {}
--- Dumps the networked variables of all entities into one table and returns it.
---@return table
BuildNetworkedVarsTable = function(  ) end
CanAddServerToFavorites = {}
--- Used internally to check if the current server the player is on can be added to favorites or not. Does not check if the server is ALREADY in the favorites.
---@return boolean
CanAddServerToFavorites = function(  ) end
CancelLoading = {}
--- Aborts joining of the server you are currently joining.
CancelLoading = function(  ) end
ChangeBackground = {}
--- Sets the active main menu background image to a random entry from the background images pool. Images are added with [AddBackgroundImage](/gmod/Global.AddBackgroundImage).
---@param currentgm string Apparently does nothing. 
ChangeBackground = function( currentgm ) end
ChangeTooltip = {}
--- Automatically called by the engine when a panel is hovered over with the mouse
---@param panel Panel Panel that has been hovered over 
ChangeTooltip = function( panel ) end
ClearBackgroundImages = {}
--- Empties the pool of main menu background images.
ClearBackgroundImages = function(  ) end
ClientsideModel = {}
--- Creates a non physical entity that only exists on the client. See also [ents.CreateClientProp](/gmod/ents.CreateClientProp).
---@param model string The file path to the model. 
---@param renderGroup? number The render group of the entity for the clientside leaf system, see [RENDERGROUP](/gmod/Enums/RENDERGROUP). 
---@return CSEnt
ClientsideModel = function( model, renderGroup ) end
ClientsideRagdoll = {}
--- Creates a fully clientside ragdoll.
---@param model string The file path to the model. 
---@param renderGroup? number The [RENDERGROUP](/gmod/Enums/RENDERGROUP) to assign. 
---@return CSEnt
ClientsideRagdoll = function( model, renderGroup ) end
ClientsideScene = {}
--- Creates a scene entity based on the scene name and the entity.
---@param name string The name of the scene. 
---@param targetEnt Entity The entity to play the scene on. 
---@return CSEnt
ClientsideScene = function( name, targetEnt ) end
CloseDermaMenus = {}
--- Closes all Derma menus that have been passed to [RegisterDermaMenuForClose](/gmod/Global.RegisterDermaMenuForClose) and calls [GM:CloseDermaMenus](/gmod/GM:CloseDermaMenus)
CloseDermaMenus = function(  ) end
collectgarbage = {}
--- Executes the specified action on the garbage collector.
---@param action? string The action to run.    Valid actions are `collect`, `stop`, `restart`, `count`, `step`, `setpause` and `setstepmul`. 
---@param arg number The argument of the specified action, only applicable for `step`, `setpause` and `setstepmul`. 
---@return any
collectgarbage = function( action, arg ) end
Color = {}
--- Creates a [Color](/gmod/Color).
---@param r number An integer from 0-255 describing the red value of the color. 
---@param g number An integer from 0-255 describing the green value of the color. 
---@param b number An integer from 0-255 describing the blue value of the color. 
---@param a? number An integer from 0-255 describing the alpha (transparency) of the color. 
---@return table
Color = function( r, g, b, a ) end
ColorAlpha = {}
--- Returns a new [Color](/gmod/Color) with the RGB components of the given [Color](/gmod/Color) and the alpha value specified.
---@param color table The [Color](/gmod/Color) from which to take RGB values. This color will not be modified. 
---@param alpha number The new alpha value, a number between 0 and 255. Values above 255 will be clamped. 
---@return table
ColorAlpha = function( color, alpha ) end
ColorRand = {}
--- Creates a [Color](/gmod/Color) with randomized red, green, and blue components. If the alpha argument is true, alpha will also be randomized.
---@param a? boolean Should alpha be randomized. 
---@return table
ColorRand = function( a ) end
ColorToHSL = {}
--- Converts a [Color](/gmod/Color) into HSL color space.
---@param color table The [Color](/gmod/Color). 
---@return number
---@return number
---@return number
ColorToHSL = function( color ) end
ColorToHSV = {}
--- Converts a [Color](/gmod/Color) into HSV color space.
---@param color table The [Color](/gmod/Color). 
---@return number
---@return number
---@return number
ColorToHSV = function( color ) end
CompileFile = {}
--- Attempts to compile the given file. If successful, returns a function that can be called to perform the actual execution of the script.
---@param path string Path to the file, relative to the garrysmod/lua/ directory. 
---@return function
CompileFile = function( path ) end
CompileString = {}
--- This function will compile the code argument as lua code and return a function that will execute that code. 
--- 
--- Please note that this function will not automatically execute the given code after compiling it.
---@param code string The code to compile. 
---@param identifier string An identifier in case an error is thrown. (The same identifier can be used multiple times) 
---@param HandleError? boolean If false this function will return an error string instead of throwing an error. 
---@return function
CompileString = function( code, identifier, HandleError ) end
ConsoleAutoComplete = {}
--- Returns a table of console command names beginning with the given text.
---@param text string Text that the console commands must begin with. 
---@return table
ConsoleAutoComplete = function( text ) end
ConVarExists = {}
--- Returns whether a [ConVar](/gmod/ConVar) with the given name exists or not
---@param name string Name of the [ConVar](/gmod/ConVar). 
---@return boolean
ConVarExists = function( name ) end
CreateClientConVar = {}
--- Makes a clientside-only console variable
--- 
--- 
--- 
--- Although this function is shared, it should only be used clientside.
---@param name string Name of the ConVar to be created and able to be accessed.    This cannot be a name of existing console command or console variable. It will silently fail if it is. 
---@param default string Default value of the ConVar. 
---@param shouldsave? boolean Should the ConVar be saved across sessions in the cfg/client.vdf file. 
---@param userinfo? boolean Should the ConVar and its containing data be sent to the server when it has changed. This make the convar accessible from server using [Player:GetInfoNum](/gmod/Player:GetInfoNum) and similar functions. 
---@param helptext string Help text to display in the console. 
---@param min? number If set, the convar cannot be changed to a number lower than this value. 
---@param max? number If set, the convar cannot be changed to a number higher than this value. 
---@return ConVar
CreateClientConVar = function( name, default, shouldsave, userinfo, helptext, min, max ) end
CreateConVar = {}
--- Creates a console variable ([ConVar](/gmod/ConVar)), in general these are for things like gamemode/server settings.
---@param name string Name of the [ConVar](/gmod/ConVar).    This cannot be a name of an engine console command or console variable. It will silently fail if it is. If it is the same name as another lua ConVar, it will return that ConVar object. 
---@param value string Default value of the convar. Can also be a number. 
---@param flags? number Flags of the convar, see [FCVAR](/gmod/Enums/FCVAR), either as bitflag or as table. 
---@param helptext string The help text to show in the console. 
---@param min? number If set, the ConVar cannot be changed to a number lower than this value. 
---@param max? number If set, the ConVar cannot be changed to a number higher than this value. 
---@return ConVar
CreateConVar = function( name, value, flags, helptext, min, max ) end
CreateMaterial = {}
--- Creates a new material with the specified name and shader.
---@param name string The material name. Must be unique. 
---@param shaderName string The shader name. See [Shaders](/gmod/Shaders). 
---@param materialData table Key-value table that contains shader parameters and proxies.    * See: [List of Shader Parameters on Valve Developers Wiki](https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters) and each shader's page from . 
---@return IMaterial
CreateMaterial = function( name, shaderName, materialData ) end
CreateParticleSystem = {}
--- Creates a new particle system.
---@param ent Entity The entity to attach the control point to. 
---@param effect string The name of the effect to create. It must be precached. 
---@param partAttachment number See [PATTACH](/gmod/Enums/PATTACH). 
---@param entAttachment? number The attachment ID on the entity to attach the particle system to 
---@param offset? Vector The offset from the [Entity:GetPos](/gmod/Entity:GetPos) of the entity we are attaching this CP to. 
---@return CNewParticleEffect
CreateParticleSystem = function( ent, effect, partAttachment, entAttachment, offset ) end
CreatePhysCollideBox = {}
--- Creates a new [PhysCollide](/gmod/PhysCollide) from the given bounds.
---@param mins Vector Min corner of the box. This is not automatically ordered with the maxs and must contain the smallest vector components. See [OrderVectors](/gmod/Global.OrderVectors). 
---@param maxs Vector Max corner of the box. This is not automatically ordered with the mins and must contain the largest vector components. 
---@return PhysCollide
CreatePhysCollideBox = function( mins, maxs ) end
CreatePhysCollidesFromModel = {}
--- Creates [PhysCollide](/gmod/PhysCollide) objects for every physics object the model has. The model must be precached with [util.PrecacheModel](/gmod/util.PrecacheModel) before being used with this function.
---@param modelName string Model path to get the collision objects of. 
---@return table
CreatePhysCollidesFromModel = function( modelName ) end
CreateSound = {}
--- Returns a sound parented to the specified entity.
---@param targetEnt Entity The target entity. 
---@param soundName string The sound to play. 
---@param filter? CRecipientFilter A [CRecipientFilter](/gmod/CRecipientFilter) of the players that will have this sound networked to them. 
---@return CSoundPatch
CreateSound = function( targetEnt, soundName, filter ) end
CreateSprite = {}
--- Creates and returns a new [DSprite](/gmod/DSprite) element with the supplied material.
---@param material IMaterial Material the sprite should draw. 
---@return Panel
CreateSprite = function( material ) end
CurTime = {}
--- Returns the uptime of the server in seconds (to at least 4 decimal places)
--- 
--- This is a synchronised value and affected by various factors such as host_timescale (or [game.GetTimeScale](/gmod/game.GetTimeScale)) and the server being paused - either by sv_pausable or all players disconnecting.
--- 
--- You should use this function for timing in-game events but not for real-world events.
--- 
--- See also: [RealTime](/gmod/Global.RealTime), [SysTime](/gmod/Global.SysTime)
---@return number
CurTime = function(  ) end
DamageInfo = {}
--- Returns an [CTakeDamageInfo](/gmod/CTakeDamageInfo) object.
---@return CTakeDamageInfo
DamageInfo = function(  ) end
DebugInfo = {}
--- Writes text to the right hand side of the screen, like the old error system. Messages disappear after a couple of seconds.
---@param slot number The location on the right hand screen to write the debug info to. Starts at 0, no upper limit 
---@param info string The debugging information to be written to the screen 
DebugInfo = function( slot, info ) end
DEFINE_BASECLASS = {}
--- This is not a function. This is a preprocessor keyword that translates to:
--- ```
--- local BaseClass = baseclass.Get( "my_weapon" )
--- ```
--- If you type `DEFINE_BASECLASS( "my_weapon" )` in your script.
--- 
--- See [baseclass.Get](/gmod/baseclass.Get) for more information.
---@param value string Baseclass name 
DEFINE_BASECLASS = function( value ) end
DeriveGamemode = {}
--- Loads and registers the specified gamemode, setting the GM table's DerivedFrom field to the value provided, if the table exists. The DerivedFrom field is used post-gamemode-load as the "derived" parameter for [gamemode.Register](/gmod/gamemode.Register).
---@param base string Gamemode name to derive from. 
DeriveGamemode = function( base ) end
Derma_Anim = {}
--- Creates a new derma animation.
---@param name string Name of the animation to create 
---@param panel Panel Panel to run the animation on 
---@param func? function Function to call to process the animation    Arguments:  * [Panel](/gmod/Panel) pnl - the panel passed to Derma_Anim  * [table](/gmod/table) anim - the anim table  * [number](/gmod/number) delta - the fraction of the progress through the animation  * [any](/gmod/any) data - optional data passed to the run metatable method 
---@return table
Derma_Anim = function( name, panel, func ) end
Derma_DrawBackgroundBlur = {}
--- Draws background blur around the given panel.
---@param panel Panel Panel to draw the background blur around 
---@param startTime number Time that the blur began being painted 
Derma_DrawBackgroundBlur = function( panel, startTime ) end
Derma_Hook = {}
--- Creates panel method that calls the supplied Derma skin hook via [derma.SkinHook](/gmod/derma.SkinHook)
---@param panel Panel Panel to add the hook to 
---@param functionName string Name of panel function to create 
---@param hookName string Name of Derma skin hook to call within the function 
---@param typeName string Type of element to call Derma skin hook for 
Derma_Hook = function( panel, functionName, hookName, typeName ) end
Derma_Install_Convar_Functions = {}
--- Makes the panel (usually an input of sorts) respond to changes in console variables by adding next functions to the panel:
--- * [Panel:SetConVar](/gmod/Panel:SetConVar)
--- * [Panel:ConVarChanged](/gmod/Panel:ConVarChanged)
--- * [Panel:ConVarStringThink](/gmod/Panel:ConVarStringThink)
--- * [Panel:ConVarNumberThink](/gmod/Panel:ConVarNumberThink)
--- 
--- The console variable value is saved in the `m_strConVar` property of the panel.
--- 
--- The panel should call
--- [Panel:ConVarStringThink](/gmod/Panel:ConVarStringThink) or 
--- [Panel:ConVarNumberThink](/gmod/Panel:ConVarNumberThink) 
--- in its [PANEL:Think](/gmod/PANEL:Think) hook and should call [Panel:ConVarChanged](/gmod/Panel:ConVarChanged) when the panel's value has changed.
---@param target Panel The panel the functions should be added to. 
Derma_Install_Convar_Functions = function( target ) end
Derma_Message = {}
--- Creates a derma window to display information
---@param Text string The text within the created panel. 
---@param Title string The title of the created panel. 
---@param Button string The text of the button to close the panel. 
---@return Panel
Derma_Message = function( Text, Title, Button ) end
Derma_Query = {}
--- Shows a message box in the middle of the screen, with up to 4 buttons they can press.
---@param text? string The message to display. 
---@param title? string The title to give the message box. 
---@param btn1text string The text to display on the first button. 
---@param btn1func? function The function to run if the user clicks the first button. 
---@param btn2text? string The text to display on the second button. 
---@param btn2func? function The function to run if the user clicks the second button. 
---@param btn3text? string The text to display on the third button 
---@param btn3func? function The function to run if the user clicks the third button. 
---@param btn4text? string The text to display on the fourth button 
---@param btn4func? function The function to run if the user clicks the fourth button. 
---@return Panel
Derma_Query = function( text, title, btn1text, btn1func, btn2text, btn2func, btn3text, btn3func, btn4text, btn4func ) end
Derma_StringRequest = {}
--- Creates a derma window asking players to input a string.
---@param title string The title of the created panel. 
---@param subtitle string The text above the input box 
---@param default string The default text for the input box. 
---@param confirm function The function to be called once the user has confirmed their input. 
---@param cancel? function The function to be called once the user has cancelled their input 
---@param confirmText? string Allows you to override text of the "OK" button 
---@param cancelText? string Allows you to override text of the "Cancel" button 
---@return Panel
Derma_StringRequest = function( title, subtitle, default, confirm, cancel, confirmText, cancelText ) end
DermaMenu = {}
--- Creates a [DMenu](/gmod/DMenu) and closes any current menus.
---@param keepOpen? boolean If we should keep other [DMenu](/gmod/DMenu)s open (`true`) or not (`false`). 
---@param parent? Panel The panel to parent the created menu to. 
---@return Panel
DermaMenu = function( keepOpen, parent ) end
DisableClipping = {}
--- Sets whether rendering should be limited to being inside a panel or not.
--- 
--- See also [Panel:NoClipping](/gmod/Panel:NoClipping).
---@param disable boolean Whether or not clipping should be disabled 
---@return boolean
DisableClipping = function( disable ) end
DOF_Kill = {}
--- Cancels current DOF post-process effect started with [DOF_Start](/gmod/Global.DOF_Start)
DOF_Kill = function(  ) end
DOF_Start = {}
--- Cancels any existing DOF post-process effects.
--- Begins the DOF post-process effect.
DOF_Start = function(  ) end
DOFModeHack = {}
--- A hacky method used to fix some bugs regarding DoF.
---@param enable boolean Enables or disables depth-of-field mode 
DOFModeHack = function( enable ) end
DrawBackground = {}
--- Draws the currently active main menu background image and handles transitioning between background images.
--- 
--- This is called by default in the menu panel's Paint hook.
DrawBackground = function(  ) end
DrawBloom = {}
--- Draws the bloom shader, which creates a glowing effect from bright objects.
---@param Darken number Determines how much to darken the effect. A lower number will make the glow come from lower light levels. A value of `1` will make the bloom effect unnoticeable. Negative values will make even pitch black areas glow. 
---@param Multiply number Will affect how bright the glowing spots are. A value of `0` will make the bloom effect unnoticeable. 
---@param SizeX number The size of the bloom effect along the horizontal axis. 
---@param SizeY number The size of the bloom effect along the vertical axis. 
---@param Passes number Determines how much to exaggerate the effect. 
---@param ColorMultiply number Will multiply the colors of the glowing spots, making them more vivid. 
---@param Red number How much red to multiply with the glowing color. Should be between `0` and `1`. 
---@param Green number How much green to multiply with the glowing color. Should be between `0` and `1`. 
---@param Blue number How much blue to multiply with the glowing color. Should be between `0` and `1`. 
DrawBloom = function( Darken, Multiply, SizeX, SizeY, Passes, ColorMultiply, Red, Green, Blue ) end
DrawColorModify = {}
--- Draws the Color Modify shader, which can be used to adjust colors on screen.
---@param modifyParameters table Color modification parameters. See [Shaders/g_colourmodify](/gmod/Shaders/g_colourmodify) and the example below. Note that if you leave out a field, it will retain its last value which may have changed if another caller uses this function. 
DrawColorModify = function( modifyParameters ) end
DrawMaterialOverlay = {}
--- Draws a material overlay on the screen.
---@param Material string This will be the material that is drawn onto the screen. 
---@param RefractAmount number This will adjust how much the material will refract your screen. 
DrawMaterialOverlay = function( Material, RefractAmount ) end
DrawMotionBlur = {}
--- Creates a motion blur effect by drawing your screen multiple times.
---@param AddAlpha number How much alpha to change per frame. 
---@param DrawAlpha number How much alpha the frames will have. A value of 0 will not render the motion blur effect. 
---@param Delay number Determines the amount of time between frames to capture. 
DrawMotionBlur = function( AddAlpha, DrawAlpha, Delay ) end
DrawSharpen = {}
--- Draws the sharpen shader, which creates more contrast.
---@param Contrast number How much contrast to create. 
---@param Distance number How large the contrast effect will be. 
DrawSharpen = function( Contrast, Distance ) end
DrawSobel = {}
--- Draws the sobel shader, which detects edges and draws a black border.
---@param Threshold number Determines the threshold of edges. A value of `0` will make your screen completely black. 
DrawSobel = function( Threshold ) end
DrawSunbeams = {}
--- Renders the post-processing effect of beams of light originating from the map's sun. Utilises the `pp/sunbeams` material.
---@param darken number `$darken` property for sunbeams material. 
---@param multiplier number `$multiply` property for sunbeams material. 
---@param sunSize number `$sunsize` property for sunbeams material. 
---@param sunX number `$sunx` property for sunbeams material. 
---@param sunY number `$suny` property for sunbeams material. 
DrawSunbeams = function( darken, multiplier, sunSize, sunX, sunY ) end
DrawTexturize = {}
--- Draws the texturize shader, which replaces each pixel on your screen with a different part of the texture depending on its brightness. See [g_texturize](/gmod/Shaders/g_texturize) for information on making the texture.
---@param Scale number Scale of the texture. A smaller number creates a larger texture. 
---@param BaseTexture number This will be the texture to use in the effect. Make sure you use [Material](/gmod/Global.Material) to get the texture number. 
DrawTexturize = function( Scale, BaseTexture ) end
DrawToyTown = {}
--- Draws the toy town shader, which blurs the top and bottom of your screen. This can make very large objects look like toys, hence the name.
---@param Passes number An integer determining how many times to draw the effect. A higher number creates more blur. 
---@param Height number The amount of screen which should be blurred on the top and bottom. 
DrawToyTown = function( Passes, Height ) end
DropEntityIfHeld = {}
--- Drops the specified entity if it is being held by any player with Gravity Gun or +use pickup.
---@param ent Entity The entity to drop. 
DropEntityIfHeld = function( ent ) end
DynamicLight = {}
--- Creates or replaces a dynamic light with the given id.
---@param index number An unsigned Integer. Usually an [entity index](/gmod/Entity:EntIndex) is used here. 
---@param elight? boolean Allocates an elight instead of a dlight. Elights have a higher light limit and do not light the world (making the "noworld" parameter have no effect). 
---@return table
DynamicLight = function( index, elight ) end
EffectData = {}
--- Returns a [CEffectData](/gmod/CEffectData) object to be used with [util.Effect](/gmod/util.Effect).
---@return CEffectData
EffectData = function(  ) end
Either = {}
--- An [eagerly evaluated](https://en.wikipedia.org/wiki/Eager_evaluation) [ternary operator](https://en.wikipedia.org/wiki/%3F:), or, in layman's terms, a compact "if then else" statement.
--- 
--- In most cases, you should just use Lua's ["pseudo" ternary operator](https://en.wikipedia.org/wiki/%3F:#Lua), like this:
--- 
--- ```
--- local myCondition = true
--- local consequent = "myCondition is true"
--- local alternative = "myCondition is false"
--- 
--- print(myCondition and consequent or alternative)
--- ```
--- 
--- However, in very rare cases, you may find `Either` useful. In the above example, due to [short-circuit evaluation](https://en.wikipedia.org/wiki/Short-circuit_evaluation), `consequent` would be "skipped" and ignored (not evaluated) by Lua due to `myCondition` being `true`, and only `alternative` would be evaluated. However, when using `Either`, both `consequent` and `alternative` would be evaluated. A practical example of this can be found below.
---@param condition any The condition to check if true or false. 
---@param truevar any If the condition isn't nil/false, returns this value. 
---@param falsevar any If the condition is nil/false, returns this value. 
---@return any
Either = function( condition, truevar, falsevar ) end
EmitSentence = {}
--- Plays a sentence from `scripts/sentences.txt`
---@param soundName string The sound to play 
---@param position Vector The position to play at 
---@param entity number The entity to emit the sound from. Must be [Entity:EntIndex](/gmod/Entity:EntIndex) 
---@param channel? number The sound channel, see [CHAN](/gmod/Enums/CHAN). 
---@param volume? number The volume of the sound, from 0 to 1 
---@param soundLevel? number The sound level of the sound, see [SNDLVL](/gmod/Enums/SNDLVL) 
---@param soundFlags? number The flags of the sound, see [SND](/gmod/Enums/SND) 
---@param pitch? number The pitch of the sound, 0-255 
EmitSentence = function( soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch ) end
EmitSound = {}
--- Emits the specified sound at the specified position.
---@param soundName string The sound to play 
---@param position Vector The position to play at 
---@param entity number The entity to emit the sound from. Can be an [Entity:EntIndex](/gmod/Entity:EntIndex) or one of the following:  * `0` - Plays sound on the world (position set to `0,0,0`)  * `-1` - Plays sound on the local player (on server acts as `0`)  * `-2` - Plays UI sound (position set to `0,0,0`, no spatial sound, on server acts as `0`) 
---@param channel? number The sound channel, see [CHAN](/gmod/Enums/CHAN). 
---@param volume? number The volume of the sound, from 0 to 1 
---@param soundLevel? number The sound level of the sound, see [SNDLVL](/gmod/Enums/SNDLVL) 
---@param soundFlags? number The flags of the sound, see [SND](/gmod/Enums/SND) 
---@param pitch? number The pitch of the sound, 0-255 
---@param dsp? number The DSP preset for this sound. [List of DSP presets](https://developer.valvesoftware.com/wiki/Dsp_presets) 
EmitSound = function( soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch, dsp ) end
EndTooltip = {}
--- Removes the currently active tool tip from the screen.
---@param panel Panel This is the panel that has a tool tip. 
EndTooltip = function( panel ) end
Entity = {}
--- Returns the entity with the matching [Entity:EntIndex](/gmod/Entity:EntIndex).
--- 
--- Indices `1` through [game.MaxPlayers](/gmod/game.MaxPlayers)() are always reserved for players.
---@param entityIndex number The entity index. 
---@return Entity
Entity = function( entityIndex ) end
Error = {}
--- Throws an error. This is currently an alias of [ErrorNoHalt](/gmod/Global.ErrorNoHalt) despite it once throwing a halting error like [error](/gmod/Global.error(lowercase)) without the stack trace appended.
---@param arguments any Converts all arguments to strings and prints them with no spacing or line breaks. 
Error = function( arguments ) end
ErrorNoHalt = {}
--- Throws a Lua error but does not break out of the current call stack.
--- This function will not print a stack trace like a normal error would.
--- Essentially similar if not equivalent to [Msg](/gmod/Global.Msg).
---@param arguments any Converts all arguments to strings and prints them with no spacing. 
ErrorNoHalt = function( arguments ) end
ErrorNoHaltWithStack = {}
--- Throws a Lua error but does not break out of the current call stack.
--- 
--- This function will print a stack trace like a normal error would.
---@param arguments any Converts all arguments to strings and prints them with no spacing. 
ErrorNoHaltWithStack = function( arguments ) end
EyeAngles = {}
--- Returns the angles of the current render context as calculated by [GM:CalcView](/gmod/GM:CalcView).
---@return Angle
EyeAngles = function(  ) end
EyePos = {}
--- Returns the origin of the current render context as calculated by [GM:CalcView](/gmod/GM:CalcView).
---@return Vector
EyePos = function(  ) end
EyeVector = {}
--- Returns the normal vector of the current render context as calculated by [GM:CalcView](/gmod/GM:CalcView), similar to [EyeAngles](/gmod/Global.EyeAngles).
---@return Vector
EyeVector = function(  ) end
FindMetaTable = {}
--- Returns the meta table for the class with the matching name.
--- 
--- Internally returns [debug.getregistry](/gmod/debug.getregistry)()[metaName]
--- 
--- You can learn more about meta tables on the [Meta Tables](/gmod/Meta%20Tables) page.
--- 
--- You can find a list of meta tables that can be retrieved with this function on [TYPE](/gmod/Enums/TYPE). The name in the description is the string to use with this function.
---@param metaName string The object type to retrieve the meta table of. 
---@return table
FindMetaTable = function( metaName ) end
FindTooltip = {}
--- Returns the tool-tip text and tool-tip-panel (if any) of the given panel as well as itself
---@param panel Panel Panel to find tool-tip of 
---@return string
---@return Panel
---@return Panel
FindTooltip = function( panel ) end
Format = {}
--- Formats the specified values into the string given. Same as [string.format](/gmod/string.format).
---@param format string The string to be formatted.  Follows this format: http://www.cplusplus.com/reference/cstdio/printf/ 
---@param formatParameters any Values to be formatted into the string. 
---@return string
Format = function( format, formatParameters ) end
FrameNumber = {}
--- Returns the number of frames rendered since the game was launched.
FrameNumber = function(  ) end
FrameTime = {}
--- Returns the [CurTime](/gmod/Global.CurTime)-based time in seconds it took to render the last frame.
--- 
--- This should be used for frame/tick based timing, such as movement prediction or animations.
--- 
--- For real-time-based frame time that isn't affected by host_timescale, use [RealFrameTime](/gmod/Global.RealFrameTime). RealFrameTime is more suited for things like GUIs or HUDs.
---@return number
FrameTime = function(  ) end
GameDetails = {}
--- Callback function for when the client has joined a server. This function shows the server's loading URL by default.
---@param servername string Server's name. 
---@param serverurl string Server's loading screen URL, or "" if the URL is not set. 
---@param mapname string Server's current map's name. 
---@param maxplayers number Max player count of server. 
---@param steamid string The local player's [Player:SteamID64](/gmod/Player:SteamID64). 
---@param gamemode string Server's current gamemode's folder name. 
GameDetails = function( servername, serverurl, mapname, maxplayers, steamid, gamemode ) end
gcinfo = {}
--- Returns the current floored dynamic memory usage of Lua in kilobytes.
---@return number
gcinfo = function(  ) end
GetConVar = {}
--- Gets the [ConVar](/gmod/ConVar) with the specified name.
---@param name string Name of the ConVar to get 
---@return ConVar
GetConVar = function( name ) end
GetConVar_Internal = {}
--- Gets the ConVar with the specified name. This function doesn't cache the convar.
---@param name string Name of the ConVar to get 
---@return ConVar
GetConVar_Internal = function( name ) end
GetConVarNumber = {}
--- Gets the numeric value ConVar with the specified name.
---@param name string Name of the ConVar to get. 
---@return number
GetConVarNumber = function( name ) end
GetConVarString = {}
--- Gets the string value ConVar with the specified name.
---@param name string Name of the ConVar to get. 
---@return string
GetConVarString = function( name ) end
GetDefaultLoadingHTML = {}
--- Returns the default loading screen URL (asset://garrysmod/html/loading.html)
---@return string
GetDefaultLoadingHTML = function(  ) end
GetDemoFileDetails = {}
--- Retrieves data about the demo with the specified filename. Similar to [GetSaveFileDetails](/gmod/Global.GetSaveFileDetails).
---@param filename string The file name of the demo. 
---@return table
GetDemoFileDetails = function( filename ) end
GetDownloadables = {}
--- Returns a table with the names of files needed from the server you are currently joining.
---@return table
GetDownloadables = function(  ) end
getfenv = {}
--- Returns the environment table of either the stack level or the function specified.
---@param location? function The object to get the enviroment from. Can also be a number that specifies the function at that stack level: Level 1 is the function calling getfenv. 
---@return table
getfenv = function( location ) end
GetGlobalAngle = {}
--- Returns an angle that is shared between the server and all clients.
---@param index string The unique index to identify the global value with. 
---@param default? Angle The value to return if the global value is not set. 
---@return Angle
GetGlobalAngle = function( index, default ) end
GetGlobalBool = {}
--- Returns a boolean that is shared between the server and all clients.
---@param index string The unique index to identify the global value with. 
---@param default? boolean The value to return if the global value is not set. 
---@return boolean
GetGlobalBool = function( index, default ) end
GetGlobalEntity = {}
--- Returns an entity that is shared between the server and all clients.
---@param index string The unique index to identify the global value with. 
---@param default? Entity The value to return if the global value is not set. 
---@return Entity
GetGlobalEntity = function( index, default ) end
GetGlobalFloat = {}
--- Returns a float that is shared between the server and all clients.
---@param index string The unique index to identify the global value with. 
---@param default? number The value to return if the global value is not set. 
---@return number
GetGlobalFloat = function( index, default ) end
GetGlobalInt = {}
--- Returns an integer that is shared between the server and all clients.
---@param index string The unique index to identify the global value with. 
---@param default? number The value to return if the global value is not set. 
---@return number
GetGlobalInt = function( index, default ) end
GetGlobalString = {}
--- Returns a string that is shared between the server and all clients.
---@param index string The unique index to identify the global value with. 
---@param default string The value to return if the global value is not set. 
---@return string
GetGlobalString = function( index, default ) end
GetGlobalVector = {}
--- Returns a vector that is shared between the server and all clients.
---@param Index string The unique index to identify the global value with. 
---@param Default Vector The value to return if the global value is not set. 
---@return Vector
GetGlobalVector = function( Index, Default ) end
GetHostName = {}
--- Returns the name of the current server.
---@return string
GetHostName = function(  ) end
GetHUDPanel = {}
--- Returns the panel that is used as a wrapper for the HUD. If you want your panel to be hidden when the main menu is opened, parent it to this. Child panels will also have their controls disabled.
--- 
--- See also [vgui.GetWorldPanel](/gmod/vgui.GetWorldPanel)
---@return Panel
GetHUDPanel = function(  ) end
GetLoadPanel = {}
--- Returns the loading screen panel and creates it if it doesn't exist.
---@return Panel
GetLoadPanel = function(  ) end
GetLoadStatus = {}
--- Returns the current status of the server join progress.
---@return string
GetLoadStatus = function(  ) end
GetMapList = {}
--- Returns a table with the names of all maps and categories that you have on your client.
---@return table
GetMapList = function(  ) end
getmetatable = {}
--- Returns the metatable of an object. This function obeys the metatable's __metatable field, and will return that field if the metatable has it set.
--- 
--- Use [debug.getmetatable](/gmod/debug.getmetatable) if you want the true metatable of the object.
---@param object any The value to return the metatable of. 
---@return any
getmetatable = function( object ) end
GetOverlayPanel = {}
--- Returns the menu overlay panel, a container for panels like the error panel created in [GM:OnLuaError](/gmod/GM:OnLuaError).
---@return Panel
GetOverlayPanel = function(  ) end
GetPredictionPlayer = {}
--- Returns the player whose movement commands are currently being processed. The player this returns can safely have [Player:GetCurrentCommand](/gmod/Player:GetCurrentCommand)() called on them. See [Prediction](/gmod/Prediction).
---@return Player
GetPredictionPlayer = function(  ) end
GetRenderTarget = {}
--- Creates or gets the rendertarget with the given name.
--- 
--- See [GetRenderTargetEx](/gmod/Global.GetRenderTargetEx) for an advanced version of this function with more options.
---@param name string The internal name of the render target. 
---@param width number The width of the render target, must be power of 2. If not set to PO2, the size will be automatically converted to the nearest PO2 size. 
---@param height number The height of the render target, must be power of 2. If not set to PO2, the size will be automatically converted to the nearest PO2 size. 
---@return ITexture
GetRenderTarget = function( name, width, height ) end
GetRenderTargetEx = {}
--- Gets (or creates if it does not exist) the rendertarget with the given name, this function allows to adjust the creation of a rendertarget more than [GetRenderTarget](/gmod/Global.GetRenderTarget).
--- 
--- See also [render.PushRenderTarget](/gmod/render.PushRenderTarget) and [render.SetRenderTarget](/gmod/render.SetRenderTarget).
---@param name string The internal name of the render target. 
---@param width number The width of the render target, must be power of 2. 
---@param height number The height of the render target, must be power of 2. 
---@param sizeMode number Bitflag that influences the sizing of the render target, see [RT_SIZE](/gmod/Enums/RT_SIZE). 
---@param depthMode number Bitflag that determines the depth buffer usage of the render target [MATERIAL_RT_DEPTH](/gmod/Enums/MATERIAL_RT_DEPTH). 
---@param textureFlags number Bitflag that configurates the texture, see [TEXTUREFLAGS](/gmod/Enums/TEXTUREFLAGS).    List of flags can also be found on the Valve's Developer Wiki:  https://developer.valvesoftware.com/wiki/Valve_Texture_Format 
---@param rtFlags number Flags that controll the HDR behaviour of the render target, see [CREATERENDERTARGETFLAGS](/gmod/Enums/CREATERENDERTARGETFLAGS). 
---@param imageFormat number Image format, see [IMAGE_FORMAT](/gmod/Enums/IMAGE_FORMAT). 
---@return ITexture
GetRenderTargetEx = function( name, width, height, sizeMode, depthMode, textureFlags, rtFlags, imageFormat ) end
GetSaveFileDetails = {}
--- Retrieves data about the save with the specified filename. Similar to [GetDemoFileDetails](/gmod/Global.GetDemoFileDetails).
---@param filename string The file name of the save. 
---@return table
GetSaveFileDetails = function( filename ) end
GetTimeoutInfo = {}
--- Returns if the client is timing out, and time since last ping from the server. Similar to the server side [Player:IsTimingOut](/gmod/Player:IsTimingOut).
---@return boolean
---@return number
GetTimeoutInfo = function(  ) end
GetViewEntity = {}
--- Returns the entity the client is using to see from (such as the player itself, the camera, or another entity).
---@return Entity
GetViewEntity = function(  ) end
HSLToColor = {}
--- Converts a color from [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a [Color](/gmod/Color).
---@param hue number The hue in degrees from 0-360. 
---@param saturation number The saturation from 0-1. 
---@param value number The lightness from 0-1. 
---@return table
HSLToColor = function( hue, saturation, value ) end
HSVToColor = {}
--- Converts a color from [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a [Color](/gmod/Color).
---@param hue number The hue in degrees from 0-360. 
---@param saturation number The saturation from 0-1. 
---@param value number The value from 0-1. 
---@return table
HSVToColor = function( hue, saturation, value ) end
HTTP = {}
--- Launches an asynchronous http request with the given parameters.
---@param parameters table The request parameters. See [HTTPRequest](/gmod/Structures/HTTPRequest). 
---@return boolean
HTTP = function( parameters ) end
include = {}
--- Executes a Lua script.
---@param fileName string The name of the script to be executed. The path must be either relative to the current file, or be an absolute path (relative to and excluding the **lua/** folder). 
---@return any
include = function( fileName ) end
IncludeCS = {}
--- This function works exactly the same as [include](/gmod/Global.include) both clientside and serverside.
--- 
--- The only difference is that on the serverside it also calls [AddCSLuaFile](/gmod/Global.AddCSLuaFile) on the filename, so that it gets sent to the client.
---@param filename string The filename of the Lua file you want to include. 
IncludeCS = function( filename ) end
ipairs = {}
--- Returns an iterator function for a for loop, to return ordered key-value pairs from a table.
--- 
--- This will only iterate though **numerical** keys, and these must also be **sequential**; starting at 1 with no gaps.
--- 
--- For unordered pairs, see [pairs](/gmod/Global.pairs).
--- 
--- For pairs sorted by key in alphabetical order, see [SortedPairs](/gmod/Global.SortedPairs).
---@param tab table The table to iterate over. 
---@return function
---@return table
---@return number
ipairs = function( tab ) end
isangle = {}
--- Returns if the passed object is an [Angle](/gmod/Angle).
---@param variable any The variable to perform the type check for. 
---@return boolean
isangle = function( variable ) end
isbool = {}
--- Returns if the passed object is a [boolean](/gmod/boolean).
---@param variable any The variable to perform the type check for. 
---@return boolean
isbool = function( variable ) end
IsColor = {}
--- Returns whether the given object does or doesn't have a `metatable` of a color.
---@param Object any The object to be tested 
---@return boolean
IsColor = function( Object ) end
IsEnemyEntityName = {}
--- Returns if the given NPC class name is an enemy.
--- 
--- Returns true if the entity name is one of the following:
--- * "npc_antlion"
--- * "npc_antlionguard"
--- * "npc_antlionguardian"
--- * "npc_barnacle"
--- * "npc_breen"
--- * "npc_clawscanner"
--- * "npc_combine_s"
--- * "npc_cscanner"
--- * "npc_fastzombie"
--- * "npc_fastzombie_torso"
--- * "npc_headcrab"
--- * "npc_headcrab_fast"
--- * "npc_headcrab_poison"
--- * "npc_hunter"
--- * "npc_metropolice"
--- * "npc_manhack"
--- * "npc_poisonzombie"
--- * "npc_strider"
--- * "npc_stalker"
--- * "npc_zombie"
--- * "npc_zombie_torso"
--- * "npc_zombine"
---@param className string Class name of the entity to check 
---@return boolean
IsEnemyEntityName = function( className ) end
IsEntity = {}
--- Returns if the passed object is an [Entity](/gmod/Entity). Alias of [Global.isentity](/gmod/Global.isentity).
---@param variable any The variable to check. 
---@return boolean
IsEntity = function( variable ) end
IsFirstTimePredicted = {}
--- Returns if this is the first time this hook was predicted.
--- 
--- This is useful for one-time logic in your SWEPs PrimaryAttack, SecondaryAttack and Reload and other  (to prevent those hooks from being called rapidly in succession). It's also useful in a Move hook for when the client predicts movement.
--- 
--- Visit [Prediction](/gmod/Prediction) for more information about this behavior.
---@return boolean
IsFirstTimePredicted = function(  ) end
IsFriendEntityName = {}
--- Returns if the given NPC class name is a friend.
--- 
--- Returns true if the entity name is one of the following:
--- * "npc_alyx"
--- * "npc_barney"
--- * "npc_citizen"
--- * "npc_dog"
--- * "npc_eli"
--- * "npc_fisherman"
--- * "npc_gman"
--- * "npc_kleiner"
--- * "npc_magnusson"
--- * "npc_monk"
--- * "npc_mossman"
--- * "npc_odessa"
--- * "npc_vortigaunt"
---@param className string Class name of the entity to check 
---@return boolean
IsFriendEntityName = function( className ) end
isfunction = {}
--- Returns if the passed object is a [function](/gmod/function).
---@param variable any The variable to perform the type check for. 
---@return boolean
isfunction = function( variable ) end
IsInGame = {}
--- Returns true if the client is currently playing either a singleplayer or multiplayer game.
---@return boolean
IsInGame = function(  ) end
ismatrix = {}
--- Returns whether the passed object is a [VMatrix](/gmod/VMatrix).
---@param variable any The variable to perform the type check for. 
---@return boolean
ismatrix = function( variable ) end
IsMounted = {}
--- Checks whether or not a game is currently mounted. Uses data given by [engine.GetGames](/gmod/engine.GetGames).
---@param game string The game string/app ID to check. 
---@return boolean
IsMounted = function( game ) end
isnumber = {}
--- Returns if the passed object is a [number](/gmod/number).
---@param variable any The variable to perform the type check for. 
---@return boolean
isnumber = function( variable ) end
ispanel = {}
--- Returns if the passed object is a [Panel](/gmod/Panel).
---@param variable any The variable to perform the type check for. 
---@return boolean
ispanel = function( variable ) end
isstring = {}
--- Returns if the passed object is a [string](/gmod/string).
---@param variable any The variable to perform the type check for. 
---@return boolean
isstring = function( variable ) end
istable = {}
--- Returns if the passed object is a [table](/gmod/table).
---@param variable any The variable to perform the type check for. 
---@return boolean
istable = function( variable ) end
IsTableOfEntitiesValid = {}
--- Returns whether or not every element within a table is a valid entity
---@param table table Table containing entities to check 
---@return boolean
IsTableOfEntitiesValid = function( table ) end
IsUselessModel = {}
--- Returns whether or not a model is useless by checking that the file path is that of a proper model.
--- 
--- If the string ".mdl" is not found in the model name, the function will return true.
--- 
--- The function will also return true if any of the following strings are found in the given model name:
--- * "_gesture"
--- * "_anim"
--- * "_gst"
--- * "_pst"
--- * "_shd"
--- * "_ss"
--- * "_posture"
--- * "_anm"
--- * "ghostanim"
--- * "_paths"
--- * "_shared"
--- * "anim_"
--- * "gestures_"
--- * "shared_ragdoll_"
---@param modelName string The model name to be checked 
---@return boolean
IsUselessModel = function( modelName ) end
IsValid = {}
--- Returns whether an object is valid or not. (Such as [Entity](/gmod/Entity)s, [Panel](/gmod/Panel)s, custom [table](/gmod/table) objects and more).
--- Checks that an object is not nil, has an IsValid method and if this method returns true.
---@param toBeValidated any The table or object to be validated. 
---@return boolean
IsValid = function( toBeValidated ) end
isvector = {}
--- Returns if the passed object is a [Vector](/gmod/Vector).
---@param variable any The variable to perform the type check for. 
---@return boolean
isvector = function( variable ) end
JoinServer = {}
--- Joins the server with the specified IP.
---@param IP string The IP of the server to join 
JoinServer = function( IP ) end
JS_Language = {}
--- Adds javascript function 'language.Update' to an HTML panel as a method to call Lua's [language.GetPhrase](/gmod/language.GetPhrase) function.
---@param htmlPanel Panel Panel to add javascript function 'language.Update' to. 
JS_Language = function( htmlPanel ) end
JS_Utility = {}
--- Adds javascript function 'util.MotionSensorAvailable' to an HTML panel as a method to call Lua's [motionsensor.IsAvailable](/gmod/motionsensor.IsAvailable) function.
---@param htmlPanel Panel Panel to add javascript function 'util.MotionSensorAvailable' to. 
JS_Utility = function( htmlPanel ) end
JS_Workshop = {}
--- Adds workshop related javascript functions to an HTML panel, used by the "Dupes" and "Saves" tabs in the spawnmenu.
---@param htmlPanel Panel Panel to add javascript functions to. 
JS_Workshop = function( htmlPanel ) end
Label = {}
--- Convenience function that creates a [DLabel](/gmod/DLabel), sets the text, and returns it
---@param text string The string to set the label's text to 
---@param parent? Panel Optional. The panel to parent the DLabel to 
---@return Panel
Label = function( text, parent ) end
LanguageChanged = {}
--- Callback function for when the client's language changes. Called by the engine.
---@param lang string The new language code. 
LanguageChanged = function( lang ) end
Lerp = {}
--- Performs a linear interpolation from the start number to the end number.
--- 
--- This function provides a very efficient and easy way to smooth out movements.
---@param t number The fraction for finding the result. This number is clamped between 0 and 1. Shouldn't be a constant. 
---@param from number The starting number. The result will be equal to this if delta is 0. 
---@param to number The ending number. The result will be equal to this if delta is 1. 
---@return number
Lerp = function( t, from, to ) end
LerpAngle = {}
--- Returns point between first and second angle using given fraction and linear interpolation
---@param ratio number Ratio of progress through values 
---@param angleStart Angle Angle to begin from 
---@param angleEnd Angle Angle to end at 
---@return Angle
LerpAngle = function( ratio, angleStart, angleEnd ) end
LerpVector = {}
--- Linear interpolation between two vectors. It is commonly used to smooth movement between two vectors
---@param fraction number Fraction ranging from 0 to 1 
---@param from Vector The initial Vector 
---@param to Vector The desired Vector 
---@return Vector
LerpVector = function( fraction, from, to ) end
LoadAddonPresets = {}
--- Returns the contents of `addonpresets.txt` located in the `garrysmod/settings` folder. By default, this file stores your addon presets as JSON.
--- 
--- You can use [SaveAddonPresets](/gmod/Global.SaveAddonPresets) to modify this file.
---@return string
LoadAddonPresets = function(  ) end
LoadLastMap = {}
--- This function is used to get the last map and category to which the map belongs from the cookie saved with [SaveLastMap](/gmod/Global.SaveLastMap).
LoadLastMap = function(  ) end
LoadPresets = {}
--- Loads all preset settings for the [presets](/gmod/presets) and returns them in a table
---@return table
LoadPresets = function(  ) end
Localize = {}
--- Returns a localisation for the given token, if none is found it will return the default (second) parameter.
---@param localisationToken string The token to find a translation for. 
---@param default string The default value to be returned if no translation was found. 
Localize = function( localisationToken, default ) end
LocalPlayer = {}
--- Returns the player object of the current client.
---@return Player
LocalPlayer = function(  ) end
LocalToWorld = {}
--- Translates the specified position and angle from the specified local coordinate system into worldspace coordinates.
--- 
--- If you're working with an entity's local vectors, use [Entity:LocalToWorld](/gmod/Entity:LocalToWorld) and/or [Entity:LocalToWorldAngles](/gmod/Entity:LocalToWorldAngles) instead.
--- 
--- See also: [WorldToLocal](/gmod/Global.WorldToLocal), the reverse of this function.
---@param localPos Vector The position vector in the source coordinate system, that should be translated to world coordinates 
---@param localAng Angle The angle in the source coordinate system, that should be converted to a world angle. If you don't need to convert an angle, you can supply an arbitrary valid angle (e.g. [Angle](/gmod/Global.Angle)()). 
---@param originPos Vector The origin point of the source coordinate system, in world coordinates 
---@param originAngle Angle The angles of the source coordinate system, as a world angle 
---@return Vector
---@return Angle
LocalToWorld = function( localPos, localAng, originPos, originAngle ) end
Material = {}
--- Either returns the material with the given name, or loads the material interpreting the first argument as the path.
---@param materialName string The material name or path. The path is relative to the **materials/** folder. You do not need to add **materials/** to your path.    To retrieve a Lua material created with [CreateMaterial](/gmod/Global.CreateMaterial), just prepend a "!" to the material name. 
---@param pngParameters? string A string containing space separated keywords which will be used to add material parameters.    See [Material Parameters](/gmod/Material%20Parameters) for more information. 
---@return IMaterial
---@return number
Material = function( materialName, pngParameters ) end
Matrix = {}
--- Returns a [VMatrix](/gmod/VMatrix) object.
---@param data? table Initial data to initialize the matrix with. Leave empty to initialize an identity matrix. See examples for usage.    Can be a [VMatrix](/gmod/VMatrix) to copy its data. 
---@return VMatrix
Matrix = function( data ) end
Mesh = {}
--- Returns a new mesh object.
---@param mat? IMaterial The material the mesh is intended to be rendered with. It's merely a hint that tells that mesh what vertex format it should use. 
---@return IMesh
Mesh = function( mat ) end
Model = {}
--- Runs [util.PrecacheModel](/gmod/util.PrecacheModel) and returns the string.
---@param model string The model to precache. 
---@return string
Model = function( model ) end
module = {}
--- Creates a table with the specified module name and sets the function environment for said table.
--- 
--- Any passed loaders are called with the table as an argument. An example of this is [package.seeall](/gmod/package.seeall).
---@param name string The name of the module. This will be used to access the module table in the runtime environment. 
---@param loaders any Calls each function passed with the new table as an argument. 
module = function( name, loaders ) end
Msg = {}
--- Writes every given argument to the console.
--- 
--- Automatically attempts to convert each argument to a string. (See [tostring](/gmod/Global.tostring))
--- 
--- Unlike [print](/gmod/Global.print), arguments are not separated by anything. They are simply concatenated.
--- 
--- Additionally, a newline isn't added automatically to the end, so subsequent Msg or print operations will continue the same line of text in the console. See [MsgN](/gmod/Global.MsgN) for a version that does add a newline.
--- 
--- The text is blue on the server, orange on the client, and green on the menu:
---@param args any List of values to print. 
Msg = function( args ) end
MsgAll = {}
--- Works exactly like [Msg](/gmod/Global.Msg) except that, if called on the server, will print to all players consoles plus the server console.
---@param args any List of values to print. 
MsgAll = function( args ) end
MsgC = {}
--- Just like [Msg](/gmod/Global.Msg), except it can also print colored text, just like [chat.AddText](/gmod/chat.AddText).
---@param args any Values to print. If you put in a color, all text after that color will be printed in that color. 
MsgC = function( args ) end
MsgN = {}
--- Same as [print](/gmod/Global.print), except it concatinates the arguments without inserting any whitespace in between them.
--- 
--- See also [Msg](/gmod/Global.Msg), which doesn't add a newline (`"\n"`) at the end.
---@param args any List of values to print. They can be of any type and will be converted to strings with [tostring](/gmod/Global.tostring). 
MsgN = function( args ) end
NamedColor = {}
--- Returns named color defined in resource/ClientScheme.res.
---@param name string Name of color 
---@return table
NamedColor = function( name ) end
newproxy = {}
--- Returns a new userdata object.
---@param addMetatable? boolean If true, the userdata will get its own metatable automatically. If another newproxy is passed, it will create new one and copy its metatable. 
---@return userdata
newproxy = function( addMetatable ) end
next = {}
--- Returns the next key and value pair in a table.
---@param tab table The table 
---@param prevKey? any The previous key in the table. 
---@return any
---@return any
next = function( tab, prevKey ) end
NumDownloadables = {}
--- Returns the number of files needed from the server you are currently joining.
---@return number
NumDownloadables = function(  ) end
NumModelSkins = {}
--- Returns the amount of skins the specified model has.
--- 
--- See also [Entity:SkinCount](/gmod/Entity:SkinCount) if you have an entity.
---@param modelName string Model to return amount of skins of 
---@return number
NumModelSkins = function( modelName ) end
OnModelLoaded = {}
--- Called by the engine when a model has been loaded. Caches model information with the [sql](/gmod/sql).
---@param modelName string Name of the model. 
---@param numPostParams number Number of pose parameters the model has. 
---@param numSeq number Number of sequences the model has. 
---@param numAttachments number Number of attachments the model has. 
---@param numBoneControllers number Number of bone controllers the model has. 
---@param numSkins number Number of skins that the model has. 
---@param size number Size of the model. 
OnModelLoaded = function( modelName, numPostParams, numSeq, numAttachments, numBoneControllers, numSkins, size ) end
OpenFolder = {}
--- Opens a folder with the given name in the garrysmod folder using the operating system's file browser.
---@param folder string The subdirectory to open in the garrysmod folder. 
OpenFolder = function( folder ) end
OrderVectors = {}
--- Modifies the given vectors so that all of vector2's axis are larger than vector1's by switching them around. Also known as ordering vectors.
---@param vector1 Vector Bounding box min resultant 
---@param vector2 Vector Bounding box max resultant 
OrderVectors = function( vector1, vector2 ) end
pairs = {}
--- Returns an iterator function([next](/gmod/Global.next)) for a for loop that will return the values of the specified table in an arbitrary order.
--- 
--- * For alphabetical **key** order use [SortedPairs](/gmod/Global.SortedPairs).
--- * For alphabetical **value** order use [SortedPairsByValue](/gmod/Global.SortedPairsByValue).
---@param tab table The table to iterate over. 
---@return function
---@return table
---@return any
pairs = function( tab ) end
Particle = {}
--- Calls [game.AddParticles](/gmod/game.AddParticles) and returns given string.
---@param file string The particle file. 
---@return string
Particle = function( file ) end
ParticleEffect = {}
--- Creates a particle effect.
---@param particleName string The name of the particle effect. 
---@param position Vector The start position of the effect. 
---@param angles Angle The orientation of the effect. 
---@param parent? Entity If set, the particle will be parented to the entity. 
ParticleEffect = function( particleName, position, angles, parent ) end
ParticleEffectAttach = {}
--- Creates a particle effect with specialized parameters.
---@param particleName string The name of the particle effect. 
---@param attachType number Attachment type using [PATTACH](/gmod/Enums/PATTACH). 
---@param entity Entity The entity to be used in the way specified by the attachType. 
---@param attachmentID number The id of the attachment to be used in the way specified by the attachType. 
ParticleEffectAttach = function( particleName, attachType, entity, attachmentID ) end
ParticleEmitter = {}
--- Creates a new [CLuaEmitter](/gmod/CLuaEmitter).
---@param position Vector The start position of the emitter.    This is only used to determine particle drawing order for translucent particles. 
---@param use3D boolean Whenever to render the particles in 2D or 3D mode. 
---@return CLuaEmitter
ParticleEmitter = function( position, use3D ) end
Path = {}
--- Creates a path for the bot to follow
---@param type string The name of the path to create.  This is going to be "Follow" or "Chase" right now. 
---@return PathFollower
Path = function( type ) end
pcall = {}
--- Calls a function and catches an error that can be thrown while the execution of the call.
---@param func function Function to be executed and of which the errors should be caught of 
---@param arguments any Arguments to call the function with. 
---@return boolean
---@return any
pcall = function( func, arguments ) end
Player = {}
--- Returns the player with the matching [Player:UserID](/gmod/Player:UserID).
--- 
--- For a function that returns a player based on their [Entity:EntIndex](/gmod/Entity:EntIndex), see [Entity](/gmod/Global.Entity).
--- 
--- For a function that returns a player based on their connection ID, see [player.GetByID](/gmod/player.GetByID).
---@param playerIndex number The player index. 
---@return Player
Player = function( playerIndex ) end
PositionSpawnIcon = {}
--- Moves the given model to the given position and calculates appropriate camera parameters for rendering the model to an icon.
--- 
--- The output table interacts nicely with [Panel:RebuildSpawnIconEx](/gmod/Panel:RebuildSpawnIconEx) with a few key renames.
---@param model Entity Model that is being rendered to the spawn icon 
---@param position Vector Position that the model is being rendered at 
---@param noAngles boolean If true the function won't reset the angles to 0 for the model. 
---@return table
PositionSpawnIcon = function( model, position, noAngles ) end
PrecacheParticleSystem = {}
--- Precaches the particle with the specified name.
---@param particleSystemName string The name of the particle system. 
PrecacheParticleSystem = function( particleSystemName ) end
PrecacheScene = {}
--- Precaches a scene file.
---@param scene string Path to the scene file to precache. 
PrecacheScene = function( scene ) end
PrecacheSentenceFile = {}
--- Load and precache a custom sentence file.
---@param filename string The path to the custom sentences.txt. 
PrecacheSentenceFile = function( filename ) end
PrecacheSentenceGroup = {}
--- Precache a sentence group in a sentences.txt definition file.
---@param group string The group to precache. 
PrecacheSentenceGroup = function( group ) end
print = {}
--- Writes every given argument to the console.
--- Automatically attempts to convert each argument to a string. (See [tostring](/gmod/Global.tostring))
--- 
--- Seperates lines with a line break (`"\n"`)
--- 
--- Separates arguments with a tab character (`"\t"`).
---@param args any List of values to print. 
print = function( args ) end
PrintMessage = {}
--- Displays a message in the chat, console, or center of screen of every player.
--- 
--- This uses the archaic user message system ([umsg](/gmod/umsg)) and hence is limited to ≈250 characters.
---@param type number Which type of message should be sent to the players (see [HUD](/gmod/Enums/HUD)) 
---@param message string Message to be sent to the players 
PrintMessage = function( type, message ) end
PrintTable = {}
--- Recursively prints the contents of a table to the console.
---@param tableToPrint table The table to be printed 
---@param indent? number Number of tabs to start indenting at. Increases by 2 when entering another table. 
---@param done? table Internal argument, you shouldn't normally change this. Used to check if a nested table has already been printed so it doesn't get caught in a loop. 
PrintTable = function( tableToPrint, indent, done ) end
ProjectedTexture = {}
--- Creates a new [ProjectedTexture](/gmod/ProjectedTexture).
---@return ProjectedTexture
ProjectedTexture = function(  ) end
ProtectedCall = {}
--- Runs a function without stopping the whole script on error.
--- 
--- This function is similar to [pcall](/gmod/Global.pcall) and [xpcall](/gmod/Global.xpcall) except the errors are still printed and sent to the error handler (i.e. sent to server console if clientside and [GM:OnLuaError](/gmod/GM:OnLuaError) called).
---@param func function Function to run 
---@return boolean
ProtectedCall = function( func ) end
RandomPairs = {}
--- Returns an iterator function that can be used to loop through a table in random order
---@param table table Table to create iterator for 
---@param descending boolean Whether the iterator should iterate descending or not 
---@return function
RandomPairs = function( table, descending ) end
rawequal = {}
--- Compares the two values without calling their __eq operator.
---@param value1 any The first value to compare. 
---@param value2 any The second value to compare. 
---@return boolean
rawequal = function( value1, value2 ) end
rawget = {}
--- Gets the value with the specified key from the table without calling the __index method.
---@param table table Table to get the value from. 
---@param index any The index to get the value from. 
---@return any
rawget = function( table, index ) end
rawset = {}
--- Sets the value with the specified key from the table without calling the __newindex method.
---@param table table Table to get the value from. 
---@param index any The index to get the value from. 
---@param value any The value to set for the specified key. 
rawset = function( table, index, value ) end
RealFrameTime = {}
--- Returns the real frame-time which is unaffected by host_timescale. To be used for GUI effects (for example)
---@return number
RealFrameTime = function(  ) end
RealTime = {}
--- Returns the uptime of the game/server in seconds (to at least **4** decimal places). This value updates itself once every time the realm thinks. For servers, this is the server tickrate. For clients, its their current FPS.
--- 
--- 
--- 
--- You should use this function (or [SysTime](/gmod/Global.SysTime)) for timing real-world events such as user interaction, but not for timing game events such as animations.
--- 
--- See also: [CurTime](/gmod/Global.CurTime), [SysTime](/gmod/Global.SysTime)
---@return number
RealTime = function(  ) end
RecipientFilter = {}
--- Creates a new [CRecipientFilter](/gmod/CRecipientFilter).
---@param unreliable? boolean If set to true, makes the filter unreliable.     This means, when sending over the network in cases like [CreateSound](/gmod/Global.CreateSound) (and its subsequent updates), the message is not guaranteed to reach all clients. 
---@return CRecipientFilter
RecipientFilter = function( unreliable ) end
RecordDemoFrame = {}
--- Adds a frame to the currently recording demo.
RecordDemoFrame = function(  ) end
RegisterDermaMenuForClose = {}
--- Registers a Derma element to be closed the next time [CloseDermaMenus](/gmod/Global.CloseDermaMenus) is called
---@param menu Panel Menu to be registered for closure 
RegisterDermaMenuForClose = function( menu ) end
RememberCursorPosition = {}
--- Saves position of your cursor on screen. You can restore it by using
--- [RestoreCursorPosition](/gmod/Global.RestoreCursorPosition).
RememberCursorPosition = function(  ) end
RemoveTooltip = {}
--- Does the removing of the tooltip panel. Called by [EndTooltip](/gmod/Global.EndTooltip).
RemoveTooltip = function(  ) end
RenderAngles = {}
--- Returns the angle that the clients view is being rendered at
---@return Angle
RenderAngles = function(  ) end
RenderDoF = {}
--- Renders a Depth of Field effect
---@param origin Vector Origin to render the effect at 
---@param angle Angle Angle to render the effect at 
---@param usableFocusPoint Vector Point to focus the effect at 
---@param angleSize number Angle size of the effect 
---@param radialSteps number Amount of radial steps to render the effect with 
---@param passes number Amount of render passes 
---@param spin boolean Whether to cycle the frame or not 
---@param inView table Table of view data 
---@param fov number FOV to render the effect with 
RenderDoF = function( origin, angle, usableFocusPoint, angleSize, radialSteps, passes, spin, inView, fov ) end
RenderStereoscopy = {}
--- Renders the stereoscopic post-process effect
---@param viewOrigin Vector Origin to render the effect at 
---@param viewAngles Angle Angles to render the effect at 
RenderStereoscopy = function( viewOrigin, viewAngles ) end
RenderSuperDoF = {}
--- Renders the Super Depth of Field post-process effect
---@param viewOrigin Vector Origin to render the effect at 
---@param viewAngles Angle Angles to render the effect at 
---@param viewFOV number Field of View to render the effect at 
RenderSuperDoF = function( viewOrigin, viewAngles, viewFOV ) end
require = {}
--- First tries to load a binary module with the given name, if unsuccessful, it tries to load a Lua module with the given name.
---@param name string The name of the module to be loaded. 
require = function( name ) end
RestoreCursorPosition = {}
--- Restores position of your cursor on screen. You can save it by using [RememberCursorPosition](/gmod/Global.RememberCursorPosition).
RestoreCursorPosition = function(  ) end
RunConsoleCommand = {}
--- Executes the given console command with the parameters.
---@param command string The command to be executed. 
---@param arguments any The arguments. Note, that unlike [Player:ConCommand](/gmod/Player:ConCommand), you must pass each argument as a new string, not separating them with a space. 
RunConsoleCommand = function( command, arguments ) end
RunGameUICommand = {}
--- Runs a menu command. Equivalent to [RunConsoleCommand](/gmod/Global.RunConsoleCommand)( "gamemenucommand", command ) unless the command starts with the "engine" keyword in which case it is equivalent to [RunConsoleCommand](/gmod/Global.RunConsoleCommand)( command ).
---@param command string The menu command to run    Should be one of the following:  * Disconnect - Disconnects from the current server.  * OpenBenchmarkDialog - Opens the "Video Hardware Stress Test" dialog.  * OpenChangeGameDialog - Does not work in GMod.  * OpenCreateMultiplayerGameDialog - Opens the Source dialog for creating a listen server.  * OpenCustomMapsDialog - Does nothing.  * OpenFriendsDialog - Does nothing.  * OpenGameMenu - Does not work in GMod.  * OpenLoadCommentaryDialog - Opens the "Developer Commentary" selection dialog. Useless in GMod.  * OpenLoadDemoDialog - Does nothing.  * OpenLoadGameDialog - Opens the Source "Load Game" dialog.  * OpenNewGameDialog - Opens the "New Game" dialog. Useless in GMod.  * OpenOptionsDialog - Opens the options dialog.  * OpenPlayerListDialog - Opens the "Mute Players" dialog that shows all players connected to the server and allows to mute them.  * OpenSaveGameDialog - Opens the Source "Save Game" dialog.  * OpenServerBrowser - Opens the legacy server browser.  * Quit - Quits the game `without` confirmation (unlike other Source games).  * QuitNoConfirm - Quits the game without confirmation (like other Source games).  * ResumeGame - Closes the menu and returns to the game.  * engine 
RunGameUICommand = function( command ) end
RunString = {}
--- Evaluates and executes the given code, will throw an error on failure.
---@param code string The code to execute. 
---@param identifier? string The name that should appear in any error messages caused by this code. 
---@param handleError? boolean If false, this function will return a string containing any error messages instead of throwing an error. 
---@return string
RunString = function( code, identifier, handleError ) end
RunStringEx = {}
--- Alias of [RunString](/gmod/Global.RunString).
RunStringEx = function(  ) end
SafeRemoveEntity = {}
--- Removes the given entity unless it is a player or the world entity
---@param ent Entity Entity to safely remove. 
SafeRemoveEntity = function( ent ) end
SafeRemoveEntityDelayed = {}
--- Removes entity after delay using [SafeRemoveEntity](/gmod/Global.SafeRemoveEntity)
---@param entity Entity Entity to be removed 
---@param delay number Delay for entity removal in seconds 
SafeRemoveEntityDelayed = function( entity, delay ) end
SaveAddonPresets = {}
--- Sets the content of `addonpresets.txt` located in the `garrysmod/settings` folder. By default, this file stores your addon presets as JSON.
--- 
--- You can use [LoadAddonPresets](/gmod/Global.LoadAddonPresets) to retrieve the data in this file.
---@param JSON string The new contents of the file. 
SaveAddonPresets = function( JSON ) end
SaveLastMap = {}
--- This function is used to save the last map and category to which the map belongs as a .
---@param map string The name of the map. 
---@param category string The name of the category to which this map belongs. 
SaveLastMap = function( map, category ) end
SavePresets = {}
--- Overwrites all presets with the supplied table. Used by the [presets](/gmod/presets) for preset saving
---@param presets table Presets to be saved 
SavePresets = function( presets ) end
ScreenScale = {}
--- Returns a number based on the Size argument and your screen's width. The screen's width is always equal to size 640. This function is primarily used for scaling font sizes.
---@param Size number The number you want to scale. 
ScreenScale = function( Size ) end
ScrH = {}
--- Gets the height of the game's window (in pixels).
---@return number
ScrH = function(  ) end
ScrW = {}
--- Gets the width of the game's window (in pixels).
---@return number
ScrW = function(  ) end
select = {}
--- Used to select single values from a vararg or get the count of values in it.
---@param parameter any Can be a [number](/gmod/number) or [string](/gmod/string).  * If it's a string and starts with "#", the function will return the amount of values in the vararg (ignoring the rest of the string).  * If it's a positive number, the function will return all values starting from the given index.  * If the number is negative, it will return the amount specified from the end instead of the beginning. This mode will not be compiled by LuaJIT. 
---@param vararg any The vararg. These are the values from which you want to select. 
---@return any
select = function( parameter, vararg ) end
SendUserMessage = {}
--- Send a usermessage
---@param name string The name of the usermessage 
---@param recipients any Can be a [CRecipientFilter](/gmod/CRecipientFilter), [table](/gmod/table) or [Player](/gmod/Player) object. 
---@param args any Data to send in the usermessage 
SendUserMessage = function( name, recipients, args ) end
SentenceDuration = {}
--- Returns approximate duration of a sentence by name. See [EmitSentence](/gmod/Global.EmitSentence).
---@param name string The sentence name. 
---@return number
SentenceDuration = function( name ) end
ServerLog = {}
--- Prints "ServerLog: PARAM" without a newline, to the server log and console.
---@param parameter string The value to be printed to console. 
ServerLog = function( parameter ) end
SetClipboardText = {}
--- Adds the given string to the computers clipboard, which can then be pasted in or outside of GMod with Ctrl + V.
---@param text string The text to add to the clipboard. 
SetClipboardText = function( text ) end
setfenv = {}
--- Sets the enviroment for a function or a stack level, if a function is passed, the return value will be the function, otherwise nil.
---@param location function The function to set the enviroment for or a number representing stack level. 
---@param enviroment table Table to be used as enviroment. 
setfenv = function( location, enviroment ) end
SetGlobalAngle = {}
--- Defines an angle to be automatically networked to clients
---@param index any Index to identify the global angle with 
---@param angle Angle Angle to be networked 
SetGlobalAngle = function( index, angle ) end
SetGlobalBool = {}
--- Defined a boolean to be automatically networked to clients
---@param index any Index to identify the global boolean with 
---@param bool boolean Boolean to be networked 
SetGlobalBool = function( index, bool ) end
SetGlobalEntity = {}
--- Defines an entity to be automatically networked to clients
---@param index any Index to identify the global entity with 
---@param ent Entity Entity to be networked 
SetGlobalEntity = function( index, ent ) end
SetGlobalFloat = {}
--- Defines a floating point number to be automatically networked to clients
---@param index any Index to identify the global float with 
---@param float number Float to be networked 
SetGlobalFloat = function( index, float ) end
SetGlobalInt = {}
--- Sets an integer that is shared between the server and all clients.
---@param index string The unique index to identify the global value with. 
---@param value number The value to set the global value to 
SetGlobalInt = function( index, value ) end
SetGlobalString = {}
--- Defines a string with a maximum of 199 characters to be automatically networked to clients
---@param index any Index to identify the global string with 
---@param string string String to be networked 
SetGlobalString = function( index, string ) end
SetGlobalVector = {}
--- Defines a vector to be automatically networked to clients
---@param index any Index to identify the global vector with 
---@param vec Vector Vector to be networked 
SetGlobalVector = function( index, vec ) end
setmetatable = {}
--- Sets, changes or removes a table's metatable. Returns Tab (the first argument).
---@param Tab table The table who's metatable to change. 
---@param Metatable table The metatable to assign.  If it's nil, the metatable will be removed. 
---@return table
setmetatable = function( Tab, Metatable ) end
SetPhysConstraintSystem = {}
--- Called by the engine to set which [constraint system](https://developer.valvesoftware.com/wiki/Phys_constraintsystem) the next created constraints should use.
---@param constraintSystem Entity Constraint system to use 
SetPhysConstraintSystem = function( constraintSystem ) end
SortedPairs = {}
--- This function can be used in a for loop instead of [pairs](/gmod/Global.pairs). It sorts all **keys** alphabetically.
--- 
--- For sorting by specific **value member**, use [SortedPairsByMemberValue](/gmod/Global.SortedPairsByMemberValue).
--- 
--- For sorting by **value**, use [SortedPairsByValue](/gmod/Global.SortedPairsByValue).
---@param table table The table to sort 
---@param desc? boolean Reverse the sorting order 
---@return function
---@return table
SortedPairs = function( table, desc ) end
SortedPairsByMemberValue = {}
--- Returns an iterator function that can be used to loop through a table in order of member values, when the values of the table are also tables and contain that member.
--- 
--- To sort by **value**, use [SortedPairsByValue](/gmod/Global.SortedPairsByValue).
--- 
--- To sort by **keys**, use [SortedPairs](/gmod/Global.SortedPairs).
---@param table table Table to create iterator for. 
---@param memberKey any Key of the value member to sort by. 
---@param descending? boolean Whether the iterator should iterate in descending order or not. 
---@return function
---@return table
SortedPairsByMemberValue = function( table, memberKey, descending ) end
SortedPairsByValue = {}
--- Returns an iterator function that can be used to loop through a table in order of its **values**.
--- 
--- To sort by specific **value member**, use [SortedPairsByMemberValue](/gmod/Global.SortedPairsByMemberValue).
--- 
--- To sort by **keys**, use [SortedPairs](/gmod/Global.SortedPairs).
---@param table table Table to create iterator for 
---@param descending? boolean Whether the iterator should iterate in descending order or not 
---@return function
---@return table
SortedPairsByValue = function( table, descending ) end
Sound = {}
--- Runs [util.PrecacheSound](/gmod/util.PrecacheSound) and returns the string.
---@param soundPath string The soundpath to precache. 
---@return string
Sound = function( soundPath ) end
SoundDuration = {}
--- Returns the duration of the specified sound in seconds.
---@param soundName string The sound file path. 
---@return number
SoundDuration = function( soundName ) end
SQLStr = {}
--- Returns the input value in an escaped form so that it can safely be used inside of queries. The returned value is surrounded by quotes unless noQuotes is true. Alias of [sql.SQLStr](/gmod/sql.SQLStr)
---@param input string String to be escaped 
---@param noQuotes? boolean Whether the returned value should be surrounded in quotes or not 
---@return string
SQLStr = function( input, noQuotes ) end
SScale = {}
--- Returns a number based on the Size argument and your screen's width. Alias of [ScreenScale](/gmod/Global.ScreenScale).
---@param Size number The number you want to scale. 
SScale = function( Size ) end
STNDRD = {}
--- Returns the ordinal suffix of a given number.
---@param number number The number to find the ordinal suffix of. 
---@return string
STNDRD = function( number ) end
SuppressHostEvents = {}
--- Suppress any networking from the server to the specified player. This is automatically called by the engine before/after a player fires their weapon, reloads, or causes any other similar shared-predicted event to occur.
---@param suppressPlayer Player The player to suppress any networking to. 
SuppressHostEvents = function( suppressPlayer ) end
SysTime = {}
--- Returns a highly accurate time in seconds since the start up, ideal for benchmarking. Unlike [RealTime](/gmod/Global.RealTime), this value will be updated any time the function is called, allowing for sub-think precision.
---@return number
SysTime = function(  ) end
TauntCamera = {}
--- Returns a TauntCamera object
---@return table
TauntCamera = function(  ) end
TextEntryLoseFocus = {}
--- Clears focus from any text entries player may have focused.
TextEntryLoseFocus = function(  ) end
TimedCos = {}
--- Returns a cosine value that fluctuates based on the current time
---@param frequency number The frequency of fluctuation 
---@param min number Minimum value 
---@param max number Maxmimum value 
---@param offset number Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time 
---@return number
TimedCos = function( frequency, min, max, offset ) end
TimedSin = {}
--- Returns a sine value that fluctuates based on [CurTime](/gmod/Global.CurTime). The value returned will be between the start value plus/minus the range value.
---@param frequency number The frequency of fluctuation, in 
---@param origin number The center value of the sine wave. 
---@param max number This argument's distance from origin defines the size of the full range of the sine wave. For example, if origin is 3 and max is 5, then the full range of the sine wave is 5-3 = 2. 3 is the center point of the sine wave, so the sine wave will range between 2 and 4. 
---@param offset number Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time 
---@return number
TimedSin = function( frequency, origin, max, offset ) end
tobool = {}
--- Attempts to return an appropriate boolean for the given value
---@param val any The object to be converted to a boolean 
---@return boolean
tobool = function( val ) end
ToggleFavourite = {}
--- Toggles whether or not the named map is favorited in the new game list.
---@param map string Map to toggle favorite. 
ToggleFavourite = function( map ) end
tonumber = {}
--- Attempts to convert the value to a number.
--- 
--- Returns nil on failure.
---@param value any The value to convert. Can be a number or string. 
---@param base? number The  used in the string. Can be any integer between 2 and 36, inclusive. 
---@return number
tonumber = function( value, base ) end
tostring = {}
--- Attempts to convert the value to a string. If the value is an object and its metatable has defined the __tostring metamethod, this will call that function.
--- 
--- [print](/gmod/Global.print) also uses this functionality.
---@param value any The object to be converted to a string. 
---@return string
tostring = function( value ) end
TranslateDownloadableName = {}
--- Returns "Lua Cache File" if the given file name is in a certain string table, nothing otherwise.
---@param filename string File name to test 
---@return string
TranslateDownloadableName = function( filename ) end
type = {}
--- Returns a string representing the name of the type of the passed object.
---@param var any The object to get the type of. 
---@return string
type = function( var ) end
TypeID = {}
--- Gets the associated type ID of the variable. Unlike [type](/gmod/Global.type), this does not work with [no value](/gmod/no%20value) - an argument must be provided.
---@param variable any The variable to get the type ID of. 
---@return number
TypeID = function( variable ) end
unpack = {}
--- This function takes a numeric indexed table and return all the members as a vararg. If specified, it will start at the given index and end at end index.
---@param tbl table The table to generate the vararg from. 
---@param startIndex? number Which index to start from. Optional. 
---@param endIndex? number Which index to end at. Optional, even if you set StartIndex. 
---@return any
unpack = function( tbl, startIndex, endIndex ) end
UnPredictedCurTime = {}
--- Returns the current asynchronous in-game time.
---@return number
UnPredictedCurTime = function(  ) end
UpdateLoadPanel = {}
--- Runs JavaScript on the loading screen panel ([GetLoadPanel](/gmod/Global.GetLoadPanel)).
---@param javascript string JavaScript to run on the loading panel. 
UpdateLoadPanel = function( javascript ) end
UTIL_IsUselessModel = {}
--- Returns whether or not a model is useless by checking that the file path is that of a proper model.
--- 
--- If the string ".mdl" is not found in the model name, the function will return true.
--- 
--- The function will also return true if any of the following strings are found in the given model name:
--- * "_gesture"
--- * "_anim"
--- * "_gst"
--- * "_pst"
--- * "_shd"
--- * "_ss"
--- * "_posture"
--- * "_anm"
--- * "ghostanim"
--- * "_paths"
--- * "_shared"
--- * "anim_"
--- * "gestures_"
--- * "shared_ragdoll_"
---@param modelName string The model name to be checked 
---@return boolean
UTIL_IsUselessModel = function( modelName ) end
ValidPanel = {}
--- Returns if a panel is safe to use.
---@param panel Panel The panel to validate. 
ValidPanel = function( panel ) end
Vector = {}
--- Creates a [Vector](/gmod/Vector) object.
---@param x? number The x component of the vector.    If this is a [Vector](/gmod/Vector), this function will return a copy of the given vector.    If this is a [string](/gmod/string), this function will try to parse the string as a vector. If it fails, it returns a 0 vector.  (See examples) 
---@param y? number The y component of the vector. 
---@param z? number The z component of the vector. 
---@return Vector
Vector = function( x, y, z ) end
VectorRand = {}
--- Returns a random vector whose components are each between min(inclusive), max(exclusive).
---@param min? number Min bound inclusive. 
---@param max? number Max bound exclusive. 
---@return Vector
VectorRand = function( min, max ) end
VGUIFrameTime = {}
--- Returns the time in seconds it took to render the VGUI.
VGUIFrameTime = function(  ) end
VGUIRect = {}
--- Creates and returns a [DShape](/gmod/DShape) rectangle GUI element with the given dimensions.
---@param x number X position of the created element 
---@param y number Y position of the created element 
---@param w number Width of the created element 
---@param h number Height of the created element 
---@return Panel
VGUIRect = function( x, y, w, h ) end
VisualizeLayout = {}
--- Briefly displays layout details of the given panel on-screen
---@param panel Panel Panel to display layout details of 
VisualizeLayout = function( panel ) end
WorkshopFileBase = {}
--- Returns a new WorkshopFileBase element
---@param namespace string Namespace for the file base 
---@param requiredTags table Tags required for a Workshop submission to be interacted with by the filebase 
---@return table
WorkshopFileBase = function( namespace, requiredTags ) end
WorldToLocal = {}
--- Translates the specified position and angle into the specified coordinate system.
---@param position Vector The position that should be translated from the current to the new system. 
---@param angle Angle The angles that should be translated from the current to the new system. 
---@param newSystemOrigin Vector The origin of the system to translate to. 
---@param newSystemAngles Angle The angles of the system to translate to. 
---@return Vector
---@return Angle
WorldToLocal = function( position, angle, newSystemOrigin, newSystemAngles ) end
xpcall = {}
--- Attempts to call the first function. If the execution succeeds, this returns `true` followed by the returns of the function. If execution fails, this returns `false` and the second function is called with the error message. 
--- 
--- Unlike in [pcall](/gmod/Global.pcall), the stack is not unwound and can therefore be used for stack analyses with the [debug](/gmod/debug).
---@param func function The function to call initially. 
---@param errorCallback function The function to be called if execution of the first fails; the error message is passed as a string.    You cannot throw an [Global.error](/gmod/Global.error)() from this callback: it will have no effect (not even stopping the callback). 
---@param arguments any Arguments to pass to the initial function. 
---@return boolean
---@return any
xpcall = function( func, errorCallback, arguments ) end
