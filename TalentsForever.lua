local _, addon = ...
if not addon.isForever then return end

local L = addon.locale.Get
local talents = addon:NewModule("ForeverTalentGuides", "AceEvent-3.0")
addon.talents = talents
talents.guides = {}
talents.maxLevel = GetMaxPlayerLevel()
local labels = setmetatable({}, {__mode = "k"})

local function getFrame()
    return PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame
end

function talents:ParseLegacyGuide(text)
    local guide = {class = addon.player.class, steps = {}}
    local minLevel, levelIndex, optional = 10, -1, false
    local slots = addon.classicTalentSpellIDs and addon.classicTalentSpellIDs[guide.class] or {}
    for line in text:gmatch("[^\r\n]+") do
        line = line:match("^%s*(.-)%s*$")
        if line:match("^level") then
            levelIndex, optional = levelIndex + 1, false
        elseif line == "#optional" then
            optional = true
        elseif line:match("^%.talent ") then
            local tab, row, column, rank = line:match("^%.talent%s+(%d+),(%d+),(%d+),(%d+)")
            local slot = tab and table.concat({tab, row, column}, ",")
            if not slot or not slots[slot] then
                guide.invalidReason = "This guide uses a talent slot without a verified spell identity."
            end
            guide.steps[#guide.steps + 1] = {spellID = slot and slots[slot],
                rank = tonumber(rank), level = minLevel + levelIndex, optional = optional}
        elseif levelIndex < 0 then
            local tag, value = line:match("^#(%S+)%s*(.*)")
            if tag then
                guide[tag] = value
                if tag == "minLevel" then minLevel = tonumber(value) or 10 end
            end
        end
    end
    guide.key = guide.key or (guide.class .. " - " .. (guide.name or "Unknown"))
    return guide
end

function talents.RegisterGuide(guide)
    if type(guide) == "string" then guide = talents:ParseLegacyGuide(guide) end
    if guide.class ~= addon.player.class then return end
    assert(type(guide.key) == "string" and type(guide.name) == "string", "Talent guide needs a key and name")
    assert(type(guide.steps) == "table" and #guide.steps > 0, "Talent guide needs steps")
    local ranks, previousLevel = {}, 0
    for _, step in ipairs(guide.steps) do
        if not step.spellID or not step.rank then
            guide.invalidReason = guide.invalidReason or "The guide contains an invalid talent step."
        else
            local previousRank = ranks[step.spellID] or 0
            if step.rank < previousRank or step.rank > previousRank + 1 then
                guide.invalidReason = "The guide contains a nonconsecutive talent rank."
            end
            ranks[step.spellID] = step.rank
        end
        assert(type(step.level) == "number" and step.level >= previousLevel, "Talent levels must be ordered")
        previousLevel = step.level
    end
    talents.guides[guide.key] = guide
end

function talents:IsSupported()
    return C_Traits and C_Traits.GetNodeInfo and next(self.guides) ~= nil
end

function talents:GetCurrentGuide()
    return RXPCData and self.guides[RXPCData.foreverTalentGuide or RXPCData.activeTalentGuide]
end

function talents:UpdateSelectedGuide(key)
    if not self.guides[key] then return end
    RXPCData.foreverTalentGuide = key
    local frame = getFrame()
    if frame then
        local plan, reason = self:ResolveGuide(self.guides[key], frame:GetConfigID())
        if not plan then addon.comms.PrettyPrint(reason) end
    end
    self:DrawTalents()
end

-- Resolve spells against the displayed configuration every time it changes.
-- Multiple matches, removed spells and changed rank limits invalidate the plan.
function talents:ResolveGuide(guide, configID)
    if guide.invalidReason then return nil, guide.invalidReason end
    local config = configID and C_Traits.GetConfigInfo(configID)
    if not config or not config.treeIDs then return nil, "Talent data is not ready." end
    local spells, nodes = {}, {}
    for _, treeID in ipairs(config.treeIDs) do
        local nodeIDs = C_Traits.GetTreeNodes(treeID)
        if not nodeIDs then return nil, "Talent data is not ready." end
        for _, nodeID in ipairs(nodeIDs) do
            local node = C_Traits.GetNodeInfo(configID, nodeID)
            if not node then return nil, "Talent data is not ready." end
            if node.isVisible then
                nodes[nodeID] = node
                for _, entryID in ipairs(node.entryIDs) do
                    local entry = C_Traits.GetEntryInfo(configID, entryID)
                    local definition = entry and entry.definitionID and C_Traits.GetDefinitionInfo(entry.definitionID)
                    if definition and definition.spellID then
                        local id = definition.spellID
                        if spells[id] ~= nil then
                            spells[id] = false
                        else
                            spells[id] = {nodeID = nodeID, entryID = entryID,
                                maxRanks = math.min(node.maxRanks, entry.maxRanks), node = node}
                        end
                    end
                end
            end
        end
    end
    local resolved, expected = {}, {}
    for _, step in ipairs(guide.steps) do
        local target = spells[step.spellID]
        if not target or step.rank > target.maxRanks or #target.node.entryIDs ~= 1 then
            return nil, string.format("This plan no longer matches talent %s.", C_Spell.GetSpellName(step.spellID) or step.spellID)
        end
        local resolvedStep = {nodeID = target.nodeID, entryID = target.entryID,
            spellID = step.spellID, rank = step.rank, level = step.level}
        if step.optional then
            local group = resolved[#resolved]
            if not group or not group.choices or group.level ~= step.level then
                group = {level = step.level, choices = {}}
                resolved[#resolved + 1] = group
            end
            group.choices[#group.choices + 1] = resolvedStep
        else
            resolved[#resolved + 1] = resolvedStep
        end
        expected[target.nodeID] = math.max(expected[target.nodeID] or 0, step.rank)
    end
    return {steps = resolved, nodes = nodes, expected = expected}
end

function talents:PreviewGuide()
    local frame, guide = getFrame(), self:GetCurrentGuide()
    if not frame or not frame:IsShown() or not guide then return end
    if InCombatLockdown() or frame:IsLocked() then return end
    local level = UnitLevel("player")
    if level < (tonumber(guide.minLevel) or 10) or level > (tonumber(guide.maxLevel) or self.maxLevel) then
        addon.comms.PrettyPrint("This talent guide is outside your current level range.")
        return
    end
    local configID = frame:GetConfigID()
    local plan, reason = self:ResolveGuide(guide, configID)
    if not plan then addon.comms.PrettyPrint(reason); return end
    for nodeID, node in pairs(plan.nodes) do
        if (node.ranksPurchased or 0) > (plan.expected[nodeID] or 0) then
            addon.comms.PrettyPrint("Your current talents differ from this plan. Adjust them in the talent window first.")
            return
        end
    end
    for _, step in ipairs(plan.steps) do
        if step.level > level then break end
        if step.choices then
            local selected, names = false, {}
            for _, choice in ipairs(step.choices) do
                local node = C_Traits.GetNodeInfo(configID, choice.nodeID)
                if node and node.currentRank >= choice.rank then selected = true end
                names[#names + 1] = C_Spell.GetSpellName(choice.spellID) or tostring(choice.spellID)
            end
            if not selected then
                addon.comms.PrettyPrint("Choose one talent for level %d in the talent window: %s",
                    step.level, table.concat(names, ", "))
                break
            end
        else
            local node = C_Traits.GetNodeInfo(configID, step.nodeID)
            if not node then break end
            if node.currentRank < step.rank then
                local previousRank = node.currentRank
                if not C_Traits.CanPurchaseRank(configID, step.nodeID, step.entryID) then break end
                -- Use Blizzard's staged operation and error handling. Apply remains
                -- a separate action in the native talent window.
                if not frame:PurchaseRank(step.nodeID) then break end
                local updated = C_Traits.GetNodeInfo(configID, step.nodeID)
                if not updated or updated.currentRank <= previousRank then break end
            end
        end
    end
    self:DrawTalents()
end

function talents:DrawTalents()
    for _, label in pairs(labels) do label:Hide() end
    local frame, guide = getFrame(), self:GetCurrentGuide()
    if not frame or not frame:IsShown() or not guide or not addon.settings.profile.enableTalentGuides
        or not addon.settings.profile.hightlightTalentPlan then return end
    local plan = self:ResolveGuide(guide, frame:GetConfigID())
    if not plan then return end
    local upcoming, count = {}, 0
    for _, step in ipairs(plan.steps) do
        local choices = step.choices or {step}
        local complete = false
        for _, choice in ipairs(choices) do
            if plan.nodes[choice.nodeID].currentRank >= choice.rank then complete = true end
        end
        if not complete then
            if count >= (addon.settings.profile.upcomingTalentCount or 5) then break end
            for _, choice in ipairs(choices) do
                upcoming[choice.nodeID] = upcoming[choice.nodeID] or {}
                table.insert(upcoming[choice.nodeID], tostring(step.level) .. (step.choices and "?" or ""))
            end
            count = count + 1
        end
    end
    for nodeID, levels in pairs(upcoming) do
        local button = frame:GetTalentButtonByNodeID(nodeID)
        if button then
            local label = labels[button]
            if not label then
                label = button:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
                label:SetPoint("TOP", button, "BOTTOM", 0, -2)
                labels[button] = label
            end
            label:SetText(table.concat(levels, ", "))
            label:Show()
        end
    end
end

function talents:ShowMenu()
    local menu = {{text = L("Available Guides"), isTitle = true, notCheckable = true}}
    local guides = {}
    for _, guide in pairs(self.guides) do
        if not guide.hardcore or addon.settings.profile.hardcore then guides[#guides + 1] = guide end
    end
    table.sort(guides, function(a, b) return a.name < b.name end)
    for _, guide in ipairs(guides) do
        local key = guide.key
        local level = UnitLevel("player")
        local minimum, maximum = tonumber(guide.minLevel) or 10, tonumber(guide.maxLevel) or self.maxLevel
        menu[#menu + 1] = {text = guide.name, checked = RXPCData.foreverTalentGuide == key,
            disabled = level < minimum or level > maximum,
            tooltipTitle = guide.name, tooltipText = string.format("%s: %d–%d", _G.LEVEL_RANGE, minimum, maximum),
            tooltipOnButton = true, tooltipWhileDisabled = true,
            func = function() self:UpdateSelectedGuide(key) end}
    end
    menu[#menu + 1] = {text = L("Preview talents"), notCheckable = true,
        disabled = not self:GetCurrentGuide(), func = function() self:PreviewGuide() end}
    addon:ShowMenu(menu, self.menuFrame, self.button, 0, 0, "MENU", 1)
end

function talents:QueueRefresh()
    if self.refreshQueued then return end
    self.refreshQueued = true
    C_Timer.After(0, function()
        self.refreshQueued = false
        self:DrawTalents()
    end)
end

function talents:AttachUI()
    local frame = getFrame()
    if not frame or self.button then return end
    local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    button:SetSize(170, 22)
    button:SetPoint("TOPLEFT", frame.BackgroundBorder or frame, "TOPLEFT", 24, 25)
    button:SetText(addon.title)
    button:SetScript("OnClick", function() self:ShowMenu() end)
    self.button = button
    self.menuFrame = CreateFrame("Frame", nil, button, "UIDropDownMenuTemplate")
    frame:HookScript("OnShow", function() self:QueueRefresh() end)
    hooksecurefunc(frame, "SetConfigID", function() self:QueueRefresh() end)
    hooksecurefunc(frame, "UpdateTreeInfo", function() self:QueueRefresh() end)
    self:QueueRefresh()
end

function talents:Setup()
    if self.initialized or not addon.settings.profile.enableTalentGuides or not self:IsSupported() then return end
    self.initialized = true
    self:RegisterEvent("ADDON_LOADED", "AttachUI")
    for _, event in ipairs({"TRAIT_CONFIG_UPDATED", "TRAIT_NODE_CHANGED", "PLAYER_TALENT_UPDATE", "PLAYER_LEVEL_UP"}) do
        self:RegisterEvent(event, "QueueRefresh")
    end
    self:AttachUI()
end
