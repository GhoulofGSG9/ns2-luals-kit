---
--- Shine framework stub for EmmyLua / LuaLS
--- Hand-maintained for Shine-Epsilon extensions
---

---@meta

---@class ShineHookMode
---@field ActivePre string
---@field ActivePost string
---@field PassivePre string
---@field PassivePost string

---@class ShineHookLibrary
local ShineHookLibrary = {}

---@param event string
---@param name string
---@param fn fun(...): any
---@param priority? number
function ShineHookLibrary.Add(event, name, fn, priority) end

---@param event string
---@param name string
function ShineHookLibrary.Remove(event, name) end

---@param event string
---@param methodName string
---@param callback string|fun(oldFunc:function, ...): any
---@param mode? string
function ShineHookLibrary.SetupClassHook(event, methodName, callback, mode) end

---@param globalName string
---@param callback string|fun(oldFunc:function, ...): any
---@param mode? string
function ShineHookLibrary.SetupGlobalHook(globalName, callback, mode) end

---@param event string
---@param ... any
---@return any
function ShineHookLibrary.Call(event, ...) end

---@class ShineTimerLibrary
local ShineTimerLibrary = {}

---@param name string
---@param delay number
---@param reps number
---@param callback fun()
function ShineTimerLibrary.Create(name, delay, reps, callback) end

---@param name string
function ShineTimerLibrary.Destroy(name) end

---@class ShineScreenTextLibrary
local ShineScreenTextLibrary = {}

---@param id string
---@param data table
---@return table
function ShineScreenTextLibrary.Add(id, data) end

---@param id string
---@param text string
function ShineScreenTextLibrary.SetText(id, text) end

---@param id string
function ShineScreenTextLibrary.Remove(id) end

---@class ShineMap
local ShineMap = {}

---@class ShineSet
local ShineSet = {}

---@class ShinePlugin
---@field [string] any
local ShinePlugin = {}

---@param client ServerClient
---@param permission string
---@return boolean
function ShinePlugin:HasAccess(client, permission) end

---@return boolean
function ShinePlugin:Initialise() end

function ShinePlugin:Cleanup() end

---@param name string
---@param fields table
---@param target? string
function ShinePlugin:AddNetworkMessage(name, fields, target) end

---@param baseName string
---@param fields table
---@param target? string
function ShinePlugin:AddNetworkMessages(baseName, fields, target) end

---@param definition string
---@param name string
---@param defaultValue any
function ShinePlugin:AddDTVar(definition, name, defaultValue) end

---@param player Entity|nil
---@param r integer
---@param g integer
---@param b integer
---@param message string
---@param ... any
function ShinePlugin:NotifyColour(player, r, g, b, message, ...) end

---@param player Entity|nil
---@param r1 integer
---@param g1 integer
---@param b1 integer
---@param text1 string
---@param r2 integer
---@param g2 integer
---@param b2 integer
---@param text2 string
---@param ... any
function ShinePlugin:NotifyDualColour(player, r1, g1, b1, text1, r2, g2, b2, text2, ...) end

---@class ShineClass
---@field Hook ShineHookLibrary
---@field Timer ShineTimerLibrary
---@field ScreenText ShineScreenTextLibrary
---@field Config table
---@field IsNS2Combat boolean
---@field PlayerInfoHub table
---@field ExternalAPIHandler table
---@field VoteMenu table|nil
---@field VoteButtonBound boolean|nil
---@field VoteButton string|nil
Shine = Shine or {}

---@param ... any
---@return ShinePlugin
function Shine.Plugin(...) end

---@param name string
---@param enabled? boolean
---@param ... any
function Shine:RegisterExtension(name, enabled, ...) end

---@param extensionName string
---@return boolean, table
function Shine:IsExtensionEnabled(extensionName) end

---@param client ServerClient
---@return boolean
function Shine.IsValidClient(client) end

---@param client ServerClient
---@param permission string
---@return boolean
function Shine.HasAccess(client, permission) end

---@return ServerClient[], number
function Shine.GetAllClients() end

---@return Entity[], number
function Shine.GetAllPlayers() end

---@return fun(): ServerClient
function Shine.IterateClients() end

---@param ns2ID integer
---@return ServerClient|nil
function Shine.GetClientByNS2ID(ns2ID) end

---@param client ServerClient
---@return string
function Shine.GetClientName(client) end

---@param client ServerClient
---@return string
function Shine.GetClientInfo(client) end

---@return integer
function Shine.GetHumanPlayerCount() end

---@return string
function Shine.GetGamemode() end

---@param teamNumber integer
---@param withPrefix? boolean
---@return string
function Shine:GetTeamName(teamNumber, withPrefix) end

---@param teamNumber integer
---@param withPrefix? boolean
---@return string
function Shine.GetTeamName(teamNumber, withPrefix) end

---@param value any
---@param typeName string
---@return boolean
function Shine.IsType(value, typeName) end

---@param format string
---@param isFormat? boolean
---@param ... any
function Shine:Print(format, isFormat, ...) end

---@param format string
---@param ... any
function Shine:LogString(format, ...) end

---@param command string
---@param callback fun(client: ServerClient, ...): any
---@return table
function Shine:RegisterCommand(command, callback) end

---@param player Entity|nil
---@param r integer
---@param g integer
---@param b integer
---@param message string
---@param ... any
function Shine:NotifyColour(player, r, g, b, message, ...) end

---@param player Entity|nil
---@param r1 integer
---@param g1 integer
---@param b1 integer
---@param text1 string
---@param r2 integer
---@param g2 integer
---@param b2 integer
---@param text2 string
---@param ... any
function Shine:NotifyDualColour(player, r1, g1, b1, text1, r2, g2, b2, text2, ...) end

---@param r1 integer
---@param g1 integer
---@param b1 integer
---@param text1 string
---@param r2 integer
---@param g2 integer
---@param b2 integer
---@param text2 string
function Shine.AddChatText(r1, g1, b1, text1, r2, g2, b2, text2) end

---@param message string
function Shine.AddStartupMessage(message) end

---@return ShineMap
function Shine.Map() end

---@return ShineSet
function Shine.Set() end

---@param path string
---@return table|nil
function Shine.LoadJSONFile(path) end

---@param data table
---@param path string
---@return boolean
function Shine.SaveJSONFile(data, path) end

---@param path string
---@return string|nil
function Shine.ReadFile(path) end

---@param path string
---@param content string
---@return boolean
function Shine.WriteFile(path, content) end

---@return string
function Shine.GetDate() end

---@param endpoint string
---@param method string
---@param body string|table
---@param callbacks table
---@param retries? integer
---@param timeout? number
function Shine.HTTPRequestWithRetry(endpoint, method, body, callbacks, retries, timeout) end

---@param endpoint string
---@param method string
---@param body string|table
---@param onSuccess fun(response:any)
---@param onFailure? fun(err:any)
---@param timeout? number
function Shine.TimedHTTPRequest(endpoint, method, body, onSuccess, onFailure, timeout) end

---@param apiName string
---@param config table
function Shine.RegisterExternalAPI(apiName, config) end

---@param apiName string
---@param endpointName string
---@param config table
function Shine.RegisterExternalAPIEndPoint(apiName, endpointName, config) end

---@param steamID integer|string
---@return string
function Shine.NS2IDTo64(steamID) end
