---@meta
---@class Vector
Vector = {}
--- Adds the values of the argument vector to the orignal vector. This functions the same as vector1 + vector2 without creating a new vector object, skipping object construction and garbage collection.
---@param vector Vector The vector to add. 
function Vector:Add( vector ) end
--- Returns an angle representing the normal of the vector.
---@return Angle
function Vector:Angle(  ) end
--- Returns the angle of the vector, but instead of assuming that up is [Vector](/gmod/Global.Vector)( 0, 0, 1 ) (Like [Vector:Angle](/gmod/Vector:Angle) does) you can specify which direction is 'up' for the angle.
---@param up Vector The up direction vector 
---@return Angle
function Vector:AngleEx( up ) end
--- Calculates the cross product of this vector and the passed one.
--- 
--- The cross product of two vectors is a 3-dimensional vector with a direction perpendicular (at right angles) to both of them (according to the right-hand rule), and magnitude equal to the area of parallelogram they span. This is defined as the product of the magnitudes, the sine of the angle between them, and unit (normal) vector `n` defined by the right-hand rule:
--- :**a** × **b** = |**a**| |**b**| sin(θ) **n̂**
--- where **a** and **b** are vectors, and **n̂** is a unit vector (magnitude of 1) perpendicular to both.
---@param otherVector Vector Vector to calculate the cross product with. 
---@return Vector
function Vector:Cross( otherVector ) end
--- Returns the euclidean distance between the vector and the other vector.
---@param otherVector Vector The vector to get the distance to. 
---@return number
function Vector:Distance( otherVector ) end
--- Returns the squared distance of 2 vectors, this is faster than [Vector:Distance](/gmod/Vector:Distance) as calculating the square root is an expensive process.
---@param otherVec Vector The vector to calculate the distance to. 
---@return number
function Vector:DistToSqr( otherVec ) end
--- Divide the vector by the given number, that means x, y and z are divided by that value. This will change the value of the original vector, see example 2 for division without changing the value.
---@param divisor number The value to divide the vector with. 
function Vector:Div( divisor ) end
--- Returns the [dot product](https://en.wikipedia.org/wiki/Dot_product#Geometric_definition)  of this vector and the passed one.
--- 
--- The dot product of two vectors is the product of their magnitudes (lengths), and the cosine of the angle between them:
--- **a · b** = |**a**| |**b**| cos(θ) 
--- where **a** and **b** are vectors.
--- See [Vector:Length](/gmod/Vector:Length) for obtaining magnitudes.
--- 
--- A dot product returns just the cosine of the angle if both vectors are normalized, and zero if the vectors are at right angles to each other.
---@param otherVector Vector The vector to calculate the dot product with 
---@return number
function Vector:Dot( otherVector ) end
--- Returns the dot product of the two vectors.
---@param Vector Vector The other vector. 
---@return number
function Vector:DotProduct( Vector ) end
--- Returns a normalized version of the vector. This is a alias of [Vector:GetNormalized](/gmod/Vector:GetNormalized).
---@return Vector
function Vector:GetNormal(  ) end
--- Returns a normalized version of the vector. Normalized means vector with same direction but with length of 1.
--- 
--- This does not affect the vector you call it on; to do this, use [Vector:Normalize](/gmod/Vector:Normalize).
---@return Vector
function Vector:GetNormalized(  ) end
--- Returns if the vector is equal to another vector with the given tolerance.
---@param compare Vector The vector to compare to. 
---@param tolerance number The tolerance range. 
---@return boolean
function Vector:IsEqualTol( compare, tolerance ) end
--- Checks whenever all fields of the vector are 0.
---@return boolean
function Vector:IsZero(  ) end
--- Returns the [Euclidean length](https://en.wikipedia.org/wiki/Euclidean_vector#Length) of the vector: √(x² + y² + z²).
---@return number
function Vector:Length(  ) end
--- Returns the length of the vector in two dimensions, without the Z axis.
---@return number
function Vector:Length2D(  ) end
--- Returns the squared length of the vectors x and y value, x² + y².
--- 
--- This is faster than [Vector:Length2D](/gmod/Vector:Length2D) as calculating the square root is an expensive process.
---@return number
function Vector:Length2DSqr(  ) end
--- Returns the squared length of the vector, x² + y² + z².
--- 
--- This is faster than [Vector:Length](/gmod/Vector:Length) as calculating the square root is an expensive process.
---@return number
function Vector:LengthSqr(  ) end
--- Scales the vector by the given number (that means x, y and z are multiplied by that value) or Vector.
---@param multiplier number The value to scale the vector with. 
function Vector:Mul( multiplier ) end
--- Normalizes the given vector. This changes the vector you call it on, if you want to return a normalized copy without affecting the original, use [Vector:GetNormalized](/gmod/Vector:GetNormalized).
function Vector:Normalize(  ) end
--- Rotates a vector by the given angle.
--- Doesn't return anything, but rather changes the original vector.
---@param rotation Angle The angle to rotate the vector by. 
function Vector:Rotate( rotation ) end
--- Copies the values from the second vector to the first vector.
---@param vector Vector The vector to copy from. 
function Vector:Set( vector ) end
--- Sets the x, y, and z of the vector.
---@param x number The x component 
---@param y number The y component 
---@param z number The z component 
function Vector:SetUnpacked( x, y, z ) end
--- Substracts the values of the second vector from the orignal vector, this function can be used to avoid garbage collection.
---@param vector Vector The other vector. 
function Vector:Sub( vector ) end
--- Translates the [Vector](/gmod/Vector) (values ranging from 0 to 1) into a [Color](/gmod/Color). This will also range the values from 0 - 1 to 0 - 255.
--- 
--- x * 255 -> r
--- y * 255 -> g
--- z * 255 -> b
--- 
--- This is the opposite of [Color:ToVector](/gmod/Color:ToVector)
---@return table
function Vector:ToColor(  ) end
--- Returns where on the screen the specified position vector would appear. A related function is [gui.ScreenToVector](/gmod/gui.ScreenToVector), which converts a 2D coordinate to a 3D direction.
---@return table
function Vector:ToScreen(  ) end
--- Returns the vector as a table with three elements.
---@return table
function Vector:ToTable(  ) end
--- Returns the x, y, and z of the vector.
---@return number
---@return number
---@return number
function Vector:Unpack(  ) end
--- Returns whenever the given vector is in a box created by the 2 other vectors.
---@param boxStart Vector The first vector. 
---@param boxEnd Vector The second vector. 
---@return boolean
function Vector:WithinAABox( boxStart, boxEnd ) end
--- Sets x, y and z to 0.
function Vector:Zero(  ) end

---@class Vector
---@field x number
---@field y number
---@field z number
