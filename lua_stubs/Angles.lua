---
--- Angles interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class Angles
Angles = {}

--- Extracts the Angles from the passed in Coords and stores them in this Angles object.
---@param coords Coords
function Angles:BuildFromCoords(coords) end

--- Returns true if all members are finite. This is useful for error checking.
---@return boolean
function Angles:GetIsFinite() end

---@class Angles
Angles = {}

--- Returns the linear interpolation between two Euler angles.
---@param a Angles
---@param b Angles
---@param fraction number
---@return Angles
function Angles.Lerp(a, b, fraction) end
