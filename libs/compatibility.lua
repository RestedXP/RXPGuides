local addonName, addon = ...

-- Forever has Classic content and the mainline API. Keep these separate.
local interfaceVersion = select(4, GetBuildInfo())
addon.isForever = interfaceVersion >= 16000 and interfaceVersion < 20000
addon.hasSecretValues = type(issecretvalue) == "function"
addon.IsSecretValue = issecretvalue or function() return false end
local isSecret = addon.IsSecretValue

function addon.GetTooltipItem(tooltip)
    if tooltip:IsForbidden() then return end
    if TooltipUtil and TooltipUtil.GetDisplayedItem and tooltip.IsTooltipType
        and tooltip.GetPrimaryTooltipData then
        return TooltipUtil.GetDisplayedItem(tooltip)
    elseif tooltip.GetItem then
        return tooltip:GetItem()
    end
end

function addon.AreAurasReadable()
    return not (C_Secrets and C_Secrets.ShouldAurasBeSecret and C_Secrets.ShouldAurasBeSecret())
end

local auraFields = {"name", "icon", "applications", "dispelName", "duration",
    "expirationTime", "sourceUnit", "isStealable", "nameplateShowPersonal", "spellId"}
function addon.UnpackPublicAuraData(data)
    if not data then return end
    for _, field in ipairs(auraFields) do
        if isSecret(data[field]) then return end
    end
    -- Only the first ten legacy fields are consumed by RXPGuides. In particular,
    -- do not unpack the modern points table, which may contain secret values.
    return data.name, data.icon, data.applications, data.dispelName, data.duration,
        data.expirationTime, data.sourceUnit, data.isStealable, data.nameplateShowPersonal, data.spellId
end

function addon.GetUnitGUID(unit)
    local guid = UnitGUID(unit)
    if not isSecret(guid) then return guid end
end

-- Consumers of these adapters expect the old positional return values.
function addon.GetQuestLogTitle(index)
    if C_QuestLog and C_QuestLog.GetInfo then
        local info = C_QuestLog.GetInfo(index)
        if not info then return end
        local complete
        if not info.isHeader and info.questID and info.questID > 0 then
            complete = C_QuestLog.IsComplete(info.questID)
        end
        return info.title, info.level, info.suggestedGroup, info.isHeader,
            info.isCollapsed, complete, info.frequency, info.questID
    end
    return _G.GetQuestLogTitle(index)
end

function addon.GetSpellCooldown(spellID)
    if C_Spell and C_Spell.GetSpellCooldown then
        local info = C_Spell.GetSpellCooldown(spellID)
        if not info or isSecret(info.startTime) or isSecret(info.duration)
            or isSecret(info.isEnabled) or isSecret(info.modRate) then return end
        return info.startTime, info.duration, info.isEnabled and 1 or 0, info.modRate
    end
    return _G.GetSpellCooldown(spellID)
end

function addon.GetActionCooldown(slot)
    if C_ActionBar and C_ActionBar.GetActionCooldown then
        local info = C_ActionBar.GetActionCooldown(slot)
        if not info or isSecret(info.startTime) or isSecret(info.duration)
            or isSecret(info.isEnabled) or isSecret(info.modRate) then return end
        return info.startTime, info.duration, info.isEnabled and 1 or 0, info.modRate
    end
    return _G.GetActionCooldown(slot)
end

function addon.GetUnitPosition(unit)
    local x, y, z, instance = UnitPosition(unit)
    if isSecret(x) or isSecret(y) or isSecret(z) or isSecret(instance) then return end
    return x, y, z, instance
end

function addon.IsSpellKnown(spellID, isPet)
    if C_SpellBook and C_SpellBook.IsSpellInSpellBook then
        local bank = isPet and Enum.SpellBookSpellBank.Pet or Enum.SpellBookSpellBank.Player
        return C_SpellBook.IsSpellInSpellBook(spellID, bank, false)
    end
    return _G.IsSpellKnown(spellID, isPet)
end

function addon.IsPlayerSpellKnown(spellID)
    if C_SpellBook and C_SpellBook.IsSpellKnown then
        return C_SpellBook.IsSpellKnown(spellID, Enum.SpellBookSpellBank.Player)
    end
    return _G.IsPlayerSpell(spellID)
end

function addon.GetMerchantItemInfo(index)
    if C_MerchantFrame and C_MerchantFrame.GetItemInfo then
        local info = C_MerchantFrame.GetItemInfo(index)
        if not info then return end
        return info.name, info.texture, info.price, info.stackCount,
            info.numAvailable, info.isPurchasable, info.isUsable, info.hasExtendedCost
    end
    return _G.GetMerchantItemInfo(index)
end

function addon.IsEventValid(event)
    return type(event) == "string" and
        (not C_EventUtils or not C_EventUtils.IsEventValid or C_EventUtils.IsEventValid(event))
end

function addon.GetCharacterBankBags()
    if addon.isForever and C_Bank and C_Bank.FetchPurchasedBankTabIDs then
        return C_Bank.FetchPurchasedBankTabIDs(Enum.BankType.Character) or {}
    end
    local bags = {}
    local bank = _G.BANK_CONTAINER or (Enum.BagIndex and Enum.BagIndex.Bank)
    if bank then bags[1] = bank end
    local bagSlots = _G.NUM_BAG_SLOTS or 4
    for id = bagSlots + 1, bagSlots + (_G.NUM_BANKBAGSLOTS or 0) do
        bags[#bags + 1] = id
    end
    return bags
end

function addon.IsCharacterBankOpen()
    if addon.isForever and C_Bank and C_Bank.CanUseBank then
        return C_Bank.CanUseBank(Enum.BankType.Character)
    end
    return BankFrame and BankFrame:IsShown() or false
end

addon.GetUnitName = function(unit)
    local n = _G.UnitName(unit)
    if issecretvalue and issecretvalue(n) then
        return
    end
    return n
end

if not _G.securecallfunction then
    _G.securecallfunction = _G.securecall
end

--C_SettingsUtil
if not Settings or not Settings.RegisterCanvasLayoutCategory then
    Settings = {}
    function Settings.RegisterCanvasLayoutSubcategory(category, groupframe, categoryName)
        C_Timer.After(0, function() InterfaceOptions_AddCategory(groupframe) end)
        return {ID = categoryName}
    end
    function Settings.RegisterCanvasLayoutCategory(groupframe, categoryName)
        C_Timer.After(0, function() InterfaceOptions_AddCategory(groupframe) end)
        return {ID = categoryName}
    end
    function Settings.GetCategory(parentID)
        return {ID = parentID}
    end
    Settings.RegisterAddOnCategory = function() end
end
