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

local fmt, sgmatch, strsplittable, strjoin = string.format, string.gmatch,
                                             strsplittable, string.join
local tonumber = tonumber
local tinsert, tsort = tinsert, table.sort
local UnitLevel = UnitLevel
local GetPetTalentTree, GetUnspentTalentPoints,
      GetGroupPreviewTalentPointsSpent, AddPreviewTalentPoints,
      UnitCharacterPoints = _G.GetPetTalentTree, _G.GetUnspentTalentPoints,
                            _G.GetGroupPreviewTalentPointsSpent,
                            _G.AddPreviewTalentPoints, _G.UnitCharacterPoints
local PanelTemplates_GetSelectedTab, PlayerTalentFrame =
    _G.PanelTemplates_GetSelectedTab, _G.PlayerTalentFrame
local BackdropTemplate = BackdropTemplateMixin and "BackdropTemplate"

local L = addon.locale.Get

addon.talents = addon:NewModule("Talents", "AceEvent-3.0")
addon.talents.functions = {}
addon.talents.guides = {}
addon.talents.maxLevel = GetMaxPlayerLevel()

addon.talents.petGuides = {
    -- ['Ferocity'] = {},
    -- ['Cunning'] = {},
    -- ['Tenacity'] = {}
}

local compatible = true
local indexLookup = {}
local activeIndices = {}
local levelsForIndex = {}
local talentTooltips = {
    hooked = false,
    data = {},
    highlights = {},
    highlightColors = {
        [1] = {14 / 255, 131 / 255, 18 / 255}, -- RXP_BUY
        [2] = {0, 1, 37 / 255}, -- RXP_FRIENDLY
        [3] = {0, 1, 37 / 255}, -- RXP_FRIENDLY
        [4] = {0, 1, 37 / 255}, -- RXP_FRIENDLY
        [5] = {252 / 255, 220 / 250, 0} -- RXP_WARN
    }
}

local function buildTalentGuidesMenu()
    local menu = {}

    local playerLevel = UnitLevel("player")
    local disabled, invalidReason = false, nil

    if PlayerTalentFrame.pet then
        tinsert(menu, {text = _G.PET_TALENTS, isTitle = 1, notCheckable = 1})

        for key, guide in pairs(addon.talents.petGuides) do
            if playerLevel < guide.minLevel then
                invalidReason = "< " .. guide.minLevel
                disabled = true
            elseif playerLevel > guide.maxLevel then
                invalidReason = "> " .. guide.maxLevel
                disabled = true
            else
                disabled = false
                invalidReason = nil
            end

            if guide.pet == GetPetTalentTree() then
                tinsert(menu, {
                    text = guide.name,
                    tooltipTitle = fmt("%s: %s", _G.LEVEL_RANGE,
                                       guide.levelRange),
                    notCheckable = 1,
                    disabled = disabled,
                    tooltipText = invalidReason,
                    tooltipOnButton = true,
                    tooltipWhileDisabled = true,
                    func = function()
                        if addon.talents:ProcessTalents('validate') then
                            addon.talents:DrawTalents()
                        end
                    end
                })
            end
        end
    else
        tinsert(menu,
                {text = L("Available Guides"), isTitle = 1, notCheckable = 1})

        for key, guide in pairs(addon.talents.guides) do

            if playerLevel < guide.minLevel then
                invalidReason = "< " .. guide.minLevel
                disabled = true
            elseif playerLevel > guide.maxLevel then
                invalidReason = "> " .. guide.maxLevel
                disabled = true
            else
                disabled = false
                invalidReason = nil
            end

            tinsert(menu, {
                text = guide.name,
                tooltipTitle = fmt("%s: %s", _G.LEVEL_RANGE, guide.levelRange),
                notCheckable = 1,
                disabled = disabled,
                tooltipText = invalidReason,
                tooltipOnButton = true,
                tooltipWhileDisabled = true,
                arg1 = key,
                func = function(_, arg1)
                    addon.talents:UpdateSelectedGuide(arg1)

                    if addon.talents:ProcessTalents('validate') then
                        addon.talents:DrawTalents()
                    end
                end
            })
        end
    end

    tinsert(menu, {text = "", notCheckable = 1, isTitle = 1})

    tinsert(menu, {
        text = _G.APPLY,
        notCheckable = 1,
        func = function() addon.talents:ProcessTalents() end
    })

    tinsert(menu, {
        text = _G.GAMEOPTIONS_MENU,
        notCheckable = 1,
        func = function()
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        end
    })

    tinsert(menu, {
        text = _G.CLOSE,
        notCheckable = 1,
        func = function(self) self:Hide() end
    })

    return menu
end

function addon.talents:IsSupported()
    return self.guides and next(self.guides) ~= nil and compatible
end

function addon.talents:Setup()
    if not addon.settings.profile.enableTalentGuides then return end

    if not self:IsSupported() then return end

    self:RegisterEvent("ADDON_LOADED")

    self:UpdateSelectedGuide(addon.settings.profile.activeTalentGuide)

    if tonumber(GetCVar("previewTalents")) == 0 and addon.gameVersion > 30000 and
        addon.settings.profile.previewTalents then
        -- Talents are enabled in RXP, so match client
        -- This only lasts per session, does not persist in-game setting
        SetCVar("previewTalents", 1)
    end
end

function addon.talents:ADDON_LOADED(_, loadedAddon)
    -- Talent frame/globals get loaded on demand when it's first opened
    if loadedAddon == "Blizzard_TalentUI" then
        _G.PlayerTalentFrame:HookScript("OnShow",
                                        function() addon.talents:HookUI() end)

        _G.PlayerTalentFrame:HookScript("OnUpdate",
                                        function() self:DrawTalents() end)

        PlayerTalentFrame = _G.PlayerTalentFrame
        self:BuildIndexLookup()
    elseif loadedAddon == "Talented" then
        compatible = false
        addon.comms.PrettyPrint(L(
                                    "Talented detected, please disable for talent guide functionality")) -- TODO locale
    end
end

function addon.talents:HookUI()
    local iconReference = {}

    if not self:IsSupported() then return end

    if _G.PlayerSpecTab3 and _G.PlayerSpecTab3:IsShown() then -- Wrath hunter regardless of dual-spec
        iconReference.frame = _G.PlayerSpecTab3
        iconReference.size = iconReference.frame:GetWidth()

        -- Offset RXP button as much as Tab2 is from Tab1
        _, _, _, _, iconReference.offsetY = _G.PlayerSpecTab3:GetPoint()
        iconReference.point = {
            "TOP", iconReference.frame, "BOTTOM", 0, iconReference.offsetY
        }

    elseif _G.PlayerSpecTab2 and _G.PlayerSpecTab2:IsShown() then -- Dual spec non-hunter
        iconReference.frame = _G.PlayerSpecTab2
        iconReference.size = iconReference.frame:GetWidth()

        -- Offset RXP button as much as Tab2 is from Tab1
        _, _, _, _, iconReference.offsetY = _G.PlayerSpecTab2:GetPoint()

        iconReference.point = {
            "TOP", iconReference.frame, "BOTTOM", 0, iconReference.offsetY
        }
    elseif _G.PlayerSpecTab1 then -- Wrath, non dual-spec non-hunter
        iconReference.frame = _G.PlayerTalentFrame
        iconReference.size = 32
        iconReference.point = {
            "TOPLEFT", iconReference.frame, "TOPRIGHT", -32, -65
        }
    elseif addon.gameVersion < 20000 then
        iconReference.frame = _G.PlayerTalentFrame
        iconReference.size = 32
        iconReference.point = {
            "TOPLEFT", iconReference.frame, "TOPRIGHT", -32, -65
        }
        -- elseif Retail
    else
        addon.error(fmt("%s - %s", _G.TALENTS, _G.ADDON_NOT_AVAILABLE))
        return
    end

    if not talentTooltips.hooked then
        hooksecurefunc("PlayerTalentFrameTalent_OnEnter",
                       talentTooltips.updateFunc)

        talentTooltips.hooked = true
    end

    local button = self.talentsButton
    -- Build a button to match Wrath dual-spec talent tabs
    if not button then
        button = CreateFrame("Button", "$parentRXPTalents", iconReference.frame)
        button:SetWidth(iconReference.size)
        button:SetHeight(iconReference.size)
        button:SetPoint(unpack(iconReference.point))
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
            GameTooltip:SetOwner(this, "ANCHOR_TOPLEFT", iconReference.size, 0)
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

    if not (guide and guide.key) then return end

    if guide.pet then
        addon.talents.petGuides[guide.pet] = guide
        return
    end

    addon.talents.guides[guide.key] = guide
end

function addon.talents:ParseGuide(text)
    if not text then return end

    local guide = {steps = {}}

    local step = {}
    local linenumber = 0
    local currentStep = 0

    -- Loop over each line in guide
    for line in sgmatch(text, "[^\n\r]+") do
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

    guide.minLevel = tonumber(guide.minLevel) or 10
    guide.maxLevel = tonumber(guide.maxLevel) or addon.talents.maxLevel
    guide.levelRange = fmt("%d-%d", guide.minLevel, guide.maxLevel)
    guide.description = guide.description or
                            fmt("%s - %s (%s)", addon.player.localeClass,
                                guide.name, guide.levelRange)
    guide.displayname = guide.displayname or guide.description
    guide.key = guide.key or fmt("%s - %s", addon.player.class, guide.name)
    guide.nextKey = guide.next and
                        fmt("%s - %s", addon.player.class, guide.next)

    return guide
end

-- { tab, talentIndex, name }
local function learnClassicTalent(payload)
    if addon.gameVersion > 20000 then return end

    local tab, talentIndex, name = unpack(payload)
    local result = LearnTalent(tab, talentIndex)

    if result then
        addon.comms.PrettyPrint("%s - %s", _G.TRADE_SKILLS_LEARNED_TAB, name)
        -- else
        -- addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN, name))
    end

    return result
end

function addon.talents.functions.talent(element, validate)
    if type(element) == "string" then -- on parse
        local e = {talent = {}}
        local args = element
        -- Strip whitespace
        args = args:gsub("%s*,%s*", ",")

        local tab, tier, column, rank = strsplit(',', args)
        -- print("Inserting talent", arg)
        tinsert(e.talent, {
            tab = tonumber(tab),
            tier = tonumber(tier),
            column = tonumber(column),
            rank = tonumber(rank) or 1
        })

        return e
    end

    local talentIndex
    local name, previewRankOrRank
    local lookup

    -- TODO handle off-plan talents
    for _, talentData in ipairs(element.talent) do
        lookup = indexLookup['player'][talentData.tab]

        if not (lookup and lookup[talentData.tier] and
            lookup[talentData.tier][talentData.column]) then

            addon.comms.PrettyPrint(
                "Invalid talentIndex lookup for [%d][%d][%d]", talentData.tab,
                talentData.tier, talentData.column)
            return false
        end

        talentIndex = lookup[talentData.tier][talentData.column]

        if talentIndex and validate then return true end

        if addon.gameVersion > 30000 then
            name, _, _, _, _, _, _, _, previewRankOrRank, _ = GetTalentInfo(
                                                                  talentData.tab,
                                                                  talentIndex)
        else
            name, _, _, _, previewRankOrRank =
                GetTalentInfo(talentData.tab, talentIndex)
        end

        if previewRankOrRank < talentData.rank then
            if addon.gameVersion < 20000 then
                local d = {talentData.tab, talentIndex, name}
                local prompt = fmt(_G.CONFIRM_LEARN_TALENT, name)

                addon.comms:ConfirmChoice("RXPTalentPrompt", prompt,
                                          learnClassicTalent, d)

                -- Stop as soon as first learning prompt, not a blocking dialog
                return -1
            elseif addon.settings.profile.previewTalents then
                local before = GetGroupPreviewTalentPointsSpent()
                AddPreviewTalentPoints(talentData.tab, talentIndex, 1)

                -- Verify training actually worked, there's no return value from Preview
                if before == GetGroupPreviewTalentPointsSpent() then
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN,
                                    name))
                    return false
                end

                addon.comms.PrettyPrint("%s - %s (%s %d)", _G.PREVIEW, name,
                                        _G.RANK, talentData.rank)
            else
                if LearnTalent(talentData.tab, talentIndex) then
                    addon.comms.PrettyPrint("%s - %s (%s %d)",
                                            _G.TRADE_SKILLS_LEARNED_TAB, name,
                                            _G.RANK, talentData.rank)
                else
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN,
                                    name))
                    return false
                end
            end
        end

    end

    return true
end

function addon.talents.functions.pettalent(element, validate)
    if addon.gameVersion < 30000 then return end

    if type(element) == "string" then -- on parse
        local e = {pettalent = {}}
        local args = element
        -- Strip whitespace
        args = args:gsub("%s*,%s*", ",")

        local tab, tier, column, rank = strsplit(',', args)

        -- print("Inserting pettalent", arg)
        tinsert(e.pettalent, {
            tab = tonumber(tab),
            tier = tonumber(tier),
            column = tonumber(column),
            rank = tonumber(rank) or 1
        })

        return e
    end

    local talentIndex
    local name, previewRankOrRank
    local lookup

    for _, talentData in pairs(element.pettalent) do
        lookup = indexLookup[GetPetTalentTree()][talentData.tab]

        if not (lookup and lookup[talentData.tier] and
            lookup[talentData.tier][talentData.column]) then

            addon.comms.PrettyPrint(
                "Invalid pet talentIndex lookup for [%d][%d][%d]",
                talentData.tab, talentData.tier, talentData.column)
            return false
        end

        talentIndex = lookup[talentData.tier][talentData.column]

        if talentIndex and validate then return true end

        name, _, _, _, _, _, _, _, previewRankOrRank, _ = GetTalentInfo(
                                                              talentData.tab,
                                                              talentIndex, nil,
                                                              true)

        -- TODO handle off-plan talents
        if name and previewRankOrRank < talentData.rank then
            if addon.settings.profile.previewTalents then
                local before = GetGroupPreviewTalentPointsSpent(true, 1)
                AddPreviewTalentPoints(talentData.tab, talentIndex, 1, true,
                                       PlayerTalentFrame.talentGroup)

                -- Verify training actually worked, there's no return value from Preview
                if before == GetGroupPreviewTalentPointsSpent(true, 1) then
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN,
                                    name))
                    return false
                end

                addon.comms.PrettyPrint("%s - %s (%s %d)", _G.PREVIEW, name,
                                        _G.RANK, talentData.rank)
            else
                if LearnTalent(talentData.tab, talentIndex, true) then
                    addon.comms.PrettyPrint("%s - %s (%s %d)",
                                            _G.TRADE_SKILLS_LEARNED_TAB, name,
                                            _G.RANK, talentData.rank)
                else
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN,
                                    name))
                    return false
                end
            end
        end

    end

    return true
end

function addon.talents:GetCurrentGuide()
    if PlayerTalentFrame.pet then
        return self.petGuides[GetPetTalentTree()]
    else
        -- TODO automatically select talent guide for chosen spec, harder to do without DB
        return self.guides[addon.settings.profile.activeTalentGuide]
    end
end

function addon.talents:UpdateSelectedGuide(key)
    if not key then return end

    if not self.guides[key] then return end

    if UnitLevel("player") < self.guides[key].minLevel then
        addon.comms.PrettyPrint(L("Too low for %s"),
                                self.guides[key].displayname)

        return
    end

    addon.settings.profile.activeTalentGuide = key

    return true
end

talentTooltips.updateFunc = function(self)
    local tooltip = talentTooltips.data[self:GetID()]
    if not tooltip then return end

    -- Handle refreshing of UI
    GameTooltip:AddLine(tooltip, 1, 1, 1)

    -- Force tooltip redraw
    GameTooltip:Show()
end

local function DrawTalentLevels(talentIndex, numbers)
    local ht = talentTooltips.highlights[talentIndex]

    if not ht then return end

    if not ht.levelHeader then
        ht.levelHeader = CreateFrame("Frame", "$parent_levelText",
                                     _G["PlayerTalentFrameTalent" .. talentIndex],
                                     BackdropTemplate)

        ht.levelHeader:SetPoint("TOPLEFT", ht, 0, 0)
        ht.levelHeader.text = ht.levelHeader:CreateFontString(nil, "OVERLAY")

        ht.levelHeader.text:ClearAllPoints()
        ht.levelHeader.text:SetPoint("CENTER", ht.levelHeader, 0, 3)
        ht.levelHeader.text:SetJustifyH("LEFT")
        ht.levelHeader.text:SetJustifyV("MIDDLE")

        -- TODO specific text color setting?
        ht.levelHeader.text:SetTextColor(unpack(addon.activeTheme.textColor))
        ht.levelHeader.text:SetFont(addon.font, 10, "OUTLINE")
    end

    -- If 5 levels of preview, overlaps with nearby
    if #numbers == 5 then
        ht.levelHeader.text:SetFont(addon.font, 8, "OUTLINE")
        ht.levelHeader:SetPoint("TOPLEFT", ht, -3, 0)
    else
        ht.levelHeader.text:SetFont(addon.font, 10, "OUTLINE")
        ht.levelHeader:SetPoint("TOPLEFT", ht, 0, 0)
    end

    -- Ensure single number ends up as a string
    local newText = '' .. strjoin(',', unpack(numbers))

    -- No changes, prevent uneeded UI calls
    if ht.levelHeader.text:GetText() == newText then return end

    ht.levelHeader.text:SetText(newText)
    ht.levelHeader:SetSize(ht.levelHeader.text:GetStringWidth() + 10, 17)
end

local function setHighlightColor(talentIndex, index)
    -- Set color to last if no specific match
    local color = talentTooltips.highlightColors[index] or
                      talentTooltips.highlightColors[#talentTooltips.highlightColors]
    talentTooltips.highlights[talentIndex]:SetVertexColor(unpack(color))
end

function addon.talents:DrawTalents()
    local guide = self:GetCurrentGuide()
    if not guide then return end

    if not PlayerTalentFrame:IsShown() then return end
    if PlayerTalentFrame.pet then return end

    if not indexLookup['player'] then self:BuildIndexLookup() end

    if not addon.settings.profile.hightlightTalentPlan then
        -- If disabled, cleanup old draws for dynamic settings
        local ht
        for i in pairs(talentTooltips.highlights) do
            ht = talentTooltips.highlights[i]
            if ht:IsShown() then ht:Hide() end

            if ht.levelHeader and ht.levelHeader:IsShown() then
                ht.levelHeader:Hide()
                ht.levelHeader.text:SetText(nil)
            end
        end

        return
    end

    local currentTab = PanelTemplates_GetSelectedTab(PlayerTalentFrame)
    local remainingPoints, levelStep, talentIndex

    if GetUnspentTalentPoints then
        remainingPoints = GetUnspentTalentPoints() -
                              GetGroupPreviewTalentPointsSpent()
    else
        remainingPoints = UnitCharacterPoints("player")
    end

    local playerLevel = UnitLevel("player")
    local advancedWarning = playerLevel +
                                addon.settings.profile.upcomingTalentCount
    wipe(talentTooltips.data)

    -- Track state better than with Blizz frame re-use
    wipe(activeIndices)
    wipe(levelsForIndex)

    -- Create highlight frames and set data objects for later processing
    for upcomingTalent = (playerLevel + 1 - remainingPoints), advancedWarning do

        levelStep = guide.steps[upcomingTalent - guide.minLevel + 1]

        if levelStep then

            for _, element in ipairs(levelStep.elements) do
                for _, talentData in ipairs(element.talent) do

                    talentIndex =
                        indexLookup['player'][talentData.tab][talentData.tier][talentData.column]

                    if currentTab == talentData.tab then
                        activeIndices[talentIndex] = talentData.tab

                        talentTooltips.data[talentIndex] =
                            talentTooltips.data[talentIndex] or
                                fmt("\n%s - %s", addon.title, guide.name)

                        talentTooltips.data[talentIndex] = fmt(
                                                               "%s\n%s%s: %s %d|r",
                                                               talentTooltips.data[talentIndex],
                                                               addon.colors
                                                                   .tooltip,
                                                               _G.TRADE_SKILLS_LEARNED_TAB,
                                                               _G.LEVEL,
                                                               upcomingTalent)

                        -- TODO Pre-seed tooltip to prevent delay

                        if not talentTooltips.highlights[talentIndex] then
                            local ht = _G["PlayerTalentFrameTalent" ..
                                           talentIndex]:CreateTexture(
                                           "$parent_LevelPreview", "BORDER")

                            ht:SetTexture(
                                "Interface/Buttons/ButtonHilight-Square")
                            ht:SetBlendMode("ADD")
                            ht:SetAllPoints(
                                _G["PlayerTalentFrameTalent" .. talentIndex ..
                                    "Slot"])

                            talentTooltips.highlights[talentIndex] = ht
                        end

                        setHighlightColor(talentIndex,
                                          upcomingTalent - playerLevel)

                        if levelsForIndex[talentIndex] then
                            tinsert(levelsForIndex[talentIndex],
                                    upcomingTalent)
                        else
                            levelsForIndex[talentIndex] = {
                                upcomingTalent
                            }
                        end

                    end

                end -- ipairs(element.talent)
            end -- ipairs(levelStep.elements)

        end -- if levelStep
    end

    -- Ensure all highlights and levelHeaders are shown/hidden as applicable
    for index, ht in pairs(talentTooltips.highlights) do

        if activeIndices[index] and activeIndices[index] == currentTab then
            -- Set levelHeader data from array data
            DrawTalentLevels(index, levelsForIndex[index])

            if not ht:IsShown() then ht:Show() end
            if not ht.levelHeader:IsShown() then ht.levelHeader:Show() end
        else
            if ht:IsShown() then ht:Hide() end
            if ht.levelHeader:IsShown() then ht.levelHeader:Hide() end
        end

    end

end

function addon.talents:BuildIndexLookup()
    local kind = PlayerTalentFrame.pet and GetPetTalentTree() or 'player'

    if indexLookup and indexLookup[kind] then return end

    indexLookup[kind] = {}

    local tier, column
    local name

    for tabIndex = 1, _G.GetNumTalentTabs(nil, PlayerTalentFrame.pet,
                                          PlayerTalentFrame.talentGroup) do
        indexLookup[kind][tabIndex] = {}

        for talentIndex = 1, _G.GetNumTalents(tabIndex, nil,
                                              PlayerTalentFrame.pet,
                                              PlayerTalentFrame.talentGroup) do
            name, _, tier, column = GetTalentInfo(tabIndex, talentIndex, nil,
                                                  PlayerTalentFrame.pet,
                                                  PlayerTalentFrame.talentGroup)
            if name then
                indexLookup[kind][tabIndex][tier] =
                    indexLookup[kind][tabIndex][tier] or {}
                indexLookup[kind][tabIndex][tier][column] = talentIndex
            end

        end
    end
end

function addon.talents:ProcessTalents(validate)
    if PlayerTalentFrame.pet then return self:ProcessPetTalents(validate) end

    self:BuildIndexLookup()

    local playerLevel = UnitLevel("player")

    local guide = self:GetCurrentGuide()

    if not guide then return end

    if validate and addon.settings.profile.debug then
        addon.comms.PrettyPrint("Validating %s", guide.displayname)
    end

    if playerLevel < guide.minLevel and not validate then
        addon.comms.PrettyPrint(L("Too low for %s"), guide.displayname) --
        return
    end

    if playerLevel > guide.maxLevel and not validate then
        addon.comms.PrettyPrint(L("Too high for %s"), guide.displayname) --
        return
    end

    -- TODO prevent max level toon loading wrong talent and costing gold to retrain

    local stepLevel, remainingPoints

    for stepNum, step in ipairs(guide.steps) do
        stepLevel = guide.minLevel + stepNum - 1

        if GetUnspentTalentPoints then
            remainingPoints = GetUnspentTalentPoints() -
                                  GetGroupPreviewTalentPointsSpent()
        else
            remainingPoints = UnitCharacterPoints("player")
        end

        if (stepLevel > playerLevel) or remainingPoints == 0 then
            if not validate and playerLevel == guide.maxLevel and guide.nextKey then
                addon.comms.PrettyPrint(L("Reached maximum level for guide"))

                if self:UpdateSelectedGuide(guide.nextKey) then
                    addon.comms.PrettyPrint(L("Loaded next guide, %s"),
                                            guide.next)
                end
            end

            return
        end

        -- print("Evaluating step", stepNum, "for level", stepLevel)
        local result

        for _, element in ipairs(step.elements) do
            for tag, _ in pairs(element) do
                -- print("Evaluating tag", tag)
                if self.functions[tag] then
                    -- print("Executing tag function", tag)
                    result = self.functions[tag](element, validate)
                else
                    result = false
                    addon.error(L("Error parsing guide") .. " " ..
                                    (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. tag .. ")\n" ..
                                    stepNum)
                end

                -- Exit processing if error found
                -- Rely on in-tag-function error output for user communication
                -- Explicitly require false, accept nil as truthy
                if result == false or result == -1 then
                    -- print("Aborting step processing", result)
                    return
                end
            end

        end

    end

end

-- Pet talents vary by spec, gained at 20 then every 4, just handle separately
function addon.talents:ProcessPetTalents(validate)
    self:BuildIndexLookup()

    local playerLevel = UnitLevel("player")

    local guide = self:GetCurrentGuide()

    if not guide or not guide.pet then return end

    if validate and addon.settings.profile.debug then
        addon.comms.PrettyPrint("Validating %s", guide.displayname)
    end

    if playerLevel < guide.minLevel and not validate then
        addon.comms.PrettyPrint(L("Too low for %s"), guide.displayname) --
        return
    end

    if playerLevel > guide.maxLevel and not validate then
        addon.comms.PrettyPrint(L("Too high for %s"), guide.displayname) --
        return
    end

    local remainingPoints

    for stepNum, step in ipairs(guide.steps) do
        remainingPoints = GetUnspentTalentPoints(nil, true) -
                              GetGroupPreviewTalentPointsSpent(true, 1)

        if remainingPoints == 0 then
            if not validate and playerLevel == guide.maxLevel then
                addon.comms.PrettyPrint(L("Reached maximum level for guide"))
            end

            return
        end

        -- print("Evaluating pet step", stepNum)
        local result

        for _, element in ipairs(step.elements) do
            for tag, _ in pairs(element) do
                -- print("Evaluating tag", tag)
                if self.functions[tag] then
                    -- print("Executing tag function", tag)
                    result = self.functions[tag](element, validate)
                else
                    result = false
                    addon.error(L("Error parsing guide") .. " " ..
                                    (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. tag .. ")\n" ..
                                    stepNum)
                end

                if result == false then
                    if addon.settings.profile.debug then
                        addon.comms.PrettyPrint(
                            "Aborting processing at step %d", stepNum)
                    end
                    return
                end
            end

        end

    end

end

_G.RXPGuides.talents = {RegisterGuide = addon.talents.RegisterGuide}
