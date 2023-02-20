---@meta
---@class VMatrix
VMatrix = {}
--- Returns the absolute rotation of the matrix.
---@return Angle
function VMatrix:GetAngles(  ) end
--- Returns a specific field in the matrix.
---@param row number Row of the field whose value is to be retrieved, from 1 to 4 
---@param column number Column of the field whose value is to be retrieved, from 1 to 4 
---@return number
function VMatrix:GetField( row, column ) end
--- Gets the forward direction of the matrix.
--- 
--- ie. The first column of the matrix, excluding the w coordinate.
---@return Vector
function VMatrix:GetForward(  ) end
--- Returns an inverted matrix without modifying the original matrix.
--- 
--- Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)
--- 
--- See also [VMatrix:GetInverseTR](/gmod/VMatrix:GetInverseTR).
---@return VMatrix
function VMatrix:GetInverse(  ) end
--- Returns an inverted matrix without modifying the original matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.
--- 
--- Using this function on a matrix with modified scale may return an incorrect inverted matrix.
--- 
--- To get the inverse of a matrix that contains other modifications, see [VMatrix:GetInverse](/gmod/VMatrix:GetInverse).
---@return VMatrix
function VMatrix:GetInverseTR(  ) end
--- Gets the right direction of the matrix.
--- 
--- ie. The second column of the matrix, negated, excluding the w coordinate.
---@return Vector
function VMatrix:GetRight(  ) end
--- Returns the absolute scale of the matrix.
---@return Vector
function VMatrix:GetScale(  ) end
--- Returns the absolute translation of the matrix.
---@return Vector
function VMatrix:GetTranslation(  ) end
--- Gets the up direction of the matrix.
--- 
--- ie. The third column of the matrix, excluding the w coordinate.
---@return Vector
function VMatrix:GetUp(  ) end
--- Initializes the matrix as Identity matrix.
function VMatrix:Identity(  ) end
--- Inverts the matrix.
--- 
--- Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)
--- 
--- If the matrix cannot be inverted, it does not get modified.
--- 
--- See also [VMatrix:InvertTR](/gmod/VMatrix:InvertTR).
---@return boolean
function VMatrix:Invert(  ) end
--- Inverts the matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.
--- 
--- Using this function on a matrix with modified scale may return an incorrect inverted matrix.
--- 
--- To invert a matrix that contains other modifications, see [VMatrix:Invert](/gmod/VMatrix:Invert).
function VMatrix:InvertTR(  ) end
--- Returns whether the matrix is equal to Identity matrix or not.
---@return boolean
function VMatrix:IsIdentity(  ) end
--- Returns whether the matrix is a rotation matrix or not.
--- 
--- Technically it checks if the forward, right and up vectors are orthogonal and normalized.
---@return boolean
function VMatrix:IsRotationMatrix(  ) end
--- Checks whenever all fields of the matrix are 0, aka if this is a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix).
---@return boolean
function VMatrix:IsZero(  ) end
--- Rotates the matrix by the given angle.
--- 
--- Postmultiplies the matrix by a rotation matrix (A = AR).
---@param rotation Angle Rotation. 
function VMatrix:Rotate( rotation ) end
--- Scales the matrix by the given vector.
--- 
--- Postmultiplies the matrix by a scaling matrix (A = AS).
---@param scale Vector Vector to scale with matrix with. 
function VMatrix:Scale( scale ) end
--- Scales the absolute translation with the given value.
---@param scale number Value to scale the translation with. 
function VMatrix:ScaleTranslation( scale ) end
--- Copies values from the given matrix object.
---@param src VMatrix The matrix to copy values from. 
function VMatrix:Set( src ) end
--- Sets the absolute rotation of the matrix.
---@param angle Angle New angles. 
function VMatrix:SetAngles( angle ) end
--- Sets a specific field in the matrix.
---@param row number Row of the field to be set, from 1 to 4 
---@param column number Column of the field to be set, from 1 to 4 
---@param value number The value to set in that field 
function VMatrix:SetField( row, column, value ) end
--- Sets the forward direction of the matrix.
--- 
--- ie. The first column of the matrix, excluding the w coordinate.
---@param forward Vector The forward direction of the matrix. 
function VMatrix:SetForward( forward ) end
--- Sets the right direction of the matrix.
--- 
--- ie. The second column of the matrix, negated, excluding the w coordinate.
---@param forward Vector The right direction of the matrix. 
function VMatrix:SetRight( forward ) end
--- Modifies the scale of the matrix while preserving the rotation and translation.
---@param scale Vector The scale to set. 
function VMatrix:SetScale( scale ) end
--- Sets the absolute translation of the matrix.
---@param translation Vector New translation. 
function VMatrix:SetTranslation( translation ) end
--- Sets each component of the matrix.
---@param e11 number
---@param e12 number
---@param e13 number
---@param e14 number
---@param e21 number
---@param e22 number
---@param e23 number
---@param e24 number
---@param e31 number
---@param e32 number
---@param e33 number
---@param e34 number
---@param e41 number
---@param e42 number
---@param e43 number
---@param e44 number
function VMatrix:SetUnpacked( e11, e12, e13, e14, e21, e22, e23, e24, e31, e32, e33, e34, e41, e42, e43, e44 ) end
--- Sets the up direction of the matrix.
--- 
--- ie. The third column of the matrix, excluding the w coordinate.
---@param forward Vector The up direction of the matrix. 
function VMatrix:SetUp( forward ) end
--- Converts the matrix to a 4x4 table. See [Matrix](/gmod/Global.Matrix) function.
---@return table
function VMatrix:ToTable(  ) end
--- Translates the matrix by the given vector aka. adds the vector to the translation.
--- 
--- Postmultiplies the matrix by a translation matrix (A = AT).
---@param translation Vector Vector to translate the matrix by. 
function VMatrix:Translate( translation ) end
--- Returns each component of the matrix, expanding rows before columns.
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
function VMatrix:Unpack(  ) end
--- Sets all components of the matrix to 0, also known as a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix).
--- 
--- This function is more efficient than setting each element manually.
function VMatrix:Zero(  ) end
