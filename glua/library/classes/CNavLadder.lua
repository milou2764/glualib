---@meta
---@class CNavLadder
CNavLadder = {}
--- Connects this ladder to a [CNavArea](/gmod/CNavArea) with a one way connection. ( From this ladder to the target area ).
--- 
--- See [CNavArea:ConnectTo](/gmod/CNavArea:ConnectTo) for making the connection from area to ladder.
---@param area CNavArea The area this ladder leads to. 
function CNavLadder:ConnectTo( area ) end
--- Disconnects this ladder from given area in a single direction.
---@param area CNavArea The [CNavArea](/gmod/CNavArea) this to disconnect from. 
function CNavLadder:Disconnect( area ) end
--- Returns the bottom most position of the ladder.
---@return Vector
function CNavLadder:GetBottom(  ) end
--- Returns the bottom area of the [CNavLadder](/gmod/CNavLadder).
---@return CNavArea
function CNavLadder:GetBottomArea(  ) end
--- Returns this [CNavLadder](/gmod/CNavLadder)s unique ID.
---@return number
function CNavLadder:GetID(  ) end
--- Returns the length of the ladder.
---@return number
function CNavLadder:GetLength(  ) end
--- Returns the direction of this [CNavLadder](/gmod/CNavLadder). ( The direction in which players back will be facing if they are looking directly at the ladder )
---@return Vector
function CNavLadder:GetNormal(  ) end
--- Returns the world position based on given height relative to the ladder.
---@param height number The Z position in world space coordinates. 
---@return Vector
function CNavLadder:GetPosAtHeight( height ) end
--- Returns the topmost position of the ladder.
---@return Vector
function CNavLadder:GetTop(  ) end
--- Returns the top behind [CNavArea](/gmod/CNavArea) of the [CNavLadder](/gmod/CNavLadder).
---@return CNavArea
function CNavLadder:GetTopBehindArea(  ) end
--- Returns the top forward [CNavArea](/gmod/CNavArea) of the [CNavLadder](/gmod/CNavLadder).
---@return CNavArea
function CNavLadder:GetTopForwardArea(  ) end
--- Returns the top left [CNavArea](/gmod/CNavArea) of the [CNavLadder](/gmod/CNavLadder).
---@return CNavArea
function CNavLadder:GetTopLeftArea(  ) end
--- Returns the top right [CNavArea](/gmod/CNavArea) of the [CNavLadder](/gmod/CNavLadder).
---@return CNavArea
function CNavLadder:GetTopRightArea(  ) end
--- Returns the width of the ladder in Hammer Units.
---@return number
function CNavLadder:GetWidth(  ) end
--- Returns whether this [CNavLadder](/gmod/CNavLadder) has an outgoing ( one or two way ) connection **to** given [CNavArea](/gmod/CNavArea) in given direction.
---@param navArea CNavArea The [CNavArea](/gmod/CNavArea) to test against. 
---@param navDirType number The direction, in which to look for the connection. See [NavDir](/gmod/Enums/NavDir) 
---@return boolean
function CNavLadder:IsConnectedAtSide( navArea, navDirType ) end
--- Returns whether this [CNavLadder](/gmod/CNavLadder) is valid or not.
---@return boolean
function CNavLadder:IsValid(  ) end
--- Removes the given nav ladder.
function CNavLadder:Remove(  ) end
--- Sets the bottom area of the [CNavLadder](/gmod/CNavLadder).
---@param area CNavArea
function CNavLadder:SetBottomArea( area ) end
--- Sets the top behind area of the [CNavLadder](/gmod/CNavLadder).
---@param area CNavArea
function CNavLadder:SetTopBehindArea( area ) end
--- Sets the top forward area of the [CNavLadder](/gmod/CNavLadder).
---@param area CNavArea
function CNavLadder:SetTopForwardArea( area ) end
--- Sets the top left area of the [CNavLadder](/gmod/CNavLadder).
---@param area CNavArea
function CNavLadder:SetTopLeftArea( area ) end
--- Sets the top right area of the [CNavLadder](/gmod/CNavLadder).
---@param area CNavArea
function CNavLadder:SetTopRightArea( area ) end
