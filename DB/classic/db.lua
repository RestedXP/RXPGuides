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

    local xpMod = 1
    local eliteMod = 1
	--1.90980392157?

    if RXPCData and RXPCData.SoM then
		xpMod = 1.4
        eliteMod = 1.7
		if RXPData.phase and RXPData.phase > 2 then
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

    local xpMod = 1
    local eliteMod = 1
	--1.90980392157?

    if RXPCData and RXPCData.SoM then
        xpMod = 1.4
        eliteMod = 1.7
		if RXPData.phase and RXPData.phase > 2 then
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
