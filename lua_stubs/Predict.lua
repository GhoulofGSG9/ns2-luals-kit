---
--- Predict interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class Shared
Shared = {}

---@return boolean
function Shared.GetIsRunningPrediction() end

---@return boolean
function Shared.GetIsPredictor() end

---@param name string
---@param callback function
function Shared.HookNetworkMessage(name, callback) end

---@return Entity
function Shared.GetLocalPlayer() end
