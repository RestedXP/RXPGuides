local _, addon = ...

if addon.gameVersion > 50000 then return end

local GameTooltip = _G.GameTooltip
local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0", true)
local EasyMenu = function(...)
    if _G.EasyMenu then
        _G.EasyMenu(...)
    else
        LibDD:EasyMenu(...)
    end
end

local fmt, sgmatch, strsplittable, strjoin = string.format, string.gmatch, strsplittable, string.join
local tonumber = tonumber
local tinsert, tsort = tinsert, table.sort
local UnitLevel = UnitLevel
local GetPetTalentTree, GetUnspentTalentPoints, GetGroupPreviewTalentPointsSpent, AddPreviewTalentPoints,
      UnitCharacterPoints = _G.GetPetTalentTree, _G.GetUnspentTalentPoints, _G.GetGroupPreviewTalentPointsSpent,
                            _G.AddPreviewTalentPoints, _G.UnitCharacterPoints
local PanelTemplates_GetSelectedTab, PlayerTalentFrame = _G.PanelTemplates_GetSelectedTab, _G.PlayerTalentFrame
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
local indexLookup = {['player'] = {}}
local talentTooltips = {
    hooked = false,
    highlightColors = {
        [1] = {14 / 255, 131 / 255, 18 / 255}, -- RXP_BUY
        [2] = {0, 1, 37 / 255}, -- RXP_FRIENDLY
        [3] = {0, 1, 37 / 255}, -- RXP_FRIENDLY
        [4] = {0, 1, 37 / 255}, -- RXP_FRIENDLY
        [5] = {252 / 255, 220 / 250, 0} -- RXP_WARN
    }
}

local activeIndices, levelsForIndex

if addon.gameVersion < 40000 then
    -- Classic, TBC, Wrath use a single-tab view, each view change resets the highlight state
    -- These also share the same frame elements but different talentIndex
    talentTooltips.data = {}
    talentTooltips.highlights = {}
    activeIndices = {}
    levelsForIndex = {}
else
    -- Cata+ uses a three tab single view
    talentTooltips.cataPlan = {
        [1] = {
            -- [talentIndex] = { ['ht'] = hightlightFrame, ['levels'] = [11,12,13,21] }
        },
        [2] = {},
        [3] = {}
    }
end

function GetTableLength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

local function buildTalentGuidesMenu()
    local menu = {}

    local playerLevel = UnitLevel("player")
    local disabled, invalidReason, menuData = false, nil, nil
    local orderedGuides, unorderedGuides = {}, {}

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
                    tooltipTitle = fmt("%s: %s", _G.LEVEL_RANGE, guide.levelRange),
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
        tinsert(menu, {text = L("Available Guides"), isTitle = 1, notCheckable = 1})

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

            menuData = {
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

                    -- TODO should also audit?
                    if addon.talents:ProcessTalents('validate') then addon.talents:DrawTalents() end
                end
            }

            -- Hide hardcore guides when not hardcore
            if addon.game == "CLASSIC" and guide.hardcore then
                if addon.settings.profile.hardcore then
                    if guide.order then
                        menuData.guideOrder = guide.order
                        orderedGuides[guide.order] = menuData
                    else
                        tinsert(unorderedGuides, menuData)
                    end
                end
            else
                if guide.order then
                    menuData.guideOrder = guide.order
                    orderedGuides[guide.order] = menuData
                else
                    tinsert(unorderedGuides, menuData)
                end
            end
        end
    end

    -- LUA doesn't order tables well, so track sparse indices, then iterate over that
    local orderedGuidesOrder = {}
    for _, guideMenu in pairs(orderedGuides) do tinsert(orderedGuidesOrder, guideMenu.guideOrder) end

    table.sort(orderedGuidesOrder, function(k1, k2) return k1 < k2 end)

    for _, guideOrder in ipairs(orderedGuidesOrder) do tinsert(menu, orderedGuides[guideOrder]) end

    for _, guideMenu in ipairs(unorderedGuides) do tinsert(menu, guideMenu) end

    tinsert(menu, {text = "", notCheckable = 1, isTitle = 1})

    tinsert(menu, {
        text = _G.APPLY,
        notCheckable = 1,
        func = function() if addon.talents:Audit() then addon.talents:ProcessTalents() end end
    })

    if addon.settings.profile.debug then
        tinsert(menu, {text = "Audit", notCheckable = 1, func = function() addon.talents:Audit() end})
    end

    tinsert(menu, {text = _G.GAMEOPTIONS_MENU, notCheckable = 1, func = function() addon.settings.OpenSettings() end})

    tinsert(menu, {text = _G.CLOSE, notCheckable = 1, func = function(self) self:Hide() end})

    return menu
end

function addon.talents:IsSupported() return self.guides and next(self.guides) ~= nil and compatible end

function addon.talents:Setup()
    if not addon.settings.profile.enableTalentGuides then return end

    if not self:IsSupported() then return end

    self:RegisterEvent("ADDON_LOADED")

    self:UpdateSelectedGuide(RXPCData.activeTalentGuide)

    if tonumber(GetCVar("previewTalents")) == 0 and addon.game == "WOTLK" and addon.settings.profile.previewTalents then
        -- Talents are enabled in RXP, so match client
        -- This only lasts per session, does not persist in-game setting
        SetCVar("previewTalents", 1)
    end
end

function addon.talents:ADDON_LOADED(_, loadedAddon)
    -- Talent frame/globals get loaded on demand when it's first opened
    if loadedAddon == "Blizzard_TalentUI" then
        _G.PlayerTalentFrame:HookScript("OnShow", function() addon.talents:HookUI() end)

        _G.PlayerTalentFrame:HookScript("OnUpdate", function() self:DrawTalents() end)

        PlayerTalentFrame = _G.PlayerTalentFrame

        self:BuildIndexLookup()
    elseif loadedAddon == "Talented" then
        compatible = false
        addon.comms.PrettyPrint(L("Talented detected, please disable for talent guide functionality")) -- TODO locale
    end
end

function addon.talents:UpdateTalentsButton()
    local iconReference = {}

    if _G.PlayerSpecTab3 and _G.PlayerSpecTab3:IsShown() then -- Wrath hunter regardless of dual-spec
        iconReference.frame = _G.PlayerSpecTab3
        iconReference.size = iconReference.frame:GetWidth()

        -- Offset RXP button as much as Tab2 is from Tab1
        _, _, _, _, iconReference.offsetY = _G.PlayerSpecTab3:GetPoint()
        iconReference.point = {"TOP", iconReference.frame, "BOTTOM", 0, iconReference.offsetY}

    elseif _G.PlayerSpecTab2 and _G.PlayerSpecTab2:IsShown() then -- Dual spec non-hunter
        iconReference.frame = _G.PlayerSpecTab2
        iconReference.size = iconReference.frame:GetWidth()

        -- Offset RXP button as much as Tab2 is from Tab1
        _, _, _, _, iconReference.offsetY = _G.PlayerSpecTab2:GetPoint()

        iconReference.point = {"TOP", iconReference.frame, "BOTTOM", 0, iconReference.offsetY}
    elseif addon.game == "CATA" and _G.PlayerSpecTab1 then -- Cata, non dual-spec non-hunter
        iconReference.frame = _G.PlayerTalentFrame
        iconReference.size = 32
        iconReference.point = {"TOPLEFT", iconReference.frame, "TOPRIGHT", 0, -65}
    elseif _G.PlayerSpecTab1 then -- Wrath, non dual-spec non-hunter
        iconReference.frame = _G.PlayerTalentFrame
        iconReference.size = 32
        iconReference.point = {"TOPLEFT", iconReference.frame, "TOPRIGHT", -32, -65}
    elseif addon.game == "CLASSIC" then
        iconReference.frame = _G.PlayerTalentFrame
        iconReference.size = 32
        iconReference.point = {"TOPLEFT", iconReference.frame, "TOPRIGHT", -32, -65}
        -- elseif Retail
    else
        return nil
    end

    local button = self.talentsButton
    -- Build a button to match Wrath dual-spec talent tabs
    if not button then
        button = CreateFrame("Button", "$parentRXPTalents", iconReference.frame)
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
            if this:IsForbidden() or GameTooltip:IsForbidden() then return end
            GameTooltip:SetOwner(this, "ANCHOR_TOPLEFT", iconReference.size, 0)
            GameTooltip:ClearLines()

            local guide = addon.talents:GetCurrentGuide()
            if guide then
                GameTooltip:AddLine(guide.name)
                GameTooltip:AddLine(L("Left click to apply talents"), 0, 1, 0)
                GameTooltip:AddLine(fmt("%s: %d - %d", _G.LEVEL_RANGE, guide.minLevel, guide.maxLevel), 1, 1, 1)
            else
                GameTooltip:AddLine(L("Welcome to RestedXP Guides\nRight click to pick a guide"))
            end

            GameTooltip:Show()
        end)

        button:SetScript("OnLeave", function(this)
            if this:IsForbidden() or GameTooltip:IsForbidden() then return end
            GameTooltip:Hide()
        end)

        self.talentsButton = button
    end

    button:SetWidth(iconReference.size)
    button:SetHeight(iconReference.size)
    button:SetPoint(unpack(iconReference.point))

    return true
end

function addon.talents:HookUI()
    if not self:IsSupported() then return end

    if not self:UpdateTalentsButton() then
        addon.error(fmt("%s - %s", _G.TALENTS, _G.ADDON_NOT_AVAILABLE))

        return
    end

    if not talentTooltips.hooked then
        hooksecurefunc("PlayerTalentFrameTalent_OnEnter", talentTooltips.updateFunc)

        talentTooltips.hooked = true
    end

    if not self.menuFrame then
        self.menuFrame = CreateFrame("Frame", "RXP_TalentsMenuFrame", self.talentsButton, "UIDropDownMenuTemplate")

        self.talentsButton:SetScript("OnMouseUp", function(_, click)
            if click == "RightButton" then
                EasyMenu(buildTalentGuidesMenu(), self.menuFrame, self.talentsButton, 0, 0, "MENU", 1)
            else
                if self:Audit() then self:ProcessTalents() end
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
    local parseSuccess, internalParseFailure

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
            parseSuccess = line:gsub("^[%.#](%S+)%s*(.*)", function(command, lineArgs)
                if self.functions[command] then
                    -- print("Processing guide command", command, "with (", lineArgs, ")")
                    local element = self.functions[command](lineArgs)

                    if not element then
                        internalParseFailure = true
                        -- print("internalParseFailure", internalParseFailure)
                        return
                    end

                    tinsert(step.elements, element)
                elseif command == "optional" then -- Allowlisted step flags, preserve typo handling
                    step[command] = true
                else
                    addon.error(L("Error parsing guide") .. " " .. (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. command .. ")\n" .. line)
                end
            end)

        elseif line ~= "" then
            -- Parse metadata tags
            parseSuccess = line:gsub("^#(%S+)%s*(.*)", function(tag, value)
                -- print("Parsing guide tag at", linenumber, tag, value)
                -- Set metadata without overwriting
                if tag and tag ~= "" and not guide[tag] then guide[tag] = tonumber(value) or value end
            end)

        end

        if not parseSuccess or internalParseFailure then
            addon.comms.PrettyPrint("%s: Critical failure for $s", L("Error parsing guide"),
                                    guide.name or guide.key or 'Unknown')

            return
        end
    end

    -- Ensure guide tags exist with good defaults
    if not guide.name then
        addon.comms.PrettyPrint("%s: Missing #%s", L("Error parsing guide"), "name")
        return
    end

    guide.minLevel = tonumber(guide.minLevel) or 10
    guide.maxLevel = tonumber(guide.maxLevel) or addon.talents.maxLevel
    guide.levelRange = fmt("%d-%d", guide.minLevel, guide.maxLevel)
    guide.description = guide.description or fmt("%s - %s (%s)", addon.player.localeClass, guide.name, guide.levelRange)
    guide.displayname = guide.displayname or guide.description
    guide.key = guide.key or fmt("%s - %s", addon.player.class, guide.name)
    guide.nextKey = guide.next and fmt("%s - %s", addon.player.class, guide.next)

    return guide
end

function GetTalentData(tab, talentIndex)
    local name, previewRankOrRank

    if addon.game == "CATA" then
        name, _, _, _, _, _, _, previewRankOrRank = GetTalentInfo(tab, talentIndex)
    elseif addon.game == "WOTLK" then
        name, _, _, _, _, _, _, _, previewRankOrRank, _ = GetTalentInfo(tab, talentIndex)
    else
        name, _, _, _, previewRankOrRank = GetTalentInfo(tab, talentIndex)
    end

    return name, previewRankOrRank
end

function addon.talents:Audit()
    if PlayerTalentFrame.pet then return end

    self:BuildIndexLookup()

    if not indexLookup['player'].initialized then return end

    local guide = self:GetCurrentGuide()

    if not guide then return end

    addon.comms.PrettyDebug("Auditing %s", guide.displayname)

    -- TODO consolidate with ProcessGuide
    if addon.game == "CATA" then addon.talents.cata:SkipTalentSummariesPage(guide) end

    if addon.player.level < guide.minLevel then
        addon.comms.PrettyPrint(L("Too low for %s"), guide.displayname) --
        return
    end

    if addon.player.level > guide.maxLevel then
        addon.comms.PrettyPrint(L("Too high for %s"), guide.displayname) --
        return
    end

    -- learnedTalents["1,2,3"] = 4
    local learnedTalents = {}

    local previewRankOrRank

    -- Build lookup of all talents and ranks
    for tab, tiers in pairs(indexLookup['player']) do
        -- Exclude indexLookup['player'].initialized
        for tier, columns in pairs(type(tiers) == "table" and tiers or {}) do
            for column, index in pairs(columns) do
                _, previewRankOrRank = GetTalentData(tab, index)

                -- Only track decisions that may impact guide
                if previewRankOrRank > 0 then
                    learnedTalents[fmt("%d,%d,%d", tab, tier, column)] = previewRankOrRank
                end
            end
        end
    end

    local stepLevel, remainingPoints
    local optionalLearned
    local expectedRank, auditFailed, talentKey

    for stepNum, step in ipairs(guide.steps) do
        if GetUnspentTalentPoints then
            remainingPoints = GetUnspentTalentPoints() - GetGroupPreviewTalentPointsSpent()
        else
            remainingPoints = UnitCharacterPoints("player")
        end

        stepLevel = guide.minLevel + stepNum - 1

        -- If reached exit condition, evaluate if any leftover learnedTalents
        -- Audit up to stepLevel minus any remainingPoints, unspent points don't break Apply
        if stepLevel > addon.player.level - remainingPoints then
            -- If no remaining learnedTalents, nothing to conflict
            -- print("Audit up to level", stepLevel, GetTableLength(learnedTalents) == 0)
            guide.audit = GetTableLength(learnedTalents) == 0
            return guide.audit
        end

        -- print("Evaluating step", stepNum, "for level", stepLevel)
        if step.optional then optionalLearned = nil end

        for _, element in ipairs(step.elements) do

            -- Level steps can have multiple .talent underneath, only for #optional
            for tag, _ in pairs(element) do
                if tag == "talent" then

                    for _, talentData in ipairs(element.talent) do
                        talentKey = fmt("%d,%d,%d", talentData.tab, talentData.tier, talentData.column)

                        -- learnedTalents[fmt("%d,%d,%d", tab, tier, column)] = previewRankOrRank
                        expectedRank = learnedTalents[talentKey]

                        -- Already inventoried all talents, so reduce GetTalentData call by checking learnedTalents first
                        if expectedRank then
                            -- Remove learnedTalents from audit if they are identical
                            if expectedRank == talentData.rank then
                                learnedTalents[talentKey] = nil
                                -- else -- Rank 1-4, removed above when rank 5
                                --    print("Else", talentKey), talentData.rank)
                            end
                        else
                            if not step.optional then
                                addon.comms.PrettyDebug('%s - Audit failed for level %d', guide.name, stepLevel)
                            end

                            if not optionalLearned then
                                -- Avoid blocking on user action if talent exists in any optional blocks
                                optionalLearned = talentKey
                            end

                            auditFailed = true
                        end

                    end
                end
            end
        end

        if step.optional and optionalLearned then auditFailed = false end

        if auditFailed then
            addon.comms:PopupNotification("RXPTalentsAuditFailed",
                                          fmt("%s - %s\n\n%s\n%s %s - %s", addon.title, _G.TALENTS, guide.name,
                                              _G.TALENTS, strlower(_G.ADDON_INCOMPATIBLE), strlower(_G.RESET_TO_DEFAULT)))

            guide.audit = false
            return false
        end
    end

    guide.audit = true
    return true
end

-- { tab, talentIndex, name }
local function learnClassicTalent(payload)
    if addon.game ~= "CLASSIC" then return end

    local tab, talentIndex, name = unpack(payload)
    local result = LearnTalent(tab, talentIndex)

    if result then
        addon.comms.PrettyPrint("%s - %s", _G.TRADE_SKILLS_LEARNED_TAB, name)
        -- else
        -- addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN, name))
    end

    return result
end

function addon.talents.functions.talent(element, validate, optional)
    if type(element) == "string" then -- on parse
        -- TODO if more than one .talent in a step without #optional, error
        local e = {talent = {}}
        local args = element
        -- Strip whitespace
        args = args:gsub("%s*,%s*", ",")

        local tab, tier, column, rank = strsplit(',', args)
        -- print("Inserting talent", arg)
        tinsert(e.talent,
                {tab = tonumber(tab), tier = tonumber(tier), column = tonumber(column), rank = tonumber(rank) or 1})

        return e
    end

    local talentIndex
    local name, previewRankOrRank
    local lookup
    local tempData

    for _, talentData in ipairs(element.talent) do
        lookup = indexLookup['player'][talentData.tab]

        if not (lookup and lookup[talentData.tier] and lookup[talentData.tier][talentData.column]) then

            addon.comms.PrettyPrint("Invalid talentIndex lookup for [%d][%d][%d]", talentData.tab, talentData.tier,
                                    talentData.column)
            return false
        end

        talentIndex = lookup[talentData.tier][talentData.column]

        name, previewRankOrRank = GetTalentData(talentData.tab, talentIndex)

        if optional then
            if previewRankOrRank == talentData.rank then
                addon.comms.PrettyPrint("%s - (%s) %s (%s %d)", _G.TRADE_SKILLS_LEARNED_TAB,
                                        _G.COMMUNITIES_CHANNEL_DESCRIPTION_INSTRUCTIONS, name, _G.RANK, talentData.rank)

                -- Handle in level step processing, if return value is rank from at least one optional step, continue
                return true, fmt("%s (%s %d)", _G.RANK, talentData.rank)
            end

            -- Return false if not selected, check upstream to verify at least one #optional step talent chosen
            return false, fmt("%s (%s %d)", name, _G.RANK, talentData.rank)
        end

        if previewRankOrRank < talentData.rank then
            if validate then return true end

            if addon.game == "CLASSIC" then -- Classic doesn't have Preview Talents
                tempData = {talentData.tab, talentIndex, name}

                addon.comms:ConfirmChoice("RXPTalentPrompt", fmt(_G.CONFIRM_LEARN_TALENT, name), learnClassicTalent,
                                          tempData)

                -- Stop as soon as first learning prompt, not a blocking dialog
                return -1
            elseif addon.settings.profile.previewTalents then -- TBC/Wrath/Cata
                tempData = GetGroupPreviewTalentPointsSpent()
                AddPreviewTalentPoints(talentData.tab, talentIndex, 1)

                -- Verify training actually worked, there's no return value from Preview
                if tempData == GetGroupPreviewTalentPointsSpent() then
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN, name))
                    return false
                end

                addon.comms.PrettyPrint("%s - %s (%s %d)", _G.PREVIEW, name, _G.RANK, talentData.rank)
            else -- TBC/Wrath/Cata, not previewed
                if LearnTalent(talentData.tab, talentIndex) then
                    addon.comms.PrettyPrint("%s - %s (%s %d)", _G.TRADE_SKILLS_LEARNED_TAB, name, _G.RANK,
                                            talentData.rank)
                else
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN, name))
                    return false
                end
            end
        end

    end

    return true
end

function addon.talents.functions.pettalent(element, validate)
    if addon.game ~= "WOTLK" then return end

    if type(element) == "string" then -- on parse
        local e = {pettalent = {}}
        local args = element
        -- Strip whitespace
        args = args:gsub("%s*,%s*", ",")

        local tab, tier, column, rank = strsplit(',', args)

        -- print("Inserting pettalent", arg)
        tinsert(e.pettalent,
                {tab = tonumber(tab), tier = tonumber(tier), column = tonumber(column), rank = tonumber(rank) or 1})

        return e
    end

    local talentIndex
    local name, previewRankOrRank
    local lookup

    for _, talentData in pairs(element.pettalent) do
        lookup = indexLookup[GetPetTalentTree()][talentData.tab]

        if not (lookup and lookup[talentData.tier] and lookup[talentData.tier][talentData.column]) then

            addon.comms.PrettyPrint("Invalid pet talentIndex lookup for [%d][%d][%d]", talentData.tab, talentData.tier,
                                    talentData.column)
            return false
        end

        talentIndex = lookup[talentData.tier][talentData.column]

        if talentIndex and validate then return true end

        name, _, _, _, _, _, _, _, previewRankOrRank, _ = GetTalentInfo(talentData.tab, talentIndex, nil, true)

        -- TODO handle off-plan talents
        if name and previewRankOrRank < talentData.rank then
            if addon.settings.profile.previewTalents then
                local before = GetGroupPreviewTalentPointsSpent(true, 1)
                AddPreviewTalentPoints(talentData.tab, talentIndex, 1, true, PlayerTalentFrame.talentGroup)

                -- Verify training actually worked, there's no return value from Preview
                if before == GetGroupPreviewTalentPointsSpent(true, 1) then
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN, name))
                    return false
                end

                addon.comms.PrettyPrint("%s - %s (%s %d)", _G.PREVIEW, name, _G.RANK, talentData.rank)
            else
                if LearnTalent(talentData.tab, talentIndex, true) then
                    addon.comms.PrettyPrint("%s - %s (%s %d)", _G.TRADE_SKILLS_LEARNED_TAB, name, _G.RANK,
                                            talentData.rank)
                else
                    addon.error(fmt("%s - %s", _G.ERR_TALENT_FAILED_UNKNOWN, name))
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
        return self.guides[RXPCData.activeTalentGuide]
    end
end

function addon.talents:UpdateSelectedGuide(key)
    if not key then return end

    if not self.guides[key] then return end

    if UnitLevel("player") < self.guides[key].minLevel then
        addon.comms.PrettyPrint(L("Too low for %s"), self.guides[key].displayname)

        return
    end

    if addon.game == "CATA" then self.cata.CleanupTalentPlan() end

    -- This is shared, so errors on swapping if shared profiles are used!
    -- e.g. Hunter guide loaded but load in a Shaman
    RXPCData.activeTalentGuide = key
    -- print("RXPCData.activeTalentGuide", RXPCData.activeTalentGuide)
    return true
end

if addon.game ~= "CATA" then
    talentTooltips.updateFunc = function(self)
        local tooltip = talentTooltips.data[self:GetID()]
        if not tooltip then return end

        -- Handle refreshing of UI
        GameTooltip:AddLine(tooltip, 1, 1, 1)

        -- Force tooltip redraw
        GameTooltip:Show()
    end
else
    talentTooltips.updateFunc = function(talentIndexFrame)
        if not (talentIndexFrame.RXP and talentIndexFrame.RXP.levels) then return end

        -- Because drawing at tooltip time, extra step required to order it vs everytime in drawTalents
        local sorted_levels = {}
        for l, _ in pairs(talentIndexFrame.RXP.levels) do tinsert(sorted_levels, l) end

        tsort(sorted_levels)

        local levelsCsv = ''
        for _, level in pairs(sorted_levels) do levelsCsv = fmt('%s%d ', levelsCsv, level) end

        -- Only calculate string on tooltip hover, vs every DrawTalents like on Era
        local rxpTooltip = fmt("%s\n%s%s: %s %s|r", talentIndexFrame.RXP.tooltipTextHeader, addon.colors.tooltip,
                               _G.TRADE_SKILLS_LEARNED_TAB, _G.LEVEL, levelsCsv)
        -- Handle refreshing of UI
        GameTooltip:AddLine(rxpTooltip, 1, 1, 1)

        -- Force tooltip redraw
        GameTooltip:Show()
    end
end

local function DrawTalentLevels(talentIndex, numbers)
    local ht = talentTooltips.highlights[talentIndex]

    if not ht then return end

    if not ht.levelHeader then
        ht.levelHeader = CreateFrame("Frame", "$parent_levelText", _G["PlayerTalentFrameTalent" .. talentIndex],
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
        ht.levelHeader.text:SetFont(addon.font, 7, "OUTLINE")
        ht.levelHeader:SetPoint("TOPLEFT", ht, -3, 0)
    elseif #numbers == 4 then
        ht.levelHeader.text:SetFont(addon.font, 9, "OUTLINE")
        ht.levelHeader:SetPoint("TOPLEFT", ht, -1, 0)
    else
        ht.levelHeader.text:SetFont(addon.font, 10, "OUTLINE")
        ht.levelHeader:SetPoint("TOPLEFT", ht, 1, 0)
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

    -- Intialization race condition at login, silently ignore instead of spammy or retries
    if not indexLookup['player'].initialized then return end

    if addon.game == "CATA" then return addon.talents.cata:DrawTalents(guide) end

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
        remainingPoints = GetUnspentTalentPoints() - GetGroupPreviewTalentPointsSpent()
    else
        remainingPoints = UnitCharacterPoints("player")
    end

    local playerLevel = addon.player.level
    local advancedWarning = playerLevel + addon.settings.profile.upcomingTalentCount
    wipe(talentTooltips.data)

    -- If audit failed, draw the entire range
    if guide.audit == false then
        playerLevel = guide.minLevel - 1
        -- Keep existing player level based advancedWarning
    end

    -- Track state better than with Blizz frame re-use
    wipe(activeIndices)
    wipe(levelsForIndex)

    local newHightlightTexture, tooltipPrefix

    -- Create highlight frames and set data objects for later processing
    for upcomingTalent = (playerLevel + 1 - remainingPoints), advancedWarning do

        levelStep = guide.steps[upcomingTalent - guide.minLevel + 1]

        if levelStep then
            tooltipPrefix = levelStep.optional and _G.COMMUNITIES_CHANNEL_DESCRIPTION_INSTRUCTIONS or
                                _G.TRADE_SKILLS_LEARNED_TAB

            for _, element in ipairs(levelStep.elements) do
                for _, talentData in ipairs(element.talent) do

                    talentIndex = indexLookup['player'][talentData.tab][talentData.tier][talentData.column]

                    if currentTab == talentData.tab then
                        activeIndices[talentIndex] = talentData.tab

                        talentTooltips.data[talentIndex] = talentTooltips.data[talentIndex] or
                                                               fmt("\n%s - %s", addon.title, guide.name)

                        talentTooltips.data[talentIndex] = fmt("%s\n%s%s: %s %d|r", talentTooltips.data[talentIndex],
                                                               addon.colors.tooltip, tooltipPrefix, _G.LEVEL,
                                                               upcomingTalent)

                        -- TODO Pre-seed tooltip to prevent delay

                        if not talentTooltips.highlights[talentIndex] then
                            newHightlightTexture = _G["PlayerTalentFrameTalent" .. talentIndex]:CreateTexture(
                                                       "$parent_LevelPreview", "BORDER")

                            newHightlightTexture:SetTexture("Interface/Buttons/ButtonHilight-Square")
                            newHightlightTexture:SetBlendMode("ADD")
                            newHightlightTexture:SetAllPoints(_G["PlayerTalentFrameTalent" .. talentIndex .. "Slot"])

                            talentTooltips.highlights[talentIndex] = newHightlightTexture
                        end

                        setHighlightColor(talentIndex, upcomingTalent - playerLevel)

                        if levelsForIndex[talentIndex] then
                            tinsert(levelsForIndex[talentIndex], upcomingTalent)
                        else
                            levelsForIndex[talentIndex] = {upcomingTalent}
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

    if indexLookup[kind] and indexLookup[kind].initialized then return end

    indexLookup[kind] = {}

    local tier, column
    local name

    -- print("BuildIndexLookup() looping", kind)

    for tabIndex = 1, _G.GetNumTalentTabs(nil, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup) do
        indexLookup[kind][tabIndex] = {}

        for talentIndex = 1, _G.GetNumTalents(tabIndex, nil, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup) do
            name, _, tier, column = GetTalentInfo(tabIndex, talentIndex, nil, PlayerTalentFrame.pet,
                                                  PlayerTalentFrame.talentGroup)
            if name then
                indexLookup[kind][tabIndex][tier] = indexLookup[kind][tabIndex][tier] or {}
                indexLookup[kind][tabIndex][tier][column] = talentIndex
            end

        end
    end

    if indexLookup[kind][1] and indexLookup[kind][1][1] then indexLookup[kind].initialized = true end
end

function addon.talents:ProcessTalents(validate)
    if PlayerTalentFrame.pet then return self:ProcessPetTalents(validate) end

    self:BuildIndexLookup()

    local playerLevel = UnitLevel("player")

    local guide = self:GetCurrentGuide()

    if not guide then return end

    -- Somehow guide not audited, force an audit
    if guide.audit == nil then self:Audit() end

    if guide.audit ~= true then return end

    if validate then addon.comms.PrettyDebug("Validating %s", guide.displayname) end

    if playerLevel < guide.minLevel and not validate then
        addon.comms.PrettyPrint(L("Too low for %s"), guide.displayname) --
        return
    end

    if playerLevel > guide.maxLevel and not validate then
        addon.comms.PrettyPrint(L("Too high for %s"), guide.displayname) --
        return
    end

    if addon.game == "CATA" then addon.talents.cata:SkipTalentSummariesPage(guide) end

    local stepLevel, remainingPoints, result
    local optionalName, optionalLearned, optionalNotLearned

    for stepNum, step in ipairs(guide.steps) do
        stepLevel = guide.minLevel + stepNum - 1

        if GetUnspentTalentPoints then
            remainingPoints = GetUnspentTalentPoints() - GetGroupPreviewTalentPointsSpent()
        else
            remainingPoints = UnitCharacterPoints("player")
        end

        if (stepLevel > playerLevel) or remainingPoints == 0 then
            if not validate and playerLevel == guide.maxLevel and guide.nextKey then
                addon.comms.PrettyPrint(L("Reached maximum level for guide"))

                if self:UpdateSelectedGuide(guide.nextKey) then
                    addon.comms.PrettyPrint(L("Loaded next guide, %s"), guide.next)
                end
            end

            return
        end

        -- print("Evaluating step", stepNum, "for level", stepLevel)
        if step.optional then
            optionalLearned = nil
            optionalNotLearned = {}
        end

        for _, element in ipairs(step.elements) do

            -- Level steps can have multiple .talent underneath, only for #optional
            for tag, _ in pairs(element) do
                -- print("Evaluating tag", tag)
                if self.functions[tag] then
                    -- print("Executing tag function", tag)
                    result, optionalName = self.functions[tag](element, validate, step.optional)
                else
                    result = false
                    addon.error(L("Error parsing guide") .. " " .. (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. tag .. ")\n" .. stepNum)
                end

                if step.optional and optionalName then
                    -- .talent optional returns {true, name} if learned or {false, name} if not learned
                    if result then
                        -- Avoid blocking on user action if talent exists in any optional blocks
                        optionalLearned = optionalName
                    else
                        -- Specific optional .talent not learned
                        tinsert(optionalNotLearned, optionalName)
                    end
                elseif result == false or result == -1 then
                    -- Exit processing if error found
                    -- Rely on in-tag-function error output for user communication
                    -- Explicitly require false, accept nil as truthy
                    -- print("Aborting step processing", result)

                    return
                end
            end
        end

        if step.optional and not optionalLearned then
            addon.comms:PopupNotification("RXPTalentsMissingOptional",
                                          fmt("%s %s %s: %s\n%s\n\n%s", _G.ADDON_MISSING, _G.OPTIONAL,
                                              strlower(_G.TALENT_POINTS), fmt(_G.UNIT_LEVEL_TEMPLATE, stepLevel),
                                              _G.TALENT_BUTTON_TOOLTIP_SELECT_INSTRUCTIONS,
                                              strjoin("\n", unpack(optionalNotLearned))))
            return
        end

    end

end

-- Pet talents vary by spec, gained at 20 then every 4, just handle separately
function addon.talents:ProcessPetTalents(validate)
    self:BuildIndexLookup()

    local playerLevel = UnitLevel("player")

    local guide = self:GetCurrentGuide()

    if not guide or not guide.pet then return end

    if validate then addon.comms.PrettyDebug("Validating %s", guide.displayname) end

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
        remainingPoints = GetUnspentTalentPoints(nil, true) - GetGroupPreviewTalentPointsSpent(true, 1)

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
                    result = self.functions[tag](element, validate, step.optional)
                else
                    result = false
                    addon.error(L("Error parsing guide") .. " " .. (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. tag .. ")\n" .. stepNum)
                end

                if result == false then
                    addon.comms.PrettyDebug("Aborting processing at step %d", stepNum)
                    return
                end
            end

        end

    end

end

addon.talents.cata = {}

function addon.talents.cata:SkipTalentSummariesPage(guide)
    if _G.PanelTemplates_GetSelectedTab(PlayerTalentFrame) == _G.GLYPH_TALENT_TAB then
        _G["PlayerTalentFrameTab" .. _G.TALENTS_TAB]:Click()
    end
    -- Cata uses gives summary of trees on fresh 10/respec "View Talent Trees"
    if _G.PlayerTalentFramePanel1Summary:IsShown() then
        -- Click to leverage PlayerTalentFrame_ShowOrHideSummaries to show talents
        _G.PlayerTalentFrameToggleSummariesButton:Click()
    end

    -- then "Select a X Specialization" based on first talent chosen
    local firstTalentTab = -1

    for _, step in ipairs(guide.steps) do
        if firstTalentTab > -1 then break end

        for _, element in ipairs(step.elements) do
            if element.talent and element.talent[1] and element.talent[1].tab then
                firstTalentTab = element.talent[1].tab
                break
            end
        end
    end

    local firstTalentTabButton = _G["PlayerTalentFramePanel" .. firstTalentTab .. "SelectTreeButton"]
    if firstTalentTabButton then
        if firstTalentTabButton:IsShown() then firstTalentTabButton:Click() end
    else
        -- Failure to get first tab, panic?
    end
end

local function cataDrawTalentLevels(talentIndexFrameName, levels)
    local talentIndexFrame = _G[talentIndexFrameName]
    if not talentIndexFrame then return end

    if not talentIndexFrame.levelHeader then
        local anchor = _G[talentIndexFrameName .. 'IconOverlay']
        talentIndexFrame.levelHeader = CreateFrame("Frame", "$parent_RXPLevelText", anchor or talentIndexFrame,
                                                   BackdropTemplate)

        talentIndexFrame.levelHeader:SetPoint("BOTTOMLEFT", talentIndexFrame, "TOPLEFT", 0, -4)
        talentIndexFrame.levelHeader.text = talentIndexFrame.levelHeader:CreateFontString(nil, "OVERLAY")

        talentIndexFrame.levelHeader.text:ClearAllPoints()
        talentIndexFrame.levelHeader.text:SetPoint("LEFT", talentIndexFrame.levelHeader, 0, 0)
        talentIndexFrame.levelHeader.text:SetJustifyH("LEFT")
        talentIndexFrame.levelHeader.text:SetJustifyV("MIDDLE")

        talentIndexFrame.levelHeader.text:SetTextColor(unpack(addon.activeTheme.textColor))
        talentIndexFrame.levelHeader.text:SetFont(addon.font, 8, "OUTLINE")
    end

    -- TODO cache optimization
    -- Because drawing at tooltip time, extra step required to order it
    local sorted_levels = {}
    for l, _ in pairs(levels) do tinsert(sorted_levels, l) end

    tsort(sorted_levels)
    local newText = '' .. strjoin(',', unpack(sorted_levels))

    -- If 5 levels of preview, overlaps with nearby
    if #sorted_levels < 4 then
        -- talentIndexFrame.levelHeader.text:SetFont(addon.font, 8, "OUTLINE")
        talentIndexFrame.levelHeader:SetPoint("BOTTOMLEFT", talentIndexFrame, "TOPLEFT", 0, -4)
    else
        -- talentIndexFrame.levelHeader.text:SetFont(addon.font, 8, "OUTLINE")
        talentIndexFrame.levelHeader:SetPoint("BOTTOMLEFT", talentIndexFrame, "TOPLEFT", -2 * #sorted_levels, -4)
    end

    -- No changes, prevent uneeded UI calls
    if talentIndexFrame.levelHeader.text:GetText() == newText then return end

    talentIndexFrame.levelHeader.text:SetText(newText)
    talentIndexFrame.levelHeader:SetSize(talentIndexFrame.levelHeader.text:GetStringWidth() + 10, 17)
end

-- https://www.wowhead.com/guide=cataclysm&mastery#talents
local cataTalentLevels = {
    10, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65,
    67, 69, 71, 73, 75, 77, 79, 81, 82, 83, 84, 85
}

local function lookupTalentLevel(nextTalentStepIndex) return cataTalentLevels[nextTalentStepIndex] end

function addon.talents.cata:DrawTalents(guide)
    guide = guide or self:GetCurrentGuide()
    if not guide then return end

    if not PlayerTalentFrame:IsShown() then return end
    if PlayerTalentFrame.pet then return end

    -- Initialization issue, probably Glyphs tab loaded at first login
    -- Silently exit instead of spammy errors or BuildIndexLookup retries
    if not indexLookup['player'].initialized then return end

    -- hightlightTalentPlan doesn't include highlights in Cata
    if not addon.settings.profile.hightlightTalentPlan then
        -- If disabled, cleanup old draws for dynamic settings
        self.CleanupTalentPlan()

        return
    end

    local remainingPoints, levelStep, talentIndex

    if GetUnspentTalentPoints then
        remainingPoints = GetUnspentTalentPoints() - GetGroupPreviewTalentPointsSpent()
    else
        remainingPoints = UnitCharacterPoints("player")
    end

    local playerLevel = UnitLevel("player")

    local advancedWarning = playerLevel + addon.settings.profile.upcomingTalentCount

    -- TODO cache data if unchanged
    local talentInfo, levelLookup, levelStepIndex

    -- Create plan frames and set data objects for later processing
    for upcomingTalent = (playerLevel + 1 - remainingPoints), advancedWarning do
        levelStepIndex = upcomingTalent - guide.minLevel + 1
        levelStep = guide.steps[levelStepIndex]

        if levelStep then

            for _, element in ipairs(levelStep.elements) do
                for _, talentData in ipairs(element.talent) do

                    talentIndex = indexLookup['player'][talentData.tab][talentData.tier][talentData.column]

                    if talentTooltips.cataPlan[talentData.tab][talentIndex] then
                        talentInfo = talentTooltips.cataPlan[talentData.tab][talentIndex]
                    else
                        talentInfo = {
                            levels = {},
                            talentData = talentData,
                            tooltipTextHeader = fmt("%s - %s", addon.title, guide.name)
                        }

                        talentTooltips.cataPlan[talentData.tab][talentIndex] = talentInfo
                    end

                    levelLookup = lookupTalentLevel(levelStepIndex)
                    if not levelLookup then
                        -- Error looking up level, misformatted guide
                        return
                    end

                    if levelLookup and not talentInfo.levels[levelLookup] then
                        talentInfo.levels[levelLookup] = levelLookup
                    end

                    if not talentInfo.talentIndexFrameName then
                        talentInfo.talentIndexFrameName = "PlayerTalentFramePanel" .. talentData.tab .. "Talent" ..
                                                              talentIndex
                        talentInfo.talentIndexFrame = _G[talentInfo.talentIndexFrameName]

                        -- Add reverse lookup for tooltip updateFunc logic
                        talentInfo.talentIndexFrame.RXP = talentInfo
                    end

                end -- ipairs(element.talent)
            end -- ipairs(levelStep.elements)

        end -- if levelStep
    end

    -- Ensure all plans and levelHeaders are shown/hidden as applicable
    for _, tabData in pairs(talentTooltips.cataPlan) do
        for _, tInfo in pairs(tabData) do
            cataDrawTalentLevels(tInfo.talentIndexFrameName, tInfo.levels)

            if not _G[tInfo.talentIndexFrameName].levelHeader:IsShown() then
                _G[tInfo.talentIndexFrameName].levelHeader:Show()
            end
        end
    end
end

function addon.talents.cata.CleanupTalentPlan()
    if _G.PlayerTalentFrameResetButton_OnClick then _G.PlayerTalentFrameResetButton_OnClick() end

    local f

    for _, tabData in pairs(talentTooltips.cataPlan) do
        for _, tInfo in pairs(tabData) do
            f = _G[tInfo.talentIndexFrameName]

            if f and f.levelHeader and f.levelHeader:IsShown() then
                f.levelHeader:Hide()

                if f.levelHeader.text then f.levelHeader.text:SetText(nil) end
            end

            wipe(tInfo.levels)
        end
    end
end

_G.RXPGuides.talents = {RegisterGuide = addon.talents.RegisterGuide}
