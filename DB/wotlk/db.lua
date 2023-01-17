local addonName, addon = ...

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

addon.defaultGuideList = {
    ["Elwynn Forest"] = "RestedXP Alliance 1-20\\01-11 Elwynn Forest",
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

addon.mapId = {
    ["Dire Maul"] = 234,
    ["The Hinterlands"] = 1425,
    ["Northrend"] = 113,
    ["Cosmic"] = 946,
    ["Blackrock Spire"] = 250,
    ["Razorfen Downs"] = 300,
    ["Hrothgar's Landing"] = 170,
    ["Black Temple"] = 339,
    ["Westfall"] = 1436,
    ["Isle of Conquest"] = 169,
    ["The Eye of Eternity"] = 141,
    ["Eastern Kingdoms"] = 1415,
    ["Undercity"] = 1458,
    ["Zul'Aman"] = 333,
    ["The Blood Furnace"] = 261,
    ["Kalimdor"] = 1414,
    ["Karazhan"] = 350,
    ["Ahn'kahet: The Old Kingdom"] = 132,
    ["The Barrens"] = 1413,
    ["StormwindNew"] = 1453,
    ["Darnassus"] = 1457,
    ["Azuremyst Isle"] = 1943,
    ["Ruins of Ahn'Qiraj"] = 247,
    ["Gundrak"] = 153,
    ["Sethekk Halls"] = 258,
    ["Un'Goro Crater"] = 1449,
    ["Ironforge"] = 1455,
    ["Dalaran"] = 125,
    ["The Violet Hold"] = 168,
    ["Burning Steppes"] = 1428,
    ["Wetlands"] = 1437,
    ["SholazarBasin"] = 119,
    ["Halls of Stone"] = 140,
    ["Plaguelands: The Scarlet Enclave"] = 124,
    ["Howling Fjord"] = 117,
    ["CrystalsongForest"] = 127,
    ["Arathi Basin"] = 1461,
    ["BoreanTundra"] = 114,
    ["Dustwallow Marsh"] = 1445,
    ["Naxxramas"] = 162,
    ["Searing Gorge"] = 1427,
    ["Loch Modan"] = 1432,
    ["Blade's Edge Mountains"] = 1949,
    ["Hyjal Summit"] = 329,
    ["Hellfire Ramparts"] = 347,
    ["Vault of Archavon"] = 156,
    ["Wailing Caverns"] = 279,
    ["Onyxia's Lair"] = 248,
    ["Grizzly Hills"] = 116,
    ["Ashenvale"] = 1440,
    ["Pit of Saron"] = 184,
    ["Azeroth"] = 947,
    ["Blackfathom Deeps"] = 221,
    ["Serpentshrine Cavern"] = 332,
    ["EPLNew"] = 1423,
    ["HowlingFjord"] = 117,
    ["ScholomanceOLD"] = 306,
    ["Blackrock Depths"] = 242,
    ["Nagrand"] = 1951,
    ["Wintergrasp"] = 123,
    ["TheStormPeaks"] = 120,
    ["Terokkar Forest"] = 1952,
    ["Ahn'Qiraj"] = 319,
    ["Eversong Woods"] = 1941,
    ["The Underbog"] = 262,
    ["Utgarde Keep"] = 133,
    ["Maraudon"] = 280,
    ["Trial of the Crusader"] = 172,
    ["Tanaris"] = 1446,
    ["Stratholme"] = 317,
    ["Borean Tundra"] = 114,
    ["Utgarde Pinnacle"] = 136,
    ["The Temple of Atal'Hakkar"] = 220,
    ["EPLClassic"] = 1423,
    ["Swamp of Sorrows"] = 1435,
    ["StormwindClassic"] = 1453,
    ["Moonglade"] = 1450,
    ["The Culling of Stratholme"] = 130,
    ["ZulDrak"] = 121,
    ["Shadow Labyrinth"] = 260,
    ["Eastern Plaguelands"] = 1423,
    ["StormPeaks"] = 120,
    ["Arathi Highlands"] = 1417,
    ["ScarletEnclave"] = 124,
    ["Isle of Quel'Danas"] = 1957,
    ["Blasted Lands"] = 1419,
    ["Halls of Lightning"] = 138,
    ["Eye of the Storm"] = 1956,
    ["Mulgore"] = 1412,
    ["Shattrath City"] = 1955,
    ["Deadwind Pass"] = 1430,
    ["Silvermoon City"] = 1954,
    ["Halls of Reflection"] = 185,
    ["Bloodmyst Isle"] = 1950,
    ["Shadowmoon Valley"] = 1948,
    ["Shadowfang Keep"] = 310,
    ["The Exodar"] = 1947,
    ["The Shattered Halls"] = 246,
    ["Zangarmarsh"] = 1946,
    ["The Obsidian Sanctum"] = 155,
    ["Silverpine Forest"] = 1421,
    ["Hellfire Peninsula"] = 1944,
    ["Trial of the Champion"] = 171,
    ["Zul'Farrak"] = 219,
    ["Warsong Gulch"] = 1460,
    ["Thunder Bluff"] = 1456,
    ["Alterac Valley"] = 1459,
    ["Stonetalon Mountains"] = 1442,
    ["Orgrimmar"] = 1454,
    ["Stormwind City"] = 1453,
    ["Azjol-Nerub"] = 157,
    ["Ulduar"] = 147,
    ["Auchenai Crypts"] = 256,
    ["Drak'Tharon Keep"] = 160,
    ["Winterspring"] = 1452,
    ["Silithus"] = 1451,
    ["GrizzlyHills"] = 116,
    ["Scarlet Monastery"] = 302,
    ["The Ruby Sanctum"] = 200,
    ["Felwood"] = 1448,
    ["The Mechanar"] = 267,
    ["The Nexus"] = 129,
    ["The Black Morass"] = 273,
    ["Badlands"] = 1418,
    ["Thousand Needles"] = 1441,
    ["Dragonblight"] = 115,
    ["Old Hillsbrad Foothills"] = 274,
    ["Gnomeregan"] = 226,
    ["Desolace"] = 1443,
    ["Tirisfal Glades"] = 1420,
    ["Zul'Gurub"] = 233,
    ["Sunwell Plateau"] = 335,
    ["Azshara"] = 1447,
    ["Darkshore"] = 1439,
    ["The Botanica"] = 266,
    ["Teldrassil"] = 1438,
    ["Sholazar Basin"] = 119,
    ["Stranglethorn Vale"] = 1434,
    ["The Stockade"] = 225,
    ["Alterac Mountains"] = 1416,
    ["Icecrown"] = 118,
    ["Strand of the Ancients"] = 128,
    ["Netherstorm"] = 1953,
    ["The Steamvault"] = 263,
    ["Gruul's Lair"] = 330,
    ["Redridge Mountains"] = 1433,
    ["The Deadmines"] = 291,
    ["Uldaman"] = 230,
    ["Ghostlands"] = 1942,
    ["Magtheridon's Lair"] = 331,
    ["Duskwood"] = 1431,
    ["Elwynn Forest"] = 1429,
    ["Ragefire Chasm"] = 213,
    ["Western Plaguelands"] = 1422,
    ["Dun Morogh"] = 1426,
    ["Icecrown Citadel"] = 186,
    ["IcecrownGlacier"] = 118,
    ["The Storm Peaks"] = 120,
    ["The Forge of Souls"] = 183,
    ["Crystalsong Forest"] = 127,
    ["Durotar"] = 1411,
    ["Tempest Keep"] = 334,
    ["Razorfen Kraul"] = 301,
    ["The Slave Pens"] = 265,
    ["Zul'Drak"] = 121,
    ["Feralas"] = 1444,
    ["Molten Core"] = 232,
    ["Blackwing Lair"] = 287,
    ["Mana-Tombs"] = 272,
    ["The Oculus"] = 142,
    ["Hillsbrad Foothills"] = 1424,
    ["The Arcatraz"] = 269,
    ["Outland"] = 1945, --987?
}


addon.mapId["ScarletEnclave"] = 124
addon.mapId["IcecrownGlacier"] = addon.mapId["Icecrown"]
addon.mapId["CrystalsongForest"] = addon.mapId["Crystalsong Forest"]
addon.mapId["StormPeaks"] = addon.mapId["The Storm Peaks"]
addon.mapId["TheStormPeaks"] = addon.mapId["The Storm Peaks"]
addon.mapId["SholazarBasin"] = addon.mapId["Sholazar Basin"]
addon.mapId["ZulDrak"] = addon.mapId["Zul'Drak"]
addon.mapId["GrizzlyHills"] = addon.mapId["Grizzly Hills"]
addon.mapId["HowlingFjord"] = addon.mapId["Howling Fjord"]
addon.mapId["BoreanTundra"] = addon.mapId["Borean Tundra"]


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
        local _, _, standing = GetFactionInfoByID(faction)
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
            print(outputString)
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
        local aldor = addon.AldorScryerCheck("Aldor") and 932
        local scryer = addon.AldorScryerCheck("Scryer") and 934
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
        print(t)
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

addon.mountIDs = {
	[75] = {
		67466, --Argent Warhorse
		58983, --Big Blizzard Bear
		35022, --Black Hawkstrider
		6896, --Black Ram
		64977, --Black Skeletal Horse
		470, --Black Stallion
		578, --Black Wolf
		64658, --Black Wolf
		35020, --Blue Hawkstrider
		10969, --Blue Mechanostrider
		33630, --Blue Mechanostrider
		17463, --Blue Skeletal Horse
		50869, --Brewfest Kodo
		43899, --Brewfest Ram
		50870, --Brewfest Ram
		17464, --Brown Skeletal Horse
		6654, --Brown Wolf
		34406, --Brown Elekk
		458, --Brown Horse
		18990, --Brown Kodo
		6899, --Brown Ram
		75614, --Celestial Steed
		6648, --Chestnut Mare
		6653, --Dire Wolf
		8395, --Emerald Raptor
		394209, --Festering Emerald Drake
		35710, --Gray Elekk
		18989, --Gray Kodo
		6777, --Gray Ram
		15780, --Green Mechanostrider
		17453, --Green Mechanostrider
		48025, --Headless Horseman's Mount
		72286, --Invincible
		10795, --Ivory Raptor
		372677, --Kalu'ak Whalebone Glider
		472, --Pinto
		35711, --Purple Elekk
		35018, --Purple Hawkstrider
		348459, --Reawakened Phase-Hunter
		34795, --Red Hawkstrider
		10873, --Red Mechanostrider
		17462, --Red Skeletal Horse
		579, --Red Wolf
		16080, --Red Wolf
		42776, --Spectral Tiger
		10789, --Spotted Frostsaber
		66847, --Striped Dawnsaber
		8394, --Striped Frostsaber
		10793, --Striped Nightsaber
		580, --Timber Wolf
		10796, --Turquoise Raptor
		17454, --Unpainted Mechanostrider
		10799, --Violet Raptor
		64657, --White Kodo
		6898, --White Ram
		468, --White Stallion
		581, --Winter Wolf
		74856, --Blazing Hippogryph
		387320, --Blazing Hippogryph
		54729, --Winged Steed of the Ebon Blade
		71342, --X-45 Heartbreaker
		75973, --X-53 Touring Rocket
        5784, --Felsteed
        13819, --Warhorse
	},

	[150] = {
		43688, --Amani War Bear
		16056, --Ancient Frostsaber
		66906, --Argent Charger
		60114, --Armored Brown Bear
		60116, --Armored Brown Bear
		51412, --Big Battle Bear
		387319, --Big Battle Bear
		58983, --Big Blizzard Bear
		22719, --Black Battlestrider
		16055, --Black Nightsaber
		26656, --Black Qiraji Battle Tank
		17461, --Black Ram
		60118, --Black War Bear
		60119, --Black War Bear
		48027, --Black War Elekk
		22718, --Black War Kodo
		59785, --Black War Mammoth
		59788, --Black War Mammoth
		22720, --Black War Ram
		22721, --Black War Raptor
		22717, --Black War Steed
		22723, --Black War Tiger
		22724, --Black War Wolf
		25953, --Blue Qiraji Battle Tank
		64656, --Blue Skeletal Warhorse
		75614, --Celestial Steed
		39315, --Cobalt Riding Talbuk
		34896, --Cobalt War Talbuk
		73313, --Crimson Deathcharger
		68188, --Crusader's Black Warhorse
		68187, --Crusader's White Warhorse
		39316, --Dark Riding Talbuk
		34790, --Dark War Talbuk
		63635, --Darkspear Raptor
		63637, --Darnassian Nightsaber
		63639, --Exodar Elekk
		394209, --Festering Emerald Drake
		36702, --Fiery Warhorse
		63643, --Forsaken Warhorse
		17460, --Frost Ram
		23509, --Frostwolf Howler
		63638, --Gnomeregan Mechanostrider
		61465, --Grand Black War Mammoth
		61467, --Grand Black War Mammoth
		59802, --Grand Ice Mammoth
		59804, --Grand Ice Mammoth
		61469, --Grand Ice Mammoth
		61470, --Grand Ice Mammoth
		35713, --Great Blue Elekk
		49379, --Great Brewfest Kodo
		23249, --Great Brown Kodo
		65641, --Great Golden Kodo
		23248, --Great Gray Kodo
		35712, --Great Green Elekk
		35714, --Great Purple Elekk
		65637, --Great Red Elekk
		23247, --Great White Kodo
		18991, --Green Kodo
		26056, --Green Qiraji Battle Tank
		17465, --Green Skeletal Warhorse
		48025, --Headless Horseman's Mount
		59797, --Ice Mammoth
		59799, --Ice Mammoth
		17459, --Icy Blue Mechanostrider Mod A
		72286, --Invincible
		63636, --Ironforge Ram
		17450, --Ivory Raptor
		372677, --Kalu'ak Whalebone Glider
		65917, --Magic Rooster
		387308, --Magic Rooster
		55531, --Mechano-hog
		60424, --Mekgineer's Chopper
		16084, --Mottled Red Raptor
		66846, --Ochre Skeletal Warhorse
		63640, --Orgrimmar Wolf
		16082, --Palomino
		23246, --Purple Skeletal Warhorse
		66090, --Quel'dorei Steed
		41252, --Raven Lord
		26054, --Red Qiraji Battle Tank
		22722, --Red Skeletal Warhorse
		17481, --Rivendare's Deathcharger
		39317, --Silver Riding Talbuk
		34898, --Silver War Talbuk
		63642, --Silvermoon Hawkstrider
		23510, --Stormpike Battle Charger
		63232, --Stormwind Steed
		66091, --Sunreaver Hawkstrider
		68057, --Swift Alliance Steed
		23241, --Swift Blue Raptor
		43900, --Swift Brewfest Ram
		23238, --Swift Brown Ram
		23229, --Swift Brown Steed
		23250, --Swift Brown Wolf
		65646, --Swift Burgundy Wolf
		23221, --Swift Frostsaber
		23239, --Swift Gray Ram
		65640, --Swift Gray Steed
		23252, --Swift Gray Wolf
		35025, --Swift Green Hawkstrider
		23225, --Swift Green Mechanostrider
		68056, --Swift Horde Wolf
		23219, --Swift Mistsaber
		65638, --Swift Moonsaber
		23242, --Swift Olive Raptor
		23243, --Swift Orange Raptor
		23227, --Swift Palomino
		33660, --Swift Pink Hawkstrider
		35027, --Swift Purple Hawkstrider
		65644, --Swift Purple Raptor
		42777, --Swift Spectral Tiger
		23338, --Swift Stormsaber
		23251, --Swift Timber Wolf
		65643, --Swift Violet Ram
		35028, --Swift Warstrider
		46628, --Swift White Hawkstrider
		23223, --Swift White Mechanostrider
		23240, --Swift White Ram
		23228, --Swift White Steed
		23222, --Swift Yellow Mechanostrider
		48954, --Swift Zhevra
		49322, --Swift Zhevra
		24252, --Swift Zulian Tiger
		39318, --Tan Riding Talbuk
		34899, --Tan War Talbuk
		18992, --Teal Kodo
		63641, --Thunder Bluff Kodo
		61425, --Traveler's Tundra Mammoth
		61447, --Traveler's Tundra Mammoth
		65642, --Turbostrider
		42781, --Upper Deck - Spectral Tiger Mount
		64659, --Venomhide Ravasaur
		15779, --White Mechanostrider Mod B
		54753, --White Polar Bear
		39319, --White Riding Talbuk
		65645, --White Skeletal Warhorse
		16083, --White Stallion
		34897, --White War Talbuk
		16081, --Winter Wolf
		17229, --Winterspring Frostsaber
		59791, --Wooly Mammoth
		59793, --Wooly Mammoth
		74918, --Wooly White Rhino
		387321, --Wooly White Rhino
		26055, --Yellow Qiraji Battle Tank
		74856, --Blazing Hippogryph
		387320, --Blazing Hippogryph
		54729, --Winged Steed of the Ebon Blade
		71342, --X-45 Heartbreaker
		75973, --X-53 Touring Rocket
        23161, --Dreadsteed
        23214, --Charger
	},

	[225] = {
		74856, --Blazing Hippogryph
		387320, --Blazing Hippogryph
		32244, --Blue Wind Rider
		75614, --Celestial Steed
		32239, --Ebon Gryphon
		394209, --Festering Emerald Drake
		61451, --Flying Carpet
		44153, --Flying Machine
		32235, --Golden Gryphon
		32245, --Green Wind Rider
		48025, --Headless Horseman's Mount
		72286, --Invincible
		372677, --Kalu'ak Whalebone Glider
		61309, --Magnificent Flying Carpet
		32240, --Snowy Gryphon
		32243, --Tawny Wind Rider
		54729, --Winged Steed of the Ebon Blade
		71342, --X-45 Heartbreaker
		46197, --X-51 Nether-Rocket
		387323, --X-51 Nether-Rocket
		75973, --X-53 Touring Rocket
	},

	[300] = {
		60025, --Albino Drake
		63844, --Argent Hippogryph
		61230, --Armored Blue Wind Rider
		61229, --Armored Snowy Gryphon
		59567, --Azure Drake
		41514, --Azure Netherwing Drake
		59650, --Black Drake
		59976, --Black Proto-Drake
		74856, --Blazing Hippogryph
		387320, --Blazing Hippogryph
		61996, --Blue Dragonhawk
		59568, --Blue Drake
		59996, --Blue Proto-Drake
		39803, --Blue Riding Nether Ray
		59569, --Bronze Drake
		75614, --Celestial Steed
		43927, --Cenarion War Hippogryph
		41515, --Cobalt Netherwing Drake
		394209, --Festering Emerald Drake
		75596, --Frosty Flying Carpet
		61294, --Green Proto Drake
		39798, --Green Riding Nether Ray
		48025, --Headless Horseman's Mount
		72286, --Invincible
		372677, --Kalu'ak Whalebone Glider
		41513, --Onyx Netherwing Drake
		41516, --Purple Netherwing Drake
		39801, --Purple Riding Nether Ray
		61997, --Red Dragonhawk
		59570, --Red Drake
		59961, --Red Proto-Drake
		39800, --Red Riding Nether Ray
		66087, --Silver Covenant Hippogryph
		39802, --Silver Riding Nether Ray
		66088, --Sunreaver Dragonhawk
		32242, --Swift Blue Gryphon
		32290, --Swift Green Gryphon
		32295, --Swift Green Wind Rider
		32292, --Swift Purple Gryphon
		32297, --Swift Purple Wind Rider
		32296, --Swift Yellow Wind Rider
		60002, --Time-Lost Proto-Drake
		44151, --Turbo-Charged Flying Machine
		59571, --Twilight Drake
		41517, --Veridian Netherwing Drake
		41518, --Violet Netherwing Drake
		54729, --Winged Steed of the Ebon Blade
		71342, --X-45 Heartbreaker
		46199, --X-51 Nether-Rocket X-TREME
		387311, --X-51 Nether-Rocket X-TREME
		75973, --X-53 Touring Rocket
	},


	[375] = {
		40192, --Ashes of Al'ar
		72808, --Bloodbathed Frostbrood Vanquisher
		58615, --Brutal Nether Drake
		75614, --Celestial Steed
		64927, --Deadly Gladiator's Frost Wyrm
		65439, --Furious Gladiator's Frost Wyrm
		72807, --Icebound Frostbrood Vanquisher
		48025, --Headless Horseman's Mount
		72286, --Invincible
		63956, --Ironbound Proto-Drake
		44317, --Merciless Nether Drake
		44744, --Merciless Nether Drake
		63796, --Mimiron's Head
		69395, --Onyxian Drake
		32345, --Peep the Phoenix Mount
		60021, --Plagued Proto Drake
		67336, --Relentless Gladiator's Frost Wyrm
		63963, --Rusted Proto Drake
		37015, --Swift Nether Drake
		49193, --Vengeful Nether Drake
		60024, --Violet Proto-Drake
		54729, --Winged Steed of the Ebon Blade
		71810, --Wrathful Gladiator's Frost Wyrm
		71342, --X-45 Heartbreaker
		75973, --X-53 Touring Rocket
	},

}
