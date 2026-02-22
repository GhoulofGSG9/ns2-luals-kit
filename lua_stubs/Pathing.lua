---
--- Pathing interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class PointArray
PointArray = {}

---@return PointArray
function PointArray() end

---@return number
function PointArray:GetSize() end

---@param i number
---@return Vector
function PointArray:Get(i) end

---@class Pathing
Pathing = {}

---@param points PointArray
---@param b1Pos number
---@param pt Vector
function Pathing.InsertPoint(points, b1Pos, pt) end

---@return boolean
function Pathing.GetLevelHasPathingMesh() end

---@param position Vector
---@param radius number
---@param height number
---@return number
function Pathing.AddObstacle(position, radius, height) end

---@param inId number
function Pathing.RemoveObstacle(inId) end

function Pathing.BuildMesh() end

---@param modelName string
---@param coords Coords
---@param isWalkable boolean
function Pathing.CreatePathingObject(modelName, coords, isWalkable) end

---@param startLocation Vector
---@param endLocation Vector
---@param pointsOut PointArray
---@return boolean
function Pathing.GetPathPoints(startLocation, endLocation, pointsOut) end

---@param startLocation Vector
---@param endLocation Vector
---@return boolean
function Pathing.IsBlocked(startLocation, endLocation) end

---@param options table
function Pathing.SetOptions(options) end

---@param origin Vector
---@return Vector
function Pathing.GetClosestPoint(origin) end

---@param origin Vector
---@param extents Vector
---@param flags number
function Pathing.SetPolyFlags(origin, extents, flags) end

---@param origin Vector
---@param extents Vector
---@param flags number
function Pathing.ClearPolyFlags(origin, extents, flags) end

---@param origin Vector
---@param extents Vector
---@param flags number
---@return boolean
function Pathing.GetIsFlagSet(origin, extents, flags) end

---@param origin Vector
function Pathing.FloodFill(origin) end

---@param origin Vector
function Pathing.AddFillPoint(origin) end

---@return number
function Pathing.GetNumObstacles() end

---@param center Vector
---@param radius number
---@param height number
---@return Vector
function Pathing.FindRandomPointAroundCircle(center, radius, height) end
