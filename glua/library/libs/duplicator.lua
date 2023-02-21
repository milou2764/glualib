---@meta
duplicator = {}
--- Allow this entity to be duplicated
---@param classname string An entity's classname 
function duplicator.Allow( classname ) end
--- Calls every function registered with [duplicator.RegisterBoneModifier](/gmod/duplicator.RegisterBoneModifier) on each bone the ent has.
---@param ply Player The player whose entity this is 
---@param ent Entity The entity in question 
function duplicator.ApplyBoneModifiers( ply, ent ) end
--- Calls every function registered with [duplicator.RegisterEntityModifier](/gmod/duplicator.RegisterEntityModifier) on the entity.
---@param ply Player The player whose entity this is 
---@param ent Entity The entity in question 
function duplicator.ApplyEntityModifiers( ply, ent ) end
--- Clears/removes the chosen entity modifier from the entity.
---@param ent Entity The entity the modification is stored on 
---@param key any The key of the stored entity modifier 
function duplicator.ClearEntityModifier( ent, key ) end
--- Copies the entity, and all of its constraints and entities, then returns them in a table.
---@param ent Entity The entity to duplicate. The function will automatically copy all constrained entities. 
---@param tableToAdd? table A preexisting table to add entities and constraints in from.  Uses the same table format as the table returned from this function. 
---@return table
function duplicator.Copy( ent, tableToAdd ) end
--- Copies the passed table of entities to save for later.
---@param ents table A table of entities to save/copy. 
---@return table
function duplicator.CopyEnts( ents ) end
--- Returns a table with some entity data that can be used to create a new entity with [duplicator.CreateEntityFromTable](/gmod/duplicator.CreateEntityFromTable)
---@param ent Entity The entity table to save 
---@return table
function duplicator.CopyEntTable( ent ) end
--- Creates a constraint from a saved/copied constraint table.
---@param constraint table Saved/copied constraint table 
---@param entityList table The list of entities that are to be constrained 
---@return Entity
function duplicator.CreateConstraintFromTable( constraint, entityList ) end
--- "Create an entity from a table." 
--- 
--- 
--- This creates an entity using the data in EntTable.
--- 
--- 
--- If an entity factory has been registered for the entity's Class, it will be called. 
--- 
--- 
--- Otherwise, [duplicator.GenericDuplicatorFunction](/gmod/duplicator.GenericDuplicatorFunction) will be called instead.
---@param ply Player The player who wants to create something 
---@param entTable table The duplication data to build the entity with. See [EntityCopyData](/gmod/Structures/EntityCopyData) 
---@return Entity
function duplicator.CreateEntityFromTable( ply, entTable ) end
--- "Restores the bone's data."
--- 
--- 
--- Loops through Bones and calls [Entity:ManipulateBoneScale](/gmod/Entity:ManipulateBoneScale), [Entity:ManipulateBoneAngles](/gmod/Entity:ManipulateBoneAngles) and [Entity:ManipulateBonePosition](/gmod/Entity:ManipulateBonePosition) on ent with the table keys and the subtable values s, a and p respectively.
---@param ent Entity The entity to be bone manipulated 
---@param bones table Table with a [BoneManipulationData](/gmod/Structures/BoneManipulationData) for every bone (that has manipulations applied) using the bone ID as the table index. 
function duplicator.DoBoneManipulator( ent, bones ) end
--- Restores the flex data using [Entity:SetFlexWeight](/gmod/Entity:SetFlexWeight) and [Entity:SetFlexScale](/gmod/Entity:SetFlexScale)
---@param ent Entity The entity to restore the flexes on 
---@param flex table The flexes to restore 
---@param scale? number The flex scale to apply. (Flex scale is unchanged if omitted) 
function duplicator.DoFlex( ent, flex, scale ) end
--- "Applies generic every-day entity stuff for ent from table data."
--- 
--- 
--- Depending on the values of Model, Angle, Pos, Skin, Flex, Bonemanip, ModelScale, ColGroup, Name, and BodyG ([table](/gmod/table) of multiple values) in the data table, this calls [Entity:SetModel](/gmod/Entity:SetModel), [Entity:SetAngles](/gmod/Entity:SetAngles), [Entity:SetPos](/gmod/Entity:SetPos), [Entity:SetSkin](/gmod/Entity:SetSkin), [duplicator.DoFlex](/gmod/duplicator.DoFlex), [duplicator.DoBoneManipulator](/gmod/duplicator.DoBoneManipulator), [Entity:SetModelScale](/gmod/Entity:SetModelScale), [Entity:SetCollisionGroup](/gmod/Entity:SetCollisionGroup), [Entity:SetName](/gmod/Entity:SetName), [Entity:SetBodygroup](/gmod/Entity:SetBodygroup) on ent.
--- 
--- 
--- If ent has a RestoreNetworkVars function, it is called with data.DT.
---@param ent Entity The entity to be applied upon 
---@param data table The data to be applied onto the entity 
function duplicator.DoGeneric( ent, data ) end
--- "Applies bone data, generically."
--- 
--- 
--- If data contains a PhysicsObjects table, it moves, re-angles and if relevent freezes all specified bones, first converting from local coordinates to world coordinates.
---@param ent Entity The entity to be applied upon 
---@param ply? Player The player who owns the entity. Unused in function as of early 2013 
---@param data table The data to be applied onto the entity 
function duplicator.DoGenericPhysics( ent, ply, data ) end
--- Returns the entity class factory registered with [duplicator.RegisterEntityClass](/gmod/duplicator.RegisterEntityClass).
---@param name string The name of the entity class factory 
---@return table
function duplicator.FindEntityClass( name ) end
--- "Generic function for duplicating stuff" 
--- 
--- 
--- This is called when [duplicator.CreateEntityFromTable](/gmod/duplicator.CreateEntityFromTable) can't find an entity factory to build with. It calls [duplicator.DoGeneric](/gmod/duplicator.DoGeneric) and [duplicator.DoGenericPhysics](/gmod/duplicator.DoGenericPhysics) to apply standard duplicator stored things such as the model and position.
---@param ply Player The player who wants to create something 
---@param data table The duplication data to build the entity with 
---@return Entity
function duplicator.GenericDuplicatorFunction( ply, data ) end
--- Fills entStorageTable with all of the entities in a group connected with constraints. Fills constraintStorageTable with all of the constrains constraining the group.
---@param ent Entity The entity to start from 
---@param entStorageTable table The table the entities will be inserted into 
---@param constraintStorageTable table The table the constraints will be inserted into 
---@return table
---@return table
function duplicator.GetAllConstrainedEntitiesAndConstraints( ent, entStorageTable, constraintStorageTable ) end
--- Returns whether the entity can be duplicated or not
---@param classname string An entity's classname 
---@return boolean
function duplicator.IsAllowed( classname ) end
--- "Given entity list and constraint list, create all entities and return their tables"
--- 
--- Calls [duplicator.CreateEntityFromTable](/gmod/duplicator.CreateEntityFromTable) on each sub-table of EntityList. If an entity is actually created, it calls [ENTITY:OnDuplicated](/gmod/ENTITY:OnDuplicated) with the entity's duplicator data, then [duplicator.ApplyEntityModifiers](/gmod/duplicator.ApplyEntityModifiers), [duplicator.ApplyBoneModifiers](/gmod/duplicator.ApplyBoneModifiers) and finally  [ENTITY:PostEntityPaste](/gmod/ENTITY:PostEntityPaste) is called.
--- 
--- The constraints are then created with [duplicator.CreateConstraintFromTable](/gmod/duplicator.CreateConstraintFromTable).
---@param Player Player The player who wants to create something 
---@param EntityList table A table of duplicator data to create the entities from 
---@param ConstraintList table A table of duplicator data to create the constraints from 
---@return table
---@return table
function duplicator.Paste( Player, EntityList, ConstraintList ) end
--- Registers a function to be called on each of an entity's bones when [duplicator.ApplyBoneModifiers](/gmod/duplicator.ApplyBoneModifiers) is called.
---@param key any The type of the key doesn't appear to matter, but it is preferable to use a string. 
---@param boneModifier function Function called on each bone that an ent has. Called during [duplicator.ApplyBoneModifiers](/gmod/duplicator.ApplyBoneModifiers).  Function parameters are:  * [Player](/gmod/Player) ply  * [Entity](/gmod/Entity) ent  * [number](/gmod/number) boneID  * [PhysObj](/gmod/PhysObj) bone  * [table](/gmod/table) data      The data table that is passed to boneModifier is set with [duplicator.StoreBoneModifier](/gmod/duplicator.StoreBoneModifier) 
function duplicator.RegisterBoneModifier( key, boneModifier ) end
--- Register a function used for creating a duplicated constraint.
---@param name string The unique name of new constraint 
---@param callback function Function to be called when this constraint is created 
---@param ... any Arguments passed to the callback function 
function duplicator.RegisterConstraint( name, callback, ... ) end
--- This allows you to specify a specific function to be run when your SENT is pasted with the duplicator, instead of relying on the generic automatic functions.
---@param name string The ClassName of the entity you wish to register a factory for 
---@param function_ function The factory function you want to have called. It should have the arguments (Player, ...) where ... is whatever arguments you request to be passed. It also should return the entity created, otherwise [duplicator.Paste](/gmod/duplicator.Paste) result will not include it! 
---@param args any Strings of the names of arguments you want passed to function the from the [EntityCopyData](/gmod/Structures/EntityCopyData). As a special case, "Data" will pass the whole structure. 
function duplicator.RegisterEntityClass( name, function_, args ) end
--- This allows you to register tweaks to entities. For instance, if you were making an "unbreakable" addon, you would use this to enable saving the "unbreakable" state of entities between duplications.
--- 
--- This function registers a piece of generic code that is run on all entities with this modifier. In order to have it actually run, use [duplicator.StoreEntityModifier](/gmod/duplicator.StoreEntityModifier).
--- 
--- This function does nothing when run clientside.
---@param name string An identifier for your modification. This is not limited, so be verbose. `Person's 'Unbreakable' mod` is far less likely to cause conflicts than `unbreakable` 
---@param func function The function to be called for your modification. It should have the arguments (`Player`, `Entity`, `Data`), where data is what you pass to [duplicator.StoreEntityModifier](/gmod/duplicator.StoreEntityModifier). 
function duplicator.RegisterEntityModifier( name, func ) end
--- Help to remove certain map created entities before creating the saved entities
--- This is obviously so we don't get duplicate props everywhere.
--- It should be called before calling Paste.
function duplicator.RemoveMapCreatedEntities(  ) end
--- "When a copy is copied it will be translated according to these.
--- If you set them - make sure to set them back to 0 0 0!"
---@param v Angle The angle to offset all pastes from 
function duplicator.SetLocalAng( v ) end
--- "When a copy is copied it will be translated according to these.
--- If you set them - make sure to set them back to 0 0 0!"
---@param v Vector The position to offset all pastes from 
function duplicator.SetLocalPos( v ) end
--- Stores bone mod data for a registered bone modification function
---@param ent Entity The entity to add bone mod data to 
---@param boneID number The bone ID.  See [Entity:GetPhysicsObjectNum](/gmod/Entity:GetPhysicsObjectNum) 
---@param key any The key for the bone modification 
---@param data table The bone modification data that is passed to the bone modification function 
function duplicator.StoreBoneModifier( ent, boneID, key, data ) end
--- Stores an entity modifier into an entity for saving
---@param entity Entity The entity to store modifier in 
---@param name string Unique modifier name as defined in [duplicator.RegisterEntityModifier](/gmod/duplicator.RegisterEntityModifier) 
---@param data table Modifier data 
function duplicator.StoreEntityModifier( entity, name, data ) end
--- "Work out the AABB size"
---@param Ents table A table of entity duplication datums. 
function duplicator.WorkoutSize( Ents ) end
