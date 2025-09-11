local addonName, addon = ...

print("|cff33ff99[RXP]|r Map.lua loaded on this client")

local _rxpProbe = CreateFrame("Frame")
_rxpProbe:RegisterEvent("ADDON_LOADED")
_rxpProbe:RegisterEvent("PLAYER_DEAD")
_rxpProbe:RegisterEvent("PLAYER_UNGHOST")
_rxpProbe:SetScript("OnEvent", function(_, ev, arg1)
  if ev=="ADDON_LOADED" and arg1=="RXPGuides" then
    print("|cff33ff99[RXP]|r ADDON_LOADED: RXPGuides")
  else
    print("|cff33ff99[RXP]|r EVENT:", ev)
  end
end)



local _G = _G

local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")
addon.activeWaypoints = {}
addon.linePoints = {}

local MapPinPool = {}
local MapLinePool = {}
local worldMapFramePool, miniMapFramePool, lineMapFramePool

addon.arrowFrame = CreateFrame("Frame", "RXPG_ARROW", UIParent)
local af = addon.arrowFrame

function addon.arrowFrame:UpdateVisuals()
    self.texture:SetTexture(addon.GetTexture(
        "rxp_navigation_arrow-1"))
end

local function IsInInstance()
    if _G.IsInInstance() and not select(2, GetInstanceInfo()) == "scenario" then
        return true
    end
end

addon.enabledFrames["arrowFrame"] = af
af.IsFeatureEnabled = function ()
    local shown = not addon.settings.profile.disableArrow and (addon.hideArrow ~= nil and not addon.hideArrow)
    return shown,false
end

--local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
af:SetMovable(true)
af:EnableMouse(1)
af:SetClampedToScreen(true)
af:SetSize(32, 32)
af.texture = af:CreateTexture()
af.texture:SetAllPoints()
-- af.texture:SetScale(0.5)
af.text = af:CreateFontString(nil, "OVERLAY")
af.text:SetJustifyH("CENTER")
af.text:SetJustifyV("MIDDLE")
af.text:SetPoint("TOP", af, "BOTTOM", 0, -5)
af.orientation = 0
af.distance = 0
af.lowerbound = math.pi / 64 -- angle in radians
af.upperbound = 2 * math.pi - af.lowerbound

af:SetPoint("TOP")
af:Hide()

af:SetScript("OnMouseDown", function(self, button)
    if not addon.settings.profile.lockFrames and af:GetAlpha() ~= 0 then af:StartMoving() end
end)
af:SetScript("OnMouseUp", function(self, button)
    self:StopMovingOrSizing()
    addon.settings:SaveFramePositions()
end)

function addon.SetupArrow()
    af.text:SetFont(addon.font, 9,"OUTLINE")
    af.texture:SetTexture(addon.GetTexture("rxp_navigation_arrow-1"))
    af.text:SetTextColor(unpack(addon.activeTheme.textColor))

    addon.arrowFrame:SetScript("OnUpdate", addon.DrawArrow)
end

function addon.DrawArrow(self)
    self = self or addon.arrowFrame

    if addon.settings.profile.disableArrow or not self then return end
    if af.wrongContinent then
        -- If first time setting wrong continent, notify player
        if self.text:GetText() ~= "~" then
            addon.comms.PrettyPrint("%s %s", _G.ERR_TAXINOSUCHPATH, _G.SPELL_FAILED_INCORRECT_AREA)
        end

        af.alpha = 1
        af:SetAlpha(1)
        addon.hideArrow = true
        self.texture:SetRotation(0)
        self.text:SetText("~")
        return
    end

    local element = self.element
    if not element then return end

    local x, y, instance = HBD:GetPlayerWorldPosition()
    local angle, dist = HBD:GetWorldVector(instance, x, y, element.wx,
                                            element.wy)
    local facing = GetPlayerFacing()

    if not (dist and facing) then
        if af.alpha ~= 0 then
            af.alpha = 0
            af:SetAlpha(0)
        end
        return
    elseif af.alpha ~= 1 then
        af.alpha = 1
        af:SetAlpha(1)
    end

    local orientation = angle - facing
    local diff = math.abs(orientation - self.orientation)
    dist = math.floor(dist)

    if diff > self.lowerbound and diff < self.upperbound or self.forceUpdate then
        self.orientation = orientation
        self.texture:SetRotation(orientation)
        self.forceUpdate = false
    end

    if dist ~= self.distance then
        self.distance = dist
        local step = element.step
        local title = step and (step.title or step.index and ("Step "..step.index))
        if element.title then
            for RXP_ in string.gmatch(element.title, "RXP_[A-Z]+_") do
                element.title = element.title:gsub(RXP_, addon.guideTextColors[RXP_] or
                                                addon.guideTextColors.default["error"])
            end
            --self.text:SetText(string.format("%s\n(%dyd)",element.title, dist))
            self.text:SetText(string.format("%s\n(%dyd)",element.title, dist))
        elseif title then
            for RXP_ in string.gmatch(title, "RXP_[A-Z]+_") do
                title = title:gsub(RXP_, addon.guideTextColors[RXP_] or addon.guideTextColors.default["error"])
            end
            self.text:SetText(string.format("%s\n(%dyd)", title, dist))
        else
            self.text:SetText(string.format("(%dyd)", dist))
        end
    end

end

local function PinOnEnter(self)
    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
        return
    end
    local pin = self.activeObject
    local showTooltip
    if self.lineData then
        showTooltip = pin.step and pin.step.showTooltip and pin.step.elements
        if addon.settings.profile.debug then
            local line = self.lineData
            self:SetAlpha(0.5)
            print("Line start point:", line.sX, ",", line.sY)
            print("Line end point:", line.fX, ",", line.fY)
        end
        if showTooltip then
            local element = self.lineData.element
            for line in lineMapFramePool:EnumerateActive() do
                if line.lineData.element == element then
                    line:SetAlpha(0.3)
                end
            end
        end
    end

    _G.GameTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, 0)
    _G.GameTooltip:ClearLines()
    local lines = 0
    local lastStep

    for _, element in pairs(pin.elements or showTooltip or {}) do
        local parent = element.parent
        local text
        local step = element.step
        local icon = step.icon or ""
        local debug = ""
        if addon.settings.profile.debug then
            debug = format("%.3f,%.3f:",element.x or 0, element.y or 0)
        end
        icon = icon:gsub("(|T.-):%d+:%d+:","%1:0:0:")
        if parent and not parent.hideTooltip then
            local hiddentext = parent.hiddentext
            if hiddentext and hiddentext:len() < 8 then
                hiddentext = false
            end
            text = parent.mapTooltip or parent.tooltipText or hiddentext or parent.text or ""
            local title = step.mapTooltip or step.title or step.index and ("Step " .. step.index) or step.tip and "Tip"
            if title and title ~= lastStep then
                _G.GameTooltip:AddLine(addon.ReplaceNpcIds(icon..title),unpack(addon.colors.mapPins))
                lastStep = title
            end
            _G.GameTooltip:AddLine(addon.ReplaceNpcIds(debug..text))
            lines = lines + 1
        elseif not parent and not element.hideTooltip then
            local hiddentext = step.hiddentext
            if hiddentext and hiddentext:len() < 8 then
                hiddentext = false
            end
            text = element.mapTooltip or element.tooltipText or hiddentext or step.text or ""
            local title = step.mapTooltip or step.title or step.index and ("Step " .. step.index) or step.tip and "Tip"
            if title and step ~= lastStep then
                _G.GameTooltip:AddLine(addon.ReplaceNpcIds(icon..title),unpack(addon.colors.mapPins))
                lastStep = title
            end
            _G.GameTooltip:AddLine(addon.ReplaceNpcIds(debug..text))
            lines = lines + 1
        end
    end

    _G.GameTooltip:SetShown(lines > 0)
end

local function PinOnLeave(self)
    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
        return
    end
    local lineData = self.lineData
    if lineData then
        local element = lineData.element
        for line in lineMapFramePool:EnumerateActive() do
            if line.lineData.element == element then
                self:SetAlpha(line.lineData.lineAlpha or 1)
            end
        end
        addon.UpdateMap()
    end
    _G.GameTooltip:Hide()
end

-- The Frame Pool that will manage pins on the world and mini map
-- You must use a frame pool to aquire and release pin frames,
-- otherwise the pins will not be properly removed from the map.
local CreateFramePool
if _G.CreateSecureFramePool == _G.CreateFramePool then
    CreateFramePool = function(ref)
        local framePool = _G.CreateUnsecuredTexturePool(nil, nil, nil, "BackdropTemplate",ref.resetterFunc)
        framePool.createFunc = ref.creationFunc
        return framePool
    end
else
    CreateFramePool = function(ref)
        local framePool = _G.CreateFramePool()
        framePool.creationFunc = ref.creationFunc
        framePool.resetterFunc = ref.resetterFunc
        return framePool
    end
end

MapPinPool.create = function()
    local framePool = CreateFramePool(MapPinPool)

    return framePool
end

-- Create the Frame with the Frame Pool.
--
-- Because you cannot pass the pin data to the Frame Pool when acquiring a frame,
-- the frame is given a "render" function that can be used to bind the corect data
-- to the frame

MapPinPool.creationFunc = function(framePool)
    local f = CreateFrame("Button", nil, UIParent,
                          BackdropTemplateMixin and "BackdropTemplate")

    -- Styling
    f:SetBackdrop({
        bgFile = addon.GetTexture("white_circle"),
        insets = {left = 0, right = 0, top = 0, bottom = 0}
    })
    f:SetWidth(0)
    f:SetHeight(0)
    f:EnableMouse()
    f:SetMouseClickEnabled(false)
    f:Hide()
    -- Active Step Indicator (A Target Icon)
    f.inner = CreateFrame("Button", nil, f,
                          BackdropTemplateMixin and "BackdropTemplate")
    f.inner:SetBackdrop({
        bgFile = addon.GetTexture("map_active_step_target_icon"),
        insets = {left = 0, right = 0, top = 0, bottom = 0}
    })
    f.inner:SetPoint("CENTER", 0, 0)
    --f.inner:EnableMouse()

    -- Text
    f.text = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    f.text:SetTextColor(unpack(addon.colors.mapPins))
    f.text:SetFont(addon.font, 14, "OUTLINE")

    -- Renders the Pin with Step Information
    f.render = function(self, pin, isMiniMapPin)
        local element = pin.elements[1]
        local step = element.step or pin.step
        local icon = step.icon and step.icon:match("(|T.-:%d.*|t)")
        local label = icon or element.label or step.index or "*"
        self.activeObject = pin

        local r = self.text:GetTextColor()
        if r ~= addon.colors.mapPins[1] then
            self.text:SetTextColor(unpack(addon.colors.mapPins))
        end

        if not icon and #pin.elements > 1 then
            self.text:SetText(label .. "+")
        elseif step.alternateIcon and #pin.elements > 1 then
            icon = step.alternateIcon and step.alternateIcon:match("(|T.-:%d.*|t)") or icon
            label = icon
            self.text:SetText(label)
        else
            self.text:SetText(label)
        end

        self.text:Show()
        if addon.settings.profile.mapCircle and not isMiniMapPin and not icon then
            local size = math.max(self.text:GetWidth(), self.text:GetHeight()) + 8
            self.inner:Show()
            if step.active then
                self:SetAlpha(1)
                self:SetWidth(size + 3)
                self:SetHeight(size + 3)
                self:SetBackdropColor(0.0, 0.0, 0.0,
                                   addon.settings.profile.worldMapPinBackgroundOpacity)
                self.inner:SetBackdropColor(1, 1, 1, 1)
                self.inner:SetWidth(size + 3)
                self.inner:SetHeight(size + 3)

                self.text:SetFont(addon.font, 14, "OUTLINE")
            else
                self:SetBackdropColor(0.1, 0.1, 0.1,
                                   addon.settings.profile.worldMapPinBackgroundOpacity)
                self:SetWidth(size)
                self:SetHeight(size)

                self.inner:SetBackdropColor(0, 0, 0, 0)

                self.text:SetFont(addon.font, 9, "OUTLINE")
            end
            self.inner:SetPoint("CENTER", self, 0, 0)
            self.inner:SetWidth(size)
            self.inner:SetHeight(size)
            self.text:SetPoint("CENTER", self, 0, 0)
            self:SetScale(addon.settings.profile.worldMapPinScale)
            self:SetAlpha(pin.opacity)
        else
            --print('s3',GetTime())
            self.inner:Hide()

            if icon then
                self:SetBackdropColor(0, 0, 0, 0)
                self.text:SetFont(addon.font, 16, "OUTLINE")
                local x,y = icon:match("|T.-:(%d+):?(%d*)")
                x,y = tonumber(x), tonumber(y)
                x = x > 0 and x or 16
                y = y or 16
                self:SetSize(x,y)
                self.text:SetPoint("CENTER", self, 1, 0)
            elseif step.active and not isMiniMapPin then
                self:SetBackdropColor(0.0, 0.0, 0.0,
                                   addon.settings.profile.worldMapPinBackgroundOpacity)

                self.text:SetFont(addon.font, 14, "OUTLINE")
                self:SetWidth(self.text:GetStringWidth() + 3)
                self:SetHeight(self.text:GetStringHeight() + 5)
                self.text:SetPoint("CENTER", self, 1, 0)
            else
                local bgAlpha = isMiniMapPin and 0 or
                                    addon.settings.profile.worldMapPinBackgroundOpacity
                self:SetBackdropColor(0.1, 0.1, 0.1, bgAlpha)

                self.text:SetFont(addon.font, 9, "OUTLINE")
                self:SetWidth(self.text:GetStringWidth() + 3)
                self:SetHeight(self.text:GetStringHeight() + 5)
                self.text:SetPoint("CENTER", self, 1, 0)
            end

            local radius = element.radius
            if element.activationRadius and element.wx == element.xref and element.wy == element.yref then
                radius = element.activationRadius
            end
            if step.active and addon.settings.profile.debug and radius and not isMiniMapPin then

                radius = math.abs(radius)
                local zone = _G.WorldMapFrame:GetMapID()
                local w,h = HBD:GetZoneSize(zone)
                local canvas = _G.WorldMapFrame:GetCanvas()
                local scale = canvas:GetScale()

                --local a,b = WorldMapFrame.ScrollContainer:GetCurrentZoomRange()

                radius = radius * 2 * scale
                local x,y = radius/w,radius/h
                local width = canvas:GetWidth() * x
                local height = canvas:GetHeight() * y
                self:SetWidth(width)
                self:SetHeight(height)
                self:SetBackdropColor(0.1, 0.1, 0.1, 0.5)
            end

            self:SetScale(addon.settings.profile.worldMapPinScale)
            self:SetAlpha(pin.opacity)
        end

        -- Mouse Handlers
        self:SetScript("OnEnter", PinOnEnter)

        self:SetScript("OnLeave", PinOnLeave)

    end

    return f
end

-- Hides and disables the Frame when it is released
MapPinPool.resetterFunc = function(framePool, frame)
    frame:SetHeight(0)
    frame:SetWidth(0)
    frame:Hide()
    frame:EnableMouse(0)
    frame.currentPin = nil
end



MapLinePool.create = function()
    local framePool = CreateFramePool(MapLinePool)
    return framePool
end

-- Create the Frame with the Frame Pool.
--
-- Because you cannot pass the pin data to the Frame Pool when acquiring a frame,
-- the frame is given a "render" function that can be used to bind the corect data
-- to the frame
MapLinePool.creationFunc = function(framePool)
    local f = CreateFrame("Button", nil, _G.WorldMapFrame:GetCanvas());
    f.line = f.line or f:CreateLine();
    local border = f.border or f:CreateLine();
    border:SetColorTexture(0, 0, 0, 1);
    f.border = border

    f.render = function(self, coords)
        if coords.lineAlpha == 0 then
            self:Hide()
            return
        end
        f.activeObject = self
        local thickness = coords.linethickness or 2
        local alpha = coords.lineAlpha or 1
        self:SetAlpha(alpha)
        local canvas = _G.WorldMapFrame:GetCanvas()
        local width = canvas:GetWidth()
        local height = canvas:GetHeight()

        -- print(width,height)
        local sX, fX, sY, fY = coords.sX * width / 100, coords.fX * width / 100,
                               coords.sY * height / -100,
                               coords.fY * height / -100

        local lineWidth = abs(sX - fX) + thickness * 4
        local lineHeight = abs(sY - fY) + thickness * 4
        self:SetWidth(lineWidth);
        self:SetHeight(lineHeight);

        local xAnchor = max(sX, fX) - thickness * 2 - lineWidth / 2
        local yAnchor = min(sY, fY) + thickness * 2 + lineHeight / 2

        local line = self.line
        line:SetDrawLayer("OVERLAY", -5)
        line:SetStartPoint("TOPLEFT", sX - xAnchor, sY - yAnchor)
        line:SetEndPoint("TOPLEFT", fX - xAnchor, fY - yAnchor)
        line:SetColorTexture(unpack(addon.colors.mapPins))
        --line:SetTexture('interface/buttons/white8x8')
        line:SetThickness(thickness);

        local lborder = self.border
        lborder:SetDrawLayer("OVERLAY", -6)
        lborder:SetStartPoint("TOPLEFT", sX - xAnchor, sY - yAnchor)
        lborder:SetEndPoint("TOPLEFT", fX - xAnchor, fY - yAnchor)
        lborder:SetThickness(thickness + 2);
        lborder:SetAlpha(0.5)

        self:SetParent(canvas)
        self:SetFrameStrata(canvas:GetFrameStrata())
        self:SetFrameLevel(2010)
        --self:SetFrameStrata("FULLSCREEN_DIALOG")
        -- self:SetFrameLevel(3000)
        self:SetPoint("TOPLEFT", canvas, "TOPLEFT", xAnchor, yAnchor)
        self:EnableMouse(true)
        -- self:Show()

        f:SetScript("OnEnter",PinOnEnter)

        f:SetScript("OnLeave", PinOnLeave)
        --local _,_,px,py = line:GetStartPoint()
        --print('ok',coords.sX,coords.sY,';',coords.fX,coords.fY,'+',_G.WorldMapFrame:GetMapID())
        --print(width,height)

    end

    return f
end

-- Hides and disables the Frame when it is released
MapLinePool.resetterFunc = function(framePool, frame)
    frame:SetHeight(0)
    frame:SetWidth(0)
    frame:Hide()
    frame:EnableMouse(0)
    frame.step = nil
    frame.zone = nil
    frame.lineData = nil
    frame.activeObject = nil
end

worldMapFramePool = MapPinPool.create()
miniMapFramePool = MapPinPool.create()
lineMapFramePool = MapLinePool.create()

-- Calculates if a given element is close to any other provided pins
local function elementIsCloseToOtherPins(element, pins, isMiniMapPin)
    local overlap = addon.settings.profile.distanceBetweenPins or 1
    local pinDistanceMod, pinMaxDistance = 0, 0
    if isMiniMapPin then
        pinMaxDistance = 25
    else
        pinDistanceMod = 5e-5 * overlap ^ 2
        pinMaxDistance = 60 * overlap
    end
    for i, pin in ipairs(pins) do
        for j, pinElement in ipairs(pin.elements) do
            if not (pinElement.hidePin or element.hidePin) then
                local relativeDist, dist, dx, dy
                --if element.instance == pinElement.instance then
                    dist, dx, dy = HBD:GetWorldDistance(pinElement.instance,
                                                        pinElement.wx,
                                                        pinElement.wy,
                                                        element.wx, element.wy)
                --end
                if not isMiniMapPin then
                    local zx, zy = HBD:GetZoneSize(pin.zone)
                    if dx ~= nil and zx ~= nil then
                        relativeDist = (dx / zx) ^ 2 + (dy / zy) ^ 2
                    end
                    if (relativeDist and relativeDist < pinDistanceMod) or
                        (dist and dist < pinMaxDistance) then
                        return true, pin
                    end
                elseif dist and dist < pinMaxDistance then
                    return true, pin
                end

            end
        end
    end

    return false
end

local lsh = bit.lshift
local function GetPinHash(x,y,instance,element,step)
    local n = step and step.index or 0
    return ((instance + n) % 256) + lsh(math.floor(x*128),8) +
            lsh(math.floor(y*1024),15) + lsh((element % 128),25)
end
-- Creates a list of Pin data structures.
--
-- All of the filtering and combining of steps and elements by proximity
-- is done in this step up front. Then the pins are rendered as WoW Frames
-- using the MapPinPool.
local function generatePins(steps, numPins, startingIndex, isMiniMap)
    local pins = {}

    if addon.currentGuide.empty then return pins end
    local numActivePins = 0
    local numSteps = #steps
    local activeSteps = addon.RXPFrame.activeSteps

    local numActive = 0

    local function GetNumPins(step)
        if step then
            for _, element in pairs(step.elements) do
                if element.zone and element.wx and not element.hidePin then
                    numActive = numActive + 1
                end
            end
        end
    end

    for _, step in pairs(activeSteps) do GetNumPins(step) end

    for i = RXPCData.currentStep + 1, RXPCData.currentStep + numPins do
        local step = addon.currentGuide.steps[i]
        GetNumPins(step)
        if step and step.centerPins then
            numActive = numActive + #step.centerPins
        end
    end

    if numPins < numActive then numPins = numActive end

    -- Loop through the steps until we create the number of pins a user
    -- configures or until we reach the end of the current guide.

    local function ProcessMapPin(step,ignoreCounter)
        if not step then return end
        -- Loop through the elements in each step. Again, we check if we
        -- already created enough pins, then we check if the element
        -- should be included on the map.
        --
        -- If it should be, we calculate whether the element is close to
        -- other pins. If it is, we add the element to a previous pin.
        --
        -- If it is far enough away, we add a new pin to the map.
        local j = 1;
        local n = 0;
        local nCenter = step.centerPins and #step.centerPins or 0
        --print('cp',#step.centerPins)
        local nElements = #step.elements
        while (numActivePins < numPins or j <= nCenter or ignoreCounter) and j <= nElements + nCenter do
            local element
            if j > nCenter then
                element = step.elements[j-nCenter]
            else
                element = step.centerPins[j]
                --print('c1',element.x,element.y)
            end

            local skipWp = not(element.zone and element.x)
            if not element.wpHash and not skipWp then
                element.wpHash = GetPinHash(element.x,element.y,element.zone,n,step)
                n = n + 1
            end
            if not isMiniMap and step.active and not skipWp then
                local wpList = RXPCData.completedWaypoints[step.index or "tip"] or {}
                skipWp = wpList[element.wpHash] or element.skip
                wpList[element.wpHash] = skipWp
                RXPCData.completedWaypoints[element.step.index or "tip"] = wpList
            end

            if element.text and not element.label and not element.textOnly then
                element.label = tostring(step.index or "*")
            end

            if not skipWp and
                (not (element.parent and
                    (element.parent.completed or element.parent.skip)) and
                    not element.skip) then
                if not element.hidePin then
                    local closeToOtherPin, otherPin =
                        elementIsCloseToOtherPins(element, pins, isMiniMap)
                    if closeToOtherPin and not element.hidePin then
                        table.insert(otherPin.elements, element)
                    else
                        local pinalpha = 0
                        if isMiniMap then
                            pinalpha = 0.8
                        elseif element.step and element.step.active then
                            pinalpha = 1
                        else
                            pinalpha = math.max(0.4, 1 - (#pins * 0.05))
                        end
                        table.insert(pins, {
                            elements = {element},
                            opacity = pinalpha,
                            instance = element.instance,
                            wx = element.wx,
                            wy = element.wy,
                            zone = element.zone,
                            parent = element.parent,
                            wpHash = element.wpHash,
                            source = element,
                        })
                    end
                end
                if not isMiniMap then
                    table.insert(addon.activeWaypoints, element)
                end
                if not element.hidePin then
                    numActivePins = numActivePins + 1
                end
            end

            j = j + 1
        end
    end

    for _, step in pairs(activeSteps) do ProcessMapPin(step) end

    if not isMiniMap then
        local currentStep = steps[RXPCData.currentStep]
        if (currentStep and not currentStep.active) then
            ProcessMapPin(currentStep)
        end
        local i = 0;
        while numActivePins < numPins and (startingIndex + i < numSteps) do
            i = i + 1
            local step = steps[startingIndex + i]
            ProcessMapPin(step)
        end
    end
    addon:ProcessGeneratedSteps(ProcessMapPin,true)

    return pins
end

local function generateLines(steps, numPins, startingIndex, isMiniMap)
    local pins = {}
    if addon.currentGuide.empty then return pins end
    local numActivePins = 0
    local numSteps = #steps
    local activeSteps = addon.RXPFrame.activeSteps

    local numActive = 0

    local function GetNumPins(step)
        if step then
            for _, element in pairs(step.elements) do
                if element.zone and (element.segments) then
                    numActive = numActive + 1
                end
            end
        end
    end

    for _, step in pairs(activeSteps) do GetNumPins(step) end

    for i = RXPCData.currentStep + 1, RXPCData.currentStep + numPins do
        GetNumPins(addon.currentGuide.steps[i])
    end

    numPins = math.max(numPins, numActive)
    -- Loop through the steps until we create the number of pins a user
    -- configures or until we reach the end of the current guide.

    local function ProcessLine(step,ignoreCounter)
        if not step then return end
        step.centerPins = {}
        local function InsertLine(element, sX, sY, fX, fY, lineAlpha)
            local thickness = tonumber(element.step and step.linethickness)
            table.insert(pins, {
                element = element,
                zone = element.zone,
                sX = sX,
                sY = sY,
                fX = fX,
                fY = fY,
                lineAlpha = lineAlpha,
                linethickness = thickness or element.thickness --or 3
            })
        end

        local centerX, centerY, nEdges = 0,0,0
        local j = 1
        local n = 0

        local function AddPoint(x,y,element,flags,...)
            local wx, wy, instance =
                HBD:GetWorldCoordinatesFromZone(x/100, y/100,
                                                element.zone)
            local point = {
                x = x,
                y = y,
                wx = wx,
                wy = wy,
                instance = instance,
                zone = element.zone,
                anchor = element,
                range = element.range,
                generated = flags,
                step = step,
                source = element,
                parent = element.parent,
                mapTooltip = element.mapTooltip,
            }
            point.wpHash = GetPinHash(x,y,element.zone,n,step)
            n = n + 1
            local tableList = {...}
            for _,tbl in pairs(tableList) do
                table.insert(tbl, point)
            end
        end

        while (numActivePins < numPins or ignoreCounter) and j <= #step.elements do
            local element = step.elements[j]
            local flags = element.bigLoop and 3 or 1
            local nPoints = element.segments and
                                math.floor(#element.segments / 2)
            local nSegments = element.segments and #element.segments
            if element.zone and nPoints and
                (not (element.parent and
                    (element.parent.completed or element.parent.skip)) and
                    not element.skip) then
                for i = 1, nPoints * 2, 2 do
                    local sX = (element.segments[i])
                    local sY = (element.segments[i + 1])
                    local fX,fY
                    if element.connectPoints then
                        fX = (element.segments[(i + 1) % nSegments + 1])
                        fY = (element.segments[(i + 2) % nSegments + 1])
                    else
                        fX = element.segments[i + 2]
                        fY = element.segments[i + 3]
                    end

                    if sX and sY and fX and fY then
                        if sX < 0 and sY < 0 then
                            -- Dashed line if start x/y coordinates are negative
                            sX, sY, fX, fY = math.abs(sX), math.abs(sY),
                                             math.abs(fX), math.abs(fY)
                            centerX = centerX + sX
                            centerY = centerY + sY
                            nEdges = nEdges + 1
                            -- local distMod = 1.75
                            local length = math.sqrt(
                                               (fX - sX) ^ 2 + (fY - sY) ^ 2) *
                                               1.75
                            if length > 1 then
                                local nSegments = math.floor(length)
                                local xinc = (fX - sX) / length
                                local yinc = (fY - sY) / length
                                local xpos, ypos = sX, sY

                                for k = 1, nSegments do
                                    local endx = xpos + xinc
                                    local endy = ypos + yinc
                                    local alpha = bit.band(k, 0x1)
                                    if alpha > 0 then
                                        InsertLine(element, xpos, ypos, endx,
                                                   endy, alpha)
                                    end
                                    xpos = endx
                                    ypos = endy
                                end
                            end
                        else
                            sX, sY, fX, fY = math.abs(sX), math.abs(sY),
                                             math.abs(fX), math.abs(fY)
                            centerX = centerX + sX
                            centerY = centerY + sY
                            nEdges = nEdges + 1
                            InsertLine(element, sX, sY, fX, fY, element.lineAlpha or 1)
                        end
                        if element.showArrow and step.active then
                            AddPoint(sX,sY,element,flags,addon.linePoints,addon.activeWaypoints)
                        end
                    end
                end
                if element.drawCenterPoint and step.active and centerX ~= 0 and centerY then
                    centerX = centerX/nEdges
                    centerY = centerY/nEdges
                    AddPoint(centerX,centerY,element,flags,step.centerPins)
                end
            end

            j = j + 1
        end
    end

    for _, step in pairs(activeSteps) do ProcessLine(step) end

    if not isMiniMap then
        local currentStep = steps[RXPCData.currentStep]
        if not (currentStep and currentStep.active) then
            ProcessLine(currentStep)
        end
        local i = 0;
        while numActivePins < numPins and (startingIndex + i < numSteps) do
            i = i + 1
            local step = steps[startingIndex + i]
            ProcessLine(step)
        end

        addon:ProcessGeneratedSteps(ProcessLine,true)

    end

    return pins
end

-- Generate pins using the current guide's steps, then add the pins to the world map
local function addWorldMapPins()
	if addon.settings.profile.numMapPins == 0 then return end

    -- Calculate which pins should be on the world map
    local pins = generatePins(addon.currentGuide.steps, addon.settings.profile.numMapPins,
                              RXPCData.currentStep, false)

    -- Convert each "pin" data structure into a WoW frame. Then add that frame to the world map
    if IsInInstance() then return end
    for i = #pins, 1, -1 do
        local pin = pins[i]
        if not pin.hidePin then
            local element = pin.elements[1]
            local worldMapFrame = worldMapFramePool:Acquire()
            worldMapFrame:render(pin, false)
            local map = element.step and element.step.map and (addon.GetMapId(element.step.map) or tonumber(element.step.map))
            local x,y
            --if pin.generated then print('f',element.generated) end
            if map then
                x,y = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, map)
            else
                x = element.x/100
                y = element.y/100
                map = element.zone
            end
            HBDPins:AddWorldMapIconMap(addon, worldMapFrame, map, x, y,
                                       _G.HBD_PINS_WORLDMAP_SHOW_CONTINENT)
            local subzones = addon.GetSubZones(map)
            if subzones then
                for _,subzone in pairs(subzones) do
                    --print(subzone)
                    local x,y = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, subzone, true)
                    if x and y and not(x < 0 or y < 0 or x > 1 or y > 1) then
                        local worldMapFrame = worldMapFramePool:Acquire()
                        worldMapFrame:render(pin, false)
                        HBDPins:AddWorldMapIconMap(addon, worldMapFrame, subzone, x, y)
                    end
                end
            end
        end
    end
end

local function addWorldMapLines()
    local lineData = generateLines(addon.currentGuide.steps, addon.settings.profile.numMapPins,
                                   RXPCData.currentStep, false)

    if #lineData > 0 then
        local canvas = _G.WorldMapFrame:GetCanvas()
        local width = canvas:GetWidth()
        local height = canvas:GetHeight()

        if width == 0 or height == 0 then
            WorldMapFrame:Show()
            WorldMapFrame:Hide()
        end
    end

    for i = #lineData, 1, -1 do
        local line = lineData[i]
        local element = line.element
        local step = element.step
        local lineFrame = lineMapFramePool:Acquire()
        lineFrame.lineData = line
        lineFrame.step = step
        lineFrame.zone = element.zone
        lineFrame:render(line, false)
    end
end

-- Generate pins using only the active steps, then add the pins to the Mini Map
local function addMiniMapPins(pins)
    if addon.settings.profile.hideMiniMapPins then return end
    -- Calculate which pins should be on the mini map
    local pins = generatePins(addon.currentGuide.steps, addon.settings.profile.numMapPins,
                              RXPCData.currentStep, true)

    -- Convert each "pin" data structure into a WoW frame. Then add that frame to the mini map
    if IsInInstance() then return end
    for i = #pins, 1, -1 do
        local pin = pins[i]
        local element = pin.elements[1]
        if element and element.x then
            local miniMapFrame = miniMapFramePool:Acquire()
            miniMapFrame:render(pin, true)
            local step = element.step
            HBDPins:AddMinimapIconMap(addon, miniMapFrame, element.zone,
                                      element.x / 100, element.y / 100, true, not (step and step.hideMinimap))
        end
    end
end

local corpseWP = { title = "Corpse", generated = 1, wpHash = 0 }

local function IsDeathSkip()
    if not addon.SpiritHealerWorld then return false end
    for _, step in pairs(addon.RXPFrame.activeSteps) do
        for _, element in pairs(step.elements) do
            if element.tag == "deathskip" then
                return true
            end
        end
    end
end

local function updateArrowData()
    local lowPrioWPs
    local loop = {}
    local isDeathSkip = IsDeathSkip()
    local HBD = LibStub("HereBeDragons-2.0")

    local function ProcessWaypoint(element, lowPrio, isComplete)
        if element.hidden then
            return
        elseif element.lowPrio and not lowPrio then
            table.insert(lowPrioWPs, element)
            return
        end
        local step = element.step or {}
        if step.loop then loop[step] = true end

        local generated = element.generated or 0
        if (bit.band(generated, 0x1) == 0x1)
            or (element.arrow
                and element.step
                and element.step.active
                and not (element.parent and (element.parent.completed or element.parent.skip))
                and not (element.text and (element.completed or isComplete) and not isComplete))
        then
            af:SetShown(
                not addon.settings.profile.disableArrow
                and not addon.hideArrow
                and addon.settings.profile.showEnabled
            )
            af.dist, af.orientation, af.element = 0, 0, element
            af.forceUpdate = true
            return true
        end
    end

    -- 1) Ghost logic: corpse or Spirit Healer (deathskip)
    if UnitIsGhost("player") and not (addon.QuestAutoAccept(3912) or addon.QuestAutoAccept(3913)) then
        local aw = addon.activeWaypoints or {}
        local guideName = addon.currentGuide and addon.currentGuide.name
        local skip
        for _, e in pairs(aw) do
            skip = skip
                or (e.step and e.step.ignorecorpse)
                or (not e.textOnly and guideName == "41-43 Badlands")
        end

        if not skip and HBD then
            if isDeathSkip then
                local px, py, inst = HBD:GetPlayerWorldPosition("player")
                local DB = addon.SpiritHealerWorld or SpiritHealerWorld
                local list = (px and inst and DB) and DB[inst] or nil
                if list and #list > 0 then
                    local bestWX, bestWY, bestD2
                    for i = 1, #list do
                        local n = list[i]
                        local dx, dy = px - n.wy, py - n.wx
                        local d2 = dx*dx + dy*dy
                        if not bestD2 or d2 < bestD2 then
                            bestD2, bestWX, bestWY = d2, n.wy, n.wx
                        end
                    end
                    if bestWX then
                        corpseWP.x, corpseWP.y, corpseWP.zone, corpseWP.mapID = nil, nil, nil, nil
                        corpseWP.wx, corpseWP.wy, corpseWP.instance = bestWX, bestWY, inst
                        corpseWP.title = "Spirit Healer"
                        if ProcessWaypoint(corpseWP) then return end
                    end
                end
            end

            -- normal corpse arrow if not deathskip
            if not isDeathSkip then
                local zone = HBD:GetPlayerZone()
                local corpse = (type(zone) == "number") and C_DeathInfo.GetCorpseMapPosition(zone)
                if corpse and corpse.x then
                    local wx, wy, inst = HBD:GetWorldCoordinatesFromZone(corpse.x, corpse.y, zone)
                    if wx and inst then
                        corpseWP.x, corpseWP.y, corpseWP.zone, corpseWP.mapID = nil, nil, nil, nil
                        corpseWP.wx, corpseWP.wy, corpseWP.instance = wx, wy, inst
                        corpseWP.title = "Corpse"
                        if ProcessWaypoint(corpseWP) then return end
                    end
                end
            end
        end
    end

    local function SetArrowWP()
        lowPrioWPs = {}
        for _, element in ipairs(addon.activeWaypoints) do
            if ProcessWaypoint(element) then
                return true
            end
        end
        for _, element in ipairs(lowPrioWPs) do
            if ProcessWaypoint(element, true) then
                return true
            end
        end
    end

    if SetArrowWP() then
        return
    end

    for step in pairs(loop) do
        for _, element in ipairs(step.elements) do
            if element.arrow and element.wpHash ~= element.wpHash and element.textOnly then
                element.skip = false
                RXPCData.completedWaypoints[step.index or "tip"][element.wpHash] = false
            end
        end
    end

    if SetArrowWP() then
        return
    end

    if af:IsShown() then
        addon:ScheduleTask(addon.UpdateGotoSteps)
    end
    af:Hide()
end


function addon.ResetArrowPosition()
    addon.settings.profile.disableArrow = false
    if not addon.settings.profile.showEnabled then
        addon.settings.ToggleActive()
    end
    af:ClearAllPoints()
    af:SetPoint("CENTER", 0, 200)
    updateArrowData()
end

-- Removes all pins from the map and mini map and resets all data structrures
local currentPoint
local lastPoint

local function resetMap()
    addon.activeWaypoints = {}
    addon.linePoints = {}
    addon.updateMap = false
    HBDPins:RemoveAllMinimapIcons(addon)
    HBDPins:RemoveAllWorldMapIcons(addon)
    worldMapFramePool:ReleaseAll()
    miniMapFramePool:ReleaseAll()
    lineMapFramePool:ReleaseAll()
end

local lastMap
function addon.UpdateMap(resetPins)
    if resetPins then
        if addon.currentGuide == nil then return end
        lastMap = nil
        resetMap()
        addWorldMapLines()
        addWorldMapPins()
        addMiniMapPins()
        updateArrowData()
        addon.DisplayLines(true)
    else
        addon.updateMap = true
        --[[if GetTime() - gt > 10 then
            error('ok')
        end]]
    end
end

local closestPoint
local maxDist = math.huge
local function DisplayLines(self)
    local currentMap = _G.WorldMapFrame:GetMapID()
    if lastMap ~= currentMap or self then
        for line in lineMapFramePool:EnumerateActive() do
            local shown = line.step and line.step.active and line.zone ==
                _G.WorldMapFrame:GetMapID() and line.lineData.lineAlpha > 0
            line:SetShown(shown)
            --print('c',shown,line.zone)
        end
    end
    lastMap = currentMap
end
addon.DisplayLines = DisplayLines

hooksecurefunc(_G.WorldMapFrame, "OnMapChanged", DisplayLines);

local scale = 0
if _G.WorldMapFrame.OnCanvasScaleChanged then
    hooksecurefunc(_G.WorldMapFrame, "OnCanvasScaleChanged", function()
        local mapScale = _G.WorldMapFrame:GetCanvasScale()
        if mapScale ~= scale then
            addon.UpdateMap()
        end
        scale = mapScale
    end)
end

function addon.UpdateGotoSteps()
    local hideArrow = false
    local forceArrowUpdate = UnitIsGhost("player") == (af.element ~= corpseWP)
    DisplayLines()
    if #addon.activeWaypoints == 0 and not forceArrowUpdate then
        addon.hideArrow = true
        af:Hide()
        return
    end
    if not af:IsShown() then
        for i, step in pairs(addon.RXPFrame.activeSteps) do
            if step.loop then
                for _,element in pairs(step.elements) do
                    if element.arrow and element.wpHash then
                        --print(element.arrow,element.skip,element.wpHash)
                        local wp = RXPCData.completedWaypoints[step.index or "tip"]
                        if element.skip or wp and wp[element.wpHash] then
                            element.skip = false
                            if wp then
                                wp[element.wpHash] = false
                            end
                        end
                    end
                end
            end
        end
    end

    local minDist
    --local zone = C_Map.GetBestMapForUnit("player")
    local x, y, instance = HBD:GetPlayerWorldPosition()
    if af.element and af.element.instance ~= instance and instance ~= -1 then
        af.wrongContinent = true
    else
        af.wrongContinent = false
        if IsInInstance() then
            hideArrow = true
        end
    end
    local updateMap
    for i, element in ipairs(addon.activeWaypoints) do
        local step = element.step
        if step and step.active then

            local hidden = element.hidden
            local isActive = true
            if element.activationRadius then
                local _,aDist = HBD:GetWorldVector(instance, x, y, element.xref,
                                            element.yref)
                if aDist then
                    --print(aDist,'-',element.x,element.y)
                    if element.activationRadius < 0 then aDist = -aDist end
                    if aDist > element.activationRadius then
                        element.hidden = true
                        isActive = false
                    else
                        element.hidden = false
                        if hidden and addon.settings.profile.debug then
                            print(format("%d: Waypoint activation\n  goto = %.2f,%.2f (%d/%d,%.4f,%.4f)", i,
                                element.x, element.y, element.zone or 0, element.instance, element.wx, element.wy ))
                        end
                    end
                end
                --print(isActive,aDist,element.activationRadius)
            end
            if (element.radius or element.dynamic) and element.arrow and
                not (element.parent and
                    (element.parent.completed or element.parent.skip) and
                    not element.parent.textOnly) and not element.skip then
                local _, dist = HBD:GetWorldVector(instance, x, y, element.wx,
                                                   element.wy)
                if dist then

                    if element.dynamic then
                        if minDist and dist > minDist then
                            element.lowPrio = true
                        else
                            minDist = dist
                            if closestPoint then
                                closestPoint.lowPrio = true
                            end
                            if closestPoint ~= element then
                                forceArrowUpdate = true
                            end
                            element.lowPrio = false
                            closestPoint = element
                        end
                    end

                    if element.radius and isActive then
                        local source = element.source or element
                        local objectiveCheck = true
                        if element.radius < 0 then dist = -dist end
                        if source.currentObjective then
                            if source.currentObjective <= source.previousObjective then
                                objectiveCheck = false
                            end
                            source.previousObjective = source.currentObjective
                        end
                        if dist <= element.radius and objectiveCheck then
                            local enabled = not element.skip
                            if element.persistent then
                                element.hidden = true
                            elseif not (element.textOnly and element.hidePin and
                                         element.wpHash ~= af.element.wpHash and not element.generated) then
                                element.skip = true
                                updateMap = true
                                if not element.textOnly then
                                    addon.SetElementComplete(element.frame)
                                end
                                if element.timer then
                                    addon.StartTimer(element.timer,element.timerText)
                                end
                            end
                            if enabled and addon.settings.profile.debug and element.skip then
                                print(format("%d: Waypoint reached\n  goto = %.2f,%.2f (%d/%d,%.4f,%.4f)", i,
                                       element.x, element.y, element.zone or 0, element.instance, element.wx, element.wy ))
                            end
                        elseif element.persistent then
                            element.hidden = false
                        end
                    end
                end
            end
            if hidden ~= element.hidden then
                updateMap = true
            end
            --
        end
    end

    if updateMap then
        addon.UpdateMap()
    end

    if addon.hideArrow ~= hideArrow and not af.wrongContinent then
        addon.hideArrow = hideArrow
        forceArrowUpdate = true
    end

    minDist = nil
    local anchorPoint = currentPoint
    local linePoints = addon.linePoints
    local nPoints = 0
    local reset
    for i, element in ipairs(linePoints) do
        local radius = element.anchor.range
        if radius and not element.anchor.pointCount then
            nPoints = nPoints + 1
            local _, dist = HBD:GetWorldVector(instance, x, y, element.wx,
                                               element.wy)
            element.dist = dist
            if dist then
                if dist <= radius then
                    currentPoint = i
                    if anchorPoint ~= i then
                        lastPoint = anchorPoint
                    end
                end
                if not lastPoint then
                    if minDist and dist > minDist then
                        element.lowPrio = true
                    else
                        minDist = dist
                        if closestPoint then
                            closestPoint.lowPrio = true
                        end
                        if closestPoint ~= element then
                            forceArrowUpdate = true
                        end
                        element.lowPrio = false
                        closestPoint = element
                    end
                end
            end
            if currentPoint == i then element.lowPrio = true end
        elseif element.wpHash == af.element.wpHash and radius and element.anchor.pointCount then
            local _, dist = HBD:GetWorldVector(instance, x, y, element.wx,
                                               element.wy)
            if dist and dist <= radius then
                if not element.lowPrio then
                    element.anchor.pointCount = element.anchor.pointCount + 1
                    element.lowPrio = true
                    forceArrowUpdate = true
                    --print('ok',element.anchor.pointCount,linePoints)
                    if element.anchor.pointCount >= #linePoints then
                        element.anchor.pointCount = 0
                        reset = element
                        --print('reset')
                    end
                end
            end
        end
    end

    if reset then
        --print('reset-ok')
        for _, element in ipairs(linePoints) do
            if element ~= reset then
                element.lowPrio = false
            else
                element.anchor.pointCount = element.lowPrio and 1 or 0
            end
        end
    elseif currentPoint and nPoints > 0 then
        nPoints = #linePoints
        local nextPoint = currentPoint % nPoints + 1
        local prevPoint = (currentPoint - 2) % nPoints + 1
        local nextElement = linePoints[nextPoint]
        local prevElement = linePoints[prevPoint]
        local nextDist = nextElement.dist or 0
        local prevDist = prevElement.dist or 0
        local isNextCloser = nextDist <= prevDist and lastPoint ~= nextPoint or
                                 lastPoint == prevPoint

        nextElement.lowPrio = not isNextCloser
        prevElement.lowPrio = isNextCloser

        local pointUpdate = currentPoint ~= anchorPoint
        -- print(isNextCloser,lastPoint,currentPoint)
        if pointUpdate then forceArrowUpdate = true end
        if isNextCloser then
            if pointUpdate then
                maxDist = math.max(nextDist * 1.3, 1000)
            elseif nextDist > maxDist then
                currentPoint = nil
                lastPoint = nil
                maxDist = math.huge
                forceArrowUpdate = true
            end
        else
            if pointUpdate then
                maxDist = math.max(prevDist * 1.3, 1000)
            elseif prevDist > maxDist then
                currentPoint = nil
                lastPoint = nil
                maxDist = math.huge
                forceArrowUpdate = true
            end
        end

        for i, element in ipairs(linePoints) do
            if i ~= nextPoint and i ~= prevPoint then
                element.lowPrio = true
            end
        end

    end

    if forceArrowUpdate then updateArrowData() end
end

local function GetMapCoefficients(p1x,p1y,p1xb,p1yb,p2x,p2y,p2xb,p2yb)
    local c11 = (p1xb-p2xb)/(p1x-p2x)
    local c31 = p1xb-p1x*c11
    local c22 = (p1yb-p2yb)/(p1y-p2y)
    local c32 = p1yb-p1y*c22
    return {c11,c31,c22,c32}
end

local p1 = {
    ["y"] = 25,
    ["x"] = 25,
    ["yb"] = 43.7789069363158,
    ["xb"] = 39.02232393772481,
}
local p2 = 	{
    ["y"] = 75,
    ["x"] = 75,
    ["yb"] = 82.47040384981797,
    ["xb"] = 77.70637435364208,
}


addon.classicToWrathSW = GetMapCoefficients(p1.x,p1.y,p1.xb,p1.yb,p2.x,p2.y,p2.xb,p2.yb)
addon.wrathToClassicSW = GetMapCoefficients(p1.xb,p1.yb,p1.x,p1.y,p2.xb,p2.yb,p2.x,p2.y)

p1 = {
    ["x"] = 81.51690,
    ["y"] = 59.23138,
    ["xb"] = 75.75077,
    ["yb"] = 53.32378,
}
p2 = {
    ["x"] = 48.12616,
    ["y"] = 21.96377,
    ["xb"] = 43.67876,
    ["yb"] = 17.52954,
}

addon.classicToWrathEPL = GetMapCoefficients(p1.x,p1.y,p1.xb,p1.yb,p2.x,p2.y,p2.xb,p2.yb)
addon.wrathToClassicEPL = GetMapCoefficients(p1.xb,p1.yb,p1.x,p1.y,p2.xb,p2.yb,p2.x,p2.y)


addon.mID = {}
function addon.GetMapId(zone)
    local z = tonumber(zone)
    if z then
        addon.mID[z] = true
        --print(1,z)
    end
    return addon.mapId[zone]
end

function addon.GetMapInfo(zone,x,y)
    x = tonumber(x)
    y = tonumber(y)
    if not (x and y and zone) then
        return
    elseif zone == "StormwindClassic" then
        if addon.gameVersion > 30000 then
            local c = addon.classicToWrathSW
            x = x*c[1]+c[2]
            y = y*c[3]+c[4]
        end
        return addon.GetMapId("Stormwind City"),x,y
    elseif zone == "EPLClassic" then
        if addon.gameVersion > 30000 then
            local c = addon.classicToWrathEPL
            x = x*c[1]+c[2]
            y = y*c[3]+c[4]
        end
        return addon.GetMapId("Eastern Plaguelands"),x,y
    elseif zone == "StormwindNew" then
        if addon.gameVersion < 30000 then
            local c = addon.wrathToClassicSW
            x = x*c[1]+c[2]
            y = y*c[3]+c[4]
        end
        return addon.GetMapId("Stormwind City"),x,y
    elseif zone == "EPLNew" then
        if addon.gameVersion < 30000 then
            local c = addon.wrathToClassicEPL
            x = x*c[1]+c[2]
            y = y*c[3]+c[4]
        end
        return addon.GetMapId("Eastern Plaguelands"),x,y
    else
        return addon.GetMapId(zone) or tonumber(zone),x,y
    end
end

addon.mapId["StormwindClassic"] = addon.mapId["Stormwind City"]
addon.mapId["StormwindNew"] = addon.mapId["Stormwind City"]
addon.mapId["EPLClassic"] = addon.mapId["Eastern Plaguelands"]
addon.mapId["EPLNew"] = addon.mapId["Eastern Plaguelands"]
