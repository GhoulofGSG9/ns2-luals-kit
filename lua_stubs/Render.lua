---
--- Render interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class RenderModel
RenderModel = {}

---@param visible boolean
function RenderModel:SetIsVisible(visible) end

---@return boolean
function RenderModel:GetIsVisible() end

---@param renderMask number
function RenderModel:SetRenderMask(renderMask) end

---@return number
function RenderModel:GetRenderMask() end

---@param groupName string
function RenderModel:SetGroup(groupName) end

---@param modelIndex number
function RenderModel:SetModelByIndex(modelIndex) end

---@param modelName string
function RenderModel:SetModelByName(modelName) end

---@param isStatic boolean
function RenderModel:SetIsStatic(isStatic) end

---@param instanced boolean
function RenderModel:SetIsInstanced(instanced) end

---@return boolean
function RenderModel:GetIsInstanced() end

---@param coords Coords
function RenderModel:SetCoords(coords) end

---@return Coords
function RenderModel:GetCoords() end

---@param boneCoords CoordsArray
function RenderModel:SetBoneCoords(boneCoords) end

---@return number
function RenderModel:GetNumBones() end

---@param entityId number
function RenderModel:SetEntityId(entityId) end

---@param castsShadows boolean
function RenderModel:SetCastsShadows(castsShadows) end

---@return boolean
function RenderModel:GetCastsShadows() end

---@param name string
---@param value number
function RenderModel:SetMaterialParameter(name, value) end

---@param name string
---@param value string
function RenderModel:SetMaterialParameter(name, value) end

---@param name string
---@param value Vector
function RenderModel:SetMaterialParameter(name, value) end

---@param name string
---@param value Color
function RenderModel:SetMaterialParameter(name, value) end

---@param material RenderMaterial
function RenderModel:AddMaterial(material) end

---@param material RenderMaterial
function RenderModel:RemoveMaterial(material) end

---@return number
function RenderModel:GetNumLayers() end

---@param layerIndex number
---@return RenderMaterial
function RenderModel:GetLayer(layerIndex) end

function RenderModel:InstanceMaterials() end

---@return RenderScene.Zone
function RenderModel:GetZone() end

---@return number
function RenderModel:GetNumFramesInvisible() end

--- Flushes all override materials from memory and being active
function RenderModel:ClearOverrideMaterials() end

--- Sets a new material to override a specific material index compiled in model. The material index must match 1:1 what the model has when it was compiled. See Model:GetMaterials
---@param materialIndex number
---@param materialName string
---@return boolean
function RenderModel:SetOverrideMaterial(materialIndex, materialName) end

--- Flushed and removes an override material per the supplied material index
---@param materialIndex number
---@return boolean
function RenderModel:RemoveOverrideMaterial(materialIndex) end

--- Returns the string of the material name (note: not the full path) of an override material at the supplied material index
---@param materialIndex number
---@return string
function RenderModel:GetOverrideMaterialName(materialIndex) end

--- Returns the amount of pending material overrides in the RenderModel.
---@return number
function RenderModel:GetNumPendingMaterialOverrides() end

--- Returns if materials have been loaded and there are zero pending override materials.
---@return boolean
function RenderModel:GetReadyForOverrideMaterials() end

function RenderModel:LogAllMaterials() end

---@class RenderDynamicMesh
RenderDynamicMesh = {}

---@param coords Coords
function RenderDynamicMesh:SetCoords(coords) end

---@return Coords
function RenderDynamicMesh:GetCoords() end

---@param material string
function RenderDynamicMesh:SetMaterial(material) end

---@param renderMask number
function RenderDynamicMesh:SetRenderMask(renderMask) end

---@return number
function RenderDynamicMesh:GetRenderMask() end

---@param groupName string
function RenderDynamicMesh:SetGroup(groupName) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetIndices(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetVertices(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetTexCoords(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetNormals(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetBinormals(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetColors(table, numValues) end

---@param visible boolean
function RenderDynamicMesh:SetIsVisible(visible) end

---@return boolean
function RenderDynamicMesh:GetIsVisible() end

---@class RenderLight
RenderLight = {}

---@param visible boolean
function RenderLight:SetIsVisible(visible) end

---@return boolean
function RenderLight:GetIsVisible() end

---@param coords Coords
function RenderLight:SetCoords(coords) end

---@return Coords
function RenderLight:GetCoords() end

---@param type RenderLight.Type
function RenderLight:SetType(type) end

---@return RenderLight.Type
function RenderLight:GetType() end

---@param castsShadows boolean
function RenderLight:SetCastsShadows(castsShadows) end

---@return boolean
function RenderLight:GetCastsShadows() end

---@param shadowFadeRate number
function RenderLight:SetShadowFadeRate(shadowFadeRate) end

---@return number
function RenderLight:GetShadowFadeRate() end

---@param color Color
function RenderLight:SetColor(color) end

---@return Color
function RenderLight:GetColor() end

---@param radius number
function RenderLight:SetRadius(radius) end

---@return number
function RenderLight:GetRadius() end

---@param intensity number
function RenderLight:SetIntensity(intensity) end

---@return number
function RenderLight:GetIntensity() end

---@param innerCone number
function RenderLight:SetInnerCone(innerCone) end

---@return number
function RenderLight:GetInnerCone() end

---@param outerCone number
function RenderLight:SetOuterCone(outerCone) end

---@return number
function RenderLight:GetOuterCone() end

---@param renderMask number
function RenderLight:SetRenderMask(renderMask) end

---@return number
function RenderLight:GetRenderMask() end

---@param _dummy2 RenderLight.Direction
---@param color Color
function RenderLight:SetDirectionalColor(_dummy2, color) end

---@param atmosphericDensity number
function RenderLight:SetAtmosphericDensity(atmosphericDensity) end

---@return number
function RenderLight:GetAtmosphericDensity() end

---@param specular boolean
function RenderLight:SetSpecular(specular) end

---@return boolean
function RenderLight:GetSpecular() end

---@param fileName string
function RenderLight:SetGoboTexture(fileName) end

---@param groupName string
function RenderLight:SetGroup(groupName) end

---@class RenderDecal
RenderDecal = {}

---@param materialFileName string
function RenderDecal:SetMaterial(materialFileName) end

---@param material RenderMaterial
function RenderDecal:SetMaterial(material) end

---@param coords Coords
function RenderDecal:SetCoords(coords) end

---@return Coords
function RenderDecal:GetCoords() end

---@param renderMask number
function RenderDecal:SetRenderMask(renderMask) end

---@return number
function RenderDecal:GetRenderMask() end

---@param extents Vector
function RenderDecal:SetExtents(extents) end

---@class RenderColorGrading
RenderColorGrading = {}

---@class ScreenEffect
ScreenEffect = {}

---@param setActive boolean
function ScreenEffect:SetActive(setActive) end

---@return boolean
function ScreenEffect:GetActive() end

---@param name string
---@param value number
function ScreenEffect:SetParameter(name, value) end

---@param name string
---@param index number
---@param value number
function ScreenEffect:SetParameterIndex(name, index, value) end

---@param name string
---@param value Vector
function ScreenEffect:SetParameter(name, value) end

---@param name string
---@param index number
---@param value Vector
function ScreenEffect:SetParameterIndex(name, index, value) end

---@param name string
---@param value Color
function ScreenEffect:SetParameter(name, value) end

---@param name string
---@param index number
---@param value Color
function ScreenEffect:SetParameterIndex(name, index, value) end

---@class RenderCamera
RenderCamera = {}

---@param coords Coords
function RenderCamera:SetCoords(coords) end

---@return Coords
function RenderCamera:GetCoords() end

---@param renderMask number
function RenderCamera:SetRenderMask(renderMask) end

---@param fov number
function RenderCamera:SetFov(fov) end

---@return number
function RenderCamera:GetFov() end

---@param nearPlane number
function RenderCamera:SetNearPlane(nearPlane) end

---@return number
function RenderCamera:GetNearPlane() end

---@param farPlane number
function RenderCamera:SetFarPlane(farPlane) end

---@return number
function RenderCamera:GetFarPlane() end

---@param visible boolean
function RenderCamera:SetIsVisible(visible) end

---@param usesTAA boolean
function RenderCamera:SetUsesTAA(usesTAA) end

---@return boolean
function RenderCamera:GetUsesTAA() end

---@param cullingMode RenderCamera.CullingMode
function RenderCamera:SetCullingMode(cullingMode) end

---@return RenderCamera.CullingMode
function RenderCamera:GetCullingMode() end

---@param type RenderCamera.Type
function RenderCamera:SetType(type) end

---@param renderSetupFile string
function RenderCamera:SetRenderSetup(renderSetupFile) end

---@param targetName string
function RenderCamera:SetTargetTexture(targetName) end

---@param targetName string
---@param hdr boolean
function RenderCamera:SetTargetTexture(targetName, hdr) end

---@param targetName string
---@param hdr boolean
---@param xSize number
---@param ySize number
function RenderCamera:SetTargetTexture(targetName, hdr, xSize, ySize) end

---@class RenderBillboard
RenderBillboard = {}

---@param visible boolean
function RenderBillboard:SetIsVisible(visible) end

---@return boolean
function RenderBillboard:GetIsVisible() end

---@param origin Vector
function RenderBillboard:SetOrigin(origin) end

---@param color Color
function RenderBillboard:SetColor(color) end

---@param materialFileName string
function RenderBillboard:SetMaterial(materialFileName) end

---@param material RenderMaterial
function RenderBillboard:SetMaterial(material) end

---@param size Vector
function RenderBillboard:SetSize(size) end

---@param groupName string
function RenderBillboard:SetGroup(groupName) end

---@class RenderReflectionProbe
RenderReflectionProbe = {}

---@param bitmapBytes ByteArray
function RenderReflectionProbe:SetCubeMapRaw(bitmapBytes) end

---@param visible boolean
function RenderReflectionProbe:SetIsVisible(visible) end

---@return boolean
function RenderReflectionProbe:GetIsVisible() end

---@param origin Vector
function RenderReflectionProbe:SetOrigin(origin) end

---@return Vector
function RenderReflectionProbe:GetOrigin() end

---@param radius number
function RenderReflectionProbe:SetRadius(radius) end

---@param strength number
function RenderReflectionProbe:SetStrength(strength) end

---@param color Color
function RenderReflectionProbe:SetTint(color) end

---@return Color
function RenderReflectionProbe:GetTint() end

---@param groupName string
function RenderReflectionProbe:SetGroup(groupName) end

---@param renderMask number
function RenderReflectionProbe:SetRenderMask(renderMask) end

---@return number
function RenderReflectionProbe:GetRenderMask() end

---@class RenderMaterial
RenderMaterial = {}

---@param fileName string
function RenderMaterial:SetMaterial(fileName) end

---@param name string
---@param value boolean
function RenderMaterial:SetParameter(name, value) end

---@param name string
---@param value number
function RenderMaterial:SetParameter(name, value) end

---@param name string
---@param value Vector
function RenderMaterial:SetParameter(name, value) end

---@param name string
---@param value Color
function RenderMaterial:SetParameter(name, value) end

---@return string
function RenderMaterial:GetMaterialFilename() end

---@class RenderModelArray
RenderModelArray = {}

---@param visible boolean
function RenderModelArray:SetIsVisible(visible) end

---@return boolean
function RenderModelArray:GetIsVisible() end

---@param renderMask number
function RenderModelArray:SetRenderMask(renderMask) end

---@return number
function RenderModelArray:GetRenderMask() end

---@param castsShadows boolean
function RenderModelArray:SetCastsShadows(castsShadows) end

---@return boolean
function RenderModelArray:GetCastsShadows() end

function RenderModelArray:InstanceMaterials() end

---@param name string
---@param value number
function RenderModelArray:SetMaterialParameter(name, value) end

---@param name string
---@param value string
function RenderModelArray:SetMaterialParameter(name, value) end

---@param name string
---@param value Vector
function RenderModelArray:SetMaterialParameter(name, value) end

---@param name string
---@param value Color
function RenderModelArray:SetMaterialParameter(name, value) end

---@param modelIndex number
function RenderModelArray:SetModelByIndex(modelIndex) end

---@param modelName string
function RenderModelArray:SetModelByName(modelName) end

function RenderModelArray:Clear() end

---@param table table
function RenderModelArray:SetModels(table) end

---@class RenderFogMeshVolume
RenderFogMeshVolume = {}

---@param color Color
function RenderFogMeshVolume:SetColor(color) end

---@return Color
function RenderFogMeshVolume:GetColor() end

---@param density number
function RenderFogMeshVolume:SetDensity(density) end

---@return number
function RenderFogMeshVolume:GetDensity() end

---@param renderMask number
function RenderFogMeshVolume:SetRenderMask(renderMask) end

---@return number
function RenderFogMeshVolume:GetRenderMask() end

---@param priority number
function RenderFogMeshVolume:SetSortPriority(priority) end

---@return number
function RenderFogMeshVolume:GetSortPriority() end

---@param coords Coords
function RenderFogMeshVolume:SetGradientTransform(coords) end

---@return Coords
function RenderFogMeshVolume:GetGradientTransform() end

---@param falloff number
function RenderFogMeshVolume:SetGradientFalloff(falloff) end

---@return number
function RenderFogMeshVolume:GetGradientFalloff() end

--- Sets the mesh used to render the fog volume.  This is quite expensive, shouldn't be done frequently.
---@param table table
function RenderFogMeshVolume:SetMesh(table) end

---@class RenderFogSphereVolume
RenderFogSphereVolume = {}

---@param color Color
function RenderFogSphereVolume:SetColor(color) end

---@return Color
function RenderFogSphereVolume:GetColor() end

---@param density number
function RenderFogSphereVolume:SetDensity(density) end

---@return number
function RenderFogSphereVolume:GetDensity() end

---@param renderMask number
function RenderFogSphereVolume:SetRenderMask(renderMask) end

---@return number
function RenderFogSphereVolume:GetRenderMask() end

---@param priority number
function RenderFogSphereVolume:SetSortPriority(priority) end

---@return number
function RenderFogSphereVolume:GetSortPriority() end

---@param origin Vector
function RenderFogSphereVolume:SetOrigin(origin) end

---@return Vector
function RenderFogSphereVolume:GetOrigin() end

---@param radius number
function RenderFogSphereVolume:SetRadius(radius) end

---@return number
function RenderFogSphereVolume:GetRadius() end

---@param softness number
function RenderFogSphereVolume:SetSoftness(softness) end

---@return number
function RenderFogSphereVolume:GetSoftness() end

---@class RenderWetMapVolume
RenderWetMapVolume = {}

--- Sets the mesh used to render the wetmap volume.  This is quite expensive, shouldn't be done frequently.
---@param table table
function RenderWetMapVolume:SetMesh(table) end

---@param wetness number
function RenderWetMapVolume:SetWetness(wetness) end

---@return number
function RenderWetMapVolume:GetWetness() end

---@param renderMask number
function RenderWetMapVolume:SetRenderMask(renderMask) end

---@return number
function RenderWetMapVolume:GetRenderMask() end
