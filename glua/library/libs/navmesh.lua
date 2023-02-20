---@meta
navmesh = {}
--- Add this position and normal to the list of walkable positions, used before map generation with [navmesh.BeginGeneration](/gmod/navmesh.BeginGeneration)
---@param pos Vector The terrain position. 
---@param dir Vector The normal of this terrain position. 
function navmesh.AddWalkableSeed( pos, dir ) end
--- Starts the generation of a new navmesh.
function navmesh.BeginGeneration(  ) end
--- Clears all the walkable positions, used before calling [navmesh.BeginGeneration](/gmod/navmesh.BeginGeneration).
function navmesh.ClearWalkableSeeds(  ) end
--- Creates a new [CNavArea](/gmod/CNavArea).
---@param corner Vector The first corner of the new [CNavArea](/gmod/CNavArea) 
---@param opposite_corner Vector The opposite (diagonally) corner of the new [CNavArea](/gmod/CNavArea) 
---@return CNavArea
function navmesh.CreateNavArea( corner, opposite_corner ) end
--- Returns a bunch of areas within distance, used to find hiding spots by [NextBot](/gmod/NextBot)s for example.
---@param pos Vector The position to search around 
---@param radius number Radius to search within 
---@param stepdown number Maximum stepdown( fall distance ) allowed 
---@param stepup number Maximum stepup( jump height ) allowed 
---@return table
function navmesh.Find( pos, radius, stepdown, stepup ) end
--- Returns an integer indexed table of all [CNavArea](/gmod/CNavArea)s on the current map. If the map doesn't have a navmesh generated then this will return an empty table.
---@return table
function navmesh.GetAllNavAreas(  ) end
--- Returns the position of the edit cursor when nav_edit is set to 1.
---@return Vector
function navmesh.GetEditCursorPosition(  ) end
--- Finds the closest standable ground at, above, or below the provided position.
---@param pos Vector Position to find the closest ground for. 
---@return number
---@return Vector
function navmesh.GetGroundHeight( pos ) end
--- Returns the currently marked [CNavArea](/gmod/CNavArea), for use with editing console commands.
---@return CNavArea
function navmesh.GetMarkedArea(  ) end
--- Returns the currently marked [CNavLadder](/gmod/CNavLadder), for use with editing console commands.
---@return CNavLadder
function navmesh.GetMarkedLadder(  ) end
--- Returns the Nav Area contained in this position that also satisfies the elevation limit.
--- 
--- This function will properly see blocked [CNavArea](/gmod/CNavArea)s. See [navmesh.GetNearestNavArea](/gmod/navmesh.GetNearestNavArea).
---@param pos Vector The position to search for. 
---@param beneathLimit number The elevation limit at which the Nav Area will be searched. 
---@return CNavArea
function navmesh.GetNavArea( pos, beneathLimit ) end
--- Returns a [CNavArea](/gmod/CNavArea) by the given ID.
---@param id number ID of the [CNavArea](/gmod/CNavArea) to get. Starts with 1. 
---@return CNavArea
function navmesh.GetNavAreaByID( id ) end
--- Returns the highest ID of all nav areas on the map. While this can be used to get all nav areas, this number may not actually be the actual number of nav areas on the map.
---@return number
function navmesh.GetNavAreaCount(  ) end
--- Returns a [CNavLadder](/gmod/CNavLadder) by the given ID.
---@param id number ID of the [CNavLadder](/gmod/CNavLadder) to get. Starts with 1. 
---@return CNavLadder
function navmesh.GetNavLadderByID( id ) end
--- Returns the closest [CNavArea](/gmod/CNavArea) to given position at the same height, or beneath it.
--- 
--- This function will ignore blocked [CNavArea](/gmod/CNavArea)s. See [navmesh.GetNavArea](/gmod/navmesh.GetNavArea) for a function that does see blocked areas.
---@param pos Vector The position to look from 
---@param anyZ? boolean This argument is ignored and has no effect 
---@param maxDist? number This is the maximum distance from the given position that the function will look for a [CNavArea](/gmod/CNavArea) 
---@param checkLOS? boolean If this is set to true then the function will internally do a [util.TraceLine](/gmod/util.TraceLine) from the starting position to each potential [CNavArea](/gmod/CNavArea) with a [MASK_NPCSOLID_BRUSHONLY](https://wiki.facepunch.com/gmod/Enums/MASK). If the trace fails then the [CNavArea](/gmod/CNavArea) is ignored.    If this is set to false then the function will find the closest [CNavArea](/gmod/CNavArea) through anything, including the world. 
---@param checkGround? boolean If checkGround is true then this function will internally call [navmesh.GetNavArea](/gmod/navmesh.GetNavArea) to check if there is a [CNavArea](/gmod/CNavArea) directly below the position, and return it if so, before checking anywhere else. 
---@param team? number This will internally call [CNavArea:IsBlocked](/gmod/CNavArea:IsBlocked) to check if the target [CNavArea](/gmod/CNavArea) is not to be navigated by the given team. Currently this appears to do nothing. 
---@return CNavArea
function navmesh.GetNearestNavArea( pos, anyZ, maxDist, checkLOS, checkGround, team ) end
--- Returns the classname of the player spawn entity.
---@return string
function navmesh.GetPlayerSpawnName(  ) end
--- Whether we're currently generating a new navmesh with [navmesh.BeginGeneration](/gmod/navmesh.BeginGeneration).
---@return boolean
function navmesh.IsGenerating(  ) end
--- Returns true if a navmesh has been loaded when loading the map.
---@return boolean
function navmesh.IsLoaded(  ) end
--- Loads a new navmesh from the .nav file for current map discarding any changes made to the navmesh previously.
function navmesh.Load(  ) end
--- Deletes every [CNavArea](/gmod/CNavArea) and [CNavLadder](/gmod/CNavLadder) on the map **without saving the changes**.
function navmesh.Reset(  ) end
--- Saves any changes made to navmesh to the .nav file.
function navmesh.Save(  ) end
--- Sets the [CNavArea](/gmod/CNavArea) as marked, so it can be used with editing console commands.
---@param area CNavArea The [CNavArea](/gmod/CNavArea) to set as the marked area. 
function navmesh.SetMarkedArea( area ) end
--- Sets the [CNavLadder](/gmod/CNavLadder) as marked, so it can be used with editing console commands.
---@param area CNavLadder The [CNavLadder](/gmod/CNavLadder) to set as the marked ladder. 
function navmesh.SetMarkedLadder( area ) end
--- Sets the classname of the default spawn point entity, used before generating a new navmesh with [navmesh.BeginGeneration](/gmod/navmesh.BeginGeneration).
---@param spawnPointClass string The classname of what the player uses to spawn, automatically adds it to the walkable positions during map generation. 
function navmesh.SetPlayerSpawnName( spawnPointClass ) end
