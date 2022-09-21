local addonName, addon = ...

local _G = _G

local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")
addon.activeWaypoints = {}
addon.linePoints = {}
-- local colors = addon.colors

addon.arrowFrame = CreateFrame("Frame", "RXPG_ARROW", UIParent)
local af = addon.arrowFrame
addon.activeFrames["arrowFrame"] = af

af:SetMovable(true)
af:EnableMouse(1)
af:SetClampedToScreen(true)
af:SetSize(32, 32)
af.texture = af:CreateTexture()
af.texture:SetAllPoints()
af.texture:SetTexture(addon.GetTexture("rxp_navigation_arrow-1"))
-- af.texture:SetScale(0.5)
af.text = af:CreateFontString(nil, "OVERLAY")
af.text:SetTextColor(1, 1, 1, 1)
af.text:SetFont(addon.font, 9,"OUTLINE")
af.text:SetJustifyH("CENTER")
af.text:SetJustifyV("CENTER")
af.text:SetPoint("TOP", af, "BOTTOM", 0, -5)
af.orientation = 0
af.distance = 0
af.lowerbound = math.pi / 64 -- angle in radians
af.upperbound = 2 * math.pi - af.lowerbound

af:SetPoint("TOP")
af:Hide()

af:SetScript("OnMouseDown", function(self, button)
    if not addon.settings.db.profile.lockFrames and af:GetAlpha() ~= 0 then af:StartMoving() end
end)
af:SetScript("OnMouseUp", function(self, button) af:StopMovingOrSizing() end)

function addon.UpdateArrow(self)

    if addon.settings.db.profile.disableArrow or not self then return end
    local element = self.element
    if element then
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
            if step then
                self.text:SetText(step.title or
                                      string.format("Step %d\n(%dyd)",
                                                    step.index, dist))
            elseif element.title then
                self.text:SetText(string.format("%s\n(%dyd)",element.title, dist))
            else
                self.text:SetText(string.format("(%dyd)", dist))
            end
        end
    end

end

addon.arrowFrame:SetScript("OnUpdate", addon.UpdateArrow)

-- The Frame Pool that will manage pins on the world and mini map
-- You must use a frame pool to aquire and release pin frames,
-- otherwise the pins will not be properly removed from the map.
local MapPinPool = {}

MapPinPool.create = function()
    local framePool = _G.CreateFramePool()
    framePool.creationFunc = MapPinPool.creationFunc
    framePool.resetterFunc = MapPinPool.resetterFunc

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
        bgFile = "Interface\\Addons\\" .. addonName ..
            "\\Textures\\white_circle",
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
        bgFile = "Interface\\Addons\\" .. addonName ..
            "\\Textures\\map_active_step_target_icon",
        insets = {left = 0, right = 0, top = 0, bottom = 0}
    })
    f.inner:SetPoint("CENTER", 0, 0)
    f.inner:EnableMouse()

    -- Text
    f.text = f.inner:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    f.text:SetTextColor(unpack(addon.colors.mapPins))
    f.text:SetFont(addon.font, 14, "OUTLINE")

    -- Renders the Pin with Step Information
    f.render = function(pin, isMiniMapPin)
        local step = pin.elements[1].step
        local stepIndex = pin.elements[1].step.index

        local r = f.text:GetTextColor()
        if r ~= addon.colors.mapPins[1] then
            f.text:SetTextColor(unpack(addon.colors.mapPins))
        end
        if #pin.elements > 1 then
            f.text:SetText(stepIndex .. "+")
        else
            f.text:SetText(stepIndex)
        end

        if addon.settings.db.profile.mapCircle and not isMiniMapPin then
            local size = math.max(f.text:GetWidth(), f.text:GetHeight()) + 8

            if step.active then
                f:SetAlpha(1)
                f:SetWidth(size + 3)
                f:SetHeight(size + 3)
                f:SetBackdropColor(0.0, 0.0, 0.0,
                                   addon.settings.db.profile.worldMapPinBackgroundOpacity)
                f.inner:SetBackdropColor(1, 1, 1, 1)
                f.inner:SetWidth(size + 3)
                f.inner:SetHeight(size + 3)

                f.text:SetFont(addon.font, 14, "OUTLINE")
            else
                f:SetBackdropColor(0.1, 0.1, 0.1,
                                   addon.settings.db.profile.worldMapPinBackgroundOpacity)
                f:SetWidth(size)
                f:SetHeight(size)

                f.inner:SetBackdropColor(0, 0, 0, 0)

                f.text:SetFont(addon.font, 9, "OUTLINE")
            end
            f.inner:SetPoint("CENTER", f, 0, 0)
            f.inner:SetWidth(size)
            f.inner:SetHeight(size)
            f.text:SetPoint("CENTER", f, 0, 0)
            f:SetScale(addon.settings.db.profile.worldMapPinScale)
            f:SetAlpha(pin.opacity)
        else
            if step.active and not isMiniMapPin then
                f:SetAlpha(1)
                f:SetBackdropColor(0.0, 0.0, 0.0,
                                   addon.settings.db.profile.worldMapPinBackgroundOpacity)
                f.inner:SetBackdropColor(1, 1, 1, 1)
                f.inner:SetWidth(8 + 3)
                f.inner:SetHeight(8 + 3)

                f.text:SetFont(addon.font, 14, "OUTLINE")
            else
                local bgAlpha = isMiniMapPin and 0 or
                                    addon.settings.db.profile.worldMapPinBackgroundOpacity
                f:SetBackdropColor(0.1, 0.1, 0.1, bgAlpha)

                f.inner:SetBackdropColor(0, 0, 0, 0)

                f.text:SetFont(addon.font, 9, "OUTLINE")
            end
            f:SetWidth(f.text:GetStringWidth() + 3)
            f:SetHeight(f.text:GetStringHeight() + 5)

            f.inner:SetPoint("CENTER", f, 0, 0)
            f.inner:SetWidth(1)
            f.inner:SetHeight(1)
            f.text:SetPoint("CENTER", f, 0, 0)
            f:SetScale(addon.settings.db.profile.worldMapPinScale)
            f:SetAlpha(pin.opacity)
        end

        -- Mouse Handlers
        f:SetScript("OnEnter", function(self)
            if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
                return
            end
            _G.GameTooltip:SetOwner(f, "ANCHOR_RIGHT", 0, 0)
            _G.GameTooltip:ClearLines()

            for i, element in pairs(pin.elements) do
                local parent = element.parent
                local text
                local step = element.step
                if parent then
                    text = parent.mapTooltip or parent.tooltipText
                elseif not element.hideTooltip then
                    text = element.mapTooltip or element.tooltipText
                end
                text = text or step.text or ""
                _G.GameTooltip:AddLine("Step " .. step.index,
                                       unpack(addon.colors.mapPins))
                _G.GameTooltip:AddLine(text)
            end

            _G.GameTooltip:Show()
        end)

        f:SetScript("OnLeave", function(self)
            if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
                return
            end
            _G.GameTooltip:Hide()
        end)

    end

    return f
end

-- Hides and disables the Frame when it is released
MapPinPool.resetterFunc = function(framePool, frame)
    frame:SetHeight(0)
    frame:SetWidth(0)
    frame:Hide()
    frame:EnableMouse(0)
end

local MapLinePool = {}

MapLinePool.create = function()
    local framePool = _G.CreateFramePool()
    framePool.creationFunc = MapLinePool.creationFunc
    framePool.resetterFunc = MapLinePool.resetterFunc

    return framePool
end

-- Create the Frame with the Frame Pool.
--
-- Because you cannot pass the pin data to the Frame Pool when acquiring a frame,
-- the frame is given a "render" function that can be used to bind the corect data
-- to the frame
MapLinePool.creationFunc = function(framePool)

    local f = CreateFrame("Button", nil, nil);
    f.line = f.line or f:CreateLine();
    local border = f.border or f:CreateLine();
    border:SetColorTexture(0, 0, 0, 1);
    f.border = border

    f.render = function(self, coords, isMiniMapPin)

        local thickness = 3
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
        line:SetThickness(thickness);

        local border = self.border
        border:SetDrawLayer("OVERLAY", -6)
        border:SetStartPoint("TOPLEFT", sX - xAnchor, sY - yAnchor)
        border:SetEndPoint("TOPLEFT", fX - xAnchor, fY - yAnchor)
        border:SetThickness(thickness + 2);
        border:SetAlpha(0.5)

        self:SetParent(canvas)
        self:SetFrameStrata("FULLSCREEN_DIALOG")
        -- self:SetFrameLevel(3000)
        self:SetPoint("TOPLEFT", canvas, "TOPLEFT", xAnchor, yAnchor)
        self:EnableMouse(true)
        -- self:Show()

        f:SetScript("OnEnter", function(self)
            if addon.settings.db.profile.debug and self.lineData then
                local line = self.lineData
                self:SetAlpha(0.5)
                print("Line start point:", line.sX, ",", line.sY)
                print("Line end point:", line.fX, ",", line.fY)
            end
        end)

        f:SetScript("OnLeave", function(self)
            local line = self.lineData
            self:SetAlpha(line.lineAlpha or 1)
        end)

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
end

local worldMapFramePool = MapPinPool.create()
local miniMapFramePool = MapPinPool.create()
local lineMapFramePool = MapLinePool.create()

-- Calculates if a given element is close to any other provided pins
local function elementIsCloseToOtherPins(element, pins, isMiniMapPin)
    local overlap = addon.settings.db.profile.distanceBetweenPins or 1
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
                if element.instance == pinElement.instance then
                    dist, dx, dy = HBD:GetWorldDistance(pinElement.instance,
                                                        pinElement.wx,
                                                        pinElement.wy,
                                                        element.wx, element.wy)
                end
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
local function GetPinHash(x,y,instance,element)
    return (instance % 256) + lsh(math.floor(x*128),8) +
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
        GetNumPins(addon.currentGuide.steps[i])
    end

    if numPins < numActive then numPins = numActive end

    -- Loop through the steps until we create the number of pins a user
    -- configures or until we reach the end of the current guide.

    local function ProcessMapPin(step)
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
        while numActivePins < numPins and j <= #step.elements do
            local element = step.elements[j]

            local skipWp = not(element.zone and element.x)
            if not element.wpHash and not skipWp then
                element.wpHash = GetPinHash(element.x,element.y,element.zone,n)
                n = n + 1
            end
            if not isMiniMap and step.active and not skipWp then
                local wpList = RXPCData.completedWaypoints[step.index] or {}
                skipWp = wpList[element.wpHash] or element.skip
                wpList[element.wpHash] = skipWp
                RXPCData.completedWaypoints[element.step.index] = wpList
            end

            if element.text and not element.label and not element.textOnly then
                element.label = tostring(step.index)
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
                if element.zone and (element.wx or element.segments) then
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

    local function ProcessLine(step)
        if not step then return end
        local function InsertLine(element, sX, sY, fX, fY, lineAlpha)
            table.insert(pins, {
                element = element,
                zone = element.zone,
                sX = sX,
                sY = sY,
                fX = fX,
                fY = fY,
                lineAlpha = lineAlpha
            })
        end

        local j = 1
        local n = 0
        while numActivePins < numPins and j <= #step.elements do
            local element = step.elements[j]

            local nPoints = element.segments and
                                math.floor(#element.segments / 2)

            if element.zone and nPoints and
                (not (element.parent and
                    (element.parent.completed or element.parent.skip)) and
                    not element.skip) then
                for i = 1, nPoints * 2, 2 do
                    local sX = (element.segments[i])
                    local sY = (element.segments[i + 1])
                    local fX = (element.segments[i + 2])
                    local fY = (element.segments[i + 3])

                    if sX and sY and fX and fY then
                        if sX < 0 and sY < 0 then
                            -- Dashed line if start x/y coordinates are negative
                            sX, sY, fX, fY = math.abs(sX), math.abs(sY),
                                             math.abs(fX), math.abs(fY)
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
                            InsertLine(element, sX, sY, fX, fY, 1)
                        end
                        if element.showArrow and step.active then
                            local x, y = sX / 100, sY / 100
                            local wx, wy, instance =
                                HBD:GetWorldCoordinatesFromZone(x, y,
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
                                generated = true
                            }
                            point.wpHash = GetPinHash(x,y,element.zone,n)
                            n = n + 1
                            table.insert(addon.linePoints, point)
                            table.insert(addon.activeWaypoints, point)
                        end
                    end
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
    end
    return pins
end

-- Generate pins using the current guide's steps, then add the pins to the world map
local function addWorldMapPins()
    -- Calculate which pins should be on the world map
    local pins = generatePins(addon.currentGuide.steps, addon.settings.db.profile.numMapPins,
                              RXPCData.currentStep, false)

    -- Convert each "pin" data structure into a WoW frame. Then add that frame to the world map
    for i = #pins, 1, -1 do
        local pin = pins[i]
        if not pin.hidePin then
            local element = pin.elements[1]
            local worldMapFrame = worldMapFramePool:Acquire()
            worldMapFrame.render(pin, false)
            HBDPins:AddWorldMapIconMap(addon, worldMapFrame, element.zone,
                                       element.x / 100, element.y / 100,
                                       _G.HBD_PINS_WORLDMAP_SHOW_CONTINENT)
        end
    end
end

local function addWorldMapLines()
    local lineData = generateLines(addon.currentGuide.steps, addon.settings.db.profile.numMapPins,
                                   RXPCData.currentStep, false)

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
    if addon.settings.db.profile.hideMiniMapPins then return end
    -- Calculate which pins should be on the mini map
    local pins = generatePins(addon.currentGuide.steps, addon.settings.db.profile.numMapPins,
                              RXPCData.currentStep, true)

    -- Convert each "pin" data structure into a WoW frame. Then add that frame to the mini map
    for i = #pins, 1, -1 do
        local pin = pins[i]
        local element = pin.elements[1]
        if element and element.x then
            local miniMapFrame = miniMapFramePool:Acquire()
            miniMapFrame.render(pin, true)
            HBDPins:AddMinimapIconMap(addon, miniMapFrame, element.zone,
                                      element.x / 100, element.y / 100, true, true)
        end
    end
end

local corpseWP = {title = "Corpse", generated = true, wpHash = 0}
-- Updates the arrow

local function updateArrow()

    local lowPrioWPs
    local function ProcessWaypoint(element, lowPrio, isComplete)
        if element.lowPrio and not lowPrio then
            table.insert(lowPrioWPs, element)
            return
        end
        if element.generated or (element.arrow and element.step.active and
            not (element.parent and
                (element.parent.completed or element.parent.skip)) and
            not (element.text and (element.completed or isComplete) and
                not isComplete)) then
            af:SetShown(not addon.settings.db.profile.disableArrow and not addon.hideArrow and addon.settings.db.profile.minimap.show)
            af.dist = 0
            af.orientation = 0
            af.element = element
            af.forceUpdate = true
            return true
        end
    end

    if UnitIsGhost("player") and --Meet at the grave and the follow-up quest:
        not (addon.QuestAutoTurnIn(3912) or addon.QuestAutoAccept(3913)) then
        local skip
        for i,element in pairs(addon.activeWaypoints) do
            skip = skip or (not element.textOnly and addon.currentGuide.name == "41-43 Badlands")
        end
        local zone = HBD:GetPlayerZone()
        local corpse = C_DeathInfo.GetCorpseMapPosition(zone)
        if not skip and corpse and corpse.x then
            corpseWP.wx, corpseWP.wy, corpseWP.instance =
                             HBD:GetWorldCoordinatesFromZone(corpse.x,corpse.y,zone)
            ProcessWaypoint(corpseWP)
            return
        end
    end
    lowPrioWPs = {}
    for i, element in ipairs(addon.activeWaypoints) do
        if ProcessWaypoint(element) then
            return
        end
    end

    for i, element in ipairs(lowPrioWPs) do
        if ProcessWaypoint(element, true) then
            return
        end
    end

    af:Hide()
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
function addon.UpdateMap()
    if addon.currentGuide == nil then return end
    lastMap = nil
    resetMap()
    addWorldMapPins()
    addMiniMapPins()
    addWorldMapLines()
    updateArrow()
end

local closestPoint
local maxDist = math.huge

local function DisplayLines(self)
    local currentMap = _G.WorldMapFrame:GetMapID()
    if lastMap ~= currentMap or self then
        for line in lineMapFramePool:EnumerateActive() do
            line:SetShown(line.step and line.step.active and line.zone ==
                              _G.WorldMapFrame:GetMapID())
        end
    end
    lastMap = currentMap
end

hooksecurefunc(_G.WorldMapFrame, "OnMapChanged", DisplayLines);


function addon.UpdateGotoSteps()
    local hideArrow = false
    local forceArrowUpdate = UnitIsGhost("player") == (af.element ~= corpseWP)
    DisplayLines()
    if #addon.activeWaypoints == 0 and not forceArrowUpdate then
        af:Hide()
        return
    end
    local minDist
    local zone = C_Map.GetBestMapForUnit("player")
    local x, y, instance = HBD:GetPlayerWorldPosition()
    if af.element and af.element.instance ~= instance then hideArrow = true end
    for i, element in ipairs(addon.activeWaypoints) do
        if element.step and element.step.active then

            if element.tag == "groundgoto" and not element.skip and
                                 IsFlyableArea() and addon.GetSkillLevel("riding") >= 225 and
                                 zone == element.zone and (not addon.game == "WOTLK" or
                                 instance ~= addon.mapId["Northrend"] or IsPlayerSpell(54197)) then
                --forceArrowUpdate = forceArrowUpdate or not element.skip
                element.skip = true
                addon.updateMap = true
                return
            elseif (element.radius or element.dynamic) and element.arrow and
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
                    if element.radius then
                        if dist <= element.radius then
                            if element.persistent then
                                hideArrow = true
                            elseif not (element.textOnly and element.hidePin and
                                         element.wpHash ~= af.element.wpHash and not element.generated) then
                                element.skip = true
                                addon.updateMap = true
                                addon.SetElementComplete(element.frame)
                                if element.timer then
                                    addon.StartTimer(element.timer,element.timerText)
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if addon.hideArrow ~= hideArrow then
        addon.hideArrow = hideArrow
        forceArrowUpdate = true
    end

    minDist = nil
    local anchorPoint = currentPoint
    local linePoints = addon.linePoints
    local nPoints = 0
    for i, element in ipairs(linePoints) do
        local radius = element.anchor.range
        if radius then
            nPoints = nPoints + 1
            local _, dist = HBD:GetWorldVector(instance, x, y, element.wx,
                                               element.wy)
            element.dist = dist
            if dist then
                if radius and dist <= radius then
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
        end
    end

    if currentPoint and nPoints > 0 then
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

    if forceArrowUpdate then updateArrow() end
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
        return addon.mapId["Stormwind City"],x,y
    elseif zone == "EPLClassic" then
        if addon.gameVersion > 30000 then
            local c = addon.classicToWrathEPL
            x = x*c[1]+c[2]
            y = y*c[3]+c[4]
        end
        return addon.mapId["Eastern Plaguelands"],x,y
    elseif zone == "StormwindNew" then
        if addon.gameVersion < 30000 then
            local c = addon.wrathToClassicSW
            x = x*c[1]+c[2]
            y = y*c[3]+c[4]
        end
        return addon.mapId["Stormwind City"],x,y
    elseif zone == "EPLNew" then
        if addon.gameVersion < 30000 then
            local c = addon.wrathToClassicEPL
            x = x*c[1]+c[2]
            y = y*c[3]+c[4]
        end
        return addon.mapId["Eastern Plaguelands"],x,y
    else
        return addon.mapId[zone] or tonumber(zone),x,y
    end
end

addon.mapId["StormwindClassic"] = addon.mapId["Stormwind City"]
addon.mapId["StormwindNew"] = addon.mapId["Stormwind City"]
addon.mapId["EPLClassic"] = addon.mapId["Eastern Plaguelands"]
addon.mapId["EPLNew"] = addon.mapId["Eastern Plaguelands"]
