local addonName, addon = ...
local faction = UnitFactionGroup("player")

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

    if addon.SeasonCheck(som) then
		xpMod = 1.4
        eliteMod = 1.7
		if addon.PhaseCheck(som) then
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

		if IsQuestComplete(4901) then --Guardians of the altar
			questXP = floor(questXP + (4800 + 6000)*xpMod)
		end


		questXP = questXP - 50*(xpMod - 1)
	end

	local missingXP = UnitXPMax("player") - UnitXP("player") - questXP
    local level = UnitLevel('player')
    if level == 58 then
        missingXP = missingXP + 209800
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

    if addon.SeasonCheck(som) then
		xpMod = 1.4
        eliteMod = 1.7
		if addon.PhaseCheck(som) then
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
