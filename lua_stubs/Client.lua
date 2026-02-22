---
--- Client interface stub for EmmyLua
--- Auto-generated from JSON documentation
---

---@class Resolution
Resolution = {}

---@class SoundEventInstance
SoundEventInstance = {}

---@param setParentId number
function SoundEventInstance:SetParent(setParentId) end

---@return number
function SoundEventInstance:GetParent() end

---@param coords Coords
function SoundEventInstance:SetCoords(coords) end

---@param paramName string
---@param value number
---@param seekSpeed number
---@return boolean
function SoundEventInstance:SetParameter(paramName, value, seekSpeed) end

---@return boolean
function SoundEventInstance:GetIsPlaying() end

---@param volume number
function SoundEventInstance:SetVolume(volume) end

---@param minDistance number
function SoundEventInstance:SetMinDistance(minDistance) end

---@param maxDistance number
function SoundEventInstance:SetMaxDistance(maxDistance) end

---@param pitch number
function SoundEventInstance:SetPitch(pitch) end

---@param rolloff SoundSystem.Rolloff
function SoundEventInstance:SetRolloff(rolloff) end

---@param positional boolean
function SoundEventInstance:SetPositional(positional) end

function SoundEventInstance:Start() end

function SoundEventInstance:Stop() end

---@class Frustum
Frustum = {}

---@param pointIndex number
---@return Vector
function Frustum:GetPoint(pointIndex) end

---@class Shared
Shared = {}

--- Return number of input moves that have been dropped since game start. Used to detect moves lost due to network blackouts.
---@return number
function Shared.GetNumDroppedMoves() end

--- Returns the number of seconds that have elapsed since some reference point in the past. Because the exact reference time is not specified, this should only be used as deltas.
---@return number
function Shared.GetTime() end

--- Returns a vector starting from the camera going into the world.
---@param x number
---@param y number
---@return Vector
function Shared.CreatePickingRayXY(x, y) end

--- Translates a point in the world to screen space.
---@param worldPoint Vector
---@return Vector
function Shared.WorldToScreen(worldPoint) end

--- Caches a sound locally on the Client.
---@param fileName string
function Shared.PrecacheLocalSound(fileName) end

--- Assigns a callback to be called when a message of the specified type is received.
---@param name string
---@param callback function
function Shared.HookNetworkMessage(name, callback) end

--- Sends a message to the Server. The variables must match what was defined when this network message was registered.
---@param messageName string
---@param variables table
function Shared.SendNetworkMessage(messageName, variables) end

--- Sends a message to the Server. The variables must match what was defined when this network message was registered. Pass in true to reliable to ensure this message is received.
---@param messageName string
---@param variables table
---@param reliable boolean
function Shared.SendNetworkMessage(messageName, variables, reliable) end

--- Returns the number of available displays.
---@return number
function Shared.GetNumDisplays() end

--- Returns the number of available window modes.
---@return number
function Shared.GetNumWindowModes() end

--- Returns the window mode for the specified index.
---@param modeIndex number
---@return WindowMode
function Shared.GetWindowMode(modeIndex) end

--- Retrieves information about the display's native mode. This can be used to determine the aspect ratio of the monitor, etc.
---@return Resolution
function Shared.GetStartupResolution() end

--- Returns the number of display modes for the device. Information about the individual display modes can be retrieved by calling Client.GetResolution
---@return number
function Shared.GetNumResolutions() end

--- Retrieves information about the specified display mode based on the index passed in. The index is 1 based.
---@param modeIndex number
---@return Resolution
function Shared.GetResolution(modeIndex) end

--- Returns the local player entity (may be NULL before the connection process is complete).
---@return Entity
function Shared.GetLocalPlayer() end

--- Returns true if the client is controlling a player, false if they are spectating.
---@return boolean
function Shared.GetIsControllingPlayer() end

--- Creates a new Cinematic instance in the world.
---@return Cinematic
function Shared.CreateCinematic() end

--- Creates a new Cinematic instance in the world into the specified RenderScene.Zone.
---@param zone RenderScene.Zone
---@return Cinematic
function Shared.CreateCinematic(zone) end

--- Creates a new Cinematic instance in the world into the specified RenderScene.Zone.
---@param zone RenderScene.Zone
---@param ignoreCollision boolean
---@return Cinematic
function Shared.CreateCinematic(zone, ignoreCollision) end

--- Creates a new Cinematic instance in the world into the specified RenderScene.Zone. Allows for optional empty collision scene internal to cinematic (thus does not interact with Game world collision scene. Also grants a means to override default particle render-culling behavior so particles will always be rendered even if the emitter was not visible when created or not visible last render frame.
---@param zone RenderScene.Zone
---@param ignoreCollision boolean
---@param ignoreLastFrameCull boolean
---@return Cinematic
function Shared.CreateCinematic(zone, ignoreCollision, ignoreLastFrameCull) end

--- Destroys a Cinematic instance previously created with Client.CreateCinematic.
---@param cinematic Cinematic
function Shared.DestroyCinematic(cinematic) end

--- Destroys any cinematics attached to the specified entity.
---@param entity Entity
function Shared.DestroyAttachedCinematics(entity) end

--- Create reverb object at location with 100% audibility within minDistance radius and no effect when past maxDistance. Uses reverb name from FMOD Designer file.
---@param reverbName string
---@param origin Vector
---@param minDistance number
---@param maxDistance number
function Shared.CreateReverb(reverbName, origin, minDistance, maxDistance) end

--- Destroys all created reverb objects.
function Shared.DestroyReverbs() end

--- Destroys all created DSPs and sound geometry.
function Shared.ResetSoundSystem() end

--- Returns a new Sound Effect using the passed in resource index. The new sound effect does not automatically play. Use Shared.GetSoundIndex to convert a sound name to an index.
---@param soundResourceIndex number
---@return SoundEventInstance
function Shared.CreateSoundEffect(soundResourceIndex) end

--- Destroys a Sound Effect instance previously created with Client.CreateSoundEffect.
---@param instance SoundEventInstance
function Shared.DestroySoundEffect(instance) end

--- Creates a DSP Effect, returning the Id for this new DSP.
---@param dspType SoundSystem.DSP
---@return number
function Shared.CreateDSP(dspType) end

--- Enables or disables a DSP that will apply to all of the sound effects.
---@param dspId number
---@param state boolean
---@return boolean
function Shared.SetDSPActive(dspId, state) end

--- Adjusts a floating point parameter on a DSP based on the Id passed in.
---@param dspId number
---@param parameterIndex number
---@param parameterValue number
---@return boolean
function Shared.SetDSPFloatParameter(dspId, parameterIndex, parameterValue) end

--- MinDistance is the minimum distance that the sound emitter will cease to continue growing louder at (as it approaches the listener). Within the mindistance it stays at the constant loudest volume possible. Outside of this mindistance it begins to attenuate. MaxDistance is the distance a sound stops attenuating at. Beyond this point it will stay at the volume it would be at maxdistance units from the listener and will not attenuate any more.
---@param minDistance number
---@param maxDistance number
function Shared.SetMinMaxSoundDistance(minDistance, maxDistance) end

--- Set parameter value in currently playing sound. Used to alter sound playback using game state. Returns false on error. Seek speed the rate which the parameter is adjusted over time (avoid jarring).
---@param parent Entity
---@param soundName string
---@param paramName string
---@param seekSpeed number
---@param paramValue number
---@return boolean
function Shared.SetSoundParameter(parent, soundName, paramName, seekSpeed, paramValue) end

--- Enables or disables the sound geometry used to occlude sound effects based on the listener's position.
---@param setEnabled boolean
function Shared.SetSoundGeometryEnabled(setEnabled) end

--- Creates a new render camera in the client's scene. The camera should be destroyed by calling Client.DestroyRenderCamera.
---@return RenderCamera
function Shared.CreateRenderCamera() end

--- Destroys a render camera previously created by calling Client.CreateRenderCamera.
---@param camera RenderCamera
function Shared.DestroyRenderCamera(camera) end

--- Creates a new Render Light in the Client's scene.
---@return RenderLight
function Shared.CreateRenderLight() end

--- Destroys a Render Light previously created with Client.CreateRenderLight.
---@param light RenderLight
function Shared.DestroyRenderLight(light) end

--- Creates a new Render Billboard in the Client's scene.
---@return RenderBillboard
function Shared.CreateRenderBillboard() end

--- Destroys a Render Billboard previously created with Client.CreateRenderBillboard.
---@param billboard RenderBillboard
function Shared.DestroyRenderBillboard(billboard) end

--- Creates a new Render Reflection Probe in the Client's scene.
---@return RenderReflectionProbe
function Shared.CreateRenderReflectionProbe() end

--- Destroys a Render Reflection Probe previously created with Client.CreateRenderReflectionProbe.
---@param refectionProbe RenderReflectionProbe
function Shared.DestroyRenderReflectionProbe(refectionProbe) end

--- Creates a new RenderFogMeshVolume in the Client's scene.
---@return RenderFogMeshVolume
function Shared.CreateRenderFogMeshVolume() end

--- Destroys a RenderFogMeshVolume previously created with Client.CreateRenderFogMeshVolume.
---@param renderFogMeshVolume RenderFogMeshVolume
function Shared.DestroyRenderFogMeshVolume(renderFogMeshVolume) end

--- Creates a new RenderFogSphereVolume in the Client's scene.
---@return RenderFogSphereVolume
function Shared.CreateRenderFogSphereVolume() end

--- Destroys a RenderFogSphereVolume previously created with Client.CreateRenderFogSphereVolume.
---@param renderFogSphereVolume RenderFogSphereVolume
function Shared.DestroyRenderFogSphereVolume(renderFogSphereVolume) end

--- Creates a new RenderWetMapVolume in the Client's scene.
---@return RenderWetMapVolume
function Shared.CreateRenderWetMapVolume() end

--- Destroys a RenderWetMapVolume previously created with Client.CreateRenderWetMapVolume.
---@param renderWetMapVolume RenderWetMapVolume
function Shared.DestroyRenderWetMapVolume(renderWetMapVolume) end

--- Creates a new Render Color Grading in the Client's scene.
---@return RenderColorGrading
function Shared.CreateRenderColorGrading() end

--- Destroys a Render Color Grading previously created with Client.CreateRenderColorGrading.
---@param colorGrading RenderColorGrading
function Shared.DestroyRenderColorGrading(colorGrading) end

--- Creates a new Render Decal in the Client's scene.
---@return RenderDecal
function Shared.CreateRenderDecal() end

--- Destroys a Render Decal previously created with Client.CreateRenderDecal.
---@param decal RenderDecal
function Shared.DestroyRenderDecal(decal) end

--- Creates a new Render Material in the Client's scene.
---@return RenderMaterial
function Shared.CreateRenderMaterial() end

--- Destroys a Render Material previously created with Client.CreateRenderMaterial.
---@param material RenderMaterial
function Shared.DestroyRenderMaterial(material) end

--- Creates a new Render Model in the Client's scene in the specified RenderScene.Zone.
---@param zone RenderScene.Zone
---@return RenderModel
function Shared.CreateRenderModel(zone) end

--- Destroys a Render Model previously created with Client.CreateRenderModel.
---@param model RenderModel
function Shared.DestroyRenderModel(model) end

--- Creates a new Render Model Array in the Client's scene in the specified RenderScene.Zone. maxModels is used to determine the maximum size of this array.
---@param zone RenderScene.Zone
---@param maxModels number
---@return RenderModelArray
function Shared.CreateRenderModelArray(zone, maxModels) end

--- Destroys a Render Model Array previously created with Client.CreateRenderModelArray.
---@param modelArray RenderModelArray
function Shared.DestroyRenderModelArray(modelArray) end

--- Creates a new Dynamic Render Model in the Client's scene in the specified zone.
---@param zone RenderScene.Zone
---@return RenderDynamicMesh
function Shared.CreateRenderDynamicMesh(zone) end

--- Destroys a Dynamic Render Model previously created with Client.CreateRenderDynamicMesh.
---@param mesh RenderDynamicMesh
function Shared.DestroyRenderDynamicMesh(mesh) end

--- Sets the visibility state of a level group at run-time.
---@param groupName string
---@param state boolean
function Shared.SetGroupIsVisible(groupName, state) end

--- Sets the field of view (radians) for a render scene zone.
---@param zone RenderScene.Zone
---@param fov number
function Shared.SetZoneFov(zone, fov) end

--- Gets the field of view (radians) for a render scene zone.
---@param zone RenderScene.Zone
---@return number
function Shared.GetZoneFov(zone) end

--- Sets the fog depth-scale factor for a render scene zone.
---@param zone RenderScene.Zone
---@param fogDepthScale number
function Shared.SetZoneFogDepthScale(zone, fogDepthScale) end

--- Gets the fog depth-scale factor for a render scene zone.
---@param zone RenderScene.Zone
---@return number
function Shared.GetZoneFogDepthScale(zone) end

--- Sets the fog color for a render scene zone.
---@param zone RenderScene.Zone
---@param fogColor Color
function Shared.SetZoneFogColor(zone, fogColor) end

--- Gets the fog color for a render scene zone.
---@param zone RenderScene.Zone
---@return Color
function Shared.GetZoneFogColor(zone) end

--- Creates a Screen Effect based on the passed in script file name and returns a reference to it.
---@param screenEffectFile string
---@return ScreenEffect
function Shared.CreateScreenEffect(screenEffectFile) end

--- Creates a Screen Effect based on the passed in script file name and returns a reference to it.  You can pass in an extra "mask" value to choose which render scene the screen effect is applied to (eg 0x01 is the main render scene (and passed by default), while 0x08 is the customize menu's render scene).
---@param screenEffectFile string
---@param mask number
---@return ScreenEffect
function Shared.CreateScreenEffect(screenEffectFile, mask) end

--- Destroys a Screen Effect previously created with Client.CreateScreenEffect.
---@param screenEffect ScreenEffect
function Shared.DestroyScreenEffect(screenEffect) end

--- Creates a new Web View at the specified resolution.
---@param xSize number
---@param ySize number
---@return WebView
function Shared.CreateWebView(xSize, ySize) end

--- Destroys a Web View previously created with Client.CreateWebView.
---@param webView WebView
function Shared.DestroyWebView(webView) end

--- Creates a new GUI View at the specified resolution.
---@param xSize number
---@param ySize number
---@return GUIView
function Shared.CreateGUIView(xSize, ySize) end

---@param xSize number
---@param ySize number
---@param srgb boolean
---@return GUIView
function Shared.CreateGUIView(xSize, ySize, srgb) end

--- Destroys a GUI View previously created with Client.CreateGUIView.
---@param guiView GUIView
function Shared.DestroyGUIView(guiView) end

--- Returns true if the Client is experiencing connection problems with the Server.
---@return boolean
function Shared.GetConnectionProblems() end

--- Returns true if the move buffer is full. This is caused by failing to send moves to the Server. This can happen if the Server went down unexpectedly or something interrupted the connection.
---@return boolean
function Shared.GetMoveBufferAtMax() end

--- Returns the voice channel the player is recording on, or VoiceChannel_Invalid if not recording
---@return number
function Shared.GetVoiceChannelForRecording() end

--- Returns the voice channel the client is using, or VoiceChannel_Invalid if not speaking
---@param clientId number
---@return number
function Shared.GetVoiceChannelForClient(clientId) end

--- Play sound locally at the location specified. Use Shared.GetSoundIndex to convert a sound name to an index.
---@param soundIndex number
---@param origin Vector
function Shared.PlayLocalSoundWithIndex(soundIndex, origin) end

--- Stops a sound at a location previously played with Client.PlayLocalSoundWithIndex.
---@param soundIndex number
---@param origin Vector
function Shared.StopLocalSoundWithIndex(soundIndex, origin) end

--- Sets the minimum time a network snapshot is kept around. This controls how far back in time SetLocalInterpDelta can take you.
Note: consumes about 200-500kb/sec, so using it for full game replays may be a bad idea.
---@param deltaTime number
function Shared.SetTimeBuffer(deltaTime) end

--- Sets the local interp value difference. Must be > 0 and are limited by the time buffer (it will not let you set time
to before the first saved network snapshot. Returns the actual deltaTime (normally the same, unless you try setting it to < 0
or > the first saved network snapshot).
---@param deltaTime number
---@return number
function Shared.SetLocalInterpDelta(deltaTime) end

--- Sets the RenderCamera to render the scene with.
---@param camera RenderCamera
function Shared.SetRenderCamera(camera) end

--- Sets whether or not sound effects attached to the player entity should be attached to the camera.  If false, sound effects will be attached to the entity.  This is necessary because if we are in first person view but we attach sound effects to entities, the sound will stutter and be inconsistently balanced due to the interpolation in the entity's movement coupled with the frame delay of the world update versus the world render.
---@param state boolean
function Shared.SetFirstPersonSound(state) end

--- Draws a line of text to the screen in the next frame. This must be called every frame to continue to see the text.
---@param output string
function Shared.ScreenMessage(output) end

--- Returns the name of the server this Client is currently connected to.
---@return string
function Shared.GetConnectedServerName() end

--- Returns true if the Server that the Client is connected to has anti-cheat enabled.
---@return boolean
function Shared.GetConnectedServerIsSecure() end

--- Converts an ASCII string to a wide-character string.
---@param inString string
---@return wstring
function Shared.StringToWideString(inString) end

--- Converts a wide-character string to an ASCII string.
---@param inString wstring
---@return string
function Shared.WideStringToString(inString) end

--- Converts a wide-character string to an UTF8 string.
---@param inString wstring
---@return string
function Shared.WideStringToUTF8String(inString) end

--- Converts an UTF8 string to a wide-character string.
---@param inString string
---@return wstring
function Shared.UTF8StringToWideString(inString) end

--- Returns the current locale as a FourCC code.
---@return string
function Shared.GetLocale() end

--- Returns a localized string based on the Id passed in.
---@param inId string
---@return string
function Shared.ResolveString(inId) end

--- Returns if a localized string exists for the Id passed in as well as the same string result as ResolveString.
---@param inId string
---@return boolean
function Shared.TryResolveString(inId) end

--- Activate an achievement.
---@param achievementName string
function Shared.SetAchievement(achievementName) end

--- Deactivate an achievement.
---@param achievementName string
function Shared.ClearAchievement(achievementName) end

--- Returns true if an achievement has already been activated.
---@param achievementName string
---@return boolean
function Shared.GetAchievement(achievementName) end

--- Sets the value of a stat (used for achievements).
---@param statName string
---@param statData number
function Shared.SetStat(statName, statData) end

--- Returns the value of a stat (used for achievements).
---@param statName string
---@param defaultValue number
---@return number
function Shared.GetStat(statName, defaultValue) end

--- Removes a field from the options file.
---@param statName string
---@return boolean
function Shared.RemoveOption(statName) end

--- Applies the specified adjustment to the texture reduction to all files that match the pattern. The rule must be added before the texture is loaded for it to have an effect.
---@param pattern string
---@param reductionAdjustment number
function Shared.AddTextureLoadRule(pattern, reductionAdjustment) end

--- Clears all texture load rules. This must be called prior to adding rules, since the rules are persistent across Worlds.
function Shared.ClearTextureLoadRules() end

---@param value number
function Shared.SetRenderGammaAdjustment(value) end

--- Returns the Frustum of the Camera passed in.
---@param camera Camera
---@return Frustum
function Shared.GetCameraFrustum(camera) end

--- Set parameter value in currently playing sound. Used to alter sound playback using game state. Returns false on error. Seek speed the rate which the parameter is adjusted over time (avoid jarring).
---@param entity Entity
---@param soundEventName string
---@param parameterName string
---@param parameterValue number
---@param seekSpeed number
function Shared.SetSoundParameter(entity, soundEventName, parameterName, parameterValue, seekSpeed) end

--- Sets a value for a setting which will be supplied to the render scene.
---@param name string
---@param value string
function Shared.SetRenderSetting(name, value) end

--- Returns a value for a setting which will be supplied to the render scene.
---@param name string
---@param value number
function Shared.SetRenderSetting(name, value) end

--- Configure where the player hears sounds from (the ear position).
If entity set, listenin position is attached to entity with the given offset.
If entity is nil, but positionOrOffset is _not_, then the listening position is fixed at the given position.
if both are nil, the position will be default, ie attached to the camera position.
---@param entity Entity
---@param offset Vector
function Shared.ConfigureListener(entity, offset) end

--- Configure where player hears sounds from (the ear position).
If entity is set, listening position is attached to entity origin
if entity is nil, listening position is at default, ie at camera position.
---@param entity Entity
function Shared.ConfigureListener(entity) end

--- Configure where player hears sounds from (the ear position).
Sets the ear position at the given vector.
---@param position Vector
function Shared.ConfigureListener(position) end

--- Configure 3D world voice effects.
voiceVolumeMultiplier is used to change normal voice volume for in-world use (1.0-2.0?)
Strength controls initial strength and fall-of (0 - 10+) (equals to minDistance in FMOD::setMinMaxDistance)
Reverb how much of the current location reverb should affect it  (-10000 - 0); -10000 means none at all, 0 too much...
---@param voiceVolumeMultiplier number
---@param strength number
---@param reverb number
function Shared.ConfigureVoice(voiceVolumeMultiplier, strength, reverb) end

--- Start recording voice, replay is global ("radio").
function Shared.VoiceRecordStartGlobal() end

--- Start recording voice, replay is heard from the given position.
---@param position Vector
function Shared.VoiceRecordStartPosition(position) end

--- Start recording voice, replay is heard at the given offset from the entity (null == local player).
---@param entity Entity
---@param offset Vector
function Shared.VoiceRecordStartEntity(entity, offset) end

--- Stops recording from the input device.
function Shared.VoiceRecordStop() end

--- Returns the name of the device being used to perform rendering.
---@return string
function Shared.GetRenderDeviceName() end

--- Returns the names of the device being used to perform rendering.
---@return table
function Shared.GetRenderDeviceNames() end

--- Configure the physics culling. Defines the view frustrum. any entity < minDistance away will pass through, any entity at > maxDistance will be culled. Disable by setting maxDistance to <= 0
---@param viewPoint Vector
---@param viewAngles Angles
---@param fovDegrees number
---@param minDistance number
---@param maxDistance number
function Shared.ConfigurePhysicsCuller(viewPoint, viewAngles, fovDegrees, minDistance, maxDistance) end

--- Indicates to the user that the game window needs attention, causing the taskbar icon to flash.
function Shared.WindowNeedsAttention() end

--- Set number of retries before a client gives up on download mods. Defaults to 10.
---@param maxRetries number
function Shared.SetMaxModDownloadRetries(maxRetries) end

--- Returns the number of script errors encountered on the server this client is connected to.
---@return number
function Shared.GetConnectedServerNumScriptErrors() end

--- Returns the performance score of the server this client is connected to.
---@return number
function Shared.GetConnectedServerPerformanceScore() end

--- Returns the string value of the passed in option name. The defaultValue is used if there is no matching option. 
Note: Writing is not available until ClientLoaded.
---@param name string
---@param defaultValue string
---@return string
function Shared.GetOptionString(name, defaultValue) end

--- Returns the integer value of the passed in option name. The defaultValue is used if there is no matching option.
Note: Writing is not available until ClientLoaded.
---@param name string
---@param defaultValue number
---@return number
function Shared.GetOptionInteger(name, defaultValue) end

--- Returns the 64 integer value of the passed in option name. The defaultValue is used if there is no matching option.
Note: Writing is not available until ClientLoaded.
---@param name string
---@param defaultValue number
---@return number
function Shared.GetOptionInteger64(name, defaultValue) end

--- Returns the float value of the passed in option name. The defaultValue is used if there is no matching option. 
Note: Writing is not available until ClientLoaded.
---@param name string
---@param defaultValue number
---@return number
function Shared.GetOptionFloat(name, defaultValue) end

--- Returns the boolean value of the passed in option name. The defaultValue is used if there is no matching option.
Note: Writing is not available until ClientLoaded.
---@param name string
---@param defaultValue boolean
---@return boolean
function Shared.GetOptionBoolean(name, defaultValue) end

--- Returns if the passed in option name has been set
---@param name string
---@return boolean
function Shared.HasSetOptionString(name) end

--- Returns if the passed in option name has been set.
---@param name string
---@return boolean
function Shared.HasSetOptionInteger(name) end

--- Returns if the passed in option name has been set.
---@param name string
---@return boolean
function Shared.HasSetOptionFloat(name) end

--- Returns if the passed in option name has been set.
---@param name string
---@return boolean
function Shared.HasSetOptionBoolean(name) end

--- Returns the last time the render device was reset.  (Compare against your own time to see if certain graphical elements need to be re-created!) Enable/disable a rectangle to not draw inside of with the main camera.  Used to prevent the main camera from wasting performance on drawing behind where the player customize menu will be drawn.
---@param state boolean
function Shared.SetMainCameraExclusionRectEnabled(state) end

--- Set the coordinates of the above-mentioned rectangle.  Coordinates are in screen-space pixel coordinates (same as the GUI system's coordinates.
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
function Shared.SetMainCameraExclusionRect(x0, y0, x1, y1) end

--- Returns if the game is installed on a hard disk instead of a SSD.
---@return boolean
function Shared.GetIsOnSlowDisk() end

--- Returns the name of the Steam branch client is currently running.
---@return string
function Shared.GetSteamBranch() end

--- Simple bool to denote if Client has active/live connection to Steam. Note: the client will attempt reconnect when Steam is unavailable, so this is not a stateful flag.
---@return boolean
function Shared.GetIsSteamAvailable() end

--- Simple hashing function that takes input string and returns hashed results.
---@param strToHash string
---@return number
function Shared.GetStringHashed(strToHash) end

--- Returns the lobbyId passed to client, when launched, via the +connect_lobby command line parameter. This is added automatically by Steamworks when a client accepts a lobby invite while not in-game
---@return string
function Shared.GetOnLaunchLobbyId() end

--- Returns the number of Clients in a given Steamworks Lobby
---@param lobbyId string
---@return number
function Shared.GetNumLobbyMembers(lobbyId) end

--- Returns a numerically indexed table containing the steamid(64) of all members for the supplied lobbyId
---@param lobbyId string
---@param list table
---@return boolean
function Shared.GetLobbyMembersList(lobbyId, list) end

--- For a given lobbyId, returns the SteamID64 of the member that owns the lobby. This only works when local-client is a member of the lobby.
---@param lobbyId string
---@return string
function Shared.GetLobbyOwnerId(lobbyId) end

--- Returns true if the Client is currently connected to a server.
---@return boolean
function Shared.GetIsConnected() end

--- Returns true if the client is running it's own local listen server.
---@return boolean
function Shared.GetIsRunningServer() end

--- Forces client to update at full-rate regardless of window state
---@param active boolean
function Shared.SetLocalThunderdomeMode(active) end

--- Getter for console or cmd-line set verbose level value.
---@return number
function Shared.GetVerbosityLevel() end

--- Returns true if some mods are in the process of being installed or updated.
---@return boolean
function Shared.GetIsRunningModUpdates() end
