local addonName, addon = ...

local locale = _G.GetLocale()
local pairs, assert, type = pairs, assert, type
local min, max, floor, ceil, abs = math.min, math.max, math.floor, math.ceil, math.abs
local strbyte, strsub = string.byte, string.sub
local CreateFrame, UIParent = CreateFrame, UIParent

-- AceAddon doesn't exist yet
local AceGUI = LibStub("AceGUI-3.0")

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

    if this.UpdateSubTheme then this:UpdateSubTheme(payload) end

    if payload.updateChildren then
        for _, child in pairs(this.children or {}) do
            if child.UpdateTheme then child:UpdateTheme({updateChildren = true}) end
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

    for _, tab in pairs(this.tabButtons or {}) do tab:SetShown(not not tab.rxpPlayer) end
end

local function setTextureGroupColor(group, color)
    for _, texture in ipairs(group.textures) do texture:SetVertexColor(unpack(color)) end
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
        for index, key in ipairs({"top", "bottom", "left", "right"}) do
            setBorderTexture(frame.rxpBorder.textures[index], key)
        end
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

function addon.ui.v2:AddFrameShadow(frame, xOffset, yOffset, alpha, size)
    if frame.rxpShadow then return frame.rxpShadow end

    xOffset = xOffset or 0
    yOffset = yOffset or 0
    alpha = alpha or 0.5
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
    shadow.top = top

    local bottom = createShadowTexture()
    bottom:SetPoint("BOTTOMLEFT", shadow, "BOTTOMLEFT", size, 0)
    bottom:SetPoint("BOTTOMRIGHT", shadow, "BOTTOMRIGHT", -size, 0)
    bottom:SetHeight(size)
    shadow.bottom = bottom

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
        shadow[point] = corner
    end

    frame.rxpShadow = shadow

    return shadow
end

function addon.ui.v2.SetFrameTopShadowShown(this, frame, shown)
    if not frame.rxpShadow then return end

    if frame.rxpShadow.top then frame.rxpShadow.top:SetShown(shown) end
    if frame.rxpShadow.TOPLEFT then frame.rxpShadow.TOPLEFT:SetShown(shown) end
    if frame.rxpShadow.TOPRIGHT then frame.rxpShadow.TOPRIGHT:SetShown(shown) end
end

function addon.ui.v2.SetFrameBottomShadowShown(this, frame, shown)
    if not frame.rxpShadow then return end

    if frame.rxpShadow.bottom then frame.rxpShadow.bottom:SetShown(shown) end
    if frame.rxpShadow.BOTTOMLEFT then frame.rxpShadow.BOTTOMLEFT:SetShown(shown) end
    if frame.rxpShadow.BOTTOMRIGHT then frame.rxpShadow.BOTTOMRIGHT:SetShown(shown) end
end

function addon.ui.v2.HideFrameTopEdge(this, frame)
    if frame.rxpBorder and frame.rxpBorder.textures[1] then frame.rxpBorder.textures[1]:Hide() end

    this:SetFrameTopShadowShown(frame, false)
end

function addon.v2:IsGuideWindowEnabled()
    local profile = addon.settings and addon.settings.profile

    return profile and profile.enableBetaFeatures and profile.enableV2Interface
end

function addon.v2:UpdateMenuTheme(listFrame, enabled)
    if not self:IsGuideWindowEnabled() or not listFrame then return end

    local name = listFrame:GetName()
    local backdrop = _G[name .. "Backdrop"]
    local menuBackdrop = _G[name .. "MenuBackdrop"]

    if not enabled then
        addon.ui.v2:SetFrameBackdropShown(listFrame, false)

        if listFrame.rxpV2MenuThemeApplied then
            if backdrop then backdrop:Show() end
            if menuBackdrop then menuBackdrop:Show() end
            listFrame.rxpV2MenuThemeApplied = nil
        end

        return
    end

    local theme = self:GetTheme()

    if backdrop then backdrop:Hide() end
    if menuBackdrop then menuBackdrop:Hide() end

    addon.ui.v2:ApplyFrameBackdrop(listFrame, theme.edge, theme.backgroundColors.common, theme.borderColors.commonEdge)

    addon.ui.v2:AddFrameShadow(listFrame)
    addon.ui.v2:SetFrameBackdropShown(listFrame, true)

    listFrame.rxpV2MenuThemeApplied = true

    local text
    for index = 1, listFrame.numButtons or 0 do
        text = _G[name .. "Button" .. index .. "NormalText"]

        if text then text:SetFont(theme.font, select(2, text:GetFont())) end
    end
end

function addon.v2:HookMenuSubmenus(prefix)
    if not self:IsGuideWindowEnabled() then return end

    local listFrame
    for level = 2, 3 do
        listFrame = _G[prefix .. level]

        if listFrame and not listFrame.rxpV2MenuThemeHooked then

            listFrame:HookScript("OnShow", function(this)
                local dropdown = this.dropdown
                if dropdown and dropdown.rxpV2MenuTheme ~= nil then
                    addon.v2:UpdateMenuTheme(this, dropdown.rxpV2MenuTheme)
                elseif this.rxpV2MenuThemeApplied then
                    addon.v2:UpdateMenuTheme(this, false)
                end
            end)

            listFrame.rxpV2MenuThemeHooked = true
        end
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
    menu[#menu + 1] = {text = _G.CLOSE, notCheckable = 1, func = function(this) this:Hide() end}

    if #menu > 0 then addon:ShowMenu(menu) end
end

function addon.v2:ShowSettingsMenu()
    local menuList = addon.RXPFrame:GenerateMenuTable({})
    local menu, foundGuideDivider = {}, false

    menu[#menu + 1] = {
        text = L("Show step list"),
        checked = function() return addon.settings:IsStepListShown() end,
        func = function(this)
            addon.settings:SetStepListShown(not addon.settings:IsStepListShown())
            this:Hide()
        end
    }
    menu[#menu + 1] = {
        text = L("Hide completed steps"),
        checked = function() return addon.settings.profile.hideCompletedSteps end,
        func = function(this)
            addon.settings:SetHideCompletedSteps(not addon.settings.profile.hideCompletedSteps)
            this:Hide()
        end
    }
    menu[#menu + 1] = {
        text = L("Show unused guides"),
        checked = function() return addon.settings.profile.showUnusedGuides end,
        func = function(this)
            addon.settings.profile.showUnusedGuides = not addon.settings.profile.showUnusedGuides
            this:Hide()
        end
    }
    menu[#menu + 1] = {text = "", notCheckable = 1, isTitle = 1}

    for _, item in ipairs(menuList) do
        if foundGuideDivider then
            menu[#menu + 1] = item
        elseif item.isTitle and item.text == "" then
            foundGuideDivider = true
        end
    end

    if #menu > 0 then addon:ShowMenu(menu) end
end

function addon.v2:BuildGuideStepsSnapshot()
    -- Translate the mutable legacy guide state into rows consumed by the V2 guide window.
    local guide = addon.currentGuide
    local profile = addon.settings and addon.settings.profile
    local currentStep = addon.GetGuideProgress()
    local activeSteps = addon.RXPFrame and addon.RXPFrame.activeSteps
    local activeStepIndex

    if activeSteps then
        for _, activeStep in ipairs(activeSteps) do
            if activeStep.index and (not activeStepIndex or activeStep.index < activeStepIndex) then
                activeStepIndex = activeStep.index
            end
        end
    end

    activeStepIndex = activeStepIndex or currentStep

    local skippedSteps = RXPCData and RXPCData.stepSkip or {}
    local rows = {}
    local level = addon.player.level
    local step, hidden, complete, text, rawtext

    if not profile then return {title = "", subtitle = "", rows = rows} end

    if not guide or guide.empty then
        return {title = L("Welcome to RestedXP"), subtitle = L("Select a guide:"), rows = rows, empty = true}
    end

    for index, guideStep in ipairs(guide.steps or {}) do
        step = guideStep

        complete = step.completed or skippedSteps[index] or (not step.sticky and currentStep > index)
        hidden = step.hidewindow or step.hidetip or step.optional or (step.level and step.level > level) or
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
                    text = text .. (text == "" and "" or "\n") .. addon.ReplaceNpcIds(rawtext, element)
                end
            end
        end

        hidden = hidden or text == ""

        rows[#rows + 1] = {
            index = index,
            text = text,
            hidden = hidden,
            complete = complete,
            current = index == activeStepIndex
        }
    end

    local guideName = addon.GetGuideName(guide) or ""
    local title = guide.title or guide.subgroup or guideName
    local subtitle = not guide.title and guide.subgroup and guideName or ""

    return {
        title = title,
        subtitle = subtitle,
        rows = rows
    }
end

function addon.ui.v2:RegisterRXPV2GuideStepsItem()
    local Type, Version = "RXPV2GuideStepsItem", 2
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

        addon:ShowMenu(menu, menuFrame, "cursor", 0, 0, "MENU")
    end

    local methods = {
        ["OnAcquire"] = function(this) this.frame:Show() end,

        ["OnRelease"] = function(this)
            this.row = nil
            this.index = nil
            this.frame:Hide()
        end,

        ["SetRow"] = function(this, row, force)
            local previous = this.row
            local textChanged = force or not previous or previous.index ~= row.index or previous.text ~= row.text
            local visualChanged = force or not previous or previous.complete ~= row.complete or previous.current ~=
                                      row.current

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
                local background = theme.backgroundColors.common
                local border = theme.borderColors.commonEdge
                local badgeBackground = theme.version == 1 and theme.backgroundColors.common or
                                            theme.backgroundColors.activeStepCheckbox

                addon.ui.v2:ApplyFrameBackdrop(this.frame, theme.edge, background, border)
                addon.ui.v2:AddFrameShadow(this.frame)
                addon.ui.v2:ApplyFrameBackdrop(this.numberFrame, theme.edge, badgeBackground,
                                               theme.borderColors.commonEdge)
                this.text:SetTextColor(unpack(theme.textColor.common))
            end

            if visualChanged then
                this.frame:SetAlpha(row.complete and 0.5 or 1)
                this.number:SetTextColor(unpack(row.current and theme.textColor.title or
                                                    theme.textColor.inactivePartyTab))
            end

            return true, textChanged
        end,

        ["UpdateHeight"] = function(this)
            this.text:SetWidth(max(this.frame:GetWidth() - this.numberFrame:GetWidth() - 8, 0))

            this.frame:SetHeight(math.max(this.text:GetStringHeight() + 9, 30))
        end,

        ["SetWidth"] = function(this, width) this.frame:SetWidth(width) end,

        ["GetHeight"] = function(this) return this.frame:GetHeight() end
    }

    local function Constructor()
        local frame = CreateFrame("Button", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")
        frame:SetHeight(30)
        frame:RegisterForClicks("LeftButtonDown", "RightButtonDown")

        local text = frame:CreateFontString(nil, "OVERLAY")
        text:SetPoint("TOPLEFT", frame, "TOPLEFT", 4, -5)
        text:SetJustifyH("LEFT")
        text:SetJustifyV("MIDDLE")
        text:SetFont(addon.v2:GetTheme().font, addon.settings.profile.guideFontSize, "")
        text:SetWordWrap(true)

        local numberFrame = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        numberFrame:SetFrameLevel(frame:GetFrameLevel() + 2)
        numberFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT")
        numberFrame:SetSize(16, 16)

        local number = numberFrame:CreateFontString(nil, "OVERLAY")
        number:SetPoint("CENTER")
        number:SetJustifyH("CENTER")
        number:SetJustifyV("MIDDLE")
        number:SetFont(addon.v2:GetTheme().font, addon.settings.profile.guideFontSize - 1, "")

        local widget = {frame = frame, text = text, number = number, numberFrame = numberFrame, type = Type}
        for method, func in pairs(methods) do widget[method] = func end

        frame:SetScript("OnClick", function(_, button) if button == "RightButton" then ShowMenu(widget) end end)

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2:RegisterRXPV2GuideSteps()
    local Type, Version = "RXPV2GuideSteps", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local function ReleaseItem(this, index)
        local item = this.items[index]

        if item then
            AceGUI:Release(item)
            this.items[index] = nil
        end
    end

    local methods = {
        ["OnAcquire"] = function(this) this.frame:Show() end,

        ["OnRelease"] = function(this)
            this.rows = nil

            for index in pairs(this.items) do ReleaseItem(this, index) end

            this.rowsHeight = nil
            this.minimumRowsHeight = nil
            this.rowsWidth = nil
            this.activeIndex = nil
            this.activeOffset = nil

            this.frame:Hide()
        end,

        ["SetRows"] = function(this, rows, force, scrollToActive)
            local previous, item, minimumHeight, activeOffset, activeIndex, itemHeight, _, textChanged
            local height = 0

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
                        item.frame:SetPoint("TOPLEFT", previous.frame, "BOTTOMLEFT", 0, -8)
                    else
                        item.frame:SetPoint("TOPLEFT", this.content, "TOPLEFT", 0, 0)
                    end

                    item.frame:SetPoint("TOPRIGHT", this.content, "TOPRIGHT", 0, 0)

                    _, textChanged = item:SetRow(row, force)
                    if textChanged or force then item:UpdateHeight() end
                    addon.ui.v2:SetFrameTopShadowShown(item.frame, previous ~= nil)

                    itemHeight = item:GetHeight()
                    minimumHeight = min(minimumHeight or itemHeight, itemHeight)

                    if row.current then
                        activeOffset = height
                        activeIndex = row.index
                    end

                    previous = item
                    height = height + itemHeight + 8
                end
            end

            for index in pairs(this.items) do if index > #rows then ReleaseItem(this, index) end end

            this.rowsHeight = height
            this.minimumRowsHeight = minimumHeight or 0
            this.activeOffset = activeOffset
            this.content:SetHeight(math.max(height, 1))

            this:UpdateScrollbar()

            if activeOffset and (scrollToActive or activeIndex ~= this.activeIndex) then
                this.scroll:ScrollToOffset(activeOffset)
            end

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

        ["ScrollToActive"] = function(this)
            if this.activeOffset then this.scroll:ScrollToOffset(this.activeOffset) end
        end,

        ["RefreshVisuals"] = function(this)
            this.scroll:RefreshVisuals()

            if this.rows then this:SetRows(this.rows, true) end
        end
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent)

        local scroll = AceGUI:Create("RXPV2ScrollFrame")
        scroll.frame:SetParent(frame)
        scroll.frame:SetAllPoints(frame)

        local widget = {frame = frame, scroll = scroll, content = scroll.content, items = {}, type = Type}

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

local guideWindowDefaultWidth, guideWindowDefaultHeight = 265, 270

local function GetGuideWindowHeaderBackgroundColor(theme)
    local color = theme.version == 1 and theme.backgroundColors.common or theme.backgroundColors.guideName

    return {color[1], color[2], color[3], 0.5}
end

local function GuideWindowButton_OnEnter(button)
    if button:IsForbidden() or _G.GameTooltip:IsForbidden() then return end

    _G.GameTooltip:SetOwner(button, "ANCHOR_TOP")
    _G.GameTooltip:ClearLines()
    _G.GameTooltip:AddLine(button.rxpTooltipText, 1, 1, 1)
    _G.GameTooltip:Show()
end

local function GuideWindowButton_OnLeave(button)
    if not button:IsForbidden() and not _G.GameTooltip:IsForbidden() and _G.GameTooltip:IsOwned(button) then
        _G.GameTooltip:Hide()
    end
end

function addon.ui.v2:RegisterRXPV2GuideWindow()
    local Type, Version = "RXPV2GuideWindow", 10
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local function SaveStatus(this, saveHeight)
        local frame = this.frame

        frame:StopMovingOrSizing()

        if saveHeight and this.guideSteps.frame:IsShown() and frame:GetHeight() > this:GetCollapsedHeight() then
            this.guideHeight = frame:GetHeight()
            addon.settings.profile.v2GuideWindowExpandedHeight = this.guideHeight
        end

        addon.settings:SaveFramePositions()
        addon.v2.events:Trigger("GuideWindowRefresh", "layout")
    end

    local methods = {
        ["GetCollapsedHeight"] = function(this) return this.upperFrame:GetHeight() end,

        ["GetShellHeight"] = function(this) return this:GetCollapsedHeight() + this.footer:GetHeight() end,

        ["GetMinimumWidth"] = function(this)
            local textWidth = max(this.title:GetStringWidth() or 0, this.subtitle:GetStringWidth() or 0)

            if textWidth <= 0 then return guideWindowDefaultWidth end

            return max(guideWindowDefaultWidth, ceil(textWidth + 121))
        end,

        ["UpdateHeaderHeight"] = function(this)
            local headerHeight = this.snapshotEmpty and 34 or 36

            this.upperFrame:SetHeight(headerHeight)
            this.header:SetHeight(headerHeight - 2)

            this.guideStepsFrame:ClearAllPoints()
            this.guideStepsFrame:SetPoint("TOPLEFT", this.upperFrame, "TOPLEFT", 0, -headerHeight)
            this.guideStepsFrame:SetPoint("BOTTOMRIGHT", this.frame, "BOTTOMRIGHT", 0, 0)
        end,

        ["UpdateFrameLayout"] = function(this)
            this:UpdateHeaderHeight()
            this.header:ClearAllPoints()
            this.header:SetPoint("TOPLEFT", this.upperFrame, "TOPLEFT", 1, -1)
            this.header:SetPoint("TOPRIGHT", this.upperFrame, "TOPRIGHT", -1, -1)
            this.header:SetHeight(this.upperFrame:GetHeight() - 2)
            this.guideNameFrame:ClearAllPoints()
            this.guideNameFrame:SetPoint("TOPLEFT", this.header, "TOPLEFT", 0, 0)
            this.guideNameFrame:SetPoint("BOTTOMRIGHT", this.header, "BOTTOMRIGHT")

            this.iconLogo:ClearAllPoints()
            this.iconLogo:SetPoint("LEFT", this.header, "LEFT", 6, 0)
            this.iconLogo:SetSize(30, 30)
            this.classIcon:ClearAllPoints()
            this.classIcon:SetPoint("BOTTOMRIGHT", this.iconLogo, "BOTTOMRIGHT", 2, 1)
            this.classIcon:SetSize(17, 17)

            this.settingsButton:ClearAllPoints()
            this.settingsButton:SetPoint("RIGHT", this.guideNameFrame, "RIGHT", -16, 0)
            this.settingsButton:SetSize(21, 21)
            this.guideSelectButton:ClearAllPoints()
            this.guideSelectButton:SetPoint("RIGHT", this.settingsButton, "LEFT", -7, 0)
            this.guideSelectButton:SetSize(21, 21)

            this.title:ClearAllPoints()
            this.title:SetPoint("TOPLEFT", this.guideNameFrame, "TOPLEFT", 42, -6)
            this.title:SetPoint("TOPRIGHT", this.guideSelectButton, "TOPLEFT", -4, -6)
            this.subtitle:ClearAllPoints()
            this.subtitle:SetPoint("TOPLEFT", this.title, "BOTTOMLEFT", 0, -2)
            this.subtitle:SetPoint("TOPRIGHT", this.title, "BOTTOMRIGHT", 0, -2)

            this.guideSteps.frame:ClearAllPoints()
            this.guideSteps.frame:SetPoint("TOPLEFT", this.guideStepsFrame, "TOPLEFT", 2, -2)
            this.guideSteps.frame:SetPoint("BOTTOMRIGHT", this.guideStepsFrame, "BOTTOMRIGHT", -2, 16)
            this.guideSteps.scroll:SetContentTopPadding(4)

            this.footer:ClearAllPoints()
            this.footer:SetPoint("BOTTOMLEFT", this.guideStepsFrame, "BOTTOMLEFT", 0, 0)
            this.footer:SetPoint("BOTTOMRIGHT", this.guideStepsFrame, "BOTTOMRIGHT", 0, 0)

            this.banner:ClearAllPoints()
            this.banner:SetPoint("TOPLEFT", this.header, "TOPLEFT")
            this.banner:SetPoint("BOTTOMRIGHT", this.header, "BOTTOMRIGHT")
            this.banner:Show()
            this.iconLogo:Show()
            this.classIcon:Show()
            this.settingsButton:Show()
            this.guideSelectButton:Show()
            this.closebutton:SetShown(addon.v2:GetTheme().version ~= 1)
            addon.ui.v2:SetFrameBottomShadowShown(this.upperFrame, not this.guideStepsFrame:IsShown())

            this:UpdateResizeBounds(this.guideStepsFrame:IsShown() and this.guideSteps.frame:IsShown(),
                                    this.snapshotEmpty)

            if this.snapshotEmpty then
                this.frame:SetHeight(this:GetShellHeight())
            elseif not this.guideStepsFrame:IsShown() then
                this.frame:SetHeight(this:GetShellHeight())
            end

            this:RefreshLayout()
        end,

        ["UpdateResizeBounds"] = function(this, hasRows, emptyGuide)
            local minimumHeight = this:GetCollapsedHeight()

            if emptyGuide or not hasRows then
                minimumHeight = max(minimumHeight, this:GetShellHeight())
            elseif hasRows then
                local guideStepsInset = this.frame:GetHeight() - this.guideSteps.frame:GetHeight()
                minimumHeight = max(minimumHeight, guideStepsInset + (this.guideSteps.minimumRowsHeight or 0) +
                                        this.guideSteps.scroll:GetContentTopPadding())
            end

            local minimumWidth = this:GetMinimumWidth()

            addon.SetResizeBounds(this.frame, minimumWidth, minimumHeight)

            if this.frame:GetWidth() < minimumWidth then this.frame:SetWidth(minimumWidth) end
        end,

        ["OnAcquire"] = function(this) this.frame:Show() end,

        ["OnRelease"] = function(this) this.frame:Hide() end,

        ["SetSnapshot"] = function(this, snapshot, scrollToActive)
            local guideStepsShown = this.guideSteps.frame:IsShown()
            local wasEmptyGuide = this.snapshotEmpty == true
            local emptyGuide = snapshot.empty
            local stepListShown = addon.settings:IsStepListShown()

            this.guideHeight = this.guideHeight or addon.settings.profile.v2GuideWindowExpandedHeight or
                                   guideWindowDefaultHeight

            if wasEmptyGuide and not snapshot.empty and stepListShown then
                addon.settings.profile.frameHeight = max(addon.settings.profile.frameHeight or 0, addon.height or 35)
            end

            this.guideSteps:SetRows(snapshot.rows, nil, scrollToActive)

            local rowsHeight = this.guideSteps.rowsHeight or 0
            local hasRows = not snapshot.empty and rowsHeight > 0
            local empty = not hasRows or not stepListShown

            this.snapshotEmpty = emptyGuide
            this:UpdateHeaderHeight()

            if emptyGuide then
                this.frame:SetHeight(this:GetShellHeight())
            elseif empty then
                this.frame:SetHeight(this:GetShellHeight())
            else
                this.frame:SetHeight(this.guideHeight)
            end

            this.title:SetText(snapshot.title)
            this.subtitle:SetText(snapshot.subtitle)
            this.guideStepsFrame:Show()
            this.guideSteps.frame:SetShown(not empty)
            this.footer:Show()
            this.sizer:Show()
            addon.ui.v2:SetFrameBottomShadowShown(this.upperFrame, false)

            if guideStepsShown ~= (not empty) then addon:SortTimers() end

            this:UpdateResizeBounds(not empty, emptyGuide)

            if not empty then
                this.guideSteps:UpdateScrollbar()
                if scrollToActive or not guideStepsShown then this.guideSteps:ScrollToActive() end
            end
        end,

        ["RefreshLayout"] = function(this)
            if this.guideSteps.rows then this.guideSteps:SetRows(this.guideSteps.rows) end
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = function(this)
            local theme = addon.v2:GetTheme()

            addon.ui.v2:ApplyFrameBackdrop(this.upperFrame, theme.edge, theme.version == 1 and
                                               theme.backgroundColors.common or theme.backgroundColors.guideWindow,
                                           theme.borderColors.commonEdge)
            addon.ui.v2:SetFrameBottomShadowShown(this.upperFrame, not this.guideStepsFrame:IsShown())

            addon.ui.v2:ApplyFrameBackdrop(this.guideStepsFrame, theme.edge, theme.backgroundColors.common,
                                           {0, 0, 0, 0})
            addon.ui.v2:HideFrameTopEdge(this.guideStepsFrame)

            this.title:SetFont(theme.font, addon.settings.profile.guideFontSize, "")
            this.title:SetTextColor(1, 0.82, 0)
            this.subtitle:SetFont(theme.font, addon.settings.profile.guideFontSize + 2, "")
            this.subtitle:SetTextColor(unpack(theme.textColor.common))
            this.footerText:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
            this.footerBackground:SetColorTexture(unpack(theme.version == 1 and theme.backgroundColors.common or
                                                             theme.backgroundColors.scrollbar))

            addon.ui.v2:ApplyFrameBackdrop(this.guideNameFrame, theme.edge, GetGuideWindowHeaderBackgroundColor(theme),
                                           {0, 0, 0, 0})

            this.closebutton:SetShown(theme.version ~= 1)
            this.classIcon:SetTexture(addon.GetV1Texture(addon.player.class))

            this.iconLogo:SetTexture(theme.guideWindow.logo)
            this.settingsButton:SetNormalTexture(theme.guideWindow.settingsIcon)
            this.settingsButton:SetPushedTexture(theme.guideWindow.settingsIcon)
            this.settingsButton:SetHighlightTexture(theme.guideWindow.settingsIcon, "ADD")
            this.guideSelectButton:SetNormalTexture(theme.guideWindow.guideSelectIcon)
            this.guideSelectButton:SetPushedTexture(theme.guideWindow.guideSelectIcon)
            this.guideSelectButton:SetHighlightTexture(theme.guideWindow.guideSelectIcon, "ADD")

            this.banner:SetTexture(theme.headerTexture.path)
            this.banner:SetTexCoord(unpack(theme.headerTexture.texCoords))

            this:UpdateFrameLayout()

            this.guideSteps:RefreshVisuals()
        end
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")

        frame:Hide()
        frame:SetMovable(true)
        frame:SetResizable(true)
        frame:EnableMouse(true)
        frame:SetFrameStrata("BACKGROUND")
        frame:SetFrameLevel(100)

        local theme = addon.v2:GetTheme()
        frame:SetToplevel(true)

        local upperFrame = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        upperFrame:SetPoint("TOPLEFT")
        upperFrame:SetPoint("TOPRIGHT")
        upperFrame:SetHeight(80)
        upperFrame:SetFrameLevel(frame:GetFrameLevel() + 1)
        addon.ui.v2:ApplyFrameBackdrop(upperFrame, theme.edge, theme.version == 1 and theme.backgroundColors.common or
                                           theme.backgroundColors.guideWindow, theme.borderColors.commonEdge)
        addon.ui.v2:AddFrameShadow(upperFrame, 0, 0, 0.5, 4)

        local header = CreateFrame("Frame", nil, upperFrame)
        header:SetFrameLevel(upperFrame:GetFrameLevel() + 1)
        header:EnableMouse(true)
        header:SetPoint("TOPLEFT", 1, -1)
        header:SetPoint("TOPRIGHT", -1, -1)
        header:SetHeight(78)

        local banner = header:CreateTexture(nil, "BACKGROUND")
        banner:SetPoint("TOPLEFT")
        banner:SetPoint("TOPRIGHT")
        banner:SetHeight(38)
        banner:SetTexture(theme.headerTexture.path)
        banner:SetTexCoord(unpack(theme.headerTexture.texCoords))

        local guideNameFrame = CreateFrame("Frame", nil, header)
        guideNameFrame:SetPoint("TOPLEFT", header, "TOPLEFT", 0, -38)
        guideNameFrame:SetPoint("BOTTOMRIGHT")
        guideNameFrame:SetFrameLevel(header:GetFrameLevel() + 1)
        guideNameFrame:EnableMouse(true)

        addon.ui.v2:ApplyFrameBackdrop(guideNameFrame, theme.edge, GetGuideWindowHeaderBackgroundColor(theme),
                                       {0, 0, 0, 0})

        local logoFrame = CreateFrame("Frame", nil, header)
        logoFrame:SetAllPoints(header)
        logoFrame:SetFrameLevel(guideNameFrame:GetFrameLevel() + 2)

        local iconLogo = logoFrame:CreateTexture(nil, "ARTWORK")
        iconLogo:SetPoint("LEFT", header, "LEFT", 6, 0)
        iconLogo:SetSize(30, 30)

        local classIcon = logoFrame:CreateTexture(nil, "OVERLAY")
        classIcon:SetPoint("BOTTOMRIGHT", iconLogo, "BOTTOMRIGHT", 2, 1)
        classIcon:SetSize(17, 17)
        classIcon:SetTexture(addon.GetV1Texture(addon.player.class))

        local settingsButton = CreateFrame("Button", nil, guideNameFrame)
        settingsButton:SetPoint("RIGHT", guideNameFrame, "RIGHT", -16, 0)
        settingsButton:SetSize(21, 21)

        iconLogo:SetTexture(theme.guideWindow.logo)
        settingsButton:SetNormalTexture(theme.guideWindow.settingsIcon)
        settingsButton:SetPushedTexture(theme.guideWindow.settingsIcon)
        settingsButton:SetHighlightTexture(theme.guideWindow.settingsIcon, "ADD")

        settingsButton.rxpTooltipText = L("Open Settings")
        settingsButton:SetScript("OnEnter", GuideWindowButton_OnEnter)
        settingsButton:SetScript("OnLeave", GuideWindowButton_OnLeave)
        settingsButton:SetScript("OnClick", function() addon.v2:ShowSettingsMenu() end)

        local guideSelectButton = CreateFrame("Button", nil, guideNameFrame)
        guideSelectButton:SetPoint("RIGHT", settingsButton, "LEFT", -7, 0)
        guideSelectButton:SetSize(21, 21)
        guideSelectButton:SetFrameLevel(guideNameFrame:GetFrameLevel() + 2)
        guideSelectButton:SetNormalTexture(theme.guideWindow.guideSelectIcon)
        guideSelectButton:SetPushedTexture(theme.guideWindow.guideSelectIcon)
        guideSelectButton:SetHighlightTexture(theme.guideWindow.guideSelectIcon, "ADD")
        guideSelectButton.rxpTooltipText = L("Browse Guides")
        guideSelectButton:SetScript("OnEnter", GuideWindowButton_OnEnter)
        guideSelectButton:SetScript("OnLeave", GuideWindowButton_OnLeave)
        guideSelectButton:SetScript("OnClick", function() addon.v2:ShowGuideSelectionMenu() end)

        local title = guideNameFrame:CreateFontString(nil, "OVERLAY")
        title:SetPoint("TOPLEFT", guideNameFrame, "TOPLEFT", 40, -9)
        title:SetPoint("TOPRIGHT", guideSelectButton, "TOPLEFT", -4, -9)
        title:SetJustifyH("LEFT")
        title:SetFont(theme.font, addon.settings.profile.guideFontSize, "")
        title:SetTextColor(1, 0.82, 0)

        local subtitle = guideNameFrame:CreateFontString(nil, "OVERLAY")
        subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -2)
        subtitle:SetPoint("TOPRIGHT", title, "BOTTOMRIGHT", 0, -2)
        subtitle:SetJustifyH("LEFT")
        subtitle:SetFont(theme.font, addon.settings.profile.guideFontSize + 2, "")
        subtitle:SetTextColor(unpack(theme.textColor.common))

        local closebutton = CreateFrame("Button", nil, upperFrame)
        closebutton:SetFrameStrata("LOW")
        closebutton:SetFrameLevel(120)
        closebutton:SetPoint("TOPRIGHT", upperFrame.rxpShadow, "TOPRIGHT", 8, 4)
        closebutton:SetSize(24, 24)
        closebutton:SetNormalTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetPushedTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetHighlightTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close", "ADD")
        closebutton:RegisterForClicks("LeftButtonUp")
        closebutton:SetShown(theme.version ~= 1)

        local guideStepsFrame = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        guideStepsFrame:SetFrameLevel(frame:GetFrameLevel())
        addon.ui.v2:ApplyFrameBackdrop(guideStepsFrame, theme.edge, theme.backgroundColors.common, {0, 0, 0, 0})
        addon.ui.v2:AddFrameShadow(guideStepsFrame, 0, 0, 0.5, 4)
        addon.ui.v2:HideFrameTopEdge(guideStepsFrame)

        local footer = CreateFrame("Frame", nil, guideStepsFrame)
        footer:SetPoint("BOTTOMLEFT", guideStepsFrame, "BOTTOMLEFT", 0, 0)
        footer:SetPoint("BOTTOMRIGHT", guideStepsFrame, "BOTTOMRIGHT", 0, 0)
        footer:SetHeight(16)
        footer:SetFrameLevel(guideStepsFrame:GetFrameLevel() + 1)

        local footerBackground = footer:CreateTexture(nil, "BACKGROUND")
        footerBackground:SetAllPoints()
        footerBackground:SetColorTexture(unpack(theme.version == 1 and theme.backgroundColors.common or
                                                    theme.backgroundColors.scrollbar))

        local footerText = footer:CreateFontString(nil, "OVERLAY")
        footerText:SetPoint("CENTER")
        footerText:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
        footerText:SetTextColor(0.65, 0.65, 0.7)
        footerText:SetText("RestedXP Guides " .. (addon.release or ""))

        local sizer = CreateFrame("Button", nil, guideStepsFrame)
        sizer:SetFrameLevel(footer:GetFrameLevel() + 2)
        sizer:SetPoint("BOTTOMRIGHT", guideStepsFrame, "BOTTOMRIGHT", 0, 0)
        sizer:SetSize(12, 12)
        sizer:SetNormalTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
        sizer:SetHighlightTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight", "ADD")
        sizer:EnableMouse(true)

        local guideSteps = AceGUI:Create("RXPV2GuideSteps")
        guideSteps.frame:SetParent(guideStepsFrame)

        local widget = {
            frame = frame,
            upperFrame = upperFrame,
            header = header,
            banner = banner,
            closebutton = closebutton,
            iconLogo = iconLogo,
            classIcon = classIcon,
            settingsButton = settingsButton,
            title = title,
            subtitle = subtitle,
            footer = footer,
            footerBackground = footerBackground,
            footerText = footerText,
            guideNameFrame = guideNameFrame,
            guideSelectButton = guideSelectButton,
            sizer = sizer,
            guideSteps = guideSteps,
            guideStepsFrame = guideStepsFrame,
            type = Type
        }

        for method, func in pairs(methods) do widget[method] = func end

        widget:UpdateTheme({})
        frame:SetHeight(widget:GetShellHeight())
        guideSteps.frame:Hide()

        guideNameFrame:SetScript("OnMouseDown", function(_, button)
            if button == "LeftButton" and not addon.settings.profile.lockFrames then frame:StartMoving() end
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
            if button == "LeftButton" and not addon.settings.profile.lockFrames then frame:StartMoving() end
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
        if addon.v2:IsGuideWindowEnabled() and not addon.settings.profile.hideGuideWindow then frame:Show() end
    end)

    addon.RXPFrame:HookScript("OnHide", function() if addon.v2:IsGuideWindowEnabled() then frame:Hide() end end)

    local profile = addon.settings.profile
    local positions = profile.framePositions

    if positions and positions.RXPV2GuideWindow then
        addon.settings:LoadFramePosition("RXPV2GuideWindow", frame)
        frame:SetWidth(max(frame:GetWidth(), guideWindowDefaultWidth))
    else
        frame:SetSize(guideWindowDefaultWidth, window:GetShellHeight())
        frame:ClearAllPoints()
        frame:SetPoint("LEFT", UIParent, "LEFT", 0, 35)
    end

    frame:SetScale(profile.windowScale)

    if not profile.v2GuideWindowExpandedHeight and frame:GetHeight() > window:GetCollapsedHeight() then
        profile.v2GuideWindowExpandedHeight = frame:GetHeight()
    end

    window.guideHeight = profile.v2GuideWindowExpandedHeight or guideWindowDefaultHeight
    frame:SetHeight(window:GetShellHeight())

    return window
end

function addon.v2:GetGuideWindowAnchorFrame()
    if not self:IsGuideWindowEnabled() then return end

    local window = self.state and self.state.guideWindow

    return window and window.frame
end

function addon.v2:UpdateGuideWindow(scrollToActive)
    if not self:IsGuideWindowEnabled() then return end

    local window = self:GetGuideWindow()
    if not window then return end

    window:SetSnapshot(self:BuildGuideStepsSnapshot(), scrollToActive)

    window.frame:SetShown(not addon.settings.profile.hideGuideWindow and addon.settings.profile.showEnabled ~= false)
end

function addon.v2:DisableLegacyGuideWindow()
    local legacy = addon.RXPFrame
    local frames = {
        legacy.BottomFrame, legacy.GuideName, legacy.Footer, legacy.CurrentStepFrame, legacy.ScrollFrame,
        legacy.ScrollChild
    }

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
            scrollbar:HookScript("OnShow", function(this)
                if addon.v2:IsGuideWindowEnabled() then this:Hide() end
            end)

            scrollbar.rxpV2HideHook = true
        end

        scrollbar:Hide()
        scrollbar:EnableMouse(false)

        if scrollbar.ScrollUpButton then scrollbar.ScrollUpButton:Hide() end
        if scrollbar.ScrollDownButton then scrollbar.ScrollDownButton:Hide() end
    end
end

function addon.ui.v2:RegisterRXPV2ScrollFrame()
    --[[-----------------------------------------------------------------------------
    ScrollFrame Container
    Plain container that scrolls its content and doesn't grow in height.
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ScrollFrame", 19
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

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
            this.contentTopPadding = 0
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
            this.contentTopPadding = 0

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
            this.content:SetPoint("TOPLEFT", 2, offset - this.contentTopPadding)
            this.content:SetPoint("TOPRIGHT", -2, offset - this.contentTopPadding)

            status.offset = offset
            status.scrollvalue = value
        end,

        ["ScrollToOffset"] = function(this, offset)
            local value
            local scrollable = this.content:GetHeight() - this.scrollframe:GetHeight()

            if scrollable > 0 then
                value = min(max(offset, 0), scrollable) / scrollable * 1000
            else
                value = 0
            end

            this.scrollbar:SetValue(value)
            this:SetScroll(value)
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

            if viewheight < height + 2 then
                if this.scrollBarShown then
                    this.scrollBarShown = nil
                    this.scrollbar:Hide()
                    this.scrollbar:SetValue(0)
                    this.scrollframe:SetPoint("BOTTOMRIGHT")

                    if this.content.original_width then
                        this.content.width = max(this.content.original_width - 4, 0)
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
                    this.content:SetPoint("TOPLEFT", 2, offset - this.contentTopPadding)
                    this.content:SetPoint("TOPRIGHT", -2, offset - this.contentTopPadding)
                    status.offset = offset
                end
            end

            this.updateLock = nil
        end,

        ["LayoutFinished"] = function(this, width, height)
            this.content:SetHeight((height or 0) + this.contentTopPadding)

            -- update the scrollframe
            this:FixScroll()

            -- schedule another update when everything has "settled"
            this.scrollframe:SetScript("OnUpdate", FixScrollOnUpdate)
        end,

        ["RefreshVisuals"] = function(this)
            local theme = addon.v2:GetTheme()

            if theme.version == 1 then
                this.scrollbg:SetColorTexture(unpack(theme.backgroundColors.common))
                this.scrollbar.ThumbTexture:SetDesaturated(true)
                this.scrollbar.ThumbTexture:SetVertexColor(unpack(theme.backgroundColors.common))

                for _, button in ipairs({this.scrollbar.ScrollUpButton, this.scrollbar.ScrollDownButton}) do
                    button.Normal:SetDesaturated(true)
                    button.Normal:SetVertexColor(unpack(theme.backgroundColors.common))
                end
            else
                this.scrollbg:SetColorTexture(unpack(theme.backgroundColors.scrollbar))
                this.scrollbar.ThumbTexture:SetDesaturated(false)
                this.scrollbar.ThumbTexture:SetVertexColor(1, 1, 1, 1)

                for _, button in ipairs({this.scrollbar.ScrollUpButton, this.scrollbar.ScrollDownButton}) do
                    button.Normal:SetDesaturated(false)
                    button.Normal:SetVertexColor(1, 1, 1, 1)
                end
            end
        end,

        ["UpdateTheme"] = updateTheme,

        ["GetContentTopPadding"] = function(this) return this.contentTopPadding end,

        ["SetContentTopPadding"] = function(this, padding)
            this.contentTopPadding = padding or 0

            this:SetScroll((this.status or this.localstatus).scrollvalue or 0)
        end,

        ["SetStatusTable"] = function(this, status)
            assert(type(status) == "table")

            this.status = status
            if not status.scrollvalue then status.scrollvalue = 0 end
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content

            content.width = max(width - 4 - (this.scrollBarShown and 20 or 0), 0)
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
        scrollbar:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 2, -buttonHeight - 1)
        scrollbar:SetPoint("BOTTOMLEFT", scrollframe, "BOTTOMRIGHT", 2, buttonHeight + 1)
        scrollbar:SetMinMaxValues(0, 1000)
        scrollbar:SetValueStep(1)
        scrollbar:SetValue(0)
        scrollbar:SetWidth(16)
        scrollbar:Hide()

        -- set the script as the last step, so it doesn't fire yet
        scrollbar:SetScript("OnValueChanged", ScrollBar_OnScrollValueChanged)

        local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND")
        scrollbg:SetAllPoints(scrollbar)

        -- Container Support
        local content = CreateFrame("Frame", nil, scrollframe)
        content:SetPoint("TOPLEFT", 2, 0)
        content:SetPoint("TOPRIGHT", -2, 0)
        content:SetHeight(400)
        scrollframe:SetScrollChild(content)

        local widget = {
            contentTopPadding = 0,
            localstatus = {scrollvalue = 0},
            scrollframe = scrollframe,
            scrollbar = scrollbar,
            scrollbg = scrollbg,
            content = content,
            frame = frame,
            type = Type
        }

        for method, func in pairs(methods) do widget[method] = func end

        scrollframe.obj, scrollbar.obj = widget, widget

        widget:RefreshVisuals()

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
        local frame = CreateFrame("Frame", nil, addon.RXPFrame or UIParent)
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(false)
        frame:SetResizable(false)
        frame:SetToplevel(true)

        -- Keep Active Steps above every guide-header decoration, even after the
        -- movable guide window receives focus and raises within BACKGROUND.
        frame:SetFrameStrata("LOW")
        frame:SetFrameLevel(100)

        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame)
        content:SetPoint("TOPLEFT", 0, -8)
        content:SetPoint("BOTTOMRIGHT", 0, 8)

        local widget = {content = content, frame = frame, type = Type}

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActivePartyStepsFrame()
    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ActivePartyStepsFrame", 11
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local tabHeight, activeTabHeight = 22, 24

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

    local function MoverSizer_OnMouseUp(mover) SaveFrameStatus(mover:GetParent()) end

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
        if tab.rxpHighlight then tab.rxpHighlight:Show() end

        if not (tab.rxpTruncated and tab.rxpFullName) then return end

        _G.GameTooltip:SetOwner(tab, "ANCHOR_TOP")
        _G.GameTooltip:SetText(tab.rxpFullName)
        _G.GameTooltip:Show()
    end

    local function Tab_OnLeave(tab)
        if tab.rxpHighlight then tab.rxpHighlight:Hide() end
        if _G.GameTooltip:IsOwned(tab) then _G.GameTooltip:Hide() end
    end

    local function RemoveLastUTF8Codepoint(text)
        local index = #text
        local byte

        while index > 0 do
            byte = strbyte(text, index)
            if byte < 0x80 or byte > 0xBF then return strsub(text, 1, index - 1) end

            index = index - 1
        end

        return ""
    end

    local function FitTabText(fontString, text, width)
        local label = text or ""
        local availableWidth = max(width or 0, 0)

        fontString:SetText(label)

        if fontString:GetStringWidth() <= availableWidth then return false end

        while #label > 1 do
            label = RemoveLastUTF8Codepoint(label)

            fontString:SetText(label .. "...")

            if fontString:GetStringWidth() <= availableWidth then return true end
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

                if tab.rxpHighlight then tab.rxpHighlight:Hide() end

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

            for _, child in pairs(this.playerContainers or {}) do child:SetWidth(contentwidth) end
        end,

        ["GetWidth"] = function(this) return this.frame:GetWidth() end,

        ["GetHeight"] = function(this) return this.frame:GetHeight() end,

        ["SetSize"] = function(this, width, height)
            this:SetWidth(width)
            this:SetHeight(height)
        end,

        ["SetScale"] = function(this, scale) this.frame:SetScale(scale) end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local contentheight = height - 5 - 14

            if contentheight < 0 then contentheight = 0 end

            content:SetHeight(contentheight)
            content.height = contentheight

            for _, child in pairs(this.playerContainers or {}) do child:SetHeight(contentheight) end
        end,

        ["SetPlayerContainer"] = function(this, player, childContainer)
            this.playerContainers[player] = childContainer

            childContainer.frame:ClearAllPoints()
            childContainer.frame:SetPoint("TOPLEFT", this.content, "TOPLEFT", 0, 0)
            childContainer.frame:SetPoint("BOTTOMRIGHT", this.content, "BOTTOMRIGHT", 0, 0)
            -- Keep the protruding 9px Step badge inside the scroll frame's clip region.
            childContainer:SetContentTopPadding(10)
            childContainer:SetWidth(this.content.width or this.content:GetWidth())
            childContainer:SetHeight(this.content.height or this.content:GetHeight())
            childContainer.frame:SetShown(this.activeTab == player)
        end,

        ["RemovePlayerContainer"] = function(this, player) this.playerContainers[player] = nil end,

        ["RefreshTabTheme"] = function(this, tab, active)
            local theme = addon.v2:GetTheme()
            local backgroundColors = theme.backgroundColors
            local borderColors = theme.borderColors
            local textColor = theme.textColor
            local background = backgroundColors.common
            local border = borderColors.commonEdge
            local labelColor = active and textColor.title or textColor.inactivePartyTab

            addon.ui.v2:ApplyFrameBackdrop(tab, theme.edge, background, border)
            tab.rxpBorder.textures[1]:Show()
            tab.rxpBorder.textures[2]:Hide()

            if not tab.rxpHighlight then
                tab.rxpHighlight = tab.rxpBackground:CreateTexture(nil, "OVERLAY")
                tab.rxpHighlight:SetAllPoints()
                tab.rxpHighlight:SetColorTexture(1, 1, 1, 0.12)
                tab.rxpHighlight:Hide()
            end

            tab.text:SetTextColor(unpack(labelColor))
        end,

        ["SetActiveTab"] = function(this, player)
            this.activeTab = player

            for tabPlayer, tab in pairs(this.tabButtons or {}) do
                tab:SetHeight(tabPlayer == player and activeTabHeight or tabHeight)
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
            local targetHeight = contentHeight + 5 + 14

            this:SetHeight(max(targetHeight, 105))
        end,

        ["SetTabs"] = function(this, players, activePlayer)
            local previousTab
            local tab, player
            local usedTabs = {}
            local tabCount = #players
            local frameWidth = this.frame:GetWidth() or 0
            local minWidth = tabCount > 4 and 24 or 58

            local availableWidth = frameWidth - 18 - 42 - (3 * max(tabCount - 1, 0))
            local tabWidth = 92
            local labelWidth
            local theme = addon.v2:GetTheme()
            local tabFont = theme.font
            local tabFontSize = 12

            if tabCount > 0 and availableWidth > 0 then
                tabWidth = min(92, floor(availableWidth / tabCount))
                tabWidth = max(tabWidth, minWidth)
            end

            for playerIndex = 1, #players do
                player = players[playerIndex]
                tab = this.tabButtons[player]

                if not tab then tab = table.remove(this.unusedTabButtons) end

                if not tab then
                    tab = CreateFrame("Button", nil, this.frame, BackdropTemplateMixin and "BackdropTemplate")

                    tab:SetFrameLevel(this.frame:GetFrameLevel() + 2)
                    tab:EnableMouse(true)
                    tab:RegisterForClicks("LeftButtonUp", "RightButtonUp")
                    tab:SetScript("OnClick", Tab_OnClick)
                    tab:SetScript("OnMouseDown", Tab_OnMouseDown)
                    tab:SetScript("OnMouseUp", MoverSizer_OnMouseUp)
                    tab:SetScript("OnEnter", Tab_OnEnter)
                    tab:SetScript("OnLeave", Tab_OnLeave)

                    tab.text = tab:CreateFontString(nil, "OVERLAY")
                    tab.text:SetPoint("CENTER", tab, 0, -1)
                    tab.text:SetJustifyH("CENTER")
                    tab.text:SetJustifyV("MIDDLE")

                    if tab.text.SetWordWrap then tab.text:SetWordWrap(false) end
                    if tab.text.SetNonSpaceWrap then tab.text:SetNonSpaceWrap(false) end
                end

                this.tabButtons[player] = tab

                tab.rxpPlayer = player
                tab.rxpFullName = player

                labelWidth = max(tabWidth - 16, 1)

                if tab.rxpLabel ~= player or tab.rxpLabelWidth ~= labelWidth or tab.rxpTabFont ~= tabFont or
                    tab.rxpTabFontSize ~= tabFontSize then

                    tab.text:SetFontObject(_G.GameFontNormalSmall)
                    tab.text:SetFont(tabFont, tabFontSize, "")
                    tab.text:SetWidth(labelWidth)
                    tab.rxpTruncated = FitTabText(tab.text, player, labelWidth)

                    tab.rxpLabel = player
                    tab.rxpLabelWidth = labelWidth
                    tab.rxpTabFont = tabFont
                    tab.rxpTabFontSize = tabFontSize
                end

                tab:SetSize(tabWidth, player == activePlayer and activeTabHeight or tabHeight)
                tab:ClearAllPoints()

                if previousTab then
                    tab:SetPoint("TOPLEFT", previousTab, "TOPRIGHT", 3, 0)
                else
                    tab:SetPoint("TOPLEFT", this.frame, "TOPLEFT", 18, tabHeight)
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

                    if tab.rxpHighlight then tab.rxpHighlight:Hide() end

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

        self:ApplyFrameBackdrop(frame, theme.edge, theme.backgroundColors.common, theme.borderColors.commonEdge)
        self:AddFrameShadow(frame, 0, 0, 0.5, 4)

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
        closebutton:SetFrameLevel(frame:GetFrameLevel() + 20)
        closebutton:SetSize(24, 24)
        closebutton:SetPoint("TOPRIGHT", frame.rxpShadow, "TOPRIGHT", 10, 10)
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
        footerBackground:SetColorTexture(unpack(theme.version == 1 and theme.backgroundColors.common or
                                                    theme.backgroundColors.scrollbar))

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
    local Type, Version = "RXPV2ActiveStepItem", 7
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local transparent = {0, 0, 0, 0}
    local updateElementCheckbox

    local function releaseElementRow(row)
        addon.ReleaseActiveStepElement(row)

        if _G.GameTooltip:GetOwner() == row then _G.GameTooltip:Hide() end

        row.text:SetText("")
        row.rxpQuestLink = nil
        row.hoverFrame:Hide()
        row.element = nil
        row.button:SetChecked(false)
        row.button.rxpHovered = nil

        updateElementCheckbox(row.button)

        if _G.GameTooltip:GetOwner() == row.button.rxpHoverFrame then _G.GameTooltip:Hide() end

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
                textLeft = hasButton and (checkboxLeft + checkboxSize + textGap) or 17
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

            rowHeight = max(16, abs(textTop) + math.ceil(textHeight * 1.05) + 1)

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

        this:SetHeight(height + 22)
        this.rxpElementsDirty = nil
        this.rxpLayoutWidth = width
    end

    updateElementCheckbox = function(button, force)
        local theme = addon.v2:GetTheme()
        local checked = not not button:GetChecked()
        local hovered = not not button.rxpHovered

        if not force and button.rxpChecked == checked and button.rxpHoverState == hovered and button.rxpCheckboxTheme ==
            theme then return end

        button.rxpChecked = checked
        button.rxpHoverState = hovered
        button.rxpCheckboxTheme = theme

        local background = not hovered and checked and theme.backgroundColors.activeStepCheckboxChecked or
                               theme.backgroundColors.activeStepCheckbox

        local border = not hovered and checked and theme.borderColors.activeStepCheckboxChecked or
                           theme.borderColors.commonEdge

        addon.ui.v2:ApplyFrameBackdrop(button, theme.edge, background, border)

        button.rxpBackground:SetShown(not hovered)
        button.rxpBorder:SetShown(not hovered)
        button.rxpCheckShort:SetShown(checked and not hovered)
        button.rxpCheckLong:SetShown(checked and not hovered)

        addon.ui.v2:ApplyFrameBackdrop(button.rxpHoverFrame, theme.edge, transparent, theme.borderColors.commonEdge)

        button.rxpHoverFrame:SetShown(hovered)
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

        if not button:IsForbidden() and not _G.GameTooltip:IsForbidden() then _G.GameTooltip:Hide() end
    end

    local function elementTextOnHyperlinkClick(_, link, text, button) _G.SetItemRef(link, text, button) end

    local function elementTextOnHyperlinkEnter(row, link)
        if row:IsForbidden() or _G.GameTooltip:IsForbidden() then return end

        _G.GameTooltip:SetOwner(row, "ANCHOR_CURSOR")
        _G.GameTooltip:SetHyperlink(link)
    end

    local function elementTextOnHyperlinkLeave(row)
        if not row:IsForbidden() and not _G.GameTooltip:IsForbidden() and _G.GameTooltip:GetOwner() == row then
            _G.GameTooltip:Hide()
        end
    end

    local function elementRowOnEnter(hoverFrame)
        local row = hoverFrame.row

        if row.rxpQuestLink then elementTextOnHyperlinkEnter(row, row.rxpQuestLink) end
    end

    local function elementRowOnLeave(hoverFrame)
        local row = hoverFrame.row

        if row.rxpQuestLink then elementTextOnHyperlinkLeave(row) end
    end

    local function elementRowOnClick(hoverFrame, button)
        local row = hoverFrame.row

        if row.rxpQuestLink then elementTextOnHyperlinkClick(row, row.rxpQuestLink, row.text:GetText(), button) end
    end

    local function updateElementRowText(row, element, resetPending)
        row.rxpQuestLink = nil

        if element.text and element.text ~= " " then
            local questAction

            if addon.settings.profile.activeStepsV2RenderQuestName then
                questAction = element.tag == "accept" and _G.ACCEPT or element.tag == "turnin" and _G.TURN_IN_QUEST
            end

            local hasQuestData = questAction and addon.EnsureQuestData(element.questId)

            if questAction and element.title and element.title ~= "" and hasQuestData then
                row.rxpQuestLink = format("quest:%d", element.questId)
                row.text:SetText(
                    format("%s |cffffff00|Hquest:%d|h[%s]|h|r", questAction, element.questId, element.title))
            else
                row.text:SetText(addon.ReplaceNpcIds(L(element.text)))
            end
        elseif element.tooltipText and element.tooltipText ~= "" then
            local text = element.tooltipText
            local icon = element.icon or addon.icons[element.tag]

            if icon and text:sub(1, #icon) == icon then text = text:sub(#icon + 1) end

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

        local button = CreateFrame("CheckButton", nil, row, BackdropTemplateMixin and "BackdropTemplate")

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

        local checkboxHoverFrame = CreateFrame("Frame", nil, button)
        checkboxHoverFrame:SetSize(checkboxSize, checkboxSize)
        checkboxHoverFrame:SetPoint("CENTER", button, "CENTER")
        checkboxHoverFrame:SetFrameLevel(button:GetFrameLevel() + 2)
        checkboxHoverFrame:EnableMouse(false)
        button.rxpHoverFrame = checkboxHoverFrame

        local skipIcon = checkboxHoverFrame:CreateTexture(nil, "OVERLAY")
        local hoverIconInset = 2
        skipIcon:SetPoint("TOPLEFT", checkboxHoverFrame, "TOPLEFT", hoverIconInset, -hoverIconInset)
        skipIcon:SetPoint("BOTTOMRIGHT", checkboxHoverFrame, "BOTTOMRIGHT", -hoverIconInset, hoverIconInset)
        skipIcon:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-skip-step-hover")

        updateElementCheckbox(button)
        button:SetScript("OnEnter", elementCheckboxOnEnter)
        button:SetScript("OnLeave", elementCheckboxOnLeave)
        button:SetScript("PostClick", addon.ActiveStepElementPostClick)
        button:HookScript("PostClick", updateElementCheckbox)
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

        local rowHoverFrame = CreateFrame("Button", nil, row)
        rowHoverFrame.row = row
        rowHoverFrame:SetFrameLevel(row:GetFrameLevel() + 3)
        rowHoverFrame:EnableMouse(true)
        rowHoverFrame:SetScript("OnEnter", elementRowOnEnter)
        rowHoverFrame:SetScript("OnLeave", elementRowOnLeave)
        rowHoverFrame:SetScript("OnClick", elementRowOnClick)
        rowHoverFrame:Hide()
        row.hoverFrame = rowHoverFrame

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
                this.title:SetSize(10, 16)
            else
                this.titletext:SetAlpha(1)
                this.title:SetAlpha(1)
                this.titletext:SetText(title)
                this.title:SetSize(this.titletext:GetStringWidth() + 10, 16)
            end
        end,

        ["SetScale"] = function(this, scale) this.frame:SetScale(scale) end,

        ["SetElements"] = function(this, step, watchOnly)
            local rows = this.elementRows
            local previousCount = this.activeElementRows or 0
            local row, element, previousElement, previousStep, rowStep

            local theme, textColor
            if not watchOnly then
                theme = addon.v2:GetTheme()

                textColor = theme.textColor.common
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
                        row.text:SetFont(theme.font, addon.settings.profile.guideFontSize, "")

                        if element.tag and (element.text or element.rawtext or element.tooltipText) then
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

            for rowIndex = visibleCount + 1, previousCount do releaseElementRow(rows[rowIndex]) end

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

                row.button:SetChecked(element.completed or element.skip or element.textOnly)

                updateElementCheckbox(row.button)
                updateElementRowText(row, element, row.rxpResetPending)

                row.rxpResetPending = nil
            end

            if layout ~= false then
                this.rxpElementsDirty = true
                layoutElements(this)
            end
        end,

        ["LayoutElements"] = function(this) layoutElements(this) end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end

            this:SetHeight((height or 0) + 22)
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
            local contentheight = height - 22

            if contentheight < 0 then contentheight = 0 end

            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = function(this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()

            addon.ui.v2:ApplyFrameBackdrop(this.card, theme.edge, theme.backgroundColors.common,
                                           theme.borderColors.commonEdge)
            addon.ui.v2:ApplyFrameBackdrop(this.title, theme.edge, theme.backgroundColors.common,
                                           theme.borderColors.commonEdge)
            this.titletext:SetTextColor(unpack(theme.textColor.title))

            local textColor = theme.textColor.common
            local row

            for rowIndex = 1, this.activeElementRows or 0 do
                row = this.elementRows[rowIndex]

                row.text:SetTextColor(unpack(textColor))
                row.text:SetFont(theme.font, addon.settings.profile.guideFontSize, "")

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

        local card = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        card:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
        card:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 8)
        addon.ui.v2:ApplyFrameBackdrop(card, theme.edge, theme.backgroundColors.common, theme.borderColors.commonEdge)
        addon.ui.v2:AddFrameShadow(card)

        local title = CreateFrame("Frame", nil, card, BackdropTemplateMixin and "BackdropTemplate")
        title:SetFrameLevel(card:GetFrameLevel() + 2)
        title:SetPoint("TOPLEFT", card, "TOPLEFT", 6, 9)
        title:ClearBackdrop()
        addon.ui.v2:ApplyFrameBackdrop(title, theme.edge, theme.backgroundColors.common, theme.borderColors.commonEdge)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 0, 0)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(theme.textColor.title))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")

        -- Container Support
        local content = CreateFrame("Frame", nil, card)
        content:SetPoint("TOPLEFT", 4, -10)
        content:SetPoint("BOTTOMRIGHT", -6, 4)

        local widget = {
            card = card,
            title = title,
            titletext = titletext,
            content = content,
            frame = frame,
            type = Type
        }

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActivePartyStepItem()
    local Type, Version = "RXPV2ActivePartyStepItem", 5
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

        ["OnRelease"] = function(this) this.stepTextLabel = nil end,

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

        ["SetScale"] = function(this, scale) this.frame:SetScale(scale) end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end

            this:SetHeight((height or 0) + 29)
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
            local contentheight = height - 29

            if contentheight < 0 then contentheight = 0 end

            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = function(this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()

            addon.ui.v2:ApplyFrameBackdrop(this.card, theme.edge, theme.backgroundColors.common,
                                           theme.borderColors.commonEdge)
            addon.ui.v2:ApplyFrameBackdrop(this.title, theme.edge, theme.backgroundColors.common,
                                           theme.borderColors.commonEdge)
            this.titletext:SetTextColor(unpack(theme.textColor.title))
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")

        local theme = addon.v2:GetTheme()

        local card = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        card:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
        card:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 14)

        addon.ui.v2:ApplyFrameBackdrop(card, theme.edge, theme.backgroundColors.common, theme.borderColors.commonEdge)
        addon.ui.v2:AddFrameShadow(card)

        local title = CreateFrame("Frame", nil, card, BackdropTemplateMixin and "BackdropTemplate")
        title:SetFrameLevel(card:GetFrameLevel() + 2)
        title:SetPoint("TOPLEFT", card, "TOPLEFT", 6, 9)
        title:ClearBackdrop()

        addon.ui.v2:ApplyFrameBackdrop(title, theme.edge, theme.backgroundColors.common, theme.borderColors.commonEdge)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 0, 0)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(theme.textColor.title))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")

        -- Container Support
        local content = CreateFrame("Frame", nil, card)
        content:SetPoint("TOPLEFT", 8, -10)
        content:SetPoint("BOTTOMRIGHT", -8, 5)

        local widget = {
            card = card,
            title = title,
            titletext = titletext,
            content = content,
            frame = frame,
            type = Type
        }

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end
