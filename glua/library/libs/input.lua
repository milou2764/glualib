---@meta
input = {}
--- Returns the last key captured by key trapping.
---@return number
function input.CheckKeyTrapping(  ) end
--- Returns the digital value of an analog stick on the current (set up via convars) controller.
---@param axis number The analog axis to poll. See [ANALOG](/gmod/Enums/ANALOG). 
---@return number
function input.GetAnalogValue( axis ) end
--- Returns the cursor's position on the screen
---@return number
---@return number
function input.GetCursorPos(  ) end
--- Gets the button code from a button name. This is opposite of [input.GetKeyName](/gmod/input.GetKeyName).
---@param button string The internal button name, such as  or . 
---@return number
function input.GetKeyCode( button ) end
--- Gets the button name from a numeric button code. The name needs to be translated with [language.GetPhrase](/gmod/language.GetPhrase) before being displayed.
---@param button number The button, see [BUTTON_CODE](/gmod/Enums/BUTTON_CODE). 
---@return string
function input.GetKeyName( button ) end
--- Gets whether the specified button code is down.
--- 
--- Unlike [input.IsKeyDown](/gmod/input.IsKeyDown) this can also detect joystick presses from [JOYSTICK](/gmod/Enums/JOYSTICK)
---@param button number The button, valid values are in the range of [BUTTON_CODE](/gmod/Enums/BUTTON_CODE). 
---@return boolean
function input.IsButtonDown( button ) end
--- Returns whether a control key is being pressed
---@return boolean
function input.IsControlDown(  ) end
--- Gets whether a key is down.
---@param key number The key, see [KEY](/gmod/Enums/KEY). 
---@return boolean
function input.IsKeyDown( key ) end
--- Returns whether key trapping is activate and the next key press will be captured.
---@return boolean
function input.IsKeyTrapping(  ) end
--- Gets whether a mouse button is down
---@param mouseKey number The key, see [MOUSE](/gmod/Enums/MOUSE) 
---@return boolean
function input.IsMouseDown( mouseKey ) end
--- Gets whether a shift key is being pressed
---@return boolean
function input.IsShiftDown(  ) end
--- Returns the client's bound key for the specified console command. If the player has multiple keys bound to a single command, there is no defined behavior of which key will be returned.
---@param binding string The binding name 
---@param exact? boolean True if the binding should match exactly 
---@return string
function input.LookupBinding( binding, exact ) end
--- Returns the bind string that the given key is bound to.
---@param key number Key from [BUTTON_CODE](/gmod/Enums/BUTTON_CODE) 
---@return string
function input.LookupKeyBinding( key ) end
--- Switches to the provided weapon on the next CUserCmd generation/CreateMove call. Direct binding to [CInput::MakeWeaponSelection](https://github.com/LestaD/SourceEngine2007/blob/43a5c90a5ada1e69ca044595383be67f40b33c61/se2007/game/client/in_main.cpp#L929-L932).
---@param weapon Weapon The weapon entity to switch to. 
function input.SelectWeapon( weapon ) end
--- Sets the cursor's position on the screen, relative to the topleft corner of the window
---@param mouseX number X coordinate for mouse position 
---@param mouseY number Y coordinate for mouse position 
function input.SetCursorPos( mouseX, mouseY ) end
--- Begins waiting for a key to be pressed so we can save it for [input.CheckKeyTrapping](/gmod/input.CheckKeyTrapping). Used by the [DBinder](/gmod/DBinder).
function input.StartKeyTrapping(  ) end
--- Translates a console command alias, basically reverse of the `alias` console command.
---@param command string The alias to lookup. 
---@return string
function input.TranslateAlias( command ) end
--- Returns whether a key was initially pressed in the same frame this function was called.
--- 
--- This function only works in Move hooks, and will detect key presses even in main menu or when a typing in a text field.
---@param key number The key, see [KEY](/gmod/Enums/KEY). 
---@return boolean
function input.WasKeyPressed( key ) end
--- Returns whether a key was released in the same frame this function was called.
--- 
--- This function only works in Move hooks, and will detect key releases even in main menu or when a typing in a text field.
---@param key number The key, see [KEY](/gmod/Enums/KEY). 
---@return boolean
function input.WasKeyReleased( key ) end
--- Returns whether the key is being held down or not.
--- 
--- This function only works in Move hooks, and will detect key events even in main menu or when a typing in a text field.
---@param key number The key to test, see [KEY](/gmod/Enums/KEY) 
---@return boolean
function input.WasKeyTyped( key ) end
--- Returns whether a mouse key was double pressed in the same frame this function was called.
--- 
--- If this function returns true, [input.WasMousePressed](/gmod/input.WasMousePressed) will return false.
--- 
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field.
---@param button number The mouse button to test, see [MOUSE](/gmod/Enums/MOUSE) 
---@return boolean
function input.WasMouseDoublePressed( button ) end
--- Returns whether a mouse key was initially pressed in the same frame this function was called.
--- 
--- If [input.WasMouseDoublePressed](/gmod/input.WasMouseDoublePressed) returns true, this function will return false.
--- 
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field.
---@param key number The key, see [MOUSE](/gmod/Enums/MOUSE) 
---@return boolean
function input.WasMousePressed( key ) end
--- Returns whether a mouse key was released in the same frame this function was called.
--- 
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field.
---@param key number The key to test, see [MOUSE](/gmod/Enums/MOUSE) 
---@return boolean
function input.WasMouseReleased( key ) end
