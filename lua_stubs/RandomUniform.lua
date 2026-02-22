---
--- RandomUniform interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class Randomizer
local Randomizer = {}

---@return Randomizer
function Randomizer() end

---@param seed number
function Randomizer:randomseed(seed) end

---@return number
function Randomizer:random() end

---@param min number
---@param max number
---@return number
function Randomizer:random(min, max) end

return Randomizer