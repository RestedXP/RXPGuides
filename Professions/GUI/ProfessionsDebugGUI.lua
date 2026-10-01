local addonName, addon = ...

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Debug window for the professions prototype: every debug slash command as a button or field,
-- plus the export string for the Profession Route page. Open with /rxpprof.

local _G = _G
local pairs, ipairs, type, tostring, tonumber, tsort, tconcat = pairs, ipairs, type, tostring, tonumber, table.sort, table.concat
local fmt, floor = string.format, math.floor
local GetMoney, GetRealmName = _G.GetMoney, _G.GetRealmName
local AceGUI = LibStub("AceGUI-3.0")

addon.professions = addon.professions or {}
local gui = {}
addon.professions.debugGUI = gui

local REFRESH_SECONDS = 1
-- The crafted items list can hold every item that was ever moved in the bags; show the first few only.
local MAX_CRAFTED_LINES = 25

local window, labels, inputs, ticker

local function money(copper)
    if type(copper) ~= "number" then return "-" end
    return fmt("%dg %ds %dc", floor(copper / 10000), floor(copper / 100) % 100, copper % 100)
end

local function stored()
    return RXPCData and RXPCData.professions or {}
end

local function countKeys(t)
    local n = 0
    for _ in pairs(t or {}) do n = n + 1 end
    return n
end

local function professionLine(slot)
    if type(slot) ~= "table" or not slot.name then return "-" end
    return fmt("%s %s/%s", slot.name, tostring(slot.skillLevel or "?"), tostring(slot.skillMaxLevel or "?"))
end

local function liveProfessionsText()
    local parts = {}
    for key in pairs(addon.professionID or {}) do
        if key ~= "riding" then
            local skill = addon.GetSkillLevel(key)
            if type(skill) == "number" and skill > 0 then
                parts[#parts + 1] = fmt("%s %d/%d", key, skill, addon.GetSkillLevel(key, true) or -1)
            end
        end
    end
    tsort(parts)
    return #parts > 0 and tconcat(parts, ", ") or "none"
end

local function scanStatusText()
    local AH = addon.professions.AH
    if not AH then return "AH module not loaded" end
    local s = AH.session
    local total = #s.materialsToScan
    local found = countKeys(s.foundItems)
    local ahOpen = addon.professions.debug and addon.professions.debug.IsAuctionHouseOpen()
    local progress
    if total == 0 then
        progress = "not started"
    elseif s.materialIndex > total then
        progress = fmt("finished (%d materials)", total)
    else
        progress = fmt("material %d/%d: %s", s.materialIndex, total, tostring(s.materialsToScan[s.materialIndex]))
    end
    return fmt("Auction House: %s\nScan: %s\nItems with listings this session: %d",
        ahOpen and "|cff00ff00open|r" or "|cffff5555closed|r", progress, found)
end

local function craftedItemsText()
    local items = RXPCData and RXPCData.craftedItems or {}
    local ids = {}
    for id in pairs(items) do ids[#ids + 1] = id end
    tsort(ids, function(a, b) return tostring(a) < tostring(b) end)
    local lines = {}
    for i = 1, math.min(#ids, MAX_CRAFTED_LINES) do
        lines[#lines + 1] = fmt("%s -> %s", tostring(ids[i]), tostring(items[ids[i]]))
    end
    if #ids > MAX_CRAFTED_LINES then
        lines[#lines + 1] = fmt("... and %d more", #ids - MAX_CRAFTED_LINES)
    end
    return #lines > 0 and tconcat(lines, "\n") or "(empty)"
end

function gui:Refresh()
    if not window then return end
    local data = stored()
    labels.live:SetText(fmt("Realm: %s   Faction: %s   Level: %s   Money: %s\nProfessions: %s",
        tostring(GetRealmName()), tostring(addon.player.faction), tostring(addon.player.level),
        money(GetMoney()), liveProfessionsText()))
    labels.stored:SetText(fmt("Profession 1: %s\nProfession 2: %s\nFaction: %s   Money: %s   Saved scan items: %d",
        professionLine(data.profession1), professionLine(data.profession2),
        tostring(data.faction or "-"), money(data.money), countKeys(data.foundItems)))
    labels.scan:SetText(scanStatusText())
    labels.crafted:SetText(craftedItemsText())
end

---------------------------------------------------------------------------
-- Widget helpers
---------------------------------------------------------------------------

local function group(parent, title)
    local g = AceGUI:Create("InlineGroup")
    g:SetTitle(title)
    g:SetFullWidth(true)
    g:SetLayout("Flow")
    parent:AddChild(g)
    return g
end

local function label(parent)
    local l = AceGUI:Create("Label")
    l:SetFullWidth(true)
    parent:AddChild(l)
    return l
end

-- Every button refreshes the window afterwards, so the result of the action is visible at once.
local function button(parent, text, onClick, width, tooltip)
    local b = AceGUI:Create("Button")
    b:SetText(text)
    b:SetWidth(width or 170)
    b:SetCallback("OnClick", function()
        onClick()
        gui:Refresh()
    end)
    if tooltip then
        b:SetCallback("OnEnter", function(widget)
            GameTooltip:SetOwner(widget.frame, "ANCHOR_TOP")
            GameTooltip:SetText(tooltip, nil, nil, nil, nil, true)
            GameTooltip:Show()
        end)
        b:SetCallback("OnLeave", function() GameTooltip:Hide() end)
    end
    parent:AddChild(b)
    return b
end

local function editBox(parent, text, width)
    local e = AceGUI:Create("EditBox")
    e:SetLabel(text)
    e:SetWidth(width or 120)
    e:DisableButton(true)
    parent:AddChild(e)
    return e
end

local function debugAction(name, ...)
    local debug = addon.professions.debug
    if debug and debug[name] then
        debug[name](...)
    else
        print("RXP professions: " .. name .. " is not available")
    end
end

---------------------------------------------------------------------------
-- Window
---------------------------------------------------------------------------

local function build()
    window = AceGUI:Create("Frame")
    window:SetTitle("RXP Professions - Debug")
    window:SetStatusText("/rxpprof to toggle, /rxpprof export for the export string")
    window:SetWidth(640)
    window:SetHeight(680)
    window:SetLayout("Fill")
    window:SetCallback("OnClose", function(widget)
        if ticker then ticker:Cancel() ticker = nil end
        AceGUI:Release(widget)
        window = nil
    end)

    local scroll = AceGUI:Create("ScrollFrame")
    scroll:SetLayout("List")
    window:AddChild(scroll)

    labels, inputs = {}, {}

    local live = group(scroll, "Character (live)")
    labels.live = label(live)

    local scan = group(scroll, "Auction House scan")
    labels.scan = label(scan)
    button(scan, "Scan AH (my professions)", function() debugAction("Scan") end, 190,
        "/scan - reads your professions, then queries the AH for every reagent. The AH must be open.")
    button(scan, "Scan AH (overrides)", function() debugAction("ScanOverride") end, 190,
        "/tscan - scans the reagents of the professions set under Overrides.")
    button(scan, "List scan items", function() debugAction("ListScanItems") end, 190,
        "/items - prints the reagent names queued for scanning.")

    local overrides = group(scroll, "Overrides (stored in RXPCData.professions)")
    inputs.prof1 = editBox(overrides, "Profession 1", 140)
    inputs.skill1 = editBox(overrides, "Skill", 70)
    inputs.prof2 = editBox(overrides, "Profession 2", 140)
    inputs.skill2 = editBox(overrides, "Skill", 70)
    button(overrides, "Set professions", function()
        debugAction("SetProfessions", inputs.prof1:GetText(), inputs.skill1:GetText(),
            inputs.prof2:GetText(), inputs.skill2:GetText())
    end, 150, "/setp <name1> <skill1> [<name2> <skill2>] - max skill is set to 300.")

    local faction = AceGUI:Create("Dropdown")
    faction:SetLabel("Faction")
    faction:SetWidth(140)
    faction:SetList({ alliance = "Alliance", horde = "Horde" }, { "alliance", "horde" })
    faction:SetValue(addon.player.faction == "Horde" and "horde" or "alliance")
    overrides:AddChild(faction)
    inputs.faction = faction
    button(overrides, "Set faction", function() debugAction("SetFaction", inputs.faction:GetValue()) end, 120, "/setf")
    button(overrides, "Detect faction", function() debugAction("DetectFaction") end, 130, "/df")

    inputs.money = editBox(overrides, "Money (copper)", 140)
    button(overrides, "Set money", function() debugAction("SetMoney", inputs.money:GetText()) end, 120,
        "/setm <copper> - 1g = 10000")

    local save = group(scroll, "Save and export")
    button(save, "Export to SavedVariables", function() debugAction("Export") end, 190,
        "/export - re-reads your professions, faction and money (this overwrites overrides) and copies the scan into RXPCData.professions. Written to disk on /reload or logout.")
    button(save, "Save scan only", function() debugAction("ExportScanOnly") end, 190,
        "/texport - copies only the scan results into RXPCData.professions, keeping overrides.")
    button(save, "Reload UI", function() C_UI.Reload() end, 190, "/r - writes SavedVariables to disk.")

    local useOverrides = AceGUI:Create("CheckBox")
    useOverrides:SetLabel("Apply overrides to the export string")
    useOverrides:SetFullWidth(true)
    save:AddChild(useOverrides)
    inputs.useOverrides = useOverrides
    button(save, "Show export string", function()
        addon.professions.export.ShowWindow({ useOverrides = inputs.useOverrides:GetValue() })
    end, 190, "/rxpprof export - the text for the Profession Route page.")

    local data = group(scroll, "Stored data (RXPCData.professions)")
    labels.stored = label(data)
    button(data, "Print data", function() debugAction("PrintData") end, 150, "/pn - prints to chat.")
    button(data, "Reset stored data", function() debugAction("Reset") end, 150, "/rs - clears professions, faction, money and saved scan.")

    local crafted = group(scroll, "Crafted items (RXPCData.craftedItems)")
    labels.crafted = label(crafted)
    button(crafted, "Clear crafted items", function() RXPCData.craftedItems = {} end, 170, "/c")

    gui:Refresh()
    ticker = C_Timer.NewTicker(REFRESH_SECONDS, function() gui:Refresh() end)
end

function gui:Toggle()
    if window then
        window:Hide()
    else
        build()
    end
end

---------------------------------------------------------------------------
-- /rxpprof
---------------------------------------------------------------------------

SLASH_RXPPROF1 = "/rxpprof"
SlashCmdList["RXPPROF"] = function(msg)
    local command = string.lower(string.match(msg or "", "^%s*(%S*)") or "")
    if command == "export" then
        addon.professions.export.ShowWindow({ useOverrides = false })
    elseif command == "exportdebug" then
        addon.professions.export.ShowWindow({ useOverrides = true })
    elseif command == "" or command == "debug" then
        gui:Toggle()
    else
        print("/rxpprof - debug window\n/rxpprof export - export string\n/rxpprof exportdebug - export string with overrides")
    end
end
