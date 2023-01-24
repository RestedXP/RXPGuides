local addonName, addon = ...

local RXPG = addon.RXPG
local _, class = UnitClass("player")
local _G = _G
local fmt = string.format
local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0", true)

-- Alias addon.locale.Get
local L = addon.locale.Get

local BackdropTemplate = BackdropTemplateMixin and "BackdropTemplate" or nil
function addon.SetResizeBounds(frame, width, height)
    if frame.SetResizeBounds then
        frame:SetResizeBounds(width, height)
    else
        frame:SetMinResize(width, height)
    end
end

addon.width, addon.height = 235, 125 -- Default width/height

local RXPFrame = CreateFrame("Frame", "RXPFrame", UIParent, BackdropTemplate)
addon.RXPFrame = RXPFrame
addon.enabledFrames["RXPFrame"] = RXPFrame
RXPFrame.IsFeatureEnabled = function()
    return not addon.settings.db.profile.hideGuideWindow
end

local BottomFrame = CreateFrame("Frame", "$parent_bottomFrame", RXPFrame,
                                BackdropTemplate)
local GuideName = CreateFrame("Frame", "$parentGuideName", RXPFrame,
                              BackdropTemplate)
local Footer = CreateFrame("Frame", "$parentGuideName", RXPFrame,
                           BackdropTemplate)
local ScrollFrame = CreateFrame("ScrollFrame", "$parentScrollFrame",
                                BottomFrame, "UIPanelScrollFrameTemplate")
local CurrentStepFrame = CreateFrame("Frame", nil, RXPFrame)
local ScrollChild = CreateFrame("Frame", "$parent_steps", BottomFrame,
                                BackdropTemplate)
local MenuFrame = CreateFrame("Frame", "RXPG_MenuFrame", UIParent,
                              "UIDropDownMenuTemplate")
RXPFrame.BottomFrame = BottomFrame
RXPFrame.GuideName = GuideName
RXPFrame.Footer = Footer
RXPFrame.CurrentStepFrame = CurrentStepFrame
RXPFrame.ScrollFrame = ScrollFrame
RXPFrame.ScrollChild = ScrollChild
RXPFrame.MenuFrame = MenuFrame

function addon.RenderFrame(themeUpdate)
    addon:LoadActiveTheme()

    -- TODO better handle themes
    addon.colors = addon.activeTheme

    RXPFrame.backdropEdge.edgeFile = addon.GetTexture("rxp-borders")
    RXPFrame.guideNameBackdrop.edgeFile = addon.GetTexture("rxp-borders")
    BottomFrame:ClearBackdrop()
    BottomFrame:SetBackdrop(RXPFrame.backdropEdge)
    BottomFrame:SetBackdropColor(unpack(addon.colors.background))

    if RXPFrame.activeItemFrame then
        RXPFrame.activeItemFrame:ClearBackdrop()
        RXPFrame.activeItemFrame:SetBackdrop(RXPFrame.backdropEdge)
        RXPFrame.activeItemFrame:SetBackdropColor(
            unpack(addon.colors.background))
    end

    GuideName:ClearBackdrop()
    GuideName:SetBackdrop(RXPFrame.guideNameBackdrop)
    GuideName:SetBackdropColor(unpack(addon.colors.background))
    Footer:ClearBackdrop()
    Footer:SetBackdrop(RXPFrame.backdropEdge)
    Footer:SetBackdropColor(unpack(addon.colors.background))
    Footer.bg:SetTexture(addon.GetTexture("rxp-banner"))

    GuideName.bg:SetTexture(addon.GetTexture("rxp-banner"))
    GuideName.icon:SetTexture(addon.GetTexture("rxp_logo-64"))
    GuideName.classIcon:SetTexture(addon.GetTexture(class))
    Footer.cog:SetNormalTexture(addon.GetTexture("rxp_cog-32"))

    addon.arrowFrame.texture:SetTexture(addon.GetTexture(
                                            "rxp_navigation_arrow-1"))
    addon.UpdateScrollBar()

    if not themeUpdate then
        RXPFrame.GenerateMenuTable()
        if addon.currentGuide then addon.ReloadGuide() end
    end
end

function addon.SetupGuideWindow()
    -- These were in-line, but now rely on settings

    RXPFrame.backdropEdge = {
        bgFile = "Interface/BUTTONS/WHITE8X8",
        -- edgeFile = "Interface/BUTTONS/WHITE8X8",
        -- edgeFile = "Interface/ARENAENEMYFRAME/UI-Arena-Border",
        edgeFile = addon.GetTexture("rxp-borders"),
        tile = true,
        edgeSize = 8,
        tileSize = 8,
        insets = {left = 4, right = 2, top = 2, bottom = 4}
    }

    RXPFrame.guideNameBackdrop = {
        bgFile = "Interface/BUTTONS/WHITE8X8",
        edgeFile = addon.GetTexture("rxp-borders"),
        tile = true,
        edgeSize = 8,
        tileSize = 8,
        insets = {left = 4, right = 2, top = 2, bottom = 4}
    }

    RXPFrame.bottomBackdrop = {
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        edgeSize = 1,
        insets = {left = 0, right = 0, top = -1, bottom = -1}
    }

    BottomFrame:SetBackdrop(RXPFrame.backdropEdge)
    BottomFrame:SetBackdropColor(unpack(addon.colors.background))

    GuideName:SetBackdrop(RXPFrame.guideNameBackdrop)
    GuideName:SetBackdropColor(unpack(addon.colors.background))

    GuideName.text:SetFont(addon.font, 11, "")
    GuideName.text:SetText(L(
                               "Welcome to RestedXP Guides\nRight click to pick a guide"))
    GuideName.text:SetTextColor(unpack(addon.activeTheme.textColor))

    Footer.text:SetFont(addon.font, 9, "")
    Footer.text:SetText(fmt("%s %s", addon.title, addon.release))
    Footer.text:SetTextColor(unpack(addon.activeTheme.textColor))

    GuideName.bg:SetTexture(addon.GetTexture("rxp-banner"))

    Footer:SetBackdrop(RXPFrame.guideNameBackdrop)
    Footer:SetBackdropColor(unpack(addon.colors.background))
    Footer.bg:SetTexture(addon.GetTexture("rxp-banner"))

    GuideName.icon:SetTexture(addon.GetTexture("rxp_logo-64"))

    GuideName.classIcon:SetTexture(addon.GetTexture(class))
    Footer.cog:SetNormalTexture(addon.GetTexture("rxp_cog-32"))

    addon.UpdateScrollBar()

end

RXPFrame:SetScript("OnShow", addon.PLAYER_ENTERING_WORLD)
RXPFrame:SetScript("OnHide", addon.PLAYER_LEAVING_WORLD)

RXPFrame:Show()

RXPFrame:SetMovable(true)
RXPFrame:SetClampedToScreen(true)
RXPFrame:SetResizable(true)
addon.SetResizeBounds(RXPFrame, 220, 20)

local function SetStepFrameAnchor()
    local frame = CurrentStepFrame
    local scale = RXPFrame:GetScale()
    -- local bars = RXPFrame.BarContainer
    local function SetTop()
        frame:ClearAllPoints()
        frame:SetPoint("BOTTOMLEFT", GuideName, "TOPLEFT", 0, 2)
        frame:SetPoint("BOTTOMRIGHT", GuideName, "TOPRIGHT", 0, 2)
        --[[if bars then
            bars:ClearAllPoints()
            bars:SetPoint("TOPLEFT",RXPFrame,"BOTTOMLEFT",7,-5)
            bars:SetPoint("TOPRIGHT",RXPFrame,"BOTTOMRIGHT",-7,-5)
        end]]
        frame.anchor = "TOP"
    end
    local function SetBottom()
        frame:ClearAllPoints()
        frame:SetPoint("TOPLEFT", RXPFrame, "BOTTOMLEFT", 3, 0)
        frame:SetPoint("TOPRIGHT", RXPFrame, "BOTTOMRIGHT", -3, 0)
        --[[if bars then
            bars:ClearAllPoints()
            bars:SetPoint("TOPLEFT",CurrentStepFrame,"BOTTOMLEFT",3,0)
            bars:SetPoint("TOPRIGHT",CurrentStepFrame,"BOTTOMRIGHT",-3,0)
        end]]
        frame.anchor = "BOTTOM"
    end

    if addon.settings.db.profile.anchorOrientation == "top" then
        SetTop()
        if (frame:GetTop() * scale > GetScreenHeight()) then SetBottom() end
        if frame:GetBottom() * scale < 0 then SetTop() end
    else
        SetBottom()
        if frame:GetBottom() * scale < 0 then SetTop() end
        if (frame:GetTop() * scale > GetScreenHeight()) then SetBottom() end
    end

end

RXPFrame.SetStepFrameAnchor = SetStepFrameAnchor

local isResizing

RXPFrame.OnMouseDown = function(self, button, resize)
    if addon.settings.db.profile.lockFrames then return end

    if resize or IsAltKeyDown() and
        not (addon.currentGuide and addon.currentGuide.hidewindow) then
        RXPFrame:StartSizing("BOTTOMRIGHT")
        RXPFrame:SetScript("OnUpdate", RXPFrame.BottomFrame.UpdateFrame)
        isResizing = true
    else
        RXPFrame:StartMoving()
    end
end

RXPFrame.OnMouseUp = function(self, button)
    RXPFrame:StopMovingOrSizing()
    if isResizing then
        addon.settings.db.profile.frameHeight = RXPFrame:GetHeight()
        addon.SetStep(RXPCData.currentStep)
        RXPFrame:SetScript("OnUpdate", nil)
    end
    SetStepFrameAnchor()
    addon.UpdateItemFrame()
    isResizing = false
end

RXPFrame:SetScript("OnMouseDown", RXPFrame.OnMouseDown)
RXPFrame:SetScript("OnMouseUp", RXPFrame.OnMouseUp)
RXPFrame:EnableMouse(1)

local stepPos = {}

local function StepScroll(n)
    local value
    if addon.currentGuide.steps[n].hidewindow then return end
    for i, v in ipairs(BottomFrame.stepList) do
        if v == n then
            n = i
            break
        end
    end
    if n == 1 or not stepPos[n] then
        value = 0
    else
        value = stepPos[n] / stepPos[0] * ScrollChild.f1:GetHeight() - 2
        local smax = ScrollChild.f1:GetHeight() - BottomFrame:GetHeight() + 10
        if value > smax then value = smax end
    end
    ScrollFrame.ScrollBar:SetValue(value)

end

RXPFrame:SetWidth(addon.width)
RXPFrame:SetHeight(addon.height)
RXPFrame:SetPoint("LEFT", 0, 35)
RXPFrame:SetFrameStrata("BACKGROUND")

local backdrop = {
    bgFile = "Interface/BUTTONS/WHITE8X8",
    tile = true,
    tileSize = 16
    -- edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    -- edgeSize = 16, insets = {left = 4, right = 4, top = 4, bottom = 4}
}

-- RXPFrame.CurrentStepFrame:SetBackdrop(backdrop)
-- RXPFrame.CurrentStepFrame:SetBackdropColor(0.3,0.01,0.01)
CurrentStepFrame:SetPoint("BOTTOMLEFT", GuideName, "TOPLEFT", 0, 2)
CurrentStepFrame:SetPoint("BOTTOMRIGHT", GuideName, "TOPRIGHT", 0, 2)

CurrentStepFrame:SetHeight(25)
CurrentStepFrame:SetScript("OnMouseDown", RXPFrame.OnMouseDown)
CurrentStepFrame:SetScript("OnMouseUp", RXPFrame.OnMouseUp)
CurrentStepFrame:EnableMouse(1)

CurrentStepFrame.framePool = {}

local function ClearFrameData()

    for i, stepframe in ipairs(CurrentStepFrame.framePool) do
        -- frame:SetHeight(0)
        stepframe:Hide()
        stepframe:SetScript("OnUpdate", nil)
        stepframe:SetScript("OnEvent", nil)
        stepframe:UnregisterAllEvents()
        stepframe.callback = nil
        if stepframe.step then
            stepframe.step.frame = nil
            stepframe.step.active = nil
            stepframe.step = nil
            stepframe.sticky = nil
            stepframe.index = nil
        end
        for j, frame in ipairs(stepframe.elements) do
            -- element:SetHeight(0)
            if frame.step then
                if not frame.step.sticky then
                    frame.element.completed = nil
                end
                frame.element.frame = nil
                frame.element.skip = nil
            end
            frame.step = nil
            frame.index = nil
            frame.element = nil
            frame.callback = nil
            frame:Hide()
            frame:UnregisterAllEvents()
            frame:SetScript("OnUpdate", nil)
            frame:SetScript("OnEvent", nil)
            frame:SetScript("OnEnter", nil)
            frame:SetScript("OnLeave", nil)
            frame:SetScript("OnMouseDown", nil)
            frame:SetMouseClickEnabled(false)
            frame.button:SetChecked(false)
            frame.highlight:Hide()
        end
    end
end

local activeSteps = {}
RXPFrame.activeSteps = activeSteps

function addon.UpdateStepCompletion()
    addon.updateSteps = false
    if addon.currentGuide.empty then return end

    local n = 0
    local update

    for i, step in ipairs(activeSteps) do
        local completed = true
        if not step.completed then
            for j, element in ipairs(step.elements) do
                if not (element.completed or element.skip) then
                    completed = false
                    break
                end
            end
        end

        local completewith = step.completewith
        if completewith and not completed then
            local guide = addon.currentGuide
            if completewith == "next" then
                completewith = step.index + 1
            else
                completewith = guide.labels[completewith]
            end
            if completewith then
                if guide.steps[completewith] and
                    guide.steps[completewith].sticky then
                    if RXPCData.stepSkip[completewith] then
                        completed = true
                    end
                else
                    if RXPCData.currentStep > completewith then
                        completed = true
                    end
                end
            end
        end

        if completed then
            for j, element in ipairs(step.elements) do
                if element.OnStepCompletion then
                    element:OnStepCompletion()
                end
            end
            if step.sticky then
                RXPCData.stepSkip[step.index] = true
                update = true
                step.active = nil
            elseif step.index >= RXPCData.currentStep then
                step.completed = true
                RXPFrame.BottomFrame.UpdateFrame(nil, nil, step.index)
                if step.index == RXPCData.currentStep then
                    addon.loadNextStep = true
                end
                return
            end
        end
    end

    if update then return addon.SetStep(RXPCData.currentStep) end
end

function addon.SetStep(n, n2, loopback)
    if type(n) == "table" then n = n2 end
    local guide = addon.currentGuide
    if not guide then return end
    local group = guide.group

    addon.lastStepUpdate = GetTime()

    -- print(n)
    if n > #guide.steps then
        if guide.loop then
            if loopback then
                return
            else
                return addon.SetStep(1, nil, true)
            end
        end
        local isComplete = true
        local completedStep
        for i, step in pairs(activeSteps) do
            if step.sticky and not RXPCData.stepSkip[i] then
                isComplete = false
            end
        end
        if isComplete then
            return RXPG[group].next()
        else
            n = #guide.steps
        end
    end
    RXPCData.currentStep = n
    -- isUpdating = true

    if not guide.steps[n].active then
        local step = guide.steps[n]
        for _, element in ipairs(step) do
            if element.OnStepActivation then
                element:OnStepActivation()
            end
        end
        local trackId = tonumber(step.track)
        if C_SuperTrack and trackId then
            C_SuperTrack.SetSuperTrackedQuestID(trackId)
        end
    end

    RXPCData.stepSkip[n + 1] = nil

    if guide.steps[n].sticky and n < #guide.steps then
        return addon.SetStep(n + 1)
    end

    for i, step in pairs(activeSteps) do
        step.active = nil
        if n < #guide.steps then step.completed = nil end
    end

    table.wipe(activeSteps)
    table.wipe(addon.questAccept)
    table.wipe(addon.questTurnIn)
    table.wipe(addon.activeItems)
    table.wipe(addon.activeSpells)
    ClearFrameData()
    local level = UnitLevel("player")
    local scrollHeight = 1

    for i = 1, n - 1 do
        local step = guide.steps[i]
        if step.sticky then
            local req = guide.labels[step.requires]
            if step.requires and req then
                local requiredSteps = {}
                req = guide.steps[req]
                while req and req.requires and not RXPCData.stepSkip[req.index] and
                    not req.active do
                    if requiredSteps[req] then
                        print('ERROR: Step requirement loop at steps %d and %d',
                              step.index, req.index)
                        break
                    end
                    requiredSteps[req] = true
                    req = guide.steps[guide.labels[req.requires]]
                end
            end
            step.reqFulfilled = not (req and
                                    (req.active or
                                        (req.sticky and
                                            not RXPCData.stepSkip[req.index])))
            if not RXPCData.stepSkip[i] and step.reqFulfilled and level >=
                step.level then
                table.insert(activeSteps, step)
                if n > 1 then scrollHeight = n - 1 end
                -- ScrollChild.framePool[i]:SetAlpha(0.66)
                step.active = true
            end
        end
    end

    local step = guide.steps[n]
    local req = step.requires and guide.labels[step.requires] and
                    guide.steps[guide.labels[step.requires]]
    if step.completed and n < #guide.steps then
        return addon.SetStep(n + 1)
    elseif step and not step.completed and
        not (req and #activeSteps > 0 and (req.active or not (req.reqFulfilled))) and
        level >= step.level then
        table.insert(activeSteps, step)
        ScrollChild.framePool[n]:SetAlpha(1)
        step.active = true
        scrollHeight = n
    end

    if #activeSteps == 0 then
        if n >= #guide.steps then
            return RXPG[group].next()
        else
            return addon.SetStep(n + 1)
        end
    end

    local totalHeight = 0
    local c = 0
    local heightDiff = RXPFrame:GetHeight() - CurrentStepFrame:GetHeight()
    local stepUnitscan = {}
    local stepMobs = {}
    local stepTargets = {}
    for i, step in pairs(activeSteps) do

        local index = step.index
        c = c + 1
        local stepframe = CurrentStepFrame.framePool[c]
        if not stepframe then
            CurrentStepFrame.framePool[c] =
                CreateFrame("Frame", "$parent_frame" .. c, CurrentStepFrame,
                            BackdropTemplate)
            stepframe = CurrentStepFrame.framePool[c]
            -- stepframe:SetBackdropBorderColor(0.1,0.5,0.1)
            stepframe.elements = {}
            -- addon.CreateActiveItemFrame(stepframe)
        end
        stepframe:ClearAllPoints()
        if c == 1 then
            stepframe:SetPoint("TOPLEFT", CurrentStepFrame, 0, 0)
            stepframe:SetPoint("TOPRIGHT", CurrentStepFrame, 0, 0)
        else
            stepframe:SetPoint("TOPLEFT", CurrentStepFrame.framePool[c - 1],
                               "BOTTOMLEFT", 0, -5)
            stepframe:SetPoint("TOPRIGHT", CurrentStepFrame.framePool[c - 1],
                               "BOTTOMRIGHT", 0, -5)
        end
        if not stepframe.number then
            stepframe.number = CreateFrame("Frame", "$parent_number", stepframe,
                                           BackdropTemplate)
            stepframe.number:SetPoint("TOPLEFT", stepframe, 7, 5)
            stepframe.number.text = stepframe.number:CreateFontString(nil,
                                                                      "OVERLAY")
            -- stepframe.number.text:SetFontObject(GameFontNormalSmall)
            stepframe.number.text:ClearAllPoints()
            stepframe.number.text:SetPoint("CENTER", stepframe.number, 2, 1)
            stepframe.number.text:SetJustifyH("CENTER")
            stepframe.number.text:SetJustifyV("MIDDLE")
            stepframe.number.text:SetTextColor(
                unpack(addon.activeTheme.textColor))
            stepframe.number.text:SetFont(addon.font, addon.settings.db.profile
                                              .guideFontSize, "")
        end
        if stepframe.hardcore ~= addon.settings.db.profile.hardcore or
            not stepframe.hardcore then
            stepframe.hardcore = addon.settings.db.profile.hardcore
            stepframe:ClearBackdrop()
            stepframe:SetBackdrop(RXPFrame.backdropEdge)
            stepframe:SetBackdropColor(unpack(addon.colors.background))
            stepframe.number:ClearBackdrop()
            stepframe.number:SetBackdrop(RXPFrame.backdropEdge)
            stepframe.number:SetBackdropColor(unpack(addon.colors.background))
        end

        local titletext
        if step.sticky then
            titletext = step.title or ""
        else
            titletext = step.title or (string.format(L("Step %d"), index))
        end

        if titletext == "" then
            stepframe.number:SetAlpha(0)
            stepframe.number:SetSize(10, 17)
        else
            stepframe.number:SetAlpha(1)
            stepframe.number.text:SetText(titletext)
            stepframe.number:SetSize(
                stepframe.number.text:GetStringWidth() + 10, 17)
        end

        stepframe.step = step
        stepframe.index = index
        stepframe.sticky = step.sticky

        local e = 0
        local frameHeight = 0
        for j, element in ipairs(step.elements or {}) do
            e = j
            local elementFrame = stepframe.elements[e]
            if not stepframe.elements[e] then
                stepframe.elements[e] = CreateFrame("Frame", "$parent_" .. e,
                                                    stepframe, BackdropTemplate)
                elementFrame = stepframe.elements[e]
                -- elementFrame:SetHeight(0)
                -- elementFrame:SetWidth(300)
                local button = CreateFrame("CheckButton", "$parentCheck",
                                           elementFrame,
                                           "ChatConfigCheckButtonTemplate");
                elementFrame.button = button
                button:SetSize(12, 12)
                button:SetScript("PostClick", function(self)
                    local parent = self:GetParent()
                    local element = parent.element
                    if element and not element.optional then
                        element.skip = self:GetChecked()
                    end
                    addon.updateSteps = true
                    addon.updateMap = true
                end)

                --
                button:SetPushedTexture("")
                button:SetHighlightTexture(
                    "Interface/MINIMAP/UI-Minimap-ZoomButton-Highlight", "ADD")

                elementFrame.text = getglobal(
                                        elementFrame.button:GetName() .. 'Text')
                elementFrame.text:SetParent(elementFrame)

                elementFrame.text:SetJustifyH("LEFT")
                elementFrame.text:SetJustifyV("MIDDLE")
                elementFrame.text:SetTextColor(
                    unpack(addon.activeTheme.textColor))
                elementFrame.text:SetFont(addon.font, addon.settings.db.profile
                                              .guideFontSize + 2, "") -- 11

                elementFrame.icon =
                    elementFrame:CreateFontString(nil, "OVERLAY")
                elementFrame.icon:SetFontObject(_G.GameFontNormalSmall)

                elementFrame:SetMouseMotionEnabled(true)
                local ht = elementFrame:CreateTexture(nil, "HIGHLIGHT")
                ht:SetAllPoints(elementFrame.text)
                ht:SetTexture("Interface\\Worldmap\\UI-QuestPoi-HighlightBar")
                ht:SetBlendMode("ADD")
                ht:Hide()
                elementFrame.highlight = ht

                local function tpOnEnter(self)
                    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
                        return
                    end
                    local element = self.element or self:GetParent().element
                    if element and element.tooltip then
                        _G.GameTooltip:SetOwner(self, "ANCHOR_BOTTOM", 0, -10)
                        _G.GameTooltip:ClearLines()
                        _G.GameTooltip:AddLine(element.tooltip, 1, 1, 1)
                        _G.GameTooltip:Show()
                    end
                end

                local function tpOnLeave(self)
                    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
                        return
                    end
                    local element = self.element or self:GetParent().element
                    if element and element.tooltip then
                        _G.GameTooltip:Hide()
                    end
                end

                elementFrame:SetScript("OnEnter", tpOnEnter)
                elementFrame:SetScript("OnLeave", tpOnLeave)

                elementFrame.button:HookScript("OnEnter", tpOnEnter)
                elementFrame.button:HookScript("OnLeave", tpOnLeave)
            end
            if elementFrame.button.hardcore ~=
                addon.settings.db.profile.hardcore or not elementFrame.hardcore then
                elementFrame.button:SetNormalTexture(addon.GetTexture(
                                                         "rxp-btn-blank-32"))
                elementFrame.button:SetCheckedTexture(addon.GetTexture(
                                                          "rxp-checked-32"))
                elementFrame.button:SetDisabledCheckedTexture(addon.GetTexture(
                                                                  "rxp-checked-32"))
                elementFrame.button.hardcore =
                    addon.settings.db.profile.hardcore
            end
            elementFrame.step = step
            elementFrame.element = element
            elementFrame.index = index
            element.frame = elementFrame
            elementFrame.button:Enable()
            if element.tag then
                local events = element.event or RXPG[group].events[element.tag]
                elementFrame.callback = RXPG[group][element.tag]
                elementFrame.callback(elementFrame)
                if type(events) == "string" then
                    if events == "OnUpdate" then
                        elementFrame:SetScript("OnUpdate", elementFrame.callback)
                    else
                        elementFrame:RegisterEvent(events)
                        elementFrame:SetScript("OnEvent",
                                               CurrentStepFrame.EventHandler)
                    end
                elseif type(events) == "table" then
                    for _, event in ipairs(events) do
                        if event == "OnUpdate" then
                            elementFrame:SetScript("OnUpdate",
                                                   elementFrame.callback)
                        else
                            elementFrame:RegisterEvent(event)
                            elementFrame:SetScript("OnEvent",
                                                   CurrentStepFrame.EventHandler)
                        end
                    end
                end
            end
            if element.unitscan then
                for _, t in ipairs(element.unitscan) do
                    table.insert(stepUnitscan, addon.GetCreatureName(t))
                end
            end
            if element.mobs then
                for _, t in ipairs(element.mobs) do
                    table.insert(stepMobs, addon.GetCreatureName(t))
                end
            end
            if element.targets then
                for _, t in ipairs(element.targets) do
                    table.insert(stepTargets, addon.GetCreatureName(t))
                end
            end
            local spacing = 0

        end
        for n = e + 1, #stepframe.elements do
            stepframe.elements[n]:Hide()
        end
        if step.active then
            stepframe:Show()
            if step.activeItems then
                for k, v in pairs(step.activeItems) do
                    addon.activeItems[k] = v
                end
            end
            if step.activeSpells then
                for k, v in pairs(step.activeSpells) do
                    addon.activeSpells[k] = v
                end
            end

            addon.targeting:UpdateEnemyList(stepUnitscan, stepMobs)

            addon.targeting:UpdateTargetList(stepTargets)

            addon.targeting:CheckNameplates()
        else
            stepframe:Hide()
        end
    end

    for index in pairs(RXPCData.completedWaypoints) do
        local wstep = guide.steps[index]
        if not (wstep and wstep.active) then
            -- print('kk',index)
            RXPCData.completedWaypoints[index] = nil
        end
    end
    addon.UpdateItemFrame()
    CurrentStepFrame.UpdateText()
    addon.updateSteps = true
    addon.updateMap = true
    StepScroll(scrollHeight)
end

function CurrentStepFrame.EventHandler(self, event, ...)
    -- print(event,self.index,self.element.tag)
    if addon.isHidden then
        return
    elseif self.callback and self.step and self.step.active then
        self.callback(self, event, ...)
    else
        print('!!!') -- ok
        self.callback = nil
        self:UnregisterEvent(event)
    end
end

function CurrentStepFrame.UpdateText()
    addon.updateStepText = false
    local guide = addon.currentGuide
    if not guide then return end
    local group = guide.group

    -- StepScroll(n)
    local totalHeight = 0
    local c = 0
    -- local heightDiff = RXPFrame:GetHeight() - CurrentStepFrame:GetHeight()
    for i, step in pairs(activeSteps) do

        local index = step.index
        c = c + 1
        local stepframe = CurrentStepFrame.framePool[c]

        stepframe:ClearAllPoints()
        if c == 1 then
            stepframe:SetPoint("TOPLEFT", CurrentStepFrame, 0, 0)
            stepframe:SetPoint("TOPRIGHT", CurrentStepFrame, 0, 0)
        else
            stepframe:SetPoint("TOPLEFT", CurrentStepFrame.framePool[c - 1],
                               "BOTTOMLEFT", 0, -5)
            stepframe:SetPoint("TOPRIGHT", CurrentStepFrame.framePool[c - 1],
                               "BOTTOMRIGHT", 0, -5)
        end

        stepframe.number.text:SetText(step.title or
                                          (string.format(L("Step %d"), index)))
        stepframe.number:SetSize(stepframe.number.text:GetStringWidth() + 10, 17)

        local e = 0
        local frameHeight = 0
        for j, element in ipairs(step.elements or {}) do
            e = j
            local elementFrame = stepframe.elements[e]
            if elementFrame then
                elementFrame:Show()

                local spacing = 0
                if step.hidewindow then
                    elementFrame:SetAlpha(0)
                    elementFrame.button:Hide()
                    elementFrame:SetHeight(1)
                    spacing = 1
                elseif element.text then
                    elementFrame:SetAlpha(1)
                    local text = elementFrame.text

                    elementFrame.button:ClearAllPoints()
                    elementFrame.button:SetPoint("TOPLEFT", elementFrame, 6, -1);
                    elementFrame.text:ClearAllPoints()
                    elementFrame.text:SetPoint("TOPLEFT", elementFrame.button,
                                               "TOPRIGHT", 11, -1)
                    elementFrame.text:SetPoint("RIGHT", stepframe, -5, 0)

                    text:SetText(L(element.text))
                    local h = math.ceil(elementFrame.text:GetStringHeight() *
                                            1.1) + 1
                    -- print('sh:',h)
                    elementFrame:SetHeight(h)
                    frameHeight = frameHeight + h

                    -- local diffx,diffy = elementFrame.text:GetWidth() - GuideName:GetWidth(),elementFrame.text:GetHeight() - GuideName:GetHeight()
                    if elementFrame.text:GetWidth() > GuideName:GetWidth() + 600 then
                        elementFrame:EnableMouse(false)
                        elementFrame.button:EnableMouse(false)
                    else
                        elementFrame:EnableMouse(true)
                        elementFrame.button:EnableMouse(true)
                    end
                    elementFrame.icon:ClearAllPoints()
                    elementFrame.icon:SetPoint("TOPLEFT", elementFrame.button,
                                               "TOPRIGHT", 0, -1)
                    if element.textOnly then
                        elementFrame.button:SetChecked(true)
                        elementFrame.button:Hide()
                        element.completed = true
                    else
                        elementFrame.button:Show()
                    end

                else
                    elementFrame:SetAlpha(0)
                    elementFrame.button:Hide()
                    elementFrame:SetHeight(1)
                    element.completed = true
                    spacing = 1
                end
                elementFrame:ClearAllPoints()
                if e == 1 then
                    elementFrame:SetPoint("TOPLEFT", stepframe, 0, -10 + spacing)
                    elementFrame:SetPoint("TOPRIGHT", stepframe, 0,
                                          -10 + spacing)
                else
                    elementFrame:SetPoint("TOPLEFT", stepframe.elements[e - 1],
                                          "BOTTOMLEFT", 0, 0 + spacing)
                    elementFrame:SetPoint("TOPRIGHT", stepframe.elements[e - 1],
                                          "BOTTOMRIGHT", 0, 0 + spacing)
                end
                if element.tag and element.text then
                    local icon = element.icon or addon.icons[element.tag] or ""
                    elementFrame.icon:SetText(icon)
                    elementFrame.icon:Show()
                else
                    elementFrame.icon:Hide()
                end

            end

        end

        if step.hidewindow then
            stepframe:SetAlpha(0)
            frameHeight = 1
            stepframe:EnableMouse(false)
        else
            if stepframe:GetWidth() > GuideName:GetWidth() + 600 then
                stepframe:EnableMouse(false)
            else
                stepframe:EnableMouse(true)
            end
            stepframe:SetAlpha(1)
            frameHeight = math.ceil(frameHeight + 18)
        end
        stepframe:SetHeight(frameHeight)
        totalHeight = totalHeight + frameHeight + 5
    end
    CurrentStepFrame:SetHeight(totalHeight - 5)
end

BottomFrame:SetPoint("TOPLEFT", RXPFrame, 3, -3)
BottomFrame:SetPoint("BOTTOMRIGHT", RXPFrame, -3, 14)

-- GuideName:SetBackdropColor(unpack(addon.colors.background))
GuideName:SetPoint("BOTTOMLEFT", BottomFrame, "TOPLEFT", 0, -9)
GuideName:SetPoint("BOTTOMRIGHT", BottomFrame, "TOPRIGHT", 0, -9)
GuideName:SetHeight(35)
GuideName.text = GuideName:CreateFontString(nil, "OVERLAY")
-- GuideName.text:SetFontObject(GameFontNormalSmall)
GuideName.text:ClearAllPoints()
GuideName.text:SetPoint("LEFT", GuideName, 29, 0)
GuideName.text:SetPoint("RIGHT", GuideName, 0, 0)
GuideName.text:SetJustifyH("CENTER")
GuideName.text:SetJustifyV("MIDDLE")

GuideName:SetFrameLevel(6)

GuideName.bg = GuideName:CreateTexture("$parentBG", "BACKGROUND")

GuideName.bg:SetPoint("TOPLEFT", 4, -2)
GuideName.bg:SetPoint("BOTTOMRIGHT", -2, 4)

-- footer
-- Footer:SetBackdrop(RXPFrame.backdropEdge)
Footer:SetPoint("BOTTOMLEFT", RXPFrame, "BOTTOMLEFT", 3, 0)
Footer:SetPoint("BOTTOMRIGHT", RXPFrame, "BOTTOMRIGHT", -3, 0)
Footer:SetHeight(20)
Footer.text = GuideName:CreateFontString(nil, "OVERLAY")
-- GuideName.text:SetFontObject(GameFontNormalSmall)
Footer.text:ClearAllPoints()
Footer.text:SetPoint("LEFT", Footer, 40, 1)
Footer.text:SetPoint("RIGHT", Footer, -16, 1)
Footer.text:SetJustifyH("LEFT")
Footer.text:SetJustifyV("MIDDLE")

Footer:SetFrameLevel(6)
Footer.bg = Footer:CreateTexture("$parentBG", "BACKGROUND")

Footer.bg:SetPoint("TOPLEFT", 4, -2)
Footer.bg:SetPoint("BOTTOMRIGHT", -2, 4)

Footer.icon = CreateFrame("Button", "$parentResize", Footer)
Footer.icon:SetFrameLevel(Footer:GetFrameLevel() + 1)
Footer.icon:SetSize(16, 16)
Footer.icon:SetPoint("BOTTOMRIGHT", Footer, "BOTTOMRIGHT", -1, 3)

Footer.icon:SetNormalTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
Footer.icon:SetHighlightTexture(
    "Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight", "ADD")
Footer.icon:SetScript("OnMouseDown", function(self, button)
    RXPFrame.OnMouseDown(self, button, true)
end)
Footer.icon:SetScript("OnMouseUp", RXPFrame.OnMouseUp)

-- addon.StartTimer(duration,label)

GuideName.icon = GuideName:CreateTexture("RXPIcon", "ARTWORK")

GuideName.icon:SetPoint("CENTER", GuideName, "LEFT", 16, 0)
GuideName.icon:SetSize(42, 42)

GuideName.classIcon = GuideName:CreateTexture("RXPClassIcon", "OVERLAY")

GuideName.classIcon:SetPoint("CENTER", GuideName.icon, "BOTTOMRIGHT", -4, 10)
GuideName.classIcon:SetSize(24, 24)

Footer.cog = CreateFrame("Button", "$parentCogwheel", RXPFrame)
Footer.cog:SetFrameLevel(GuideName:GetFrameLevel() + 1)
Footer.cog:SetWidth(18)
Footer.cog:SetHeight(18)
Footer.cog:SetPoint("LEFT", Footer, "LEFT", 1, 1)
-- Footer.cog:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
Footer.cog:SetHighlightTexture(
    "Interface/MINIMAP/UI-Minimap-ZoomButton-Highlight", "ADD")
Footer.cog:Show()
Footer.cog:SetScript("OnClick", function(self) RXPFrame.DropDownMenu() end)
-- local buttonToggle = 0
-- Footer.cog:HookScript("OnEnter", function(self) buttonToggle = GetTime() end)
-- Footer.cog:HookScript("OnLeave", function(self) self:Hide() end)

function RXPFrame.DropDownMenu()
    if LibDD then
        LibDD:EasyMenu(RXPFrame.menuList, MenuFrame, "cursor", 0, 0, "MENU");
    else
        _G.EasyMenu(RXPFrame.menuList, MenuFrame, "cursor", 0, 0, "MENU");
    end
end

GuideName.OnMouseDown = function(self, button)
    if button == "RightButton" then
        RXPFrame.DropDownMenu()
    else
        RXPFrame.OnMouseDown(self, button)
    end
end
GuideName.OnMouseUp = function(self, button)
    if button ~= "RightButton" then RXPFrame.OnMouseUp(self, button) end
end
GuideName:SetScript("OnMouseDown", GuideName.OnMouseDown)
Footer:SetScript("OnMouseDown", GuideName.OnMouseDown)

GuideName:SetScript("OnMouseUp", GuideName.OnMouseUp)
Footer:SetScript("OnMouseUp", GuideName.OnMouseUp)

--[[GuideName:SetScript("OnEnter", function() Footer.cog:Show() end)
GuideName:SetScript("OnLeave", function()
    if GetTime() - buttonToggle > 0.1 then Footer.cog:Hide() end
end)]]

ScrollFrame:SetPoint("TOPLEFT", BottomFrame, 5, -5)
ScrollFrame:SetPoint("BOTTOMRIGHT", BottomFrame, -20, 7)
ScrollFrame.ScrollBar:SetPoint("TOPLEFT", ScrollFrame, "TOPRIGHT", 0, -18)

function addon.UpdateScrollBar()
    local prefix = addon.GetTexture("Scrollbar/")

    local s = ScrollFrame.ScrollBar.ScrollDownButton
    s.Normal:SetTexture(prefix .. "Down-Normal")
    s.Highlight:SetTexture(prefix .. "Down-Highlight") -- ?
    s.Pushed:SetTexture(prefix .. "Down-Pushed")
    s.Disabled:SetTexture(prefix .. "Down-Disabled")
    s = ScrollFrame.ScrollBar.ScrollUpButton
    s.Normal:SetTexture(prefix .. "Up-Normal")
    s.Highlight:SetTexture(prefix .. "Up-Highlight")
    s.Pushed:SetTexture(prefix .. "Up-Pushed")
    s.Disabled:SetTexture(prefix .. "Up-Disabled")
    ScrollFrame.ScrollBar:SetThumbTexture(prefix .. "Knob")
end

hooksecurefunc(ScrollFrame.ScrollBar, "SetValue", function(self, value)
    local h = math.floor(ScrollChild:GetHeight() + 10)
    local scroll = h - BottomFrame:GetHeight()
    local index = RXPCData.currentStep and RXPCData.currentStep > 1 and
                      stepPos[RXPCData.currentStep - 1]
    local zero = addon.settings.db.profile.hideCompletedSteps and index and
                     index + RXPCData.currentStep or 0
    if scroll < zero then scroll = zero end
    if scroll <= value then ScrollFrame.ScrollBar.ScrollDownButton:Disable() end
    ScrollFrame.ScrollBar:SetMinMaxValues(zero, scroll)
end)

ScrollChild.framePool = {}
ScrollChild:SetWidth(RXPFrame:GetWidth() - 35)

ScrollFrame:SetScrollChild(ScrollChild)

function addon.GetGuideName(guide)
    if not guide then guide = addon.currentGuide end
    local som = addon.settings.db.profile.SoM
    if som and guide.somname then
        return guide.somname
    elseif not som and guide.eraname then
        return guide.eraname
    else
        return guide.displayname
    end
end

RXPFrame.bottomMenu = {
    {
        notCheckable = 1,
        text = L("Go to step") .. " 1",
        func = addon.SetStep,
        arg1 = 1
    }, {
        notCheckable = 1,
        text = L("Select another guide"),
        func = RXPFrame.DropDownMenu
    }, {
        text = L("Reload Guide"),
        notCheckable = 1,
        func = addon.LoadGuide,
        arg1 = addon.currentGuide
    }, {
        text = "Options...",
        notCheckable = 1,
        func = function()
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        end
    }, { -- Give Feedback for step, updated by addon.comms:Setup()
        notCheckable = 1,
        text = L("Give Feedback for step")
    },
    {text = _G.CLOSE, notCheckable = 1, func = function(self) self:Hide() end}
}

addon.emptyGuide = {
    empty = true,
    hidewindow = true,
    name = "",
    group = "",
    displayname = L("Welcome to RestedXP Guides\nRight click to pick a guide"),
    steps = {{hidewindow = true, text = ""}}
}

function addon:LoadGuide(guide, OnLoad)
    addon.loadNextStep = false

    if not addon.IsGuideActive(guide) or not guide.empty and
        (guide.farm and not RXPCData.GA or not guide.farm and RXPCData.GA) then
        return addon:LoadGuide(addon.emptyGuide)
    end

    if addon.settings.db.profile.frameHeight then
        RXPFrame:SetHeight(addon.settings.db.profile.frameHeight)
    end
    if addon.noGuide then
        RXPFrame:SetHeight(addon.height)
        RXPFrame.BottomFrame.UpdateFrame()
        addon.noGuide = nil
    end

    _G.CloseDropDownMenus()

    if not (OnLoad and RXPCData and RXPCData.currentStep) then
        RXPCData.currentStep = 1
        RXPCData.stepSkip = {}
        RXPCData.completedWaypoints = {}
    end
    -- local totalHeight = 0
    local nframes = 0

    table.wipe(addon.scheduledTasks)
    table.wipe(addon.stepUpdateList)
    addon.currentGuide = {}

    for k, v in pairs(guide) do addon.currentGuide[k] = v end
    addon.currentGuide.steps = {}
    for _, step in ipairs(guide.steps) do
        if addon.IsStepShown(step) then
            table.insert(addon.currentGuide.steps, step)
        end
    end
    guide = addon.currentGuide

    addon.currentGuideName = guide.name
    RXPCData.currentGuideName = guide.name
    RXPCData.currentGuideGroup = guide.group
    local guidename = addon.GetGuideName(guide)
    if guide.subgroup then
        GuideName.text:SetText(guidename .. "\n" .. guide.subgroup)
    else
        GuideName.text:SetText(guidename)
    end

    guide.labels = {}

    local lastStep = guide.steps[#guide.steps]
    if lastStep then lastStep.lastStep = true end

    -- Lookup feedbackMenuIndex, avoid dynamic/future menu change conflicts
    local feedbackMenuIndex
    for i, m in ipairs(addon.RXPFrame.bottomMenu) do
        if m.text == L("Give Feedback for step") then
            feedbackMenuIndex = i
            break
        end
    end

    for n, step in ipairs(guide.steps) do
        step.index = n
        BottomFrame.stepList[n] = n
        if step.completewith then step.sticky = true end
        if step.requires then
            local requirement = guide.labels[step.requires]
            if requirement then
                local requiredStep = guide.steps[requirement]
                if requiredStep.sticky and not requiredStep.completewith and
                    not step.sticky then
                    step.label = step.label or n
                    requiredStep.completewith = step.label
                end
            end
        end
        step.level = tonumber(step.level) or 0
        if step.label then guide.labels[step.label] = n end

        nframes = nframes + 1
        ScrollChild.framePool[n] = ScrollChild.framePool[n] or
                                       CreateFrame("Frame",
                                                   "$parent_frame_" .. n,
                                                   ScrollChild, BackdropTemplate)
        local frame = ScrollChild.framePool[n]
        frame:Show()
        frame.step = step
        frame:SetAlpha(0.66)
        frame:ClearAllPoints()
        local anchor
        if n == 1 then
            anchor = ScrollChild
            frame:SetPoint("TOPLEFT", anchor, "TOPLEFT", 2, -3)
            frame:SetPoint("TOPRIGHT", anchor, "TOPRIGHT", 2, -3)
        else
            anchor = ScrollChild.framePool[n - 1]
            frame:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, -3)
            frame:SetPoint("TOPRIGHT", anchor, "BOTTOMRIGHT", 0, -3)
        end
        -- frame:SetBackdrop(RXPFrame.bottomBackdrop)
        frame:ClearBackdrop()
        frame:SetBackdrop(backdrop)
        frame:SetBackdropColor(unpack(addon.colors.bottomFrameBG))

        frame:SetScript("OnEnter", function(self)
            self.currentAlpha = self:GetAlpha()
            if not (self.step and self.step.hidewindow) then
                self:SetAlpha(1)
                self:SetBackdropColor(unpack(addon.colors.bottomFrameHighlight))
            end
        end)
        frame:SetScript("OnLeave", function(self)
            self:SetBackdropColor(unpack(addon.colors.bottomFrameBG))
            self:SetAlpha(self.currentAlpha)
        end)
        frame.timer = 0
        frame.index = n
        frame.guide = guide
        frame:SetScript("OnMouseDown", function(self, button)
            if (button == "RightButton" or GetTime() - self.timer <= 0.5) and
                not (self.step and self.step.hidewindow) then
                self.timer = 0
                local n = self.step.index
                local bottomMenu = RXPFrame.bottomMenu
                bottomMenu[1].text = L("Go to step") .. " " .. n
                bottomMenu[1].arg1 = n
                bottomMenu[feedbackMenuIndex].arg1 = n
                if LibDD then
                    LibDD:EasyMenu(bottomMenu, MenuFrame, "cursor", 0, 0, "MENU");
                else
                    _G.EasyMenu(bottomMenu, MenuFrame, "cursor", 0, 0, "MENU");
                end
            else
                self.timer = GetTime()
            end
        end)

        if not frame.text then
            frame.text = frame:CreateFontString(nil, "OVERLAY")
        end

        if not frame.number then
            frame.number = CreateFrame("Frame", "$parent_number", frame,
                                       BackdropTemplate)
            frame.number:SetPoint("BOTTOMRIGHT", frame)
            frame.number.text = frame.number:CreateFontString(nil, "OVERLAY")
            frame.number.text:SetFontObject(_G.GameFontNormalSmall)
            frame.number.text:ClearAllPoints()
            frame.number.text:SetPoint("CENTER", frame.number, 0, 0)
            frame.number.text:SetJustifyH("CENTER")
            frame.number.text:SetJustifyV("MIDDLE")
            frame.number.text:SetTextColor(unpack(addon.activeTheme.textColor))
            frame.number.text:SetFont(addon.font, addon.settings.db.profile
                                          .guideFontSize - 1, "") -- 8
            local prefix = ""
            if n < 10 then prefix = "0" end
            frame.number.text:SetText(prefix .. tostring(n))
            frame.number:SetSize(frame.number.text:GetStringWidth() + 2, 10)
        end

        frame.text:SetFontObject(_G.GameFontNormalSmall)
        frame.text:ClearAllPoints()
        frame.text:SetPoint("TOPLEFT", frame, 0, -5)
        frame.text:SetPoint("BOTTOMRIGHT", frame.number, "BOTTOMLEFT", 0, 0)
        frame.text:SetJustifyH("LEFT")
        frame.text:SetJustifyV("TOP")
        frame.text:SetTextColor(unpack(addon.activeTheme.textColor))
        frame.text:SetFont(addon.font, addon.settings.db.profile.guideFontSize,
                           "")

        -- frame.text:SetHeight(1000)

        -- frame.text:SetText(text)

        frame:SetHeight(20)

    end
    if #ScrollChild.framePool > nframes then
        for i = nframes + 1, #ScrollChild.framePool do
            ScrollChild.framePool[i]:Hide()
        end
    end
    ScrollChild.f1 = ScrollChild.f1 or CreateFrame("Frame", nil, ScrollChild)
    ScrollChild.f1:ClearAllPoints()
    ScrollChild.f1:SetPoint("TOPLEFT", ScrollChild.framePool[1], 0, 10)
    ScrollChild.f1:SetPoint("BOTTOMRIGHT", ScrollChild.framePool[nframes])
    ScrollChild.f1:Hide()
    ScrollChild:SetHeight(200)
    addon.SetStep(RXPCData.currentStep)
    BottomFrame.hiddenFrames = 0
    BottomFrame.UpdateFrame()
    addon.tickTimer = 0
end

function addon.ReloadGuide()
    local guide = addon.GetGuideTable(RXPCData.currentGuideGroup,
                                      RXPCData.currentGuideName)
    return guide and addon:LoadGuide(guide)
end

function BottomFrame.UpdateFrame(self, inc, stepn, updateText)
    local level = UnitLevel("player")
    if stepPos[0] and ((not self and stepn) or (self and self.step)) then
        local stepNumber = stepn or self.step.index
        local frame, step
        for i, v in ipairs(BottomFrame.stepList) do
            if v == stepNumber then
                frame = ScrollChild.framePool[i]
                step = addon.currentGuide.steps[v]
                break
            end
        end
        if not (frame and step) then return end

        local fheight
        local hideStep = step.level > level or step.hidewindow

        local text
        for _, element in ipairs(frame.step.elements) do
            if element.requestFromServer then
                if not element.element then
                    element.element = element
                end
                RXPG[addon.currentGuide.group][element.tag](element,
                                                            "WindowUpdate")
                if element.requestFromServer then
                    addon.updateStepText = true
                    addon.stepUpdateList[element.step.index] = true
                end
            end
            local rawtext = element.tooltipText
            if not rawtext and element.text then
                local icon = element.icon or addon.icons[element.tag] or ""
                rawtext = icon .. element.text
            end
            if hideStep then
                text = ""
            elseif rawtext and not element.hideTooltip then
                if not text then
                    text = "   " .. rawtext
                else
                    text = text .. "\n   " .. rawtext
                end
            end
        end
        step.text = text
        frame.text:SetText(text)

        if hideStep then
            fheight = 1
            frame:SetAlpha(0)
        else
            fheight = math.ceil(frame.text:GetStringHeight() + 8)
            frame:SetAlpha(1)
        end

        local hDiff = fheight - frame:GetHeight()
        frame:SetHeight(fheight)

        for n = stepNumber + 1, #stepPos do
            stepPos[n] = stepPos[n] + hDiff
        end
        stepPos[0] = stepPos[0] + hDiff

    else
        addon.updateBottomFrame = false
        local totalHeight = 0
        local hiddenFrames = 0
        for n, frame in ipairs(ScrollChild.framePool) do
            if not frame:IsShown() then break end
            local text
            frame.step = addon.currentGuide.steps[BottomFrame.stepList[n]]
            local step = frame.step
            local hideStep = step.level > level or step.hidewindow
            local fheight
            for _, element in ipairs(frame.step.elements or {}) do
                if not self then
                    local stepDiff = element.step.index - RXPCData.currentStep
                    element.element = element
                    if element.requestFromServer then
                        RXPG[addon.currentGuide.group][element.tag](element,
                                                                    "WindowUpdate")
                        addon.updateStepText =
                            addon.updateStepText or
                                not element.requestFromServer
                        addon.stepUpdateList[element.step.index] =
                            not element.requestFromServer
                    elseif element.tag and
                        (stepDiff <= 8 and stepDiff >= 0 or element.keepUpdating) then
                        RXPG[addon.currentGuide.group][element.tag](element,
                                                                    "WindowUpdate")
                    end
                end
                local rawtext = element.tooltipText
                if not rawtext and element.text then
                    local icon = element.icon or addon.icons[element.tag] or ""
                    rawtext = icon .. element.text
                end
                if hideStep then
                    text = ""
                elseif rawtext and not element.hideTooltip and rawtext ~= "" then
                    if not text then
                        text = "   " .. rawtext
                    else
                        text = text .. "\n   " .. rawtext
                    end
                end
            end

            if step.completed or
                (not step.sticky and RXPCData.currentStep > step.index) or
                RXPCData.stepSkip[step.index] then
                frame:SetAlpha(0.5)
            else
                frame:SetAlpha(1)
            end
            if hideStep then
                hiddenFrames = hiddenFrames + 1
                frame.text:SetText(text)
                fheight = 1
                frame:SetAlpha(0)
            else
                frame.text:SetText(text)
                fheight = math.ceil(frame.text:GetStringHeight() + 8)
            end
            step.text = text
            frame:SetHeight(fheight)
            totalHeight = totalHeight + fheight + 2
            stepPos[n] = totalHeight - 5
        end
        if hiddenFrames ~= BottomFrame.hiddenFrames then
            BottomFrame.SortSteps()
        end
        BottomFrame.hiddenFrames = hiddenFrames
        stepPos[0] = totalHeight
        -- print(ScrollChild.framePool[#ScrollChild.framePool]:GetBottom(),totalHeight)
    end
    local guide = addon.currentGuide
    if guide then
        ScrollChild:SetHeight(ScrollChild.f1:GetHeight() -
                                  BottomFrame.hiddenFrames * 4)
    end
    local w = RXPFrame:GetWidth() - 35
    ScrollChild:SetWidth(w)
    local bottomFrameHeight = BottomFrame:GetHeight()
    if bottomFrameHeight < 30 then
        BottomFrame:Hide()
        if RXPFrame:GetHeight() < 28 then RXPFrame:SetHeight(28) end
    elseif guide and guide.hidewindow then
        if RXPFrame:GetHeight() > 50 then
            addon.settings.db.profile.frameHeight = RXPFrame:GetHeight()
        end
        RXPFrame:SetHeight(28)
        BottomFrame:Hide()
    elseif not BottomFrame:IsShown() then
        if addon.settings.db.profile.frameHeight then
            RXPFrame:SetHeight(math.max(addon.settings.db.profile.frameHeight,
                                        50))
        end
        BottomFrame:Show()
    end

end
-- addon.hiddenFrames = 0
BottomFrame.stepList = {}
function BottomFrame.SortSteps()
    table.sort(BottomFrame.stepList, function(k1, k2)
        local step1 = k1 and addon.currentGuide.steps[k1]
        local step2 = k2 and addon.currentGuide.steps[k2]
        if not (step1 and step2) then return k1 < k2 end
        step1 = step1.hidewindow
        step2 = step2.hidewindow
        if step2 and not step1 then
            return true
        elseif step1 and not step2 then
            return false
        elseif k1 < k2 then
            return true
        end
    end)

    for i = 1, #BottomFrame.stepList do
        local n = BottomFrame.stepList[i]
        local frame = ScrollChild.framePool[i]
        local prefix = ""
        if n < 10 then prefix = "0" end
        frame.number.text:SetText(prefix .. tostring(n))
    end
end

local function IsGuideActive(guide)
    if guide and addon.SeasonCheck(guide) and addon.PhaseCheck(guide) and
        addon.XpRateCheck(guide) and addon.FreshAccountCheck(guide) and
        addon.LevelCheck(guide) then
        -- print('-',guide.name,not guide.som,not guide.era,som)
        return true
    end
end

addon.IsGuideActive = IsGuideActive

function RXPFrame.GenerateMenuTable(menu)
    local menuList = menu or {}

    local groupList = {}
    local farmGuides = {}
    local unusedGuides = {}

    for group in pairs(addon.guideList) do
        local firstChar = group:sub(1, 1)
        if RXPCData and RXPCData.GA then
            if firstChar == "+" then table.insert(farmGuides, group) end
        elseif firstChar ~= "+" then
            if firstChar ~= "*" then
                table.insert(groupList, group)
            else
                table.insert(unusedGuides, group)
            end
        end
    end

    table.sort(farmGuides)
    table.sort(groupList)
    table.sort(unusedGuides)

    local menuIndex = 1

    local function createMenu(group)
        local t = addon.guideList[group]
        menuIndex = menuIndex + 1

        if not t.sorted_ then
            t.sorted_ = true
            table.sort(t.names_)
        end
        local item = {
            text = group,
            notCheckable = 1,
            hasArrow = true,
            menuList = {}
        }
        item.subgroups = {}
        item.subtable = {}
        local submenuIndex = 0
        for j, guideName in ipairs(t.names_) do
            local guide = addon.GetGuideTable(group, guideName)
            if IsGuideActive(guide) then
                if guide.subgroup then
                    local subgroup = guide.subgroup
                    local subtable = item.subtable[subgroup]
                    if not subtable then
                        local subname = subgroup:gsub("^(%d)-(%d%d?)",
                                                      addon.affix)
                        subtable = {
                            text = subgroup,
                            notCheckable = 1,
                            hasArrow = true,
                            menuList = {}
                        }
                        item.subtable[subname] = subtable
                        table.insert(item.subgroups, subname)
                    end
                    local subitem = {}
                    subitem.text = addon.GetGuideName(guide)
                    subitem.func = addon.LoadGuide
                    subitem.arg1 = guide
                    subitem.notCheckable = 1
                    table.insert(subtable.menuList, subitem)
                else
                    submenuIndex = submenuIndex + 1
                    guide.menuIndex = menuIndex
                    guide.submenuIndex = submenuIndex
                    local subitem = {}
                    subitem.text = addon.GetGuideName(guide)
                    subitem.func = addon.LoadGuide
                    subitem.arg1 = guide
                    subitem.notCheckable = 1
                    table.insert(item.menuList, subitem)
                end
            end
        end

        if #item.subgroups > 0 then
            table.sort(item.subgroups)
            for i, subgroup in ipairs(item.subgroups) do
                table.insert(item.menuList, item.subtable[subgroup])
            end
        else
            item.subgroups = nil
            item.subtable = nil
        end

        table.insert(menuList, item)
    end

    if #groupList > 0 then
        table.insert(menuList, {
            text = L("Available Guides"),
            isTitle = 1,
            notCheckable = 1
        })
        for _, group in ipairs(groupList) do createMenu(group) end
    end

    if #farmGuides > 0 then
        table.insert(menuList, {
            text = L("Gold Farming Guides"),
            notCheckable = 1,
            isTitle = 1
        })
        for _, group in ipairs(farmGuides) do createMenu(group) end
    end

    if addon.settings.db.profile.showUnusedGuides and #unusedGuides > 0 then
        table.insert(menuList,
                     {text = L("Unused Guides"), notCheckable = 1, isTitle = 1})
        for _, group in ipairs(unusedGuides) do createMenu(group) end
    end

    table.insert(menuList, {text = "", notCheckable = 1, isTitle = 1})

    if addon.game == "CLASSIC" then
        local hctext
        if addon.settings.db.profile.hardcore then
            hctext = L("Deactivate Hardcore mode")
        else
            hctext = L("Activate Hardcore mode")
        end
        table.insert(menuList, {
            text = hctext,
            notCheckable = 1,
            func = addon.HardcoreToggle
        })
    end

    if RXPCData and RXPCData.GA then
        local text = L("Activate the Quest Guide mode")
        table.insert(menuList,
                     {text = text, notCheckable = 1, func = addon.GAToggle})
    elseif addon.farmGuides > 0 then
        local text = L("Activate the Gold Assistant mode")
        table.insert(menuList,
                     {text = text, notCheckable = 1, func = addon.GAToggle})
    end

    table.insert(menuList, {
        text = _G.GAMEOPTIONS_MENU .. "...",
        notCheckable = 1,
        func = function()
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        end
    })

    table.insert(menuList, {
        text = L("Import guide"),
        notCheckable = 1,
        func = function()
            if _G.Settings and _G.Settings.GetCategory then
                _G.Settings.GetCategory(addon.RXPOptions.name).expanded = true;
                _G.Settings.OpenToCategory(addon.RXPOptions.name);
                -- Settings.OpenToCategory(addon.settings.gui.import); -- causes UI taint on 10.0
            else
                _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui
                                                            .import)
                _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui
                                                            .import)
            end
        end
    })

    if addon.settings.db and addon.settings.db.profile.enableTracker then
        table.insert(menuList, {
            text = L("Leveling report"),
            notCheckable = 1,
            func = function()
                addon.tracker:ShowReport(_G.CharacterFrame)
            end
        })
    end

    table.insert(menuList, {
        text = L("Open Feedback Form"),
        notCheckable = 1,
        func = function() addon.comms.OpenBugReport() end
    })

    table.insert(menuList, {
        text = _G.CLOSE,
        notCheckable = 1,
        func = function(self) self:Hide() end
    })

    -- Only update RXPFrame.menuList by default
    if not menu then RXPFrame.menuList = menuList end

    return menuList
end

function addon.UpdateGuideFontSize()
    local size =
        (addon.settings.db and addon.settings.db.profile.guideFontSize) or 9

    GuideName.text:SetFont(addon.font, size + 2, "")
    Footer.text:SetFont(addon.font, size, "")
end
