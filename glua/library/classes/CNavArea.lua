---@meta
---@class CNavArea
CNavArea = {}
--- Adds a hiding spot onto this nav area.
--- 
--- There's a limit of 255 hiding spots per area.
---@param pos Vector The position on the nav area 
---@param flags? number Flags describing what kind of hiding spot this is.  * 0 = None (Not recommended)  * 1 = In Cover/basically a hiding spot, in a corner with good hard cover nearby  * 2 = good sniper spot, had at least one decent sniping corridor  * 4 = perfect sniper spot, can see either very far, or a large area, or both  * 8 = exposed, spot in the open, usually on a ledge or cliff    Values over 255 will be clamped. 
function CNavArea:AddHidingSpot( pos, flags ) end
--- Adds this [CNavArea](/gmod/CNavArea) to the closed list, a list of areas that have been checked by A* pathfinding algorithm.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
function CNavArea:AddToClosedList(  ) end
--- Adds this [CNavArea](/gmod/CNavArea) to the Open List.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
function CNavArea:AddToOpenList(  ) end
--- Clears the open and closed lists for a new search.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
function CNavArea:ClearSearchLists(  ) end
--- Returns the height difference between the edges of two connected navareas.
---@param navarea CNavArea
---@return number
function CNavArea:ComputeAdjacentConnectionHeightChange( navarea ) end
--- Returns the [NavDir](/gmod/Enums/NavDir) direction that the given vector faces on this [CNavArea](/gmod/CNavArea).
---@param pos Vector The position to compute direction towards. 
---@return number
function CNavArea:ComputeDirection( pos ) end
--- Returns the height difference on the Z axis of the two [CNavArea](/gmod/CNavArea)s. This is calculated from the center most point on both [CNavArea](/gmod/CNavArea)s.
---@param navArea CNavArea The nav area to test against. 
---@return number
function CNavArea:ComputeGroundHeightChange( navArea ) end
--- Connects this [CNavArea](/gmod/CNavArea) to another [CNavArea](/gmod/CNavArea) or [CNavLadder](/gmod/CNavLadder) with a one way connection. ( From this area to the target )
--- 
--- See [CNavLadder:ConnectTo](/gmod/CNavLadder:ConnectTo) for making the connection from ladder to area.
---@param area CNavArea The [CNavArea](/gmod/CNavArea) or [CNavLadder](/gmod/CNavLadder) this area leads to. 
function CNavArea:ConnectTo( area ) end
--- Returns true if this [CNavArea](/gmod/CNavArea) contains the given vector.
---@param pos Vector The position to test. 
---@return boolean
function CNavArea:Contains( pos ) end
--- Disconnects this nav area from given area or ladder. (Only disconnects one way)
---@param area CNavArea The [CNavArea](/gmod/CNavArea) or [CNavLadder](/gmod/CNavLadder) this to disconnect from. 
function CNavArea:Disconnect( area ) end
--- Draws this navarea on debug overlay.
function CNavArea:Draw(  ) end
--- Draws the hiding spots on debug overlay. This includes sniper/exposed spots too!
function CNavArea:DrawSpots(  ) end
--- Returns a table of all the [CNavArea](/gmod/CNavArea)s that have a  ( one and two way ) connection **from** this [CNavArea](/gmod/CNavArea).
--- 
--- If an area has a one-way incoming connection to this [CNavArea](/gmod/CNavArea), then it will **not** be returned from this function, use [CNavArea:GetIncomingConnections](/gmod/CNavArea:GetIncomingConnections) to get all one-way incoming connections.
--- 
--- See [CNavArea:GetAdjacentAreasAtSide](/gmod/CNavArea:GetAdjacentAreasAtSide) for a function that only returns areas from one side/direction.
---@return table
function CNavArea:GetAdjacentAreas(  ) end
--- Returns a table of all the [CNavArea](/gmod/CNavArea)s that have a ( one and two way ) connection **from** this [CNavArea](/gmod/CNavArea) in given direction.
--- 
--- If an area has a one-way incoming connection to this [CNavArea](/gmod/CNavArea), then it will **not** be returned from this function, use [CNavArea:GetIncomingConnections](/gmod/CNavArea:GetIncomingConnections) to get all incoming connections.
--- 
--- See [CNavArea:GetAdjacentAreas](/gmod/CNavArea:GetAdjacentAreas) for a function that returns all areas from all sides/directions.
---@param navDir number The direction, in which to look for [CNavArea](/gmod/CNavArea)s, see [NavDir](/gmod/Enums/NavDir). 
---@return table
function CNavArea:GetAdjacentAreasAtSide( navDir ) end
--- Returns the amount of [CNavArea](/gmod/CNavArea)s that have a connection ( one and two way ) **from** this [CNavArea](/gmod/CNavArea).
--- 
--- See [CNavArea:GetAdjacentCountAtSide](/gmod/CNavArea:GetAdjacentCountAtSide) for a function that only returns area count from one side/direction.
---@return number
function CNavArea:GetAdjacentCount(  ) end
--- Returns the amount of [CNavArea](/gmod/CNavArea)s that have a connection ( one or two way ) **from** this [CNavArea](/gmod/CNavArea) in given direction.
--- 
--- See [CNavArea:GetAdjacentCount](/gmod/CNavArea:GetAdjacentCount) for a function that returns [CNavArea](/gmod/CNavArea) count from/in all sides/directions.
---@param navDir number The direction, in which to look for [CNavArea](/gmod/CNavArea)s, see [NavDir](/gmod/Enums/NavDir). 
---@return number
function CNavArea:GetAdjacentCountAtSide( navDir ) end
--- Returns the attribute mask for the given [CNavArea](/gmod/CNavArea).
---@return boolean
function CNavArea:GetAttributes(  ) end
--- Returns the center most vector point for the given [CNavArea](/gmod/CNavArea).
---@return Vector
function CNavArea:GetCenter(  ) end
--- Returns the closest point of this Nav Area from the given position.
---@param pos Vector The given position, can be outside of the Nav Area bounds. 
---@return Vector
function CNavArea:GetClosestPointOnArea( pos ) end
--- Returns the vector position of the corner for the given [CNavArea](/gmod/CNavArea).
---@param cornerid number The target corner to get the position of, takes [NavCorner](/gmod/Enums/NavCorner). 
---@return Vector
function CNavArea:GetCorner( cornerid ) end
--- Returns the cost from starting area this area when pathfinding. Set by [CNavArea:SetCostSoFar](/gmod/CNavArea:SetCostSoFar).
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@return number
function CNavArea:GetCostSoFar(  ) end
--- Returns a table of very bad hiding spots in this area.
--- 
--- See also [CNavArea:GetHidingSpots](/gmod/CNavArea:GetHidingSpots).
---@return table
function CNavArea:GetExposedSpots(  ) end
--- Returns size info about the nav area.
---@return table
function CNavArea:GetExtentInfo(  ) end
--- Returns a table of good hiding spots in this area.
--- 
--- See also [CNavArea:GetExposedSpots](/gmod/CNavArea:GetExposedSpots).
---@param type? number The type of spots to include.    * 0 = None (Not recommended)  * 1 = In Cover/basically a hiding spot, in a corner with good hard cover nearby  * 2 = good sniper spot, had at least one decent sniping corridor  * 4 = perfect sniper spot, can see either very far, or a large area, or both  * 8 = exposed, spot in the open, usually on a ledge or cliff, same as GetExposedSpots  * Values over 255 and below 0 will be clamped. 
---@return table
function CNavArea:GetHidingSpots( type ) end
--- Returns this [CNavArea](/gmod/CNavArea)s unique ID.
---@return number
function CNavArea:GetID(  ) end
--- Returns a table of all the [CNavArea](/gmod/CNavArea)s that have a one-way connection **to** this [CNavArea](/gmod/CNavArea).
--- 
--- If a [CNavArea](/gmod/CNavArea) has a two-way connection **to or from** this [CNavArea](/gmod/CNavArea) then it will not be returned from this function, use [CNavArea:GetAdjacentAreas](/gmod/CNavArea:GetAdjacentAreas) to get outgoing ( one and two way ) connections.
--- 
--- See [CNavArea:GetIncomingConnectionsAtSide](/gmod/CNavArea:GetIncomingConnectionsAtSide) for a function that returns one-way incoming connections from  only one side/direction.
---@return table
function CNavArea:GetIncomingConnections(  ) end
--- Returns a table of all the [CNavArea](/gmod/CNavArea)s that have a one-way connection **to** this [CNavArea](/gmod/CNavArea) from given direction.
--- 
--- If a [CNavArea](/gmod/CNavArea) has a two-way connection **to or from** this [CNavArea](/gmod/CNavArea) then it will not be returned from this function, use [CNavArea:GetAdjacentAreas](/gmod/CNavArea:GetAdjacentAreas) to get outgoing ( one and two way ) connections.
--- 
--- See [CNavArea:GetIncomingConnections](/gmod/CNavArea:GetIncomingConnections) for a function that returns one-way incoming connections from  all sides/directions.
---@param navDir number The direction, from which to look for [CNavArea](/gmod/CNavArea)s, see [NavDir](/gmod/Enums/NavDir). 
---@return table
function CNavArea:GetIncomingConnectionsAtSide( navDir ) end
--- Returns all [CNavLadder](/gmod/CNavLadder)s that have a ( one or two way ) connection **from** this [CNavArea](/gmod/CNavArea).
--- 
--- See [CNavArea:GetLaddersAtSide](/gmod/CNavArea:GetLaddersAtSide) for a function that only returns [CNavLadder](/gmod/CNavLadder)s in given direction.
---@return table
function CNavArea:GetLadders(  ) end
--- Returns all [CNavLadder](/gmod/CNavLadder)s that have a ( one or two way ) connection **from** ( one and two way ) this [CNavArea](/gmod/CNavArea) in given direction.
--- 
--- See [CNavArea:GetLadders](/gmod/CNavArea:GetLadders) for a function that returns [CNavLadder](/gmod/CNavLadder) from/in all sides/directions.
---@param navDir number The direction, in which to look for [CNavLadder](/gmod/CNavLadder)s.    0 = Up ( LadderDirectionType::LADDER_UP )  1 = Down ( LadderDirectionType::LADDER_DOWN ) 
---@return table
function CNavArea:GetLaddersAtSide( navDir ) end
--- Returns the parent [CNavArea](/gmod/CNavArea)
---@return CNavArea
function CNavArea:GetParent(  ) end
--- Returns how this [CNavArea](/gmod/CNavArea) is connected to its parent.
---@return number
function CNavArea:GetParentHow(  ) end
--- Returns the Place of the nav area.
---@return string
function CNavArea:GetPlace(  ) end
--- Returns a random [CNavArea](/gmod/CNavArea) that has an outgoing ( one or two way ) connection **from** this [CNavArea](/gmod/CNavArea) in given direction.
---@param navDir number The direction, in which to look for [CNavArea](/gmod/CNavArea)s, see [NavDir](/gmod/Enums/NavDir). 
---@return CNavArea
function CNavArea:GetRandomAdjacentAreaAtSide( navDir ) end
--- Returns a random point on the nav area.
---@return Vector
function CNavArea:GetRandomPoint(  ) end
--- Returns the width this Nav Area.
---@return number
function CNavArea:GetSizeX(  ) end
--- Returns the height of this Nav Area.
---@return number
function CNavArea:GetSizeY(  ) end
--- Returns the total cost when passing from starting area to the goal area through this node. Set by [CNavArea:SetTotalCost](/gmod/CNavArea:SetTotalCost).
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@return number
function CNavArea:GetTotalCost(  ) end
--- Returns the elevation of this Nav Area at the given position.
---@param pos Vector The position to get the elevation from, the z value from this position is ignored and only the X and Y values are used to this task. 
---@return number
function CNavArea:GetZ( pos ) end
--- Returns true if the given [CNavArea](/gmod/CNavArea) has this attribute flag set.
---@param attribs number Attribute mask to check for, see [NAV_MESH](/gmod/Enums/NAV_MESH) 
---@return boolean
function CNavArea:HasAttributes( attribs ) end
--- Returns whether the nav area is blocked or not, i.e. whether it can be walked through or not.
---@param teamID? number The team ID to test, -2 = any team.    Only 2 actual teams are available, 0 and 1. 
---@param ignoreNavBlockers? boolean Whether to ignore [func_nav_blocker](https://developer.valvesoftware.com/wiki/Func_nav_blocker) entities. 
---@return boolean
function CNavArea:IsBlocked( teamID, ignoreNavBlockers ) end
--- Returns whether this node is in the Closed List.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@return boolean
function CNavArea:IsClosed(  ) end
--- Returns whether this [CNavArea](/gmod/CNavArea) can completely (i.e. all corners of this area can see all corners of the given area) see the given [CNavArea](/gmod/CNavArea).
---@param area CNavArea The [CNavArea](/gmod/CNavArea) to test. 
---@return boolean
function CNavArea:IsCompletelyVisible( area ) end
--- Returns whether this [CNavArea](/gmod/CNavArea) has an outgoing ( one or two way ) connection **to** given [CNavArea](/gmod/CNavArea).
--- 
--- See [CNavArea:IsConnectedAtSide](/gmod/CNavArea:IsConnectedAtSide) for a function that only checks for outgoing connections in one direction.
---@param navArea CNavArea The [CNavArea](/gmod/CNavArea) to test against. 
---@return boolean
function CNavArea:IsConnected( navArea ) end
--- Returns whether this [CNavArea](/gmod/CNavArea) has an outgoing ( one or two way ) connection **to** given [CNavArea](/gmod/CNavArea) in given direction.
--- 
--- See [CNavArea:IsConnected](/gmod/CNavArea:IsConnected) for a function that checks all sides.
---@param navArea CNavArea The [CNavArea](/gmod/CNavArea) to test against. 
---@param navDirType number The direction, in which to look for the connection. See [NavDir](/gmod/Enums/NavDir) 
---@return boolean
function CNavArea:IsConnectedAtSide( navArea, navDirType ) end
--- Returns whether this Nav Area is in the same plane as the given one.
---@param navArea CNavArea The Nav Area to test. 
---@return boolean
function CNavArea:IsCoplanar( navArea ) end
--- Returns whether this Nav Area is flat within the tolerance of the **nav_coplanar_slope_limit_displacement** and **nav_coplanar_slope_limit** convars.
---@return boolean
function CNavArea:IsFlat(  ) end
--- Returns whether this area is in the Open List.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@return boolean
function CNavArea:IsOpen(  ) end
--- Returns whether the Open List is empty or not.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@return boolean
function CNavArea:IsOpenListEmpty(  ) end
--- Returns if this position overlaps the Nav Area within the given tolerance.
---@param pos Vector The overlapping position to test. 
---@param tolerance? number The tolerance of the overlapping, set to 0 for no tolerance. 
---@return boolean
function CNavArea:IsOverlapping( pos, tolerance ) end
--- Returns true if this [CNavArea](/gmod/CNavArea) is overlapping the given [CNavArea](/gmod/CNavArea).
---@param navArea CNavArea The [CNavArea](/gmod/CNavArea) to test against. 
---@return boolean
function CNavArea:IsOverlappingArea( navArea ) end
--- Returns whether this [CNavArea](/gmod/CNavArea) can see given position.
---@param pos Vector The position to test. 
---@param ignoreEnt? Entity If set, the given entity will be ignored when doing LOS tests 
---@return boolean
function CNavArea:IsPartiallyVisible( pos, ignoreEnt ) end
--- Returns whether this [CNavArea](/gmod/CNavArea) can potentially see the given [CNavArea](/gmod/CNavArea).
---@param area CNavArea The [CNavArea](/gmod/CNavArea) to test. 
---@return boolean
function CNavArea:IsPotentiallyVisible( area ) end
--- Returns if we're shaped like a square.
---@return boolean
function CNavArea:IsRoughlySquare(  ) end
--- Whether this Nav Area is placed underwater.
---@return boolean
function CNavArea:IsUnderwater(  ) end
--- Returns whether this [CNavArea](/gmod/CNavArea) is valid or not.
---@return boolean
function CNavArea:IsValid(  ) end
--- Returns whether we can be seen from the given position.
---@param pos Vector The position to check. 
---@return boolean
---@return Vector
function CNavArea:IsVisible( pos ) end
--- Drops a corner or all corners of a [CNavArea](/gmod/CNavArea) to the ground below it.
---@param corner number The corner(s) to drop, uses [NavCorner](/gmod/Enums/NavCorner) 
function CNavArea:PlaceOnGround( corner ) end
--- Removes a CNavArea from the Open List with the lowest cost to traverse to from the starting node, and returns it.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@return CNavArea
function CNavArea:PopOpenList(  ) end
--- Removes the given nav area.
function CNavArea:Remove(  ) end
--- Removes this node from the Closed List.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
function CNavArea:RemoveFromClosedList(  ) end
--- Sets the attributes for given CNavArea.
---@param attribs number The attribute bitflag. See [NAV_MESH](/gmod/Enums/NAV_MESH) 
function CNavArea:SetAttributes( attribs ) end
--- Sets the position of a corner of a nav area.
---@param corner number The corner to set, uses [NavCorner](/gmod/Enums/NavCorner) 
---@param position Vector The new position to set. 
function CNavArea:SetCorner( corner, position ) end
--- Sets the cost from starting area this area when pathfinding.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@param cost number The cost so far 
function CNavArea:SetCostSoFar( cost ) end
--- Sets the new parent of this [CNavArea](/gmod/CNavArea).
---@param parent CNavArea The new parent to set 
function CNavArea:SetParent( parent ) end
--- Sets the Place of the nav area.
--- 
--- There is a limit of 256 Places per nav file.
---@param place string Set to "" to remove place from the nav area. 
---@return boolean
function CNavArea:SetPlace( place ) end
--- Sets the total cost when passing from starting area to the goal area through this node.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
---@param cost number The total cost of the path to set.    Must be above or equal 0. 
function CNavArea:SetTotalCost( cost ) end
--- Moves this open list to appropriate position based on its [CNavArea:GetTotalCost](/gmod/CNavArea:GetTotalCost) compared to the total cost of other areas in the open list.
--- 
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).
--- 
--- More information can be found on the [Simple Pathfinding](/gmod/Simple%20Pathfinding) page.
function CNavArea:UpdateOnOpenList(  ) end
