local addonName, addon = ...

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end


addon.professions = addon.professions or {}
local export = {}
addon.professions.export = export

local SCHEMA_VERSION = 2

local _G = _G
local pairs, ipairs, type, tostring, tsort, tconcat = pairs, ipairs, type, tostring, table.sort, table.concat
local fmt, byte, gsub, floor = string.format, string.byte, string.gsub, math.floor
local GetItemCount = (_G.C_Item and _G.C_Item.GetItemCount) or _G.GetItemCount
local GetMoney, GetRealmName, GetCurrentRegion, time, date = _G.GetMoney, _G.GetRealmName, _G.GetCurrentRegion, _G.time, _G.date

local SKILL_LINE_IDS = {
    alchemy = 171, blacksmithing = 164, enchanting = 333, engineering = 202, herbalism = 182,
    leatherworking = 165, mining = 186, skinning = 393, tailoring = 197, cooking = 185,
    firstaid = 129, fishing = 356,
}

local REGIONS = { [1] = "us", [2] = "kr", [3] = "eu", [4] = "tw", [5] = "cn" }

local ARRAY = {}
local function array(t)
    return setmetatable(t or {}, ARRAY)
end


local ESCAPES = { ['"'] = '\\"', ['\\'] = '\\\\', ['\n'] = '\\n', ['\r'] = '\\r', ['\t'] = '\\t' }

local function escapeString(s)
    s = gsub(s, '[%c"\\]', function(c)
        return ESCAPES[c] or fmt("\\u%04x", byte(c))
    end)
    return '"' .. s .. '"'
end

local function encodeNumber(n)
    if n ~= n or n == math.huge or n == -math.huge then
        return "null"
    end
    if n == floor(n) and n > -2^53 and n < 2^53 then
        return fmt("%d", n)
    end
    return fmt("%.14g", n)
end

local encodeValue

local function encodeTable(t, out)
    if getmetatable(t) == ARRAY then
        out[#out + 1] = "["
        for i, v in ipairs(t) do
            if i > 1 then out[#out + 1] = "," end
            encodeValue(v, out)
        end
        out[#out + 1] = "]"
        return
    end

    -- Sorted keys keep two exports of the same state identical.
    local keys = {}
    for k in pairs(t) do
        keys[#keys + 1] = tostring(k)
    end
    tsort(keys)
    local byString = {}
    for k, v in pairs(t) do
        byString[tostring(k)] = v
    end

    out[#out + 1] = "{"
    for i, k in ipairs(keys) do
        if i > 1 then out[#out + 1] = "," end
        out[#out + 1] = escapeString(k)
        out[#out + 1] = ":"
        encodeValue(byString[k], out)
    end
    out[#out + 1] = "}"
end

encodeValue = function(v, out)
    local kind = type(v)
    if kind == "table" then
        encodeTable(v, out)
    elseif kind == "string" then
        out[#out + 1] = escapeString(v)
    elseif kind == "number" then
        out[#out + 1] = encodeNumber(v)
    elseif kind == "boolean" then
        out[#out + 1] = v and "true" or "false"
    else
        out[#out + 1] = "null"
    end
end

function export.ToJSON(value)
    local out = {}
    encodeValue(value, out)
    return tconcat(out)
end


local function liveProfessions()
    local skills = {}
    for key in pairs(addon.professionID or {}) do
        if key ~= "riding" then
            local skill = addon.GetSkillLevel(key)
            local maxSkill = addon.GetSkillLevel(key, true)
            if type(skill) == "number" and skill > 0 and type(maxSkill) == "number" then
                skills[key] = { skill = skill, maxSkill = maxSkill }
            end
        end
    end
    return skills
end

local function overrideProfessions()
    local skills = {}
    local data = RXPCData and RXPCData.professions or {}
    for _, slot in ipairs({ data.profession1, data.profession2 }) do
        if type(slot) == "table" and slot.name and slot.skillLevel then
            skills[slot.name] = { skill = slot.skillLevel, maxSkill = slot.skillMaxLevel or slot.skillLevel }
        end
    end
    return skills
end

local function knownRecipes(skills)
    local known = array()
    for key, recipeIds in pairs(addon.professionSnapshotRecipeIds or {}) do
        if skills[key] then
            for _, spellId in ipairs(recipeIds) do
                if addon.IsPlayerSpell(spellId) then
                    known[#known + 1] = spellId
                end
            end
        end
    end
    tsort(known)
    return known
end

local function bagCounts()
    local counts = {}
    for _, itemId in ipairs(addon.professionSnapshotReagentIds or {}) do
        local count = GetItemCount(itemId)
        if count and count > 0 then
            counts[itemId] = count
        end
    end
    return counts
end

local function isoTime(t)
    return date("!%Y-%m-%dT%H:%M:%SZ", t)
end

local function professionList(skills)
    local list = array()
    for key, s in pairs(skills) do
        -- The page requires a whole-number skillLineId; a profession without one cannot be sent.
        if SKILL_LINE_IDS[key] then
            list[#list + 1] = { skillLineId = SKILL_LINE_IDS[key], skill = s.skill, maxSkill = s.maxSkill }
        end
    end
    tsort(list, function(a, b) return a.skillLineId < b.skillLineId end)
    return list
end

local function auctionScan()
    local session = addon.professions.AH and addon.professions.AH.session
    local found, scannedAt = session and session.foundItems, session and session.scannedAt
    if not found or next(found) == nil then
        local data = RXPCData and RXPCData.professions or {}
        found, scannedAt = data.foundItems, data.scannedAt
    end
    if not found or next(found) == nil then return nil end

    local items = array()
    for itemId, prices in pairs(found) do
        local listings = array()
        for unitPrice, quantity in pairs(prices) do
            listings[#listings + 1] = { unitPriceCopper = unitPrice, quantity = quantity }
        end
        tsort(listings, function(a, b) return a.unitPriceCopper < b.unitPriceCopper end)
        items[#items + 1] = { itemId = itemId, listings = listings }
    end
    tsort(items, function(a, b) return a.itemId < b.itemId end)

    -- age display is too young for those.
    return { scannedAt = isoTime(scannedAt or time()), items = items }
end

-- opts.useOverrides: take professions, faction and money from the debug overrides instead of the character.
local function buildPayload(opts)
    local data = RXPCData and RXPCData.professions or {}
    local useOverrides = opts and opts.useOverrides

    local skills = useOverrides and overrideProfessions() or liveProfessions()
    local faction = addon.player.faction
    local money = GetMoney()
    if useOverrides then
        if data.faction then
            faction = data.faction:sub(1, 1):upper() .. data.faction:sub(2)
        end
        money = data.money or money
    end
    local now = time()

    return {
        schemaVersion = SCHEMA_VERSION,
        realm = GetRealmName(),
        region = REGIONS[GetCurrentRegion()] or tostring(GetCurrentRegion()),
        faction = faction,
        character = {
            level = addon.player.level,
            moneyCopper = money,
        },
        professions = professionList(skills),
        auctionScan = auctionScan(),

        game = addon.game,
        gameVersion = addon.gameVersion,
        season = addon.player.season,
        hardcore = addon.player.hardcore == true,
        capturedAt = isoTime(now),
        knownRecipes = knownRecipes(skills),
        bags = bagCounts(),
        debugOverrides = useOverrides and true or false,
    }
end

function export.BuildString(opts)
    local ok, result = pcall(buildPayload, opts)
    if not ok then
        return export.ToJSON({ schemaVersion = SCHEMA_VERSION, exportError = tostring(result) }), result
    end
    return export.ToJSON(result)
end


local exportWindow

function export.ShowWindow(opts)
    local AceGUI = LibStub("AceGUI-3.0")
    local text, err = export.BuildString(opts)

    if exportWindow then
        exportWindow:Release()
    end
    local window = AceGUI:Create("Frame")
    exportWindow = window
    window:SetTitle("RXP Profession Export")
    window:SetStatusText(err and ("Export failed: " .. tostring(err))
        or fmt("%d characters%s - press Ctrl+A, then Ctrl+C", #text,
            opts and opts.useOverrides and " (with debug overrides)" or ""))
    window:SetLayout("Fill")
    window:SetWidth(560)
    window:SetHeight(420)
    window:SetCallback("OnClose", function(widget)
        AceGUI:Release(widget)
        exportWindow = nil
    end)

    local box = AceGUI:Create("MultiLineEditBox")
    box:SetLabel("Paste this into the Profession Route page")
    box:DisableButton(true)
    box:SetText(text)
    -- Typing into the box must not change what gets copied.
    box:SetCallback("OnTextChanged", function(widget)
        widget:SetText(text)
        widget:HighlightText()
    end)
    box:SetCallback("OnEditFocusGained", function(widget)
        widget:HighlightText()
    end)
    window:AddChild(box)
    box:SetFocus()
    box:HighlightText()
end
