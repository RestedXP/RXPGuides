
local _,addon = ...


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

addon.mapId = {}
for i = 1, 2200 do
	local map = C_Map.GetMapInfo(i)
	if map and not addon.mapId[map.name] then
		addon.mapId[map.name] = i
	end
end

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

addon.hearthstoneSpellIds = {
	375357,
	363799,
	136508,
	298068,
	278559,
	94719,
	172179,
	342122,
	326064,
	340200,
	345393,
	285424,
	75136,
	278244,
	231504,
	142543,
	286331,
	367013,
	286353,
	285362,
	391042,
	286031,
	279066,
	366945,
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
    alchemy = {105206,80731,11611,28596,3464,2259,51304,3101},
    blacksmithing = {3538,51300,2018,110396,3100,76666,29844,9785},
    enchanting = {110400,74258,28029,7411,51313,13920,7412,7413},
    engineering = {4037,49383,30350,4036,82774,51306,12656},
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
