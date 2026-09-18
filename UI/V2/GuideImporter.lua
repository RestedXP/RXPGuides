local addonName, addon = ...

local AceGUI = LibStub("AceGUI-3.0")
local pairs, assert, type = pairs, assert, type
local wipe = table.wipe
local fmt, tinsert, GetTime = string.format, table.insert, GetTime
local _G = _G
local strbuffer = {}
local importerBaseHeight = 298
local maxHistoryEntries = 6
local maxHistoryHeight = 72

addon.guideImporter = addon.guideImporter or {}

function addon.ui.v2:InitializeGuideImporter()
    self:RegisterRXPV2Popup()
    self:RegisterRXPV2GuideImporter()
    self:RegisterRXPV2GuideImporterEditBox()
    self:RegisterRXPV2GuideImporterButton()
end

local function getTheme()
    local theme = addon.v2.themes[addon.settings.profile.activeTheme]
    if addon.v2:IsGuideWindowEnabled() then theme = addon.v2:GetTheme() end

    return theme or addon.v2.themes["RXP Blue V2"]
end

local function applyTheme(frame, ...)
    local theme = getTheme()
    local backgroundColor = theme.version == 1 and theme.backgroundColors.common or
                            theme.backgroundColors.guideWindow
    local textColor = theme.textColor.common
    if not addon.v2:IsGuideWindowEnabled() then
        local legacyTheme = addon.themes[addon.settings.profile.activeTheme]
        if legacyTheme then textColor = legacyTheme.textColor end
    end

    addon.ui.v2:ApplyFrameBackdrop(frame, theme.edge, backgroundColor,
                                    theme.borderColors.commonEdge)
    frame.rxpBackground:Hide()

    if not frame.importerBackground then
        frame.importerBackground = frame:CreateTexture(nil, "BACKGROUND")
        frame.importerBackground:SetAllPoints()
    end
    frame.importerBackground:SetColorTexture(unpack(backgroundColor))

    local text, _, size, flags
    for index = 1, select("#", ...) do
        text = select(index, ...)
        _, size, flags = text:GetFont()
        text:SetFont(theme.font, size, flags)
        text:SetTextColor(unpack(textColor))
    end

    return theme, textColor
end

local function applyWindowTheme(frame, ...)
    local theme, textColor = applyTheme(frame, ...)

    local body = frame.importerBody
    if not body then
        body = frame:CreateTexture(nil, "BACKGROUND", nil, 1)
        body:SetPoint("TOPLEFT", frame, "TOPLEFT", 1, -18)
        body:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -1, -18)
        body:SetPoint("BOTTOM", frame, "BOTTOM", 0, 1)
        frame.importerBody = body
    end
    body:SetColorTexture(unpack(theme.backgroundColors.common))
    body:SetAlpha(1)

    local header = frame.importerHeader
    if not header then
        header = frame:CreateTexture(nil, "BACKGROUND", nil, 1)
        header:SetPoint("TOPLEFT", frame, "TOPLEFT", 1, -1)
        header:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -1, -1)
        header:SetHeight(18)
        frame.importerHeader = header
    end
    header:SetColorTexture(unpack(theme.version == 1 and theme.backgroundColors.common or
                                      theme.backgroundColors.guideName))
    header:SetAlpha(0.5)

    return theme, textColor
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

local function updateImporterTheme(this)
    local widgets = addon.guideImporter.widgets
    if not widgets.importButton then return end

    local theme, textColor = applyWindowTheme(this.frame, this.title, this.description)
    local fieldBackground = theme.version == 1 and theme.backgroundColors.inactivePartyTab or
                            theme.backgroundColors.scrollbar

    this.title:SetFont(theme.font, 10, "")
    this.title:SetTextColor(unpack(theme.textColor.title))

    widgets.importLabel:SetFont(theme.font, 8, "")
    widgets.importLabel:SetTextColor(unpack(theme.textColor.title))
    widgets.importBox:GetEditBox():SetFont(theme.font, 9, "")
    widgets.importBox:GetEditBox():SetTextColor(unpack(textColor))
    addon.ui.v2:ApplyFrameBackdrop(widgets.importBox.background, theme.edge,
                                    fieldBackground,
                                    theme.borderColors.commonEdge)

    for _, button in ipairs({widgets.importButton, widgets.importSplicedString, widgets.purgeButton,
                             widgets.reloadButton, widgets.deleteButton}) do
        addon.ui.v2:ApplyFrameBackdrop(button.frame, theme.edge,
                                       theme.backgroundColors.inactivePartyTab,
                                       theme.borderColors.commonEdge)
        button.text:SetFont(theme.font, 9, "")
        button.text:SetTextColor(unpack(textColor))
        button:SetDisabled(button.disabled)
    end

    widgets.guidesLabel:SetFont(theme.font, 8, "")
    widgets.guidesLabel:SetTextColor(unpack(textColor))
    widgets.currentGuides.text:SetFont(theme.font, 9, "")
    widgets.currentGuides.text:SetTextColor(unpack(textColor))
    addon.ui.v2:ApplyFrameBackdrop(widgets.currentGuides.frame, theme.edge,
                                    fieldBackground,
                                    theme.borderColors.commonEdge)
    addon.ui.v2:ApplyDropdownTheme(widgets.currentGuides, theme)

    widgets.progressLabel:SetFont(theme.font, 8, "")
    widgets.progressLabel:SetTextColor(unpack(textColor))
    addon.ui.v2:ApplyFrameBackdrop(widgets.progress, theme.edge,
                                    fieldBackground,
                                    theme.borderColors.commonEdge)
    widgets.progress:SetStatusBarColor(unpack(theme.backgroundColors.activeStepCheckboxChecked))
    widgets.progressBackground:SetColorTexture(unpack(fieldBackground))
    widgets.progressText:SetFont(theme.font, 8, "")
    if addon.guideImporter.gui.progressError then
        widgets.progressText:SetTextColor(1, 0.45, 0.35)
    else
        widgets.progressText:SetTextColor(unpack(textColor))
    end
    widgets.history:SetFont(theme.font, 8, "")
    widgets.history:SetTextColor(unpack(textColor))

    for _, popup in ipairs({widgets.purgeConfirmation, widgets.deleteConfirmation}) do
        popup:UpdateTheme({})
    end

    addon.guideImporter:UpdateImportUI()
end

function addon.ui.v2:RegisterRXPV2GuideImporter()
    local Type, Version = "RXPV2GuideImporter", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then

        return
    end

    local function frame_OnShow(frame)
        frame.obj:Fire("OnShow")
    end

    local function frame_OnHide(frame)
        frame.obj:Fire("OnClose")
    end

    local function frame_OnMouseDown()
        AceGUI:ClearFocus()
    end

    local function frame_OnDragStart(frame)
        frame:StartMoving()
    end

    local function frame_OnDragStop(frame)
        frame:StopMovingOrSizing()
        local widget = frame.obj
        local status = widget.status or widget.localstatus
        status.top = frame:GetTop()
        status.left = frame:GetLeft()
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this.frame:SetParent(UIParent)
            this.frame:SetFrameStrata("MEDIUM")
            this.frame:SetFrameLevel(100)
            this:ApplyStatus()
        end,

        ["OnRelease"] = function(this)
            this.status = nil
            wipe(this.localstatus)
        end,

        ["OnWidthSet"] = function(this, width)
            this.content:SetWidth(math.max(width - 20, 0))
        end,

        ["OnHeightSet"] = function(this, height)
            this.content:SetHeight(math.max(height - 50, 0))
        end,

        ["Hide"] = function(this)
            this.frame:Hide()
        end,

        ["Show"] = function(this)
            this.frame:Show()
        end,

        ["SetStatusTable"] = function(this, status)
            assert(type(status) == "table")
            this.status = status
            this:ApplyStatus()
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = updateImporterTheme,

        ["ApplyStatus"] = function(this)
            local status = this.status or this.localstatus
            this:SetWidth(status.width or 500)
            this:SetHeight(status.height or importerBaseHeight)
            this.frame:ClearAllPoints()
            if status.top and status.left then
                this.frame:SetPoint("TOP", UIParent, "BOTTOM", 0, status.top)
                this.frame:SetPoint("LEFT", UIParent, "LEFT", status.left, 0)
            else
                this.frame:SetPoint("CENTER")
            end
        end
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
        frame:Hide()
        frame:EnableMouse(true)
        frame:SetMovable(true)
        frame:SetResizable(false)
        frame:SetFrameStrata("MEDIUM")
        frame:SetFrameLevel(100)
        frame:SetSize(500, importerBaseHeight)
        frame:SetToplevel(true)
        frame:SetScript("OnShow", frame_OnShow)
        frame:SetScript("OnHide", frame_OnHide)
        frame:SetScript("OnMouseDown", frame_OnMouseDown)
        frame:RegisterForDrag("LeftButton")
        frame:SetScript("OnDragStart", frame_OnDragStart)
        frame:SetScript("OnDragStop", frame_OnDragStop)

        local closebutton = CreateFrame("Button", nil, frame)
        closebutton:SetFrameLevel(frame:GetFrameLevel() + 3)
        closebutton:SetNormalTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetPushedTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close")
        closebutton:SetHighlightTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-btn-close", "ADD")
        closebutton:SetSize(20, 20)
        closebutton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 6, 6)
        local title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        title:SetPoint("TOP", frame, "TOP", 0, -4)
        title:SetText(fmt("RestedXP %s - %s", addon.locale.Get("Guide Import"), addon.versionText))

        local description = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        description:SetPoint("TOPLEFT", frame, "TOPLEFT", 18, -31)
        description:SetText(addon.locale.Get("Import Guides"))

        local theme = applyWindowTheme(frame, title, description)
        title:SetFont(theme.font, 10, "")
        title:SetTextColor(unpack(theme.textColor.title))
        addon.ui.v2:AddFrameShadow(frame)

        local content = CreateFrame("Frame", nil, frame)
        content:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -48)
        content:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -10, 10)

        local widget = {
            localstatus = {},
            frame = frame,
            content = content,
            title = title,
            description = description,
            closebutton = closebutton,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end
        closebutton:SetScript("OnClick", function() widget:Hide() end)

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterLayout(Type, function() end)
    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2:RegisterRXPV2GuideImporterEditBox()
    local Type, Version = "RXPV2GuideImporterEditBox", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then

        return
    end

    local CreateFrame, UIParent = CreateFrame, UIParent
    local max = math.max
    local tinsert = table.insert

    local function Layout(this)
        this:SetHeight(this.numlines * 14 + this.labelHeight + 19)
        this.background:ClearAllPoints()
        this.background:SetPoint("TOPLEFT", this.frame, "TOPLEFT", 0, -(this.labelHeight + 4))
        this.background:SetPoint("BOTTOMRIGHT", this.frame, "BOTTOMRIGHT", 0, 4)
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this:SetText("")
            this:SetDisabled(false)
            this.editBox:SetScript("OnUpdate", nil)
            this:SetWidth(200)
            this:SetLabel()
            this:SetNumLines()
            this:SetMaxLetters(0)
            this.editBox:SetMaxBytes(0)
        end,

        ["OnRelease"] = function(this)
            this:ClearFocus()
            this.editBox:SetScript("OnUpdate", nil)
        end,

        ["SetDisabled"] = function(this, disabled)
            if disabled then
                this.editBox:ClearFocus()
                this.editBox:Disable()
                this.editBox:EnableMouse(false)
            else
                this.editBox:Enable()
                this.editBox:EnableMouse(true)
            end
        end,

        ["SetLabel"] = function(this, text)
            if text and text ~= "" then
                this.label:SetText(text)
                this.labelHeight = 10
                this.label:Show()
            else
                this.labelHeight = 0
                this.label:Hide()
            end
            Layout(this)
        end,

        ["SetNumLines"] = function(this, value)
            this.numlines = max(value or 4, 4)
            Layout(this)
        end,

        ["SetText"] = function(this, text) this.editBox:SetText(text or "") end,

        ["GetEditBox"] = function(this)

            return this.editBox
        end,

        ["GetText"] = function(this)

            return this.editBox:GetText()
        end,

        ["SetMaxLetters"] = function(this, count)
            this.editBox:SetMaxLetters(count or 0)
        end,

        ["ClearFocus"] = function(this)
            this.editBox:ClearFocus()
            this.frame:SetScript("OnShow", nil)
        end,

        ["SetFocus"] = function(this)
            this.editBox:SetFocus()
            if not this.frame:IsShown() then
                this.frame:SetScript("OnShow", function() this.editBox:SetFocus() end)
            end
        end,

        ["HighlightText"] = function(this, from, to)
            this.editBox:HighlightText(from, to)
        end,

        ["SetCursorPosition"] = function(this, ...)

            return this.editBox:SetCursorPosition(...)
        end
    }

    local function Constructor()
        local widgetNum = AceGUI:GetNextWidgetNum(Type)
        local guideImporter = addon.guideImporter
        local importCache = guideImporter.importCache
        local frame = CreateFrame("Frame", nil, UIParent)
        frame:Hide()

        local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        label:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -4)
        label:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, -4)
        label:SetJustifyH("LEFT")
        label:SetHeight(10)
        label:Hide()

        local background = CreateFrame("Frame", nil, frame)

        local editBox = CreateFrame("EditBox", Type .. widgetNum .. "Edit", background)
        editBox:SetPoint("TOPLEFT", background, "TOPLEFT", 5, -6)
        editBox:SetPoint("BOTTOMRIGHT", background, "BOTTOMRIGHT", -4, 4)
        editBox:SetFontObject(ChatFontNormal)
        editBox:SetMultiLine(true)
        editBox:SetTextInsets(4, 4, 2, 2)
        editBox:EnableMouse(true)
        editBox:SetAutoFocus(false)
        editBox:SetCountInvisibleLetters(false)

        local widget = {
            editBox = editBox,
            frame = frame,
            label = label,
            labelHeight = 0,
            numlines = 4,
            background = background,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end

        editBox:SetScript("OnEditFocusLost", function()
            editBox:HighlightText(0, 0)
            widget:Fire("OnEditFocusLost")
        end)
        editBox:SetScript("OnEscapePressed", function() editBox:ClearFocus() end)
        editBox:SetScript("OnTextSet", function()
            editBox:HighlightText(0, 0)
            editBox:SetCursorPosition(editBox:GetNumLetters())
            editBox:SetCursorPosition(0)
        end)
        editBox:SetScript("OnEditFocusGained", function()
            AceGUI:SetFocus(widget)
            editBox:SetText("")
            editBox:SetMaxBytes(1)
            importCache.bufferString = ""
            importCache.bufferData = {}
            importCache.lastBuffer = 0
            guideImporter.importReady = false
            widget:Fire("OnEditFocusGained")
        end)
        editBox:SetScript("OnChar", function(_, char)
            if importCache.lastBuffer == 0 then
                editBox:SetScript("OnUpdate", function(this)
                    if GetTime() - importCache.lastBuffer >= 0.1 then
                        guideImporter:ProcessBuffer(this)
                    end
                end)
            end
            importCache.lastBuffer = GetTime()
            importCache.bufferData[#importCache.bufferData + 1] = char
        end)

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2:RegisterRXPV2GuideImporterButton()
    local Type, Version = "RXPV2GuideImporterButton", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then

        return
    end

    local CreateFrame, UIParent = CreateFrame, UIParent
    local PlaySound = PlaySound

    local function Button_OnClick(frame, ...)
        AceGUI:ClearFocus()
        PlaySound(852)
        frame.obj:Fire("OnClick", ...)
    end

    local function Control_OnEnter(frame)
        frame.obj:Fire("OnEnter")
    end

    local function Control_OnLeave(frame)
        frame.obj:Fire("OnLeave")
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this.frame:SetParent(UIParent)
            this:SetWidth(200)
            this:SetHeight(24)
            this:SetDisabled(false)
            this:SetText()
        end,

        ["SetText"] = function(this, text)
            this.text:SetText(text or "")
        end,

        ["SetDisabled"] = function(this, disabled)
            this.disabled = disabled
            this.frame:SetAlpha(disabled and 0.5 or 1)
            if disabled then
                this.frame:Disable()
            else
                this.frame:Enable()
            end
        end
    }

    local function Constructor()
        local frame = CreateFrame("Button", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")
        frame:Hide()
        frame:EnableMouse(true)
        frame:SetScript("OnClick", Button_OnClick)
        frame:SetScript("OnEnter", Control_OnEnter)
        frame:SetScript("OnLeave", Control_OnLeave)

        local text = frame:CreateFontString(nil, "OVERLAY")
        text:SetFontObject(GameFontNormal)
        text:SetPoint("TOPLEFT", frame, "TOPLEFT", 15, -1)
        text:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -15, 1)
        text:SetJustifyH("CENTER")
        text:SetJustifyV("MIDDLE")

        local widget = {
            text = text,
            frame = frame,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.guideImporter:ProcessImportBox()
    if not addon.settings.profile.showEnabled then addon.settings.ToggleActive() end

    local guidesLoaded, errorMsg = self:ImportString(self.importCache.bufferString)
    if guidesLoaded and not errorMsg then
        self.gui.selectedDeleteGuide = ""

        return true
    end

    local relog = not RXPData.cache and "\n" .. addon.locale.Get("Please restart your game client and try again") or ""

    return false, errorMsg or (addon.locale.Get("Failed to Import Guides: Invalid Import String") .. relog)
end

function addon.guideImporter:GetImportedGuides()
    local display = {[""] = ""}
    local importedGuidesFound = false
    local group, subgroup, name

    for _, guide in pairs(addon.guides) do
        if (guide.imported or guide.cache) and (guide.group ~= "RXPGuides" or addon.settings.profile.debug) then
            importedGuidesFound = true
            group, subgroup, name = guide.key:match("^(.*)|(.*)|(.*)")
            if subgroup ~= "" then group = group .. "/" .. subgroup end
            display[guide.key] = fmt("%s/%s - version %s", group, name, guide.version)
        end
    end

    if importedGuidesFound then

        return display
    end

    self.gui.selectedDeleteGuide = "none"

    return {none = addon.locale.Get("none")}
end

function addon.guideImporter:CheckBattleNet()
    local now = GetTime()
    if not RXPData.cache and now - self.lastBNetQuery > 5 then
        addon.comms.PrettyDebug("Battle.net not cached, querying")
        self.lastBNetQuery = now
        _, RXPData.cache = _G[addon.DeserializeTable(addon.base)]()
    end

    return RXPData.cache
end

local function addHistoryEntry(history, message)
    if not message or message == "" then return end

    for _, entry in ipairs(history) do
        if entry == message then return end
    end

    tinsert(history, 1, message)

    for index = #history, maxHistoryEntries + 1, -1 do
        history[index] = nil
    end
end

function addon.guideImporter:UpdateImportStatusHistory(data, isError, ...)
    local current, total
    if type(data) == "table" then
        self.gui.importStatusHistory = data
        for index = #data, maxHistoryEntries + 1, -1 do
            data[index] = nil
        end
        self.gui.progressMessage = nil
        self.gui.progressError = false
    elseif type(data) == "string" then
        local message = fmt(data, ...)
        current, total = message:match("(%d+)/(%d+)")
        current, total = tonumber(current), tonumber(total)

        if current and total then
            local details
            for line in message:gmatch("[^\n]+") do
                if not line:match("%d+/%d+") then
                    details = details and details .. "\n" .. line or line
                end
            end

            addHistoryEntry(self.gui.importStatusHistory, details)
            self.gui.progressMessage = fmt(addon.locale.Get("Total guides loaded: %d/%s"),
                                           current, total)
            self.gui.progressError = not not isError
        else
            addHistoryEntry(self.gui.importStatusHistory, message)
            self.gui.progressError = not not isError
        end
    end

    local latest = self.gui.progressMessage
    current, total = nil, nil
    if latest then current, total = latest:match("(%d+)/(%d+)") end
    current, total = tonumber(current), tonumber(total)
    if current and total and total > 0 and self.widgets.progress then
        self.widgets.progress:SetMinMaxValues(0, total)
        self.widgets.progress:SetValue(current)
    elseif self.widgets.progress then
        self.widgets.progress:SetMinMaxValues(0, 1)
        self.widgets.progress:SetValue(0)
    end
    if self.widgets.progressText then
        if self.gui.progressError then
            self.widgets.progressText:SetTextColor(1, 0.45, 0.35)
        else
            self.widgets.progressText:SetTextColor(unpack(getTheme().textColor.common))
        end
        self.widgets.progressText:SetText(latest or "")
    end

    self:UpdateImportUI()
end

function addon.guideImporter:Validate()
    local importCache = self.importCache
    self.importReady = false
    self.widgets.importButton:SetDisabled(true)
    local editBox = self.widgets.importBox:GetEditBox()
    editBox:Disable()

    local success, status, errorMsg = addon.safeCall(function()
        return self:ProcessImportBox()
    end)

    if not success then
        self:AbortImport()
        self:UpdateImportStatusHistory("%s", true, status)
        errorMsg = addon.locale.Get("Guide import failed due to a Lua error.")
    end

    importCache.bufferString = ""
    importCache.bufferData = {}

    if errorMsg then
        editBox:Enable()
        self:UpdateImportStatusHistory(errorMsg, true)

        return errorMsg
    end

    return status
end

function addon.guideImporter:ImportSplicedString()

    return _G.StaticPopup_Show("RXP_Import")
end

_G.StaticPopupDialogs["RXP_Import"] = {
    text = "",
    hasEditBox = 1,
    button1 = _G.OKAY,
    OnShow = function(this)
        local text = _G[this:GetName() .. "Text"]
        text:SetText(fmt(
            addon.locale.Get("Press Ctrl+V to paste a piece of the string (%d)\nPress ESC to cancel\n\nThis process is slow and should only be used if your operating system have clipboard length restrictions"),
            #strbuffer))
    end,
    EditBoxOnEscapePressed = function(this)
        this:GetParent():Hide()
        local importCache = addon.guideImporter.importCache
        importCache.bufferString = ""
        strbuffer = {}
        importCache.bufferData = {}
        addon.guideImporter:Open()
    end,
    OnAccept = function(this)
        local importCache = addon.guideImporter.importCache
        local editBox = _G[this:GetName() .. "EditBox"]
        local text = editBox:GetText()
        local n = #strbuffer
        local header = text:find("^%d+[|]+%d+:")
        if n > 0 or header then
            tinsert(strbuffer, text)
        else
            addon.comms.PrettyPrint(addon.locale.Get("Import Error - Invalid String Header"))
            addon.guideImporter:Open()

            return
        end

        if text:find("%%[|]+%d+$") then
            addon.guideImporter:Open()
            _G.RunNextFrame(function()
                importCache.bufferData = strbuffer
                addon.guideImporter:ProcessBuffer(addon.guideImporter.widgets.importBox:GetEditBox())
                addon.guideImporter:Validate()
                strbuffer = {}
                importCache.bufferData = {}
                importCache.bufferString = ""
            end)
        else
            _G.RunNextFrame(function() _G.StaticPopup_Show("RXP_Import") end)
        end
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
}

function addon.guideImporter:ProcessBuffer(editBox)
    local importCache = self.importCache
    if editBox then editBox:SetScript("OnUpdate", nil) end
    importCache.lastBuffer = 0

    importCache.bufferString = table.concat(importCache.bufferData)
    self.importReady = #importCache.bufferString > 0
    local shownLength = math.min(#importCache.bufferString, 150)
    if #importCache.bufferString > shownLength then
        self:UpdateImportStatusHistory(addon.locale.Get("Loaded %d characters into import buffer, %d shown"), false,
                                       #importCache.bufferString, shownLength)
    else
        self:UpdateImportStatusHistory(addon.locale.Get("Loaded %d characters into import buffer"), false,
                                       #importCache.bufferString)
    end

    if editBox then
        editBox:SetMaxBytes(0)
        editBox:SetText(importCache.bufferString:sub(1, shownLength))
        editBox:ClearFocus()
        editBox:Enable()
    end
    importCache.bufferData = {}
end

function addon.guideImporter:UpdateImportUI()
    local gui, widgets = self.gui, self.widgets
    if not widgets.import then

        return
    end

    self:CheckBattleNet()
    if widgets.currentGuides then
        widgets.currentGuides:SetList(self:GetImportedGuides())
        widgets.currentGuides:SetValue(gui.selectedDeleteGuide)
        widgets.currentGuides:SetDisabled(not next(addon.db.profile.guides))
        addon.ui.v2:ApplyDropdownTheme(widgets.currentGuides, getTheme())
    end
    if widgets.deleteButton then
        widgets.deleteButton:SetDisabled(not gui.selectedDeleteGuide or
                                          gui.selectedDeleteGuide == "" or gui.selectedDeleteGuide == "none")
    end
    if widgets.importButton then
        widgets.importButton:SetDisabled(not self.importReady or not RXPData.cache)
    end
    if widgets.importSplicedString then
        widgets.importSplicedString.frame:SetShown(addon.settings.profile.enableBetaFeatures)
    end
    if widgets.importButton and widgets.importBox and widgets.importSplicedString then
        local importButton = widgets.importButton
        local spliceButton = widgets.importSplicedString
        local betaEnabled = addon.settings.profile.enableBetaFeatures

        importButton.frame:ClearAllPoints()
        importButton.frame:SetPoint("TOPLEFT", widgets.importBox.frame, "BOTTOMLEFT", 0, -8)
        if betaEnabled then
            local buttonWidth = (widgets.importBox.frame:GetWidth() - 8) / 2
            importButton.frame:SetWidth(buttonWidth)
            spliceButton.frame:SetWidth(buttonWidth)
            spliceButton.frame:ClearAllPoints()
            spliceButton.frame:SetPoint("TOPLEFT", importButton.frame, "TOPRIGHT", 8, 0)
        else
            importButton.frame:SetPoint("TOPRIGHT", widgets.importBox.frame, "BOTTOMRIGHT", 0, -8)
        end
    end
    if widgets.history then
        widgets.history:SetText(table.concat(gui.importStatusHistory, "\n"))
        local historyShown = next(gui.importStatusHistory) ~= nil
        widgets.history:SetShown(historyShown)
        local historyHeight = historyShown and
                              math.min(math.max(widgets.history:GetStringHeight(), 18),
                                       maxHistoryHeight) or 0
        widgets.history:SetHeight(historyHeight)
        local frameHeight = importerBaseHeight + historyHeight
        widgets.import:SetHeight(frameHeight)
    end
end

function addon.guideImporter:UpdateTheme()
    local importer = self.widgets.import
    if importer then importer:UpdateTheme({}) end
end

function addon.ui.v2:CreateGuideImporter()
    local guideImporter = addon.guideImporter
    local widgets = guideImporter.widgets
    if widgets.import then

        return widgets.import
    end

    guideImporter:Setup()

    local L = addon.locale.Get
    local importer = AceGUI:Create("RXPV2GuideImporter")

    importer:SetLayout("RXPV2GuideImporter")

    local theme = getTheme()
    local content = importer.content
    local fieldBackground = theme.version == 1 and theme.backgroundColors.inactivePartyTab or
                            theme.backgroundColors.scrollbar
    local textColor = theme.textColor.common

    local purgeConfirmation = AceGUI:Create("RXPV2Popup")
    purgeConfirmation:SetTitle(L("Purge"))
    purgeConfirmation:SetMessage(L("This action will remove ALL guides from the database\nAre you sure?"))
    purgeConfirmation:SetButton(1, _G.YES or _G.OKAY, function()
        addon.db.profile.guides = {}
        addon.settings.profile.skipQuest = {}
        addon.settings.profile.questPrio = {}
        addon.settings.profile.questPrioIndex = {}
        addon.db.profile.guideId = nil
        addon.db.profile.guideLength = nil
        addon.db.profile.guideContent = nil
        addon:CreateMetaDataTable(true)
        guideImporter:UpdateImportUI()
        purgeConfirmation:Hide()
    end)
    purgeConfirmation:SetButton(2, _G.NO or _G.CANCEL, function() purgeConfirmation:Hide() end)
    purgeConfirmation:Hide()
    widgets.purgeConfirmation = purgeConfirmation

    local importLabel = content:CreateFontString(nil, "ARTWORK")
    importLabel:SetPoint("TOPLEFT", content, "TOPLEFT", 8, -1)
    importLabel:SetFont(theme.font, 8, "")
    importLabel:SetText(L("Paste your guide string into the text field and click \"Import\"."))
    importLabel:SetTextColor(unpack(theme.textColor.title))

    local importBox = AceGUI:Create("RXPV2GuideImporterEditBox")
    importBox:SetLabel(nil)
    importBox:SetNumLines(4)
    importer:AddChild(importBox)
    importBox.frame:ClearAllPoints()
    importBox.frame:SetPoint("TOPLEFT", content, "TOPLEFT", 8, -18)
    importBox.frame:SetPoint("TOPRIGHT", content, "TOPRIGHT", -8, -18)
    importBox.frame:SetHeight(50)
    importBox.label:Hide()
    local editBox = importBox:GetEditBox()
    editBox:SetFont(theme.font, 9, "")
    editBox:SetTextColor(unpack(textColor))
    addon.ui.v2:ApplyFrameBackdrop(importBox.background, theme.edge,
                                    fieldBackground,
                                    theme.borderColors.commonEdge)

    widgets.importBox = importBox
    importBox:SetCallback("OnEditFocusGained", function()
        guideImporter:UpdateImportUI()
    end)

    local importButton = AceGUI:Create("RXPV2GuideImporterButton")
    importButton:SetText(L("Import"))
    importer:AddChild(importButton)
    importButton.frame:ClearAllPoints()
    importButton.frame:SetPoint("TOPLEFT", importBox.frame, "BOTTOMLEFT", 0, -8)
    importButton.frame:SetPoint("TOPRIGHT", importBox.frame, "BOTTOMRIGHT", 0, -8)
    importButton:SetHeight(24)
    importButton.frame:SetHighlightTexture(
        "Interface/AddOns/" .. addonName .. "/Textures/v2/configurator-option-hover", "ADD")
    addon.ui.v2:ApplyFrameBackdrop(importButton.frame, theme.edge,
                                    theme.backgroundColors.inactivePartyTab,
                                    theme.borderColors.commonEdge)
    importButton.text:SetFont(theme.font, 9, "")
    importButton.text:SetTextColor(unpack(textColor))
    importButton:SetCallback("OnClick", function()
        guideImporter:Validate()
    end)

    widgets.importButton = importButton

    local spliceButton = AceGUI:Create("RXPV2GuideImporterButton")
    spliceButton:SetText(L("Import Spliced String"))
    importer:AddChild(spliceButton)
    spliceButton.frame:SetWidth((importBox.frame:GetWidth() - 8) / 2)
    spliceButton:SetHeight(24)
    spliceButton.frame:SetHighlightTexture(
        "Interface/AddOns/" .. addonName .. "/Textures/v2/configurator-option-hover", "ADD")
    addon.ui.v2:ApplyFrameBackdrop(spliceButton.frame, theme.edge,
                                    theme.backgroundColors.inactivePartyTab,
                                    theme.borderColors.commonEdge)
    spliceButton.text:SetFont(theme.font, 9, "")
    spliceButton.text:SetTextColor(unpack(textColor))
    spliceButton.frame:SetShown(addon.settings.profile.enableBetaFeatures)
    spliceButton:SetCallback("OnClick", function() guideImporter:ImportSplicedString() end)
    widgets.importSplicedString = spliceButton

    local guidesLabel = content:CreateFontString(nil, "ARTWORK")
    guidesLabel:SetPoint("TOPLEFT", importButton.frame, "BOTTOMLEFT", 0, -12)
    guidesLabel:SetPoint("TOPRIGHT", content, "TOPRIGHT", -8, -156)
    guidesLabel:SetFont(theme.font, 8, "")
    guidesLabel:SetText(L("Show imported guides"))
    guidesLabel:SetTextColor(unpack(textColor))

    local currentGuides = AceGUI:Create("Dropdown")
    importer:AddChild(currentGuides)

    currentGuides.frame:ClearAllPoints()
    currentGuides.frame:SetPoint("TOPLEFT", guidesLabel, "BOTTOMLEFT", 0, -2)
    currentGuides.frame:SetPoint("TOPRIGHT", guidesLabel, "BOTTOMRIGHT", 0, -2)
    currentGuides.frame:SetHeight(24)
    currentGuides.label:Hide()
    currentGuides.text:SetFont(theme.font, 9, "")
    currentGuides.text:SetTextColor(unpack(textColor))
    currentGuides.button_cover:Hide()
    local dropdownName = currentGuides.dropdown:GetName()
    _G[dropdownName .. "Left"]:Hide()
    _G[dropdownName .. "Middle"]:Hide()
    _G[dropdownName .. "Right"]:Hide()
    currentGuides.button:SetNormalTexture("Interface/AddOns/" .. addonName ..
                                                       "/Textures/v2/scrollbar_down")
    currentGuides.button:SetPushedTexture("Interface/AddOns/" .. addonName ..
                                                       "/Textures/v2/scrollbar_down")
    currentGuides.button:SetDisabledTexture("Interface/AddOns/" .. addonName ..
                                                         "/Textures/v2/scrollbar_down")
    currentGuides.button:SetHighlightTexture("Interface/AddOns/" .. addonName ..
                                             "/Textures/v2/scrollbar_down", "ADD")
    currentGuides.button:ClearAllPoints()
    currentGuides.button:SetSize(24, 24)
    currentGuides.button:SetPoint("TOPRIGHT", currentGuides.frame, "TOPRIGHT")
    addon.ui.v2:ApplyFrameBackdrop(currentGuides.frame, theme.edge,
                                    fieldBackground,
                                    theme.borderColors.commonEdge)

    currentGuides:SetCallback("OnValueChanged", function(_, _, value)
        guideImporter.gui.selectedDeleteGuide = value
        guideImporter:UpdateImportUI()
    end)
    currentGuides:SetCallback("OnOpened", function()
        addon.ui.v2:ApplyDropdownTheme(currentGuides, getTheme())
    end)

    widgets.currentGuides = currentGuides

    local purgeButton = AceGUI:Create("RXPV2GuideImporterButton")
    purgeButton:SetText(L("Purge"))
    importer:AddChild(purgeButton)
    purgeButton.frame:ClearAllPoints()
    purgeButton.frame:SetPoint("TOPLEFT", currentGuides.frame, "BOTTOMLEFT", 0, -8)
    purgeButton.frame:SetWidth(150)
    purgeButton:SetHeight(24)
    purgeButton.frame:SetHighlightTexture(
        "Interface/AddOns/" .. addonName .. "/Textures/v2/configurator-option-hover", "ADD")
    addon.ui.v2:ApplyFrameBackdrop(purgeButton.frame, theme.edge,
                                    theme.backgroundColors.inactivePartyTab,
                                    theme.borderColors.commonEdge)
    purgeButton.text:SetFont(theme.font, 9, "")
    purgeButton.text:SetTextColor(unpack(textColor))
    purgeButton:SetCallback("OnClick", function() purgeConfirmation:Show() end)

    local reloadButton = AceGUI:Create("RXPV2GuideImporterButton")
    reloadButton:SetText(L("Reload"))
    importer:AddChild(reloadButton)
    reloadButton.frame:ClearAllPoints()
    reloadButton.frame:SetPoint("TOPLEFT", currentGuides.frame, "BOTTOMLEFT", 160, -8)
    reloadButton.frame:SetWidth(150)
    reloadButton:SetHeight(24)
    reloadButton.frame:SetHighlightTexture(
        "Interface/AddOns/" .. addonName .. "/Textures/v2/configurator-option-hover", "ADD")
    addon.ui.v2:ApplyFrameBackdrop(reloadButton.frame, theme.edge,
                                    theme.backgroundColors.inactivePartyTab,
                                    theme.borderColors.commonEdge)
    reloadButton.text:SetFont(theme.font, 9, "")
    reloadButton.text:SetTextColor(unpack(textColor))
    reloadButton:SetCallback("OnClick", function() _G.ReloadUI() end)

    local deleteButton = AceGUI:Create("RXPV2GuideImporterButton")
    deleteButton:SetText(L("Delete"))
    importer:AddChild(deleteButton)
    deleteButton.frame:ClearAllPoints()
    deleteButton.frame:SetPoint("TOPLEFT", currentGuides.frame, "BOTTOMLEFT", 320, -8)
    deleteButton.frame:SetWidth(150)
    deleteButton:SetHeight(24)
    deleteButton.frame:SetHighlightTexture(
        "Interface/AddOns/" .. addonName .. "/Textures/v2/configurator-option-hover", "ADD")
    addon.ui.v2:ApplyFrameBackdrop(deleteButton.frame, theme.edge,
                                    theme.backgroundColors.inactivePartyTab,
                                    theme.borderColors.commonEdge)
    deleteButton.text:SetFont(theme.font, 9, "")
    deleteButton.text:SetTextColor(unpack(textColor))

    local deleteConfirmation = AceGUI:Create("RXPV2Popup")
    deleteConfirmation:SetTitle(L("Remove"))
    deleteConfirmation:SetButton(1, _G.YES or _G.OKAY, function()
        local guide = guideImporter.gui.selectedDeleteGuide
        if guide and addon.RemoveGuide(guide) then
            addon.db.profile.guides[guide] = nil
        end
        guideImporter.gui.selectedDeleteGuide = ""
        guideImporter:UpdateImportUI()
        deleteConfirmation:Hide()
    end)
    deleteConfirmation:SetButton(2, _G.NO or _G.CANCEL, function() deleteConfirmation:Hide() end)
    deleteConfirmation:Hide()
    widgets.deleteConfirmation = deleteConfirmation

    deleteButton:SetCallback("OnClick", function()
        deleteConfirmation:SetMessage(L("Remove") .. " " .. guideImporter.gui.selectedDeleteGuide .. "?")
        deleteConfirmation:Show()
    end)

    local progressLabel = content:CreateFontString(nil, "ARTWORK")
    progressLabel:SetPoint("TOPLEFT", currentGuides.frame, "BOTTOMLEFT", 0, -47)
    progressLabel:SetFont(theme.font, 8, "")
    progressLabel:SetText(L("Progress"))
    progressLabel:SetTextColor(unpack(textColor))

    local progress = CreateFrame("StatusBar", nil, content)
    progress:SetPoint("TOPLEFT", progressLabel, "BOTTOMLEFT", 0, -4)
    progress:SetPoint("TOPRIGHT", content, "TOPRIGHT", -8, -198)
    progress:SetHeight(18)
    progress:SetOrientation("HORIZONTAL")
    progress:SetMinMaxValues(0, 1)
    progress:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    local progressTexture = progress:GetStatusBarTexture()
    if progressTexture then progressTexture:SetDrawLayer("ARTWORK") end
    progress:SetStatusBarColor(unpack(theme.backgroundColors.activeStepCheckboxChecked))
    addon.ui.v2:ApplyFrameBackdrop(progress, theme.edge, fieldBackground,
                                    theme.borderColors.commonEdge)
    progress.rxpBackground:Hide()
    local progressBackground = progress:CreateTexture(nil, "BACKGROUND")
    progressBackground:SetAllPoints(progress)
    progressBackground:SetDrawLayer("BACKGROUND", -1)
    progressBackground:SetColorTexture(unpack(fieldBackground))
    progress:SetValue(0)

    local progressText = progress:CreateFontString(nil, "OVERLAY")
    progressText:SetPoint("LEFT", progress, "LEFT", 6, 0)
    progressText:SetPoint("RIGHT", progress, "RIGHT", -6, 0)
    progressText:SetJustifyH("LEFT")
    progressText:SetFont(theme.font, 8, "")
    progressText:SetTextColor(unpack(textColor))

    local history = content:CreateFontString(nil, "ARTWORK")
    history:SetPoint("TOPLEFT", progress, "BOTTOMLEFT", 0, -13)
    history:SetPoint("TOPRIGHT", progress, "BOTTOMRIGHT", 0, -13)
    history:SetHeight(36)
    history:SetJustifyH("LEFT")
    history:SetWordWrap(true)
    history:SetMaxLines(maxHistoryEntries)
    history:SetFont(theme.font, 8, "")
    history:SetTextColor(unpack(textColor))
    history:Hide()

    widgets.import = importer
    widgets.importLabel = importLabel
    widgets.importBox = importBox
    widgets.importButton = importButton
    widgets.importSplicedString = spliceButton
    widgets.guidesLabel = guidesLabel
    widgets.currentGuides = currentGuides
    widgets.purgeButton = purgeButton
    widgets.reloadButton = reloadButton
    widgets.deleteButton = deleteButton
    widgets.purgeConfirmation = purgeConfirmation
    widgets.deleteConfirmation = deleteConfirmation
    widgets.progressLabel = progressLabel
    widgets.progress = progress
    widgets.progressBackground = progressBackground
    widgets.progressText = progressText
    widgets.history = history
    importer:SetCallback("OnShow", function()
        guideImporter:UpdateImportUI()
    end)
    importer:UpdateSubTheme()

    if not RXPData.cache then
        guideImporter:UpdateImportStatusHistory(
            L("Battle.net unreachable, please exit your client, restart Battle.net, and try again"), true)
    end

    return importer
end
