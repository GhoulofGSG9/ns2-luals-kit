---
--- Event interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class Event
Event = {}

--- Pass in an event name and a function to be called when that event triggers in the engine.
---@param name string
---@param function function
function Event.Hook(name, function) end

--- Pass in an event name and a function to be called when that event triggers in the engine.
---@param name string
---@param function function
---@param unusedTag string
function Event.Hook(name, function, unusedTag) end

--- Pass in an event name and the function to be remove for event, returns true if the function was removed for the event.
---@param name string
---@param function function
---@return boolean
function Event.RemoveHook(name, function) end
