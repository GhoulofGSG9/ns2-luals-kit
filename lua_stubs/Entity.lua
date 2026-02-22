---
--- Entity interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class Entity
local Entity = {}

--- How entities are propagated.
Default = use include/exlude masks first, then distance.
Callback = as default, but if inside distance do a final callback to OnGetIsRelevant() (note: expensive)
Always = always relevant
Never = never relevant
PlayerOwner = only relevant to the player owning it
Returns the id of this entity.
---@return number
function Entity:GetId() end

--- Get class name used with LinkClassToMap.
---@return string
function Entity:GetClassName() end

--- Get map name used with LinkClassToMap.
---@return string
function Entity:GetMapName() end

--- This API is deprecated. Use Entity:AddTimedCallback() instead.
---@param nextThink number
function Entity:SetNextThink(nextThink) end

--- Determines if OnUpdate() will be called. Defaults to false.
---@param updates boolean
function Entity:SetUpdates(updates) end

--- Determines if OnUpdate() will be called and with what time interval in seconds. Defaults to false.
---@param updates boolean
---@param updateRate number
function Entity:SetUpdates(updates, updateRate) end

--- Sets the time interval in seconds for the OnUpdate calls. Defaults to 0 which cause OnUpdate when enabled is called on every world update
---@param updateRate number
function Entity:SetUpdateRate(updateRate) end

--- Sets how the server determines whether or not the entity should be propagated to a client.
---@param propagate Entity.Propagate
function Entity:SetPropagate(propagate) end

--- Sets a maximum distance at which the entity will be relevant. Can be infinite to disable the test.
---@param relevancyDistance number
function Entity:SetRelevancyDistance(relevancyDistance) end

--- Allows an origin and range offset to be made when this entity checks other entities for relevancy.
The position that relevancy is calculated from is adjusted by originOffset, and the required range is adjusted by the rangeOffset.
This allows overhead views to be used more effectively
---@param originOffset Vector
---@param rangeOffset number
function Entity:ConfigureRelevancy(originOffset, rangeOffset) end

--- Sets a bit mask which is used to determine if the entity is relevant to a client. The entity is relevant if (entity.includeMask & client.includeMask) != 0.
---@param includeMask number
function Entity:SetIncludeRelevancyMask(includeMask) end

--- Gets the include relevancy mask
---@return number
function Entity:GetIncludeRelevancyMask() end

--- Sets a bit mask which is used to determine if the entity is relevant to a client. The entity is not relevant if (entity.excludeMask & client.excludeMask) == 0.
---@param excludeMask number
function Entity:SetExcludeRelevancyMask(excludeMask) end

--- Gets the exclude relevancy mask
---@return number
function Entity:GetExcludeRelevancyMask() end

--- Sets whether or not the entity has lag compensation applied on the server. When lag compensation is enabled, the state of the entity will be "rolled back" when processing client commands.
---@param lagCompensated boolean
function Entity:SetLagCompensated(lagCompensated) end

--- Returns whether or not the entity should have lag compensation applied on the server.
---@return boolean
function Entity:GetLagCompensated() end

--- Set whether or not the model should take any simple physics objects attached when calculating the bounding box.  False by default.
---@param state boolean
function Entity:SetUsesSimplePhysics(state) end

--- Sets the model index used to calculate the bounding box for this entity. Set to <= 0 to remove bounding box.
---@param modelIndex number
function Entity:SetPhysicsBoundingBox(modelIndex) end

--- Update the physics bounding box to reflect the current origins. If the entity has no physics bounding box, does nothing.
function Entity:UpdatePhysicsBoundingBox() end

--- Sets the parent of this entity.
---@param entity Entity
function Entity:SetParent(entity) end

--- Returns the parent of this entity.
---@return Entity
function Entity:GetParent() end

--- Returns the Id of the parent of this entity.
---@return number
function Entity:GetParentId() end

--- Returns the number of children this Entity has.
---@return number
function Entity:GetNumChildren() end

--- Returns the child of this Entity at the passed in index. The index goes from 0 to GetNumChildren() - 1.
---@param atIndex number
---@return Entity
function Entity:GetChildAtIndex(atIndex) end

--- Sets the point on the parent that the entity is attached to.
---@param attachPoint string
function Entity:SetAttachPoint(attachPoint) end

--- Returns the index of the point on the parent that the entity is attached to.
---@return number
function Entity:GetAttachPoint() end

--- Gets the object to world coordinate transform for this entity.
---@return Coords
function Entity:GetCoords() end

--- Sets the object to world coordinate transeform for this entity.
---@param coords Coords
function Entity:SetCoords(coords) end

--- Adds a callback that will be called after the time specified callInterval has passed.
The callback will be called with itself and the time passed since the last call (or since the callback
was added).
Using zero as the callInterval is allowed, and will cause it to be called every frame/update interval.
Callbacks will be called BEFORE any OnUpdate() calls.
This method should not be used directly - the Entity.lua:AddTimedCallback should be used instead, as it
filters out any adds when in the Predict world.
Returning a number will cause the callInterval to change.
Returning true will reuse the current callInterval.
Return false will remove the callback.
---@param callback function
---@param callInterval number
---@param early boolean
function Entity:AddTimedCallbackActual(callback, callInterval, early) end

--- Called when entity is created either on server or client.
function Entity:OnCreate() end

--- Called after an entity has been created on the server or client and the initial values have been set.
function Entity:OnInitialized() end

--- Called when the entity is destroyed.
function Entity:OnDestroy() end

--- Called when SetOrigin() is called with out of range or invalid values.
function Entity:OnInvalidOrigin() end

--- Returns whether or not the entity has been destroyed.
---@return boolean
function Entity:GetIsDestroyed() end

--- Called to update the entity.
---@param deltaTime number
function Entity:OnUpdate(deltaTime) end

--- This is deprecated. Use Entity:AddTimedCallback() instead.
function Entity:OnThink() end

--- Disables the Entity:OnPreUpdate() call on this entity.
function Entity:DisableOnPreUpdate() end

--- Disables the Entity:OnUpdatePhysics() call on this entity.
function Entity:DisableOnUpdatePhysics() end

--- Disables the Entity:OnPreparePhysics() call on this entity.
function Entity:DisableOnPreparePhysics() end

--- Disables the Entity:OnFinishPhysics() call on this entity.
function Entity:DisableOnFinishPhysics() end

--- Disables the Entity:OnUpdateRender() call on this entity.
function Entity:DisableOnUpdateRender() end

--- Called when a Move should be processed. These moves are processed on the Server when a Client sends them or on the Client as part of prediction.
---@param input Move
function Entity:OnProcessMove(input) end

--- Called when this entity is being spectated by another Client instead of Entity:OnProcessMove() being called.
---@param deltaTime number
function Entity:OnProcessSpectate(deltaTime) end

--- Called to determine if this entity is relevant to the passed in player entity.
---@param player Entity
---@return boolean
function Entity:OnGetIsRelevant(player) end

--- Called when the parent changes on this entity.
---@param oldParent Entity
---@param newParent Entity
function Entity:OnParentChanged(oldParent, newParent) end

--- Called on the Client to allow input to be modified before being processed locally or sent to the Server.
---@param input Move
---@return Move
function Entity:OverrideInput(input) end

--- Returns the index for the attachment point with the specified name. If there is no attachment point with that name in the entity, the method returns -1.
---@param attachPointName string
---@return number
function Entity:GetAttachPointIndex(attachPointName) end

---@param attachPointIndex number
---@return Coords
function Entity:GetAttachPointCoords(attachPointIndex) end

--- Gets the attachment point to world space coordinate frame for the specified attachment point. Sets the origin of the object's coordinate frame relative to its parent. Will call Entity:OnInvalidOrigin() if a bad origin is passed in.
---@param origin Vector
function Entity:SetOrigin(origin) end

--- Returns the origin of the object's coordinate frame relative to its parent.
---@return Vector
function Entity:GetOrigin() end

--- Returns the origin of the object's coordinate frame in world coordinates.
---@return Vector
function Entity:GetWorldOrigin() end

--- Sets whether or not the entity is visible. It's generally up to derived classes to check if an entity is visible before rendering.
---@param visible boolean
function Entity:SetIsVisible(visible) end

--- Returns whether or not the entity is visible. It's generally up to derived classes to check if an entity is visible before rendering.
---@return boolean
function Entity:GetIsVisible() end

--- Called when entities are placed in map.
function Entity:SetMapEntity() end

--- Can be used for not deleting entities on death and resetting them on round reset.
---@return boolean
function Entity:GetIsMapEntity() end

--- Set if entity can be culled by physics culler (client side).
---@param cullable boolean
function Entity:SetPhysicsCullable(cullable) end

--- Return if entity can be culled by physics culler (client side)
---@return boolean
function Entity:GetIsPhysicsCullable() end

--- Returns the angles of the object's coordinate frame relative to the world.
---@return Angles
function Entity:GetAngles() end

--- Sets the angles of the object's coordinate frame relative to the world. Will generate an error if bad angles are passed in.
---@param angles Angles
function Entity:SetAngles(angles) end

--- Returns distance between self and specified entity. Used to avoid excess Vector() creation in script. Uses origin.
---@param entity Entity
---@return number
function Entity:GetDistanceToEntity(entity) end

--- Same as Entity:GetDistance() but ignores y.
---@param entity Entity
---@return number
function Entity:GetDistanceSquaredToEntity(entity) end

---@param entity Entity
---@return number
function Entity:GetDistanceXZ(entity) end

--- Returns distances between self and the specified origin.
---@param origin Vector
---@return number
function Entity:GetDistanceToVector(origin) end

--- Returns distance between self and specified origin squared.
---@param origin Vector
---@return number
function Entity:GetDistanceSquaredToVector(origin) end

--- Play sound at entities' location.
---@param soundEventName string
function Entity:PlaySound(soundEventName) end

--- Play sound at entities' location with the specified volume.
---@param soundEventName string
---@param volume number
function Entity:PlaySoundAtVolume(soundEventName, volume) end

--- Stops the specified sound previously played using Entity:PlaySound().
---@param soundEventName string
function Entity:StopSound(soundEventName) end

--- Add a watch on the given fieldname. When it is changed, the given callback will be invoked. 
If the callback returns non-true, the fieldwatcher will be removed.
Note: The same transition may be reported multiple times!
---@param fieldName string
---@param callback function
function Entity:AddFieldWatcher(fieldName, callback) end

return Entity