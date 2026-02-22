---
--- WebView interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class WebView
local WebView = {}

---@param url string
function WebView:LoadUrl(url) end

---@return boolean
function WebView:GetUrlLoaded() end

---@param targetName string
function WebView:SetTargetTexture(targetName) end

---@param x number
---@param y number
function WebView:OnMouseMove(x, y) end

---@param button number
function WebView:OnMouseDown(button) end

---@param button number
function WebView:OnMouseUp(button) end

---@param vertPixels number
---@param horzPixels number
function WebView:OnMouseWheel(vertPixels, horzPixels) end

---@param visible boolean
function WebView:SetIsVisible(visible) end

---@param down boolean
function WebView:OnEnter(down) end

---@param down boolean
function WebView:OnBackSpace(down) end

---@param down boolean
function WebView:OnSpace(down) end

---@param down boolean
function WebView:OnEscape(down) end

---@param character number
function WebView:OnSendCharacter(character) end

---@param enable boolean
function WebView:SetGreenScreen(enable) end

---@param callback function
function WebView:HookJSAlert(callback) end

---@param jsScript string
function WebView:ExecuteJS(jsScript) end

--- Call to force a redraw of the web view texture.  Don't spam this...
function WebView:RefreshTexture() end

return WebView