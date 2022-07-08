local _, addon = ...

addon.skipPreReq = {
    [9573] = 1,
    [533] = 1,
    [5096] = 1,
    [5092] = 1,
    [1114] = 1,
    [10000] = 1,
    [10008] = 1
}

addon.questConversion = {
    [9684] = 63866 -- blood elf rez quest
}

addon.repStandingID = {
    ["hated"] = 1,
    ["hostile"] = 2,
    ["unfriendly"] = 3,
    ["neutral"] = 4,
    ["friendly"] = 5,
    ["honored"] = 6,
    ["revered"] = 7,
    ["exalted"] = 8
}

addon.repStartValue = {
    -42000, -- hated
    -6000, -- hostile
    -3000, -- unfriendly
    0, -- neutral
    3000, -- friendly
    9000, -- honored
    21000, -- revered
    42000 -- exalted
}



local gameVersion = select(4, GetBuildInfo())
if gameVersion < 30000 then
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
        ["Outland"] = 987
    }
else
    addon.mapId = {["ScarletEnclave"] = 124}
    for i = 1, 2200 do
        local map = C_Map.GetMapInfo(i)
        if map then
            map = map.name
            if not addon.mapId[map] then addon.mapId[map] = i end
        end
    end
    addon.mapId["IcecrownGlacier"] = addon.mapId["Icecrown"]
    addon.mapId["CrystalsongForest"] = addon.mapId["Crystalsong Forest"]
    addon.mapId["StormPeaks"] = addon.mapId["The Storm Peaks"]
    addon.mapId["TheStormPeaks"] = addon.mapId["The Storm Peaks"]
    addon.mapId["SholazarBasin"] = addon.mapId["Sholazar Basin"]
    addon.mapId["ZulDrak"] = addon.mapId["Zul'Drak"]
    addon.mapId["GrizzlyHills"] = addon.mapId["Grizzly Hills"]
    addon.mapId["HowlingFjord"] = addon.mapId["Howling Fjord"]
    addon.mapId["BoreanTundra"] = addon.mapId["Borean Tundra"]
end

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
    fishing = {7620, 7731, 7732, 18248, 33095, 51294}
}

C_Spell.RequestLoadSpellData(2575) -- mining
C_Spell.RequestLoadSpellData(9134) -- herbalism
C_Spell.RequestLoadSpellData(33388) -- riding




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
        return addon.IsQuestTurnedIn(quest.previousQuest)
    else
        return true
    end
end

local function IsQuestAvailable(quest,id,skipRepCheck)
    if not quest then return end
    id = id or quest.Id

    if quest.reputation then
        local _, _, standing = GetFactionInfoByID(quest.repfaction)
        local current = addon.repStandingID[strlower(quest.reputation)]
        if skipRepCheck then
            if (skipRepCheck == 932 and quest.repfaction == 934) or
                 (skipRepCheck == 934 and quest.repfaction == 932) then
                return false
            end
        elseif not (current and standing) or standing < current then
            return false
        end
    end

    if quest.uniqueWith then
        for _,uniqueId in pairs(quest.uniqueWith) do
            if addon.IsQuestTurnedIn(uniqueId) then
                return false
            end
        end
    end

    if addon.IsQuestTurnedIn(id) then
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



function addon.GetBestQuests(refreshQuestDB,output)
    if not addon.questLogQuests or refreshQuestDB then
        addon.questLogQuests = {}
        for id, v in pairs(addon.QuestDB) do
            v.Id = id

            if IsQuestAvailable(v,id) and not v.itemId and
                v.questLog and (not v.forcePreReq or IsPreReqComplete(v)) then
                table.insert(addon.questLogQuests, v)
                v.isActive = true
            elseif v.questLog then
                v.isActive = false
            end
        end
    end
    local qDB = addon.questLogQuests
    table.sort(qDB, function(k1, k2)
        local x1 = k1.xp or 0
        local x2 = k2.xp or 0
        local q1 = addon.IsQuestTurnedIn(k1.Id)
        local q2 = addon.IsQuestTurnedIn(k2.Id)
        local prev1 = k1.previousQuest and not IsPreReqComplete(k1)
        local prev2 = k2.previousQuest and not IsPreReqComplete(k2)
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
    --TODO: Sort low priority quests at the bottom of the list

    if output then
        for k, v in ipairs(qDB) do
            local id = v.Id
            local xp = v.xp or 0
                print(string.format("%d:%dxp %s (%d)", k, xp,
                                addon.GetQuestName(id) or "", id))
        end
    end
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

function addon.CalculateTotalXP(flags)
    local totalXp = 0
    flags = flags or 0
    local output = bit.band(flags,0x2) == 0x2
    local ignorePreReqs
    if bit.band(flags,0x1) == 0x1 then
        local aldor = addon.AldorScryerCheck("Aldor") and 932
        local scryer = addon.AldorScryerCheck("Scryer") and 934
        ignorePreReqs = aldor or scryer or 932
    end

    local function ProcessQuest(quest,qid)
        qid = qid or quest.Id
        if IsQuestAvailable(quest,qid,ignorePreReqs) and (ignorePreReqs or (IsPreReqComplete(quest))) then
            local xp = quest.xp or 0
            totalXp = totalXp + xp
            if output then
                    print(string.format("%dxp %s (%d)", xp,
                                    addon.GetQuestName(qid) or "", qid))
            end
        end
    end
    if not addon.questLogQuests then addon.GetBestQuests(true) end
    for i = 1, 25 do
        local quest = addon.questLogQuests[i]
        if quest and (ignorePreReqs or addon.IsQuestComplete(quest.Id)) then
            ProcessQuest(quest)
        end
    end

    for id, quest in pairs(addon.QuestDB) do
        if not (quest.questLog or addon.IsQuestTurnedIn(id)) then
            local item = quest.itemId
            if ignorePreReqs and item then
                ProcessQuest(quest,id)
            elseif type(item) == "table" then
                local state = true
                for n, itemId in pairs(item) do
                    state = state and GetItemCount(itemId, true) >=
                                quest.itemAmount[n]
                end
                if state then ProcessQuest(quest,id) end
            elseif type(item) == "number" and GetItemCount(item, true) >=
                quest.itemAmount then
                ProcessQuest(quest,id)
            elseif not item then
                ProcessQuest(quest,id)
            end
        end
    end

    return totalXp
end


local QuestDB = {}
addon.QuestDB = QuestDB
--[[
QuestDB[questId] = {} --initialise the structure
QuestDB[questId].previousQuest = previousquestID
QuestDB[questId].xp = questXP --add the followup exp
QuestDB[questId].appliesTo = "Alliance/Horde"
QuestDB[questId].itemId = itemID
QuestDB[questId].itemAmount = amount
QuestDB[questId].repfaction = factionID
QuestDB[questId].reputation = "unfriendly"
QuestDB[questId].questLog = true
QuestDB[questId].appliesTo = "herbalism" -for profession tags
]]
--skip line if not needed for that specific quest
--start here

--A Heap of Ethereals
QuestDB[10262] = {}
QuestDB[10262].previousQuest = 10265
QuestDB[10262].xp = 12000
QuestDB[10262].itemId = 29209
QuestDB[10262].itemAmount = 10

--Strange Brew
QuestDB[10511] = {}
QuestDB[10511].xp = 11300
QuestDB[10511].appliesTo = "Alliance"
QuestDB[10511].itemId = 29443
QuestDB[10511].itemAmount = 11

--The Great Murkblood Revolt
QuestDB[11081] = {}
QuestDB[11081].xp = 12650
QuestDB[11081].itemId = 32726
QuestDB[11081].itemAmount = 1
QuestDB[11081].repfaction = 1015
QuestDB[11081].reputation = "friendly"

--The Journal of Val'zareq: Portends of War
QuestDB[10793] = {}
QuestDB[10793].xp = 9500
QuestDB[10793].itemId = 31345
QuestDB[10793].itemAmount = 1

--Entry Into the Citadel + 2 followup quests
QuestDB[10754] = {}
QuestDB[10754].xp = 28450
QuestDB[10754].appliesTo = "Alliance"
QuestDB[10754].itemId = {31239,23445,22445,22574}
QuestDB[10754].itemAmount = {1,4,2,4}

--Entry Into the Citadel + 2 followup quests
QuestDB[10755] = {}
QuestDB[10755].xp = 28450
QuestDB[10755].appliesTo = "Horde"
QuestDB[10755].itemId = {31241,23445,22445,22574}
QuestDB[10755].itemAmount = {1,4,2,4}

--Ishaal's Almanac
QuestDB[11021] = {}
QuestDB[11021].xp = 6250
QuestDB[11021].itemId = 32523
QuestDB[11021].itemAmount = 1

--Cabal Orders
QuestDB[10880] = {}
QuestDB[10880].xp = 4320
QuestDB[10880].itemId = 31707
QuestDB[10880].itemAmount = 1

--Avruu's Orb
QuestDB[9418] = {}
QuestDB[9418].xp = 6240
QuestDB[9418].itemId = 23580
QuestDB[9418].itemAmount = 1

--Vile Plans
QuestDB[10393] = {}
QuestDB[10393].xp = 970
QuestDB[10393].appliesTo = "Horde"
QuestDB[10393].itemId = 29590
QuestDB[10393].itemAmount = 1

--The Dark Missive
QuestDB[10395] = {}
QuestDB[10395].xp = 970
QuestDB[10395].appliesTo = "Alliance"
QuestDB[10395].itemId = 29588
QuestDB[10395].itemAmount = 1

--Missing Missive
QuestDB[9373] = {}
QuestDB[9373].xp = 1960
QuestDB[9373].itemId = 23338
QuestDB[9373].itemAmount = 1

--Crimson Crystal Clue
QuestDB[10134] = {}
QuestDB[10134].xp = 3150
QuestDB[10134].itemId = 29476
QuestDB[10134].itemAmount = 1

--Withered Basidium
QuestDB[9827] = {}
QuestDB[9827].xp = 4020
QuestDB[9827].appliesTo = "Alliance"
QuestDB[9827].itemId = 24483
QuestDB[9827].itemAmount = 1

--Withered Basidium
QuestDB[9828] = {}
QuestDB[9828].xp = 4020
QuestDB[9828].appliesTo = "Horde"
QuestDB[9828].itemId = 24484
QuestDB[9828].itemAmount = 1

--The Howling Wind
QuestDB[9861] = {}
QuestDB[9861].xp = 11650
QuestDB[9861].itemId = 24504
QuestDB[9861].itemAmount = 1

--Murkblood Invaders
QuestDB[9871] = {}
QuestDB[9871].xp = 11650
QuestDB[9871].appliesTo = "Alliance"
QuestDB[9871].itemId = 24559
QuestDB[9871].itemAmount = 1
QuestDB[9871].repfaction = 978
QuestDB[9871].reputation = "neutral"

--Murkblood Invaders
QuestDB[9872] = {}
QuestDB[9872].xp = 11650
QuestDB[9872].appliesTo = "Horde"
QuestDB[9872].itemId = 24558
QuestDB[9872].itemAmount = 1
QuestDB[9872].repfaction = 941
QuestDB[9872].reputation = "neutral"

--The Count of the Marshes
QuestDB[9911] = {}
QuestDB[9911].xp = 8600
QuestDB[9911].itemId = 25459
QuestDB[9911].itemAmount = 1

--Damaged Mask + 2 followup quests
QuestDB[10810] = {}
QuestDB[10810].xp = 18100
QuestDB[10810].itemId = 31384
QuestDB[10810].itemAmount = 1

--Did You Get The Note?
QuestDB[10719] = {}
QuestDB[10719].xp = 1150
QuestDB[10719].itemId = 31120
QuestDB[10719].itemAmount = 1

--The Truth Unorbed
QuestDB[10825] = {}
QuestDB[10825].xp = 1200
QuestDB[10825].itemId = 31489
QuestDB[10825].itemAmount = 1

--Cohlien Frostweaver
QuestDB[10307] = {}
QuestDB[10307].xp = 12300
QuestDB[10307].itemId = 29236
QuestDB[10307].itemAmount = 1

--Battle-Mage Dathric
QuestDB[10182] = {}
QuestDB[10182].xp = 12000
QuestDB[10182].itemId = 29233
QuestDB[10182].itemAmount = 1

--Abjurist Belmara
QuestDB[10305] = {}
QuestDB[10305].xp = 12300
QuestDB[10305].itemId = 29234
QuestDB[10305].itemAmount = 1

--Conjurer Luminrath
QuestDB[10306] = {}
QuestDB[10306].xp = 12300
QuestDB[10306].itemId = 29235
QuestDB[10306].itemAmount = 1

--The Horrors of Pollution
QuestDB[10413] = {}
QuestDB[10413].xp = 15800
QuestDB[10413].itemId = 29738
QuestDB[10413].itemAmount = 1

--Strange Engine Part
QuestDB[11531] = {}
QuestDB[11531].xp = 12650
QuestDB[11531].appliesTo = "Alliance"
QuestDB[11531].itemId = 34474
QuestDB[11531].itemAmount = 1

--Dark Tidings
QuestDB[9587] = {}
QuestDB[9587].xp = 8040
QuestDB[9587].appliesTo = "Alliance"
QuestDB[9587].itemId = 23890
QuestDB[9587].itemAmount = 1

--Dark Tidings
QuestDB[9588] = {}
QuestDB[9588].xp = 8040
QuestDB[9588].appliesTo = "Horde"
QuestDB[9588].itemId = 23892
QuestDB[9588].itemAmount = 1

--The Fall of Magtheridon
QuestDB[11002] = {}
QuestDB[11002].xp = 19000
QuestDB[11002].appliesTo = "Alliance"
QuestDB[11002].itemId = 32385
QuestDB[11002].itemAmount = 1

--The Fall of Magtheridon
QuestDB[11003] = {}
QuestDB[11003].xp = 19000
QuestDB[11003].appliesTo = "Horde"
QuestDB[11003].itemId = 32386
QuestDB[11003].itemAmount = 1

--Kael'thas and the Verdant Sphere
QuestDB[11007] = {}
QuestDB[11007].xp = 19000
QuestDB[11007].itemId = 32405
QuestDB[11007].itemAmount = 1

--Orders from Lady Vashj
QuestDB[9764] = {}
QuestDB[9764].xp = 37950
QuestDB[9764].itemId = {24367,24368}
QuestDB[9764].itemAmount = {1,1}
--25300exp from followup

--Blood of the Warlord + Undecrover Sister
QuestDB[11178] = {}
QuestDB[11178].xp = 19000
QuestDB[11178].itemId = 33102
QuestDB[11178].itemAmount = 1

--Mok'Nathal Treats
QuestDB[10860] = {}
QuestDB[10860].xp = 11650
QuestDB[10860].appliesTo = "Horde"
QuestDB[10860].itemId = {31670,31671}
QuestDB[10860].itemAmount = {3,3}

--Fertile Spores
QuestDB[9806] = {}
QuestDB[9806].xp = 8600
QuestDB[9806].itemId = 24449
QuestDB[9806].itemAmount = 6

--The Sporelings' Plight
QuestDB[9739] = {}
QuestDB[9739].xp = 6240
QuestDB[9739].itemId = 24290
QuestDB[9739].itemAmount = 10

--Natural Enemies
QuestDB[9743] = {}
QuestDB[9743].xp = 8600
QuestDB[9743].itemId = 24291
QuestDB[9743].itemAmount = 6

--Glowcap Mushrooms
QuestDB[9808] = {}
QuestDB[9808].xp = 8600
QuestDB[9808].itemId = 24245
QuestDB[9808].itemAmount = 10

--Voren'thal's Visions
QuestDB[10024] = {}
QuestDB[10024].xp = 11000
QuestDB[10024].itemId = 25744
QuestDB[10024].itemAmount = 8
QuestDB[10024].repfaction = 932 --aldor
QuestDB[10024].reputation = "neutral"

--A Cleansing Light
QuestDB[10420] = {}
QuestDB[10420].xp = 15800
QuestDB[10420].itemId = 29740
QuestDB[10420].itemAmount = 1
QuestDB[10420].repfaction = 932 --aldor
QuestDB[10420].reputation = "neutral"

--Marks of Sargeras
QuestDB[10653] = {}
QuestDB[10653].xp = 12650
QuestDB[10653].itemId = 30809
QuestDB[10653].itemAmount = 10
QuestDB[10653].repfaction = 932 --aldor
QuestDB[10653].reputation = "neutral"

--Mirren's Trust
QuestDB[9563] = {}
QuestDB[9563].xp = 4020
QuestDB[9563].appliesTo = "Alliance"
QuestDB[9563].itemId = 23848
QuestDB[9563].itemAmount = 1
QuestDB[9563].repfaction = 946
QuestDB[9563].reputation = "friendly"

--Marks of Kil'jaeden
QuestDB[10325] = {}
QuestDB[10325].xp = 11000
QuestDB[10325].itemId = 29425
QuestDB[10325].itemAmount = 10
QuestDB[10325].repfaction = 932 --aldor
QuestDB[10325].reputation = "neutral"

--Sunfury Signets
QuestDB[10656] = {}
QuestDB[10656].xp = 12650
QuestDB[10656].itemId = 30810
QuestDB[10656].itemAmount = 10
QuestDB[10656].repfaction = 934 --scryers
QuestDB[10656].reputation = "neutral"

--Firewing Signets
QuestDB[10412] = {}
QuestDB[10412].xp = 11000
QuestDB[10412].itemId = 29426
QuestDB[10412].itemAmount = 10
QuestDB[10412].repfaction = 934 --scryers
QuestDB[10412].reputation = "neutral"

--Synthesis of Power
QuestDB[10416] = {}
QuestDB[10416].xp = 15800
QuestDB[10416].itemId = 29739
QuestDB[10416].itemAmount = 1
QuestDB[10416].repfaction = 934 --scryers
QuestDB[10416].reputation = "neutral"

--The Outcast's Plight
QuestDB[10917] = {}
QuestDB[10917].xp = 11000
QuestDB[10917].itemId = 25719
QuestDB[10917].itemAmount = 30

--World of Shadows
QuestDB[11004] = {}
QuestDB[11004].xp = 12650
QuestDB[11004].itemId = 32388
QuestDB[11004].itemAmount = 6

--A Head Full of Ivory
QuestDB[9914] = {}
QuestDB[9914].xp = 11300
QuestDB[9914].itemId = 25463
QuestDB[9914].itemAmount = 27
QuestDB[9914].repfaction = 933
QuestDB[9914].reputation = "neutral"

--Stealing from Thieves
QuestDB[9882] = {}
QuestDB[9882].xp = 11300
QuestDB[9882].itemId = 25416
QuestDB[9882].itemAmount = 10
QuestDB[9882].repfaction = 933
QuestDB[9882].reputation = "neutral"

--Plants of Zangarmarsh
QuestDB[9802] = {}
QuestDB[9802].xp = 6240
QuestDB[9802].itemId = 24401
QuestDB[9802].itemAmount = 10

--Obsidian Warbeads
QuestDB[9893] = {}
QuestDB[9893].xp = 11650
QuestDB[9893].itemId = 25433
QuestDB[9893].itemAmount = 20
QuestDB[9893].repfaction = 933
QuestDB[9893].reputation = "neutral"

--Netherwing Crystals
QuestDB[11015] = {}
QuestDB[11015].xp = 12650
QuestDB[11015].itemId = 32427
QuestDB[11015].itemAmount = 30

--Nethercite Ore
QuestDB[11018] = {}
QuestDB[11018].xp = 12650
QuestDB[11018].itemId = 32464
QuestDB[11018].itemAmount = 40
QuestDB[11018].appliesTo = "mining"
--Netherdust Pollen
QuestDB[11017] = {}
QuestDB[11017].xp = 12650
QuestDB[11017].itemId = 32468
QuestDB[11017].itemAmount = 40
QuestDB[11017].appliesTo = "herbalism"

--Nethermine Flayer Hide
QuestDB[11016] = {}
QuestDB[11016].xp = 12650
QuestDB[11016].itemId = 32470
QuestDB[11016].itemAmount = 35
QuestDB[11016].appliesTo = "skinning"

--The Great Netherwing Egg Hunt
QuestDB[11049] = {}
QuestDB[11049].xp = 15800
QuestDB[11049].itemId = 32506
QuestDB[11049].itemAmount = 1

--The Opening of the Dark Portal
QuestDB[10297] = {}
QuestDB[10297].previousQuest = 10296
QuestDB[10297].xp = 25300

--Return to Khadgar
QuestDB[9837] = {}
QuestDB[9837].previousQuest = 9836
QuestDB[9837].xp = 19000

--Questlog starts here
--The Vials of Eternity
QuestDB[10445] = {}
QuestDB[10445].xp = 19000
QuestDB[10445].questLog = true

--Divination: Gorefiend's Armor
QuestDB[10634] = {}
QuestDB[10634].previousQuest = 10633
QuestDB[10634].xp = 19000
QuestDB[10634].questLog = true

--The Ata'mal Terrace
QuestDB[10707] = {}
QuestDB[10707].previousQuest = 10706
QuestDB[10707].xp = 19000
QuestDB[10707].questLog = true

--Entry Into Karazhan
QuestDB[9831] = {}
QuestDB[9831].previousQuest = 9829
QuestDB[9831].xp = 25300
QuestDB[9831].questLog = true

--The Soul Devices
QuestDB[10091] = {}
QuestDB[10091].previousQuest = 10178
QuestDB[10091].xp = 25300
QuestDB[10091].questLog = true

--The Book of Fel Names
QuestDB[10649] = {}
QuestDB[10649].previousQuest = 10646
QuestDB[10649].xp = 25300
QuestDB[10649].questLog = true

--Into the Heart of the Labyrinth
QuestDB[10095] = {}
QuestDB[10095].previousQuest = 10094
QuestDB[10095].xp = 25300
QuestDB[10095].questLog = true

--Tear of the Earthmother + 2 followups
QuestDB[10670] = {}
QuestDB[10670].previousQuest = {10665,10666}
--
QuestDB[10670].xp = 33825
QuestDB[10670].questLog = true

--Underworld Loam + 2 followups
QuestDB[10667] = {}
QuestDB[10667].previousQuest = {10665,10666}
--
QuestDB[10667].xp = 33825
QuestDB[10667].questLog = true

--Terokk's Legacy
QuestDB[10098] = {}
QuestDB[10098].xp = 24600
QuestDB[10098].questLog = true

--Brother Against Brother
QuestDB[10097] = {}
QuestDB[10097].xp = 24600
QuestDB[10097].questLog = true

--Someone Else's Hard Work Pays Off
QuestDB[10218] = {}
QuestDB[10218].xp = 22600
QuestDB[10218].questLog = true

--Safety Is Job One
QuestDB[10216] = {}
QuestDB[10216].xp = 22600
QuestDB[10216].questLog = true

--Undercutting the Competition
QuestDB[10165] = {}
QuestDB[10165].xp = 22600
QuestDB[10165].questLog = true

--Everything Will Be Alright
QuestDB[10164] = {}
QuestDB[10164].xp = 23300
QuestDB[10164].questLog = true

--Fel Embers -missing ally tag in prep guide
QuestDB[9494] = {}
QuestDB[9494].xp = 25300
QuestDB[9494].appliesTo = "Alliance"
QuestDB[9494].questLog = true

--Turning the Tide
QuestDB[9492] = {}
QuestDB[9492].xp = 25300
QuestDB[9492].appliesTo = "Alliance"
QuestDB[9492].questLog = true

--The Will of the Warchief
QuestDB[9495] = {}
QuestDB[9495].xp = 25300
QuestDB[9495].appliesTo = "Horde"
QuestDB[9495].questLog = true

--Pride of the Fel Horde
QuestDB[9493] = {}
QuestDB[9493].xp = 25300
QuestDB[9493].appliesTo = "Alliance"
QuestDB[9493].questLog = true

--Pride of the Fel Horde
QuestDB[9496] = {}
QuestDB[9496].xp = 25300
QuestDB[9496].appliesTo = "Horde"
QuestDB[9496].questLog = true

--Capturing the Keystone
QuestDB[10257] = {}
QuestDB[10257].previousQuest = 10256
QuestDB[10257].xp = 25300
QuestDB[10257].questLog = true

--Dimensius the All-Devouring
QuestDB[10439] = {}
QuestDB[10439].previousQuest = 10438
QuestDB[10439].xp = 19000
QuestDB[10439].questLog = true

--Nexus-King Salhadaar
QuestDB[10408] = {}
QuestDB[10408].previousQuest = 10406
QuestDB[10408].xp = 19000
QuestDB[10408].questLog = true


--A Fel Whip For GahkA Fel Whip For Gahk
QuestDB[11079] = {}
QuestDB[11079].xp = 19000
QuestDB[11079].questLog = true
QuestDB[11079].previousQuest = 11061
QuestDB[11079].forcePreReq = true

--Showdown
QuestDB[10742] = {}
QuestDB[10742].previousQuest = 10724
QuestDB[10742].appliesTo = "Horde"
QuestDB[10742].xp = 19000
QuestDB[10742].questLog = true

--Showdown
QuestDB[10806] = {}
QuestDB[10806].previousQuest = 10805
QuestDB[10806].appliesTo = "Alliance"
QuestDB[10806].xp = 19000
QuestDB[10806].questLog = true

--Into the Soulgrinder
QuestDB[11000] = {}
QuestDB[11000].previousQuest = 10998
QuestDB[11000].xp = 25300
QuestDB[11000].questLog = true

--Lost in Action
QuestDB[9738] = {}
QuestDB[9738].xp = 22000
QuestDB[9738].questLog = true

--Stalk the Stalker
QuestDB[9719] = {}
QuestDB[9719].xp = 22000
QuestDB[9719].questLog = true

--Oh, It's On!
QuestDB[9717] = {}
QuestDB[9717].xp = 22000
QuestDB[9717].questLog = true

--The Warlord's Hideout
QuestDB[9763] = {}
QuestDB[9763].xp = 25300
QuestDB[9763].questLog = true

--Daily dungeon wanted quests(Heroic)
QuestDB[11384] = {}
QuestDB[11384].xp = 19000
QuestDB[11384].questLog = true
QuestDB[11384].daily = true
--[[
QuestDB[11369] = {}
QuestDB[11369].xp = 19000
QuestDB[11369].questLog = true
QuestDB[11382] = {}
QuestDB[11382].xp = 19000
QuestDB[11382].questLog = true
QuestDB[11363] = {}
QuestDB[11363].xp = 19000
QuestDB[11363].questLog = true
QuestDB[11362] = {}
QuestDB[11362].xp = 19000
QuestDB[11362].questLog = true
QuestDB[11375] = {}
QuestDB[11375].xp = 19000
QuestDB[11375].questLog = true
QuestDB[11354] = {}
QuestDB[11354].xp = 19000
QuestDB[11354].questLog = true
QuestDB[11386] = {}
QuestDB[11386].xp = 19000
QuestDB[11386].questLog = true
QuestDB[11373] = {}
QuestDB[11373].xp = 19000
QuestDB[11373].questLog = true
QuestDB[11378] = {}
QuestDB[11378].xp = 19000
QuestDB[11378].questLog = true
QuestDB[11374] = {}
QuestDB[11374].xp = 19000
QuestDB[11374].questLog = true
QuestDB[11372] = {}
QuestDB[11372].xp = 19000
QuestDB[11372].questLog = true
QuestDB[11368] = {}
QuestDB[11368].xp = 19000
QuestDB[11368].questLog = true
QuestDB[11388] = {}
QuestDB[11388].xp = 19000
QuestDB[11388].questLog = true
QuestDB[11370] = {}
QuestDB[11370].xp = 19000
QuestDB[11370].questLog = true
]]
--Cooking daily quests
QuestDB[11380] = {}
QuestDB[11380].xp = 12650
QuestDB[11380].appliesTo = "cooking"
QuestDB[11380].questLog = true
QuestDB[11380].daily = true
--[[
QuestDB[11377] = {}
QuestDB[11377].xp = 12650
QuestDB[11377].questLog = true
QuestDB[11381] = {}
QuestDB[11381].xp = 12650
QuestDB[11381].questLog = true
QuestDB[11379] = {}
QuestDB[11379].xp = 12650
QuestDB[11379].questLog = true
]]
--Daily dungeon wanted quests(Normal)
QuestDB[11389] = {}
QuestDB[11389].xp = 12650
QuestDB[11389].questLog = true
--[[
QuestDB[11371] = {}
QuestDB[11371].xp = 12650
QuestDB[11371].questLog = true
QuestDB[11376] = {}
QuestDB[11376].xp = 12650
QuestDB[11376].questLog = true
QuestDB[11383] = {}
QuestDB[11383].xp = 12650
QuestDB[11383].questLog = true
QuestDB[11364] = {}
QuestDB[11364].xp = 12650
QuestDB[11364].questLog = true
QuestDB[11385] = {}
QuestDB[11385].xp = 12650
QuestDB[11385].questLog = true
QuestDB[11387] = {}
QuestDB[11387].xp = 12650
QuestDB[11387].questLog = true
]]
--Isle of QD daily
QuestDB[11547] = {}
QuestDB[11547].xp = 12650
QuestDB[11547].questLog = true

QuestDB[11547] = {}
QuestDB[11547].xp = 12650
QuestDB[11547].questLog = true

QuestDB[11542] = {}
QuestDB[11542].xp = 12650
QuestDB[11542].questLog = true

QuestDB[11539] = {}
QuestDB[11539].xp = 12650
QuestDB[11539].questLog = true

QuestDB[11544] = {}
QuestDB[11544].xp = 15800
QuestDB[11544].questLog = true

QuestDB[11521] = {}
QuestDB[11521].xp = 15800
QuestDB[11521].questLog = true

--Hard to Kill
QuestDB[11492] = {}
QuestDB[11492].previousQuest = 11490
QuestDB[11492].xp = 25300
QuestDB[11492].questLog = true

--Netherwing daily
QuestDB[11020] = {}
QuestDB[11020].xp = 12650
QuestDB[11020].questLog = true

--The Deadliest Trap Ever Laid -scryer
QuestDB[11097] = {}
QuestDB[11097].xp = 15800
QuestDB[11097].repfaction = 1015
QuestDB[11097].reputation = "revered"
QuestDB[11097].questLog = true

--The Deadliest Trap Ever Laid -aldor
QuestDB[11101] = {}
QuestDB[11101].xp = 15800
QuestDB[11101].repfaction = 1015
QuestDB[11101].reputation = "revered"
QuestDB[11101].questLog = true

--Picking Up The Pieces...
QuestDB[11076] = {}
QuestDB[11076].previousQuest = 11075
QuestDB[11076].xp = 12650
QuestDB[11076].questLog = true

--The Not-So-Friendly Skies...
QuestDB[11035] = {}
QuestDB[11035].xp = 12650
QuestDB[11035].questLog = true

--Disrupting the Twilight Portal
QuestDB[11086] = {}
QuestDB[11086].xp = 12650
QuestDB[11086].questLog = true

--The Booterang: A Cure For The Common Worthless Peon
QuestDB[11055] = {}
QuestDB[11055].previousQuest = 11054
QuestDB[11055].xp = 12650
QuestDB[11055].questLog = true

--Dragons are the Least of Our Problems
QuestDB[11077] = {}
QuestDB[11077].xp = 12650
QuestDB[11077].questLog = true
QuestDB[11077].repfaction = 1015
QuestDB[11077].reputation = "friendly"
QuestDB[11077].questLog = true

--Apexis
--Bomb Them Again!
QuestDB[11023] = {}
QuestDB[11023].previousQuest = {11102,11010} --one or the other
QuestDB[11023].preQuestAny = true
QuestDB[11023].xp = 12650
QuestDB[11023].questLog = true

--Banish More Demons
QuestDB[11051] = {}
QuestDB[11051].previousQuest = 11026
QuestDB[11051].xp = 12650
QuestDB[11051].questLog = true

--Wrangle More Aether Rays!
QuestDB[11066] = {}
QuestDB[11066].previousQuest = 11065
QuestDB[11066].xp = 12650
QuestDB[11066].questLog = true

--rest
--Blood for Blood
QuestDB[11515] = {}
QuestDB[11515].xp = 12650
QuestDB[11515].questLog = true

--In Defense of Halaa
QuestDB[11502] = {}
QuestDB[11502].xp = 12650
QuestDB[11502].appliesTo = "Alliance"
QuestDB[11502].questLog = true

--Enemies, Old and New
QuestDB[11503] = {}
QuestDB[11503].xp = 12650
QuestDB[11503].appliesTo = "Horde"
QuestDB[11503].questLog = true

--Fires Over Skettis
QuestDB[11008] = {}
QuestDB[11008].previousQuest = 11098
QuestDB[11008].xp = 12650
QuestDB[11008].questLog = true

--Prepared instand turnin quests
--Hellfire

--A Strange Weapon + The Warchief's Mandate
QuestDB[9401] = {}
QuestDB[9401].previousQuest = 9400
QuestDB[9401].xp = 6020
QuestDB[9401].appliesTo = "Horde"

--Return to Obadei
QuestDB[9423] = {}
QuestDB[9423].previousQuest = 9390
QuestDB[9423].xp = 1020
QuestDB[9423].appliesTo = "Alliance"

--The Temple of Telhamat
QuestDB[10093] = {}
QuestDB[10093].previousQuest = 10047
QuestDB[10093].xp = 1560
QuestDB[10093].appliesTo = "Alliance"

--Zangarmarsh
--Searching for Scout Jyoba
QuestDB[9771] = {}
QuestDB[9771].previousQuest = 9774
QuestDB[9771].xp = 4020
QuestDB[9771].appliesTo = "Horde"

--Report to Shadow Hunter Denjai
QuestDB[9775] = {}
QuestDB[9775].xp = 1020
QuestDB[9775].appliesTo = "Horde"

--The Boha'mu Ruins
QuestDB[9786] = {}
QuestDB[9786].xp = 4020
QuestDB[9786].appliesTo = "Alliance"

--Warning the Cenarion Circle + Return to the Marsh
QuestDB[9724] = {}
QuestDB[9724].previousQuest = 9731
QuestDB[9724].xp = 10560

--Blessings of the Ancients
QuestDB[9785] = {}
QuestDB[9785].xp = 4320
QuestDB[9785].repfaction = 942
QuestDB[9785].reputation = "friendly"

--Watcher Leesa'oh + Observing the Sporelings
QuestDB[9697] = {}
QuestDB[9697].xp = 9390
QuestDB[9697].repfaction = 942
QuestDB[9697].reputation = "friendly"

--Sporeggar
QuestDB[9919] = {}
QuestDB[9919].xp = 8600
QuestDB[9919].repfaction = 970
QuestDB[9919].reputation = "neutral"

--Bring Me A Shrubbery!
QuestDB[9715] = {}
QuestDB[9715].xp = 22000
QuestDB[9715].itemId = 24246
QuestDB[9715].itemAmount = 5

--What's Wrong at Cenarion Thicket?
QuestDB[9957] = {}
QuestDB[9957].xp = 1560

--Terokkar Forest
--And Now, the Moment of Truth
QuestDB[10201] = {}
QuestDB[10201].previousQuest = 9993
QuestDB[10201].xp = 8250
QuestDB[10201].appliesTo = "Horde"

--What Book? I Don't See Any Book.
--QuestDB[10231] = {}
--QuestDB[10231].previousQuest = 10228
--QuestDB[10231].xp = 11650

--Letting Earthbinder Tavgren Know
QuestDB[10005] = {}
QuestDB[10005].previousQuest = 10446
QuestDB[10005].xp = 9330
QuestDB[10005].appliesTo = "Alliance"

--Letting Earthbinder Tavgren Know
QuestDB[10006] = {}
QuestDB[10006].previousQuest = 10447
QuestDB[10006].xp = 9330
QuestDB[10006].appliesTo = "Horde"

--Fel Orc Plans
QuestDB[10012] = {}
QuestDB[10012].xp = 8600
QuestDB[10012].appliesTo = "Alliance"
QuestDB[10012].itemId = 25765
QuestDB[10012].itemAmount = 1

--Fel Orc Plans
QuestDB[10013] = {}
QuestDB[10013].xp = 8600
QuestDB[10013].appliesTo = "Horde"
QuestDB[10013].itemId = 25765
QuestDB[10013].itemAmount = 1

--Speak with Scout Neftis
QuestDB[10039] = {}
QuestDB[10039].xp = 2120
QuestDB[10039].appliesTo = "Horde"

--Speak with Private Weeks
QuestDB[10038] = {}
QuestDB[10038].xp = 2120
QuestDB[10038].appliesTo = "Alliance"

--Surrender to the Horde
QuestDB[10862] = {}
QuestDB[10862].xp = 6240
QuestDB[10862].appliesTo = "Horde"

--Secrets of the Arakkoa
QuestDB[10863] = {}
QuestDB[10863].xp = 6240
QuestDB[10863].appliesTo = "Alliance"

--Return to Sha'tari Base Camp
QuestDB[10926] = {}
QuestDB[10926].previousQuest = 10921
QuestDB[10926].xp = 8250

--Enter, the Deceiver...
QuestDB[11550] = {}
QuestDB[11550].xp = 3150

--Strained Supplies
QuestDB[10017] = {}
QuestDB[10017].xp = 8600
QuestDB[10017].itemId = 25802
QuestDB[10017].itemAmount = 8
QuestDB[10416].repfaction = 934 --scryers
QuestDB[10416].reputation = "neutral"

--Nagrand
--Message to Garadar
QuestDB[9934] = {}
QuestDB[9934].previousQuest = {9931,9932}
QuestDB[9934].xp = 14150
QuestDB[9934].appliesTo = "Horde"

--He Will Walk The Earth...
QuestDB[9866] = {}
QuestDB[9866].previousQuest = 9865
QuestDB[9866].xp = 5800
QuestDB[9866].appliesTo = "Horde"

--The Throne of the Elements
QuestDB[9870] = {}
QuestDB[9870].xp = 2850
QuestDB[9870].appliesTo = "Horde"

--Proving Your Strength
QuestDB[10479] = {}
QuestDB[10479].xp = 11650
QuestDB[10479].appliesTo = "Horde"
QuestDB[10479].itemId = 25433
QuestDB[10479].itemAmount = 10

--Message to Telaar
QuestDB[9933] = {}
QuestDB[9933].previousQuest = {9931,9932}
QuestDB[9933].xp = 14150
QuestDB[9933].appliesTo = "Alliance"

--Missing Mag'hari Procession
QuestDB[9944] = {}
QuestDB[9944].xp = 1150
QuestDB[9944].appliesTo = "Horde"

--Oshu'gun Crystal Powder
QuestDB[10076] = {}
QuestDB[10076].xp = 11650
QuestDB[10076].appliesTo = "Alliance"
QuestDB[10076].itemId = 26043
QuestDB[10076].itemAmount = 20

--Oshu'gun Crystal Powder
QuestDB[10077] = {}
QuestDB[10077].xp = 35000 -- 8750*4?
QuestDB[10077].appliesTo = "Alliance"
QuestDB[10077].itemId = 26043
QuestDB[10077].itemAmount = 80 --change if needed

--Oshu'gun Crystal Powder
QuestDB[10074] = {}
QuestDB[10074].xp = 11650
QuestDB[10074].appliesTo = "Horde"
QuestDB[10074].itemId = 26043
QuestDB[10074].itemAmount = 20

--Oshu'gun Crystal Powder
QuestDB[10075] = {}
QuestDB[10075].xp = 35000 -- 8750*4?
QuestDB[10075].appliesTo = "Horde"
QuestDB[10075].itemId = 26043
QuestDB[10075].itemAmount = 80 --change if needed

--It's Just That Easy?
QuestDB[10010] = {}
QuestDB[10010].previousQuest = 10009
QuestDB[10010].xp = 6000

--Fierce Enemies
QuestDB[10476] = {}
QuestDB[10476].xp = 11650
QuestDB[10476].appliesTo = "Alliance"
QuestDB[10476].itemId = 25433
QuestDB[10476].itemAmount = 10

--The Master's Grand Design?
QuestDB[10251] = {}
QuestDB[10251].previousQuest = 10231
QuestDB[10251].xp = 5800

--Shadowmoon Valley
--News of Victory
QuestDB[10744] = {}
QuestDB[10744].previousQuest = 10612
QuestDB[10744].xp = 15800
QuestDB[10744].appliesTo = "Alliance"

--The Path of Conquest
QuestDB[10772] = {}
QuestDB[10772].xp = 9500
QuestDB[10772].appliesTo = "Alliance"
QuestDB[10772].itemId = 31310
QuestDB[10772].itemAmount = 1

--The Hand of Gul'dan
QuestDB[10680] = {}
QuestDB[10680].xp = 3150
QuestDB[10680].appliesTo = "Alliance"

--Imbuing the Headpiece
QuestDB[10782] = {}
QuestDB[10782].previousQuest =10780
QuestDB[10782].xp = 12300

--News of Victory
QuestDB[10745] = {}
QuestDB[10745].previousQuest = 10613
QuestDB[10745].xp = 15800
QuestDB[10745].appliesTo = "Horde"

--The Path of Conquest
QuestDB[10750] = {}
QuestDB[10750].xp = 9500
QuestDB[10750].appliesTo = "Horde"

--Teron Gorefiend - Lore and Legend
QuestDB[10633] = {}
QuestDB[10633].previousQuest = 10625
QuestDB[10633].xp = 6250
QuestDB[10633].appliesTo = "Horde"

--The Cipher of Damnation - The First Fragment Recovered
QuestDB[10523] = {}
QuestDB[10523].previousQuest = 10522
QuestDB[10523].xp = 3150

--The Cipher of Damnation - The Second Fragment Recovered
QuestDB[10541] = {}
QuestDB[10541].previousQuest = 10540
QuestDB[10541].xp = 6250

--The Cipher of Damnation - The Second Fragment Recovered
QuestDB[10579] = {}
QuestDB[10579].previousQuest = 10578
QuestDB[10579].xp = 6250

--Kill Them All!
QuestDB[11099] = {}
QuestDB[11099].xp = 12650
QuestDB[11099].repfaction = 1015
QuestDB[11099].reputation = "revered"

--Kill Them All!
QuestDB[11094] = {}
QuestDB[11094].xp = 12650
QuestDB[11094].repfaction = 1015
QuestDB[11094].reputation = "revered"

--Rise, Overseer!
QuestDB[11053] = {}
QuestDB[11053].xp = 12650
QuestDB[11053].repfaction = 1015
QuestDB[11053].reputation = "friendly"

--Stand Tall, Captain!
QuestDB[11084] = {}
QuestDB[11084].xp = 12650
QuestDB[11084].repfaction = 1015
QuestDB[11084].reputation = "honored"

--Hail, Commander!
QuestDB[11092] = {}
QuestDB[11092].xp = 12650
QuestDB[11092].repfaction = 1015
QuestDB[11092].reputation = "revered"

--Enter the Deceiver...
QuestDB[11550] = {}
QuestDB[11550].xp = 3150

--Blade's Edge

--Ogre Heaven
QuestDB[11009] = {}
QuestDB[11009].previousQuest = 11022
QuestDB[11009].xp = 15800

--The Ogre Threat
QuestDB[9795] = {}
QuestDB[9795].xp = 2700
QuestDB[9795].appliesTo = "Horde"

--No Time for Curiosity
QuestDB[9794] = {}
QuestDB[9794].xp = 2700
QuestDB[9794].appliesTo = "Alliance"
QuestDB[9794].itemId = 26048
QuestDB[9794].itemAmount = 1

--Where Did Those Darn Gnomes Go? + Follow the Breadcrumbs
QuestDB[10580] = {}
QuestDB[10580].xp = 5800
QuestDB[10580].appliesTo = "Alliance"

--A Time for Negotiation...
QuestDB[10682] = {}
QuestDB[10682].xp = 11650

--Our Boy Wants To Be A Skyguard Ranger + followup quest
QuestDB[11030] = {}
QuestDB[11030].xp = 25300
QuestDB[11030].itemId = {32598,32601} -- unstable flasks
QuestDB[11030].itemAmount = {1,1}

--Netherstorm
--Back to the Chief!
QuestDB[10249] = {}
QuestDB[10249].previousQuest = 10248
QuestDB[10249].xp = 18450

--Searching for Evidence
QuestDB[10316] = {}
QuestDB[10316].previousQuest = 10312
QuestDB[10316].xp = 12300

--Needs More Cowbell
QuestDB[10334] = {}
QuestDB[10334].xp = 9250
QuestDB[10334].itemId = 29428
QuestDB[10334].itemAmount = 1

--To the Stormspire
QuestDB[10423] = {}
QuestDB[10423].previousQuest = 10418
QuestDB[10423].xp = 1250

--The Dynamic Duo
QuestDB[10434] = {}
QuestDB[10434].previousQuest = 10433
QuestDB[10434].xp = 1250

--Dealing with the Foreman
QuestDB[10317] = {}
QuestDB[10317].xp = 12650

--The Dynamic Duo
QuestDB[10410] = {}
QuestDB[10410].previousQuest = 10407
QuestDB[10410].xp = 9500
