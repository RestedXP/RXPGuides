local addonName, addon = ...

local locale = _G.GetLocale()
local pairs, assert, type = pairs, assert, type
local min, max, floor, abs = math.min, math.max, math.floor, math.abs
local strbyte, strsub = string.byte, string.sub
local CreateFrame, UIParent = CreateFrame, UIParent

-- AceAddon doesn't exist yet
local AceGUI = LibStub("AceGUI-3.0")
local guideWindowDefaultWidth, guideWindowDefaultHeight = 235, 270
local guideWindowBackgroundColor = {7 / 255, 8 / 255, 19 / 255, 0.68} -- #070813AD
local guideStepsViewportColor = {7 / 255, 8 / 255, 19 / 255, 0.68} -- #070813AD
local guideStepsCardColor = {22 / 255, 24 / 255, 42 / 255, 0.98} -- #16182AFA
local guideStepsBadgeColor = {11 / 255, 12 / 255, 26 / 255, 1} -- #0B0C1AFF

addon.ui = {v2 = {}}
addon.v2 = addon.v2 or {}

-- Locale doesn't exist yet
local L

function addon.ui.v2:Initialize()

    -- Locales.lua loads after this file is included
    L = addon.locale.Get

    self:RegisterRXPV2ScrollFrame()
    self:RegisterRXPV2GuideStepsItem()
    self:RegisterRXPV2GuideSteps()
    self:RegisterRXPV2GuideWindow()
    self:RegisterRXPV2ActiveStepsFrame()
    self:RegisterRXPV2ActivePartyStepsFrame()
    self:RegisterRXPV2ActiveStepItem()
    self:RegisterRXPV2ActivePartyStepItem()
end

local function updateTheme(this, payload)
    if not payload then return end

    if payload.scale and this.SetScale then this:SetScale(payload.scale) end

    if this.UpdateSubTheme then
        this:UpdateSubTheme(payload)
    end

    if payload.updateChildren then
        for _, child in pairs(this.children or {}) do
            if child.UpdateTheme then
                child:UpdateTheme({updateChildren = true})
            end
        end
    end
end

function addon.ui.v2:SetFrameBackdropShown(frame, shown)
    if frame.rxpBackground then frame.rxpBackground:SetShown(shown) end
    if frame.rxpBorder then frame.rxpBorder:SetShown(shown) end
    if frame.rxpShadow then frame.rxpShadow:SetShown(shown) end
end

local function updateFrameBackgroundVisibility(this, payload)
    if not payload or payload.hideBackground == nil then return end

    local shown = not payload.hideBackground
    addon.ui.v2:SetFrameBackdropShown(this.frame, shown)
end

local function updatePartyFrameBackgroundVisibility(this, payload)
    if not payload or payload.hideBackground == nil then return end

    updateFrameBackgroundVisibility(this, payload)

    local shown = not payload.hideBackground
    this.closebutton:SetShown(shown)
    this.footer:SetShown(shown)
    this.sizer:SetShown(shown)
    for _, tab in pairs(this.tabButtons or {}) do
        tab:SetShown(not not tab.rxpPlayer)
    end
end

local function setTextureGroupColor(group, color)
    for _, texture in ipairs(group.textures) do
        texture:SetVertexColor(unpack(color))
    end
end

function addon.ui.v2:ApplyFrameBackdrop(frame, edge, backgroundColor, borderColor)
    local path = edge.edgeFile
    local size = edge.edgeSize
    local texCoords = edge.texCoords

    local function setBorderTexture(texture, key)
        texture:SetTexture(path)
        texture:SetTexCoord(unpack(texCoords[key]))
    end

    if not frame.rxpBackground then
        local background = CreateFrame("Frame", nil, frame)
        background:SetAllPoints(frame)
        background:SetFrameLevel(frame:GetFrameLevel())
        local fill = background:CreateTexture(nil, "BACKGROUND")
        fill:SetTexture("Interface/BUTTONS/WHITE8X8")
        fill:SetAllPoints(background)
        background.textures = {fill}

        frame.rxpBackground = background
    end

    setTextureGroupColor(frame.rxpBackground, backgroundColor)

    if frame.rxpBorder then
        setTextureGroupColor(frame.rxpBorder, borderColor)
        return
    end

    local border = CreateFrame("Frame", nil, frame)
    border:SetAllPoints(frame)
    border:SetFrameLevel(frame:GetFrameLevel() + 1)
    border.textures = {}

    local top = border:CreateTexture(nil, "BORDER")
    setBorderTexture(top, "top")
    top:SetPoint("TOPLEFT")
    top:SetPoint("TOPRIGHT")
    top:SetHeight(size)
    table.insert(border.textures, top)

    local bottom = border:CreateTexture(nil, "BORDER")
    setBorderTexture(bottom, "bottom")
    bottom:SetPoint("BOTTOMLEFT")
    bottom:SetPoint("BOTTOMRIGHT")
    bottom:SetHeight(size)
    table.insert(border.textures, bottom)

    local left = border:CreateTexture(nil, "BORDER")
    setBorderTexture(left, "left")
    left:SetPoint("TOPLEFT")
    left:SetPoint("BOTTOMLEFT")
    left:SetWidth(size)
    table.insert(border.textures, left)

    local right = border:CreateTexture(nil, "BORDER")
    setBorderTexture(right, "right")
    right:SetPoint("TOPRIGHT")
    right:SetPoint("BOTTOMRIGHT")
    right:SetWidth(size)
    table.insert(border.textures, right)

    setTextureGroupColor(border, borderColor)
    frame.rxpBorder = border
end

function addon.ui.v2:AddFrameShadow(frame, xOffset, yOffset, alpha, size, shadowKey)
    if frame.rxpShadow then return frame.rxpShadow end

    xOffset = xOffset or 0
    yOffset = yOffset or 0
    alpha = alpha or (shadowKey == "stepItem" and 0.45 or 0.4)
    size = size or 2
    if alpha <= 0 or size <= 0 then return end

    local shadow = CreateFrame("Frame", nil, frame)
    shadow:SetPoint("TOPLEFT", frame, "TOPLEFT", xOffset - size, yOffset + size)
    shadow:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", xOffset + size, yOffset - size)
    shadow:SetFrameLevel(max(frame:GetFrameLevel() - 1, 0))
    shadow:SetAlpha(alpha)

    local function createShadowTexture()
        local texture = shadow:CreateTexture(nil, "BACKGROUND")
        texture:SetTexture("Interface/BUTTONS/WHITE8X8")
        texture:SetVertexColor(0, 0, 0, 1)
        return texture
    end

    local top = createShadowTexture()
    top:SetPoint("TOPLEFT", shadow, "TOPLEFT", size, 0)
    top:SetPoint("TOPRIGHT", shadow, "TOPRIGHT", -size, 0)
    top:SetHeight(size)

    local bottom = createShadowTexture()
    bottom:SetPoint("BOTTOMLEFT", shadow, "BOTTOMLEFT", size, 0)
    bottom:SetPoint("BOTTOMRIGHT", shadow, "BOTTOMRIGHT", -size, 0)
    bottom:SetHeight(size)

    local left = createShadowTexture()
    left:SetPoint("TOPLEFT", shadow, "TOPLEFT", 0, -size)
    left:SetPoint("BOTTOMLEFT", shadow, "BOTTOMLEFT", 0, size)
    left:SetWidth(size)

    local right = createShadowTexture()
    right:SetPoint("TOPRIGHT", shadow, "TOPRIGHT", 0, -size)
    right:SetPoint("BOTTOMRIGHT", shadow, "BOTTOMRIGHT", 0, size)
    right:SetWidth(size)

    local corner
    for _, point in ipairs({"TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT"}) do
        corner = createShadowTexture()
        corner:SetPoint(point)
        corner:SetSize(size, size)
    end

    frame.rxpShadow = shadow
    return shadow
end

function addon.v2:IsGuideWindowEnabled()
    local profile = addon.settings and addon.settings.profile
    return profile and profile.enableBetaFeatures and profile.enableV2GuideWindow
end

function addon.v2:ShowGuideWindowMenu(menu)
    if _G.EasyMenu then
        _G.EasyMenu(menu, addon.RXPFrame.MenuFrame, "cursor", 0, 0, "MENU")
    else
        LibStub:GetLibrary("LibUIDropDownMenu-4.0"):EasyMenu(menu,
                                                               addon.RXPFrame.MenuFrame,
                                                               "cursor", 0, 0, "MENU")
    end
end

function addon.v2:ShowGuideSelectionMenu()
    local menuList = addon.RXPFrame:GenerateMenuTable({})

    local menu, item = {}, nil
    for _, guideItem in ipairs(menuList) do
        item = guideItem
        if item.isTitle and item.text == "" then break end
        menu[#menu + 1] = item
    end
    menu[#menu + 1] = {text = "", notCheckable = 1, isTitle = 1}
    menu[#menu + 1] = {
        text = _G.CLOSE,
        notCheckable = 1,
        func = function(self) self:Hide() end,
    }
    if #menu > 0 then self:ShowGuideWindowMenu(menu) end
end

function addon.v2:ShowSettingsMenu()
    local menuList = addon.RXPFrame:GenerateMenuTable({})
    local menu, foundGuideDivider = {}, false

    menu[#menu + 1] = {
        text = L("Show step list"),
        checked = function() return addon.settings:IsStepListShown() end,
        func = function(self)
            addon.settings:SetStepListShown(not addon.settings:IsStepListShown())
            self:Hide()
        end,
    }
    menu[#menu + 1] = {
        text = L("Hide completed steps"),
        checked = function() return addon.settings.profile.hideCompletedSteps end,
        func = function(self)
            addon.settings:SetHideCompletedSteps(not addon.settings.profile.hideCompletedSteps)
            self:Hide()
        end,
    }
    menu[#menu + 1] = {
        text = L("Show unused guides"),
        checked = function() return addon.settings.profile.showUnusedGuides end,
        func = function(self)
            addon.settings.profile.showUnusedGuides = not addon.settings.profile.showUnusedGuides
            self:Hide()
        end,
    }
    menu[#menu + 1] = {text = "", notCheckable = 1, isTitle = 1}

    for _, item in ipairs(menuList) do
        if foundGuideDivider then
            menu[#menu + 1] = item
        elseif item.isTitle and item.text == "" then
            foundGuideDivider = true
        end
    end
    if #menu > 0 then self:ShowGuideWindowMenu(menu) end
end

function addon.v2:BuildGuideStepsSnapshot()
    local guide = addon.currentGuide
    local profile = addon.settings and addon.settings.profile
    local currentStep = RXPCData and RXPCData.currentStep or 1
    local activeSteps = addon.RXPFrame and addon.RXPFrame.activeSteps
    local activeStepIndex
    if activeSteps then
        for _, activeStep in ipairs(activeSteps) do
            if activeStep.index and
                (not activeStepIndex or activeStep.index < activeStepIndex) then
                activeStepIndex = activeStep.index
            end
        end
    end
    activeStepIndex = activeStepIndex or currentStep
    local skippedSteps = RXPCData and RXPCData.stepSkip or {}
    local rows = {}
    local level = addon.player.level
    local step, hidden, complete, text, rawtext

    if not profile then return {title = "", rows = rows} end
    if not guide or guide.empty then
        return {
            title = L("Welcome to RestedXP Guides\nRight click to pick a guide"),
            rows = rows,
            empty = true,
        }
    end

    for index, guideStep in ipairs(guide.steps or {}) do
        step = guideStep
        complete = step.completed or skippedSteps[index] or
                       (not step.sticky and currentStep > index)
        hidden = step.hidewindow or step.hidetip or step.optional or
                     (step.level and step.level > level) or
                     (profile.hideCompletedSteps and complete)

        text = ""
        if not hidden then
            for _, element in ipairs(step.elements or {}) do
                rawtext = nil
                if element.text and element.text ~= " " then
                    rawtext = (element.icon or addon.icons[element.tag] or "") .. L(element.text)
                elseif element.tooltipText and element.tooltipText ~= "" then
                    rawtext = L(element.tooltipText)
                elseif element.rawtext and element.rawtext ~= "" then
                    rawtext = L(element.rawtext)
                end
                if rawtext and not element.hideTooltip and rawtext ~= "" then
                    text = text .. (text == "" and "" or "\n") ..
                               addon.ReplaceNpcIds(rawtext, element)
                end
            end
        end
        hidden = hidden or text == ""

        rows[#rows + 1] = {
            index = index,
            text = text,
            hidden = hidden,
            complete = complete,
            current = index == activeStepIndex,
        }
    end

    local title = guide.title or addon.GetGuideName(guide) or ""
    if guide.subgroup and not guide.title then title = title .. "\n" .. guide.subgroup end
    return {title = title:gsub("\\n", "\n"), rows = rows}
end

function addon.ui.v2:RegisterRXPV2GuideStepsItem()
    local Type, Version = "RXPV2GuideStepsItem", 3
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local function ShowMenu(this)
        local menu = addon.RXPFrame and addon.RXPFrame.bottomMenu
        local menuFrame = addon.RXPFrame and addon.RXPFrame.MenuFrame
        if not (menu and menuFrame) then return end

        menu[1].text = addon.locale.Get("Go to step") .. " " .. this.index
        menu[1].arg1 = this.index
        for _, item in ipairs(menu) do
            if item.text == addon.locale.Get("Give Feedback for step") then
                item.arg1 = this.index
                break
            end
        end
        if _G.EasyMenu then
            _G.EasyMenu(menu, menuFrame, "cursor", 0, 0, "MENU")
        else
            LibStub:GetLibrary("LibUIDropDownMenu-4.0"):EasyMenu(menu, menuFrame,
                                                                    "cursor", 0, 0, "MENU")
        end
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this.frame:Show()
        end,
        ["OnRelease"] = function(this)
            this.row = nil
            this.index = nil
            this.frame:Hide()
        end,
        ["SetRow"] = function(this, row, force)
            local previous = this.row
            local textChanged = force or not previous or previous.index ~= row.index or previous.text ~= row.text
            local visualChanged = force or not previous or previous.complete ~= row.complete or
                                      previous.current ~= row.current
            if not textChanged and not visualChanged then return false, false end

            this.row = row
            this.index = row.index
            this.frame:SetShown(not row.hidden)
            local theme = addon.v2:GetTheme()
            if force or not previous then
                this.text:SetFont(theme.font, addon.settings.profile.guideFontSize, "")
                this.number:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
            end
            if textChanged then
                this.text:SetText(row.text)
                this.number:SetText(row.index)
                this.numberFrame:SetWidth(max(this.number:GetStringWidth() + 6, 16))
            end
            if force or not previous then
                local background = guideStepsCardColor
                local border = theme.borderColors.itemEdge or theme.borderColors.commonEdge
                local badgeEdge = theme.edges.activeStepBadge or theme.edges.activeStepItem or
                                      theme.edges.common
                local badgeBackground = guideStepsBadgeColor
                local badgeBorder = theme.borderColors.activeStepBadge or border
                addon.ui.v2:ApplyFrameBackdrop(this.frame,
                                               theme.edges.activeStepItem or theme.edges.common,
                                               background, border)
                addon.ui.v2:ApplyFrameBackdrop(this.numberFrame, badgeEdge,
                                               badgeBackground, badgeBorder)
                this.text:SetTextColor(unpack(theme.textColor.common))
            end
            if visualChanged then
                this.frame:SetAlpha(row.complete and 0.5 or 1)
                this.number:SetTextColor(unpack(row.current and theme.textColor.activeStepBadge or
                                                    theme.textColor.inactivePartyTab))
            end
            return true, textChanged
        end,
        ["UpdateHeight"] = function(this)
            this.frame:SetHeight(math.max(this.text:GetStringHeight() + 5, 30))
        end,
        ["SetWidth"] = function(this, width) this.frame:SetWidth(width) end,
        ["GetHeight"] = function(this) return this.frame:GetHeight() end,
    }

    local function Constructor()
        local frame = CreateFrame("Button", nil, UIParent,
                                  BackdropTemplateMixin and "BackdropTemplate")
        frame:SetHeight(30)
        frame:RegisterForClicks("LeftButtonDown", "RightButtonDown")
        local text = frame:CreateFontString(nil, "OVERLAY")
        text:SetPoint("TOPLEFT", frame, "TOPLEFT", 4, -5)
        text:SetJustifyH("LEFT")
        text:SetJustifyV("MIDDLE")
        text:SetFont(addon.v2:GetTheme().font, addon.settings.profile.guideFontSize, "")
        local numberFrame = CreateFrame("Frame", nil, frame,
                                        BackdropTemplateMixin and "BackdropTemplate")
        numberFrame:SetFrameLevel(frame:GetFrameLevel() + 2)
        numberFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT")
        numberFrame:SetSize(16, 16)
        text:SetPoint("BOTTOMRIGHT", numberFrame, "BOTTOMLEFT", -4, 4)
        local number = numberFrame:CreateFontString(nil, "OVERLAY")
        number:SetPoint("CENTER")
        number:SetJustifyH("CENTER")
        number:SetJustifyV("MIDDLE")
        number:SetFont(addon.v2:GetTheme().font, addon.settings.profile.guideFontSize - 1, "")
        local widget = {frame = frame, text = text, number = number,
                        numberFrame = numberFrame, type = Type}
        for method, func in pairs(methods) do widget[method] = func end
        frame:SetScript("OnClick", function(_, button)
            if button == "RightButton" then ShowMenu(widget) end
        end)
        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2:RegisterRXPV2GuideSteps()
    local Type, Version = "RXPV2GuideSteps", 4
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local function ReleaseItem(this, index)
        local item = this.items[index]
        if item then
            AceGUI:Release(item)
            this.items[index] = nil
        end
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this.frame:Show()
        end,
        ["OnRelease"] = function(this)
            this.rows = nil
            for index in pairs(this.items) do ReleaseItem(this, index) end
            this.rowsHeight = nil
            this.minimumRowsHeight = nil
            this.rowsWidth = nil
            this.activeIndex = nil
            this.frame:Hide()
        end,
        ["SetRows"] = function(this, rows, force)
            local previous, item, height, minimumHeight, activeOffset, activeIndex,
                  itemHeight, _, textChanged = nil, nil, 0, nil, nil, nil, nil, nil, nil
            force = force or this.rowsWidth ~= this.scroll.scrollframe:GetWidth()
            this.rows = rows
            this.rowsWidth = this.scroll.scrollframe:GetWidth()
            for index, row in ipairs(rows) do
                if row.hidden then
                    ReleaseItem(this, index)
                else
                    item = this.items[index]
                    if not item then
                        item = AceGUI:Create("RXPV2GuideStepsItem")
                        item.frame:SetParent(this.content)
                        this.items[index] = item
                    end
                    item.frame:ClearAllPoints()
                    if previous then
                        item.frame:SetPoint("TOPLEFT", previous.frame, "BOTTOMLEFT", 0, -5)
                    else
                        item.frame:SetPoint("TOPLEFT", this.content, "TOPLEFT", 0, 0)
                    end
                    item.frame:SetPoint("TOPRIGHT", this.content, "TOPRIGHT", 0, 0)
                    _, textChanged = item:SetRow(row, force)
                    if textChanged then item:UpdateHeight() end
                    itemHeight = item:GetHeight()
                    minimumHeight = min(minimumHeight or itemHeight, itemHeight)
                    if row.current then
                        activeOffset = height
                        activeIndex = row.index
                    end
                    previous = item
                    height = height + itemHeight + 5
                end
            end
            for index in pairs(this.items) do
                if index > #rows then ReleaseItem(this, index) end
            end
            this.rowsHeight = height
            this.minimumRowsHeight = minimumHeight or 0
            this.content:SetHeight(math.max(height, 1))
            this:UpdateScrollbar()
            if activeOffset and activeIndex ~= this.activeIndex then this.scroll:ScrollToOffset(activeOffset) end
            this.activeIndex = activeIndex
        end,
        ["UpdateScrollbar"] = function(this)
            local scroll = this.scroll
            local contentHeight = (this.rowsHeight or 0) + scroll:GetContentTopPadding()
            scroll.noScrollbar = contentHeight <= scroll.scrollframe:GetHeight()
            if scroll.noScrollbar then
                scroll:SetScroll(0)
                scroll.scrollBarShown = nil
                scroll.scrollbar:Hide()
                scroll.scrollframe:SetPoint("BOTTOMRIGHT")
            else
                scroll:FixScroll()
            end
        end,
        ["RefreshVisuals"] = function(this)
            if this.rows then this:SetRows(this.rows, true) end
        end,
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent)
        local scroll = AceGUI:Create("RXPV2ScrollFrame")
        scroll.frame:SetParent(frame)
        scroll.frame:SetAllPoints(frame)
        local widget = {frame = frame, scroll = scroll, content = scroll.content,
                        items = {}, type = Type}
        for method, func in pairs(methods) do widget[method] = func end
        scroll.scrollframe:HookScript("OnSizeChanged", function()
            if not widget.rows then return end
            if widget.rowsWidth ~= scroll.scrollframe:GetWidth() then
                widget:SetRows(widget.rows)
            else
                widget:UpdateScrollbar()
            end
        end)
        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2:RegisterRXPV2GuideWindow()
    local Type, Version = "RXPV2GuideWindow", 46
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local function SaveStatus(this, saveHeight)
        local frame = this.frame
        frame:StopMovingOrSizing()
        if saveHeight and frame:GetHeight() > this:GetCompactHeight() then
            this.guideHeight = frame:GetHeight()
            addon.settings.profile.v2GuideWindowExpandedHeight = this.guideHeight
        end
        addon.settings:SaveFramePositions()
        addon.v2.events:Trigger("GuideWindowRefresh", "layout")
    end

    local methods = {
        ["GetCompactHeight"] = function(this)
            local _, _, _, _, topOffset = this.header:GetPoint(1)
            return this.header:GetHeight() - (topOffset or 0) + 2
        end,
        ["UpdateResizeBounds"] = function(this, hasRows)
            local minimumHeight = this:GetCompactHeight()
            if hasRows then
                local guideStepsInset = this.frame:GetHeight() - this.guideSteps.frame:GetHeight()
                minimumHeight = max(minimumHeight,
                                    guideStepsInset + (this.guideSteps.minimumRowsHeight or 0) +
                                        this.guideSteps.scroll:GetContentTopPadding())
            end
            addon.SetResizeBounds(this.frame, 280, minimumHeight)
        end,
        ["OnAcquire"] = function(this)
            this.frame:Show()
        end,
        ["OnRelease"] = function(this)
            this.frame:Hide()
        end,
        ["SetSnapshot"] = function(this, snapshot)
            local title, subtitle = snapshot.title:match("^([^\n]*)\n?(.*)$")
            local compactHeight = this:GetCompactHeight()
            local guideStepsShown = this.guideSteps.frame:IsShown()
            this.guideHeight = this.guideHeight or
                                   addon.settings.profile.v2GuideWindowExpandedHeight or
                                   guideWindowDefaultHeight
            if addon.settings:IsStepListShown() and not snapshot.empty then
                this.frame:SetHeight(this.guideHeight)
            end
            this.guideSteps:SetRows(snapshot.rows)
            local rowsHeight = this.guideSteps.rowsHeight or 0
            local hasRows = not snapshot.empty and rowsHeight > 0
            local empty = not hasRows or not addon.settings:IsStepListShown()
            if empty then
                this.frame:SetHeight(compactHeight)
            else
                this.frame:SetHeight(this.guideHeight)
            end
            if hasRows and subtitle ~= "" then title, subtitle = subtitle, title end
            this.title:SetText(title)
            this.subtitle:SetText(subtitle)
            this.guideSteps.frame:SetShown(not empty)
            this.guideStepsBackground:SetShown(not empty)
            this.footer:SetShown(not empty)
            this.sizer:SetShown(not empty)
            if guideStepsShown ~= not empty then addon:SortTimers() end
            this:UpdateResizeBounds(not empty)
            if not empty then this.guideSteps:UpdateScrollbar() end
        end,
        ["RefreshLayout"] = function(this)
            if this.guideSteps.rows then this.guideSteps:SetRows(this.guideSteps.rows) end
        end,
        ["RefreshVisuals"] = function(this)
            local theme = addon.v2:GetTheme()
            addon.ui.v2:ApplyFrameBackdrop(this.frame,
                                           theme.edges.activeSteps or theme.edges.activePartySteps or theme.edges.common,
                                           guideWindowBackgroundColor,
                                           theme.borderColors.commonEdge or theme.borderColors.activePartySteps)
            this.title:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
            this.title:SetTextColor(1, 0.82, 0)
            this.subtitle:SetFont(theme.font, addon.settings.profile.guideFontSize + 1, "")
            this.subtitle:SetTextColor(unpack(theme.textColor.common))
            this.footerText:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
            this.footerBackground:SetColorTexture(unpack(theme.backgroundColors.activePartyFooter or
                                                         theme.backgroundColors.activePartySteps))
            addon.ui.v2:ApplyFrameBackdrop(this.guideNameFrame, theme.edges.common,
                                           theme.backgroundColors.activePartyTab,
                                           theme.borderColors.itemEdge)
            this.guideSelectBackground:SetColorTexture(unpack(theme.backgroundColors.inactivePartyTab))
            this.guideSelectDivider:SetColorTexture(unpack(theme.borderColors.inactivePartyTab))
            this.splashBranding:SetShown(addon.settings.profile.v2GuideWindowSplashBranding)
            this.guideSteps:RefreshVisuals()
        end,
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent,
                                  BackdropTemplateMixin and "BackdropTemplate")
        frame:Hide()
        frame:SetMovable(true)
        frame:SetResizable(true)
        frame:EnableMouse(true)
        frame:SetFrameStrata("BACKGROUND")
        frame:SetFrameLevel(100)
        local theme = addon.v2:GetTheme()
        addon.ui.v2:ApplyFrameBackdrop(frame,
                                       theme.edges.activeSteps or theme.edges.activePartySteps or theme.edges.common,
                                       guideWindowBackgroundColor,
                                       theme.borderColors.commonEdge or theme.borderColors.activePartySteps)
        frame:SetToplevel(true)

        local header = CreateFrame("Frame", nil, frame)
        header:SetFrameLevel(frame:GetFrameLevel() + 1)
        header:EnableMouse(true)
        header:SetPoint("TOPLEFT", 2, -2)
        header:SetPoint("TOPRIGHT", -2, -2)
        header:SetHeight(78)
        local banner = header:CreateTexture(nil, "BACKGROUND")
        banner:SetPoint("TOPLEFT")
        banner:SetPoint("TOPRIGHT")
        banner:SetHeight(44)
        banner:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-header-texture")
        local guideNameFrame = CreateFrame("Frame", nil, header)
        guideNameFrame:SetPoint("TOPLEFT", header, "TOPLEFT", 0, -44)
        guideNameFrame:SetPoint("BOTTOMRIGHT")
        guideNameFrame:SetFrameLevel(header:GetFrameLevel() + 1)
        guideNameFrame:EnableMouse(true)
        addon.ui.v2:ApplyFrameBackdrop(guideNameFrame, theme.edges.common,
                                       theme.backgroundColors.activePartyTab,
                                       theme.borderColors.itemEdge)
        local splashBranding = header:CreateTexture(nil, "ARTWORK")
        -- Crop only the gnome splash from the atlas.  Its lower neighbor begins
        -- immediately below this region, so extending the crop leaves a visible
        -- white remnant beneath the guide header.
    splashBranding:SetPoint("TOPLEFT", header, "TOPLEFT", 38, 32)
        splashBranding:SetSize(128, 80)
        splashBranding:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-header-images")
        splashBranding:SetTexCoord(256 / 512, 512 / 512, 0, 160 / 512)
        splashBranding:SetShown(addon.settings.profile.v2GuideWindowSplashBranding)
        local iconLogo = header:CreateTexture(nil, "ARTWORK")
        iconLogo:SetPoint("LEFT", -12, 27)
        iconLogo:SetSize(64, 64)
        iconLogo:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-icon-logo")
        local classIcon = guideNameFrame:CreateTexture(nil, "OVERLAY")
        classIcon:SetPoint("BOTTOMRIGHT", iconLogo, "BOTTOMRIGHT", 14, 2)
        classIcon:SetSize(28, 28)
        classIcon:SetTexture(addon.GetTexture(addon.player.class))
        local settingsButton = CreateFrame("Button", nil, guideNameFrame)
        settingsButton:SetPoint("LEFT", guideNameFrame, "LEFT", 6, 0)
        settingsButton:SetSize(24, 24)
        settingsButton:SetNormalTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-wrench")
        settingsButton:SetPushedTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-wrench")
        settingsButton:SetHighlightTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-wrench", "ADD")
        settingsButton:SetScript("OnClick", function() addon.v2:ShowSettingsMenu() end)
        local guideSelectButton = CreateFrame("Button", nil, guideNameFrame)
        guideSelectButton:SetPoint("TOPRIGHT")
        guideSelectButton:SetSize(20, 34)
        guideSelectButton:SetFrameLevel(guideNameFrame:GetFrameLevel() + 2)
        local guideSelectBackground = guideSelectButton:CreateTexture(nil, "BACKGROUND")
        guideSelectBackground:SetPoint("TOPLEFT", 1, -1)
        guideSelectBackground:SetPoint("BOTTOMRIGHT", -1, 1)
        guideSelectBackground:SetColorTexture(unpack(theme.backgroundColors.inactivePartyTab))
        local guideSelectDivider = guideSelectButton:CreateTexture(nil, "BORDER")
        guideSelectDivider:SetPoint("TOPLEFT", 1, -1)
        guideSelectDivider:SetPoint("BOTTOMLEFT", 1, 1)
        guideSelectDivider:SetWidth(1)
        guideSelectDivider:SetColorTexture(unpack(theme.borderColors.inactivePartyTab))
        local guideSelectHighlight = guideSelectButton:CreateTexture(nil, "HIGHLIGHT")
        guideSelectHighlight:SetAllPoints()
        guideSelectHighlight:SetColorTexture(1, 1, 1, 0.12)
        local guideSelectArrow = guideSelectButton:CreateTexture(nil, "OVERLAY")
        guideSelectArrow:SetPoint("CENTER", 1, 0)
        guideSelectArrow:SetSize(16, 16)
        guideSelectArrow:SetTexture("Interface\\ChatFrame\\ChatFrameExpandArrow")
        guideSelectArrow:SetDesaturated(true)
        guideSelectArrow:SetVertexColor(1, 1, 1)
        guideSelectButton:SetScript("OnClick", function() addon.v2:ShowGuideSelectionMenu() end)
        local title = guideNameFrame:CreateFontString(nil, "OVERLAY")
        title:SetPoint("TOPLEFT", guideNameFrame, "TOPLEFT", 48, -8)
        title:SetPoint("TOPRIGHT", guideSelectButton, "TOPLEFT", -4, -8)
        title:SetJustifyH("LEFT")
        title:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
        title:SetTextColor(1, 0.82, 0)
        local subtitle = guideNameFrame:CreateFontString(nil, "OVERLAY")
        subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, 0)
        subtitle:SetPoint("TOPRIGHT", title, "BOTTOMRIGHT", 0, 0)
        subtitle:SetJustifyH("LEFT")
        subtitle:SetFont(theme.font, addon.settings.profile.guideFontSize + 1, "")
        subtitle:SetTextColor(unpack(theme.textColor.common))

        local closebutton = CreateFrame("Button", nil, frame)
        closebutton:SetFrameLevel(frame:GetFrameLevel() + 3)
        closebutton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 4, 8)
        closebutton:SetSize(20, 20)
        closebutton:SetNormalTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetPushedTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetHighlightTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close", "ADD")
        closebutton:RegisterForClicks("LeftButtonUp")

        local footer = CreateFrame("Frame", nil, frame)
        footer:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 1, 1)
        footer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -1, 1)
        footer:SetHeight(16)
        footer:SetFrameLevel(frame:GetFrameLevel() + 1)
        local footerBackground = footer:CreateTexture(nil, "BACKGROUND")
        footerBackground:SetAllPoints()
        footerBackground:SetColorTexture(unpack(theme.backgroundColors.activePartyFooter or
                                                 theme.backgroundColors.activePartySteps))
        local footerText = footer:CreateFontString(nil, "OVERLAY")
        footerText:SetPoint("CENTER")
        footerText:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
        footerText:SetTextColor(0.65, 0.65, 0.7)
        footerText:SetText("RestedXP Guides " .. (addon.release or ""))

        local sizer = CreateFrame("Button", nil, frame)
        sizer:SetFrameLevel(footer:GetFrameLevel() + 2)
        sizer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2)
        sizer:SetSize(10, 10)
        sizer:SetNormalTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
        sizer:SetHighlightTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight", "ADD")
        sizer:EnableMouse(true)

        local guideStepsBackground = frame:CreateTexture(nil, "BACKGROUND")
        guideStepsBackground:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, -83)
        guideStepsBackground:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -5, 17)
        guideStepsBackground:SetColorTexture(unpack(guideStepsViewportColor))
        local guideSteps = AceGUI:Create("RXPV2GuideSteps")
        guideSteps.frame:SetParent(frame)
        guideSteps.frame:SetPoint("TOPLEFT", frame, "TOPLEFT", 6, -84)
        guideSteps.frame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -6, 18)

        local widget = {frame = frame, header = header, title = title, subtitle = subtitle, footer = footer,
                        footerBackground = footerBackground, footerText = footerText,
                        guideNameFrame = guideNameFrame, guideSelectButton = guideSelectButton,
                        guideSelectBackground = guideSelectBackground, guideSelectDivider = guideSelectDivider,
                        sizer = sizer,
                        splashBranding = splashBranding, guideSteps = guideSteps,
                        guideStepsBackground = guideStepsBackground, type = Type}
        for method, func in pairs(methods) do widget[method] = func end
        guideNameFrame:SetScript("OnMouseDown", function(_, button)
            if button == "LeftButton" and not addon.settings.profile.lockFrames then
                frame:StartMoving()
            end
        end)
        guideNameFrame:SetScript("OnMouseUp", function(_, button)
            SaveStatus(widget)
            if button == "RightButton" and (not addon.currentGuide or addon.currentGuide.empty) then
                addon.v2:ShowGuideSelectionMenu()
            end
        end)
        widget:UpdateResizeBounds(false)
        frame:SetScript("OnSizeChanged", function() widget:RefreshLayout() end)
        frame:SetScript("OnMouseDown", function(_, button)
            if button == "LeftButton" and not addon.settings.profile.lockFrames then frame:StartMoving() end
        end)
        frame:SetScript("OnMouseUp", function() SaveStatus(widget) end)
        sizer:SetScript("OnMouseDown", function()
            if not addon.settings.profile.lockFrames then frame:StartSizing("BOTTOMRIGHT") end
        end)
        sizer:SetScript("OnMouseUp", function() SaveStatus(widget, true) end)
        header:SetScript("OnMouseDown", function(_, button)
            if button == "LeftButton" and not addon.settings.profile.lockFrames then
                frame:StartMoving()
            end
        end)
        header:SetScript("OnMouseUp", function() SaveStatus(widget) end)
        closebutton:SetScript("OnClick", addon.settings.ToggleActive)
        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.v2:GetGuideWindow()
    if self.state and self.state.guideWindow then return self.state.guideWindow end
    if not (self.state and addon.ui and addon.ui.v2) then return end

    local window = AceGUI:Create("RXPV2GuideWindow")
    local frame = window.frame
    self.state.guideWindow = window
    _G.RXPV2GuideWindow = window
    addon.enabledFrames.RXPV2GuideWindow = frame
    frame.IsFeatureEnabled = function()
        return addon.v2:IsGuideWindowEnabled() and not addon.settings.profile.hideGuideWindow, false
    end

    addon.RXPFrame:HookScript("OnShow", function()
        if addon.v2:IsGuideWindowEnabled() and not addon.settings.profile.hideGuideWindow then
            frame:Show()
        end
    end)
    addon.RXPFrame:HookScript("OnHide", function()
        if addon.v2:IsGuideWindowEnabled() then frame:Hide() end
    end)

    local profile = addon.settings.profile
    local positions = profile.framePositions
    if positions and positions.RXPV2GuideWindow then
        addon.settings:LoadFramePosition("RXPV2GuideWindow", frame)
    else
        frame:SetSize(guideWindowDefaultWidth, guideWindowDefaultHeight)
        frame:ClearAllPoints()
        frame:SetPoint("LEFT", UIParent, "LEFT", 0, 35)
    end
    frame:SetScale(profile.windowScale)
    if not profile.v2GuideWindowExpandedHeight and
        frame:GetHeight() > window:GetCompactHeight() then
        profile.v2GuideWindowExpandedHeight = frame:GetHeight()
    end
    window.guideHeight = profile.v2GuideWindowExpandedHeight or guideWindowDefaultHeight
    return window
end

function addon.v2:ApplyGuideWindowGeometryMigration()
    local profile = addon.settings and addon.settings.profile
    local window = self.state and self.state.guideWindow
    if not (profile and window) then return end

    if (profile.v2GuideWindowGeometryVersion or 0) < 5 then
        window.frame:SetSize(guideWindowDefaultWidth, guideWindowDefaultHeight)
        window.guideHeight = window.frame:GetHeight()
        profile.v2GuideWindowExpandedHeight = window.guideHeight
        profile.v2GuideWindowGeometryVersion = 5
    end

    self:UpdateGuideWindow()
    if addon.v2:IsGuideWindowEnabled() then self:SetActiveStepsFrameAnchor() end
end

function addon.v2:GetGuideWindowAnchorFrame()
    if not self:IsGuideWindowEnabled() then return end
    local window = self.state and self.state.guideWindow
    return window and window.frame
end

function addon.v2:UpdateGuideWindow()
    if not self:IsGuideWindowEnabled() then return end
    local window = self:GetGuideWindow()
    if not window then return end

    window:SetSnapshot(self:BuildGuideStepsSnapshot())
    window.frame:SetShown(not addon.settings.profile.hideGuideWindow and
                              addon.settings.profile.showEnabled ~= false)
end

function addon.v2:DisableLegacyGuideWindow()
    local legacy = addon.RXPFrame
    local frames = {legacy.BottomFrame, legacy.GuideName, legacy.Footer,
                    legacy.CurrentStepFrame, legacy.ScrollFrame, legacy.ScrollChild}
    local scrollbar = legacy.ScrollFrame and legacy.ScrollFrame.ScrollBar

    legacy:SetScript("OnUpdate", nil)
    legacy:SetScript("OnMouseDown", nil)
    legacy:SetScript("OnMouseUp", nil)
    legacy:EnableMouse(false)
    for _, frame in ipairs(frames) do
        frame:Hide()
        frame:SetScript("OnUpdate", nil)
        frame:SetScript("OnMouseDown", nil)
        frame:SetScript("OnMouseUp", nil)
        frame:EnableMouse(false)
    end
    if scrollbar then
        if not scrollbar.rxpV2HideHook then
            scrollbar:HookScript("OnShow", function(self)
                if addon.v2:IsGuideWindowEnabled() then self:Hide() end
            end)
            scrollbar.rxpV2HideHook = true
        end
        scrollbar:Hide()
        scrollbar:EnableMouse(false)
        if scrollbar.ScrollUpButton then scrollbar.ScrollUpButton:Hide() end
        if scrollbar.ScrollDownButton then scrollbar.ScrollDownButton:Hide() end
    end
end

function addon.v2:EnableGuideWindow()
    local legacy = addon.RXPFrame
    self:GetGuideWindow()
    self:DisableLegacyGuideWindow()
    self:UpdateGuideWindow()
    local activeStepsFrame = self:GetActiveStepsFrame(addon.player.name)
    if activeStepsFrame and legacy.activeSteps then
        self:UpdateActiveStepsFrame(legacy.activeSteps)
    end
    self:SetActiveStepsFrameAnchor()
end


function addon.ui.v2:RegisterRXPV2ScrollFrame()
    --[[-----------------------------------------------------------------------------
    ScrollFrame Container
    Plain container that scrolls its content and doesn't grow in height.
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ScrollFrame", 15
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end
    local contentTopPadding = 0

    --[[-----------------------------------------------------------------------------
    Support functions
    -------------------------------------------------------------------------------]]
    local function FixScrollOnUpdate(frame)
        frame:SetScript("OnUpdate", nil)
        frame.obj:FixScroll()
    end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function ScrollFrame_OnMouseWheel(frame, value) frame.obj:MoveScroll(value) end

    local function ScrollFrame_OnSizeChanged(frame) frame:SetScript("OnUpdate", FixScrollOnUpdate) end

    local function ScrollBar_OnScrollValueChanged(frame, value) frame.obj:SetScroll(value) end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this:SetScroll(0)
            this.scrollframe:SetScript("OnUpdate", FixScrollOnUpdate)
        end,

        ["OnRelease"] = function(this)
            this.status = nil
            this.noScrollbar = nil
            for k in pairs(this.localstatus) do this.localstatus[k] = nil end
            this.scrollframe:SetPoint("BOTTOMRIGHT")
            this.scrollbar:Hide()
            this.scrollBarShown = nil
            this.content.height, this.content.width, this.content.original_width = nil, nil, nil
        end,

        ["SetScroll"] = function(this, value)
            local status = this.status or this.localstatus
            local viewheight = this.scrollframe:GetHeight()
            local height = this.content:GetHeight()
            local offset
            if viewheight > height then
                offset = 0
            else
                offset = floor((height - viewheight) / 1000.0 * value)
            end
            this.content:ClearAllPoints()
            this.content:SetPoint("TOPLEFT", 2, offset - contentTopPadding)
            this.content:SetPoint("TOPRIGHT", -2, offset - contentTopPadding)
            status.offset = offset
            status.scrollvalue = value
        end,

        ["ScrollToOffset"] = function(this, offset)
            local scrollable = this.content:GetHeight() - this.scrollframe:GetHeight()
            if scrollable > 0 then
                this:SetScroll(min(max(offset, 0), scrollable) / scrollable * 1000)
            else
                this:SetScroll(0)
            end
        end,

        ["MoveScroll"] = function(this, value)
            local status = this.status or this.localstatus
            local height, viewheight = this.scrollframe:GetHeight(), this.content:GetHeight()

            if this.scrollBarShown then
                local diff = height - viewheight
                local delta = 1
                if value < 0 then delta = -1 end
                this.scrollbar:SetValue(min(max(status.scrollvalue + delta * (1000 / (diff / 45)), 0), 1000))
            end
        end,

        ["FixScroll"] = function(this)
            if this.updateLock then return end
            this.updateLock = true
            local status = this.status or this.localstatus
            local height, viewheight = this.scrollframe:GetHeight(), this.content:GetHeight()
            if this.noScrollbar or viewheight <= 1 then
                this:SetScroll(0)
                this.scrollBarShown = nil
                this.scrollbar:Hide()
                this.scrollframe:SetPoint("BOTTOMRIGHT")
                this.updateLock = nil
                return
            end
            local offset = status.offset or 0
            -- Give us a margin of error of 2 pixels to stop some conditions that i would blame on floating point inaccuracys
            -- No-one is going to miss 2 pixels at the bottom of the frame, anyhow!
            if viewheight < height + 2 then
                if this.scrollBarShown then
                    this.scrollBarShown = nil
                    this.scrollbar:Hide()
                    this.scrollbar:SetValue(0)
                    this.scrollframe:SetPoint("BOTTOMRIGHT")
                    if this.content.original_width then
                        this.content.width = max(this.content.original_width -
                                                 4, 0)
                    end
                    this:DoLayout()
                end
            else
                if not this.scrollBarShown then
                    this.scrollBarShown = true
                    this.scrollbar:Show()
                    this.scrollframe:SetPoint("BOTTOMRIGHT", -20, 0)
                    if this.content.original_width then
                        this.content.width = max(this.content.original_width - 24, 0)
                    end
                    this:DoLayout()
                end
                local value = (offset / (viewheight - height) * 1000)
                if value > 1000 then value = 1000 end
                this.scrollbar:SetValue(value)
                this:SetScroll(value)
                if value < 1000 then
                    this.content:ClearAllPoints()
                    this.content:SetPoint("TOPLEFT", 2, offset - contentTopPadding)
                    this.content:SetPoint("TOPRIGHT", -2, offset - contentTopPadding)
                    status.offset = offset
                end
            end
            this.updateLock = nil
        end,

        ["LayoutFinished"] = function(this, width, height)
            this.content:SetHeight((height or 0) + 20)

            -- update the scrollframe
            this:FixScroll()

            -- schedule another update when everything has "settled"
            this.scrollframe:SetScript("OnUpdate", FixScrollOnUpdate)
        end,

        ["UpdateTheme"] = updateTheme,

        ["GetContentTopPadding"] = function() return contentTopPadding end,

        ["SetStatusTable"] = function(this, status)
            assert(type(status) == "table")
            this.status = status
            if not status.scrollvalue then status.scrollvalue = 0 end
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            content.width = max(width - 4 -
                                (this.scrollBarShown and 20 or 0), 0)
            content.original_width = width
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            content.height = height
        end
    }
    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent)
        local num = AceGUI:GetNextWidgetNum(Type)

        local scrollframe = CreateFrame("ScrollFrame", nil, frame)
        scrollframe:SetPoint("TOPLEFT")
        scrollframe:SetPoint("BOTTOMRIGHT")
        scrollframe:EnableMouseWheel(true)
        scrollframe:SetScript("OnMouseWheel", ScrollFrame_OnMouseWheel)
        scrollframe:SetScript("OnSizeChanged", ScrollFrame_OnSizeChanged)

        local scrollbar = CreateFrame("Slider", ("RXPV2ScrollFrame%dScrollBar"):format(num), scrollframe,
                                      "RXPV2ScrollBarTemplate")
        local buttonHeight = scrollbar.ScrollUpButton:GetHeight()
        scrollbar:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 2, -buttonHeight)
        scrollbar:SetPoint("BOTTOMLEFT", scrollframe, "BOTTOMRIGHT", 2, buttonHeight)
        scrollbar:SetMinMaxValues(0, 1000)
        scrollbar:SetValueStep(1)
        scrollbar:SetValue(0)
        scrollbar:SetWidth(16)
        scrollbar:Hide()

        -- set the script as the last step, so it doesn't fire yet
        scrollbar:SetScript("OnValueChanged", ScrollBar_OnScrollValueChanged)

        local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND")
        scrollbg:SetAllPoints(scrollbar)
        scrollbg:SetColorTexture(0, 0, 0, 0.4)

        -- Container Support
        local content = CreateFrame("Frame", nil, scrollframe)
        content:SetPoint("TOPLEFT", 2, -contentTopPadding)
        content:SetPoint("TOPRIGHT", -2, -contentTopPadding)
        content:SetHeight(400)
        scrollframe:SetScrollChild(content)

        local widget = {
            localstatus = {scrollvalue = 0},
            scrollframe = scrollframe,
            scrollbar = scrollbar,
            content = content,
            frame = frame,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end
        scrollframe.obj, scrollbar.obj = widget, widget

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActiveStepsFrame()
    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ActiveStepsFrame", 4
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Frame_OnShow(frame) frame.obj:Fire("OnShow") end

    local function Frame_OnClose(frame) frame.obj:Fire("OnClose") end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this:Show()
            this.IsFeatureEnabled = function() return true, false end

            -- Do not SaveFramePositions / LoadFramePositions
            this.savePosition = false
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = updateFrameBackgroundVisibility,

        ["Hide"] = function(this) this.frame:Hide() end,

        ["Show"] = function(this) this.frame:Show() end,

        ["SetShown"] = function(this, shown) this.frame:SetShown(shown) end,

        ["IsForbidden"] = function(this) return this.frame:IsForbidden() end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end
            this:SetHeight((height or 0) + 8 + 8 - 8)
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            content:SetHeight(height)
            content.height = height
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]

    local function Constructor()
        local frame = CreateFrame("Frame", nil, addon.RXPFrame or UIParent, BackdropTemplateMixin and "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(false)
        frame:SetResizable(false)
        frame:SetToplevel(true)

        local theme = addon.v2:GetTheme()

        -- Keep Active Steps above every guide-header decoration, even after the
        -- movable guide window receives focus and raises within BACKGROUND.
        frame:SetFrameStrata("LOW")
        frame:SetFrameLevel(100)
        self:ApplyFrameBackdrop(frame, theme.edges.activeSteps or theme.edges.common,
                                theme.backgroundColors.activePartyTab,
                                theme.borderColors.activePartySteps or theme.borderColors.common)
        self:AddFrameShadow(frame)

        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        content:SetPoint("TOPLEFT", 8, -8)
        content:SetPoint("BOTTOMRIGHT", -8, 8)

        local widget = {
            content = content,
            frame = frame,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActivePartyStepsFrame()
    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ActivePartyStepsFrame", 2
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Frame_OnShow(frame) frame.obj:Fire("OnShow") end

    local function Frame_OnClose(frame) frame.obj:Fire("OnClose") end

    local function Frame_OnMouseDown(frame)
        frame:StartMoving()
        AceGUI:ClearFocus()
    end

    local function SaveFrameStatus(frame)
        frame:StopMovingOrSizing()
        local this = frame.obj
        local status = this.status or this.localstatus
        status.width = frame:GetWidth()
        status.height = frame:GetHeight()
        status.top = frame:GetTop()
        status.left = frame:GetLeft()
        addon.settings:SaveFramePositions()
    end

    local function Frame_OnMouseUp(frame)
        SaveFrameStatus(frame)
        AceGUI:ClearFocus()
    end

    local function MoverSizer_OnMouseUp(mover)
        SaveFrameStatus(mover:GetParent())
    end

    local function Sizer_OnMouseDown(frame)
        local this = frame:GetParent().obj
        this.autoSize = false
        addon.settings.profile.activePartyStepsV2AutoSize = false
        this.frame:StartSizing("BOTTOMRIGHT")
        AceGUI:ClearFocus()
    end

    local function Tab_OnClick(tab, button)
        local this = tab:GetParent().obj
        if button == "RightButton" then
            this:Fire("OnMenuRequested")
            return
        end

        this:SetActiveTab(tab.rxpPlayer)
        this:Fire("OnTabSelected", tab.rxpPlayer)
    end

    local function Tab_OnMouseDown(tab, button)
        if button == "RightButton" then return end

        tab:GetParent():StartMoving()
        AceGUI:ClearFocus()
    end

    local function Tab_OnEnter(tab)
        if not (tab.rxpTruncated and tab.rxpFullName) then return end

        _G.GameTooltip:SetOwner(tab, "ANCHOR_TOP")
        _G.GameTooltip:SetText(tab.rxpFullName)
        _G.GameTooltip:Show()
    end

    local function Tab_OnLeave(tab)
        if _G.GameTooltip:IsOwned(tab) then
            _G.GameTooltip:Hide()
        end
    end

    local function RemoveLastUTF8Codepoint(text)
        local index = #text
        local byte

        while index > 0 do
            byte = strbyte(text, index)
            if byte < 0x80 or byte > 0xBF then
                return strsub(text, 1, index - 1)
            end
            index = index - 1
        end

        return ""
    end

    local function FitTabText(fontString, text, width)
        local label = text or ""
        local availableWidth = max(width or 0, 0)

        fontString:SetText(label)
        if fontString:GetStringWidth() <= availableWidth then
            return false
        end

        while #label > 1 do
            label = RemoveLastUTF8Codepoint(label)
            fontString:SetText(label .. "...")
            if fontString:GetStringWidth() <= availableWidth then
                return true
            end
        end

        fontString:SetText("...")
        return true
    end

    local function CloseButton_OnClick(button, mouseButton)
        local widget = button:GetParent().obj
        if mouseButton == "RightButton" then
            widget:Fire("OnMenuRequested")
            return
        end

        widget:Fire("OnCloseClicked")
        widget:Hide()
    end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this.frame:SetParent(UIParent)
            this.frame:SetFrameStrata("MEDIUM")
            this.frame:SetFrameLevel(100)
            this.activeTab = nil
            this.playerContainers = this.playerContainers or {}
            this.tabButtons = this.tabButtons or {}
            this.unusedTabButtons = this.unusedTabButtons or {}
            this.autoSize = addon.settings.profile.activePartyStepsV2AutoSize ~= false
            this:ApplyStatus()
            this:Show()
            this.IsFeatureEnabled = function() return true, false end
        end,

        ["OnRelease"] = function(this)
            this.status = nil
            wipe(this.localstatus)
            this.activeTab = nil
            this.autoSize = nil
            wipe(this.playerContainers)
            for player, tab in pairs(this.tabButtons or {}) do
                tab:Hide()
                tab.rxpPlayer = nil
                tab.rxpFullName = nil
                tab.rxpTruncated = nil
                this.tabButtons[player] = nil
                this.unusedTabButtons[#this.unusedTabButtons + 1] = tab
            end
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            local contentwidth = width - 6 - 6
            if contentwidth < 0 then contentwidth = 0 end
            content:SetWidth(contentwidth)
            content.width = contentwidth
            for _, child in pairs(this.playerContainers or {}) do
                child:SetWidth(contentwidth)
            end
        end,

        ["GetWidth"] = function(this) return this.frame:GetWidth() end,

        ["GetHeight"] = function(this) return this.frame:GetHeight() end,

        ["SetSize"] = function(this, width, height)
            this:SetWidth(width)
            this:SetHeight(height)
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local contentheight = height - 5 - 14
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
            for _, child in pairs(this.playerContainers or {}) do
                child:SetHeight(contentheight)
            end
        end,

        ["SetPlayerContainer"] = function(this, player, childContainer)
            this.playerContainers[player] = childContainer
            childContainer.frame:ClearAllPoints()
            childContainer.frame:SetPoint("TOPLEFT", this.content, "TOPLEFT", 0, 0)
            childContainer.frame:SetPoint("BOTTOMRIGHT", this.content, "BOTTOMRIGHT", 0, 0)
            childContainer:SetWidth(this.content.width or this.content:GetWidth())
            childContainer:SetHeight(this.content.height or this.content:GetHeight())
            childContainer.frame:SetShown(this.activeTab == player)
        end,

        ["RemovePlayerContainer"] = function(this, player)
            this.playerContainers[player] = nil
        end,

        ["RefreshTabTheme"] = function(this, tab, active)
            local theme = addon.v2:GetTheme()
            local backgroundColors = theme.backgroundColors or {}
            local borderColors = theme.borderColors or {}
            local textColor = theme.textColor or {}
            local background = active and
                               (backgroundColors.activePartyTab or backgroundColors.activePartyTitle) or
                               (backgroundColors.inactivePartyTab or backgroundColors.activePartySteps)
            local border = active and
                           (borderColors.activePartyTab or borderColors.activePartySteps) or
                           (borderColors.inactivePartyTab or borderColors.activePartySteps)
            local labelColor = active and
                               (textColor.activePartyTab or textColor.activePartySteps) or
                               (textColor.inactivePartyTab or textColor.common)

            addon.ui.v2:ApplyFrameBackdrop(tab, theme.edges.activePartySteps or theme.edges.common,
                                           background or backgroundColors.common,
                                           border or borderColors.common)
            tab.text:SetTextColor(unpack(labelColor or textColor.common))
        end,

        ["SetActiveTab"] = function(this, player)
            this.activeTab = player
            for tabPlayer, tab in pairs(this.tabButtons or {}) do
                this:RefreshTabTheme(tab, tabPlayer == player)
            end
            for containerPlayer, childContainer in pairs(this.playerContainers or {}) do
                childContainer.frame:SetShown(containerPlayer == player)
            end
            this:RefreshActiveContent()
        end,

        ["RefreshActiveContent"] = function(this)
            local activeContainer = this.activeTab and this.playerContainers[this.activeTab]
            if not activeContainer then return end

            activeContainer:DoLayout()
            this:FitToActiveContent()
        end,

        ["FitToActiveContent"] = function(this)
            if not this.autoSize then return end

            local activeContainer = this.activeTab and this.playerContainers[this.activeTab]
            if not activeContainer or not activeContainer.content then return end

            local contentHeight = activeContainer.content:GetHeight() or 0
            local targetHeight = contentHeight + 5 + 14 + 12
            this:SetHeight(max(targetHeight, 105))
        end,

        ["SetTabs"] = function(this, players, activePlayer)
            local previousTab
            local tab, player
            local usedTabs = {}
            local tabCount = #players
            local frameWidth = this.frame:GetWidth() or 0
            local minWidth = tabCount > 4 and
                             24 or 58
            local availableWidth = frameWidth - 10 - 42 - (2 * max(tabCount - 1, 0))
            local tabWidth = 92
            local labelWidth
            local theme = addon.v2:GetTheme()
            local tabFont = theme.font
            local tabFontSize = addon.settings.profile.guideFontSize +
                                2

            if tabCount > 0 and availableWidth > 0 then
                tabWidth = min(92, floor(availableWidth / tabCount))
                tabWidth = max(tabWidth, minWidth)
            end

            for playerIndex = 1, #players do
                player = players[playerIndex]
                tab = this.tabButtons[player]
                if not tab then
                    tab = table.remove(this.unusedTabButtons)
                end
                if not tab then
                    tab = CreateFrame("Button", nil, this.frame,
                                      BackdropTemplateMixin and "BackdropTemplate")
                    tab:SetFrameLevel(this.frame:GetFrameLevel() + 2)
                    tab:EnableMouse(true)
                    tab:RegisterForClicks("LeftButtonUp", "RightButtonUp")
                    tab:SetScript("OnClick", Tab_OnClick)
                    tab:SetScript("OnMouseDown", Tab_OnMouseDown)
                    tab:SetScript("OnMouseUp", MoverSizer_OnMouseUp)
                    tab:SetScript("OnEnter", Tab_OnEnter)
                    tab:SetScript("OnLeave", Tab_OnLeave)
                    tab.text = tab:CreateFontString(nil, "OVERLAY")
                    tab.text:SetPoint("CENTER", tab, 0, 1)
                    tab.text:SetJustifyH("CENTER")
                    tab.text:SetJustifyV("MIDDLE")
                    if tab.text.SetWordWrap then tab.text:SetWordWrap(false) end
                    if tab.text.SetNonSpaceWrap then tab.text:SetNonSpaceWrap(false) end
                end
                this.tabButtons[player] = tab

                tab.rxpPlayer = player
                tab.rxpFullName = player
                labelWidth = max(tabWidth - 16, 1)
                if tab.rxpLabel ~= player or tab.rxpLabelWidth ~= labelWidth or
                    tab.rxpTabFont ~= tabFont or tab.rxpTabFontSize ~= tabFontSize then
                    tab.text:SetFontObject(_G.GameFontNormalSmall)
                    tab.text:SetFont(tabFont, tabFontSize, "")
                    tab.text:SetWidth(labelWidth)
                    tab.rxpTruncated = FitTabText(tab.text, player, labelWidth)
                    tab.rxpLabel = player
                    tab.rxpLabelWidth = labelWidth
                    tab.rxpTabFont = tabFont
                    tab.rxpTabFontSize = tabFontSize
                end
                tab:SetSize(tabWidth, 20)
                tab:ClearAllPoints()
                if previousTab then
                    tab:SetPoint("TOPLEFT", previousTab, "TOPRIGHT",
                                 2, 0)
                else
                    tab:SetPoint("TOPLEFT", this.frame, "TOPLEFT",
                                 10, 18)
                end
                this:RefreshTabTheme(tab, player == activePlayer)
                tab:Show()
                previousTab = tab
                usedTabs[player] = true
            end

            for tabPlayer, tab in pairs(this.tabButtons or {}) do
                if not usedTabs[tabPlayer] then
                    tab:Hide()
                    tab.rxpPlayer = nil
                    tab.rxpFullName = nil
                    tab.rxpTruncated = nil
                    tab.rxpLabel = nil
                    this.tabButtons[tabPlayer] = nil
                    this.unusedTabButtons[#this.unusedTabButtons + 1] = tab
                end
            end

            this:SetActiveTab(activePlayer)
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = updatePartyFrameBackgroundVisibility,

        ["Hide"] = function(this) this.frame:Hide() end,

        ["Show"] = function(this) this.frame:Show() end,

        ["SetShown"] = function(this, shown) this.frame:SetShown(shown) end,

        ["IsForbidden"] = function(this) return this.frame:IsForbidden() end,

        -- called to set an external table to store status in
        ["SetStatusTable"] = function(this, status)
            assert(type(status) == "table")
            this.status = status
            this.autoSize = addon.settings.profile.activePartyStepsV2AutoSize ~= false
            this:ApplyStatus()
        end,

        ["ApplyStatus"] = function(this)
            local status = this.status or this.localstatus
            local frame = this.frame
            this:SetWidth(max(status.width or 265, 265))
            this:SetHeight(max(status.height or 105, 105))
            frame:ClearAllPoints()
            if status.top and status.left then
                frame:SetPoint("TOP", UIParent, "BOTTOM", 0, status.top)
                frame:SetPoint("LEFT", UIParent, "LEFT", status.left, 0)
            else
                frame:SetPoint("CENTER")
            end
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(true)
        frame:SetResizable(true)
        frame:SetFrameStrata("BACKGROUND")
        frame:SetFrameLevel(100)

        local theme = addon.v2:GetTheme()

        self:ApplyFrameBackdrop(frame, theme.edges.activeSteps or theme.edges.activePartySteps or theme.edges.common,
                                theme.backgroundColors.activeSteps or theme.backgroundColors.activePartySteps or theme.backgroundColors.common,
                                theme.borderColors.commonEdge or theme.borderColors.activePartySteps or theme.borderColors.common)
        self:AddFrameShadow(frame)

        if frame.SetResizeBounds then -- WoW 10.0
            frame:SetResizeBounds(265, 105)
        else
            frame:SetMinResize(265, 105)
        end
        frame:SetToplevel(true)
        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)
        frame:SetScript("OnMouseDown", Frame_OnMouseDown)
        frame:SetScript("OnMouseUp", Frame_OnMouseUp)

        local closebutton = CreateFrame("Button", nil, frame)
        closebutton:SetFrameLevel(frame:GetFrameLevel() + 3)
        closebutton:SetSize(16, 16)
        closebutton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 4, 8)
        closebutton:SetNormalTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetPushedTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetHighlightTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close", "ADD")
        closebutton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
        closebutton:SetScript("OnClick", CloseButton_OnClick)

        local footer = CreateFrame("Frame", nil, frame)
        footer:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 1, 1)
        footer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -1, 1)
        footer:SetHeight(12)
        footer:SetFrameLevel(frame:GetFrameLevel() + 1)

        local footerBackground = footer:CreateTexture(nil, "BACKGROUND")
        footerBackground:SetAllPoints()
        local footerColor = theme.backgroundColors.activePartyFooter or
                                theme.backgroundColors.activePartySteps
        footerBackground:SetColorTexture(unpack(footerColor))

        local footertext = footer:CreateFontString(nil, "OVERLAY")
        footertext:SetPoint("CENTER", footer, 0, 0)
        footertext:SetTextColor(0.65, 0.65, 0.7)
        footertext:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
        footertext:SetText("RestedXP: Active Party Steps")

        local sizer = CreateFrame("Button", nil, frame)

        sizer:SetFrameLevel(footer:GetFrameLevel() + 2)
        sizer:SetSize(10, 10)
        sizer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2)
        sizer:SetNormalTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
        sizer:SetHighlightTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight", "ADD")
        sizer:EnableMouse(true)
        sizer:SetScript("OnMouseDown", Sizer_OnMouseDown)
        sizer:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        content:SetPoint("TOPLEFT", 6, -5)
        content:SetPoint("BOTTOMRIGHT", -6, 14)

        local widget = {
            localstatus = {},
            closebutton = closebutton,
            footer = footer,
            footertext = footertext,
            sizer = sizer,
            content = content,
            frame = frame,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActiveStepItem()
    local Type, Version = "RXPV2ActiveStepItem", 6
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local transparent = {0, 0, 0, 0}
    local updateElementCheckbox

    local function releaseElementRow(row)
        addon.ReleaseActiveStepElement(row)
        if _G.GameTooltip:GetOwner() == row then
            _G.GameTooltip:Hide()
        end
        row.text:SetText("")
        row.rxpQuestLink = nil
        row.hoverFrame:Hide()
        row.element = nil
        row.button:SetChecked(false)
        row.button.rxpHovered = nil
        updateElementCheckbox(row.button)
        if _G.GameTooltip:GetOwner() == row.button.rxpHoverFrame then
            _G.GameTooltip:Hide()
        end
        row:Hide()
    end

    local function layoutElements(this)
        local rows = this.elementRows
        local rowCount = this.activeElementRows or 0
        if not rows or rowCount == 0 then return end

        local width = this.content:GetWidth()
        if not width or width <= 0 then return end
        if not this.rxpElementsDirty and this.rxpLayoutWidth == width then return end

        local row, element, hasButton, hasIcon, textLeft, textTop, textWidth, textHeight, textAvailable, rowHeight
        local checkboxLeft = 2
        local checkboxSize = 11
        local textGap = 7
        local height = 0
        for rowIndex = 1, rowCount do
            row = rows[rowIndex]
            element = row.element
            hasButton = not element.textOnly
            hasIcon = row.icon:IsShown()
            if hasIcon then
                textLeft = checkboxLeft + checkboxSize + 5 + 14 + 1
                textTop = -3
            else
                textLeft = hasButton and (checkboxLeft + checkboxSize + textGap) or
                           17
                textTop = -1
            end

            row:SetWidth(width)
            textAvailable = max(0, width - textLeft)
            row.text:ClearAllPoints()
            row.text:SetPoint("TOPLEFT", row, "TOPLEFT", textLeft, textTop)
            row.text:SetPoint("TOPRIGHT", row, "TOPRIGHT", 0, textTop)
            row.text:SetWidth(textAvailable)
            textWidth = min(row.text:GetStringWidth(), textAvailable)
            textHeight = row.text:GetStringHeight()

            rowHeight = max(16,
                            abs(textTop) +
                            math.ceil(textHeight * 1.05) + 1)
            row:SetHeight(rowHeight)
            row.hoverFrame:ClearAllPoints()
            row.hoverFrame:SetPoint("TOPLEFT", row, "TOPLEFT", textLeft, textTop)
            row.hoverFrame:SetSize(textWidth, textHeight)
            row.hoverFrame:SetShown(row.rxpQuestLink and textWidth > 0 and textHeight > 0)
            row.layoutHeight = rowHeight
            row:ClearAllPoints()
            row:SetPoint("TOPLEFT", this.content, "TOPLEFT", 0, -height)
            row:SetPoint("TOPRIGHT", this.content, "TOPRIGHT", 0, -height)
            height = height + rowHeight
        end

        this:SetHeight(height + 12 + 6 + 8)
        this.rxpElementsDirty = nil
        this.rxpLayoutWidth = width
    end

    updateElementCheckbox = function(button, force)
        local theme = addon.v2:GetTheme()
        local checked = not not button:GetChecked()
        local hovered = not not button.rxpHovered
        if not force and button.rxpChecked == checked and
            button.rxpHoverState == hovered and button.rxpCheckboxTheme == theme then
            return
        end

        button.rxpChecked = checked
        button.rxpHoverState = hovered
        button.rxpCheckboxTheme = theme

        local background = not hovered and checked and
                           theme.backgroundColors.activeStepCheckboxChecked or
                           theme.backgroundColors.activeStepCheckbox
        local border = not hovered and checked and
                       theme.borderColors.activeStepCheckboxChecked or
                       theme.borderColors.activeStepCheckbox

        addon.ui.v2:ApplyFrameBackdrop(button, theme.edges.common, background, border)
        button.rxpBackground:SetShown(not hovered)
        button.rxpBorder:SetShown(not hovered)
        button.rxpCheckShort:SetShown(checked and not hovered)
        button.rxpCheckLong:SetShown(checked and not hovered)

        addon.ui.v2:ApplyFrameBackdrop(button.rxpHoverFrame, theme.edges.common, transparent,
                                       theme.borderColors.activeStepCheckbox)
        button.rxpHoverFrame:SetShown(hovered)
    end

    local function elementCheckboxPostClick(button)
        updateElementCheckbox(button)
    end

    local function elementCheckboxOnEnter(button)
        button.rxpHovered = true
        updateElementCheckbox(button)

        if button:IsForbidden() or _G.GameTooltip:IsForbidden() then return end
        _G.GameTooltip:SetOwner(button.rxpHoverFrame, "ANCHOR_NONE")
        _G.GameTooltip:ClearAllPoints()
        _G.GameTooltip:SetPoint("BOTTOM", button.rxpHoverFrame, "TOP", 0, 6)
        _G.GameTooltip:ClearLines()
        _G.GameTooltip:AddLine(L("Skip step"), 1, 1, 1)
        local element = button:GetParent().element
        if addon.settings.profile.debug and element and element.tooltip then
            _G.GameTooltip:AddLine(tostring(element.tooltip), 0.65, 0.7, 0.9)
        end
        _G.GameTooltip:Show()
    end

    local function elementCheckboxOnLeave(button)
        button.rxpHovered = nil
        updateElementCheckbox(button)

        if not button:IsForbidden() and not _G.GameTooltip:IsForbidden() then
            _G.GameTooltip:Hide()
        end
    end

    local function elementTextOnHyperlinkClick(_, link, text, button)
        _G.SetItemRef(link, text, button)
    end

    local function elementTextOnHyperlinkEnter(row, link)
        if row:IsForbidden() or _G.GameTooltip:IsForbidden() then return end
        _G.GameTooltip:SetOwner(row, "ANCHOR_CURSOR")
        _G.GameTooltip:SetHyperlink(link)
    end

    local function elementTextOnHyperlinkLeave(row)
        if not row:IsForbidden() and not _G.GameTooltip:IsForbidden() and
            _G.GameTooltip:GetOwner() == row then
            _G.GameTooltip:Hide()
        end
    end

    local function elementRowOnEnter(hoverFrame)
        local row = hoverFrame.row
        if row.rxpQuestLink then
            elementTextOnHyperlinkEnter(row, row.rxpQuestLink)
        end
    end

    local function elementRowOnLeave(hoverFrame)
        local row = hoverFrame.row
        if row.rxpQuestLink then
            elementTextOnHyperlinkLeave(row)
        end
    end

    local function elementRowOnClick(hoverFrame, button)
        local row = hoverFrame.row
        if row.rxpQuestLink then
            elementTextOnHyperlinkClick(row, row.rxpQuestLink, row.text:GetText(), button)
        end
    end

    local function updateElementRowText(row, element, resetPending)
        row.rxpQuestLink = nil
        if element.text and element.text ~= " " then
            local questAction
            if addon.settings.profile.activeStepsV2RenderQuestName then
                questAction = element.tag == "accept" and _G.ACCEPT or
                              element.tag == "turnin" and _G.TURN_IN_QUEST
            end
            local hasQuestData = questAction and
                                 addon.EnsureQuestData(element.questId)
            if questAction and element.title and element.title ~= "" and
                hasQuestData then
                row.rxpQuestLink = format("quest:%d", element.questId)
                row.text:SetText(format(
                    "%s |cffffff00|Hquest:%d|h[%s]|h|r",
                    questAction, element.questId, element.title))
            else
                row.text:SetText(addon.ReplaceNpcIds(L(element.text)))
            end
        elseif element.tooltipText and element.tooltipText ~= "" then
            local text = element.tooltipText
            local icon = element.icon or addon.icons[element.tag]
            if icon and text:sub(1, #icon) == icon then
                text = text:sub(#icon + 1)
            end
            row.text:SetText(addon.ReplaceNpcIds(L(text)))
        elseif element.rawtext and element.rawtext ~= "" then
            row.text:SetText(addon.ReplaceNpcIds(L(element.rawtext)))
        elseif not element.requestFromServer then
            row.text:SetText("")
        elseif resetPending then
            row.text:SetText(" ")
        end
    end

    local function createElementRow(this)
        local row = CreateFrame("Frame", nil, this.content)
        row:SetHyperlinksEnabled(true)
        row:SetScript("OnHyperlinkClick", elementTextOnHyperlinkClick)
        row:SetScript("OnHyperlinkEnter", elementTextOnHyperlinkEnter)
        row:SetScript("OnHyperlinkLeave", elementTextOnHyperlinkLeave)

        local button = CreateFrame("CheckButton", nil, row,
                                   BackdropTemplateMixin and "BackdropTemplate")
        local checkboxSize = 11
        button:SetSize(checkboxSize, checkboxSize)
        button:SetPoint("TOPLEFT", row, "TOPLEFT", 2, -2)
        button:SetPushedTexture("")

        local checkShort = button:CreateTexture(nil, "OVERLAY")
        checkShort:SetColorTexture(1, 1, 1, 1)
        checkShort:SetSize(3.5, 1.25)
        checkShort:SetPoint("CENTER", button, "CENTER", -1.5, -0.8)
        checkShort:SetRotation(-math.pi / 4)
        checkShort:Hide()
        button.rxpCheckShort = checkShort

        local checkLong = button:CreateTexture(nil, "OVERLAY")
        checkLong:SetColorTexture(1, 1, 1, 1)
        checkLong:SetSize(6, 1.25)
        checkLong:SetPoint("CENTER", button, "CENTER", 1, -0.1)
        checkLong:SetRotation(math.pi / 4)
        checkLong:Hide()
        button.rxpCheckLong = checkLong

        local hoverFrame = CreateFrame("Frame", nil, button)
        hoverFrame:SetSize(checkboxSize, checkboxSize)
        hoverFrame:SetPoint("CENTER", button, "CENTER")
        hoverFrame:SetFrameLevel(button:GetFrameLevel() + 2)
        hoverFrame:EnableMouse(false)
        button.rxpHoverFrame = hoverFrame

        local skipIcon = hoverFrame:CreateTexture(nil, "OVERLAY")
        local hoverIconInset = 2
        skipIcon:SetPoint("TOPLEFT", hoverFrame, "TOPLEFT", hoverIconInset, -hoverIconInset)
        skipIcon:SetPoint("BOTTOMRIGHT", hoverFrame, "BOTTOMRIGHT", -hoverIconInset, hoverIconInset)
        skipIcon:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-skip-step-hover")

        updateElementCheckbox(button)
        button:SetScript("OnEnter", elementCheckboxOnEnter)
        button:SetScript("OnLeave", elementCheckboxOnLeave)
        button:SetScript("PostClick", addon.ActiveStepElementPostClick)
        button:HookScript("PostClick", elementCheckboxPostClick)
        row.button = button

        local icon = row:CreateFontString(nil, "OVERLAY")
        icon:SetFontObject(_G.GameFontNormalSmall)
        icon:SetPoint("TOPLEFT", button, "TOPRIGHT", 5, -1)
        row.icon = icon

        local text = row:CreateFontString(nil, "OVERLAY")
        text:SetFontObject(_G.GameFontNormalSmall)
        text:SetJustifyH("LEFT")
        text:SetJustifyV("MIDDLE")
        text:SetWordWrap(true)
        text:SetPoint("TOPLEFT", button, "TOPRIGHT", 7, -1)
        row.text = text

        local hoverFrame = CreateFrame("Button", nil, row)
        hoverFrame.row = row
        hoverFrame:SetFrameLevel(row:GetFrameLevel() + 3)
        hoverFrame:EnableMouse(true)
        hoverFrame:SetScript("OnEnter", elementRowOnEnter)
        hoverFrame:SetScript("OnLeave", elementRowOnLeave)
        hoverFrame:SetScript("OnClick", elementRowOnClick)
        hoverFrame:Hide()
        row.hoverFrame = hoverFrame

        return row
    end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this:SetWidth(300)
            this:SetHeight(100)
            this:SetTitle(nil)
            this.elementRows = this.elementRows or {}
            this.activeElementRows = 0
            this.noAutoHeight = false
        end,

        ["OnRelease"] = function(this)
            local rows = this.elementRows or {}
            local row
            for rowIndex = 1, #rows do
                row = rows[rowIndex]
                releaseElementRow(row)
            end
            this.activeElementRows = 0
            this.noAutoHeight = false
            this.stepTextLabel = nil
            this.rxpElementSnapshots = nil
            this.rxpVisibleElementCount = nil
            this.rxpRenderRevision = nil
            this.rxpRenderTitle = nil
            this.rxpRenderIndex = nil
            this.rxpRenderText = nil
        end,

        ["SetTitle"] = function(this, title)
            if title == "" then
                this.titletext:SetText("")
                this.titletext:SetAlpha(0)
                this.title:SetSize(12, 18)
            else
                this.titletext:SetAlpha(1)
                this.title:SetAlpha(1)
                this.titletext:SetText(title)
                this.title:SetSize(this.titletext:GetStringWidth() + 12, 18)
            end
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["SetElements"] = function(this, step, watchOnly)
            local rows = this.elementRows
            local previousCount = this.activeElementRows or 0
            local row, element, previousElement, previousStep, rowStep

            local theme, textColor
            if not watchOnly then
                theme = addon.v2:GetTheme()
                textColor = theme.textColor.activeStepItem or theme.textColor.common
            end
            local visibleCount = 0

            local elements = step.elements or {}
            for elementIndex = 1, #elements do
                element = elements[elementIndex]
                if watchOnly or element.text or element.rawtext or element.tooltipText then
                    visibleCount = visibleCount + 1
                    row = rows[visibleCount]
                    if not row then
                        row = createElementRow(this)
                        rows[visibleCount] = row
                    end

                    previousElement = row.element
                    previousStep = row.step
                    rowStep = watchOnly and (element.step or step) or step
                    if previousElement ~= element or previousStep ~= rowStep then
                        addon.ReleaseActiveStepElement(row)
                    end
                    row.element = element
                    if not watchOnly then
                        row.rxpResetPending = previousElement ~= element
                        row.text:SetTextColor(unpack(textColor))
                        row.text:SetFont(
                            theme.font,
                            addon.settings.profile.guideFontSize + 2,
                            "")

                        if element.tag and (element.text or element.rawtext or
                            element.tooltipText) then
                            row.icon:SetText(element.icon or addon.icons[element.tag] or "")
                            row.icon:Show()
                        else
                            row.icon:Hide()
                        end

                        row.button:SetShown(not element.textOnly)
                        row:Show()
                    end
                    if previousElement ~= element or previousStep ~= rowStep then
                        addon.BindActiveStepElement(row, rowStep, element, rowStep.index)
                    end
                end
            end

            for rowIndex = visibleCount + 1, previousCount do
                releaseElementRow(rows[rowIndex])
            end

            this.activeElementRows = visibleCount
            if not watchOnly then
                this.noAutoHeight = visibleCount > 0
                this.rxpElementsDirty = true
                this:RefreshElements(false)
            end
            return visibleCount
        end,

        ["RefreshElements"] = function(this, layout)
            local row, element
            for rowIndex = 1, this.activeElementRows or 0 do
                row = this.elementRows[rowIndex]
                element = row.element
                row.button:SetChecked(
                    element.completed or element.skip or element.textOnly)
                updateElementCheckbox(row.button)
                updateElementRowText(row, element, row.rxpResetPending)
                row.rxpResetPending = nil
            end
            if layout ~= false then
                this.rxpElementsDirty = true
                layoutElements(this)
            end
        end,

        ["LayoutElements"] = function(this)
            layoutElements(this)
        end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end
            this:SetHeight((height or 0) + 12 + 6 + 8)
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            local contentwidth = width - 4 - 6
            if contentwidth < 0 then contentwidth = 0 end
            content:SetWidth(contentwidth)
            content.width = contentwidth
            layoutElements(this)
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local contentheight = height - 12 - 6 - 8
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = function (this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()
            local itemEdge = theme.edges.activeStepItem or theme.edges.common
            local itemBackground = theme.backgroundColors.common
            local itemBorder = theme.borderColors.itemEdge or theme.borderColors.common
            local badgeEdge = theme.edges.activeStepBadge or itemEdge
            local badgeBackground = theme.backgroundColors.activeStepBadge or itemBackground
            local badgeBorder = theme.borderColors.activeStepBadge or itemBorder

            addon.ui.v2:ApplyFrameBackdrop(this.card, itemEdge, itemBackground, itemBorder)
            addon.ui.v2:ApplyFrameBackdrop(this.title, badgeEdge, badgeBackground, badgeBorder)

            local textColor = theme.textColor.activeStepItem or theme.textColor.common
            local row
            for rowIndex = 1, this.activeElementRows or 0 do
                row = this.elementRows[rowIndex]
                row.text:SetTextColor(unpack(textColor))
                row.text:SetFont(
                    theme.font,
                    addon.settings.profile.guideFontSize + 2,
                    "")
                updateElementCheckbox(row.button, true)
            end
            this.rxpElementsDirty = true
            layoutElements(this)
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")

        local theme = addon.v2:GetTheme()
        local itemEdge = theme.edges.activeStepItem or theme.edges.common
        local itemBackground = theme.backgroundColors.common
        local itemBorder = theme.borderColors.itemEdge or theme.borderColors.common
        local itemTextColor = theme.textColor.activeStepItem or theme.textColor.common
        local badgeEdge = theme.edges.activeStepBadge or itemEdge
        local badgeBackground = theme.backgroundColors.activeStepBadge or itemBackground
        local badgeBorder = theme.borderColors.activeStepBadge or itemBorder
        local badgeTextColor = theme.textColor.activeStepBadge or itemTextColor

        local card = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        card:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
        card:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 8)
        addon.ui.v2:ApplyFrameBackdrop(card, itemEdge, itemBackground, itemBorder)
        addon.ui.v2:AddFrameShadow(card, nil, nil, nil, nil, "stepItem")

        local title = CreateFrame("Frame", nil, card, BackdropTemplateMixin and "BackdropTemplate")
        title:SetFrameLevel(card:GetFrameLevel() + 2)
        title:SetPoint("TOPLEFT", card, "TOPLEFT", 6, 9)
        title:ClearBackdrop()
        addon.ui.v2:ApplyFrameBackdrop(title, badgeEdge, badgeBackground, badgeBorder)


        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 0, 0)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(badgeTextColor))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(
            theme.font,
            addon.settings.profile.guideFontSize - 1,
            "")

        -- Container Support
        local content = CreateFrame("Frame", nil, card)
        content:SetPoint("TOPLEFT", 4, -12)
        content:SetPoint("BOTTOMRIGHT", -6, 6)

        local widget = {card = card, title = title, titletext = titletext, content = content, frame = frame, type = Type}

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActivePartyStepItem()
    local Type, Version = "RXPV2ActivePartyStepItem", 3
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this:SetWidth(300)
            this:SetHeight(100)
            this:SetTitle(nil)
        end,

        ["OnRelease"] = function(this)
            this.stepTextLabel = nil
        end,

        ["SetTitle"] = function(this, title)
            if title == "" then
                this.titletext:SetText("")
                this.titletext:SetAlpha(0)
                this.title:SetSize(12, 18)
            else
                this.titletext:SetAlpha(1)
                this.title:SetAlpha(1)
                this.titletext:SetText(title)
                this.title:SetSize(this.titletext:GetStringWidth() + 12, 18)
            end
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end
            this:SetHeight((height or 0) + 10 + 5 + 8)
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            local contentwidth = width - 8 - 8
            if contentwidth < 0 then contentwidth = 0 end
            content:SetWidth(contentwidth)
            content.width = contentwidth
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local contentheight = height - 10 - 5 - 8
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = function (this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()
            local itemEdge = theme.edges.activeStepItem or theme.edges.common
            local itemBackground = theme.backgroundColors.activeStepItem or
                                   theme.backgroundColors.common
            local itemBorder = theme.borderColors.itemEdge or
                               theme.borderColors.common
            local badgeEdge = theme.edges.activeStepBadge or itemEdge
            local badgeBackground = theme.backgroundColors.activeStepBadge or
                                    itemBackground
            local badgeBorder = theme.borderColors.activeStepBadge or
                                itemBorder

            addon.ui.v2:ApplyFrameBackdrop(this.card, itemEdge, itemBackground, itemBorder)
            addon.ui.v2:ApplyFrameBackdrop(this.title, badgeEdge, badgeBackground, badgeBorder)
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")

        local theme = addon.v2:GetTheme()
        local itemEdge = theme.edges.activeStepItem or theme.edges.common
        local itemBackground = theme.backgroundColors.activeStepItem or
                               theme.backgroundColors.common
        local itemBorder = theme.borderColors.itemEdge or
                           theme.borderColors.common
        local itemTextColor = theme.textColor.activePartyStepItem or
                              theme.textColor.activeStepItem or
                              theme.textColor.common
        local badgeEdge = theme.edges.activeStepBadge or itemEdge
        local badgeBackground = theme.backgroundColors.activeStepBadge or
                                itemBackground
        local badgeBorder = theme.borderColors.activeStepBadge or
                            itemBorder
        local badgeTextColor = theme.textColor.activeStepBadge or
                               itemTextColor

        local card = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        card:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
        card:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 8)
        addon.ui.v2:ApplyFrameBackdrop(card, itemEdge, itemBackground, itemBorder)
        addon.ui.v2:AddFrameShadow(card, nil, nil, nil, nil, "stepItem")

        local title = CreateFrame("Frame", nil, card, BackdropTemplateMixin and "BackdropTemplate")
        title:SetFrameLevel(card:GetFrameLevel() + 2)
        title:SetPoint("TOPLEFT", card, "TOPLEFT", 6, 9)
        title:ClearBackdrop()
        addon.ui.v2:ApplyFrameBackdrop(title, badgeEdge, badgeBackground, badgeBorder)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 0, 0)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(badgeTextColor))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(
            theme.font,
            addon.settings.profile.guideFontSize - 1,
            "")

        -- Container Support
        local content = CreateFrame("Frame", nil, card)
        content:SetPoint("TOPLEFT", 8, -10)
        content:SetPoint("BOTTOMRIGHT", -8, 5)

        local widget = {card = card, title = title, titletext = titletext, content = content, frame = frame, type = Type}

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end
