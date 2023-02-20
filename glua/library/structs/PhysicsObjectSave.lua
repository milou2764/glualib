---@meta
---@class PhysicsObjectSave
---@field Pos Vector The entity's world position made local with [WorldToLocal](/gmod/Global.WorldToLocal) 
---@field Angle Angle The entity's world angles made local with [WorldToLocal](/gmod/Global.WorldToLocal) 
---@field Frozen boolean Whether the entity is moveable. Equal to (`not` [PhysObj:IsMoveable](/gmod/PhysObj:IsMoveable)) 
---@field NoGrav boolean Whether the entity's gravity is affected by gravity or not. [PhysObj:IsGravityEnabled](/gmod/PhysObj:IsGravityEnabled) 
---@field Sleep boolean Whether the entity is dormant or not. [PhysObj:IsAsleep](/gmod/PhysObj:IsAsleep) 
PhysicsObjectSave = {}