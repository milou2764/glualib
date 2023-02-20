---@meta
saverestore = {}
--- Adds a restore/load hook for the Half-Life 2 save system.
---@param identifier string The unique identifier for this hook. 
---@param callback function The function to be called when an engine save is being loaded. It has one argument:    [IRestore](/gmod/IRestore) save - The restore object to be used to read data from save file that is being loaded    You can also use those functions to read data:    [saverestore.ReadVar](/gmod/saverestore.ReadVar)    [saverestore.ReadTable](/gmod/saverestore.ReadTable)    [saverestore.LoadEntity](/gmod/saverestore.LoadEntity) 
function saverestore.AddRestoreHook( identifier, callback ) end
--- Adds a save hook for the Half-Life 2 save system. You can this to carry data through level transitions in Half-Life 2.
---@param identifier string The unique identifier for this hook. 
---@param callback function The function to be called when an engine save is being saved. It has one argument:    [ISave](/gmod/ISave) save - The save object to be used to write data to the save file that is being saved    You can also use those functions to save data:    [saverestore.WriteVar](/gmod/saverestore.WriteVar)    [saverestore.WriteTable](/gmod/saverestore.WriteTable)    [saverestore.SaveEntity](/gmod/saverestore.SaveEntity) 
function saverestore.AddSaveHook( identifier, callback ) end
--- Loads [Entity:GetTable](/gmod/Entity:GetTable) from the save game file that is being loaded and merges it with the given entitys [Entity:GetTable](/gmod/Entity:GetTable).
---@param ent Entity The entity which will receive the loaded values from the save. 
---@param save IRestore The restore object to read the [Entity:GetTable](/gmod/Entity:GetTable) from. 
function saverestore.LoadEntity( ent, save ) end
--- Called by engine when a save is being loaded.
--- 
--- This handles loading gamemode and calls all of the hooks added with [saverestore.AddRestoreHook](/gmod/saverestore.AddRestoreHook).
---@param save IRestore The restore object to read data from the save file with. 
function saverestore.LoadGlobal( save ) end
--- Called by the engine just before [saverestore.LoadGlobal](/gmod/saverestore.LoadGlobal) is.
function saverestore.PreRestore(  ) end
--- Called by the engine just before [saverestore.SaveGlobal](/gmod/saverestore.SaveGlobal) is.
function saverestore.PreSave(  ) end
--- Reads a table from the save game file that is being loaded.
---@param save IRestore The restore object to read the table from. 
---@return table
function saverestore.ReadTable( save ) end
--- Loads a variable from the save game file that is being loaded.
--- 
--- Variables will be read in the save order you have saved them.
---@param save IRestore The restore object to read variables from. 
---@return any
function saverestore.ReadVar( save ) end
--- Saves entitys [Entity:GetTable](/gmod/Entity:GetTable) to the save game file that is being saved.
---@param ent Entity The entity to save [Entity:GetTable](/gmod/Entity:GetTable) of. 
---@param save ISave The save object to save [Entity:GetTable](/gmod/Entity:GetTable) to. 
function saverestore.SaveEntity( ent, save ) end
--- Called by engine when a save is being saved.
--- 
--- This handles saving gamemode and calls all of the hooks added with [saverestore.AddSaveHook](/gmod/saverestore.AddSaveHook).
---@param save ISave The save object to write data into the save file. 
function saverestore.SaveGlobal( save ) end
--- Returns how many writable keys are in the given table.
---@param table table The table to test. 
---@return number
function saverestore.WritableKeysInTable( table ) end
--- Write a table to a save game file that is being saved.
---@param table table The table to write 
---@param save ISave The save object to write the table to. 
function saverestore.WriteTable( table, save ) end
--- Writes a variable to the save game file that is being saved.
---@param value any The value to save.    It can be one of the following types: [number](/gmod/number), [boolean](/gmod/boolean), [string](/gmod/string), [Entity](/gmod/Entity), [Angle](/gmod/Angle), [Vector](/gmod/Vector) or [table](/gmod/table). 
---@param save ISave The save object to write the variable to. 
function saverestore.WriteVar( value, save ) end
