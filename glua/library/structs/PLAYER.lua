---@meta
---@class PLAYER
---@field DisplayName string The 'nice' name of the player class for display in User Interface and such. 
---@field WalkSpeed number How fast to move when not running 
---@field RunSpeed number How fast to move when running/sprinting 
---@field CrouchedWalkSpeed number Multiply walk speed by this when crouching 
---@field DuckSpeed number How fast to go from not ducking, to ducking 
---@field UnDuckSpeed number How fast to go from ducking, to not ducking 
---@field JumpPower number How powerful a jump should be 
---@field CanUseFlashlight boolean Can the player use the flashlight 
---@field MaxHealth number Max health we can have 
---@field MaxArmor number Max armor the player can have 
---@field StartHealth number How much health we start with 
---@field StartArmor number How much armour we start with 
---@field DropWeaponOnDie boolean Do we drop our weapon when we die 
---@field TeammateNoCollide boolean Do we collide with teammates or run straight through them 
---@field AvoidPlayers boolean Automatically swerves around other players 
---@field UseVMHands boolean Uses viewmodel hands 
PLAYER = {}