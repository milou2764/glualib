---@meta
---@class GM
---@field Name string The fancy name of your gamemode. 
---@field Author string The name/contact info of the gamemode author. 
---@field Email string The contact email associated with the gamemode. 
---@field Website string The website associated with the gamemode. 
---@field FolderName string The name of the gamemode folder, automatically set. 
---@field Folder string The name of the gamemode folder prepended with "gamemodes/" (such as "gamemodes/sandbox"), automatically set. 
---@field TeamBased boolean Set this to true if your gamemode is team-based. Used to enable/disable the base gamemode team system. 
---@field IsSandboxDerived boolean True if the gamemode is derived from sandbox. 
---@field ThisClass string The name of the gamemode folder prepended with "gamemode_" (such as "gamemode_sandbox"), automatically set. 
---@field BaseClass table The table of the base gamemode to derive from, set automatically by [DeriveGamemode](/gmod/Global.DeriveGamemode). 
GM = {}