local addonName, addon = ...
if addon.game ~= "CATA" then return end
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
    ["Elwynn Forest"] = "RestedXP Alliance 1-20\\01-11 Elwynn Forest",
    ["Teldrassil"] = "RestedXP Alliance 1-20\\01-06 Shadowglen",
    ["Dun Morogh"] = "RestedXP Alliance 1-20\\01-06 Coldridge Valley",
    ["Azuremyst Isle"] = "RestedXP Alliance 1-20\\01-12 Azuremyst Isle",
    ["Durotar"] = "RestedXP Horde 1-30\\01-10 Durotar",
    ["Mulgore"] = "RestedXP Horde 1-30\\01-10 Mulgore",
    ["Tirisfal Glades"] = "RestedXP Horde 1-30\\01-06 Tirisfal Glades",
    ["Eversong Woods"] = "RestedXP Horde 1-30\\01-06 Eversong Woods",
}

if faction == "Horde" then
    addon.defaultGroup = "RestedXP Horde 1-30"
elseif faction == "Alliance" then
    addon.defaultGroup = "RestedXP Alliance 1-20"
end

if class == "WARLOCK" then
    addon.defaultGuideList["Dun Morogh"] = "RestedXP Alliance 1-20\\1-12 Dun Morogh"
elseif class == "HUNTER" then
    addon.defaultGuideList["Dun Morogh"] = "RestedXP Alliance 1-20\\1-11 Dun Morogh"
end

addon.mapId = {
   --[[ ["87"] = 1455,
    ["77"] = 1448,
    ["97"] = 1943,
    ["93"] = 1461,
    ["37"] = 1429,
    ["67"] = 280,
    ["57"] = 1438,
    ["112"] = 397,
    ["111"] = 1955,
    ["27"] = 1426,
    ["17"] = 1419,
    ["13"] = 1415,
    ["23"] = 1423,
    ["107"] = 1951,
    ["52"] = 1436,
    ["62"] = 1439,
    ["36"] = 1428,
    ["92"] = 1460,
    ["56"] = 1437,
    ["66"] = 1443,
    ["106"] = 1950,
    ["122"] = 1957,
    ["108"] = 1952,
    ["16"] = 230,
    ["26"] = 1425,
    ["12"] = 1414,
    ["22"] = 1422,
    ["32"] = 1427,
    ["71"] = 1446,
    ["95"] = 1942,
    ["85"] = 86,
    ["41"] = 125,
    ["65"] = 1442,
    ["55"] = 291,
    ["91"] = 1459,
    ["81"] = 1451,
    ["49"] = 1433,
    ["89"] = 1457,
    ["69"] = 1444,
    ["1"] = 1411,
    ["7"] = 1412,
    ["25"] = 1424,
    ["15"] = 1418,
    ["110"] = 1954,
    ["21"] = 1421,
    ["11"] = 279,
    ["94"] = 1941,
    ["70"] = 1445,
    ["84"] = 1453,
    ["64"] = 1441,
    ["80"] = 1450,
    ["90"] = 1458,
    ["48"] = 1432,
    ["88"] = 1456,
    ["102"] = 1946,
    ["78"] = 1449,
    ["105"] = 1949,
    ["100"] = 1944,
    ["101"] = 987,
    ["18"] = 1420,
    ["51"] = 1435,
    ["47"] = 1431,
    ["109"] = 1953,
    ["83"] = 1452,
    ["103"] = 1947,
    ["104"] = 1948,
    ["76"] = 1447,
    ["14"] = 1417,
    ["42"] = 1430,
    ["63"] = 1440,]]
    ["ScarletEnclave"] = 124,
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
--[[
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
}]]

local zoneData = {
		[27] = {
			4897.919921875, -- [1]
			3264.580078125, -- [2]
			2137.5, -- [3]
			-3941.669921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Dun Morogh",
			["mapType"] = 3,
		},
		[31] = {
			374.009765625, -- [1]
			249.33984375, -- [2]
			-1542.9951171875, -- [3]
			-5486.830078125, -- [4]
			["instance"] = 0,
			["parent"] = 27,
			["name"] = "Gol'Bolar Quarry",
			["mapType"] = 5,
		},
		[38] = {
			240, -- [1]
			160, -- [2]
			281.75, -- [3]
			-9700, -- [4]
			["instance"] = 0,
			["parent"] = 37,
			["name"] = "Fargodeep Mine",
			["mapType"] = 5,
		},
		[62] = {
			6464.58984375, -- [1]
			4310.419921875, -- [2]
			3016.669921875, -- [3]
			8222.919921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Darkshore",
			["mapType"] = 3,
		},
		[425] = {
			968.75, -- [1]
			645.83984375, -- [2]
			187.5, -- [3]
			-8570.830078125, -- [4]
			["instance"] = 0,
			["parent"] = 37,
			["name"] = "Northshire",
			["mapType"] = 3,
		},
		[39] = {
			255, -- [1]
			170, -- [2]
			289.25, -- [3]
			-9710, -- [4]
			["instance"] = 0,
			["parent"] = 37,
			["name"] = "Fargodeep Mine",
			["mapType"] = 5,
		},
		[47] = {
			2700.003051757813, -- [1]
			1800.03125, -- [2]
			833.3330078125, -- [3]
			-9716.669921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Duskwood",
			["mapType"] = 3,
		},
		[428] = {
			266.490234375, -- [1]
			177.66015625, -- [2]
			508.2451171875, -- [3]
			-6445.669921875, -- [4]
			["instance"] = 0,
			["parent"] = 27,
			["name"] = "Frostmane Hovel",
			["mapType"] = 5,
		},
		[24] = {
			442.5, -- [1]
			295, -- [2]
			-5153.75, -- [3]
			2565, -- [4]
			["instance"] = 0,
			["parent"] = 23,
			["name"] = "Light's Hope Chapel",
			["mapType"] = 5,
		},
		[32] = {
			2231.2529296875, -- [1]
			1487.5, -- [2]
			-322.9169921875, -- [3]
			-6100, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Searing Gorge",
			["mapType"] = 3,
		},
		[40] = {
			323.25, -- [1]
			215.5, -- [2]
			-445.875, -- [3]
			-8985, -- [4]
			["instance"] = 0,
			["parent"] = 37,
			["name"] = "Jasperlode Mine",
			["mapType"] = 5,
		},
		[48] = {
			2758.330078125, -- [1]
			1839.580078125, -- [2]
			-1993.75, -- [3]
			-4487.5, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Loch Modan",
			["mapType"] = 3,
		},
		[56] = {
			4135.4169921875, -- [1]
			2756.25, -- [2]
			-389.5830078125, -- [3]
			-2147.919921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Wetlands",
			["mapType"] = 3,
		},
		[49] = {
			2568.749755859375, -- [1]
			1712.51953125, -- [2]
			-1479.170043945313, -- [3]
			-8514.580078125, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Redridge Mountains",
			["mapType"] = 3,
		},
		[57] = {
			5875, -- [1]
			3916.650390625, -- [2]
			4235.419921875, -- [3]
			11847.900390625, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Teldrassil",
			["mapType"] = 3,
		},
		[17] = {
			3662.5, -- [1]
			2441.701171875, -- [2]
			-1193.75, -- [3]
			-10583.2998046875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Blasted Lands",
			["mapType"] = 3,
		},
		[29] = {
			505.5, -- [1]
			337, -- [2]
			32.75, -- [3]
			-5313, -- [4]
			["instance"] = 0,
			["parent"] = 27,
			["name"] = "The Grizzled Den",
			["mapType"] = 5,
		},
		[50] = {
			4100, -- [1]
			2733.298828125, -- [2]
			1743.75, -- [3]
			-11016.7001953125, -- [4]
			["instance"] = 0,
			["parent"] = 224,
			["name"] = "Northern Stranglethorn",
			["mapType"] = 3,
		},
		[58] = {
			480, -- [1]
			320, -- [2]
			1140, -- [3]
			11035, -- [4]
			["instance"] = 1,
			["parent"] = 57,
			["name"] = "Shadowthread Cave",
			["mapType"] = 5,
		},
		[84] = {
			1737.5009765625, -- [1]
			1158.33203125, -- [2]
			1722.9169921875, -- [3]
			-7995.833984375, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Stormwind City",
			["mapType"] = 3,
		},
		[51] = {
			2508.330078125, -- [1]
			1672.87890625, -- [2]
			-2081.25, -- [3]
			-9535.419921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Swamp of Sorrows",
			["mapType"] = 3,
		},
		[15] = {
			3070.840087890625, -- [1]
			2045.830078125, -- [2]
			-1902.079956054688, -- [3]
			-5854.169921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Badlands",
			["mapType"] = 3,
		},
		[70] = {
			5250, -- [1]
			3500.000244140625, -- [2]
			-975, -- [3]
			-2033.329956054688, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Dustwallow Marsh",
			["mapType"] = 3,
		},
		[22] = {
			4299.9970703125, -- [1]
			2866.669921875, -- [2]
			416.6669921875, -- [3]
			3366.669921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Western Plaguelands",
			["mapType"] = 3,
		},
		[36] = {
			3152.0869140625, -- [1]
			2100, -- [2]
			-464.5830078125, -- [3]
			-6985.419921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Burning Steppes",
			["mapType"] = 3,
		},
		[87] = {
			790.6251220703125, -- [1]
			527.6044921875, -- [2]
			-713.5913696289062, -- [3]
			-4569.2412109375, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Ironforge",
			["mapType"] = 3,
		},
		[52] = {
			3500.0029296875, -- [1]
			2333.30078125, -- [2]
			3016.669921875, -- [3]
			-9400, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Westfall",
			["mapType"] = 3,
		},
		[37] = {
			3470.840087890625, -- [1]
			2314.62109375, -- [2]
			1535.420043945313, -- [3]
			-7939.580078125, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Elwynn Forest",
			["mapType"] = 3,
		},
		[89] = {
			1539.58349609375, -- [1]
			1027.083984375, -- [2]
			3187.5, -- [3]
			10464.5830078125, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Darnassus",
			["mapType"] = 3,
		},
		[61] = {
			380.009765625, -- [1]
			253.33984375, -- [2]
			1735.0048828125, -- [3]
			9931.669921875, -- [4]
			["instance"] = 1,
			["parent"] = 57,
			["name"] = "Ban'ethil Barrow Den",
			["mapType"] = 5,
		},
		[71] = {
			7212.5, -- [1]
			4808.3701171875, -- [2]
			-62.5, -- [3]
			-5770.830078125, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Tanaris",
			["mapType"] = 3,
		},
		[23] = {
			4031.25, -- [1]
			2687.5, -- [2]
			-2287.5, -- [3]
			3704.169921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Eastern Plaguelands",
			["mapType"] = 3,
		},
		[460] = {
			1450.0009765625, -- [1]
			966.666015625, -- [2]
			1491.6669921875, -- [3]
			11033.3330078125, -- [4]
			["instance"] = 1,
			["parent"] = 57,
			["name"] = "Shadowglen",
			["mapType"] = 3,
		},
	}

    local cataZones = {
		[261] = {
			1003.519012451172, -- [1]
			669.0126953125, -- [2]
			498.989013671875, -- [3]
			603.135986328125, -- [4]
			["instance"] = 542,
			["parent"] = 100,
			["name"] = "The Blood Furnace",
			["mapType"] = 4,
		},
		[277] = {
			970.833251953125, -- [1]
			647.91796875, -- [2]
			-1004.166625976563, -- [3]
			-10591.666015625, -- [4]
			["instance"] = 755,
			["parent"] = 249,
			["name"] = "Lost City of the Tol'vir",
			["mapType"] = 6,
		},
		[293] = {
			869.0473785400391, -- [1]
			579.364990234375, -- [2]
			-83.73259735107422, -- [3]
			-301.6220092773438, -- [4]
			["instance"] = 670,
			["parent"] = 241,
			["name"] = "Grim Batol",
			["mapType"] = 4,
		},
		[155] = {
			1162.499877929688, -- [1]
			775, -- [2]
			1133.333251953125, -- [3]
			3616.66650390625, -- [4]
			["instance"] = 615,
			["parent"] = 115,
			["name"] = "The Obsidian Sanctum",
			["mapType"] = 6,
		},
		[325] = {
			2018.726989746094, -- [1]
			1345.817993164063, -- [2]
			1107.791015625, -- [3]
			-111.33203125, -- [4]
			["instance"] = 657,
			["parent"] = 249,
			["name"] = "The Vortex Pinnacle",
			["mapType"] = 4,
		},
		[171] = {
			369.9859619140625, -- [1]
			246.6580810546875, -- [2]
			807.4099731445312, -- [3]
			876.1060180664062, -- [4]
			["instance"] = 650,
			["parent"] = 118,
			["name"] = "Trial of the Champion",
			["mapType"] = 4,
		},
		[1420] = {
			4518.750122070313, -- [1]
			3012.5, -- [2]
			3033.330078125, -- [3]
			3837.5, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Tirisfal Glades",
			["mapType"] = 3,
		},
		[203] = {
			6945.83984375, -- [1]
			4631.25, -- [2]
			8754.169921875, -- [3]
			-3720.830078125, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Vashj'ir",
			["mapType"] = 3,
		},
		[1421] = {
			4200, -- [1]
			2800, -- [2]
			3450, -- [3]
			1666.670043945313, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Silverpine Forest",
			["mapType"] = 3,
		},
		[219] = {
			1383.333984375, -- [1]
			922.916015625, -- [2]
			1625, -- [3]
			2052.0830078125, -- [4]
			["instance"] = 209,
			["parent"] = 71,
			["name"] = "Zul'Farrak",
			["mapType"] = 6,
		},
		[1422] = {
			4299.9970703125, -- [1]
			2866.669921875, -- [2]
			416.6669921875, -- [3]
			3366.669921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Western Plaguelands",
			["mapType"] = 3,
		},
		[262] = {
			894.9200134277344, -- [1]
			596.6133575439453, -- [2]
			240.9770050048828, -- [3]
			423.7351684570313, -- [4]
			["instance"] = 546,
			["parent"] = 102,
			["name"] = "The Underbog",
			["mapType"] = 4,
		},
		[1423] = {
			4031.25, -- [1]
			2687.5, -- [2]
			-2287.5, -- [3]
			3704.169921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Eastern Plaguelands",
			["mapType"] = 3,
		},
		[310] = {
			352.43017578125, -- [1]
			234.9533843994141, -- [2]
			2356.199951171875, -- [3]
			-84.92960357666016, -- [4]
			["instance"] = 33,
			["parent"] = 21,
			["name"] = "Shadowfang Keep",
			["mapType"] = 4,
		},
		[86] = {
			1739.375, -- [1]
			1159.58349609375, -- [2]
			-3506.35400390625, -- [3]
			2486.666748046875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Orgrimmar",
			["mapType"] = 3,
		},
		[1424] = {
			4862.5, -- [1]
			3241.670043945313, -- [2]
			1850, -- [3]
			1481.25, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Hillsbrad Foothills",
			["mapType"] = 3,
		},
		[1425] = {
			3850, -- [1]
			2566.670043945313, -- [2]
			-1575, -- [3]
			1466.670043945313, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "The Hinterlands",
			["mapType"] = 3,
		},


		[1426] = {
			4897.919921875, -- [1]
			3264.580078125, -- [2]
			2137.5, -- [3]
			-3941.669921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Dun Morogh",
			["mapType"] = 3,
		},
		[132] = {
			972.41796875, -- [1]
			648.279052734375, -- [2]
			-233.302001953125, -- [3]
			848.6840209960938, -- [4]
			["instance"] = 619,
			["parent"] = 115,
			["name"] = "Ahn'kahet: The Old Kingdom",
			["mapType"] = 4,
		},
		[279] = {
			570, -- [1]
			380, -- [2]
			-1902.5, -- [3]
			-490, -- [4]
			["instance"] = 1,
			["parent"] = 10,
			["name"] = "Wailing Caverns",
			["mapType"] = 5,
		},
		[1427] = {
			2231.2529296875, -- [1]
			1487.5, -- [2]
			-322.9169921875, -- [3]
			-6100, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Searing Gorge",
			["mapType"] = 3,
		},
		[156] = {
			1398.255004882813, -- [1]
			932.1700134277344, -- [2]
			585.7360229492188, -- [3]
			298.0899963378906, -- [4]
			["instance"] = 624,
			["parent"] = 123,
			["name"] = "Vault of Archavon",
			["mapType"] = 4,
		},
		[327] = {
			4049.999755859375, -- [1]
			2700, -- [2]
			3891.66650390625, -- [3]
			-8033.3330078125, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Ahn'Qiraj: The Fallen Kingdom",
			["mapType"] = 6,
		},
		[172] = {
			369.9861755371094, -- [1]
			246.657958984375, -- [2]
			328.7309875488281, -- [3]
			693.0189819335938, -- [4]
			["instance"] = 649,
			["parent"] = 118,
			["name"] = "Trial of the Crusader",
			["mapType"] = 4,
		},
		[1428] = {
			3152.0869140625, -- [1]
			2100, -- [2]
			-464.5830078125, -- [3]
			-6985.419921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Burning Steppes",
			["mapType"] = 3,
		},
		[407] = {
			1858.333984375, -- [1]
			1239.583984375, -- [2]
			7268.75, -- [3]
			-3322.916015625, -- [4]
			["instance"] = 974,
			["parent"] = 947,
			["name"] = "Darkmoon Island",
			["mapType"] = 6,
		},
		[1429] = {
			3470.840087890625, -- [1]
			2314.62109375, -- [2]
			1535.420043945313, -- [3]
			-7939.580078125, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Elwynn Forest",
			["mapType"] = 3,
		},
		[220] = {
			695.0289916992188, -- [1]
			463.3529968261719, -- [2]
			442.7579956054688, -- [3]
			-255.1660003662109, -- [4]
			["instance"] = 109,
			["parent"] = 51,
			["name"] = "The Temple of Atal'Hakkar",
			["mapType"] = 4,
		},
		[244] = {
			2014.583251953125, -- [1]
			1343.75, -- [2]
			5914.716625976563, -- [3]
			-1172.216625976563, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Tol Barad",
			["mapType"] = 3,
		},
		[280] = {
			600, -- [1]
			400, -- [2]
			3085.5, -- [3]
			-1250, -- [4]
			["instance"] = 1,
			["parent"] = 66,
			["name"] = "Maraudon",
			["mapType"] = 5,
		},
		[1431] = {
			2700.003051757813, -- [1]
			1800.03125, -- [2]
			833.3330078125, -- [3]
			-9716.669921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Duskwood",
			["mapType"] = 3,
		},
		[328] = {
			1500, -- [1]
			1000, -- [2]
			1525, -- [3]
			450, -- [4]
			["instance"] = 754,
			["parent"] = 249,
			["name"] = "Throne of the Four Winds",
			["mapType"] = 4,
		},

		[265] = {
			890.0581436157227, -- [1]
			593.3720703125, -- [2]
			53.93410110473633, -- [3]
			201.7200317382813, -- [4]
			["instance"] = 547,
			["parent"] = 102,
			["name"] = "The Slave Pens",
			["mapType"] = 4,
		},
		[141] = {
			430.070068359375, -- [1]
			286.7130126953125, -- [2]
			1466.780029296875, -- [3]
			897.8410034179688, -- [4]
			["instance"] = 616,
			["parent"] = 114,
			["name"] = "The Eye of Eternity",
			["mapType"] = 4,
		},
		[297] = {
			1531.7509765625, -- [1]
			1021.167252540588, -- [2]
			1226.969970703125, -- [3]
			2.99726152420044, -- [4]
			["instance"] = 644,
			["parent"] = 249,
			["name"] = "Halls of Origination",
			["mapType"] = 4,
		},
		[157] = {
			752.9739990234375, -- [1]
			501.9830322265625, -- [2]
			722.9739990234375, -- [3]
			794.125, -- [4]
			["instance"] = 601,
			["parent"] = 115,
			["name"] = "Azjol-Nerub",
			["mapType"] = 4,
		},
		[329] = {
			2500, -- [1]
			1666.666015625, -- [2]
			-1525, -- [3]
			6145.8330078125, -- [4]
			["instance"] = 534,
			["parent"] = 75,
			["name"] = "Hyjal Summit",
			["mapType"] = 6,
		},

		[409] = {
			3106.70849609375, -- [1]
			2063.065185546875, -- [2]
			-833.5927734375, -- [3]
			-565.0927734375, -- [4]
			["instance"] = 967,
			["parent"] = 71,
			["name"] = "Dragon Soul",
			["mapType"] = 4,
		},
		[213] = {
			738.864013671875, -- [1]
			492.5762023925781, -- [2]
			452.8710021972656, -- [3]
			39.62319946289063, -- [4]
			["instance"] = 389,
			["parent"] = 85,
			["name"] = "Ragefire Chasm",
			["mapType"] = 4,
		},
		[221] = {
			884.2200012207031, -- [1]
			589.4799652099609, -- [2]
			502.9240112304688, -- [3]
			-87.66699981689453, -- [4]
			["instance"] = 48,
			["parent"] = 63,
			["name"] = "Blackfathom Deeps",
			["mapType"] = 4,
		},
		[245] = {
			1837.5, -- [1]
			1224.999938964844, -- [2]
			6316.8, -- [3]
			-234.7166870117187, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Tol Barad Peninsula",
			["mapType"] = 3,
		},
		[266] = {
			757.4024658203125, -- [1]
			504.9349975585938, -- [2]
			649.7532348632812, -- [3]
			248.0249938964844, -- [4]
			["instance"] = 553,
			["parent"] = 109,
			["name"] = "The Botanica",
			["mapType"] = 4,
		},
		[282] = {
			585, -- [1]
			390, -- [2]
			1617.5, -- [3]
			515, -- [4]
			["instance"] = 757,
			["parent"] = 244,
			["name"] = "Baradin Hold",
			["mapType"] = 4,
		},
		[1439] = {
			6464.58984375, -- [1]
			4310.419921875, -- [2]
			3016.669921875, -- [3]
			8222.919921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Darkshore",
			["mapType"] = 3,
		},
		[330] = {
			525, -- [1]
			350, -- [2]
			475, -- [3]
			337.5, -- [4]
			["instance"] = 565,
			["parent"] = 105,
			["name"] = "Gruul's Lair",
			["mapType"] = 4,
		},
		[1440] = {
			5766.669921875, -- [1]
			3843.7529296875, -- [2]
			1700, -- [3]
			4672.919921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Ashenvale",
			["mapType"] = 3,
		},
		[1441] = {
			4399.9970703125, -- [1]
			2933.330078125, -- [2]
			-433.3330078125, -- [3]
			-3966.669921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Thousand Needles",
			["mapType"] = 3,
		},


		[1442] = {
			5900.000122070313, -- [1]
			3933.3369140625, -- [2]
			3902.080078125, -- [3]
			3404.169921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Stonetalon Mountains",
			["mapType"] = 3,
		},

		[267] = {
			676.2380065917969, -- [1]
			450.8254089355469, -- [2]
			334.4580078125, -- [3]
			349.9862060546875, -- [4]
			["instance"] = 554,
			["parent"] = 109,
			["name"] = "The Mechanar",
			["mapType"] = 4,
		},
		[283] = {
			1019.507934570313, -- [1]
			679.6723022460938, -- [2]
			1459.43994140625, -- [3]
			686.3389892578125, -- [4]
			["instance"] = 645,
			["parent"] = 36,
			["name"] = "Blackrock Caverns",
			["mapType"] = 4,
		},
		[1443] = {
			4495.830078125, -- [1]
			2997.9130859375, -- [2]
			4233.330078125, -- [3]
			452.0830078125, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Desolace",
			["mapType"] = 3,
		},
		[331] = {
			556, -- [1]
			370.6666870117188, -- [2]
			385.5, -- [3]
			255.3333435058594, -- [4]
			["instance"] = 544,
			["parent"] = 100,
			["name"] = "Magtheridon's Lair",
			["mapType"] = 4,
		},
		[947] = {
			-13364.826171875, -- [1]
			24751.291015625, -- [2]
			-1386.69921875, -- [3]
			19216.29296875, -- [4]
			["instance"] = 530,
			["parent"] = 946,
			["name"] = "Azeroth",
			["mapType"] = 1,
		},
		[1954] = {
			1211.458984375, -- [1]
			806.76953125, -- [2]
			-4000.75, -- [3]
			7753.708984375, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Silvermoon City",
			["mapType"] = 3,
		},
		[198] = {
			4245.8330078125, -- [1]
			2831.25, -- [2]
			-929.1669921875, -- [3]
			6195.830078125, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Mount Hyjal",
			["mapType"] = 3,
		},
		[206] = {
			1214.583251953125, -- [1]
			810.41650390625, -- [2]
			931.2499389648438, -- [3]
			2266.66650390625, -- [4]
			["instance"] = 726,
			["parent"] = 241,
			["name"] = "Twin Peaks",
			["mapType"] = 6,
		},

		[230] = {
			562.5, -- [1]
			375, -- [2]
			-2748.75, -- [3]
			-5955, -- [4]
			["instance"] = 0,
			["parent"] = 15,
			["name"] = "Uldaman",
			["mapType"] = 5,
		},
		[246] = {
			1063.747467041016, -- [1]
			709.1649780273438, -- [2]
			631.1082153320312, -- [3]
			617.4169921875, -- [4]
			["instance"] = 540,
			["parent"] = 100,
			["name"] = "The Shattered Halls",
			["mapType"] = 4,
		},
		[1957] = {
			3327.0830078125, -- [1]
			2218.748046875, -- [2]
			-2902.0830078125, -- [3]
			11168.7490234375, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Isle of Quel'Danas",
			["mapType"] = 3,
		},
		[332] = {
			1575.003021240234, -- [1]
			1050.002014160156, -- [2]
			212.5024871826172, -- [3]
			650.0020141601562, -- [4]
			["instance"] = 548,
			["parent"] = 102,
			["name"] = "Serpentshrine Cavern",
			["mapType"] = 4,
		},
		[348] = {
			530.3340148925781, -- [1]
			353.5559692382813, -- [2]
			226.1080017089844, -- [3]
			325.7601318359375, -- [4]
			["instance"] = 585,
			["parent"] = 122,
			["name"] = "Magisters' Terrace",
			["mapType"] = 4,
		},
		[1448] = {
			6062.500244140625, -- [1]
			4041.669921875, -- [2]
			1797.920043945313, -- [3]
			7237.5, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Felwood",
			["mapType"] = 3,
		},
		[1449] = {
			3700.0029296875, -- [1]
			2466.66015625, -- [2]
			533.3330078125, -- [3]
			-5966.669921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Un'Goro Crater",
			["mapType"] = 3,
		},
		[1450] = {
			2308.330078125, -- [1]
			1539.58984375, -- [2]
			-1381.25, -- [3]
			8491.669921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Moonglade",
			["mapType"] = 3,
		},
		[269] = {
			689.6840209960938, -- [1]
			459.7893676757813, -- [2]
			284.5790100097656, -- [3]
			384.3650207519531, -- [4]
			["instance"] = 552,
			["parent"] = 109,
			["name"] = "The Arcatraz",
			["mapType"] = 4,
		},
		[285] = {
			849.6940002441406, -- [1]
			566.4623408317566, -- [2]
			174.1089935302734, -- [3]
			-0.9996340274810791, -- [4]
			["instance"] = 669,
			["parent"] = 36,
			["name"] = "Blackwing Descent",
			["mapType"] = 4,
		},
		[301] = {
			736.449951171875, -- [1]
			490.9599609375, -- [2]
			2058.919921875, -- [3]
			2349.639892578125, -- [4]
			["instance"] = 47,
			["parent"] = 199,
			["name"] = "Razorfen Kraul",
			["mapType"] = 4,
		},
		[317] = {
			705.7197265625, -- [1]
			470.47998046875, -- [2]
			-2911.9599609375, -- [3]
			3809.449951171875, -- [4]
			["instance"] = 329,
			["parent"] = 23,
			["name"] = "Stratholme",
			["mapType"] = 4,
		},
		[333] = {
			1268.75, -- [1]
			845.8333129882812, -- [2]
			1852.083251953125, -- [3]
			568.75, -- [4]
			["instance"] = 568,
			["parent"] = 95,
			["name"] = "Zul'Aman",
			["mapType"] = 6,
		},
		[1452] = {
			6150.0029296875, -- [1]
			4100, -- [2]
			-991.6669921875, -- [3]
			8793.75, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Winterspring",
			["mapType"] = 3,
		},
		[397] = {
			2270.833251953125, -- [1]
			1514.58349609375, -- [2]
			2660.41650390625, -- [3]
			2918.75, -- [4]
			["instance"] = 566,
			["parent"] = 109,
			["name"] = "Eye of the Storm",
			["mapType"] = 6,
		},
		[207] = {
			5100.000122070313, -- [1]
			3399.9970703125, -- [2]
			3052.080078125, -- [3]
			2795.830078125, -- [4]
			["instance"] = 646,
			["parent"] = 948,
			["name"] = "Deepholm",
			["mapType"] = 3,
		},
		[1453] = {
			1737.5009765625, -- [1]
			1158.33203125, -- [2]
			1722.9169921875, -- [3]
			-7995.833984375, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Stormwind City",
			["mapType"] = 3,
		},
		[1433] = {
			2568.749755859375, -- [1]
			1712.51953125, -- [2]
			-1479.170043945313, -- [3]
			-8514.580078125, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Redridge Mountains",
			["mapType"] = 3,
		},
		[247] = {
			2512.5, -- [1]
			1675, -- [2]
			3035.41650390625, -- [3]
			-8233.3330078125, -- [4]
			["instance"] = 509,
			["parent"] = 81,
			["name"] = "Ruins of Ahn'Qiraj",
			["mapType"] = 6,
		},
		[168] = {
			256.22900390625, -- [1]
			170.820068359375, -- [2]
			921.5759887695312, -- [3]
			1984.170043945313, -- [4]
			["instance"] = 608,
			["parent"] = 125,
			["name"] = "The Violet Hold",
			["mapType"] = 4,
		},
		[133] = {
			734.5809936523438, -- [1]
			489.7214965820313, -- [2]
			424.1749877929688, -- [3]
			515.3880004882812, -- [4]
			["instance"] = 574,
			["parent"] = 117,
			["name"] = "Utgarde Keep",
			["mapType"] = 4,
		},

		[302] = {
			619.98388671875, -- [1]
			413.32275390625, -- [2]
			1567.969970703125, -- [3]
			2030.181396484375, -- [4]
			["instance"] = 189,
			["parent"] = 18,
			["name"] = "Scarlet Monastery",
			["mapType"] = 4,
		},
		[204] = {
			4075, -- [1]
			2716.666015625, -- [2]
			8233.3330078125, -- [3]
			-4906.25, -- [4]
			["instance"] = 0,
			["parent"] = 203,
			["name"] = "Abyssal Depths",
			["mapType"] = 3,
		},
		[334] = {
			1575, -- [1]
			1050, -- [2]
			787.5, -- [3]
			950, -- [4]
			["instance"] = 550,
			["parent"] = 109,
			["name"] = "Tempest Keep",
			["mapType"] = 4,
		},
		[350] = {
			550.048828125, -- [1]
			366.69921875, -- [2]
			-1674.9755859375, -- [3]
			-10822.900390625, -- [4]
			["instance"] = 532,
			["parent"] = 42,
			["name"] = "Karazhan",
			["mapType"] = 4,
		},
		[1456] = {
			1043.749938964844, -- [1]
			695.8333740234375, -- [2]
			516.6666259765625, -- [3]
			-849.9999389648438, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Thunder Bluff",
			["mapType"] = 3,
		},

		[398] = {
			1252.0830078125, -- [1]
			833.3330078125, -- [2]
			-4650, -- [3]
			3766.66650390625, -- [4]
			["instance"] = 939,
			["parent"] = 71,
			["name"] = "Well of Eternity",
			["mapType"] = 6,
		},

		[1457] = {
			1539.58349609375, -- [1]
			1027.083984375, -- [2]
			3187.5, -- [3]
			10464.5830078125, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Darnassus",
			["mapType"] = 3,
		},
		[1947] = {
			1056.76953125, -- [1]
			704.68798828125, -- [2]
			6533.6328125, -- [3]
			6306.316650390625, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "The Exodar",
			["mapType"] = 3,
		},


		[124] = {
			3162.5, -- [1]
			2108.33349609375, -- [2]
			-4047.91650390625, -- [3]
			3087.5, -- [4]
			["instance"] = 609,
			["parent"] = 23,
			["name"] = "Plaguelands: The Scarlet Enclave",
			["mapType"] = 6,
		},
		[128] = {
			1743.749938964844, -- [1]
			1162.5, -- [2]
			787.5, -- [3]
			1883.333251953125, -- [4]
			["instance"] = 607,
			["parent"] = 115,
			["name"] = "Strand of the Ancients",
			["mapType"] = 6,
		},
		[136] = {
			548.9360046386719, -- [1]
			365.95703125, -- [2]
			-148.6230010986328, -- [3]
			552.8770141601562, -- [4]
			["instance"] = 575,
			["parent"] = 117,
			["name"] = "Utgarde Pinnacle",
			["mapType"] = 4,
		},
		[287] = {
			499.4281005859375, -- [1]
			332.94921875, -- [2]
			-844.6220092773438, -- [3]
			-7394.1201171875, -- [4]
			["instance"] = 469,
			["parent"] = 36,
			["name"] = "Blackwing Lair",
			["mapType"] = 4,
		},
		[1459] = {
			4237.499877929688, -- [1]
			2824.999877929688, -- [2]
			1781.249877929688, -- [3]
			1085.416625976563, -- [4]
			["instance"] = 30,
			["parent"] = 25,
			["name"] = "Alterac Valley",
			["mapType"] = 6,
		},
		[319] = {
			2777.544189453125, -- [1]
			1851.6953125, -- [2]
			2915.6201171875, -- [3]
			-7659.287109375, -- [4]
			["instance"] = 531,
			["parent"] = 81,
			["name"] = "Ahn'Qiraj",
			["mapType"] = 4,
		},
		[335] = {
			906.25, -- [1]
			604.169921875, -- [2]
			1206.25, -- [3]
			2012.5, -- [4]
			["instance"] = 580,
			["parent"] = 122,
			["name"] = "Sunwell Plateau",
			["mapType"] = 4,
		},
		[1430] = {
			2499.999877929688, -- [1]
			1666.66796875, -- [2]
			-833.3333129882812, -- [3]
			-9866.666015625, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Deadwind Pass",
			["mapType"] = 3,
		},

		[160] = {
			619.9422607421875, -- [1]
			413.2931518554688, -- [2]
			-307.068359375, -- [3]
			-182.56640625, -- [4]
			["instance"] = 600,
			["parent"] = 121,
			["name"] = "Drak'Tharon Keep",
			["mapType"] = 4,
		},
		[399] = {
			3043.749877929688, -- [1]
			2029.166015625, -- [2]
			1791.666625976563, -- [3]
			5327.0830078125, -- [4]
			["instance"] = 940,
			["parent"] = 71,
			["name"] = "Hour of Twilight",
			["mapType"] = 4,
		},
		[205] = {
			4850, -- [1]
			3233.3330078125, -- [2]
			6681.24951171875, -- [3]
			-4756.25, -- [4]
			["instance"] = 0,
			["parent"] = 203,
			["name"] = "Shimmering Expanse",
			["mapType"] = 3,
		},
		[1461] = {
			1756.249877929688, -- [1]
			1170.833251953125, -- [2]
			1858.333251953125, -- [3]
			1508.333251953125, -- [4]
			["instance"] = 529,
			["parent"] = 14,
			["name"] = "Arathi Basin",
			["mapType"] = 6,
		},
		[224] = {
			6552.080078125, -- [1]
			4368.69921875, -- [2]
			2977.080078125, -- [3]
			-10964.599609375, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Stranglethorn Vale",
			["mapType"] = 3,
		},
		[232] = {
			1264.800079345703, -- [1]
			843.1990966796875, -- [2]
			-130.7599945068359, -- [3]
			1303.06005859375, -- [4]
			["instance"] = 409,
			["parent"] = 36,
			["name"] = "Molten Core",
			["mapType"] = 4,
		},
		[1447] = {
			5514.580078125, -- [1]
			3677.080078125, -- [2]
			-3372.919921875, -- [3]
			5381.25, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Azshara",
			["mapType"] = 3,
		},
		[248] = {
			483.1179962158203, -- [1]
			322.0787887573242, -- [2]
			111.3830032348633, -- [3]
			98.24579620361328, -- [4]
			["instance"] = 249,
			["parent"] = 70,
			["name"] = "Onyxia's Lair",
			["mapType"] = 4,
		},
		[256] = {
			742.5404357910156, -- [1]
			495.0269927978516, -- [2]
			327.5572204589844, -- [3]
			354.9509887695313, -- [4]
			["instance"] = 558,
			["parent"] = 108,
			["name"] = "Auchenai Crypts",
			["mapType"] = 4,
		},
		[272] = {
			823.28515625, -- [1]
			548.8568115234375, -- [2]
			276.93408203125, -- [3]
			90.07080078125, -- [4]
			["instance"] = 557,
			["parent"] = 108,
			["name"] = "Mana-Tombs",
			["mapType"] = 4,
		},
		[263] = {
			876.7639770507812, -- [1]
			584.5094299316406, -- [2]
			160.0220031738281, -- [3]
			158.5672149658203, -- [4]
			["instance"] = 545,
			["parent"] = 102,
			["name"] = "The Steamvault",
			["mapType"] = 4,
		},
		[199] = {
			7412.5, -- [1]
			4941.667022705078, -- [2]
			1356.25, -- [3]
			204.1670074462891, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Southern Barrens",
			["mapType"] = 3,
		},
		[367] = {
			1587.499938964844, -- [1]
			1058.333282470703, -- [2]
			718.75, -- [3]
			424.9999694824219, -- [4]
			["instance"] = 720,
			["parent"] = 198,
			["name"] = "Firelands",
			["mapType"] = 4,
		},
		[1432] = {
			2758.330078125, -- [1]
			1839.580078125, -- [2]
			-1993.75, -- [3]
			-4487.5, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Loch Modan",
			["mapType"] = 3,
		},
		[1458] = {
			959.375, -- [1]
			640.10400390625, -- [2]
			873.192626953125, -- [3]
			1877.9453125, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Undercity",
			["mapType"] = 3,
		},
		[242] = {
			1407.060974121094, -- [1]
			938.040771484375, -- [2]
			522.3369750976562, -- [3]
			1186.680419921875, -- [4]
			["instance"] = 230,
			["parent"] = 32,
			["name"] = "Blackrock Depths",
			["mapType"] = 4,
		},
		[401] = {
			3295.833129882813, -- [1]
			2197.91650390625, -- [2]
			2260.41650390625, -- [3]
			4697.91650390625, -- [4]
			["instance"] = 938,
			["parent"] = 71,
			["name"] = "End Time",
			["mapType"] = 4,
		},
		[142] = {
			2600, -- [1]
			1733.333251953125, -- [2]
			2337.5, -- [3]
			1956.249877929688, -- [4]
			["instance"] = 578,
			["parent"] = 114,
			["name"] = "The Oculus",
			["mapType"] = 6,
		},
		[1445] = {
			5250, -- [1]
			3500.000244140625, -- [2]
			-975, -- [3]
			-2033.329956054688, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Dustwallow Marsh",
			["mapType"] = 3,
		},
		[339] = {
			783.3333740234375, -- [1]
			522.9166259765625, -- [2]
			1150, -- [3]
			949.9999389648438, -- [4]
			["instance"] = 564,
			["parent"] = 104,
			["name"] = "Black Temple",
			["mapType"] = 4,
		},
		[300] = {
			709.0489501953125, -- [1]
			472.69970703125, -- [2]
			1279.93994140625, -- [3]
			2682.550048828125, -- [4]
			["instance"] = 129,
			["parent"] = 64,
			["name"] = "Razorfen Downs",
			["mapType"] = 4,
		},
		[275] = {
			1302.083251953125, -- [1]
			868.75, -- [2]
			1745.833251953125, -- [3]
			1604.166625976563, -- [4]
			["instance"] = 761,
			["parent"] = 179,
			["name"] = "The Battle for Gilneas",
			["mapType"] = 6,
		},
		[1436] = {
			3500.0029296875, -- [1]
			2333.30078125, -- [2]
			3016.669921875, -- [3]
			-9400, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Westfall",
			["mapType"] = 3,
		},

		[129] = {
			1101.280975341797, -- [1]
			734.1875, -- [2]
			393.2120056152344, -- [3]
			798.2630004882812, -- [4]
			["instance"] = 576,
			["parent"] = 114,
			["name"] = "The Nexus",
			["mapType"] = 4,
		},
		[273] = {
			1087.5, -- [1]
			725, -- [2]
			7649.99951171875, -- [3]
			-1500, -- [4]
			["instance"] = 269,
			["parent"] = 75,
			["name"] = "The Black Morass",
			["mapType"] = 6,
		},
		[294] = {
			1078.335037231445, -- [1]
			718.8899536132812, -- [2]
			-106.4355087280273, -- [3]
			-180.9570007324219, -- [4]
			["instance"] = 671,
			["parent"] = 241,
			["name"] = "The Bastion of Twilight",
			["mapType"] = 4,
		},
		[153] = {
			1143.75, -- [1]
			762.5, -- [2]
			1310.416625976563, -- [3]
			2122.91650390625, -- [4]
			["instance"] = 604,
			["parent"] = 121,
			["name"] = "Gundrak",
			["mapType"] = 6,
		},
		[179] = {
			3145.830078125, -- [1]
			2097.9169921875, -- [2]
			3439.580078125, -- [3]
			-533.3330078125, -- [4]
			["instance"] = 654,
			["parent"] = 13,
			["name"] = "Gilneas",
			["mapType"] = 6,
		},
		[169] = {
			2650, -- [1]
			1766.666625976563, -- [2]
			525, -- [3]
			1708.333251953125, -- [4]
			["instance"] = 628,
			["parent"] = 118,
			["name"] = "Isle of Conquest",
			["mapType"] = 6,
		},
		[1451] = {
			4058.330078125, -- [1]
			2706.25, -- [2]
			2983.330078125, -- [3]
			-5872.919921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Silithus",
			["mapType"] = 3,
		},
		[185] = {
			879.02001953125, -- [1]
			586.01953125, -- [2]
			2349.010009765625, -- [3]
			5713.009765625, -- [4]
			["instance"] = 668,
			["parent"] = 118,
			["name"] = "Halls of Reflection",
			["mapType"] = 4,
		},
		[174] = {
			4514.580078125, -- [1]
			3010.4169921875, -- [2]
			4383.330078125, -- [3]
			2881.25, -- [4]
			["instance"] = 648,
			["parent"] = 948,
			["name"] = "The Lost Isles",
			["mapType"] = 3,
		},
		[201] = {
			2802.0830078125, -- [1]
			1868.75048828125, -- [2]
			5070.8330078125, -- [3]
			-4018.749755859375, -- [4]
			["instance"] = 0,
			["parent"] = 203,
			["name"] = "Kelp'thar Forest",
			["mapType"] = 3,
		},
		[1444] = {
			6950, -- [1]
			4633.330078125, -- [2]
			5441.669921875, -- [3]
			-2366.669921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Feralas",
			["mapType"] = 3,
		},
		[217] = {
			3145.830078125, -- [1]
			2097.9169921875, -- [2]
			3439.580078125, -- [3]
			-533.3330078125, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Ruins of Gilneas",
			["mapType"] = 3,
		},
		[225] = {
			378.1529998779297, -- [1]
			252.1024932861328, -- [2]
			189.8220062255859, -- [3]
			220.6329956054688, -- [4]
			["instance"] = 34,
			["parent"] = 84,
			["name"] = "The Stockade",
			["mapType"] = 4,
		},
		[233] = {
			1877.083251953125, -- [1]
			1252.083984375, -- [2]
			-693.75, -- [3]
			-11308.3330078125, -- [4]
			["instance"] = 309,
			["parent"] = 50,
			["name"] = "Zul'Gurub",
			["mapType"] = 6,
		},
		[241] = {
			5270.830078125, -- [1]
			3514.580078125, -- [2]
			-2437.5, -- [3]
			-2156.25, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Twilight Highlands",
			["mapType"] = 3,
		},
		[249] = {
			6193.75, -- [1]
			4129.12890625, -- [2]
			2441.669921875, -- [3]
			-8029.169921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Uldum",
			["mapType"] = 3,
		},
		[258] = {
			703.4954833984375, -- [1]
			468.9969940185547, -- [2]
			515.7972412109375, -- [3]
			173.6540069580078, -- [4]
			["instance"] = 556,
			["parent"] = 108,
			["name"] = "Sethekk Halls",
			["mapType"] = 4,
		},
		[274] = {
			2331.25, -- [1]
			1554.16650390625, -- [2]
			1854.166625976563, -- [3]
			3127.083251953125, -- [4]
			["instance"] = 560,
			["parent"] = 75,
			["name"] = "Old Hillsbrad Foothills",
			["mapType"] = 6,
		},
		[140] = {
			920.196044921875, -- [1]
			613.466064453125, -- [2]
			1126.52001953125, -- [3]
			1375.910034179688, -- [4]
			["instance"] = 599,
			["parent"] = 120,
			["name"] = "Halls of Stone",
			["mapType"] = 4,
		},
		[1435] = {
			2508.330078125, -- [1]
			1672.87890625, -- [2]
			-2081.25, -- [3]
			-9535.419921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Swamp of Sorrows",
			["mapType"] = 3,
		},
		[322] = {
			998.171875, -- [1]
			665.447998046875, -- [2]
			1307.069946289063, -- [3]
			-14, -- [4]
			["instance"] = 643,
			["parent"] = 204,
			["name"] = "Throne of the Tides",
			["mapType"] = 4,
		},
		[338] = {
			1189.583312988281, -- [1]
			793.75, -- [2]
			933.3333129882812, -- [3]
			1702.083251953125, -- [4]
			["instance"] = 861,
			["parent"] = 198,
			["name"] = "Molten Front",
			["mapType"] = 6,
		},
		[1446] = {
			7212.5, -- [1]
			4808.3701171875, -- [2]
			-62.5, -- [3]
			-5770.830078125, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Tanaris",
			["mapType"] = 3,
		},
		[200] = {
			752.0833740234375, -- [1]
			502.0830078125, -- [2]
			902.0833129882812, -- [3]
			3429.16650390625, -- [4]
			["instance"] = 724,
			["parent"] = 115,
			["name"] = "The Ruby Sanctum",
			["mapType"] = 6,
		},
		[184] = {
			1533.333312988281, -- [1]
			1022.916625976563, -- [2]
			839.5833129882812, -- [3]
			1256.25, -- [4]
			["instance"] = 658,
			["parent"] = 118,
			["name"] = "Pit of Saron",
			["mapType"] = 6,
		},
		[1460] = {
			1145.833251953125, -- [1]
			764.583251953125, -- [2]
			2041.666625976563, -- [3]
			1627.083251953125, -- [4]
			["instance"] = 489,
			["parent"] = 10,
			["name"] = "Warsong Gulch",
			["mapType"] = 6,
		},

		[125] = {
			823.249755859375, -- [1]
			548.8359375, -- [2]
			-1614.670043945313, -- [3]
			-10847.0390625, -- [4]
			["instance"] = 0,
			["parent"] = 42,
			["name"] = "Dalaran",
			["mapType"] = 5,
		},
		[130] = {
			1825, -- [1]
			1216.66650390625, -- [2]
			2152.083251953125, -- [3]
			2297.91650390625, -- [4]
			["instance"] = 595,
			["parent"] = 71,
			["name"] = "The Culling of Stratholme",
			["mapType"] = 4,
		},
		[138] = {
			566.2350158691406, -- [1]
			377.489990234375, -- [2]
			283.6860046386719, -- [3]
			1534.5400390625, -- [4]
			["instance"] = 602,
			["parent"] = 120,
			["name"] = "Halls of Lightning",
			["mapType"] = 4,
		},
		[1411] = {
			5287.5, -- [1]
			3525, -- [2]
			-1962.5, -- [3]
			1808.329956054688, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Durotar",
			["mapType"] = 3,
		},

		[162] = {
			1093.830078125, -- [1]
			729.2197265625, -- [2]
			-2640.27001953125, -- [3]
			3615.830078125, -- [4]
			["instance"] = 533,
			["parent"] = 115,
			["name"] = "Naxxramas",
			["mapType"] = 4,
		},

		[1412] = {
			5450, -- [1]
			3633.330078125, -- [2]
			2204.169921875, -- [3]
			-168.75, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Mulgore",
			["mapType"] = 3,
		},
		[186] = {
			1355.47021484375, -- [1]
			903.6470336914062, -- [2]
			2739.800048828125, -- [3]
			138.8070068359375, -- [4]
			["instance"] = 631,
			["parent"] = 118,
			["name"] = "Icecrown Citadel",
			["mapType"] = 4,
		},
		[194] = {
			1352.0869140625, -- [1]
			900, -- [2]
			2129.169921875, -- [3]
			-7731.25, -- [4]
			["instance"] = 648,
			["parent"] = 948,
			["name"] = "Kezan",
			["mapType"] = 3,
		},
		[202] = {
			889.583251953125, -- [1]
			593.75, -- [2]
			1933.333251953125, -- [3]
			-1306.25, -- [4]
			["instance"] = 654,
			["parent"] = 179,
			["name"] = "Gilneas City",
			["mapType"] = 3,
		},
		[210] = {
			3945.830078125, -- [1]
			2631.201171875, -- [2]
			2108.330078125, -- [3]
			-12516.7001953125, -- [4]
			["instance"] = 0,
			["parent"] = 224,
			["name"] = "The Cape of Stranglethorn",
			["mapType"] = 3,
		},
		[218] = {
			889.579833984375, -- [1]
			593.75, -- [2]
			1933.329956054688, -- [3]
			-1306.25, -- [4]
			["instance"] = 0,
			["parent"] = 217,
			["name"] = "Ruins of Gilneas City",
			["mapType"] = 6,
		},
		[226] = {
			769.6679992675781, -- [1]
			513.1119995117188, -- [2]
			491.89599609375, -- [3]
			-180.8880004882813, -- [4]
			["instance"] = 90,
			["parent"] = 27,
			["name"] = "Gnomeregan",
			["mapType"] = 4,
		},
		[234] = {
			0, -- [1]
			0, -- [2]
			0, -- [3]
			0, -- [4]
			["instance"] = 429,
			["parent"] = 69,
			["name"] = "Dire Maul",
			["mapType"] = 6,
		},
		[1414] = {
			36799.798828125, -- [1]
			24533.2001953125, -- [2]
			17066.599609375, -- [3]
			12309.236328125, -- [4]
			["instance"] = 1,
			["parent"] = 947,
			["name"] = "Kalimdor",
			["mapType"] = 2,
		},
		[250] = {
			886.839038848877, -- [1]
			591.2260131835938, -- [2]
			10.58699989318848, -- [3]
			304.3980102539063, -- [4]
			["instance"] = 229,
			["parent"] = 36,
			["name"] = "Blackrock Spire",
			["mapType"] = 4,
		},
		[260] = {
			841.5223693847656, -- [1]
			561.0148849487305, -- [2]
			185.0791778564453, -- [3]
			62.79690170288086, -- [4]
			["instance"] = 555,
			["parent"] = 108,
			["name"] = "Shadow Labyrinth",
			["mapType"] = 4,
		},
		[276] = {
			1550, -- [1]
			1033.329956054688, -- [2]
			1556.25, -- [3]
			1370.829956054688, -- [4]
			["instance"] = 730,
			["parent"] = 948,
			["name"] = "The Maelstrom",
			["mapType"] = 3,
		},
		[1415] = {
			40741.181640625, -- [1]
			27149.6875, -- [2]
			18171.970703125, -- [3]
			11176.34375, -- [4]
			["instance"] = 0,
			["parent"] = 947,
			["name"] = "Eastern Kingdoms",
			["mapType"] = 2,
		},
		[183] = {
			1448.099609375, -- [1]
			965.400390625, -- [2]
			3134.1298828125, -- [3]
			5779.93017578125, -- [4]
			["instance"] = 632,
			["parent"] = 118,
			["name"] = "The Forge of Souls",
			["mapType"] = 4,
		},
		[324] = {
			1317.12890625, -- [1]
			878.0869140625, -- [2]
			1701.25, -- [3]
			1675.569946289063, -- [4]
			["instance"] = 725,
			["parent"] = 207,
			["name"] = "The Stonecore",
			["mapType"] = 4,
		},
		[1950] = {
			3262.5, -- [1]
			2174.9970703125, -- [2]
			7525, -- [3]
			9157.6669921875, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Bloodmyst Isle",
			["mapType"] = 3,
		},
		[946] = {
			0, -- [1]
			0, -- [2]
			0, -- [3]
			0, -- [4]
			["instance"] = -1,
			["name"] = "Cosmic",
			["mapType"] = 0,
		},
		[347] = {
			694.56005859375, -- [1]
			463.0400390625, -- [2]
			1989.280029296875, -- [3]
			-1029.43994140625, -- [4]
			["instance"] = 543,
			["parent"] = 100,
			["name"] = "Hellfire Ramparts",
			["mapType"] = 4,
		},
		[1419] = {
			3662.5, -- [1]
			2441.701171875, -- [2]
			-1193.75, -- [3]
			-10583.2998046875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Blasted Lands",
			["mapType"] = 3,
		},
		[1437] = {
			4135.4169921875, -- [1]
			2756.25, -- [2]
			-389.5830078125, -- [3]
			-2147.919921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Wetlands",
			["mapType"] = 3,
		},
		[1417] = {
			3477.090087890625, -- [1]
			2318.752899169922, -- [2]
			-1127.079956054688, -- [3]
			-141.6670074462891, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Arathi Highlands",
			["mapType"] = 3,
		},
		[147] = {
			3287.499877929688, -- [1]
			2191.666625976563, -- [2]
			1583.333251953125, -- [3]
			1168.75, -- [4]
			["instance"] = 603,
			["parent"] = 120,
			["name"] = "Ulduar",
			["mapType"] = 4,
		},
		[1455] = {
			790.6251220703125, -- [1]
			527.6044921875, -- [2]
			-713.5913696289062, -- [3]
			-4569.2412109375, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Ironforge",
			["mapType"] = 3,
		},
		[291] = {
			450, -- [1]
			300, -- [2]
			1792.5, -- [3]
			-11055, -- [4]
			["instance"] = 0,
			["parent"] = 52,
			["name"] = "The Deadmines",
			["mapType"] = 5,
		},
		[1418] = {
			3070.840087890625, -- [1]
			2045.830078125, -- [2]
			-1902.079956054688, -- [3]
			-5854.169921875, -- [4]
			["instance"] = 0,
			["parent"] = 13,
			["name"] = "Badlands",
			["mapType"] = 3,
		},
		[1438] = {
			5875, -- [1]
			3916.650390625, -- [2]
			4235.419921875, -- [3]
			11847.900390625, -- [4]
			["instance"] = 1,
			["parent"] = 12,
			["name"] = "Teldrassil",
			["mapType"] = 3,
		}
    }
    local retailData = {
		{
			5287.5, -- [1]
			3525, -- [2]
			-1962.5, -- [3]
			1808.329956054688, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Durotar",
			["instance"] = 1,
		}, -- [1]
		{
			266, -- [1]
			177.3333377838135, -- [2]
			-4166.5, -- [3]
			5.500332832336426, -- [4]
			["parent"] = 1,
			["mapType"] = 5,
			["name"] = "Burning Blade Coven",
			["instance"] = 1,
		}, -- [2]
		{
			125.0009765625, -- [1]
			83.33401489257812, -- [2]
			-5052.49951171875, -- [3]
			-203.3329925537109, -- [4]
			["parent"] = 1,
			["mapType"] = 5,
			["name"] = "Tiragarde Keep",
			["instance"] = 1,
		}, -- [3]
		{
			125.0009765625, -- [1]
			83.33401489257812, -- [2]
			-5052.49951171875, -- [3]
			-203.3329925537109, -- [4]
			["parent"] = 1,
			["mapType"] = 5,
			["name"] = "Tiragarde Keep",
			["instance"] = 1,
		}, -- [4]
		{
			270, -- [1]
			180, -- [2]
			-4629, -- [3]
			1580.5, -- [4]
			["parent"] = 1,
			["mapType"] = 5,
			["name"] = "Skull Rock",
			["instance"] = 1,
		}, -- [5]
		{
			258, -- [1]
			172, -- [2]
			-4622.5, -- [3]
			971.25, -- [4]
			["parent"] = 1,
			["mapType"] = 5,
			["name"] = "Dustwind Cave",
			["instance"] = 1,
		}, -- [6]
		{
			5450, -- [1]
			3633.330078125, -- [2]
			2204.169921875, -- [3]
			-168.75, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Mulgore",
			["instance"] = 1,
		}, -- [7]
		{
			350.010009765625, -- [1]
			233.33984375, -- [2]
			580.0050048828125, -- [3]
			-2263.330078125, -- [4]
			["parent"] = 7,
			["mapType"] = 5,
			["name"] = "Palemane Rock",
			["instance"] = 1,
		}, -- [8]
		{
			741, -- [1]
			494, -- [2]
			-818, -- [3]
			-1436, -- [4]
			["parent"] = 7,
			["mapType"] = 5,
			["name"] = "The Venture Co. Mine",
			["instance"] = 1,
		}, -- [9]
		{
			5745.832977294922, -- [1]
			3831.25, -- [2]
			202.0829925537109, -- [3]
			1810.420043945313, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Northern Barrens",
			["instance"] = 1,
		}, -- [10]
		{
			570, -- [1]
			380, -- [2]
			-1902.5, -- [3]
			-490, -- [4]
			["parent"] = 10,
			["mapType"] = 5,
			["name"] = "Wailing Caverns",
			["instance"] = 1,
		}, -- [11]
		{
			36799.798828125, -- [1]
			24533.2001953125, -- [2]
			17066.599609375, -- [3]
			12309.236328125, -- [4]
			["parent"] = 947,
			["mapType"] = 2,
			["name"] = "Kalimdor",
			["instance"] = 1,
		}, -- [12]
		{
			40741.181640625, -- [1]
			27149.6875, -- [2]
			18171.970703125, -- [3]
			11176.34375, -- [4]
			["parent"] = 947,
			["mapType"] = 2,
			["name"] = "Eastern Kingdoms",
			["instance"] = 0,
		}, -- [13]
		{
			3477.090087890625, -- [1]
			2318.752899169922, -- [2]
			-1127.079956054688, -- [3]
			-141.6670074462891, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Arathi Highlands",
			["instance"] = 0,
		}, -- [14]
		{
			3070.840087890625, -- [1]
			2045.830078125, -- [2]
			-1902.079956054688, -- [3]
			-5854.169921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Badlands",
			["instance"] = 0,
		}, -- [15]
		{
			562.5, -- [1]
			375, -- [2]
			-2748.75, -- [3]
			-5955, -- [4]
			["parent"] = 15,
			["mapType"] = 5,
			["name"] = "Uldaman",
			["instance"] = 0,
		}, -- [16]
		{
			3662.5, -- [1]
			2441.701171875, -- [2]
			-1193.75, -- [3]
			-10583.2998046875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Blasted Lands",
			["instance"] = 0,
		}, -- [17]
		{
			4518.750122070313, -- [1]
			3012.5, -- [2]
			3033.330078125, -- [3]
			3837.5, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Tirisfal Glades",
			["instance"] = 0,
		}, -- [18]
		{
			204.990234375, -- [1]
			136.66015625, -- [2]
			-660.0048828125, -- [3]
			2948.830078125, -- [4]
			["parent"] = 18,
			["mapType"] = 5,
			["name"] = "Scarlet Monastery Entrance",
			["instance"] = 0,
		}, -- [19]
		{
			648.990234375, -- [1]
			432.66015625, -- [2]
			2579.5, -- [3]
			2200.580078125, -- [4]
			["parent"] = 18,
			["mapType"] = 5,
			["name"] = "Keeper's Rest",
			["instance"] = 0,
		}, -- [20]
		{
			4200, -- [1]
			2800, -- [2]
			3450, -- [3]
			1666.670043945313, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Silverpine Forest",
			["instance"] = 0,
		}, -- [21]
		{
			4299.9970703125, -- [1]
			2866.669921875, -- [2]
			416.6669921875, -- [3]
			3366.669921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Western Plaguelands",
			["instance"] = 0,
		}, -- [22]
		{
			4031.25, -- [1]
			2687.5, -- [2]
			-2287.5, -- [3]
			3704.169921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Eastern Plaguelands",
			["instance"] = 0,
		}, -- [23]
		{
			442.5, -- [1]
			295, -- [2]
			-5153.75, -- [3]
			2565, -- [4]
			["parent"] = 23,
			["mapType"] = 5,
			["name"] = "Light's Hope Chapel",
			["instance"] = 0,
		}, -- [24]
		{
			4862.5, -- [1]
			3241.670043945313, -- [2]
			1850, -- [3]
			1481.25, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Hillsbrad Foothills",
			["instance"] = 0,
		}, -- [25]
		{
			3850, -- [1]
			2566.670043945313, -- [2]
			-1575, -- [3]
			1466.670043945313, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "The Hinterlands",
			["instance"] = 0,
		}, -- [26]
		{
			4897.919921875, -- [1]
			3264.580078125, -- [2]
			2137.5, -- [3]
			-3941.669921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Dun Morogh",
			["instance"] = 0,
		}, -- [27]
		{
			330, -- [1]
			220, -- [2]
			245, -- [3]
			-6020, -- [4]
			["parent"] = 27,
			["mapType"] = 5,
			["name"] = "Coldridge Pass",
			["instance"] = 0,
		}, -- [28]
		{
			505.5, -- [1]
			337, -- [2]
			32.75, -- [3]
			-5313, -- [4]
			["parent"] = 27,
			["mapType"] = 5,
			["name"] = "The Grizzled Den",
			["instance"] = 0,
		}, -- [29]
		{
			570, -- [1]
			380, -- [2]
			1070, -- [3]
			-4862.5, -- [4]
			["parent"] = 27,
			["mapType"] = 5,
			["name"] = "New Tinkertown",
			["instance"] = 0,
		}, -- [30]
		{
			374.009765625, -- [1]
			249.33984375, -- [2]
			-1542.9951171875, -- [3]
			-5486.830078125, -- [4]
			["parent"] = 27,
			["mapType"] = 5,
			["name"] = "Gol'Bolar Quarry",
			["instance"] = 0,
		}, -- [31]
		{
			2231.2529296875, -- [1]
			1487.5, -- [2]
			-322.9169921875, -- [3]
			-6100, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Searing Gorge",
			["instance"] = 0,
		}, -- [32]
		{
			712.5, -- [1]
			475, -- [2]
			-761.25, -- [3]
			-7325, -- [4]
			["parent"] = 36,
			["mapType"] = 5,
			["name"] = "Blackrock Mountain",
			["instance"] = 0,
		}, -- [33]
		{
			255, -- [1]
			170, -- [2]
			-1145, -- [3]
			-7480, -- [4]
			["parent"] = 36,
			["mapType"] = 5,
			["name"] = "Blackrock Mountain",
			["instance"] = 0,
		}, -- [34]
		{
			760.0240478515625, -- [1]
			506.6826171875, -- [2]
			-627.4860229492188, -- [3]
			-7086.65869140625, -- [4]
			["parent"] = 32,
			["mapType"] = 5,
			["name"] = "Blackrock Mountain",
			["instance"] = 0,
		}, -- [35]
		{
			3152.0869140625, -- [1]
			2100, -- [2]
			-464.5830078125, -- [3]
			-6985.419921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Burning Steppes",
			["instance"] = 0,
		}, -- [36]
		{
			3470.840087890625, -- [1]
			2314.62109375, -- [2]
			1535.420043945313, -- [3]
			-7939.580078125, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Elwynn Forest",
			["instance"] = 0,
		}, -- [37]
		{
			240, -- [1]
			160, -- [2]
			281.75, -- [3]
			-9700, -- [4]
			["parent"] = 37,
			["mapType"] = 5,
			["name"] = "Fargodeep Mine",
			["instance"] = 0,
		}, -- [38]
		{
			255, -- [1]
			170, -- [2]
			289.25, -- [3]
			-9710, -- [4]
			["parent"] = 37,
			["mapType"] = 5,
			["name"] = "Fargodeep Mine",
			["instance"] = 0,
		}, -- [39]
		{
			323.25, -- [1]
			215.5, -- [2]
			-445.875, -- [3]
			-8985, -- [4]
			["parent"] = 37,
			["mapType"] = 5,
			["name"] = "Jasperlode Mine",
			["instance"] = 0,
		}, -- [40]
		{
			823.249755859375, -- [1]
			548.8359375, -- [2]
			-1614.670043945313, -- [3]
			-10847.0390625, -- [4]
			["parent"] = 42,
			["mapType"] = 5,
			["name"] = "Dalaran",
			["instance"] = 0,
		}, -- [41]
		{
			2499.999877929688, -- [1]
			1666.66796875, -- [2]
			-833.3333129882812, -- [3]
			-9866.666015625, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Deadwind Pass",
			["instance"] = 0,
		}, -- [42]
		{
			605.548828125, -- [1]
			403.69921875, -- [2]
			-1845.2255859375, -- [3]
			-11037.900390625, -- [4]
			["parent"] = 42,
			["mapType"] = 5,
			["name"] = "The Master's Cellar",
			["instance"] = 0,
		}, -- [43]
		{
			337.5, -- [1]
			225, -- [2]
			-1758.75, -- [3]
			-10990, -- [4]
			["parent"] = 42,
			["mapType"] = 5,
			["name"] = "The Master's Cellar",
			["instance"] = 0,
		}, -- [44]
		{
			510, -- [1]
			340, -- [2]
			-1645, -- [3]
			-10885, -- [4]
			["parent"] = 42,
			["mapType"] = 5,
			["name"] = "The Master's Cellar",
			["instance"] = 0,
		}, -- [45]
		{
			337.5, -- [1]
			225, -- [2]
			-1731.25, -- [3]
			-10810, -- [4]
			["parent"] = 42,
			["mapType"] = 5,
			["name"] = "Karazhan Catacombs",
			["instance"] = 0,
		}, -- [46]
		{
			2700.003051757813, -- [1]
			1800.03125, -- [2]
			833.3330078125, -- [3]
			-9716.669921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Duskwood",
			["instance"] = 0,
		}, -- [47]
		{
			2758.330078125, -- [1]
			1839.580078125, -- [2]
			-1993.75, -- [3]
			-4487.5, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Loch Modan",
			["instance"] = 0,
		}, -- [48]
		{
			2568.749755859375, -- [1]
			1712.51953125, -- [2]
			-1479.170043945313, -- [3]
			-8514.580078125, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Redridge Mountains",
			["instance"] = 0,
		}, -- [49]
		{
			4100, -- [1]
			2733.298828125, -- [2]
			1743.75, -- [3]
			-11016.7001953125, -- [4]
			["parent"] = 224,
			["mapType"] = 3,
			["name"] = "Northern Stranglethorn",
			["instance"] = 0,
		}, -- [50]
		{
			2508.330078125, -- [1]
			1672.87890625, -- [2]
			-2081.25, -- [3]
			-9535.419921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Swamp of Sorrows",
			["instance"] = 0,
		}, -- [51]
		{
			3500.0029296875, -- [1]
			2333.30078125, -- [2]
			3016.669921875, -- [3]
			-9400, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Westfall",
			["instance"] = 0,
		}, -- [52]
		{
			262.5, -- [1]
			175, -- [2]
			2096.25, -- [3]
			-10430, -- [4]
			["parent"] = 52,
			["mapType"] = 5,
			["name"] = "Gold Coast Quarry",
			["instance"] = 0,
		}, -- [53]
		{
			277, -- [1]
			184.666015625, -- [2]
			1570.5, -- [3]
			-9798.6669921875, -- [4]
			["parent"] = 52,
			["mapType"] = 5,
			["name"] = "Jangolode Mine",
			["instance"] = 0,
		}, -- [54]
		{
			450, -- [1]
			300, -- [2]
			1792.5, -- [3]
			-11055, -- [4]
			["parent"] = 52,
			["mapType"] = 5,
			["name"] = "The Deadmines",
			["instance"] = 0,
		}, -- [55]
		{
			4135.4169921875, -- [1]
			2756.25, -- [2]
			-389.5830078125, -- [3]
			-2147.919921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Wetlands",
			["instance"] = 0,
		}, -- [56]
		{
			5875, -- [1]
			3916.650390625, -- [2]
			4235.419921875, -- [3]
			11847.900390625, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Teldrassil",
			["instance"] = 1,
		}, -- [57]
		{
			480, -- [1]
			320, -- [2]
			1140, -- [3]
			11035, -- [4]
			["parent"] = 57,
			["mapType"] = 5,
			["name"] = "Shadowthread Cave",
			["instance"] = 1,
		}, -- [58]
		{
			279.6005859375, -- [1]
			186.400390625, -- [2]
			1249.80029296875, -- [3]
			10211.7001953125, -- [4]
			["parent"] = 57,
			["mapType"] = 5,
			["name"] = "Fel Rock",
			["instance"] = 1,
		}, -- [59]
		{
			230.009765625, -- [1]
			153.33984375, -- [2]
			1685.0048828125, -- [3]
			9881.669921875, -- [4]
			["parent"] = 57,
			["mapType"] = 5,
			["name"] = "Ban'ethil Barrow Den",
			["instance"] = 1,
		}, -- [60]
		{
			380.009765625, -- [1]
			253.33984375, -- [2]
			1735.0048828125, -- [3]
			9931.669921875, -- [4]
			["parent"] = 57,
			["mapType"] = 5,
			["name"] = "Ban'ethil Barrow Den",
			["instance"] = 1,
		}, -- [61]
		{
			6464.58984375, -- [1]
			4310.419921875, -- [2]
			3016.669921875, -- [3]
			8222.919921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Darkshore",
			["instance"] = 1,
		}, -- [62]
		{
			5766.669921875, -- [1]
			3843.7529296875, -- [2]
			1700, -- [3]
			4672.919921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Ashenvale",
			["instance"] = 1,
		}, -- [63]
		{
			4399.9970703125, -- [1]
			2933.330078125, -- [2]
			-433.3330078125, -- [3]
			-3966.669921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Thousand Needles",
			["instance"] = 1,
		}, -- [64]
		{
			5900.000122070313, -- [1]
			3933.3369140625, -- [2]
			3902.080078125, -- [3]
			3404.169921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Stonetalon Mountains",
			["instance"] = 1,
		}, -- [65]
		{
			4495.830078125, -- [1]
			2997.9130859375, -- [2]
			4233.330078125, -- [3]
			452.0830078125, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Desolace",
			["instance"] = 1,
		}, -- [66]
		{
			600, -- [1]
			400, -- [2]
			3085.5, -- [3]
			-1250, -- [4]
			["parent"] = 66,
			["mapType"] = 5,
			["name"] = "Maraudon",
			["instance"] = 1,
		}, -- [67]
		{
			560.02001953125, -- [1]
			373.3466796875, -- [2]
			3165.010009765625, -- [3]
			-1092.32666015625, -- [4]
			["parent"] = 66,
			["mapType"] = 5,
			["name"] = "Maraudon",
			["instance"] = 1,
		}, -- [68]
		{
			6950, -- [1]
			4633.330078125, -- [2]
			5441.669921875, -- [3]
			-2366.669921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Feralas",
			["instance"] = 1,
		}, -- [69]
		{
			5250, -- [1]
			3500.000244140625, -- [2]
			-975, -- [3]
			-2033.329956054688, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Dustwallow Marsh",
			["instance"] = 1,
		}, -- [70]
		{
			7212.5, -- [1]
			4808.3701171875, -- [2]
			-62.5, -- [3]
			-5770.830078125, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Tanaris",
			["instance"] = 1,
		}, -- [71]
		{
			750, -- [1]
			500, -- [2]
			-2190, -- [3]
			-7640, -- [4]
			["parent"] = 71,
			["mapType"] = 5,
			["name"] = "The Noxious Lair",
			["instance"] = 1,
		}, -- [72]
		{
			885, -- [1]
			590, -- [2]
			-3612.5, -- [3]
			-8900, -- [4]
			["parent"] = 71,
			["mapType"] = 5,
			["name"] = "The Gaping Chasm",
			["instance"] = 1,
		}, -- [73]
		{
			1107.509765625, -- [1]
			738.33984375, -- [2]
			-4163.7451171875, -- [3]
			-7955.830078125, -- [4]
			["parent"] = 71,
			["mapType"] = 5,
			["name"] = "Caverns of Time",
			["instance"] = 1,
		}, -- [74]
		{
			1306, -- [1]
			870.6669921875, -- [2]
			-3707.5, -- [3]
			-8036.66650390625, -- [4]
			["parent"] = 71,
			["mapType"] = 5,
			["name"] = "Caverns of Time",
			["instance"] = 1,
		}, -- [75]
		{
			5514.580078125, -- [1]
			3677.080078125, -- [2]
			-3372.919921875, -- [3]
			5381.25, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Azshara",
			["instance"] = 1,
		}, -- [76]
		{
			6062.500244140625, -- [1]
			4041.669921875, -- [2]
			1797.920043945313, -- [3]
			7237.5, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Felwood",
			["instance"] = 1,
		}, -- [77]
		{
			3700.0029296875, -- [1]
			2466.66015625, -- [2]
			533.3330078125, -- [3]
			-5966.669921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Un'Goro Crater",
			["instance"] = 1,
		}, -- [78]
		{
			382.5, -- [1]
			255, -- [2]
			-983.75, -- [3]
			-7930, -- [4]
			["parent"] = 78,
			["mapType"] = 5,
			["name"] = "The Slithering Scar",
			["instance"] = 1,
		}, -- [79]
		{
			2308.330078125, -- [1]
			1539.58984375, -- [2]
			-1381.25, -- [3]
			8491.669921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Moonglade",
			["instance"] = 1,
		}, -- [80]
		{
			4058.330078125, -- [1]
			2706.25, -- [2]
			2983.330078125, -- [3]
			-5872.919921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Silithus",
			["instance"] = 1,
		}, -- [81]
		{
			252.5099029541016, -- [1]
			168.33984375, -- [2]
			161.2550048828125, -- [3]
			-6183.330078125, -- [4]
			["parent"] = 81,
			["mapType"] = 5,
			["name"] = "Twilight's Run",
			["instance"] = 1,
		}, -- [82]
		{
			6150.0029296875, -- [1]
			4100, -- [2]
			-991.6669921875, -- [3]
			8793.75, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Winterspring",
			["instance"] = 1,
		}, -- [83]
		{
			1737.5009765625, -- [1]
			1158.33203125, -- [2]
			1722.9169921875, -- [3]
			-7995.833984375, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Stormwind City",
			["instance"] = 0,
		}, -- [84]
		{
			1739.375, -- [1]
			1159.58349609375, -- [2]
			-3506.35400390625, -- [3]
			2486.666748046875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Orgrimmar",
			["instance"] = 1,
		}, -- [85]
		{
			362.08984375, -- [1]
			241.39013671875, -- [2]
			-4163.97021484375, -- [3]
			1932.27001953125, -- [4]
			["parent"] = 85,
			["mapType"] = 6,
			["name"] = "Orgrimmar",
			["instance"] = 1,
		}, -- [86]
		{
			790.6251220703125, -- [1]
			527.6044921875, -- [2]
			-713.5913696289062, -- [3]
			-4569.2412109375, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Ironforge",
			["instance"] = 0,
		}, -- [87]
		{
			1043.749938964844, -- [1]
			695.8333740234375, -- [2]
			516.6666259765625, -- [3]
			-849.9999389648438, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Thunder Bluff",
			["instance"] = 1,
		}, -- [88]
		{
			1539.58349609375, -- [1]
			1027.083984375, -- [2]
			3187.5, -- [3]
			10464.5830078125, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Darnassus",
			["instance"] = 1,
		}, -- [89]
		{
			959.375, -- [1]
			640.10400390625, -- [2]
			873.192626953125, -- [3]
			1877.9453125, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Undercity",
			["instance"] = 0,
		}, -- [90]
		nil, -- [91]
		nil, -- [92]
		nil, -- [93]
		{
			4925, -- [1]
			3283.369140625, -- [2]
			-2087.5, -- [3]
			8641.7001953125, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Eversong Woods",
			["instance"] = 0,
		}, -- [94]
		{
			3300, -- [1]
			2200, -- [2]
			-2883.330078125, -- [3]
			5866.669921875, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Ghostlands",
			["instance"] = 0,
		}, -- [95]
		{
			300, -- [1]
			200, -- [2]
			-4780, -- [3]
			5310, -- [4]
			["parent"] = 95,
			["mapType"] = 5,
			["name"] = "Amani Catacombs",
			["instance"] = 0,
		}, -- [96]
		{
			4070.80078125, -- [1]
			2714.580078125, -- [2]
			7100, -- [3]
			7122.25, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Azuremyst Isle",
			["instance"] = 1,
		}, -- [97]
		{
			375, -- [1]
			250, -- [2]
			6231, -- [3]
			5276, -- [4]
			["parent"] = 97,
			["mapType"] = 5,
			["name"] = "Tides' Hollow",
			["instance"] = 1,
		}, -- [98]
		{
			474.990234375, -- [1]
			316.66015625, -- [2]
			5352.4453125, -- [3]
			6906.830078125, -- [4]
			["parent"] = 97,
			["mapType"] = 5,
			["name"] = "Stillpine Hold",
			["instance"] = 1,
		}, -- [99]
		{
			5164.580078125, -- [1]
			3443.75, -- [2]
			5539.580078125, -- [3]
			1481.25, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Hellfire Peninsula",
			["instance"] = 530,
		}, -- [100]
		{
			17464.5830078125, -- [1]
			11641.6669921875, -- [2]
			12995.8330078125, -- [3]
			5820.8330078125, -- [4]
			["parent"] = 946,
			["mapType"] = 2,
			["name"] = "Outland",
			["instance"] = 530,
		}, -- [101]
		{
			5027.080078125, -- [1]
			3352.090087890625, -- [2]
			9475, -- [3]
			1935.420043945313, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Zangarmarsh",
			["instance"] = 530,
		}, -- [102]
		{
			1056.76953125, -- [1]
			704.68798828125, -- [2]
			6533.6328125, -- [3]
			6306.316650390625, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "The Exodar",
			["instance"] = 1,
		}, -- [103]
		{
			5500, -- [1]
			3666.659912109375, -- [2]
			4225, -- [3]
			-1947.920043945313, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Shadowmoon Valley",
			["instance"] = 530,
		}, -- [104]
		{
			5425, -- [1]
			3616.6630859375, -- [2]
			8845.830078125, -- [3]
			4408.330078125, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Blade's Edge Mountains",
			["instance"] = 530,
		}, -- [105]
		{
			3262.5, -- [1]
			2174.9970703125, -- [2]
			7525, -- [3]
			9157.6669921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Bloodmyst Isle",
			["instance"] = 1,
		}, -- [106]
		{
			5524.9697265625, -- [1]
			3683.336570739746, -- [2]
			10295.7998046875, -- [3]
			41.66669845581055, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Nagrand",
			["instance"] = 530,
		}, -- [107]
		{
			5400, -- [1]
			3600, -- [2]
			7083.330078125, -- [3]
			-1000, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Terokkar Forest",
			["instance"] = 530,
		}, -- [108]
		{
			5574.99658203125, -- [1]
			3716.669921875, -- [2]
			5483.330078125, -- [3]
			5456.25, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Netherstorm",
			["instance"] = 530,
		}, -- [109]
		{
			1211.458984375, -- [1]
			806.76953125, -- [2]
			-4000.75, -- [3]
			7753.708984375, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Silvermoon City",
			["instance"] = 0,
		}, -- [110]
		{
			1306.25, -- [1]
			870.833251953125, -- [2]
			6135.2587890625, -- [3]
			-1473.954467773438, -- [4]
			["parent"] = 101,
			["mapType"] = 3,
			["name"] = "Shattrath City",
			["instance"] = 530,
		}, -- [111]
		[122] = {
			3327.0830078125, -- [1]
			2218.748046875, -- [2]
			-2902.0830078125, -- [3]
			11168.7490234375, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Isle of Quel'Danas",
			["instance"] = 0,
		},
		[198] = {
			4245.8330078125, -- [1]
			2831.25, -- [2]
			-929.1669921875, -- [3]
			6195.830078125, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Mount Hyjal",
			["instance"] = 1,
		},
		[199] = {
			7412.5, -- [1]
			4941.667022705078, -- [2]
			1356.25, -- [3]
			204.1670074462891, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Southern Barrens",
			["instance"] = 1,
		},
		[201] = {
			2802.0830078125, -- [1]
			1868.75048828125, -- [2]
			5070.8330078125, -- [3]
			-4018.749755859375, -- [4]
			["parent"] = 203,
			["mapType"] = 3,
			["name"] = "Kelp'thar Forest",
			["instance"] = 0,
		},
		[203] = {
			6945.83984375, -- [1]
			4631.25, -- [2]
			8754.169921875, -- [3]
			-3720.830078125, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Vashj'ir",
			["instance"] = 0,
		},
		[204] = {
			4075, -- [1]
			2716.666015625, -- [2]
			8233.3330078125, -- [3]
			-4906.25, -- [4]
			["parent"] = 203,
			["mapType"] = 3,
			["name"] = "Abyssal Depths",
			["instance"] = 0,
		},
		[205] = {
			4850, -- [1]
			3233.3330078125, -- [2]
			6681.24951171875, -- [3]
			-4756.25, -- [4]
			["parent"] = 203,
			["mapType"] = 3,
			["name"] = "Shimmering Expanse",
			["instance"] = 0,
		},
		[210] = {
			3945.830078125, -- [1]
			2631.201171875, -- [2]
			2108.330078125, -- [3]
			-12516.7001953125, -- [4]
			["parent"] = 224,
			["mapType"] = 3,
			["name"] = "The Cape of Stranglethorn",
			["instance"] = 0,
		},
		[217] = {
			3145.830078125, -- [1]
			2097.9169921875, -- [2]
			3439.580078125, -- [3]
			-533.3330078125, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Ruins of Gilneas",
			["instance"] = 0,
		},
		[218] = {
			889.579833984375, -- [1]
			593.75, -- [2]
			1933.329956054688, -- [3]
			-1306.25, -- [4]
			["parent"] = 217,
			["mapType"] = 6,
			["name"] = "Ruins of Gilneas City",
			["instance"] = 0,
		},
		[224] = {
			6552.080078125, -- [1]
			4368.69921875, -- [2]
			2977.080078125, -- [3]
			-10964.599609375, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Stranglethorn Vale",
			["instance"] = 0,
		},
		[241] = {
			5270.830078125, -- [1]
			3514.580078125, -- [2]
			-2437.5, -- [3]
			-2156.25, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Twilight Highlands",
			["instance"] = 0,
		},
		[244] = {
			2014.583251953125, -- [1]
			1343.75, -- [2]
			5914.716625976563, -- [3]
			-1172.216625976563, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Tol Barad",
			["instance"] = 0,
		},
		[245] = {
			1837.5, -- [1]
			1224.999938964844, -- [2]
			6316.8, -- [3]
			-234.7166870117187, -- [4]
			["parent"] = 13,
			["mapType"] = 3,
			["name"] = "Tol Barad Peninsula",
			["instance"] = 0,
		},
		[249] = {
			6193.75, -- [1]
			4129.12890625, -- [2]
			2441.669921875, -- [3]
			-8029.169921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Uldum",
			["instance"] = 1,
		},
		[327] = {
			4049.999755859375, -- [1]
			2700, -- [2]
			3891.66650390625, -- [3]
			-8033.3330078125, -- [4]
			["parent"] = 12,
			["mapType"] = 6,
			["name"] = "Ahn'Qiraj: The Fallen Kingdom",
			["instance"] = 1,
		},
		[425] = {
			968.75, -- [1]
			645.83984375, -- [2]
			187.5, -- [3]
			-8570.830078125, -- [4]
			["parent"] = 37,
			["mapType"] = 3,
			["name"] = "Northshire",
			["instance"] = 0,
		},
		[426] = {
			279, -- [1]
			186, -- [2]
			-27, -- [3]
			-8500, -- [4]
			["parent"] = 37,
			["mapType"] = 5,
			["name"] = "Echo Ridge Mine",
			["instance"] = 0,
		},
		[427] = {
			964.5830078125, -- [1]
			643.75, -- [2]
			979.1669921875, -- [3]
			-5962.5, -- [4]
			["parent"] = 27,
			["mapType"] = 6,
			["name"] = "Coldridge Valley",
			["instance"] = 0,
		},
		[428] = {
			266.490234375, -- [1]
			177.66015625, -- [2]
			508.2451171875, -- [3]
			-6445.669921875, -- [4]
			["parent"] = 27,
			["mapType"] = 5,
			["name"] = "Frostmane Hovel",
			["instance"] = 0,
		},
		[460] = {
			1450.0009765625, -- [1]
			966.666015625, -- [2]
			1491.6669921875, -- [3]
			11033.3330078125, -- [4]
			["parent"] = 57,
			["mapType"] = 3,
			["name"] = "Shadowglen",
			["instance"] = 1,
		},
		[461] = {
			1350, -- [1]
			900, -- [2]
			-3641.666015625, -- [3]
			0, -- [4]
			["parent"] = 1,
			["mapType"] = 3,
			["name"] = "Valley of Trials",
			["instance"] = 1,
		},
		[462] = {
			1766.66796875, -- [1]
			1177.08203125, -- [2]
			233.333984375, -- [3]
			-2577.083984375, -- [4]
			["parent"] = 7,
			["mapType"] = 3,
			["name"] = "Camp Narache",
			["instance"] = 1,
		},
		[463] = {
			1806.25, -- [1]
			1204.166015625, -- [2]
			-4491.666015625, -- [3]
			-525, -- [4]
			["parent"] = 1,
			["mapType"] = 3,
			["name"] = "Echo Isles",
			["instance"] = 1,
		},
		[464] = {
			372.5009765625, -- [1]
			248.333984375, -- [2]
			-5366.24951171875, -- [3]
			-576.3330078125, -- [4]
			["parent"] = 1,
			["mapType"] = 5,
			["name"] = "Spitescale Cavern",
			["instance"] = 1,
		},
		[465] = {
			1089.583984375, -- [1]
			727.0830078125, -- [2]
			2147.9169921875, -- [3]
			2270.8330078125, -- [4]
			["parent"] = 18,
			["mapType"] = 3,
			["name"] = "Deathknell",
			["instance"] = 0,
		},
		[466] = {
			220, -- [1]
			146.6669921875, -- [2]
			2020, -- [3]
			2123.33349609375, -- [4]
			["parent"] = 18,
			["mapType"] = 5,
			["name"] = "Night Web's Hollow",
			["instance"] = 0,
		},
		[467] = {
			1600, -- [1]
			1066.666015625, -- [2]
			-2983.333984375, -- [3]
			8433.3330078125, -- [4]
			["parent"] = 94,
			["mapType"] = 3,
			["name"] = "Sunstrider Isle",
			["instance"] = 0,
		},
		[468] = {
			1818.75, -- [1]
			1212.5, -- [2]
			4785.41796875, -- [3]
			6311.833984375, -- [4]
			["parent"] = 97,
			["mapType"] = 3,
			["name"] = "Ammen Vale",
			["instance"] = 1,
		},
		[469] = {
			1850, -- [1]
			1233.33203125, -- [2]
			1206.25, -- [3]
			-4727.083984375, -- [4]
			["parent"] = 27,
			["mapType"] = 3,
			["name"] = "New Tinkertown",
			["instance"] = 0,
		},
		[470] = {
			195, -- [1]
			130, -- [2]
			779, -- [3]
			-5470, -- [4]
			["parent"] = 27,
			["mapType"] = 5,
			["name"] = "Frostmane Hold",
			["instance"] = 0,
		},
		[947] = {
			-13364.826171875, -- [1]
			24751.291015625, -- [2]
			-1386.69921875, -- [3]
			19216.29296875, -- [4]
			["parent"] = 946,
			["mapType"] = 1,
			["name"] = "Azeroth",
			["instance"] = 530,
		},
		[985] = {
			28800, -- [1]
			28800, -- [2]
			12270, -- [3]
			12270, -- [4]
			["parent"] = 0,
			["mapType"] = 2,
			["name"] = "Eastern Kingdoms",
			["instance"] = 0,
		},
		[986] = {
			24340, -- [1]
			24340, -- [2]
			10970, -- [3]
			12470, -- [4]
			["parent"] = 0,
			["mapType"] = 2,
			["name"] = "Kalimdor",
			["instance"] = 1,
		},
		[987] = {
			12270, -- [1]
			12267, -- [2]
			10670, -- [3]
			6400, -- [4]
			["parent"] = 0,
			["mapType"] = 2,
			["name"] = "Outland",
			["instance"] = 530,
		},
		[1030] = {
			250.4599609375, -- [1]
			166.97998046875, -- [2]
			2710.22998046875, -- [3]
			-1500.010009765625, -- [4]
			["parent"] = 217,
			["mapType"] = 5,
			["name"] = "Greymane Manor",
			["instance"] = 0,
		},
		[1031] = {
			280.4599609375, -- [1]
			186.97998046875, -- [2]
			2725.22998046875, -- [3]
			-1480.010009765625, -- [4]
			["parent"] = 179,
			["mapType"] = 5,
			["name"] = "Greymane Manor",
			["instance"] = 0,
		},
		[1208] = {
			40741.19921875, -- [1]
			27149.599609375, -- [2]
			18172, -- [3]
			11176.2998046875, -- [4]
			["parent"] = 0,
			["mapType"] = 2,
			["name"] = "Eastern Kingdoms",
			["instance"] = 0,
		},
		[1209] = {
			36799.798828125, -- [1]
			24533.2001953125, -- [2]
			17066.599609375, -- [3]
			12309.2001953125, -- [4]
			["parent"] = 0,
			["mapType"] = 2,
			["name"] = "Kalimdor",
			["instance"] = 1,
		},
		[1244] = {
			3477.090087890625, -- [1]
			2318.752899169922, -- [2]
			-1127.079956054688, -- [3]
			-141.6670074462891, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Arathi Highlands",
			["instance"] = 0,
		},
		[1245] = {
			3070.840087890625, -- [1]
			2045.830078125, -- [2]
			-1902.079956054688, -- [3]
			-5854.169921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Badlands",
			["instance"] = 0,
		},
		[1246] = {
			3662.5, -- [1]
			2441.701171875, -- [2]
			-1193.75, -- [3]
			-10583.2998046875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Blasted Lands",
			["instance"] = 0,
		},
		[1247] = {
			4518.750122070313, -- [1]
			3012.5, -- [2]
			3033.330078125, -- [3]
			3837.5, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Tirisfal Glades",
			["instance"] = 0,
		},
		[1248] = {
			4200, -- [1]
			2800, -- [2]
			3450, -- [3]
			1666.670043945313, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Silverpine Forest",
			["instance"] = 0,
		},
		[1249] = {
			4299.9970703125, -- [1]
			2866.669921875, -- [2]
			416.6669921875, -- [3]
			3366.669921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Western Plaguelands",
			["instance"] = 0,
		},
		[1250] = {
			4031.25, -- [1]
			2687.5, -- [2]
			-2287.5, -- [3]
			3704.169921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Eastern Plaguelands",
			["instance"] = 0,
		},
		[1251] = {
			4862.5, -- [1]
			3241.670043945313, -- [2]
			1850, -- [3]
			1481.25, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Hillsbrad Foothills",
			["instance"] = 0,
		},
		[1252] = {
			3850, -- [1]
			2566.670043945313, -- [2]
			-1575, -- [3]
			1466.670043945313, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "The Hinterlands",
			["instance"] = 0,
		},
		[1253] = {
			4897.919921875, -- [1]
			3264.580078125, -- [2]
			2137.5, -- [3]
			-3941.669921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Dun Morogh",
			["instance"] = 0,
		},
		[1254] = {
			2231.2529296875, -- [1]
			1487.5, -- [2]
			-322.9169921875, -- [3]
			-6100, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Searing Gorge",
			["instance"] = 0,
		},
		[1255] = {
			3152.0869140625, -- [1]
			2100, -- [2]
			-464.5830078125, -- [3]
			-6985.419921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Burning Steppes",
			["instance"] = 0,
		},
		[1256] = {
			3470.840087890625, -- [1]
			2314.62109375, -- [2]
			1535.420043945313, -- [3]
			-7939.580078125, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Elwynn Forest",
			["instance"] = 0,
		},
		[1257] = {
			2499.999877929688, -- [1]
			1666.66796875, -- [2]
			-833.3333129882812, -- [3]
			-9866.666015625, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Deadwind Pass",
			["instance"] = 0,
		},
		[1258] = {
			2700.003051757813, -- [1]
			1800.03125, -- [2]
			833.3330078125, -- [3]
			-9716.669921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Duskwood",
			["instance"] = 0,
		},
		[1259] = {
			2758.330078125, -- [1]
			1839.580078125, -- [2]
			-1993.75, -- [3]
			-4487.5, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Loch Modan",
			["instance"] = 0,
		},
		[1260] = {
			2568.749755859375, -- [1]
			1712.51953125, -- [2]
			-1479.170043945313, -- [3]
			-8514.580078125, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Redridge Mountains",
			["instance"] = 0,
		},
		[1261] = {
			2508.330078125, -- [1]
			1672.87890625, -- [2]
			-2081.25, -- [3]
			-9535.419921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Swamp of Sorrows",
			["instance"] = 0,
		},
		[1262] = {
			3500.0029296875, -- [1]
			2333.30078125, -- [2]
			3016.669921875, -- [3]
			-9400, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Westfall",
			["instance"] = 0,
		},
		[1263] = {
			4135.4169921875, -- [1]
			2756.25, -- [2]
			-389.5830078125, -- [3]
			-2147.919921875, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Wetlands",
			["instance"] = 0,
		},
		[1264] = {
			1737.5009765625, -- [1]
			1158.33203125, -- [2]
			1722.9169921875, -- [3]
			-7995.833984375, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Stormwind City",
			["instance"] = 0,
		},
		[1265] = {
			790.6251220703125, -- [1]
			527.6044921875, -- [2]
			-713.5913696289062, -- [3]
			-4569.2412109375, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Ironforge",
			["instance"] = 0,
		},
		[1266] = {
			959.375, -- [1]
			640.10400390625, -- [2]
			873.192626953125, -- [3]
			1877.9453125, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Undercity",
			["instance"] = 0,
		},


		[1269] = {
			1211.458984375, -- [1]
			806.76953125, -- [2]
			-4000.75, -- [3]
			7753.708984375, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Silvermoon City",
			["instance"] = 0,
		},
		[1270] = {
			3327.0830078125, -- [1]
			2218.748046875, -- [2]
			-2902.0830078125, -- [3]
			11168.7490234375, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Isle of Quel'Danas",
			["instance"] = 0,
		},
		[1272] = {
			6945.83984375, -- [1]
			4631.25, -- [2]
			8754.169921875, -- [3]
			-3720.830078125, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Vashj'ir",
			["instance"] = 0,
		},
		[1273] = {
			3145.830078125, -- [1]
			2097.9169921875, -- [2]
			3439.580078125, -- [3]
			-533.3330078125, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Ruins of Gilneas",
			["instance"] = 0,
		},
		[1274] = {
			6552.080078125, -- [1]
			4368.69921875, -- [2]
			2977.080078125, -- [3]
			-10964.599609375, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Stranglethorn Vale",
			["instance"] = 0,
		},
		[1275] = {
			5270.830078125, -- [1]
			3514.580078125, -- [2]
			-2437.5, -- [3]
			-2156.25, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Twilight Highlands",
			["instance"] = 0,
		},
		[1276] = {
			2014.583251953125, -- [1]
			1343.75, -- [2]
			5914.716625976563, -- [3]
			-1172.216625976563, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Tol Barad",
			["instance"] = 0,
		},
		[1277] = {
			1837.5, -- [1]
			1224.999938964844, -- [2]
			6316.8, -- [3]
			-234.7166870117187, -- [4]
			["parent"] = 1208,
			["mapType"] = 3,
			["name"] = "Tol Barad Peninsula",
			["instance"] = 0,
		},
		[1305] = {
			5287.5, -- [1]
			3525, -- [2]
			-1962.5, -- [3]
			1808.329956054688, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Durotar",
			["instance"] = 1,
		},
		[1306] = {
			5450, -- [1]
			3633.330078125, -- [2]
			2204.169921875, -- [3]
			-168.75, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Mulgore",
			["instance"] = 1,
		},
		[1307] = {
			5745.832977294922, -- [1]
			3831.25, -- [2]
			202.0829925537109, -- [3]
			1810.420043945313, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Northern Barrens",
			["instance"] = 1,
		},
		[1308] = {
			5875, -- [1]
			3916.650390625, -- [2]
			4235.419921875, -- [3]
			11847.900390625, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Teldrassil",
			["instance"] = 1,
		},
		[1309] = {
			6464.58984375, -- [1]
			4310.419921875, -- [2]
			3016.669921875, -- [3]
			8222.919921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Darkshore",
			["instance"] = 1,
		},
		[1310] = {
			5766.669921875, -- [1]
			3843.7529296875, -- [2]
			1700, -- [3]
			4672.919921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Ashenvale",
			["instance"] = 1,
		},
		[1311] = {
			4399.9970703125, -- [1]
			2933.330078125, -- [2]
			-433.3330078125, -- [3]
			-3966.669921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Thousand Needles",
			["instance"] = 1,
		},
		[1312] = {
			5900.000122070313, -- [1]
			3933.3369140625, -- [2]
			3902.080078125, -- [3]
			3404.169921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Stonetalon Mountains",
			["instance"] = 1,
		},
		[1313] = {
			4495.830078125, -- [1]
			2997.9130859375, -- [2]
			4233.330078125, -- [3]
			452.0830078125, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Desolace",
			["instance"] = 1,
		},
		[1314] = {
			6950, -- [1]
			4633.330078125, -- [2]
			5441.669921875, -- [3]
			-2366.669921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Feralas",
			["instance"] = 1,
		},
		[1315] = {
			5250, -- [1]
			3500.000244140625, -- [2]
			-975, -- [3]
			-2033.329956054688, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Dustwallow Marsh",
			["instance"] = 1,
		},
		[1316] = {
			7212.5, -- [1]
			4808.3701171875, -- [2]
			-62.5, -- [3]
			-5770.830078125, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Tanaris",
			["instance"] = 1,
		},
		[1317] = {
			5514.580078125, -- [1]
			3677.080078125, -- [2]
			-3372.919921875, -- [3]
			5381.25, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Azshara",
			["instance"] = 1,
		},
		[1318] = {
			6062.500244140625, -- [1]
			4041.669921875, -- [2]
			1797.920043945313, -- [3]
			7237.5, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Felwood",
			["instance"] = 1,
		},
		[1319] = {
			3700.0029296875, -- [1]
			2466.66015625, -- [2]
			533.3330078125, -- [3]
			-5966.669921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Un'Goro Crater",
			["instance"] = 1,
		},
		[1320] = {
			2308.330078125, -- [1]
			1539.58984375, -- [2]
			-1381.25, -- [3]
			8491.669921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Moonglade",
			["instance"] = 1,
		},
		[1321] = {
			4058.330078125, -- [1]
			2706.25, -- [2]
			2983.330078125, -- [3]
			-5872.919921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Silithus",
			["instance"] = 1,
		},
		[1322] = {
			6150.0029296875, -- [1]
			4100, -- [2]
			-991.6669921875, -- [3]
			8793.75, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Winterspring",
			["instance"] = 1,
		},
		[1323] = {
			1043.749938964844, -- [1]
			695.8333740234375, -- [2]
			516.6666259765625, -- [3]
			-849.9999389648438, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Thunder Bluff",
			["instance"] = 1,
		},
		[1324] = {
			1539.58349609375, -- [1]
			1027.083984375, -- [2]
			3187.5, -- [3]
			10464.5830078125, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Darnassus",
			["instance"] = 1,
		},
		[1325] = {
			4070.80078125, -- [1]
			2714.580078125, -- [2]
			7100, -- [3]
			7122.25, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Azuremyst Isle",
			["instance"] = 1,
		},
		[1328] = {
			4245.8330078125, -- [1]
			2831.25, -- [2]
			-929.1669921875, -- [3]
			6195.830078125, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Mount Hyjal",
			["instance"] = 1,
		},
		[1329] = {
			7412.5, -- [1]
			4941.667022705078, -- [2]
			1356.25, -- [3]
			204.1670074462891, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Southern Barrens",
			["instance"] = 1,
		},
		[1330] = {
			6193.75, -- [1]
			4129.12890625, -- [2]
			2441.669921875, -- [3]
			-8029.169921875, -- [4]
			["parent"] = 1209,
			["mapType"] = 3,
			["name"] = "Uldum",
			["instance"] = 1,
		},
		[1361] = {
			252.5, -- [1]
			168.3330078125, -- [2]
			-885, -- [3]
			-4734.16845703125, -- [4]
			["parent"] = 87,
			["mapType"] = 4,
			["name"] = "OldIronforge",
			["instance"] = 0,
		},
		[1467] = {
			17464.5830078125, -- [1]
			11641.6669921875, -- [2]
			12995.8330078125, -- [3]
			5820.8330078125, -- [4]
			["parent"] = 0,
			["mapType"] = 2,
			["name"] = "Outland",
			["instance"] = 530,
		},
		[1527] = {
			6193.75, -- [1]
			4129.12890625, -- [2]
			2441.669921875, -- [3]
			-8029.169921875, -- [4]
			["parent"] = 12,
			["mapType"] = 3,
			["name"] = "Uldum",
			["instance"] = 1,
		},
	}
    local HBD = LibStub("HereBeDragons-2.0")

    for i,v in pairs(zoneData) do
        --local zone = HBD.mapData[i]
        if not HBD.mapData[i] then
            HBD.mapData[i] = v
        end
    end
    --[[for i,v in pairs(cataZones) do
        HBD.mapData[i] = v
    end]]


for i = 1, 2200 do
    local map = C_Map.GetMapInfo(i)
    if map and not addon.mapId[map.name] then
        addon.mapId[map.name] = i
    end
end

addon.mapConversion = addon.mapConversion or {}

for i,v in pairs(retailData) do
    if not HBD.mapData[i] then
        HBD.mapData[i] = v
    end
    local classicId = addon.mapId[v.name]
    if not classicId and v.parent then
        if C_Map.GetMapInfo(v.parent) then
            classicId = v.parent
        elseif C_Map.GetMapInfo(addon.mapConversion[v.parent] or -1) then
            classicId = addon.mapConversion[v.parent]
            --print(v.name,i,classicId)
        end
    end
    addon.mapConversion[i] = classicId

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

addon.taxiPos = {
  [0] = {
    [2] = {wx = -8841.05957, wy = 489.65601, flag = 1},
    [4] = {wx = -10551.90039, wy = 1034.39001, flag = 1},
    [5] = {wx = -9429.09961, wy = -2231.39990, flag = 1},
    [6] = {wx = -4821.77979, wy = -1155.43994, flag = 1},
    [7] = {wx = -3787.81006, wy = -777.69598, flag = 1},
    [8] = {wx = -5421.91016, wy = -2930.01001, flag = 1},
    [10] = {wx = 478.85999, wy = 1536.58997, flag = 2},
    [11] = {wx = 1568.62000, wy = 267.97000, flag = 2},
    [12] = {wx = -10515.50000, wy = -1261.65002, flag = 1},
    [13] = {wx = -17.70660, wy = -874.20300, flag = 2},
    [16] = {wx = -1240.53003, wy = -2515.11011, flag = 1},
    [17] = {wx = -916.28998, wy = -3496.88989, flag = 2},
    [18] = {wx = -14444.29004, wy = 509.62000, flag = 2},
    [19] = {wx = -14473.00000, wy = 464.14999, flag = 1},
    [20] = {wx = -12414.20020, wy = 146.28999, flag = 2},
    [21] = {wx = -6676.87012, wy = -2433.37012, flag = 2},
    [43] = {wx = 283.73999, wy = -2002.76001, flag = 1},
    [45] = {wx = -11112.29980, wy = -3435.73999, flag = 1},
    [56] = {wx = -10457.00000, wy = -3279.25000, flag = 2},
    [383] = {wx = 1935.96997, wy = -2694.47998, flag = 3},
    [521] = {wx = -4588.04980, wy = 3481.12012, flag = 3},
    [523] = {wx = -6616.39990, wy = 4308.27979, flag = 1},
    [524] = {wx = -6902.25000, wy = 5943.81982, flag = 1},
    [526] = {wx = -6507.99023, wy = 6075.25000, flag = 2},
    [70] = {wx = -7504.02979, wy = -2187.54004, flag = 2},
    [460] = {wx = 2272.67993, wy = 372.06400, flag = 2},
    [610] = {wx = -6878.52002, wy = 4244.70996, flag = 2},
    [195] = {wx = -11344.00000, wy = -216.83000, flag = 5},
    [71] = {wx = -8364.61035, wy = -2738.35010, flag = 1},
    [673] = {wx = -7123.06006, wy = -1236.63000, flag = 3},
    [554] = {wx = -4113.60010, wy = -2741.20996, flag = 1},
    [551] = {wx = -3222.92993, wy = -1989.48999, flag = 1},
    [552] = {wx = -3306.64990, wy = -2718.68994, flag = 1},
    [555] = {wx = -5668.31006, wy = -4253.43994, flag = 1},
    [598] = {wx = -10176.59961, wy = -3836.54004, flag = 1},
    [669] = {wx = -566.88898, wy = -1051.19995, flag = 2},
    [600] = {wx = -10118.59961, wy = -2852.47998, flag = 5},
    [667] = {wx = -661.83698, wy = -536.49298, flag = 2},
    [589] = {wx = -9475.70996, wy = -1306.73999, flag = 1},
    [665] = {wx = -3146.91992, wy = -4994.27979, flag = 1},
    [66] = {wx = 931.32001, wy = -1430.10999, flag = 1},
    [68] = {wx = 2270.19995, wy = -5343.10986, flag = 2},
    [663] = {wx = -4170.54980, wy = -4748.93018, flag = 1},
    [590] = {wx = -12828.79980, wy = -413.70999, flag = 1},
    [67] = {wx = 2271.09009, wy = -5340.79980, flag = 1},
    [661] = {wx = -4012.44995, wy = -6329.25000, flag = 2},
    [660] = {wx = -2780.17993, wy = -6409.27979, flag = 2},
    [659] = {wx = -3637.56006, wy = -5288.18994, flag = 2},
    [525] = {wx = -6805.62988, wy = 4199.85010, flag = 2},
    [657] = {wx = -3494.62988, wy = -4379.47998, flag = 2},
    [592] = {wx = -13288.29980, wy = 722.02802, flag = 2},
    [602] = {wx = -12761.90039, wy = -2919.04004, flag = 1},
    [651] = {wx = 1864.31995, wy = -1755.81995, flag = 3},
    [681] = {wx = 1056.06006, wy = 1518.90002, flag = 2},
    [84] = {wx = 2965.55005, wy = -3033.61011, flag = 3},
    [676] = {wx = -7865.93018, wy = -1919.53003, flag = 3},
    [582] = {wx = -9433.99023, wy = 85.14930, flag = 1},
    [672] = {wx = 2839.78003, wy = -1500.51001, flag = 3},
    [675] = {wx = -8092.25977, wy = -1025.79004, flag = 3},
    [668] = {wx = -605.18402, wy = 435.46500, flag = 2},
    [670] = {wx = 622.85101, wy = -979.57800, flag = 2},
    [664] = {wx = -4183.89990, wy = -5620.14990, flag = 1},
    [666] = {wx = -2689.42993, wy = -5427.52979, flag = 1},
    [76] = {wx = -635.26001, wy = -4720.50000, flag = 2},
    [662] = {wx = -4863.10010, wy = -6740.60986, flag = 1},
    [656] = {wx = -4831.75977, wy = -4848.93018, flag = 2},
    [658] = {wx = -3032.76001, wy = -3940.96997, flag = 3},
    [553] = {wx = -2656.54004, wy = -2464.28003, flag = 1},
    [654] = {wx = -114.14200, wy = 1312.31995, flag = 2},
    [649] = {wx = 1511.80005, wy = -1586.94995, flag = 2},
    [650] = {wx = 1374.22998, wy = -1281.93994, flag = 1},
    [645] = {wx = 1421.02002, wy = 1018.22998, flag = 2},
    [85] = {wx = 3134.26001, wy = -4354.77979, flag = 3},
    [74] = {wx = -6552.58984, wy = -1168.27002, flag = 1},
    [618] = {wx = 312.32599, wy = -4105.35986, flag = 1},
    [315] = {wx = 2352.37012, wy = -5666.91016, flag = 3},
    [632] = {wx = -6898.25000, wy = -3513.98999, flag = 2},
    [635] = {wx = -6574.93994, wy = -3875.12988, flag = 3},
    [633] = {wx = -6594.08984, wy = -3401.17993, flag = 1},
    [630] = {wx = 2262.10010, wy = -4411.52002, flag = 3},
    [522] = {wx = -6105.60986, wy = 4285.08008, flag = 3},
    [384] = {wx = 1726.62000, wy = -740.98102, flag = 2},
    [75] = {wx = -6554.93018, wy = -1100.05005, flag = 2},
    [622] = {wx = -10737.59961, wy = 267.04300, flag = 1},
    [620] = {wx = -5714.14014, wy = -1578.64001, flag = 1},
    [619] = {wx = -5660.79980, wy = -494.85101, flag = 1},
    [617] = {wx = -25.77600, wy = -2821.78003, flag = 2},
    [615] = {wx = -9446.63965, wy = -2836.98999, flag = 1},
    [612] = {wx = -6880.16992, wy = 4278.06006, flag = 2},
    [611] = {wx = -7198.97021, wy = 3912.36011, flag = 1},
    [609] = {wx = -5669.18994, wy = 3711.81006, flag = 2},
    [607] = {wx = -5267.35010, wy = 3900.27002, flag = 1},
    [605] = {wx = -7209.70996, wy = 3925.85010, flag = 1},
    [603] = {wx = -12357.59961, wy = -3058.22998, flag = 2},
    [601] = {wx = -952.37701, wy = -1585.73999, flag = 6},
    [599] = {wx = -9737.08008, wy = -3890.71997, flag = 3},
    [87] = {wx = 1876.40002, wy = -3693.32007, flag = 3},
    [634] = {wx = -7034.52979, wy = -2570.79004, flag = 1},
    [593] = {wx = -12092.20020, wy = -814.09900, flag = 2},
    [591] = {wx = -13600.90039, wy = -85.54860, flag = 1},
    [86] = {wx = 2524.43994, wy = -4769.56006, flag = 3},
    [596] = {wx = -9641.66992, wy = -3479.37012, flag = 1},
    [584] = {wx = -9838.50977, wy = 1273.93005, flag = 1},
    [583] = {wx = -10876.90039, wy = 1542.88000, flag = 1},
    [604] = {wx = -10933.29980, wy = -2790.97998, flag = 6},
    [606] = {wx = -5310.85010, wy = 3914.41992, flag = 1},
    [608] = {wx = -5671.02002, wy = 3720.07007, flag = 2},
  },
  [1] = {
    [22] = {wx = -1197.20996, wy = 29.71000, flag = 2},
    [23] = {wx = 1798.27002, wy = -4363.27002, flag = 2},
    [25] = {wx = -441.79999, wy = -2596.08008, flag = 2},
    [26] = {wx = 7459.89990, wy = -326.56000, flag = 1},
    [27] = {wx = 8383.75000, wy = 980.96399, flag = 1},
    [28] = {wx = 2827.34009, wy = -289.23999, flag = 1},
    [29] = {wx = 966.57001, wy = 1040.31995, flag = 2},
    [30] = {wx = -4310.60986, wy = -927.06403, flag = 2},
    [31] = {wx = -4996.87988, wy = 73.94270, flag = 1},
    [32] = {wx = -3825.37012, wy = -4516.58008, flag = 1},
    [33] = {wx = 2147.25000, wy = 1537.87000, flag = 1},
    [37] = {wx = 139.24001, wy = 1325.81995, flag = 1},
    [38] = {wx = -1767.64001, wy = 3263.88989, flag = 2},
    [39] = {wx = -7185.97021, wy = -3768.23999, flag = 1},
    [40] = {wx = -7094.02979, wy = -3813.68994, flag = 2},
    [41] = {wx = -4467.04004, wy = 2188.63989, flag = 1},
    [42] = {wx = -4419.85986, wy = 199.31000, flag = 2},
    [44] = {wx = 3547.19995, wy = -6294.66016, flag = 2},
    [49] = {wx = 7458.45020, wy = -2487.20996, flag = 1},
    [52] = {wx = 6796.79980, wy = -4742.39014, flag = 1},
    [53] = {wx = 6813.06006, wy = -4611.12012, flag = 2},
    [55] = {wx = -3147.38989, wy = -2842.17993, flag = 2},
    [58] = {wx = 3351.82007, wy = 1052.30005, flag = 2},
    [61] = {wx = 2302.38989, wy = -2524.55005, flag = 2},
    [62] = {wx = 7793.60986, wy = -2403.46997, flag = 1},
    [63] = {wx = 7787.72021, wy = -2404.10010, flag = 2},
    [65] = {wx = 6214.31982, wy = -1874.28003, flag = 1},
    [69] = {wx = 7470.39014, wy = -2123.37988, flag = 2},
    [72] = {wx = -6811.39014, wy = 836.73999, flag = 2},
    [73] = {wx = -6761.83008, wy = 772.03003, flag = 1},
    [77] = {wx = -2152.35010, wy = -1724.33997, flag = 2},
    [79] = {wx = -7548.04980, wy = -1541.13000, flag = 3},
    [80] = {wx = -894.59003, wy = -3773.01001, flag = 3},
    [356] = {wx = 2159.62012, wy = -1144.05005, flag = 2},
    [781] = {wx = 4397.79004, wy = -2107.53003, flag = 3},
    [354] = {wx = 1206.05005, wy = -2209.14990, flag = 2},
    [365] = {wx = 973.94000, wy = 2013.13000, flag = 1},
    [364] = {wx = 237.88000, wy = -281.35001, flag = 1},
    [367] = {wx = -1694.53003, wy = 2577.57007, flag = 1},
    [366] = {wx = -439.14999, wy = 2242.62012, flag = 2},
    [361] = {wx = 1268.51001, wy = 432.87000, flag = 1},
    [360] = {wx = 2188.00000, wy = 1241.89001, flag = 2},
    [363] = {wx = -111.94000, wy = -260.41000, flag = 2},
    [179] = {wx = -4566.22998, wy = -3226.05005, flag = 3},
    [683] = {wx = 2988.12988, wy = -4161.35986, flag = 6},
    [674] = {wx = -10711.90039, wy = 1059.62000, flag = 3},
    [653] = {wx = -8375.46973, wy = 791.25897, flag = 3},
    [652] = {wx = -9415.01953, wy = -1042.96997, flag = 3},
    [369] = {wx = -534.03998, wy = 1056.68005, flag = 3},
    [368] = {wx = -1038.43005, wy = 1637.98999, flag = 3},
    [616] = {wx = 4059.39990, wy = -3966.75000, flag = 3},
    [370] = {wx = -356.47000, wy = 2478.89990, flag = 3},
    [614] = {wx = 4611.37988, wy = -7041.79980, flag = 2},
    [613] = {wx = 2647.79004, wy = -6214.39990, flag = 2},
    [537] = {wx = 269.91699, wy = -4766.75977, flag = 2},
    [595] = {wx = 4734.16016, wy = -883.80603, flag = 3},
    [594] = {wx = 6078.50977, wy = -844.99799, flag = 3},
    [569] = {wx = -4606.52002, wy = 1898.18994, flag = 2},
    [513] = {wx = -6075.37012, wy = -3913.43994, flag = 3},
    [388] = {wx = -2124.20996, wy = -3561.79004, flag = 1},
    [389] = {wx = -3150.25000, wy = -2286.27002, flag = 1},
    [390] = {wx = -798.71997, wy = -1590.87000, flag = 2},
    [391] = {wx = -3288.85010, wy = -1697.98999, flag = 2},
    [568] = {wx = -3081.69995, wy = 2560.10010, flag = 2},
    [167] = {wx = 3000.25000, wy = -3202.40991, flag = 1},
    [386] = {wx = -6958.43994, wy = -1095.23999, flag = 3},
    [531] = {wx = -9487.88965, wy = -2467.12988, flag = 2},
    [532] = {wx = -9493.70996, wy = -2953.98999, flag = 1},
    [456] = {wx = 9873.09961, wy = 977.69800, flag = 1},
    [457] = {wx = 9968.79980, wy = 2622.09009, flag = 1},
    [539] = {wx = -8683.08984, wy = -4088.10010, flag = 3},
    [540] = {wx = 1825.93994, wy = 727.20801, flag = 2},
    [567] = {wx = -4863.64014, wy = 1478.16003, flag = 1},
    [387] = {wx = -335.20001, wy = -1532.43994, flag = 1},
    [559] = {wx = 5584.06006, wy = -3569.84009, flag = 3},
    [558] = {wx = 5163.50977, wy = -1760.57996, flag = 3},
    [536] = {wx = -780.26703, wy = -4890.27979, flag = 2},
    [541] = {wx = 1379.42004, wy = 1034.85999, flag = 1},
    [597] = {wx = 6892.68994, wy = -1620.41003, flag = 2},
    [557] = {wx = 4987.87012, wy = -2676.18994, flag = 3},
    [338] = {wx = 3880.51001, wy = 654.15997, flag = 1},
    [402] = {wx = -2299.54004, wy = -379.06900, flag = 2},
    [362] = {wx = 932.12000, wy = -21.25000, flag = 2},
    [565] = {wx = -3136.62012, wy = 1951.67004, flag = 1},
    [350] = {wx = 3049.08008, wy = -498.95001, flag = 2},
    [351] = {wx = 1905.10999, wy = -321.98999, flag = 1},
    [339] = {wx = 4970.50000, wy = 147.64999, flag = 1},
    [166] = {wx = 3972.84009, wy = -1324.51001, flag = 3},
    [458] = {wx = 1152.59998, wy = -3381.73999, flag = 2},
  },
  [571] = {
    [295] = {wx = 785.27002, wy = -2887.70996, flag = 3},
    [294] = {wx = 2792.44995, wy = 908.96002, flag = 3},
    [244] = {wx = 3712.42993, wy = -694.85999, flag = 1},
    [245] = {wx = 2269.54004, wy = 5173.68994, flag = 1},
    [183] = {wx = 567.40997, wy = -5010.97021, flag = 1},
    [303] = {wx = 5100.81006, wy = 2185.64990, flag = 1},
    [309] = {wx = 5596.10010, wy = 5824.37012, flag = 3},
    [296] = {wx = 2919.18994, wy = 4046.09009, flag = 3},
    [190] = {wx = 401.12000, wy = -4544.29980, flag = 2},
    [310] = {wx = 5813.89014, wy = 449.13000, flag = 3},
    [252] = {wx = 3653.20996, wy = 247.58000, flag = 3},
    [308] = {wx = 5506.22998, wy = 4748.10010, flag = 3},
    [253] = {wx = 3446.35010, wy = -2754.10010, flag = 1},
    [306] = {wx = 5190.10986, wy = -2206.45996, flag = 3},
    [305] = {wx = 5218.89990, wy = -1302.21997, flag = 7},
    [304] = {wx = 5521.62988, wy = -2672.25000, flag = 3},
    [255] = {wx = 4584.97998, wy = -4254.68994, flag = 1},
    [191] = {wx = 1918.59998, wy = -6175.89014, flag = 2},
    [248] = {wx = 2108.11011, wy = -2970.62012, flag = 2},
    [332] = {wx = 5024.99023, wy = 3685.55005, flag = 2},
    [249] = {wx = 3876.34009, wy = -4520.08008, flag = 2},
    [334] = {wx = 6164.49023, wy = -61.31000, flag = 3},
    [250] = {wx = 3258.89990, wy = -2263.09009, flag = 2},
    [326] = {wx = 8864.74023, wy = -1324.32996, flag = 3},
    [184] = {wx = 2468.77002, wy = -5029.81982, flag = 1},
    [324] = {wx = 7793.85010, wy = -2810.09009, flag = 2},
    [185] = {wx = 1342.83997, wy = -3287.89990, flag = 1},
    [322] = {wx = 7308.04004, wy = -2607.60010, flag = 3},
    [323] = {wx = 7857.29980, wy = -735.02002, flag = 2},
    [333] = {wx = 8408.08984, wy = 2702.65991, flag = 3},
    [320] = {wx = 6186.75000, wy = -1052.91003, flag = 3},
    [321] = {wx = 6667.04004, wy = -258.70001, flag = 1},
    [335] = {wx = 6402.06006, wy = 467.85999, flag = 3},
    [256] = {wx = 3865.87012, wy = 1525.63000, flag = 2},
    [257] = {wx = 2920.29004, wy = 6242.85010, flag = 2},
    [259] = {wx = 4474.79004, wy = 5712.12988, flag = 2},
    [260] = {wx = 4946.66992, wy = 1165.93994, flag = 2},
    [331] = {wx = 6897.64990, wy = -4118.22998, flag = 7},
    [327] = {wx = 8472.45996, wy = -335.95001, flag = 3},
    [226] = {wx = 3575.43994, wy = 6661.64014, flag = 3},
    [325] = {wx = 7427.31982, wy = 4224.16016, flag = 3},
    [340] = {wx = 8475.79004, wy = 891.20001, flag = 3},
    [307] = {wx = 5777.39990, wy = -3594.93994, flag = 3},
    [251] = {wx = 4612.20996, wy = 1406.59998, flag = 1},
    [246] = {wx = 4127.22998, wy = 5313.06982, flag = 1},
    [336] = {wx = 5035.64990, wy = -519.96002, flag = 1},
    [337] = {wx = 5590.49023, wy = -693.22998, flag = 2},
    [254] = {wx = 3242.95996, wy = -666.15997, flag = 2},
    [258] = {wx = 3449.51001, wy = 4089.52002, flag = 2},
    [192] = {wx = 2652.88989, wy = -4392.70996, flag = 2},
    [289] = {wx = 3587.84009, wy = 5973.29980, flag = 3},
    [247] = {wx = 3504.12988, wy = 1992.03003, flag = 1},
  },
  [530] = {
    [99] = {wx = 228.50000, wy = 2633.57007, flag = 2},
    [83] = {wx = 7594.47021, wy = -6784.29004, flag = 2},
    [213] = {wx = 13012.70020, wy = -6908.37012, flag = 11},
    [151] = {wx = 91.67000, wy = 5214.91992, flag = 2},
    [124] = {wx = -3982.07007, wy = 2156.46997, flag = 1},
    [150] = {wx = 2974.94995, wy = 1848.23999, flag = 3},
    [93] = {wx = -1933.27002, wy = -11954.59961, flag = 1},
    [125] = {wx = 2183.64990, wy = 6794.45996, flag = 1},
    [126] = {wx = 2446.37012, wy = 6020.93018, flag = 2},
    [127] = {wx = -2567.33008, wy = 4423.83008, flag = 2},
    [94] = {wx = -3867.56006, wy = -11641.09961, flag = 1},
    [159] = {wx = -4073.16992, wy = 1123.60999, flag = 3},
    [120] = {wx = -1261.08997, wy = 7133.39014, flag = 2},
    [121] = {wx = -2987.23999, wy = 3872.78003, flag = 1},
    [156] = {wx = 1857.34998, wy = 5531.87012, flag = 1},
    [122] = {wx = 3082.31006, wy = 3596.11011, flag = 3},
    [631] = {wx = 9501.92969, wy = -6767.08984, flag = 2},
    [123] = {wx = -3018.62012, wy = 2557.09009, flag = 2},
    [624] = {wx = -4130.08008, wy = -12520.50000, flag = 1},
    [101] = {wx = 199.16000, wy = 4241.56006, flag = 1},
    [164] = {wx = 966.66998, wy = 7399.16016, flag = 1},
    [100] = {wx = -673.41998, wy = 2717.27002, flag = 1},
    [163] = {wx = 2028.79004, wy = 4705.27002, flag = 2},
    [140] = {wx = -3065.60010, wy = 749.41998, flag = 3},
    [141] = {wx = -1316.83997, wy = 2358.62012, flag = 2},
    [118] = {wx = 219.45000, wy = 7816.00000, flag = 2},
    [625] = {wx = 8745.78027, wy = -6654.12012, flag = 2},
    [160] = {wx = 2976.01001, wy = 5501.12988, flag = 3},
    [119] = {wx = -2729.00000, wy = 7305.29980, flag = 1},
    [205] = {wx = 6789.79004, wy = -7747.58008, flag = 3},
    [128] = {wx = -1837.22998, wy = 5301.89990, flag = 3},
    [129] = {wx = -327.35001, wy = 1020.48999, flag = 1},
    [102] = {wx = -587.40997, wy = 4101.00977, flag = 2},
    [130] = {wx = -178.09000, wy = 1026.71997, flag = 2},
    [139] = {wx = 4157.58008, wy = 2959.68994, flag = 3},
    [117] = {wx = 213.75000, wy = 6063.75000, flag = 1},
    [82] = {wx = 9375.24023, wy = -7165.89014, flag = 6},
  },
}
