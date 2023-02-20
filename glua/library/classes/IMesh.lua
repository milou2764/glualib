---@meta
---@class IMesh
IMesh = {}
--- Builds the mesh from a table mesh vertexes.
--- 
--- See [Mesh](/gmod/Global.Mesh) and [util.GetModelMeshes](/gmod/util.GetModelMeshes) for examples.
---@param vertexes table A table consisting of [MeshVertex](/gmod/Structures/MeshVertex)s. 
function IMesh:BuildFromTriangles( vertexes ) end
--- Deletes the mesh and frees the memory used by it.
function IMesh:Destroy(  ) end
--- Renders the mesh with the active matrix.
function IMesh:Draw(  ) end
--- Returns whether this [IMesh](/gmod/IMesh) is valid or not.
---@return boolean
function IMesh:IsValid(  ) end
