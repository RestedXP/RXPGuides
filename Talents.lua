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

local fmt, sgmatch, strsplittable = string.format, string.gmatch, strsplittable
local tinsert = tinsert
local UnitLevel = UnitLevel
local GetPetTalentTree, GetUnspentTalentPoints, GetGroupPreviewTalentPointsSpent =
    _G.GetPetTalentTree, _G.GetUnspentTalentPoints,
    _G.GetGroupPreviewTalentPointsSpent

local L = addon.locale.Get

addon.talents = addon:NewModule("Talents", "AceEvent-3.0")
addon.talents.functions = {}
addon.talents.guides = {}
addon.talents.maxLevel = GetMaxPlayerLevel()

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
                addon.talents:UpdateSelectedGuide(arg1)

                addon.talents:DrawTalents()
            end
        })
    end

    tinsert(menu, {text = "", notCheckable = 1, isTitle = 1})

    tinsert(menu, {
        text = _G.APPLY,
        notCheckable = 1,
        func = function() addon.talents:ProcessTalents() end
    })

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

    self:UpdateSelectedGuide(addon.settings.db.profile.activeTalentGuide)
end

function addon.talents:ADDON_LOADED(_, loadedAddon)
    -- Talent frame/globals get loaded on demand when it's first open
    if loadedAddon == "Blizzard_TalentUI" then
        _G.PlayerTalentFrame:HookScript("OnShow", function()
            addon.talents:HookUI()
            addon.talents:DrawTalents()
        end)

        self:UnregisterEvent("ADDON_LOADED")
    end
end

function addon.talents:HookUI()
    local iconReference = {}

    -- Disable if other addons replace talents
    -- Talented

    if _G.PlayerSpecTab3 and _G.PlayerSpecTab3:IsShown() then -- Wrath hunter regardless of dual-spec
        iconReference.frame = _G.PlayerSpecTab3

        -- Offset RXP button as much as Tab2 is from Tab1
        _, _, _, _, iconReference.offsetY = _G.PlayerSpecTab3:GetPoint()

    elseif _G.PlayerSpecTab2 and _G.PlayerSpecTab2:IsShown() then -- Dual spec non-hunter
        iconReference.frame = _G.PlayerSpecTab2

        -- Offset RXP button as much as Tab2 is from Tab1
        _, _, _, _, iconReference.offsetY = _G.PlayerSpecTab2:GetPoint()

        -- elseif Retail
    else -- Classic or Wrath without dual-spec
        print("Else")
    end

    local button = self.talentsButton
    -- Build a button to match Wrath dual-spec talent tabs
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
                GameTooltip:AddLine(L("Left click to apply talents"), 0, 1, 0)
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

        self.talentsButton:SetScript("OnMouseUp", function(_, click)
            if click == "RightButton" then
                EasyMenu(buildTalentGuidesMenu(), self.menuFrame,
                         self.talentsButton, 0, 0, "MENU", 1)
            else
                self:ProcessTalents()
            end
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
    guide.minLevel = tonumber(guide.minLevel) or 10
    guide.maxLevel = tonumber(guide.maxLevel) or addon.talents.maxLevel
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

function addon.talents.functions.talent(element)
    if type(element) == "string" then -- on parse
        local e = {talent = {}}
        local args = element
        -- Strip whitespace
        args = args:gsub("%s*,%s*", ",")

        -- TODO tooltip on
        -- [<<%s*(.+)]?

        local tier, column, rank
        -- optional tiers with ; delimiter
        for arg in sgmatch(args, "[^;]+") do
            tier, column, rank = strsplit(arg)
            -- print("Inserting talent", arg)
            tinsert(e.talent, {tier = tier, column = column, rank = rank})
        end

        return e
    end

    -- GetTalentPrereqs(tabIndex, talentIndex)
    -- LearnTalent(tabIndex, talentIndex)
    for _, talentInfo in ipairs(element.talent) do
        -- success = LearnTalent(talentInfo)
        print("Would check if", talentInfo, "is trained")

        -- TODO Check if already learned
    end

end

function addon.talents.functions.glyph(element) end

-- Which comma value .pettalent to choose
local petSpecLookup = {['Ferocity'] = 1, ['Cunning'] = 2, ['Tenacity'] = 3}

function addon.talents.functions.pettalent(element)
    if type(element) == "string" then -- on parse
        -- ferocity, cunning, tenacity
        local e = {pettalent = {}}
        -- Strip whitespace
        local args = strsplittable(',', element:gsub("%s*,%s*", ","))
        -- [<<%s*(.+)]?

        e.pettalent = args[petSpecLookup[GetPetTalentTree()]]

        -- print("Pet talent", e.pettalent)

        return e
    end
end

function addon.talents:PLAYER_TALENT_UPDATE()
    -- TODO support dual spec swaps when leveling, e.g. solo vs dungeon spam specs
    -- Rescan talents to validate state
    print(":DrawTalents()")
end

function addon.talents:PET_TALENT_UPDATE()
    -- TODO support dual spec swaps when leveling, e.g. solo vs dungeon spam specs
    -- Rescan talents to validate state
    print(":DrawTalents()")
end

function addon.talents:PREVIEW_TALENT_POINTS_CHANGED(_, talentIndex, tabIndex,
                                                     groupIndex, points)
    -- TODO support dual spec swaps when leveling, e.g. solo vs dungeon spam specs
    -- Rescan talents to validate state
end

function addon.talents:PREVIEW_PET_TALENT_POINTS_CHANGED(_, talentIndex,
                                                         tabIndex, groupIndex,
                                                         points)
    -- TODO support dual spec swaps when leveling, e.g. solo vs dungeon spam specs
    -- Rescan talents to validate state
end

function addon.talents:PLAYER_REGEN_ENABLED()
    -- TODO send notification to update talents
end

function addon.talents:GetCurrentGuide()
    -- TODO automatically select talent guide for chosen spec, harder to do without DB

    return self.guides[addon.settings.db.profile.activeTalentGuide]
end

function addon.talents:UpdateSelectedGuide(key)
    if not key then return end

    if not self.guides[key] then return end

    addon.settings.db.profile.activeTalentGuide = key
end

function addon.talents:DrawTalents()
    -- TODO draw talent highlight previews of path
    -- print("Would draw talents")
end

function addon.talents:ProcessTalents()
    local playerLevel = UnitLevel("player") or 1

    local guide = self:GetCurrentGuide()

    if not guide then return end

    print("Processing", guide.displayname)

    if playerLevel < guide.minLevel then
        addon.comms.PrettyPrint(L("Too low for %s"), guide.displayname)
        return
    end

    local stepLevel, remainingPoints

    for stepNum, step in ipairs(guide.steps) do
        stepLevel = guide.minLevel + stepNum - 1
        print("Evaluating step", stepLevel, "for level",
              guide.minLevel + stepNum)

        remainingPoints = GetUnspentTalentPoints() -
                              GetGroupPreviewTalentPointsSpent()

        if (stepLevel > playerLevel) or remainingPoints == 0 then
            print("Reached end")
            self:DrawTalents()

            return
        end

        for _, element in ipairs(step.elements) do
            for tag, _ in pairs(element) do
                -- print("Evaluating tag", tag)
                if self.functions[tag] then
                    -- print("Executing tag function", tag)
                    self.functions[tag](element)
                else
                    addon.error(L("Error parsing guide") .. " " ..
                                    (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. tag .. ")\n" ..
                                    stepNum)
                end

            end

        end

    end

end
