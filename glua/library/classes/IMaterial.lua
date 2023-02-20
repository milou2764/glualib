---@meta
---@class IMaterial
IMaterial = {}
--- Returns the color of the specified pixel of the $basetexture, only works for materials created from PNG files.
--- 
--- Basically identical to [ITexture:GetColor](/gmod/ITexture:GetColor) used on [IMaterial:GetTexture](/gmod/IMaterial:GetTexture)( "$basetexture" ).
---@param x number The X coordinate. 
---@param y number The Y coordinate. 
---@return table
function IMaterial:GetColor( x, y ) end
--- Returns the specified material value as a float, or nil if the value is not set.
---@param materialFloat string The name of the material value. 
---@return number
function IMaterial:GetFloat( materialFloat ) end
--- Returns the specified material value as a int, rounds the value if its a float, or nil if the value is not set.
---@param materialInt string The name of the material integer. 
---@return number
function IMaterial:GetInt( materialInt ) end
--- Gets all the key values defined for the material.
---@return table
function IMaterial:GetKeyValues(  ) end
--- Returns the specified material matrix as a int, or nil if the value is not set or is not a matrix.
---@param materialMatrix string The name of the material matrix. 
---@return VMatrix
function IMaterial:GetMatrix( materialMatrix ) end
--- Returns the name of the material, in most cases the path.
---@return string
function IMaterial:GetName(  ) end
--- Returns the name of the materials shader.
---@return string
function IMaterial:GetShader(  ) end
--- Returns the specified material string, or nil if the value is not set or if the value can not be converted to a string.
---@param materialString string The name of the material string. 
---@return string
function IMaterial:GetString( materialString ) end
--- Returns an [ITexture](/gmod/ITexture) based on the passed shader parameter.
---@param param string The [shader parameter](https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters) to retrieve. This should normally be `$basetexture`. 
---@return ITexture
function IMaterial:GetTexture( param ) end
--- Returns the specified material vector, or nil if the value is not set.
--- 
--- See also [IMaterial:GetVectorLinear](/gmod/IMaterial:GetVectorLinear)
---@param materialVector string The name of the material vector. 
---@return Vector
function IMaterial:GetVector( materialVector ) end
--- Returns the specified material vector as a 4 component vector.
---@param name string The name of the material vector to retrieve. 
---@return number
---@return number
---@return number
---@return number
function IMaterial:GetVector4D( name ) end
--- Returns the specified material linear color vector, or nil if the value is not set.
--- 
--- See https://en.wikipedia.org/wiki/Gamma_correction
--- 
--- See also [IMaterial:GetVector](/gmod/IMaterial:GetVector)
---@param materialVector string The name of the material vector. 
---@return Vector
function IMaterial:GetVectorLinear( materialVector ) end
--- Returns the height of the member texture set for $basetexture.
---@return number
function IMaterial:Height(  ) end
--- Returns whenever the material is valid, i.e. whether it was not loaded successfully from disk or not.
---@return boolean
function IMaterial:IsError(  ) end
--- Recomputes the material's snapshot. This needs to be called if you have changed variables on your material and it isn't changing. 
--- 
--- Be careful though - this function is slow - so try to call it only when needed!
function IMaterial:Recompute(  ) end
--- Sets the specified material float to the specified float, does nothing on a type mismatch.
---@param materialFloat string The name of the material float. 
---@param float number The new float value. 
function IMaterial:SetFloat( materialFloat, float ) end
--- Sets the specified material value to the specified int, does nothing on a type mismatch.
---@param materialInt string The name of the material int. 
---@param int number The new int value. 
function IMaterial:SetInt( materialInt, int ) end
--- Sets the specified material value to the specified matrix, does nothing on a type mismatch.
---@param materialMatrix string The name of the material int. 
---@param matrix VMatrix The new matrix. 
function IMaterial:SetMatrix( materialMatrix, matrix ) end
--- The functionality of this function was removed due to the amount of crashes it caused.
---@param shaderName string Name of the shader 
function IMaterial:SetShader( shaderName ) end
--- Sets the specified material value to the specified string, does nothing on a type mismatch.
---@param materialString string The name of the material string. 
---@param string string The new string. 
function IMaterial:SetString( materialString, string ) end
--- Sets the specified material texture to the specified texture, does nothing on a type mismatch.
---@param materialTexture string The name of the keyvalue on the material to store the texture on. 
---@param texture ITexture The new texture. This can also be a string, the name of the new texture. 
function IMaterial:SetTexture( materialTexture, texture ) end
--- Unsets the value for the specified material value.
---@param materialValueName string The name of the material value to be unset. 
function IMaterial:SetUndefined( materialValueName ) end
--- Sets the specified material vector to the specified vector, does nothing on a type mismatch.
---@param MaterialVector string The name of the material vector. 
---@param vec Vector The new vector. 
function IMaterial:SetVector( MaterialVector, vec ) end
--- Sets the specified material vector to the specified 4 component vector, does nothing on a type mismatch.
---@param name string The name of the material vector. 
---@param x number The x component of the new vector. 
---@param y number The y component of the new vector. 
---@param z number The z component of the new vector. 
---@param w number The w component of the new vector. 
function IMaterial:SetVector4D( name, x, y, z, w ) end
--- Returns the width of the member texture set for $basetexture.
---@return number
function IMaterial:Width(  ) end
