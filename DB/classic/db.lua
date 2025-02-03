local addonName, addon = ...
local faction = UnitFactionGroup("player")
if addon.game ~= "CLASSIC" then return end

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
    ["Elwynn Forest"] = "RestedXP Alliance 1-20\\01-06 Northshire",
    ["Teldrassil"] = "RestedXP Alliance 1-20\\01-06 Shadowglen",
    ["Dun Morogh"] = "RestedXP Alliance 1-20\\01-06 Coldridge Valley",
    ["Durotar"] = "RestedXP Horde 1-30\\01-10 Durotar",
    ["Mulgore"] = "RestedXP Horde 1-30\\01-06 Red Cloud Mesa",
    ["Tirisfal Glades"] = "RestedXP Horde 1-30\\01-11 Tirisfal Glades",
}

if faction == "Horde" then
    addon.defaultGroup = "RestedXP Speedrun Guide (H)"
    addon.defaultGroupHC = "RestedXP Survival Guide (H)"
elseif faction == "Alliance" then
    addon.defaultGroup = "RestedXP Speedrun Guide (A)"
    addon.defaultGroupHC = "RestedXP Survival Guide (A)"
end

if class == "HUNTER" then
    addon.defaultGuideList["Dun Morogh"] = "RestedXP Alliance 1-20\\1-6 Coldridge Valley (Hunter)"
end

addon.questConversion = {
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
    ["Kalimdor"] = 1414,
    ["Eastern Kingdoms"] = 1415,
}

addon.mapIdToName = {}
for name,id in pairs(addon.mapId) do
    addon.mapIdToName[id] = name
end

local dungeonList = {
    ["RFC"] = 2437,
    ["DM"] = 1581,
    ["WC"] = 718,
    ["SFK"] = 209,
    ["BFD"] = 719,
    ["STOCKS"] = 717,
    ["GNOMER"] = 133,
    ["RFK"] = 491,
    ["SM"] = 796,
    ["RFD"] = 722,
    ["ULDA"] = 1337,
    ["ZF"] = 978,
    ["MARA"] = 2100,
    ["ST"] = 1417,
    ["BRD"] = 1584,
    ["DME"] = 2557,
    ["SCHOLO"] = 2057,
    ["STRAT"] = 2017,
    ["LBRS"] = 1583,
}

local alternateNames = {
    ["DEADMINES"] = "DM",
    ["VC"] = "DM",
    ["STOCKADES"] = "STOCKS",
    ["TEMPLE OF ATAL'HAKKAR"] = "ST",
    ["DMW"] = "DME",
    ["DMN"] = "DME",
}

for tag,name in pairs(dungeonList) do
    alternateNames[strupper(name)] = tag
end

local L = addon.locale.Get

function addon.GetDungeonName(instance)
    local upper = strupper(instance)
    if dungeonList[upper] then
        local name = dungeonList[upper]
        if type(name) == "number" then
            name = C_Map.GetAreaInfo(name)
        end
        return L(name),upper
    elseif alternateNames[upper] then
        local tag = alternateNames[upper] or false
        local name = dungeonList[tag]
        if type(name) == "number" then
            name = C_Map.GetAreaInfo(name)
        end
        return L(name),tag
    end
end

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
    poisons = {2842},
}

local professionGuides = {
L"Mining & Engineering",
L"Mining & Blacksmithing",
L"Herbalism & Alchemy",
L"Skinning & Leatherworking",
L"Mining & Skinning",
L"Mining & Herbalism",
L"Herbalism & Skinning",
L"Skinning",
L"Herbalism",
L"Mining ",
}

local professionGuideIndex = {
 ["mining-engineering"] = 1,
 ["engineering-mining"] = 1,
 ["mining-blacksmithing"] = 2,
 ["blacksmithing-mining"] = 2,
 ["herbalism-alchemy"] = 3,
 ["alchemy-herbalism"] = 3,
 ["skinning-leatherworking"] = 4,
 ["leatherworking-skinning"] = 4,
 ["mining-skinning"] = 5,
 ["skinning-mining"] = 5,
 ["mining-herbalism"] = 6,
 ["herbalism-mining"] = 6,
 ["herbalism-skinning"] = 7,
 ["skinning-herbalism"] = 7,
 ["skinning"] = 8,
 ["herbalism"] = 9,
 ["mining "] = 10,

}

function addon.GetProfessionId(tag)
    return tag and professionGuideIndex[tag]
end

function addon.GenerateProfessionTable()
    local entries = addon.professions
    RXPCData.guideMetaData.enabledProfessions[addon.player
                            .faction] = addon.professions
    local t = {[0] = L("None")}
    if type(entries) ~= "table" then return t end
    for i,v in ipairs(professionGuides) do
        if entries[i] then t[i] = v end
    end
    return t
end

C_Spell.RequestLoadSpellData(2575) -- mining
C_Spell.RequestLoadSpellData(9134) -- herbalism
C_Spell.RequestLoadSpellData(33388) -- riding
C_Spell.RequestLoadSpellData(1809) -- lockpicking

local events = {"PLAYER_XP_UPDATE","QUEST_LOG_UPDATE"}

function addon.functions.xpto60(...)
    if faction == "Alliance" then
        return addon.functions.xpto60alliance(...)
    elseif faction == "Horde" then
        return addon.functions.xpto60horde(...)
    end
end

function addon.functions.xpto60alliance(self,...) --PLAYER_XP_UPDATE,QUEST_LOG_UPDATE

    if type(self) == "string" then --on parse
        local element = {}
        local text = ...
        element.icon = addon.icons.xp
        element.event = events
        if not text or text == "" then
            element.text = ""
            element.rawtext = element.text
        else
            text = text.."\n"
            element.text = text
            element.rawtext = text
        end
        return element
    end

    local event = ...
    local element = self.element
    local step = element.step
    local IsQuestFlaggedCompleted = addon.IsQuestTurnedIn
    local IsQuestComplete = addon.IsQuestComplete
    local IsOnQuest = C_QuestLog.IsOnQuest

    if self.button and step and step.sticky then
        self.button:Disable()
        self.button:Hide()
    end

    if not element.step.active then
        element.questXP = nil
        return
    end

    local som = {som = true, phase = "2"}
    local xpMod = 1
    local eliteMod = 1
    --1.90980392157?

    if addon.stepLogic.SeasonCheck(som) then
        xpMod = 1.4
        eliteMod = 1.7
        if addon.stepLogic.PhaseCheck(som) then
            xpMod = xpMod*2/1.4
            eliteMod = eliteMod*2/1.4
        end
    end

    local questXP = element.questXP

    if event == "QUEST_LOG_UPDATE" or not element.questXP then
        questXP = 0
        if IsOnQuest(6844) then --Moonglade chain
            questXP = floor(questXP + (3000 + 7550 + 3000)*xpMod)
        elseif IsQuestFlaggedCompleted(6844) then
            if not IsQuestFlaggedCompleted(6845) then
                questXP = floor(questXP + 7550*xpMod)
            end
            if not IsQuestFlaggedCompleted(1185) then
                questXP = floor(questXP + 3000*xpMod)
            end
        end

        if IsQuestComplete(4507) then --pawn captures queen
            questXP = floor(questXP + (5450 + 550  + 8150)*xpMod)
        elseif IsQuestFlaggedCompleted(4507) then
            if IsOnQuest(4508) then
                questXP = floor(questXP + (550 + 8150) * xpMod )
            elseif not IsQuestFlaggedCompleted(4510) and IsQuestFlaggedCompleted(4508) then
                questXP = floor(questXP + 8150*xpMod)
            end
        end

        if IsQuestComplete(4504) then --super sticky
            questXP = floor(questXP + 5450*xpMod)
        end

        if IsQuestComplete(4809) then --chillwind horns
            questXP = floor(questXP + 5450*xpMod)
        end

        if IsQuestComplete(3962) then --It's dangerous to go alone
            questXP = floor(questXP + 7300*eliteMod)
        end

        if IsQuestComplete(5163) then --Are we there yeti?
            questXP = floor(questXP + 7750*xpMod)
        end

        if IsQuestComplete(5527) then --A Reliquary of Purity
            questXP = floor(questXP + 6600*xpMod)
        end

        if IsOnQuest(4986) then--Glyphed Oaken Branch
            questXP = floor(questXP + 5800*xpMod)
        end

        if IsOnQuest(979) then
            questXP = floor(questXP + 1500 + (3000 + 4800 + 6000)*xpMod)
        elseif IsQuestComplete(4901) then --Guardians of the altar
            questXP = floor(questXP + (4800 + 6000)*xpMod)
        end

        if element.tag:find("hc") then
            --stones that binds us
            --print('ok',questXP)
            if not C_QuestLog.IsQuestFlaggedCompleted(2681) then
                questXP = floor(questXP + (7550 + 5200)*xpMod)
            end

            if not C_QuestLog.IsQuestFlaggedCompleted(2702) then
                questXP = floor(questXP + (3000)*xpMod)
            end

            if not C_QuestLog.IsQuestFlaggedCompleted(2701) then
                questXP = floor(questXP + (6000)*xpMod)
            end

            --Melding of influences
            if C_QuestLog.IsQuestFlaggedCompleted(4642) then
                questXP = floor(questXP + (7050)*xpMod)
            end
        end


        questXP = questXP - 50*(xpMod - 1)
    end

    local missingXP = UnitXPMax("player") - UnitXP("player") - questXP
    local level = UnitLevel('player')
    if level <= 58 then
        missingXP = missingXP + 209800
    end
    if level <= 57 then
        missingXP = missingXP + 202300
    end
    if level <= 56 then
        missingXP = missingXP + 195000
    end

    if missingXP <= 0 and level == 59 then
        --addon.SetElementComplete(self)
        return addon.functions.next(self) or addon.SetElementComplete(self,true)
    end

    if event == "PLAYER_XP_UPDATE" or questXP ~= element.questXP then
        if questXP > 0 then
            local qXP = addon.FormatNumber(questXP)
            element.text = string.format("%sYou have %s XP worth of quest turn ins outside Silithus\nXP needed: %s + %s",element.rawtext,qXP,addon.FormatNumber(missingXP),qXP)
        else
            element.text = string.format("%sXP needed: %s",element.rawtext,addon.FormatNumber(missingXP))
        end
        addon.UpdateStepText(self)
    end

    element.questXP = questXP

end

function addon.functions.xpto60hc(...)
    return addon.functions.xpto60(...)
end

function addon.functions.xpto60horde(self,...)

    if type(self) == "string" then
        local element = {}
        local text = ...
        element.icon = addon.icons.xp
        element.event = events
        if not text or text == "" then
            element.text = ""
            element.rawtext = element.text
        else
            text = text.."\n"
            element.text = text
            element.rawtext = text
        end
        return element
    end

    local event = ...
    local element = self.element
    local step = element.step
    local IsQuestFlaggedCompleted = addon.IsQuestTurnedIn
    local IsQuestComplete = addon.IsQuestComplete
    local IsOnQuest = C_QuestLog.IsOnQuest

    if self.button and step and step.sticky then
        self.button:Disable()
        self.button:Hide()
    end
    if not element.step.active then
        element.questXP = nil
        return
    end

    local som = {som = true, phase = "2"}
    local xpMod = 1
    local eliteMod = 1
    --1.90980392157?

    if addon.stepLogic.SeasonCheck(som) then
        xpMod = 1.4
        eliteMod = 1.7
        if addon.stepLogic.PhaseCheck(som) then
            xpMod = xpMod*2/1.4
            eliteMod = eliteMod*2/1.4
        end
    end

    local questXP = element.questXP
    if event == "QUEST_LOG_UPDATE" or not element.questXP then
        questXP = 0
        if IsOnQuest(6844) then --Moonglade chain
            questXP = questXP + (3000 + 7550 + 3000)*xpMod
            questXP = floor(questXP)
        elseif IsQuestFlaggedCompleted(6844) then
            if not IsQuestFlaggedCompleted(6845) then
                questXP = questXP + 7550*xpMod
                questXP = floor(questXP)
            end
            if not IsQuestFlaggedCompleted(1185) then
                questXP = questXP + 3000*xpMod
                questXP = floor(questXP)
            end
        end

        if IsQuestComplete(4504) then --super sticky
            questXP = questXP + 5450*xpMod
            questXP = floor(questXP)
        end

        if IsQuestComplete(4809) then --chillwind horns
            questXP = questXP + 5450*xpMod
            questXP = floor(questXP)
        end

        if IsQuestComplete(4507) then --pawn captures queen
            questXP = questXP + (5450 + 550  + 8150)*xpMod
            questXP = floor(questXP)
        elseif IsQuestFlaggedCompleted(4507) then
            if IsOnQuest(4509) then
                questXP = questXP + (550 + 8150)*xpMod
                questXP = floor(questXP)
            elseif not IsQuestFlaggedCompleted(4511) and IsQuestFlaggedCompleted(4509) then
                questXP = questXP + 8150*xpMod
                questXP = floor(questXP)
            end
        end

        if IsQuestComplete(3962) then --It's dangerous to go alone
            questXP = questXP + 7300*eliteMod
            questXP = floor(questXP)
        end

        if IsQuestComplete(5163) then --Are we there yeti?
            questXP = questXP + 7750*xpMod
            questXP = floor(questXP)
        end

        if IsQuestComplete(5527) then --A Reliquary of Purity
            questXP = questXP + 6600*xpMod
            questXP = floor(questXP)
        end

        if IsQuestComplete(4721) then --Wild Guardians
            questXP = questXP + 6400*xpMod
            questXP = floor(questXP)
        end

        if IsOnQuest(3942) then --linken's memory
            questXP = questXP + 5450*xpMod
            questXP = floor(questXP)
        end

        if IsOnQuest(5128) then --Words of the High Chief
            questXP = questXP + 6400*xpMod
            questXP = floor(questXP)
        end

        if IsQuestComplete(5242) then --A Final Blow
            questXP = questXP + 9300*xpMod
            questXP = floor(questXP)
        end

        if IsQuestComplete(5385) then --Remains of Trey Lightforge
            questXP = questXP + 7550*xpMod
            questXP = floor(questXP)
        end

        questXP = questXP - 50*(xpMod - 1)
    end

    local missingXP = UnitXPMax("player") - UnitXP("player") - questXP
    local level = UnitLevel('player')
    if level == 58 then
        missingXP = missingXP + 209800
    end

    if missingXP <= 0 and level == 59 then
        return addon.functions.next(self) or addon.SetElementComplete(self,true)
    end

    if event == "PLAYER_XP_UPDATE" or questXP ~= element.questXP then
        if questXP > 0 then
            local qXP = addon.FormatNumber(questXP)
            element.text = string.format("%sYou have %s XP worth of quest turn ins outside Silithus\nXP needed: %s + %s",element.rawtext,qXP,addon.FormatNumber(missingXP),qXP)
        else
            element.text = string.format("%sXP needed: %s",element.rawtext,addon.FormatNumber(missingXP))
        end
        addon.UpdateStepText(self)
    end

    element.questXP = questXP

end

function addon.functions.xpcheck(self,text,...) --PLAYER_XP_UPDATE,QUEST_LOG_UPDATE

    if type(self) == "string" then --on parse
        local element = {}
        element.textOnly = true
        element.event = "PLAYER_XP_UPDATE"
        element.guide = ...
        return element
    end
    local level = UnitLevel("player")
    local element = self.element
    local step = element.step
    local guide = element.guide
    --local ref = element.ref

    if level >= 24 and (not addon.IsQuestTurnedIn(494) or (addon.IsQuestTurnedIn(529) and addon.IsQuestTurnedIn(502) and addon.IsQuestTurnedIn(498))) then
        local nextguide = addon.GetGuideTable("RestedXP Horde 22-30",guide)
        if nextguide then
            return addon:LoadGuide(nextguide)
        end
    end
end

addon.mountIDs = {
    [75] = {
        --[67466] = true, --Argent Warhorse
        --[58983] = true, --Big Blizzard Bear
        --[35022] = true, --Black Hawkstrider
        [6896] = true, --Black Ram
        [64977] = true, --Black Skeletal Horse
        [470] = true, --Black Stallion
        [578] = true, --Black Wolf
        [64658] = true, --Black Wolf
        [35020] = true, --Blue Hawkstrider
        [10969] = true, --Blue Mechanostrider
        [33630] = true, --Blue Mechanostrider
        [17463] = true, --Blue Skeletal Horse
        --[50869] = true, --Brewfest Kodo
        --[43899] = true, --Brewfest Ram
        --[50870] = true, --Brewfest Ram
        [17464] = true, --Brown Skeletal Horse
        [6654] = true, --Brown Wolf
        --[34406] = true, --Brown Elekk
        [458] = true, --Brown Horse
        [18990] = true, --Brown Kodo
        [6899] = true, --Brown Ram
        --[75614] = true, --Celestial Steed
        [6648] = true, --Chestnut Mare
        [6653] = true, --Dire Wolf
        [8395] = true, --Emerald Raptor
        --[394209] = true, --Festering Emerald Drake
        --[35710] = true, --Gray Elekk
        [18989] = true, --Gray Kodo
        [6777] = true, --Gray Ram
        [15780] = true, --Green Mechanostrider
        [17453] = true, --Green Mechanostrider
        --[48025] = true, --Headless Horseman's Mount
        --[72286] = true, --Invincible
        [10795] = true, --Ivory Raptor
        --[372677] = true, --Kalu'ak Whalebone Glider
        [472] = true, --Pinto
        [35711] = true, --Purple Elekk
        [35018] = true, --Purple Hawkstrider
        --[348459] = true, --Reawakened Phase-Hunter
        [34795] = true, --Red Hawkstrider
        [10873] = true, --Red Mechanostrider
        [17462] = true, --Red Skeletal Horse
        [579] = true, --Red Wolf
        [16080] = true, --Red Wolf
        [42776] = true, --Spectral Tiger
        [10789] = true, --Spotted Frostsaber
        --[66847] = true, --Striped Dawnsaber
        [8394] = true, --Striped Frostsaber
        [10793] = true, --Striped Nightsaber
        [580] = true, --Timber Wolf
        [10796] = true, --Turquoise Raptor
        [17454] = true, --Unpainted Mechanostrider
        [10799] = true, --Violet Raptor
        --[64657] = true, --White Kodo
        [6898] = true, --White Ram
        [468] = true, --White Stallion
        [581] = true, --Winter Wolf
        --[74856] = true, --Blazing Hippogryph
        --[387320] = true, --Blazing Hippogryph
        --[54729] = true, --Winged Steed of the Ebon Blade
        --[71342] = true, --X-45 Heartbreaker
        --[75973] = true, --X-53 Touring Rocket
        [5784] = true, --Felsteed
        [13819] = true, --Warhorse
    },

    [150] = {
        [43688] = true, --Amani War Bear
        [16056] = true, --Ancient Frostsaber
        [66906] = true, --Argent Charger
        --[60114] = true, --Armored Brown Bear
        --[60116] = true, --Armored Brown Bear
        --[51412] = true, --Big Battle Bear
        --[387319] = true, --Big Battle Bear
        --[58983] = true, --Big Blizzard Bear
        [22719] = true, --Black Battlestrider
        [16055] = true, --Black Nightsaber
        [26656] = true, --Black Qiraji Battle Tank
        [17461] = true, --Black Ram
        --[60118] = true, --Black War Bear
        --[60119] = true, --Black War Bear
        [48027] = true, --Black War Elekk
        [22718] = true, --Black War Kodo
        [59785] = true, --Black War Mammoth
        [59788] = true, --Black War Mammoth
        [22720] = true, --Black War Ram
        [22721] = true, --Black War Raptor
        [22717] = true, --Black War Steed
        [22723] = true, --Black War Tiger
        [22724] = true, --Black War Wolf
        --[25953] = true, --Blue Qiraji Battle Tank
        [64656] = true, --Blue Skeletal Warhorse
        --[75614] = true, --Celestial Steed
        --[39315] = true, --Cobalt Riding Talbuk
        --[34896] = true, --Cobalt War Talbuk
        [73313] = true, --Crimson Deathcharger
        --[68188] = true, --Crusader's Black Warhorse
        --[68187] = true, --Crusader's White Warhorse
        --[39316] = true, --Dark Riding Talbuk
        --[34790] = true, --Dark War Talbuk
        --[63635] = true, --Darkspear Raptor
        --[63637] = true, --Darnassian Nightsaber
        --[63639] = true, --Exodar Elekk
        --[394209] = true, --Festering Emerald Drake
        [36702] = true, --Fiery Warhorse
        --[63643] = true, --Forsaken Warhorse
        [17460] = true, --Frost Ram
        [23509] = true, --Frostwolf Howler
        --[63638] = true, --Gnomeregan Mechanostrider
        --[61465] = true, --Grand Black War Mammoth
        --[61467] = true, --Grand Black War Mammoth
        --[59802] = true, --Grand Ice Mammoth
        --[59804] = true, --Grand Ice Mammoth
        --[61469] = true, --Grand Ice Mammoth
        --[61470] = true, --Grand Ice Mammoth
        --[35713] = true, --Great Blue Elekk
        --[49379] = true, --Great Brewfest Kodo
        [23249] = true, --Great Brown Kodo
        [65641] = true, --Great Golden Kodo
        [23248] = true, --Great Gray Kodo
        --[35712] = true, --Great Green Elekk
        --[35714] = true, --Great Purple Elekk
        --[65637] = true, --Great Red Elekk
        [23247] = true, --Great White Kodo
        [18991] = true, --Green Kodo
        --[26056] = true, --Green Qiraji Battle Tank
        [17465] = true, --Green Skeletal Warhorse
        --[48025] = true, --Headless Horseman's Mount
        --[59797] = true, --Ice Mammoth
        --[59799] = true, --Ice Mammoth
        [17459] = true, --Icy Blue Mechanostrider Mod A
        --[72286] = true, --Invincible
        --[63636] = true, --Ironforge Ram
        [17450] = true, --Ivory Raptor
        --[372677] = true, --Kalu'ak Whalebone Glider
        --[65917] = true, --Magic Rooster
        --[387308] = true, --Magic Rooster
        --[55531] = true, --Mechano-hog
        --[60424] = true, --Mekgineer's Chopper
        [16084] = true, --Mottled Red Raptor
        --[66846] = true, --Ochre Skeletal Warhorse
        --[63640] = true, --Orgrimmar Wolf
        [16082] = true, --Palomino
        [23246] = true, --Purple Skeletal Warhorse
        --[66090] = true, --Quel'dorei Steed
        --[41252] = true, --Raven Lord
        --[26054] = true, --Red Qiraji Battle Tank
        [22722] = true, --Red Skeletal Warhorse
        [17481] = true, --Rivendare's Deathcharger
        --[39317] = true, --Silver Riding Talbuk
        --[34898] = true, --Silver War Talbuk
        --[63642] = true, --Silvermoon Hawkstrider
        [23510] = true, --Stormpike Battle Charger
        --[63232] = true, --Stormwind Steed
        --[66091] = true, --Sunreaver Hawkstrider
        --[68057] = true, --Swift Alliance Steed
        [23241] = true, --Swift Blue Raptor
        --[43900] = true, --Swift Brewfest Ram
        [23238] = true, --Swift Brown Ram
        [23229] = true, --Swift Brown Steed
        [23250] = true, --Swift Brown Wolf
        --[65646] = true, --Swift Burgundy Wolf
        [23221] = true, --Swift Frostsaber
        [23239] = true, --Swift Gray Ram
        --[65640] = true, --Swift Gray Steed
        [23252] = true, --Swift Gray Wolf
        --[35025] = true, --Swift Green Hawkstrider
        [23225] = true, --Swift Green Mechanostrider
        --[68056] = true, --Swift Horde Wolf
        [23219] = true, --Swift Mistsaber
        --[65638] = true, --Swift Moonsaber
        [23242] = true, --Swift Olive Raptor
        [23243] = true, --Swift Orange Raptor
        [23227] = true, --Swift Palomino
        --[33660] = true, --Swift Pink Hawkstrider
        --[35027] = true, --Swift Purple Hawkstrider
        --[65644] = true, --Swift Purple Raptor
        [42777] = true, --Swift Spectral Tiger
        [23338] = true, --Swift Stormsaber
        [23251] = true, --Swift Timber Wolf
        --[65643] = true, --Swift Violet Ram
        --[35028] = true, --Swift Warstrider
        --[46628] = true, --Swift White Hawkstrider
        [23223] = true, --Swift White Mechanostrider
        [23240] = true, --Swift White Ram
        [23228] = true, --Swift White Steed
        [23222] = true, --Swift Yellow Mechanostrider
        --[48954] = true, --Swift Zhevra
        --[49322] = true, --Swift Zhevra
        [24252] = true, --Swift Zulian Tiger
        --[39318] = true, --Tan Riding Talbuk
        --[34899] = true, --Tan War Talbuk
        [18992] = true, --Teal Kodo
        --[63641] = true, --Thunder Bluff Kodo
        --[61425] = true, --Traveler's Tundra Mammoth
        --[61447] = true, --Traveler's Tundra Mammoth
        --[65642] = true, --Turbostrider
        --[42781] = true, --Upper Deck - Spectral Tiger Mount
        --[64659] = true, --Venomhide Ravasaur
        [15779] = true, --White Mechanostrider Mod B
        [54753] = true, --White Polar Bear
        --[39319] = true, --White Riding Talbuk
        --[65645] = true, --White Skeletal Warhorse
        [16083] = true, --White Stallion
        --[34897] = true, --White War Talbuk
        [16081] = true, --Winter Wolf
        [17229] = true, --Winterspring Frostsaber
        --[59791] = true, --Wooly Mammoth
        --[59793] = true, --Wooly Mammoth
        --[74918] = true, --Wooly White Rhino
        --[387321] = true, --Wooly White Rhino
        --[26055] = true, --Yellow Qiraji Battle Tank
        --[74856] = true, --Blazing Hippogryph
        --[387320] = true, --Blazing Hippogryph
        --[54729] = true, --Winged Steed of the Ebon Blade
        --[71342] = true, --X-45 Heartbreaker
        --[75973] = true, --X-53 Touring Rocket
        [23161] = true, --Dreadsteed
        [23214] = true, --Charger
    },
}

addon.emergencyItems = {
    [2091] = "magic dust",
    [3434] = "slumber sand",
    [2459] = "swiftness potion",
    [118] = "minor healing potion",
    [858] = "lesser healing potion",
    [4596] = "discolored healing potion",
    [929] = "healing potion",
    [1710] = "greater healing potion",
    [3928] = "superior healing potion",
    [13446] = "major healing potion",
    [2455] = "minor mana potion",
    [3385] = "lesser mana potion",
    [3827] = "mana potion",
    [6149] = "greater mana potion",
    [13443] = "superior mana potion",
    [13444] = "major mana potion",
    [2456] = "minor rejuvenation potion",
    [18253] = "major rejuvenation potion",
    [1251] = "linen bandage",
    [2581] = "heavy linen bandage",
    [6452] = "anti-venom",
    [3530] = "wool bandage",
    [3531] = "heavy wool bandage",
    [6453] = "strong anti-venom",
    [6450] = "silk bandage",
    [6451] = "heavy silk bandage",
    [8544] = "mageweave bandage",
    [8545] = "heavy mageweave bandage",
    [14529] = "runecloth bandage",
    [14530] = "heavy runecloth bandage",
    [19440] = "powerful anti-venom",
    [17048] = "rumsey rum",
    [11951] = "whipper root tuber",
    [8529] = "noggenfogger elixir",
    [18297] = "thornling seed",
    [3456] = "dog whistle",
    [1187] = "spiked collar",
    [4941] = "really sticky glue",
    [15723] = "tea with sugar",
    [10830] = "m73 frag grenade",
    [1191] = "bag of marbles",
    [5816] = "light of elune",
    [5951] = "moist towelette",
    [4945] = "faintly glowing skull",
    [15778] = "mechanical yeti",
    [1970] = "restoring balm",
    [5205] = "sprouted frond",
    [5457] = "severed voodoo claw",
    [23379] = "cinder bracers",
    [4852] = "flash bomb",
    [20620] = "holy mightstone",
    [3087] = "mug of shimmer stout",
    [11562] = "crystal restore",
    [5218] = "cleansed timberling heart",
    [15875] = "rotten apple",
    [835] = "large rope net",
    [5332] = "glowing cat figurine",
    [20709] = "rumsey rum light",
    [21114] = "rumsey rum dark",
    [21151] = "rumsey rum black label",
    [2458] = "elixir of minor",
    [3825] = "elixir of fortitude",
    [9030] = "restorative potion",
    [3387] = "limited invulnerability potion",
    [3823] = "lesser invisibility potion",
    [9172] = "invisibility potion",
    [4623] = "lesser stoneshield potion",
    [13455] = "greater stoneshield potion",
    [5634] = "free action potion",
    [20008] = "living action potion",
    [4366] = "target dummy",
    [4392] = "advanced target dummy",
    [16023] = "masterwork target dummy",
    [10418] = "glimmering mithril insignia",
    [4370] = "large copper bomb",
    [4374] = "small bronze bomb",
    [4380] = "big bronze bomb",
    [3960] = "portable bronze mortar",
    [4390] = "iron grenade",
    [4394] = "big iron bomb",
    [10514] = "mithril frag bomb",
    [10562] = "hi-explosive bomb",
    [10586] = "the big one",
    [15993] = "thorium grenade",
    [16005] = "dark iron bomb",
    [3386] = "elixir of poison resistance",
    [13461] = "greater arcane protection potion",
    [6049] = "fire protection potion",
    [13457] = "greater fire protection potion",
    [6050] = "frost protection potion",
    [13456] = "greater frost protection potion",
    [6052] = "nature protection potion",
    [13458] = "greater nature protection potion",
    [6048] = "shadow protection potion",
    [13459] = "greater shadow protection potion",
    [10588] = "goblin rocket helmet",
    [7189] = "goblin rocket boots",
    [10724] = "gnomish rocket boots",
    [4388] = "discombobulator",
    [9144] = "wildvine potion",
    [5631] = "rage potion",
    [5633] = "great rage potion",
    [13442] = "mighty rage potion",
    [10721] = "gnomish harm prevention belt",
    [4381] = "minor recombobulator",
    [18637] = "major recombobulator",
    [4397] = "gnomish cloaking device",
    [10518] = "parachute cloak",
    [4328] = "spider belt",
    [4262] = "gem-studded leather belt",
    [4264] = "barbaric belt",
    [7936] = "ornate mithril boots",
    [7391] = "swift boots",
    [8346] = "gauntlets of the sea",
    [2633] = "jungle remedy",
    [20130] = "diamond flask",
    [9394] = "horned viking helmet",
    [1404] = "tidal charm",
    [2820] = "nifty stopwatch",
    [19141] = "luffa",
    [17759] = "mark of resolution",
    [6972] = "fire hardened hauberk",
    [7133] = "brutal hauberk",
    [13143] = "mark of the dragon lord",
    [11819] = "second wind",
    [19990] = "blessed prayer beads",
    [22268] = "draconic infused emblem",
    [9397] = "energy cloak",
    [5613] = "staff of the purifier",
    [4444] = "black husk shield",
    [7515] = "celestial orb",
    [7508] = "ley orb",
    [15866] = "veildust medicine bag",
    [7507] = "arcane orb",
    [6898] = "orb of soran'ruk",
    [15108] = "orb of dar'orahil",
    [15107] = "orb of noh'orahil",
    [5323] = "everglow lantern",
    [16768] = "furbolg medicine pouch"
}

addon.emergencySpells = {
    professions = {},
    ['Tauren'] = {[20549] = "Warstomp"},
    ['Troll'] = {[20554] = "berserking"},
    ['Gnome'] = {[20589] = "escape artist"},
    ['Dwarf'] = {[6346] = "fear ward", [20594] = "stoneform"},
    ['Human'] = {
        [20600] = "perception",
        [13908] = "desperate prayer",
        [19236] = "desperate prayer",
        [19238] = "desperate prayer",
        [19240] = "desperate prayer",
        [19241] = "desperate prayer",
        [19243] = "desperate prayer"
    },
    ['Scourge'] = {
        [7744] = "will of the forsaken",
        [2944] = "devouring plague (undead priest)",
        [19276] = "devouring plague (undead priest)",
        [19277] = "devouring plague (undead priest)",
        [19278] = "devouring plague (undead priest)",
        [19279] = "devouring plague (undead priest)",
        [19280] = "devouring plague (undead priest)"
    },
    ['Night Elf'] = {
        [20580] = "shadowmeld",
        [2651] = "elune's grace",
        [19289] = "elune's grace",
        [19291] = "elune's grace",
        [19292] = "elune's grace",
        [19293] = "elune's grace"
    },
    ['DRUID'] = {
        [22812] = "barkskin",
        [5211] = "bash",
        [6798] = "bash",
        [8983] = "bash",
        [1850] = "dash",
        [9821] = "dash",
        [5229] = "enrage",
        [16979] = "feral charge (t)",
        [22842] = "frenzied regeneration",
        [22895] = "frenzied regeneration",
        [22896] = "frenzied regeneration",
        [29166] = "innervate",
        [16689] = "nature's grasp",
        [16810] = "nature's grasp",
        [16811] = "nature's grasp",
        [16812] = "nature's grasp",
        [16813] = "nature's grasp",
        [17329] = "nature's grasp",
        [17116] = "nature's swiftness",
        [18562] = "swiftmend",
        [740] = "tranquility",
        [8918] = "tranquility",
        [9862] = "tranquility",
        [9863] = "tranquility"
    },
    ['HUNTER'] = {
        [5116] = "concussive shot",
        [19306] = "counterattack",
        [20909] = "counterattack",
        [20910] = "counterattack",
        [19263] = "deterrence",
        [5384] = "feign death",
        [1543] = "flare",
        [1499] = "freezing trap",
        [14310] = "freezing trap",
        [14311] = "freezing trap",
        [13809] = "frost trap",
        [19577] = "intimidation ",
        [23989] = "readiness",
        [1513] = "scare beast",
        [14326] = "scare beast",
        [14327] = "scare beast",
        [19801] = "tranquilizing shot",
        [2974] = "wing clip",
        [14267] = "wing clip",
        [14268] = "wing clip",
        [19386] = "wyvern sting"
    },
    ['MAGE'] = {
        [11113] = "blast wave (t)",
        [13018] = "blast wave (t)",
        [13019] = "blast wave (t)",
        [13020] = "blast wave (t)",
        [13021] = "blast wave (t)",
        [1953] = "blink",
        [12472] = "cold snap (t)",
        [120] = "cone of cold",
        [8492] = "cone of cold",
        [10159] = "cone of cold",
        [10160] = "cone of cold",
        [10161] = "cone of cold",
        [12051] = "evocation",
        [543] = "fire ward",
        [8457] = "fire ward",
        [8458] = "fire ward",
        [10223] = "fire ward",
        [10225] = "fire ward",
        [122] = "frost nova",
        [865] = "frost nova",
        [6131] = "frost nova",
        [10230] = "frost nova",
        [6143] = "frost ward",
        [8461] = "frost ward",
        [8462] = "frost ward",
        [10177] = "frost ward",
        [28609] = "frost ward",
        [11426] = "ice barrier (t)",
        [13031] = "ice barrier (t)",
        [13032] = "ice barrier (t)",
        [13033] = "ice barrier (t)",
        [11958] = "ice block (t)",
        [12043] = "presence of mind (t)"
    },
    ['PALADIN'] = {
        [1044] = "blessing of freedom",
        [1022] = "blessing of protection",
        [5599] = "blessing of protection",
        [10278] = "blessing of protection",
        [20216] = "divine favor (t)",
        [498] = "divine protection",
        [5573] = "divine protection",
        [642] = "divine shield",
        [1020] = "divine shield",
        [853] = "hammer of justice",
        [5588] = "hammer of justice",
        [5589] = "hammer of justice",
        [10308] = "hammer of justice",
        [20473] = "holy shock (t)",
        [20929] = "holy shock (t)",
        [20930] = "holy shock (t)",
        [20271] = "judgement",
        [633] = "lay on hands",
        [2800] = "lay on hands",
        [10310] = "lay on hands",
        [20066] = "repentance (t)",
        [2878] = "turn undead",
        [5627] = "turn undead",
        [10326] = "turn undead"
    },
    ['PRIEST'] = {
        [17] = "power word: shield",
        [592] = "power word: shield",
        [600] = "power word: shield",
        [3747] = "power word: shield",
        [6065] = "power word: shield",
        [6066] = "power word: shield",
        [10898] = "power word: shield",
        [10899] = "power word: shield",
        [10900] = "power word: shield",
        [10901] = "power word: shield",
        [8122] = "psychic scream",
        [8124] = "psychic scream",
        [10888] = "psychic scream",
        [10890] = "psychic scream"
    },
    ['ROGUE'] = {
        [2094] = "blind",
        [1725] = "distract",
        [5277] = "evasion",
        [14185] = "preparation (t)",
        [2983] = "sprint",
        [8696] = "sprint",
        [11305] = "sprint",
        [1856] = "vanish",
        [1857] = "vanish",
        [7676] = "thistle tea"
    },
    ['SHAMAN'] = {
        [2484] = "earthbind totem",
        [16166] = "elemental mastery (t)",
        [8177] = "grounding totem",
        [16190] = "mana tide totem (t)",
        [17354] = "mana tide totem (t)",
        [17359] = "mana tide totem (t)",
        [16188] = "nature's swiftness (t)",
        [5730] = "stoneclaw totem",
        [6390] = "stoneclaw totem",
        [6391] = "stoneclaw totem",
        [6392] = "stoneclaw totem",
        [10427] = "stoneclaw totem",
        [10428] = "stoneclaw totem"
    },
    ['WARLOCK'] = {
        [18288] = "amplify curse (t)",
        [6789] = "death coil",
        [17925] = "death coil",
        [17926] = "death coil",
        [18708] = "fel domination (t)",
        [5484] = "howl of terror",
        [17928] = "howl of terror",
        [1122] = "inferno",
        [6229] = "shadow ward",
        [11739] = "shadow ward",
        [11740] = "shadow ward",
        [28610] = "shadow ward"
    },
    ['WARRIOR'] = {
        [18499] = "berserker rage",
        [2687] = "bloodrage",
        [12809] = "concussion blow (t)",
        [676] = "disarm",
        [20252] = "intercept",
        [20616] = "intercept",
        [20617] = "intercept",
        [5246] = "initimidating shout",
        [12975] = "last stand (t)",
        [12323] = "piercing howl (t)",
        [6552] = "pummel",
        [6554] = "pummel",
        [20230] = "retaliation",
        [72] = "shield bash",
        [1671] = "shield bash",
        [1672] = "shield bash",
        [871] = "shield wall"
    }
}

addon.dungeonIcons = {
    loot = 133639,
    quest = 894556,
    travel = 134376,
    Mining = 136025,
    Engineering = 136243,
    Alchemy = 136240,
    Herbalism = 133939,
    Blacksmithing = 136241,
    Leatherworking = 133611,
    Skinning = 134366,
    Enchanting = 136244,
    Tailoring = 136249,
    Fishing = 136245,
}

addon.dungeonTooltip = {
    loot = L"Loot: %s",
    quest = L"Quest XP: %s",
    travel = L"Travel Speed: %s",
}
addon.dungeonTooltip[addon.player.class] = addon.dungeonTooltip.loot

addon.dungeonWeights = {
    [0] = L"Terrible",
    [1] = L"Bad",
    [2] = L"Good",
    [3] = L"Excellent",
}

addon.dungeonProfessions = {
    WC = {
        Mining = 2,
        Herbalism = 2,
        Leatherworking = 2,
        Skinning = 2,
    },
    DM = {
        Mining = 2,
        Engineering = 2,
    },
    SFK = {Skinning = 2},
    BFD = {
        Mining = 2,
        Herbalism = 2,
        Skinning = 2,
    },
    GNOMER = {Engineering = 2},
    RFK = {
        Herbalism = 2,
        Mining = 2,
        Skinning = 2,
    },
    SM = {Herbalism = 2},
    RFD = {
        Herbalism = 2,
        Skinning = 2,
    },
    ULDA = {
        Mining = 2,
        Enchanting = 2,
        Skinning = 2,
    },
    ZF = {Skinning = 2},
    MARA = {
        Mining = 2,
        Herbalism = 2,
        Skinning = 2,
    },
    ST = {
        Leatherworking = 2,
        Enchanting = 2,
        Skinning = 2,
    },

}

addon.dungeonStats = {
    ["Alliance"] = {
        WC = {
            travel = 0,
            quest = 2,
            DRUID = 2,
            HUNTER = 2,
            MAGE = 1,
            PRIEST = 1,
            ROGUE = 2,
            PALADIN = 1,
            WARLOCK = 1,
            WARRIOR = 1,
        },
        DM = {
            travel = 3,
            quest = 3,
            DRUID = 3,
            HUNTER = 3,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 3,
            PALADIN = 3,
            WARLOCK = 2,
            WARRIOR = 3,
        },
        SFK = {
            travel = 0,
            quest = 1,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 2,
            PALADIN = 1,
            WARLOCK = 2,
            WARRIOR = 1,
        },
        STOCKS = {
            travel = 3,
            quest = 3,
        },
        BFD = {
            travel = 2,
            quest = 3,
            DRUID = 2,
            HUNTER = 1,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 1,
            PALADIN = 2,
            WARLOCK = 3,
            WARRIOR = 2,
        },
        GNOMER = {
            travel = 3,
            quest = 3,
            DRUID = 3,
            HUNTER = 3,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 3,
            PALADIN = 2,
            WARLOCK = 2,
            WARRIOR = 2,
        },
        RFK = {
            travel = 1,
            quest = 2,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 2,
            PALADIN = 3,
            WARLOCK = 2,
            WARRIOR = 3,
        },
        SM = {
            travel = 0,
            quest = 1,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 3,
            PALADIN = 3,
            WARLOCK = 3,
            WARRIOR = 3,
        },
        RFD = {
            travel = 1,
            quest = 2,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 3,
            PALADIN = 2,
            WARLOCK = 3,
            WARRIOR = 2,
        },
        ULDA = {
            travel = 3,
            quest = 3,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 1,
            PRIEST = 2,
            ROGUE = 1,
            PALADIN = 2,
            WARLOCK = 1,
            WARRIOR = 2,
        },
        ZF = {
            travel = 3,
            quest = 3,
            DRUID = 2,
            HUNTER = 2,
            MAGE = 1,
            PRIEST = 1,
            ROGUE = 2,
            PALADIN = 2,
            WARLOCK = 1,
            WARRIOR = 2,
        },
        MARA = {
            travel = 2,
            quest = 3,
            DRUID = 2,
            HUNTER = 3,
            MAGE = 2,
            PRIEST = 2,
            ROGUE = 3,
            PALADIN = 2,
            WARLOCK = 2,
            WARRIOR = 3,
        },
        ST = {
            travel = 2,
            quest = 3,
            DRUID = 1,
            HUNTER = 3,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 2,
            PALADIN = 3,
            WARLOCK = 3,
            WARRIOR = 3,
        },
    },
    ["Horde"] = {
        RFC = {
            travel = 1,
            quest = 3,
            DRUID = 2,
            HUNTER = 1,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 3,
            SHAMAN = 2,
            WARLOCK = 2,
            WARRIOR = 3,
        },
        WC = {
            travel = 3,
            quest = 3,
            DRUID = 3,
            HUNTER = 3,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 3,
            SHAMAN = 3,
            WARLOCK = 3,
            WARRIOR = 3,
        },
        DM = {
            travel = 0,
            quest = 0,
            DRUID = 3,
            HUNTER = 2,
            MAGE = 1,
            PRIEST = 2,
            ROGUE = 3,
            SHAMAN = 2,
            WARLOCK = 1,
            WARRIOR = 2,
        },
        SFK = {
            travel = 3,
            quest = 2,
            DRUID = 2,
            HUNTER = 1,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 2,
            SHAMAN = 2,
            WARLOCK = 3,
            WARRIOR = 2,
        },
        BFD = {
            travel = 3,
            quest = 3,
            DRUID = 2,
            HUNTER = 2,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 3,
            SHAMAN = 2,
            WARLOCK = 3,
            WARRIOR = 2,
        },
        GNOMER = {
            travel = 2,
            quest = 2,
            DRUID = 3,
            HUNTER = 3,
            MAGE = 1,
            PRIEST = 3,
            ROGUE = 3,
            SHAMAN = 2,
            WARLOCK = 1,
            WARRIOR = 2,
        },
        RFK = {
            travel = 3,
            quest = 3,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 1,
            SHAMAN = 2,
            WARLOCK = 2,
            WARRIOR = 3,
        },
        SM = {
            travel = 1,
            quest = 2,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 3,
            SHAMAN = 2,
            WARLOCK = 3,
            WARRIOR = 2,
        },
        RFD = {
            travel = 3,
            quest = 2,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 3,
            PRIEST = 3,
            ROGUE = 3,
            SHAMAN = 1,
            WARLOCK = 3,
            WARRIOR = 2,
        },
        ULDA = {
            travel = 1,
            quest = 3,
            DRUID = 1,
            HUNTER = 1,
            MAGE = 1,
            PRIEST = 2,
            ROGUE = 1,
            SHAMAN = 1,
            WARLOCK = 1,
            WARRIOR = 2,
        },
        ZF = {
            travel = 2,
            quest = 3,
            DRUID = 2,
            HUNTER = 2,
            MAGE = 1,
            PRIEST = 1,
            ROGUE = 2,
            SHAMAN = 2,
            WARLOCK = 1,
            WARRIOR = 2,
        },
        MARA = {
            travel = 2,
            quest = 3,
            DRUID = 2,
            HUNTER = 3,
            MAGE = 2,
            PRIEST = 2,
            ROGUE = 3,
            SHAMAN = 2,
            WARLOCK = 2,
            WARRIOR = 3,
        },
        ST = {
            travel = 1,
            quest = 3,
            DRUID = 1,
            HUNTER = 3,
            MAGE = 2,
            PRIEST = 3,
            ROGUE = 2,
            SHAMAN = 3,
            WARLOCK = 3,
            WARRIOR = 3,
        },
    }
}

addon.dungeonStatsSC = CopyTable(addon.dungeonStats)
if addon.player.class == "HUNTER" then
    addon.dungeonStatsSC["Alliance"]["DM"]["travel"] = 0
    addon.dungeonStatsSC["Alliance"]["DM"]["HUNTER"] = 2
end
addon.dungeonStatsSC["Horde"]["DM"] = nil
addon.dungeonStatsSC["Alliance"]["SFK"] = nil
addon.dungeonStatsSC["Alliance"]["WC"] = nil
addon.dungeonStatsSC["Alliance"]["ULDA"].travel = 1

addon.taxiPos = {
  [0] = {
    [2] = {wx = -8840.55957, wy = 489.70001, flag = 1},
    [4] = {wx = -10628.88965, wy = 1036.68005, flag = 1},
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
    [76] = {wx = -635.26001, wy = -4720.50000, flag = 2},
    [68] = {wx = 2327.40991, wy = -5286.89014, flag = 2},
    [75] = {wx = -6554.93018, wy = -1100.05005, flag = 2},
    [74] = {wx = -6552.58984, wy = -1168.27002, flag = 1},
    [70] = {wx = -7504.02979, wy = -2187.54004, flag = 2},
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
    [52] = {wx = 6799.24023, wy = -4742.43994, flag = 1},
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
  },
}
