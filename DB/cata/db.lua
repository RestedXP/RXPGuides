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

--Which invslot to check for heirlooms
addon.heirlooms = {
    [3] = true,--shoulder
    [5] = true,--chest
    [12] = true,--ring1
    [13] = true,--ring2
    [1] = true,--head
    [15] = true,--cloak
}

local _,class = UnitClass("player")

--[[
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
]]

if faction == "Horde" then
    addon.defaultGroup = "RestedXP Horde 1-30"
elseif faction == "Alliance" then
    addon.defaultGroup = "RestedXP Alliance 1-20"
end


addon.mapId = {
    ["Dire Maul"] = 234,
    ["Eye of the Storm"] = 397,
    ["Dragonblight"] = 115,
    ["The Cape of Stranglethorn"] = 210,
    ["Blackrock Spire"] = 250,
    ["Razorfen Downs"] = 300,
    ["Hrothgar's Landing"] = 170,
    ["Black Temple"] = 339,
    ["Westfall"] = 1436,
    ["Abyssal Depths"] = 204,
    ["The Eye of Eternity"] = 141,
    ["Eastern Kingdoms"] = 1415,
    ["Blackrock Caverns"] = 283,
    ["Zul'Aman"] = 333,
    ["Zul'Drak"] = 121,
    ["Kalimdor"] = 1414,
    ["Karazhan"] = 350,
    ["Ahn'kahet: The Old Kingdom"] = 132,
    ["The Barrens"] = 1413,
    ["Hour of Twilight"] = 399,
    ["The Vortex Pinnacle"] = 325,
    ["StormwindNew"] = 1453,
    ["Darnassus"] = 1457,
    ["Azuremyst Isle"] = 1943,
    ["Gilneas"] = 179,
    ["Ruins of Ahn'Qiraj"] = 247,
    ["Dragon Soul"] = 409,
    ["Gundrak"] = 153,
    ["Sethekk Halls"] = 258,
    ["Un'Goro Crater"] = 1449,
    ["Ironforge"] = 1455,
    ["Dalaran"] = 125,
    ["The Violet Hold"] = 168,
    ["Western Plaguelands"] = 1422,
    ["Wetlands"] = 1437,
    ["SholazarBasin"] = 119,
    ["Halls of Stone"] = 140,
    ["Plaguelands: The Scarlet Enclave"] = 124,
    ["Twin Peaks"] = 206,
    ["CrystalsongForest"] = 127,
    ["Arathi Basin"] = 1461,
    ["BoreanTundra"] = 114,
    ["Ruins of Gilneas City"] = 218,
    ["Naxxramas"] = 162,
    ["Searing Gorge"] = 1427,
    ["End Time"] = 401,
    ["Blade's Edge Mountains"] = 1949,
    ["Hyjal Summit"] = 329,
    ["Hellfire Ramparts"] = 347,
    ["Vault of Archavon"] = 156,
    ["Wailing Caverns"] = 279,
    ["Onyxia's Lair"] = 248,
    ["Grizzly Hills"] = 116,
    ["Bloodmyst Isle"] = 1950,
    ["EPLClassic"] = 1423,
    ["StormwindClassic"] = 1453,
    ["Hellfire Peninsula"] = 1944,
    ["Well of Eternity"] = 398,
    ["ZulDrak"] = 121,
    ["Winterspring"] = 1452,
    ["StormPeaks"] = 120,
    ["Magisters' Terrace"] = 348,
    ["Pit of Saron"] = 184,
    ["Azeroth"] = 947,
    ["Mount Hyjal"] = 198,
    ["Isle of Quel'Danas"] = 1957,
    ["Kelp'thar Forest"] = 201,
    ["Shattrath City"] = 1955,
    ["Blackfathom Deeps"] = 221,
    ["Silvermoon City"] = 1954,
    ["Sholazar Basin"] = 119,
    ["Silithus"] = 1451,
    ["Warsong Gulch"] = 1460,
    ["Serpentshrine Cavern"] = 332,
    ["EPLNew"] = 1423,
    ["Shadowmoon Valley"] = 1948,
    ["The Hinterlands"] = 1425,
    ["Zangarmarsh"] = 1946,
    ["HowlingFjord"] = 117,
    ["Grim Batol"] = 293,
    ["ScholomanceOLD"] = 306,
    ["The Bastion of Twilight"] = 294,
    ["Ghostlands"] = 1942,
    ["Blackrock Depths"] = 242,
    ["Eversong Woods"] = 1941,
    ["Nagrand"] = 1951,
    ["Alterac Valley"] = 1459,
    ["Undercity"] = 1458,
    ["Wintergrasp"] = 123,
    ["Shimmering Expanse"] = 205,
    ["Blasted Lands"] = 1419,
    ["Stormwind City"] = 1453,
    ["TheStormPeaks"] = 120,
    ["Terokkar Forest"] = 1952,
    ["Moonglade"] = 1450,
    ["Felwood"] = 1448,
    ["Ahn'Qiraj"] = 319,
    ["Gilneas City"] = 202,
    ["The Underbog"] = 262,
    ["Tempest Keep"] = 334,
    ["Arathi Highlands"] = 1417,
    ["Dustwallow Marsh"] = 1445,
    ["The Blood Furnace"] = 261,
    ["Utgarde Keep"] = 133,
    ["Maraudon"] = 280,
    ["Desolace"] = 1443,
    ["Trial of the Crusader"] = 172,
    ["Tanaris"] = 1446,
    ["Stratholme"] = 317,
    ["Borean Tundra"] = 114,
    ["Utgarde Pinnacle"] = 136,
    ["Thousand Needles"] = 1441,
    ["The Temple of Atal'Hakkar"] = 220,
    ["Ashenvale"] = 1440,
    ["Darkshore"] = 1439,
    ["Swamp of Sorrows"] = 1435,
    ["Deepholm"] = 207,
    ["Teldrassil"] = 1438,
    ["The Culling of Stratholme"] = 130,
    ["Northern Stranglethorn"] = 1434,
    ["Stranglethorn Vale"] = 224,
    ["Halls of Reflection"] = 185,
    ["Redridge Mountains"] = 1433,
    ["Lost City of the Tol'vir"] = 277,
    ["The Battle for Gilneas"] = 275,
    ["Loch Modan"] = 1432,
    ["The Deadmines"] = 291,
    ["Halls of Lightning"] = 138,
    ["Throne of the Tides"] = 322,
    ["Halls of Origination"] = 297,
    ["Duskwood"] = 1431,
    ["Deadwind Pass"] = 1430,
    ["Elwynn Forest"] = 1429,
    ["Burning Steppes"] = 1428,
    ["Baradin Hold"] = 282,
    ["Dun Morogh"] = 1426,
    ["Shadowfang Keep"] = 310,
    ["The Exodar"] = 1947,
    ["The Shattered Halls"] = 246,
    ["Kezan"] = 194,
    ["Tol Barad Peninsula"] = 245,
    ["Molten Front"] = 338,
    ["Eastern Plaguelands"] = 1423,
    ["Silverpine Forest"] = 1421,
    ["Zul'Farrak"] = 219,
    ["Scarlet Monastery"] = 302,
    ["Thunder Bluff"] = 1456,
    ["Badlands"] = 1418,
    ["Stonetalon Mountains"] = 1442,
    ["Mulgore"] = 1412,
    ["Durotar"] = 1411,
    ["Azjol-Nerub"] = 157,
    ["Ulduar"] = 147,
    ["Auchenai Crypts"] = 256,
    ["Drak'Tharon Keep"] = 160,
    ["Cosmic"] = 946,
    ["Outland"] = 987,
    ["Darkmoon Island"] = 407,
    ["GrizzlyHills"] = 116,
    ["The Forge of Souls"] = 183,
    ["The Ruby Sanctum"] = 200,
    ["Tol Barad"] = 244,
    ["The Mechanar"] = 267,
    ["The Nexus"] = 129,
    ["The Black Morass"] = 273,
    ["Northrend"] = 113,
    ["Old Hillsbrad Foothills"] = 274,
    ["Isle of Conquest"] = 169,
    ["Orgrimmar"] = 1454,
    ["Ruins of Gilneas"] = 217,
    ["Zul'Gurub"] = 233,
    ["Tirisfal Glades"] = 1420,
    ["Shadow Labyrinth"] = 260,
    ["Sunwell Plateau"] = 335,
    ["Azshara"] = 1447,
    ["Magtheridon's Lair"] = 331,
    ["The Botanica"] = 266,
    ["Gruul's Lair"] = 330,
    ["The Lost Isles"] = 174,
    ["Twilight Highlands"] = 241,
    ["Trial of the Champion"] = 171,
    ["Firelands"] = 367,
    ["Icecrown"] = 118,
    ["Strand of the Ancients"] = 128,
    ["Netherstorm"] = 1953,
    ["The Steamvault"] = 263,
    ["Ahn'Qiraj: The Fallen Kingdom"] = 327,
    ["Throne of the Four Winds"] = 328,
    ["Molten Core"] = 232,
    ["Uldaman"] = 230,
    ["ScarletEnclave"] = 124,
    ["Blackwing Descent"] = 285,
    ["The Stonecore"] = 324,
    ["Southern Barrens"] = 199,
    ["Ragefire Chasm"] = 213,
    ["Icecrown Citadel"] = 186,
    ["The Obsidian Sanctum"] = 155,
    ["Vashj'ir"] = 203,
    ["IcecrownGlacier"] = 118,
    ["Blackwing Lair"] = 287,
    ["Howling Fjord"] = 117,
    ["Crystalsong Forest"] = 127,
    ["The Maelstrom"] = 276,
    ["Mana-Tombs"] = 272,
    ["Razorfen Kraul"] = 301,
    ["The Slave Pens"] = 265,
    ["Uldum"] = 249,
    ["Feralas"] = 1444,
    ["The Storm Peaks"] = 120,
    ["Gnomeregan"] = 226,
    ["The Stockade"] = 225,
    ["The Oculus"] = 142,
    ["Hillsbrad Foothills"] = 1424,
    ["The Arcatraz"] = 269,
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


local mapOverride = {
    [1454] = true,
}

for i = 1, 2200 do
    local map = C_Map.GetMapInfo(i)
    if map and (not addon.mapId[map.name] or mapOverride[i]) then
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
