local _, addon = ...

if addon.gameVersion > 40000 then return end

local GameTooltip = _G.GameTooltip
local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0", true)
local EasyMenu = function(...)
    if LibDD then
        LibDD:EasyMenu(...)
    else
        _G.EasyMenu(...)
    end
end

local fmt, sgmatch = string.format, string.gmatch
local tinsert = tinsert
local UnitLevel = UnitLevel

local L = addon.locale.Get

addon.talents = addon:NewModule("Talents", "AceEvent-3.0")
addon.talents.functions = {}
addon.talents.guides = {}
addon.talents.maxLevel = GetMaxPlayerLevel()

-- TODO change to setting
local activeGuide

local function buildTalentGuidesMenu()
    local menu = {}

    tinsert(menu, {text = L("Available Guides"), isTitle = 1, notCheckable = 1})

    for key, guide in pairs(addon.talents.guides) do
        tinsert(menu, {
            text = guide.name,
            tooltipTitle = guide.description,
            notCheckable = 1,
            arg1 = key,
            func = function(_, arg1)
                -- TODO setting/selection for active guide
                print("Would have selected", arg1)
                -- TODO reload guide
            end
        })
    end

    tinsert(menu, {
        text = _G.CLOSE,
        notCheckable = 1,
        func = function(self) self:Hide() end
    })
    return menu
end

function addon.talents:Setup()
    self:RegisterEvent("PLAYER_TALENT_UPDATE")
    self:RegisterEvent("PLAYER_REGEN_ENABLED")

    self:RegisterEvent("ADDON_LOADED")
end

function addon.talents:ADDON_LOADED(_, loadedAddon)
    -- Talent frame/globals get loaded on demand when it's first open
    if loadedAddon == "Blizzard_TalentUI" then
        _G.PlayerTalentFrame:HookScript("OnShow",
                                        function() addon.talents:HookUI() end)

        self:UnregisterEvent("ADDON_LOADED")
    end
end

function addon.talents:HookUI()
    local iconReference = {}

    -- Dual spec, so pop it underneath
    if _G.PlayerSpecTab2 then
        iconReference.frame = _G.PlayerSpecTab2

        -- Offset RXP button as much as Tab2 is from Tab1
        _, _, _, _, iconReference.offsetY = _G.PlayerSpecTab2:GetPoint()

        -- Dual spec, so pop it underneath
        -- elseif Retail
    else -- Classic or Wrath without dual-spec
        print("Else")
    end

    local button = self.talentsButton
    if not button then
        button = CreateFrame("Button", "$parentRXPTalents", iconReference.frame)
        button:SetWidth(iconReference.frame:GetWidth())
        button:SetHeight(iconReference.frame:GetHeight())
        button:SetPoint("TOP", iconReference.frame, "BOTTOM", 0,
                        iconReference.offsetY)
        button:SetNormalTexture(addon.GetTexture("rxp_logo-64"))
        button.bg = button:CreateTexture("$parentBG", "BACKGROUND")
        button.bg:SetSize(64, 64)
        button.bg:SetPoint("TOPLEFT", -3, 11)
        button.bg:SetTexture("Interface/SpellBook/SpellBook-SkillLineTab")
        button.bg.ht = button:CreateTexture(nil, "HIGHLIGHT")
        button.bg.ht:SetAllPoints(true)
        button.bg.ht:SetTexture("Interface/Buttons/ButtonHilight-Square")
        button.bg.ht:SetBlendMode("ADD")

        self.talentsButton = button

        button:SetScript("OnEnter", function(this)
            if this:IsForbidden() or GameTooltip:IsForbidden() then
                return
            end
            GameTooltip:SetOwner(this, "ANCHOR_TOPLEFT",
                                 iconReference.frame:GetWidth(), 0)
            GameTooltip:ClearLines()

            local guide = addon.talents:GetCurrentGuide()
            if guide then
                GameTooltip:AddLine(guide.name)
                GameTooltip:AddLine(fmt("%s: %d - %d", _G.LEVEL_RANGE,
                                        guide.minLevel, guide.maxLevel), 1, 1, 1)
            else
                GameTooltip:AddLine(L(
                                        "Welcome to RestedXP Guides\nRight click to pick a guide"))
            end

            GameTooltip:Show()
        end)

        button:SetScript("OnLeave", function(this)
            if this:IsForbidden() or GameTooltip:IsForbidden() then
                return
            end
            GameTooltip:Hide()
        end)

        self.talentsButton = button
    end

    if not self.menuFrame then
        self.menuFrame = CreateFrame("Frame", "RXP_TalentsMenuFrame",
                                     self.talentsButton,
                                     "UIDropDownMenuTemplate")

        self.talentsButton:SetScript("OnMouseUp", function()
            EasyMenu(buildTalentGuidesMenu(), self.menuFrame,
                     self.talentsButton, 0, 0, "MENU", 1)
        end)
    end
end

function addon.talents.RegisterGuide(text)
    local guide = addon.talents:ParseGuide(text)

    if guide and guide.key then addon.talents.guides[guide.key] = guide end
end

function addon.talents:ParseGuide(text)
    if not text then return end

    local guide = {steps = {}}

    local step = {}
    local linenumber = 0
    local currentStep = 0

    -- Loop over each line in guide
    for line in string.gmatch(text, "[^\n\r]+") do
        line = line:gsub("^%s+", "")
        line = line:gsub("%s+$", "")
        linenumber = linenumber + 1

        if line:sub(1, 5) == "level" then
            currentStep = currentStep + 1
            guide.steps[currentStep] = {elements = {}}

            step = guide.steps[currentStep]
            -- print("Starting new step", currentStep)
        elseif currentStep > 0 then -- Parse metadata tags first

            -- Parse function calls
            line:gsub("^%.(%S+)%s*(.*)", function(command, lineArgs)
                -- print("Processing guide command", command, "with (", lineArgs, ")")
                if self.functions[command] then
                    local element = self.functions[command](lineArgs)

                    if not element then return end

                    tinsert(step.elements, element)
                else
                    addon.error(L("Error parsing guide") .. " " ..
                                    (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. command ..
                                    ")\n" .. line)
                end
            end)

        elseif line ~= "" then
            -- Parse metadata tags
            line:gsub("^#(%S+)%s*(.*)", function(tag, value)
                -- print("Parsing tag at", linenumber, tag, value)
                -- Set metadata without overwriting
                if tag and tag ~= "" and not guide[tag] then
                    guide[tag] = value
                end
            end)

        end
    end

    -- Ensure guide tags exist with good defaults
    if not guide.name then
        addon.comms.PrettyPrint("%s: Missing #%s", L("Error parsing guide"),
                                "name")
        return
    end

    -- guide.class = guide.class or addon.player.localeClass
    guide.minLevel = guide.minLevel or 10
    guide.maxLevel = guide.maxLevel or addon.talents.maxLevel
    guide.description = guide.description or
                            fmt("%s - %s (%d-%d)", addon.player.localeClass,
                                guide.name, guide.minLevel, guide.maxLevel)
    guide.displayname = guide.displayname or guide.description
    guide.key = guide.key or fmt("%s - %s", addon.player.class, guide.name)
    -- #guide.next

    _G.RXPD = guide
    return guide
end

function addon.talents.functions.retrain()
    -- TODO parse level >/< tags
    -- Direct to retrain but don't automate
    -- If denied, don't prompt and just disable all predictions
end

function addon.talents.functions.talent(self)
    -- self is lineArgs or step
    if type(self) == "string" then -- on parse
        local element = {talents = {}}
        local args = self
        -- Strip whitespace
        args = args:gsub("%s*,%s*", ",")
        -- [<<%s*(.+)]?

        for arg in sgmatch(args, "[^,]+") do
            print("Inserting talent", arg)
            tinsert(element.talents, tonumber(arg))
        end

        return element
    end

    if self.element.completed then return end

    for talentID in ipairs(self.element.talents) do
        -- success = LearnTalent(talentID)
        print("Would check if", talentID, "is trained")

        -- TODO Check if already learned
        if false then self.element.completed = true end
    end

end

function addon.talents:PLAYER_TALENT_UPDATE()
    -- TODO support dual spec swaps when leveling, e.g. solo vs dungeon spam specs
end

function addon.talents:PLAYER_REGEN_ENABLED()
    -- TODO send notification to update talents
end

function addon.talents:GetCurrentGuide() return activeGuide end

function addon.talents:LoadGuide(key)
    -- TODO setting/selection
    -- TODO automatically select talent guide for chosen spec, harder to do without DB
    activeGuide = self.guides[key]
    return activeGuide
end

function addon.talents:ProcessTalents()
    local playerLevel = UnitLevel("player") or 1

    local selectedGuide = self:GetCurrentGuide()

    if playerLevel < selectedGuide.minLevel then
        addon.comms.PrettyPrint(L("Too low for %s"), selectedGuide.displayname)
        return
    end
end
