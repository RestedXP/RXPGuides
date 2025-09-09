local addonName, addon = ...

local GetItemCount = C_Item and C_Item.GetItemCount or _G.GetItemCount

addon.skipPreReq = {
    [9573] = 1,
    [533] = 1,
    [5096] = 1,
    [5092] = 1,
    [1114] = 1,
    [10000] = 1,
    [10008] = 1
}

local _,class = UnitClass("player")

--[[
addon.defaultGuideList = {
    ["Elwynn Forest"] = "RestedXP Alliance 1-20\\1-11 Elwynn Forest",
    ["Teldrassil"] = "RestedXP Alliance 1-20\\01-06 Shadowglen",
    ["Dun Morogh"] = "RestedXP Alliance 1-20\\01-06 Coldridge Valley",
    ["Azuremyst Isle"] = "RestedXP Alliance 1-20\\01-12 Azuremyst Isle",
    ["Durotar"] = "RestedXP Horde 1-30\\01-10 Durotar",
    ["Mulgore"] = "RestedXP Horde 1-30\\01-10 Mulgore",
    ["Tirisfal Glades"] = "RestedXP Horde 1-30\\01-06 Tirisfal Glades",
    ["Eversong Woods"] = "RestedXP Horde 1-30\\01-06 Eversong Woods",
}
if class == "WARLOCK" then
    addon.defaultGuideList["Dun Morogh"] = "RestedXP Alliance 1-20\\1-12 Dun Morogh"
elseif class == "HUNTER" then
    addon.defaultGuideList["Dun Morogh"] = "RestedXP Alliance 1-20\\1-11 Dun Morogh"
end
]]


--Which invslot to check for heirlooms
addon.heirlooms = {
    [3] = true,--shoulder
    [5] = true,--chest
    [12] = true,--ring1
    [13] = true,--ring2
}

addon.mapId = {
	["Durotar"] = 1411,
	["Mulgore"] = 1412,
	["The Barrens"] = 1413,
	["Alterac Mountains"] = 1416,
	["Arathi Highlands"] = 1417,
	["Badlands"] = 1418,
	["Blasted Lands"] = 1419,
	["Tirisfal Glades"] = 1420,
	["Silverpine Forest"] = 1421,
	["Western Plaguelands"] = 1422,
	["Eastern Plaguelands"] = 1423,
	["Hillsbrad Foothills"] = 1424,
	["The Hinterlands"] = 1425,
	["Dun Morogh"] = 1426,
	["Searing Gorge"] = 1427,
	["Burning Steppes"] = 1428,
	["Elwynn Forest"] = 1429,
	["Deadwind Pass"] = 1430,
	["Duskwood"] = 1431,
	["Loch Modan"] = 1432,
	["Redridge Mountains"] = 1433,
	["Stranglethorn Vale"] = 1434,
	["Swamp of Sorrows"] = 1435,
	["Westfall"] = 1436,
	["Wetlands"] = 1437,
	["Teldrassil"] = 1438,
	["Darkshore"] = 1439,
	["Ashenvale"] = 1440,
	["Thousand Needles"] = 1441,
	["Stonetalon Mountains"] = 1442,
	["Desolace"] = 1443,
	["Feralas"] = 1444,
	["Dustwallow Marsh"] = 1445,
	["Tanaris"] = 1446,
	["Azshara"] = 1447,
	["Felwood"] = 1448,
	["Un'Goro Crater"] = 1449,
	["Moonglade"] = 1450,
	["Silithus"] = 1451,
	["Winterspring"] = 1452,
	["Stormwind City"] = 1453,
	["Orgrimmar"] = 1454,
	["Ironforge"] = 1455,
	["Thunder Bluff"] = 1456,
	["Darnassus"] = 1457,
	["Undercity"] = 1458,
	["Alterac Valley"] = 1459,
	["Eversong Woods"] = 1941,
	["Ghostlands"] = 1942,
	["Azuremyst Isle"] = 1943,
	["Hellfire Peninsula"] = 1944,
	["Zangarmarsh"] = 1946,
	["The Exodar"] = 1947,
	["Shadowmoon Valley"] = 1948,
	["Blade's Edge Mountains"] = 1949,
	["Bloodmyst Isle"] = 1950,
	["Nagrand"] = 1951,
	["Terokkar Forest"] = 1952,
	["Netherstorm"] = 1953,
	["Silvermoon City"] = 1954,
	["Shattrath City"] = 1955,
	["Isle of Quel'Danas"] = 1957,
	["Kalimdor"] = 1414,
	["Eastern Kingdoms"] = 1415,
	["Outland"] = 1945 --987?
}

addon.FPbyZone = {
    ["Horde"] = {
        [1448] = 48,
        [1418] = 21,
        [1450] = 69,
        [1451] = 72,
        [1452] = 53,
        [1454] = 23,
        [1425] = 76,
        [1458] = 11,
        [1428] = 70,
        [1456] = 22,
        [1444] = 42,
        [1442] = 29,
        [1435] = 56,
        [1421] = 10,
        [1449] = 79,
        [1423] = 68,
        [1427] = 75,
        [1441] = 30,
        [1411] = 23,
        [1443] = 38,
        [1445] = 55,
        [1446] = 40,
        [1447] = 44,
        [1412] = 22,
    },
    ["Alliance"] = {
        [1448] = 65,
        [1449] = 79,
        [1450] = 49,
        [1451] = 73,
        [1452] = 52,
        [1422] = 66,
        [1423] = 67,
        [1455] = 6,
        [1425] = 43,
        [1426] = 6,
        [1427] = 74,
        [1428] = 71,
        [1431] = 12,
        [1432] = 8,
        [1436] = 4,
        [1437] = 7,
        [1438] = 27,
        [1439] = 26,
        [1440] = 28,
        [1442] = 33,
        [1443] = 37,
        [1413] = 80,
        [1445] = 32,
        [1446] = 39,
        [1447] = 64,
        [1419] = 45,
        [1453] = 2,
    },
}

addon.professionID = {
    alchemy = {2259, 3101, 3464, 11611, 28596, 51304},
    blacksmithing = {2018, 3100, 3538, 9785, 29844, 51300},
    enchanting = {13920, 7411, 7412, 7413, 28029, 51313},
    engineering = {4036, 4037, 4038, 12656, 30350, 51306},
    herbalism = {2383},
    inscription = {45357, 45358, 45359, 45360, 45361, 45363},
    jewelcrafting = {25229, 25230, 28894, 28895, 28897, 51311},
    leatherworking = {2108, 3104, 3811, 10662, 32549, 51302},
    mining = {2656},
    skinning = {8613, 8617, 8618, 10768, 32678, 50305},
    tailoring = {3908, 3909, 3910, 12180, 26790, 51309},
    cooking = {2550, 3102, 3413, 18260, 33359, 51296},
    firstaid = {3273, 3274, 7924, 10846, 27028, 45542},
    fishing = {7620, 7731, 7732, 18248, 33095, 51294},
    lockpicking = {1804},
}

C_Spell.RequestLoadSpellData(2575) -- mining
C_Spell.RequestLoadSpellData(9134) -- herbalism
C_Spell.RequestLoadSpellData(33388) -- riding
C_Spell.RequestLoadSpellData(1809) -- lockpicking

addon.base = {66,78,71,101,116,73,110,102,111}

local function IsPreReqComplete(quest)
    local t = type(quest.previousQuest)
    if t == "table" then
        local state = not quest.preQuestAny
        for _, id in ipairs(quest.previousQuest) do
            if quest.preQuestAny then
                state = state or addon.IsQuestTurnedIn(id)
            else
                state = state and addon.IsQuestTurnedIn(id)
            end
        end
        return state
    elseif t == "number" then
        local preReqComplete
        if quest.uniqueWith then
            local prevQuest = addon.QuestDB[quest.previousQuest]
            if prevQuest and prevQuest.uniqueWith then
                for _,uniqueId in pairs(prevQuest.uniqueWith) do
                    preReqComplete = preReqComplete or addon.IsQuestTurnedIn(uniqueId)
                end
            end
        end
        return preReqComplete or addon.IsQuestTurnedIn(quest.previousQuest)
    else
        return true
    end
end

local function IsQuestAvailable(quest,id,skipRepCheck)
    if not quest then return end
    id = id or quest.Id

    local function ProcessRep(rep,faction)
        local _, _, standing = addon.GetFactionInfoByID(faction)
        local current = addon.repStandingID[strlower(rep)]
        if skipRepCheck then
            if (skipRepCheck == 932 and faction == 934) or
                (skipRepCheck == 934 and faction == 932) then
                return false
            end
        elseif not (current and standing) or standing < current then
            return false
        end
        return true
    end

    local repCheck = true
    if type(quest.repfaction) == "number" then
        repCheck = ProcessRep(quest.reputation,quest.repfaction)
    elseif type(quest.reputation) == "table" then
        for i,rep in pairs(quest.reputation) do
            repCheck = repCheck and ProcessRep(rep,quest.repfaction[i])
        end
    end

    if quest.uniqueWith then
        for _,uniqueId in pairs(quest.uniqueWith) do
            if addon.IsQuestTurnedIn(uniqueId) then
                return false
            end
        end
    end

    if addon.IsQuestTurnedIn(id) or not repCheck
        or (quest.completewith and addon.IsQuestTurnedIn(quest.completewith)) then
        return false
    end

    local activeFor = quest.appliesTo
    if activeFor then
        activeFor = addon.applies(activeFor) or
                        addon.GetSkillLevel(activeFor) > 0
    else
        activeFor = true
    end
    return activeFor
end


local questQueryTimer = 0
function addon.GetBestQuests(refreshQuestDB,output)
    output = output or 0
    if not addon.questLogQuests or refreshQuestDB then
        addon.questLogQuests = {}

        local groups = {}
        for id, v in pairs(addon.QuestDB) do
            v.Id = id
            local group = v.group or ""
            if IsQuestAvailable(v,id) and not v.itemId and (group == "" or not groups[group]) and
                v.questLog and (not v.forcePreReq or IsPreReqComplete(v)) then
                table.insert(addon.questLogQuests, v)
                v.isActive = true
                groups[group] = true
            elseif v.questLog then
                v.isActive = false
            end
        end
    end
    local qDB = addon.questLogQuests
    if GetTime() - questQueryTimer > 1 then
        questQueryTimer = GetTime()
        table.sort(qDB, function(k1, k2)
            local x1 = k1.xp or 0
            local x2 = k2.xp or 0
            local q1 = addon.IsQuestTurnedIn(k1.Id)
            local q2 = addon.IsQuestTurnedIn(k2.Id)
            local prev1 = k1.previousQuest and not IsPreReqComplete(k1)
            local prev2 = k2.previousQuest and not IsPreReqComplete(k2)
            local prio1 = k1.priority or 1e3
            local prio2 = k2.priority or 1e3
            if q1 and not q2 then
                return false
            elseif q2 and not q1 then
                return true
            elseif x1 ~= x2 then
                return x1 > x2
            elseif prev1 and not prev2 then
                return false
            elseif prev2 and not prev1 then
                return true
            elseif prio1 < prio2 then
                return true
            elseif prio2 < prio1 then
                return false
            else
                return k1.Id < k2.Id
            end
        end)

        for i = #qDB, 1, -1 do
            local xp = qDB[i].xp or 0
            local id = qDB[i].Id
            if i > 25 and xp < (qDB[25].xp or 1) or addon.IsQuestTurnedIn(id) then
                addon.QuestDB[id].isActive = false
                table.remove(qDB, i)
            end
        end
    end

    local outputString = ""
    local requestFromServer = true

    if output ~= 0 then
        for k, v in ipairs(qDB) do
            local id = v.Id
            local qname = addon.GetQuestName(id)
            requestFromServer = qname and requestFromServer
            local xp = v.xp or 0
            outputString = string.format("%s\n%d: %dxp %s (%d)",outputString, k, xp,
                                             qname or "", id)
        end
        outputString = outputString:gsub("^\n","")
        if bit.band(output,0x1) == 0x1 then
            print(outputString)--ok
        end
    end

    for i = #qDB, 1, -1 do
        if i > 25 then
            qDB[i].isActive = false
        else
            break
        end
    end

    return outputString,not requestFromServer
end


local CreatePanel
local requestText = true
local questText = ""
local requestTimer = 0
local mode
local missingQs

local SetText = function()
    local ctime = GetTime()
    if requestText and ctime - requestTimer > 0.2 then
        requestTimer = ctime
        questText,requestText = addon.GetBestQuests(false,2)
        missingQs = addon.ShowMissingQuests()
    end

    if mode == "missing" then
        return missingQs
    else
        return questText
    end
end

local function OnClick(self)
    if not addon.settings.gui.quest then
        CreatePanel()
    end
    _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.quest)
    _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.quest)
end

function addon.functions.show25quests(self,text,flags)
    if type(self) == "string" then
        return { text = text, event = "OnUpdate", hideTooltip = true, tooltip = "Click to view the 25 best quests", icon = addon.icons.link, textOnly = true}
    end
    if self and self.highlight and not self.highlight:IsShown() then
        self.highlight:Show()
        self:SetScript("OnMouseDown", OnClick)
    end
    SetText()

end


function CreatePanel()

    local questDataTable = {
        type = "group",
        name = "RestedXP Quest Data",
        args = {
            importBox = {
                order = 10,
                type = 'input',
                name = 'List of 25 best quests',
                width = "full",
                multiline = 31,
                confirmText = "Refresh",
                -- usage = "Usage string",
                get = SetText,
                set = SetText,
                --validate = function() return true,SetText() end,
            },
            refresh = {
                order = 13,
                name = "Refresh",
                type = 'execute',
                func = function() _G.InterfaceOptionsFrame_OpenToCategory(RXP.settings.gui.quest) end,
            },
            showAvailable = {
                order = 14,
                name = "Show 25 Quests",
                type = 'execute',
                func = function()
                    mode = "quests"
                    _G.InterfaceOptionsFrame_OpenToCategory(RXP.settings.gui.quest)
                end,
            },
            showMissing = {
                order = 15,
                name = "Show Missing Quests",
                type = 'execute',
                func = function()
                    mode = "missing"
                    _G.InterfaceOptionsFrame_OpenToCategory(RXP.settings.gui.quest)
                end,
            },
        }

    }

    LibStub("AceConfig-3.0"):RegisterOptionsTable(addon.title .. "/Quest Data", questDataTable)

    addon.settings.gui.quest = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    addon.title .. "/Quest Data", "Quest Data", addon.title)

end


function addon.IsGuideQuestActive(id)
    if not addon.QuestDB[id] then
        return false
    elseif not addon.questLogQuests or addon.IsQuestTurnedIn(id) and addon.QuestDB[id].isActive then
        addon.GetBestQuests(true)
    end
    return not addon.IsQuestTurnedIn(id) and addon.QuestDB[id].isActive
end

function addon.functions.requires(self,text,mode,...)
    if type(self) == "string" then
        local args = {...}
        local element = {textOnly = true,text = text, args = args, mode = mode, requestFromServer = true}
        if mode == "quest" then
            element.event = "QUEST_LOG_UPDATE"
        end
        return element
    end

    local element = self.element
    local args = element.args
    local step = element.step
    if element.mode == "quest" then
        local id = tonumber(args[1])
        id = addon.GetQuestId(id)
        if id and not addon.IsGuideQuestActive(id) then
            if not (step.hidewindow and step.completed) then
                step.completed = true
                step.hidewindow = true
                addon.updateSteps = true
            end
        elseif step.hidewindow then
            step.hidewindow = false
            addon.updateSteps = true
        end
    end
    element.requestFromServer = false
end

function addon.functions.showtotalxp(self,text,flags)
    if type(self) == "string" then
        return {textOnly = true,rawtext = text or "", text = text, flags = tonumber(flags) or 0, event = "QUEST_LOG_UPDATE"}
    end

    local element = self.element

    local xp = addon.CalculateTotalXP(element.flags)
    text = format("%s %s",element.rawtext,addon.FormatNumber(xp))
    if text ~= element.text then
        element.text = text
        addon.UpdateStepText(element)
    end

end

addon.questsDone = {}
addon.questsAvailable = {}

function addon.CalculateTotalXP(flags)
    local totalXp = 0
    flags = flags or 0
    local output = bit.band(flags,0x2) == 0x2
    local ignorePreReqs
    if bit.band(flags,0x1) == 0x1 then
        local aldor = addon.stepLogic.AldorScryerCheck("Aldor") and 932
        local scryer = addon.stepLogic.AldorScryerCheck("Scryer") and 934
        ignorePreReqs = aldor or scryer or 932
    else
        addon.questsDone = {}
    end
    local groups = {}
    local function ProcessQuest(quest,qid,skipgrpcheck)
        qid = qid or quest.Id
        local group = quest.group or ""
        local isAvailable = IsQuestAvailable(quest,qid,ignorePreReqs)
        if (group == "" or skipgrpcheck or not groups[group]) and isAvailable and (ignorePreReqs or (IsPreReqComplete(quest))) then
            groups[group] = true
            local xp = quest.xp or 0
            totalXp = totalXp + xp
            if output then
                    print(string.format("%dxp %s (%d)", xp,
                                    addon.GetQuestName(qid) or "", qid))
            end
        end
        return isAvailable
    end
    if not addon.questLogQuests then addon.GetBestQuests(true) end
    if ignorePreReqs then
        for i = 1, 25 do
            local quest = addon.questLogQuests[i]
            if quest then
                ProcessQuest(quest)
                addon.questsAvailable[quest.Id] = true
            end
        end
    end
    for id, quest in pairs(addon.QuestDB) do

        if not ignorePreReqs and quest.questLog and addon.IsQuestComplete(id) then
            if ProcessQuest(quest,id) then
                addon.questsDone[id] = true
            end
        elseif not (quest.questLog or addon.IsQuestTurnedIn(id)) then
            local item = quest.itemId
            if ignorePreReqs and item then
                if ProcessQuest(quest,id) then
                    addon.questsDone[id] = true
                end
            elseif type(item) == "table" then
                local state = true
                for n, itemId in pairs(item) do
                    state = state and GetItemCount(itemId, true) >=
                                quest.itemAmount[n]
                end
                if state then
                    if ProcessQuest(quest,id) then
                        addon.questsDone[id] = true
                    end
                end
            elseif type(item) == "number" and GetItemCount(item, true) >=
                quest.itemAmount then
                if ProcessQuest(quest,id) then
                    addon.questsDone[id] = true
                end
            elseif not item then
                if ProcessQuest(quest,id) then
                    addon.questsDone[id] = true
                end
            end
        end
    end

    return totalXp
end

function addon.ShowMissingQuests(output)
    RXP.CalculateTotalXP(1)
    RXP.CalculateTotalXP(0)
    local t = ""
    for qid,v in pairs(addon.questsAvailable) do
        if not addon.questsDone[qid] and qid > 0 then
            t = string.format("%s\n%s (%d)", t,
                addon.GetQuestName(qid) or "", qid)
        end
    end
    if output then
        print(t)--ok
    end
    return t
end

addon.QuestDB = {
	[11505] = {
		["questLog"] = true,
		["xp"] = 10050,
		["appliesTo"] = "Alliance",
	},
	[10742] = {
		["previousQuest"] = 10724,
		["priority"] = 4,
		["questLog"] = true,
		["xp"] = 19000,
		["appliesTo"] = "Horde",
	},
	[9724] = {
		["xp"] = 10560,
		["previousQuest"] = 9731,
	},
	[11003] = {
		["itemId"] = 32386,
		["itemAmount"] = 1,
		["xp"] = 19000,
		["appliesTo"] = "Horde",
	},
	[11515] = {
		["priority"] = 11,
		["questLog"] = true,
		["xp"] = 12650,
		["previousQuest"] = 11526,
	},
	[11007] = {
		["itemAmount"] = 1,
		["xp"] = 19000,
		["itemId"] = 32405,
	},
	[10754] = {
		["itemId"] = {
			31239, -- [1]
			23445, -- [2]
			22445, -- [3]
			22574, -- [4]
		},
		["itemAmount"] = {
			1, -- [1]
			4, -- [2]
			2, -- [3]
			4, -- [4]
		},
		["xp"] = 28450,
		["appliesTo"] = "Alliance",
	},
	[11521] = {
		["questLog"] = true,
		["xp"] = 15800,
		["priority"] = 1,
	},
	[9738] = {
		["xp"] = 22000,
		["questLog"] = true,
	},
	[11015] = {
		["itemAmount"] = 30,
		["xp"] = 12650,
		["itemId"] = 32427,
	},
	[11017] = {
		["appliesTo"] = "herbalism",
		["group"] = "netherwingprofessions",
		["itemAmount"] = 40,
		["xp"] = 12650,
		["itemId"] = 32468,
	},
	[10509] = {
		["xp"] = 9500,
		["previousQuest"] = 10508,
	},
	[11021] = {
		["itemAmount"] = 1,
		["xp"] = 13000,
		["itemId"] = 32523,
	},
	[9493] = {
		["questLog"] = true,
		["xp"] = 25300,
		["appliesTo"] = "Alliance",
	},
	[9495] = {
		["questLog"] = true,
		["xp"] = 25300,
		["appliesTo"] = "Horde",
	},
	[10772] = {
		["itemId"] = 31310,
		["itemAmount"] = 1,
		["xp"] = 9500,
		["appliesTo"] = "Alliance",
	},
	[11539] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 9,
	},
	[11541] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 6,
	},
	[10013] = {
		["itemId"] = 25765,
		["itemAmount"] = 1,
		["xp"] = 8600,
		["appliesTo"] = "Horde",
	},
	[11035] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 3,
	},
	[11547] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 7,
	},
	[9764] = {
		["itemAmount"] = {
			1, -- [1]
			1, -- [2]
		},
		["xp"] = 37950,
		["itemId"] = {
			24367, -- [1]
			24368, -- [2]
		},
	},
	[10280] = {
		["xp"] = 19000,
		["previousQuest"] = 10276,
	},
	[11049] = {
		["itemAmount"] = 1,
		["xp"] = 15800,
		["itemId"] = 32506,
	},
	[10541] = {
		["xp"] = 6250,
		["previousQuest"] = 10540,
	},
	[11053] = {
		["repfaction"] = 1015,
		["xp"] = 12650,
		["reputation"] = "friendly",
	},
	[10039] = {
		["xp"] = 2120,
		["appliesTo"] = "Horde",
	},
	[10806] = {
		["previousQuest"] = 10805,
		["priority"] = 4,
		["questLog"] = true,
		["xp"] = 19000,
		["appliesTo"] = "Alliance",
	},
	[10810] = {
		["itemAmount"] = 1,
		["xp"] = 18100,
		["itemId"] = 31384,
	},
	[9794] = {
		["itemId"] = 26048,
		["itemAmount"] = 1,
		["xp"] = 2700,
		["appliesTo"] = "Alliance",
	},
	[10306] = {
		["itemAmount"] = 1,
		["xp"] = 12300,
		["itemId"] = 29235,
	},
	[11075] = {
		["xp"] = 6250,
	},
	[9802] = {
		["itemAmount"] = 10,
		["xp"] = 6240,
		["itemId"] = 24401,
	},
	[11336] = {
		["group"] = "dailybgalliance",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Alliance",
	},
	[11338] = {
		["group"] = "dailybgalliance",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Alliance",
	},
	[11340] = {
		["group"] = "dailybghorde",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Horde",
	},
	[11342] = {
		["group"] = "dailybghorde",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Horde",
	},
	[10579] = {
		["xp"] = 6250,
		["previousQuest"] = 10578,
	},
	[9563] = {
		["repfaction"] = 946,
		["itemId"] = 23848,
		["reputation"] = "friendly",
		["itemAmount"] = 1,
		["xp"] = 4020,
		["appliesTo"] = "Alliance",
	},
	[11354] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[9828] = {
		["itemId"] = 24484,
		["itemAmount"] = 1,
		["xp"] = 4020,
		["appliesTo"] = "Horde",
	},
	[11362] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11364] = {
		["group"] = "dailynormaldungeon",
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 1,
	},
	[10091] = {
		["questLog"] = true,
		["xp"] = 25300,
		["previousQuest"] = 10178,
	},
	[11368] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[10095] = {
		["questLog"] = true,
		["xp"] = 25300,
		["previousQuest"] = 10094,
	},
	[11372] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11374] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11376] = {
		["group"] = "dailynormaldungeon",
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 1,
	},
	[11378] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11380] = {
		["priority"] = 12,
		["group"] = "dailycooking",
		["questLog"] = true,
		["xp"] = 12650,
		["appliesTo"] = "cooking",
	},
	[11382] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11384] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11386] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11388] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[10880] = {
		["itemAmount"] = 1,
		["xp"] = 4320,
		["itemId"] = 31707,
	},
	[9866] = {
		["appliesTo"] = "Horde",
		["xp"] = 5800,
		["previousQuest"] = 9865,
	},
	[10633] = {
		["appliesTo"] = "Horde",
		["xp"] = 6250,
		["previousQuest"] = 10625,
	},
	[9870] = {
		["xp"] = 2850,
		["appliesTo"] = "Horde",
	},
	[9872] = {
		["repfaction"] = 941,
		["itemId"] = 24558,
		["reputation"] = "neutral",
		["itemAmount"] = 1,
		["xp"] = 11650,
		["appliesTo"] = "Horde",
	},
	[9882] = {
		["repfaction"] = 933,
		["reputation"] = "neutral",
		["itemAmount"] = 10,
		["xp"] = 11300,
		["itemId"] = 25416,
	},
	[10649] = {
		["questLog"] = true,
		["xp"] = 25300,
		["previousQuest"] = 10646,
	},
	[9631] = {
		["xp"] = 6250,
		["previousQuest"] = 9680,
	},
	[10653] = {
		["repfaction"] = 932,
		["reputation"] = "neutral",
		["itemAmount"] = 10,
		["xp"] = 12650,
		["itemId"] = 30809,
	},
	[10408] = {
		["priority"] = 3,
		["questLog"] = true,
		["xp"] = 19000,
		["previousQuest"] = 10406,
	},
	[10410] = {
		["xp"] = 9500,
		["previousQuest"] = 10407,
	},
	[10412] = {
		["repfaction"] = 934,
		["reputation"] = "neutral",
		["itemAmount"] = 10,
		["xp"] = 11000,
		["itemId"] = 29426,
	},
	[10420] = {
		["repfaction"] = 932,
		["reputation"] = "neutral",
		["itemAmount"] = 1,
		["xp"] = 15800,
		["itemId"] = 29740,
	},
	[10416] = {
		["repfaction"] = 934,
		["reputation"] = "neutral",
		["itemAmount"] = 1,
		["xp"] = 15800,
		["itemId"] = 29739,
	},
	[11335] = {
		["group"] = "dailybgalliance",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Alliance",
	},
	[10165] = {
		["xp"] = 22600,
		["questLog"] = true,
	},
	[7165] = {
		["repfaction"] = 729,
		["previousQuest"] = 7164,
		["reputation"] = "revered",
		["xp"] = 25150,
		["appliesTo"] = "Horde",
	},
	[9914] = {
		["repfaction"] = 933,
		["reputation"] = "neutral",
		["itemAmount"] = 27,
		["xp"] = 11300,
		["itemId"] = 25463,
	},
	[10413] = {
		["itemAmount"] = 1,
		["xp"] = 15800,
		["itemId"] = 29738,
	},
	[9373] = {
		["itemAmount"] = 1,
		["xp"] = 1960,
		["itemId"] = 23338,
	},
	[7172] = {
		["repfaction"] = 730,
		["previousQuest"] = 7171,
		["reputation"] = "exalted",
		["xp"] = 30150,
		["appliesTo"] = "Alliance",
	},
	[7171] = {
		["repfaction"] = 730,
		["previousQuest"] = 7170,
		["reputation"] = "exalted",
		["xp"] = 30150,
		["appliesTo"] = "Alliance",
	},
	[10434] = {
		["xp"] = 1250,
		["previousQuest"] = 10433,
	},
	[7170] = {
		["repfaction"] = 730,
		["previousQuest"] = 7169,
		["reputation"] = "revered",
		["xp"] = 25150,
		["appliesTo"] = "Alliance",
	},
	[9418] = {
		["itemAmount"] = 1,
		["xp"] = 6240,
		["itemId"] = 23580,
	},
	[10257] = {
		["questLog"] = true,
		["xp"] = 25300,
		["previousQuest"] = 10256,
	},
	[7168] = {
		["repfaction"] = 730,
		["previousQuest"] = 7162,
		["reputation"] = "friendly",
		["xp"] = 20100,
		["appliesTo"] = "Alliance",
	},
	[9934] = {
		["appliesTo"] = "Horde",
		["xp"] = 14150,
		["previousQuest"] = {
			9931, -- [1]
			9932, -- [2]
		},
	},
	[10317] = {
		["xp"] = 12650,
	},
	[9938] = {
		["priority"] = 1,
		["questLog"] = true,
		["xp"] = 17450,
		["appliesTo"] = "Alliance",
	},
	[10731] = {
		["repfaction"] = 967,
		["uniqueWith"] = {
			10732, -- [1]
			10729, -- [2]
			10730, -- [3]
		},
		["xp"] = 12650,
		["reputation"] = "friendly",
	},
	[10707] = {
		["priority"] = 6,
		["questLog"] = true,
		["xp"] = 19000,
		["previousQuest"] = 10706,
	},
	[9944] = {
		["xp"] = 1150,
		["appliesTo"] = "Horde",
	},
	[10201] = {
		["appliesTo"] = "Horde",
		["xp"] = 8250,
		["previousQuest"] = 9993,
	},
	[10740] = {
		["repfaction"] = 967,
		["previousQuest"] = 10735,
		["reputation"] = "revered",
		["xp"] = 15800,
		["uniqueWith"] = {
			10741, -- [1]
			10738, -- [2]
			10739, -- [3]
		},
	},
	[10462] = {
		["repfaction"] = 990,
		["uniqueWith"] = {
			10461, -- [1]
			10460, -- [2]
			10463, -- [3]
		},
		["xp"] = 12650,
		["reputation"] = "friendly",
	},
	[9697] = {
		["repfaction"] = 942,
		["xp"] = 9390,
		["reputation"] = "friendly",
	},
	[10727] = {
		["repfaction"] = 967,
		["previousQuest"] = 10740,
		["reputation"] = "exalted",
		["xp"] = 15800,
		["uniqueWith"] = {
			10728, -- [1]
			10725, -- [2]
			10726, -- [3]
		},
	},
	[10466] = {
		["repfaction"] = 990,
		["previousQuest"] = 10462,
		["reputation"] = "honored",
		["xp"] = 15800,
		["uniqueWith"] = {
			10465, -- [1]
			10467, -- [2]
			10464, -- [3]
		},
	},
	[10735] = {
		["repfaction"] = 967,
		["previousQuest"] = 10731,
		["reputation"] = "honored",
		["xp"] = 15800,
		["uniqueWith"] = {
			10736, -- [1]
			10733, -- [2]
			10734, -- [3]
		},
	},
	[10470] = {
		["repfaction"] = 990,
		["previousQuest"] = 10466,
		["reputation"] = "revered",
		["xp"] = 15800,
		["uniqueWith"] = {
			10469, -- [1]
			10471, -- [2]
			10468, -- [3]
		},
	},
	[11492] = {
		["questLog"] = true,
		["xp"] = 25300,
		["previousQuest"] = 11490,
	},
	[10474] = {
		["repfaction"] = 990,
		["previousQuest"] = 10470,
		["reputation"] = "exalted",
		["xp"] = 15800,
		["uniqueWith"] = {
			10473, -- [1]
			10475, -- [2]
			10472, -- [3]
		},
	},
	[10476] = {
		["itemId"] = 25433,
		["itemAmount"] = 10,
		["xp"] = 11650,
		["appliesTo"] = "Alliance",
	},
	[10423] = {
		["xp"] = 1250,
		["previousQuest"] = 10418,
	},
	[9715] = {
		["itemAmount"] = 5,
		["xp"] = 22000,
		["itemId"] = 24246,
	},
	[11502] = {
		["priority"] = 13,
		["questLog"] = true,
		["xp"] = 12650,
		["appliesTo"] = "Alliance",
	},
	[10334] = {
		["itemAmount"] = 1,
		["xp"] = 9250,
		["itemId"] = 29428,
	},
	[11506] = {
		["questLog"] = true,
		["xp"] = 10050,
		["appliesTo"] = "Horde",
	},
	[10316] = {
		["xp"] = 12300,
		["previousQuest"] = 10312,
	},
	[11000] = {
		["questLog"] = true,
		["xp"] = 25300,
		["previousQuest"] = 10998,
	},
	[11002] = {
		["itemId"] = 32385,
		["itemAmount"] = 1,
		["xp"] = 19000,
		["appliesTo"] = "Alliance",
	},
	[11004] = {
		["itemAmount"] = 6,
		["xp"] = 12650,
		["itemId"] = 32388,
	},
	[11516] = {
		["priority"] = 5,
		["questLog"] = true,
		["xp"] = 9500,
		["previousQuest"] = 11526,
	},
	[11008] = {
		["priority"] = 10,
		["questLog"] = true,
		["xp"] = 12650,
		["previousQuest"] = 11098,
	},
	[10755] = {
		["itemId"] = {
			31241, -- [1]
			23445, -- [2]
			22445, -- [3]
			22574, -- [4]
		},
		["itemAmount"] = {
			1, -- [1]
			4, -- [2]
			2, -- [3]
			4, -- [4]
		},
		["xp"] = 28450,
		["appliesTo"] = "Horde",
	},
	[10249] = {
		["xp"] = 18450,
		["previousQuest"] = 10248,
	},
	[9739] = {
		["itemAmount"] = 10,
		["xp"] = 6240,
		["itemId"] = 24290,
	},
	[11016] = {
		["appliesTo"] = "skinning",
		["group"] = "netherwingprofessions",
		["itemAmount"] = 35,
		["xp"] = 12650,
		["itemId"] = 32470,
	},
	[11018] = {
		["appliesTo"] = "mining",
		["group"] = "netherwingprofessions",
		["itemAmount"] = 40,
		["xp"] = 12650,
		["itemId"] = 32464,
	},
	[11020] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 2,
	},
	[9492] = {
		["questLog"] = true,
		["xp"] = 25300,
		["appliesTo"] = "Alliance",
	},
	[9494] = {
		["questLog"] = true,
		["xp"] = 25300,
		["appliesTo"] = "Alliance",
	},
	[9496] = {
		["questLog"] = true,
		["xp"] = 25300,
		["appliesTo"] = "Horde",
	},
	[11030] = {
		["itemAmount"] = {
			1, -- [1]
			1, -- [2]
		},
		["xp"] = 25300,
		["itemId"] = {
			32598, -- [1]
			32601, -- [2]
		},
	},
	[10010] = {
		["xp"] = 6000,
		["previousQuest"] = 10009,
	},
	[11542] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 8,
	},
	[11544] = {
		["questLog"] = true,
		["xp"] = 15800,
		["priority"] = 2,
	},
	[11546] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 5,
	},
	[9763] = {
		["xp"] = 25300,
		["questLog"] = true,
	},
	[11550] = {
		["xp"] = 3150,
	},
	[10682] = {
		["xp"] = 11650,
	},
	[10024] = {
		["repfaction"] = 932,
		["reputation"] = "neutral",
		["itemAmount"] = 8,
		["xp"] = 11000,
		["itemId"] = 25744,
	},
	[9771] = {
		["appliesTo"] = "Horde",
		["xp"] = 4020,
		["previousQuest"] = 9774,
	},
	[10793] = {
		["itemAmount"] = 1,
		["xp"] = 9500,
		["itemId"] = 31345,
	},
	[9775] = {
		["xp"] = 1020,
		["appliesTo"] = "Horde",
	},
	[10580] = {
		["completewith"] = 10581,
		["appliesTo"] = "Alliance",
		["xp"] = 5800,
		["previousQuest"] = 10518,
	},
	[9795] = {
		["xp"] = 2700,
		["appliesTo"] = "Horde",
	},
	[11009] = {
		["xp"] = 15800,
		["previousQuest"] = 11022,
	},
	[10038] = {
		["xp"] = 2120,
		["appliesTo"] = "Alliance",
	},
	[9785] = {
		["repfaction"] = 942,
		["xp"] = 4320,
		["reputation"] = "friendly",
	},
	[10297] = {
		["xp"] = 25300,
		["previousQuest"] = 10296,
	},
	[10782] = {
		["xp"] = 12300,
		["previousQuest"] = 10780,
	},
	[11084] = {
		["repfaction"] = 1015,
		["xp"] = 12650,
		["reputation"] = "honored",
	},
	[11094] = {
		["repfaction"] = 1015,
		["xp"] = 12650,
		["reputation"] = "revered",
	},
	[10305] = {
		["itemAmount"] = 1,
		["xp"] = 12300,
		["itemId"] = 29234,
	},
	[10307] = {
		["itemAmount"] = 1,
		["xp"] = 12300,
		["itemId"] = 29236,
	},
	[11099] = {
		["repfaction"] = 1015,
		["xp"] = 12650,
		["reputation"] = "revered",
	},
	[10523] = {
		["xp"] = 3150,
		["previousQuest"] = 10522,
	},
	[10750] = {
		["xp"] = 9500,
		["appliesTo"] = "Horde",
	},
	[10825] = {
		["itemAmount"] = 1,
		["xp"] = 1200,
		["itemId"] = 31489,
	},
	[11337] = {
		["group"] = "dailybgalliance",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Alliance",
	},
	[11339] = {
		["group"] = "dailybghorde",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Horde",
	},
	[11341] = {
		["group"] = "dailybghorde",
		["questLog"] = true,
		["xp"] = 30150,
		["appliesTo"] = "Horde",
	},
	[10745] = {
		["appliesTo"] = "Horde",
		["xp"] = 15800,
		["previousQuest"] = 10613,
	},
	[10325] = {
		["repfaction"] = 932,
		["reputation"] = "neutral",
		["itemAmount"] = 10,
		["xp"] = 11000,
		["itemId"] = 29425,
	},
	[11092] = {
		["repfaction"] = 1015,
		["xp"] = 12650,
		["reputation"] = "revered",
	},
	[10074] = {
		["itemId"] = 26043,
		["itemAmount"] = 20,
		["xp"] = 11650,
		["appliesTo"] = "Horde",
	},
	[10076] = {
		["itemId"] = 26043,
		["itemAmount"] = 20,
		["xp"] = 11650,
		["appliesTo"] = "Alliance",
	},
	[10680] = {
		["xp"] = 3150,
		["appliesTo"] = "Alliance",
	},
	[10744] = {
		["appliesTo"] = "Alliance",
		["xp"] = 15800,
		["previousQuest"] = 10612,
	},
	[9827] = {
		["itemId"] = 24483,
		["itemAmount"] = 1,
		["xp"] = 4020,
		["appliesTo"] = "Alliance",
	},
	[10251] = {
		["xp"] = 5800,
		["previousQuest"] = 10231,
	},
	[9831] = {
		["questLog"] = true,
		["xp"] = 25300,
		["previousQuest"] = 9829,
	},
	[11363] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[9933] = {
		["appliesTo"] = "Alliance",
		["xp"] = 14150,
		["previousQuest"] = {
			9931, -- [1]
			9932, -- [2]
		},
	},
	[9837] = {
		["xp"] = 19000,
		["previousQuest"] = 9836,
	},
	[11369] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11371] = {
		["group"] = "dailynormaldungeon",
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 1,
	},
	[10098] = {
		["xp"] = 24600,
		["questLog"] = true,
	},
	[11375] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11377] = {
		["priority"] = 12,
		["group"] = "dailycooking",
		["questLog"] = true,
		["xp"] = 12650,
		["appliesTo"] = "cooking",
	},
	[11379] = {
		["priority"] = 12,
		["group"] = "dailycooking",
		["questLog"] = true,
		["xp"] = 12650,
		["appliesTo"] = "cooking",
	},
	[11381] = {
		["priority"] = 12,
		["group"] = "dailycooking",
		["questLog"] = true,
		["xp"] = 12650,
		["appliesTo"] = "cooking",
	},
	[11383] = {
		["group"] = "dailynormaldungeon",
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 1,
	},
	[11385] = {
		["group"] = "dailynormaldungeon",
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 1,
	},
	[11387] = {
		["group"] = "dailynormaldungeon",
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 1,
	},
	[11389] = {
		["group"] = "dailynormaldungeon",
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 1,
	},
	[9861] = {
		["itemAmount"] = 1,
		["xp"] = 11650,
		["itemId"] = 24504,
	},
	[10667] = {
		["questLog"] = true,
		["xp"] = 33825,
		["previousQuest"] = {
			10665, -- [1]
			10666, -- [2]
		},
	},
	[11525] = {
		["questLog"] = true,
		["xp"] = 9500,
		["priority"] = 3,
	},
	[10017] = {
		["itemAmount"] = 8,
		["xp"] = 8600,
		["itemId"] = 25802,
	},
	[10926] = {
		["xp"] = 8250,
		["previousQuest"] = 10921,
	},
	[9871] = {
		["repfaction"] = 978,
		["itemId"] = 24559,
		["reputation"] = "neutral",
		["itemAmount"] = 1,
		["xp"] = 11650,
		["appliesTo"] = "Alliance",
	},
	[10863] = {
		["completewith"] = 10847,
		["xp"] = 6240,
		["appliesTo"] = "Alliance",
	},
	[10862] = {
		["completewith"] = 10847,
		["xp"] = 6240,
		["appliesTo"] = "Horde",
	},
	[10012] = {
		["itemId"] = 25765,
		["itemAmount"] = 1,
		["xp"] = 8600,
		["appliesTo"] = "Alliance",
	},
	[10134] = {
		["itemAmount"] = 1,
		["xp"] = 3150,
		["itemId"] = 29476,
	},
	[10006] = {
		["appliesTo"] = "Horde",
		["xp"] = 9330,
		["previousQuest"] = 10447,
	},
	[10393] = {
		["itemId"] = 29590,
		["itemAmount"] = 1,
		["xp"] = 970,
		["appliesTo"] = "Horde",
	},
	[10395] = {
		["itemId"] = 29588,
		["itemAmount"] = 1,
		["xp"] = 970,
		["appliesTo"] = "Alliance",
	},
	[10005] = {
		["appliesTo"] = "Alliance",
		["xp"] = 9330,
		["previousQuest"] = 10446,
	},
	[11533] = {
		["questLog"] = true,
		["xp"] = 9500,
		["priority"] = 2,
	},
	[10656] = {
		["repfaction"] = 934,
		["reputation"] = "neutral",
		["itemAmount"] = 10,
		["xp"] = 12650,
		["itemId"] = 30810,
	},
	[9893] = {
		["repfaction"] = 933,
		["reputation"] = "neutral",
		["itemAmount"] = 20,
		["xp"] = 11650,
		["itemId"] = 25433,
	},
	[10093] = {
		["appliesTo"] = "Alliance",
		["xp"] = 1560,
		["previousQuest"] = 10047,
	},
	[10917] = {
		["itemAmount"] = 30,
		["xp"] = 11000,
		["itemId"] = 25719,
	},
	[11108] = {
		["priority"] = 8,
		["questLog"] = true,
		["xp"] = 19000,
		["previousQuest"] = 11107,
	},
	[9401] = {
		["appliesTo"] = "Horde",
		["xp"] = 6020,
		["previousQuest"] = 9400,
	},
	[11178] = {
		["itemAmount"] = 1,
		["xp"] = 19000,
		["itemId"] = 33102,
	},
	[10670] = {
		["questLog"] = true,
		["xp"] = 33825,
		["previousQuest"] = {
			10665, -- [1]
			10666, -- [2]
		},
	},
	[9806] = {
		["itemAmount"] = 6,
		["xp"] = 8600,
		["itemId"] = 24449,
	},
	[10164] = {
		["xp"] = 23300,
		["questLog"] = true,
	},
	[9911] = {
		["itemAmount"] = 1,
		["xp"] = 8600,
		["itemId"] = 25459,
	},
	[9913] = {
		["xp"] = 1150,
	},
	[7141] = {
		["appliesTo"] = "Alliance",
		["questLog"] = true,
		["xp"] = 20150,
		["previousQuest"] = 7221,
	},
	[7142] = {
		["appliesTo"] = "Horde",
		["questLog"] = true,
		["xp"] = 20150,
		["previousQuest"] = 7222,
	},
	[9919] = {
		["repfaction"] = 970,
		["xp"] = 8600,
		["reputation"] = "neutral",
	},
	[11523] = {
		["questLog"] = true,
		["xp"] = 9500,
		["priority"] = 1,
	},
	[11877] = {
		["questLog"] = true,
		["xp"] = 9500,
		["priority"] = 4,
	},
	[11514] = {
		["questLog"] = true,
		["xp"] = 9500,
		["priority"] = 6,
	},
	[10182] = {
		["itemAmount"] = 1,
		["xp"] = 12000,
		["itemId"] = 29233,
	},
	[10439] = {
		["priority"] = 2,
		["questLog"] = true,
		["xp"] = 19000,
		["previousQuest"] = 10438,
	},
	[11536] = {
		["questLog"] = true,
		["xp"] = 12650,
		["priority"] = 4,
	},
	[9423] = {
		["appliesTo"] = "Alliance",
		["xp"] = 1020,
		["previousQuest"] = 9390,
	},
	[10445] = {
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 7,
	},
	[9937] = {
		["priority"] = 1,
		["questLog"] = true,
		["xp"] = 17450,
		["appliesTo"] = "Horde",
	},
	[9587] = {
		["itemId"] = 23890,
		["itemAmount"] = 1,
		["xp"] = 8040,
		["appliesTo"] = "Alliance",
	},
	[9588] = {
		["itemId"] = 23892,
		["itemAmount"] = 1,
		["xp"] = 8040,
		["appliesTo"] = "Horde",
	},
	[10097] = {
		["xp"] = 24600,
		["questLog"] = true,
	},
	[10860] = {
		["itemId"] = {
			31670, -- [1]
			31671, -- [2]
		},
		["itemAmount"] = {
			3, -- [1]
			3, -- [2]
		},
		["xp"] = 11650,
		["appliesTo"] = "Horde",
	},
	[11370] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[11373] = {
		["group"] = "dailyheroic",
		["questLog"] = true,
		["xp"] = 19000,
		["priority"] = 1,
	},
	[9977] = {
		["priority"] = 2,
		["questLog"] = true,
		["xp"] = 17450,
		["previousQuest"] = 9973,
	},
	[9853] = {
		["priority"] = 3,
		["questLog"] = true,
		["xp"] = 17450,
		["previousQuest"] = 9849,
	},
	[9743] = {
		["itemAmount"] = 6,
		["xp"] = 8600,
		["itemId"] = 24291,
	},
	[10511] = {
		["itemId"] = 29443,
		["itemAmount"] = 11,
		["xp"] = 11300,
		["appliesTo"] = "Alliance",
	},
	[7163] = {
		["repfaction"] = 729,
		["previousQuest"] = 7161,
		["reputation"] = "friendly",
		["xp"] = 20100,
		["appliesTo"] = "Horde",
	},
	[7164] = {
		["repfaction"] = 729,
		["previousQuest"] = 7163,
		["reputation"] = "honored",
		["xp"] = 20100,
		["appliesTo"] = "Horde",
	},
	[10218] = {
		["xp"] = 22600,
		["questLog"] = true,
	},
	[7166] = {
		["repfaction"] = 729,
		["previousQuest"] = 7165,
		["reputation"] = "exalted",
		["xp"] = 30150,
		["appliesTo"] = "Horde",
	},
	[7167] = {
		["repfaction"] = 729,
		["previousQuest"] = 7166,
		["reputation"] = "exalted",
		["xp"] = 30150,
		["appliesTo"] = "Horde",
	},
	[10479] = {
		["itemId"] = 25433,
		["itemAmount"] = 10,
		["xp"] = 11650,
		["appliesTo"] = "Horde",
	},
	[7169] = {
		["repfaction"] = 730,
		["previousQuest"] = 7162,
		["reputation"] = "honored",
		["xp"] = 20100,
		["appliesTo"] = "Alliance",
	},
	[11503] = {
		["priority"] = 13,
		["questLog"] = true,
		["xp"] = 12650,
		["appliesTo"] = "Horde",
	},
	[9808] = {
		["itemAmount"] = 10,
		["xp"] = 8600,
		["itemId"] = 24245,
	},
}

addon.taxiPos = {
  [0] = {
    [2] = {wx = -8840.55957, wy = 489.70001, flag = 1},
    [4] = {wx = -10629.29004, wy = 1036.94995, flag = 1},
    [5] = {wx = -9429.09961, wy = -2231.39990, flag = 1},
    [6] = {wx = -4821.77979, wy = -1155.43994, flag = 1},
    [7] = {wx = -3792.26001, wy = -783.28998, flag = 1},
    [8] = {wx = -5421.91016, wy = -2930.01001, flag = 1},
    [10] = {wx = 478.85999, wy = 1536.58997, flag = 2},
    [11] = {wx = 1568.62000, wy = 267.97000, flag = 2},
    [12] = {wx = -10515.45996, wy = -1261.65002, flag = 1},
    [13] = {wx = -0.06000, wy = -859.90997, flag = 2},
    [14] = {wx = -711.47998, wy = -515.47998, flag = 1},
    [16] = {wx = -1240.53003, wy = -2515.11011, flag = 1},
    [17] = {wx = -916.28998, wy = -3496.88989, flag = 2},
    [18] = {wx = -14444.29004, wy = 509.62000, flag = 2},
    [19] = {wx = -14473.04980, wy = 464.14999, flag = 1},
    [20] = {wx = -12414.17969, wy = 146.28999, flag = 2},
    [21] = {wx = -6633.99023, wy = -2180.05005, flag = 2},
    [43] = {wx = 283.73999, wy = -2002.76001, flag = 1},
    [45] = {wx = -11112.25000, wy = -3435.73999, flag = 1},
    [56] = {wx = -10456.96973, wy = -3279.25000, flag = 2},
    [67] = {wx = 2271.09009, wy = -5340.79980, flag = 1},
    [84] = {wx = 2998.70996, wy = -3050.10010, flag = 3},
    [76] = {wx = -635.26001, wy = -4720.50000, flag = 2},
    [68] = {wx = 2327.40991, wy = -5286.89014, flag = 2},
    [87] = {wx = 1857.56006, wy = -3658.46997, flag = 3},
    [75] = {wx = -6554.93018, wy = -1100.05005, flag = 2},
    [86] = {wx = 2499.22998, wy = -4742.85010, flag = 3},
    [195] = {wx = -11343.96973, wy = -216.83000, flag = 1},
    [74] = {wx = -6552.58984, wy = -1168.27002, flag = 1},
    [70] = {wx = -7504.02979, wy = -2187.54004, flag = 2},
    [85] = {wx = 3109.31006, wy = -4285.12988, flag = 3},
    [71] = {wx = -8364.61035, wy = -2738.35010, flag = 1},
    [66] = {wx = 931.32001, wy = -1430.10999, flag = 1},
  },
  [1] = {
    [22] = {wx = -1197.20996, wy = 29.71000, flag = 2},
    [23] = {wx = 1677.58997, wy = -4315.70996, flag = 2},
    [25] = {wx = -441.79999, wy = -2596.08008, flag = 2},
    [26] = {wx = 6341.37988, wy = 557.67999, flag = 1},
    [27] = {wx = 8643.58984, wy = 841.04999, flag = 1},
    [28] = {wx = 2827.34009, wy = -289.23999, flag = 1},
    [29] = {wx = 966.57001, wy = 1040.31995, flag = 2},
    [30] = {wx = -5407.70996, wy = -2414.30005, flag = 2},
    [31] = {wx = -4491.87988, wy = -775.89001, flag = 1},
    [32] = {wx = -3825.37012, wy = -4516.58008, flag = 1},
    [33] = {wx = 2681.12988, wy = 1461.68005, flag = 1},
    [37] = {wx = 139.24001, wy = 1325.81995, flag = 1},
    [38] = {wx = -1767.64001, wy = 3263.88989, flag = 2},
    [39] = {wx = -7223.97021, wy = -3734.59009, flag = 1},
    [40] = {wx = -7048.89014, wy = -3780.36011, flag = 2},
    [41] = {wx = -4373.79980, wy = 3338.64990, flag = 1},
    [42] = {wx = -4419.85986, wy = 199.31000, flag = 2},
    [44] = {wx = 3661.52002, wy = -4390.37988, flag = 2},
    [48] = {wx = 5068.39990, wy = -337.22000, flag = 2},
    [49] = {wx = 7458.45020, wy = -2487.20996, flag = 1},
    [52] = {wx = 6796.79980, wy = -4742.39014, flag = 1},
    [53] = {wx = 6813.06006, wy = -4611.12012, flag = 2},
    [55] = {wx = -3147.38989, wy = -2842.17993, flag = 2},
    [58] = {wx = 3374.70996, wy = 996.96997, flag = 2},
    [61] = {wx = 2302.38989, wy = -2524.55005, flag = 2},
    [62] = {wx = 7793.60986, wy = -2403.46997, flag = 1},
    [63] = {wx = 7787.72021, wy = -2404.10010, flag = 2},
    [64] = {wx = 2721.98999, wy = -3880.63989, flag = 1},
    [65] = {wx = 6205.87988, wy = -1949.63000, flag = 1},
    [69] = {wx = 7470.39014, wy = -2123.37988, flag = 2},
    [72] = {wx = -6811.39014, wy = 836.73999, flag = 2},
    [73] = {wx = -6761.83008, wy = 772.03003, flag = 1},
    [77] = {wx = -2380.66992, wy = -1882.67004, flag = 2},
    [79] = {wx = -6113.81982, wy = -1142.69995, flag = 3},
    [80] = {wx = -894.59003, wy = -3773.01001, flag = 3},
    [166] = {wx = 3978.73999, wy = -1316.42004, flag = 3},
    [179] = {wx = -4566.22998, wy = -3226.05005, flag = 3},
    [144] = {wx = -8162.00977, wy = -4796.22998, flag = 3},
    [143] = {wx = -8360.73047, wy = -4327.72998, flag = 3},
    [167] = {wx = 3000.25000, wy = -3202.40991, flag = 1},
  },
  [560] = {
    [115] = {wx = 2384.72998, wy = 1169.38000, flag = 3},
  },
  [530] = {
    [82] = {wx = 9375.24023, wy = -7165.89014, flag = 2},
    [83] = {wx = 7594.47021, wy = -6784.29004, flag = 2},
    [93] = {wx = -1933.27002, wy = -11954.61035, flag = 1},
    [94] = {wx = -4054.88989, wy = -11793.34961, flag = 1},
    [95] = {wx = -146.28999, wy = 5532.56006, flag = 2},
    [97] = {wx = -3968.37012, wy = -11929.15039, flag = 1},
    [99] = {wx = 228.50000, wy = 2633.57007, flag = 2},
    [100] = {wx = -673.41998, wy = 2717.27002, flag = 1},
    [101] = {wx = 199.16000, wy = 4241.56006, flag = 1},
    [102] = {wx = -587.40997, wy = 4101.00977, flag = 2},
    [103] = {wx = -1810.16003, wy = 8032.10986, flag = 3},
    [104] = {wx = -1824.18005, wy = 8049.29004, flag = 3},
    [105] = {wx = -1513.40002, wy = 8140.93018, flag = 3},
    [106] = {wx = -1511.26001, wy = 8149.70996, flag = 1},
    [107] = {wx = -1387.06995, wy = 7782.41016, flag = 3},
    [108] = {wx = -1376.71997, wy = 7771.16992, flag = 1},
    [109] = {wx = -1656.59998, wy = 7724.91016, flag = 3},
    [110] = {wx = -1658.90002, wy = 7724.70996, flag = 1},
    [111] = {wx = 9335.83008, wy = -7883.06982, flag = 3},
    [112] = {wx = 9335.66992, wy = -7809.70996, flag = 3},
    [113] = {wx = -1544.35999, wy = 8792.07031, flag = 3},
    [117] = {wx = 213.75000, wy = 6063.75000, flag = 1},
    [118] = {wx = 219.45000, wy = 7816.00000, flag = 2},
    [119] = {wx = -2729.00000, wy = 7305.29980, flag = 1},
    [120] = {wx = -1261.08997, wy = 7133.39014, flag = 2},
    [121] = {wx = -2987.23999, wy = 3872.78003, flag = 1},
    [122] = {wx = 3082.31006, wy = 3596.11011, flag = 3},
    [123] = {wx = -3018.62012, wy = 2557.09009, flag = 2},
    [124] = {wx = -3982.07007, wy = 2156.46997, flag = 1},
    [125] = {wx = 2183.64990, wy = 6794.45996, flag = 1},
    [126] = {wx = 2446.37012, wy = 6020.93018, flag = 2},
    [127] = {wx = -2567.33008, wy = 4423.83008, flag = 2},
    [128] = {wx = -1837.22998, wy = 5301.89990, flag = 3},
    [129] = {wx = -327.35001, wy = 1020.48999, flag = 1},
    [130] = {wx = -178.09000, wy = 1026.71997, flag = 2},
    [131] = {wx = -25.51000, wy = 2133.44995, flag = 3},
    [132] = {wx = -25.60000, wy = 2133.39990, flag = 2},
    [133] = {wx = -673.72998, wy = 1855.29004, flag = 3},
    [134] = {wx = -673.75000, wy = 1855.31995, flag = 3},
    [135] = {wx = -27.65000, wy = 2126.57007, flag = 3},
    [136] = {wx = -27.52000, wy = 2126.50000, flag = 3},
    [137] = {wx = 298.50000, wy = 1501.26001, flag = 3},
    [138] = {wx = 298.59000, wy = 1501.13000, flag = 3},
    [139] = {wx = 4157.58008, wy = 2959.68994, flag = 3},
    [140] = {wx = -3065.60010, wy = 749.41998, flag = 3},
    [141] = {wx = -1316.83997, wy = 2358.62012, flag = 2},
    [142] = {wx = -29.16000, wy = 2125.71997, flag = 2},
    [145] = {wx = 3079.01001, wy = 3599.08008, flag = 2},
    [147] = {wx = 509.17001, wy = 1988.68994, flag = 1},
    [148] = {wx = 298.45999, wy = 1501.18005, flag = 1},
    [149] = {wx = 276.20001, wy = 1486.91003, flag = 1},
    [150] = {wx = 2974.94995, wy = 1848.23999, flag = 3},
    [151] = {wx = 91.67000, wy = 5214.91992, flag = 2},
    [152] = {wx = 4262.39014, wy = 2136.91992, flag = 3},
    [153] = {wx = 4266.70020, wy = 2133.37988, flag = 3},
    [154] = {wx = 20047.88086, wy = 5200.68994, flag = 3},
    [156] = {wx = 1857.34998, wy = 5531.87012, flag = 1},
    [157] = {wx = 2277.73999, wy = 5983.35010, flag = 2},
    [159] = {wx = -4073.16992, wy = 1123.60999, flag = 3},
    [160] = {wx = 2976.01001, wy = 5501.12988, flag = 3},
    [163] = {wx = 2028.79004, wy = 4705.27002, flag = 2},
    [164] = {wx = 966.66998, wy = 7399.16016, flag = 1},
    [169] = {wx = -5224.52979, wy = 631.84998, flag = 3},
    [171] = {wx = -3364.67993, wy = 3650.17993, flag = 3},
    [205] = {wx = 6789.79004, wy = -7747.58008, flag = 3},
    [209] = {wx = 13008.37988, wy = -6911.81006, flag = 2},
    [211] = {wx = 13007.50000, wy = -6911.81006, flag = 2},
    [212] = {wx = 13188.04004, wy = -7047.04004, flag = 2},
    [213] = {wx = 13012.70020, wy = -6908.37012, flag = 11},
  },
  [30] = {
    [60] = {wx = -1335.43994, wy = -319.69000, flag = 2},
    [59] = {wx = 574.21002, wy = -46.65000, flag = 1},
  },
  [451] = {
    [201] = {wx = 15992.44043, wy = -16371.94043, flag = 3},
  },
}
