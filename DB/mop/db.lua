local addonName, addon = ...
if addon.game ~= "MOP" then return end
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
    --[13] = true,--ring2
    [11] = true,--ring slotid shifted by -1 in mop
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
]]

local minLevel = 1

if addon.player.class == "DEATHKNIGHT" then
    addon.defaultGroup = "RestedXP Death Knight Start"
    minLevel = 55
elseif faction == "Horde" then
    addon.defaultGroup = "RXP MoP 1-60 (H)"
elseif faction == "Alliance" then
    addon.defaultGroup = "RXP MoP 1-60 (A)"
end

function addon.LoadDefaultGuide()
    local played
    if not addon.tracker.waitingForTimePlayed then
        local login = addon.tracker.state.login
        played = difftime(time(),login.time) + login.totalTimePlayed
    end
    if not played then
        C_Timer.After(5,addon.LoadDefaultGuide)
        return
    elseif played > 120 or UnitLevel('player') > minLevel then
        return
    end
    local defaultGuide = addon.defaultGuide
    if defaultGuide then
        --print(defaultGuide)
        addon:LoadGuideTable(addon.defaultGroup,defaultGuide)
    end
end

addon.subzoneList = {}

addon.mapId = {
["Dire Maul"] = 234,
["Mogu'shan Palace"] = 453,
["Howlingwind Cavern"] = 380,
["Cosmic"] = 946,
["Westfall"] = 52,
["Isle of Conquest"] = 169,
["1444"] = 69,
["Ban'ethil Barrow Den"] = 60,
["Darnassus"] = 89,
["Azuremyst Isle"] = 97,
["Gilneas"] = 179,
["1439"] = 62,
["Gundrak"] = 153,
["Un'Goro Crater"] = 78,
["1449"] = 78,
["1415"] = 13,
["Gallywix Labor Mine"] = 177,
["The Jade Forest"] = 371,
["1428"] = 36,
["Shrine of Seven Stars"] = 393,
["Crypt of Forgotten Kings"] = 481,
["Throne of Thunder"] = 508,
["Winterspring"] = 83,
["1443"] = 66,
["397"] = 112,
["Blade's Edge Mountains"] = 105,
["ZulDrak"] = 121,
["Tiragarde Keep"] = 3,
["1433"] = 49,
["Wailing Caverns"] = 11,
["Onyxia's Lair"] = 248,
["1454"] = 85,
["Unga Ingoo"] = 450,
["Kelp'thar Forest"] = 201,
["Blackfathom Deeps"] = 221,
["Serpentshrine Cavern"] = 332,
["Guo-Lai Halls"] = 395,
["Deeprun Tram"] = 499,
["Wintergrasp"] = 123,
["Shimmering Expanse"] = 205,
["1422"] = 22,
["Gilneas City"] = 202,
["Zul'Gurub"] = 233,
["Tanaris"] = 71,
["Stratholme"] = 317,
["Utgarde Pinnacle"] = 136,
["Amani Catacombs"] = 96,
["291"] = 55,
["Camp Narache"] = 462,
["Shadow Labyrinth"] = 260,
["Halls of Reflection"] = 185,
["Lost City of the Tol'vir"] = 277,
["The Battle for Gilneas"] = 275,
["The Deadmines"] = 55,
["Throne of the Tides"] = 322,
["Halls of Origination"] = 297,
["Deadwind Pass"] = 42,
["Shadowthread Cave"] = 58,
["Baradin Hold"] = 282,
["Shadowfang Keep"] = 310,
["The Deeper"] = 383,
["Timeless Isle"] = 554,
["Thunder Bluff"] = 88,
["1435"] = 51,
["The Slithering Scar"] = 79,
["GrizzlyHills"] = 116,
["The Forge of Souls"] = 183,
["Well of Eternity"] = 398,
["The Mechanar"] = 267,
["The Black Morass"] = 273,
["Kun-Lai Summit"] = 379,
["The Botanica"] = 266,
["Sholazar Basin"] = 119,
["New Tinkertown"] = 30,
["Pandaria"] = 424,
["Icecrown"] = 118,
["Ruins of Korune"] = 386,
["Netherstorm"] = 109,
["Tomb of Conquerors"] = 385,
["Kezan"] = 194,
["IcecrownGlacier"] = 118,
["Crystalsong Forest"] = 127,
["Dun Morogh"] = 27,
["1412"] = 7,
["The Cape of Stranglethorn"] = 210,
["Blackrock Spire"] = 250,
["Bloodmyst Isle"] = 106,
["Hrothgar's Landing"] = 170,
["Black Temple"] = 339,
["Townlong Steppes"] = 388,
["1947"] = 103,
["The Blood Furnace"] = 261,
["Proving Grounds"] = 480,
["Kalimdor"] = 12,
["Shrine of Two Moons"] = 391,
["Burning Steppes"] = 36,
["Scarlet Monastery Entrance"] = 19,
["Halls of Stone"] = 140,
["Twin Peaks"] = 206,
["CrystalsongForest"] = 127,
["BoreanTundra"] = 114,
["Hellfire Ramparts"] = 347,
["The Venture Co. Mine"] = 9,
["Durotar"] = 1,
["Silithus"] = 81,
["Jasperlode Mine"] = 40,
["Grizzly Hills"] = 116,
["Magisters' Terrace"] = 348,
["Coldridge Pass"] = 28,
["1459"] = 91,
["EPLNew"] = 23,
["Grim Batol"] = 293,
["The Bastion of Twilight"] = 294,
["Fargodeep Mine"] = 38,
["Terokkar Forest"] = 108,
["The Secrets of Ragefire"] = 522,
["Valley of Trials"] = 461,
["The Temple of Atal'Hakkar"] = 220,
["Swamp of Sorrows"] = 51,
["Eastern Plaguelands"] = 23,
["Sunstrider Isle"] = 467,
["Twilight Highlands"] = 241,
["Halls of Lightning"] = 138,
["Temple of Kotmogu"] = 417,
["Felwood"] = 77,
["The Shattered Halls"] = 246,
["The Obsidian Sanctum"] = 155,
["Silverpine Forest"] = 21,
["Stonetalon Mountains"] = 65,
["Caverns of Time"] = 74,
["Azjol-Nerub"] = 157,
["Auchenai Crypts"] = 256,
["Drak'Tharon Keep"] = 160,
["Deepwind Gorge"] = 519,
["Scarlet Monastery"] = 302,
["The Nexus"] = 129,
["Frostmane Hovel"] = 428,
["Strand of the Ancients"] = 128,
["1458"] = 998,
["Northshire"] = 425,
["Razorfen Kraul"] = 301,
["The Slave Pens"] = 265,
["Hillsbrad Foothills"] = 25,
["1948"] = 104,
["The Hinterlands"] = 26,
["Blackrock Mountain"] = 33,
["A Brewing Storm"] = 447,
["The Eye of Eternity"] = 141,
["Ruins of Ogudei"] = 419,
["Blackrock Caverns"] = 283,
["Zul'Drak"] = 121,
["Northern Stranglethorn"] = 50,
["Karazhan"] = 350,
["Hour of Twilight"] = 399,
["The Vortex Pinnacle"] = 325,
["StormwindNew"] = 84,
["Tol Barad"] = 244,
["Ruins of Ahn'Qiraj"] = 247,
["Ironforge"] = 87,
["SholazarBasin"] = 119,
["1951"] = 107,
["1941"] = 94,
["Plaguelands: The Scarlet Enclave"] = 124,
["1950"] = 106,
["Naxxramas"] = 162,
["Searing Gorge"] = 32,
["1461"] = 93,
["1457"] = 89,
["The Veiled Stair"] = 433,
["Stormstout Brewery"] = 439,
["1452"] = 83,
["Skull Rock"] = 5,
["Ashenvale"] = 63,
["Azeroth"] = 947,
["Terrace of Endless Spring"] = 456,
["The Noxious Lair"] = 72,
["1424"] = 25,
["The Swollen Vault"] = 506,
["Nagrand"] = 107,
["1440"] = 63,
["Ahn'Qiraj"] = 319,
["The Underbog"] = 262,
["Niuzao Temple"] = 389,
["Utgarde Keep"] = 133,
["Celestial Tournament"] = 571,
["Frostmane Hold"] = 470,
["1451"] = 81,
["1426"] = 27,
["1421"] = 21,
["1441"] = 64,
["Siege of Orgrimmar"] = 556,
["Shadowmoon Valley"] = 104,
["1431"] = 47,
["1460"] = 92,
["Molten Front"] = 338,
["Ammen Vale"] = 468,
["Thunder King's Citadel"] = 518,
["1434"] = 50,
["Moonglade"] = 80,
["Siege of Niuzao Temple"] = 457,
["Outland"] = 987,
["Cavern of Endless Echoes"] = 377,
["The Stonecore"] = 324,
["Badlands"] = 15,
["Temple of the Jade Serpent"] = 429,
["279"] = 11,
["Valley of the Four Winds"] = 376,
["Sunwell Plateau"] = 335,
["Echo Isles"] = 463,
["Firelands"] = 367,
["1437"] = 56,
["Gruul's Lair"] = 330,
["1949"] = 105,
["Burning Blade Coven"] = 2,
["Uldaman"] = 16,
["ScarletEnclave"] = 124,
["Redridge Mountains"] = 49,
["1447"] = 76,
["Shado-Pan Monastery"] = 443,
["Night Web's Hollow"] = 466,
["Feralas"] = 69,
["1430"] = 42,
["The Ancient Passage"] = 434,
["Eye of the Storm"] = 112,
["Northrend"] = 113,
["Old Hillsbrad Foothills"] = 274,
["Arathi Highlands"] = 14,
["The Wandering Isle"] = 378,
["Eastern Kingdoms"] = 13,
["Undercity"] = 998,
["Desolace"] = 66,
["Warsong Gulch"] = 92,
["Silvershard Mines"] = 423,
["Ahn'kahet: The Old Kingdom"] = 132,
["The Barrens"] = 10,
["1943"] = 97,
["A Little Patience"] = 487,
["EPLClassic"] = 23,
["StormwindClassic"] = 84,
["1955"] = 111,
["Dragon Soul"] = 409,
["1957"] = 122,
["1450"] = 80,
["Sethekk Halls"] = 258,
["1413"] = 10,
["Dalaran"] = 125,
["The Violet Hold"] = 168,
["1414"] = 12,
["1411"] = 1,
["Wetlands"] = 56,
["The Lost Isles"] = 174,
["Gol'Bolar Quarry"] = 31,
["Abyssal Depths"] = 204,
["1436"] = 52,
["Orgrimmar"] = 85,
["Oona Kagu"] = 375,
["Borean Tundra"] = 114,
["Mogu'shan Vaults"] = 471,
["Volcanoth's Lair"] = 176,
["Pranksters' Hollow"] = 381,
["1445"] = 70,
["Ruins of Gilneas City"] = 218,
["End Time"] = 401,
["Gold Coast Quarry"] = 53,
["Mount Hyjal"] = 198,
["Coldridge Valley"] = 427,
["Hyjal Summit"] = 329,
["Greenstone Quarry"] = 372,
["Blackwing Lair"] = 287,
["280"] = 67,
["Gnomeregan"] = 226,
["1418"] = 15,
["Western Plaguelands"] = 22,
["1425"] = 26,
["Tides' Hollow"] = 98,
["The Widow's Wail"] = 374,
["Jangolode Mine"] = 54,
["1423"] = 23,
["Brewmoon Festival"] = 452,
["Gate of the Setting Sun"] = 437,
["Alterac Valley"] = 91,
["Howling Fjord"] = 117,
["Pit of Saron"] = 184,
["Greymane Manor"] = 181,
["1456"] = 88,
["Isle of Giants"] = 507,
["1417"] = 14,
["Vale of Eternal Blossoms"] = 390,
["1427"] = 32,
["Molten Core"] = 232,
["Razorfen Downs"] = 300,
["Spitescale Cavern"] = 464,
["Throne of the Four Winds"] = 328,
["ScholomanceOLD"] = 306,
["1952"] = 108,
["Kaja'mite Cavern"] = 175,
["Emberstone Mine"] = 180,

["TheStormPeaks"] = 120,
["HowlingFjord"] = 117,

["Blackrock Depths"] = 242,
["Silvermoon City"] = 110,

["Eversong Woods"] = 94,

["1420"] = 18,
["Palemane Rock"] = 8,
["Maraudon"] = 67,

["Trial of the Crusader"] = 172,
["Heart of Fear"] = 474,
["Stormwind City"] = 84,

["Mana-Tombs"] = 272,
["The Culling of Stratholme"] = 130,
["Darkmoon Island"] = 407,
["The Stockade"] = 225,
["230"] = 16,

["Deepholm"] = 207,

["Darkshore"] = 62,
["The Ruby Sanctum"] = 200,
["Stranglethorn Vale"] = 224,
["Ruins of Gilneas"] = 217,
["Tirisfal Glades"] = 18,

["Teldrassil"] = 57,
["Trial of the Champion"] = 171,
["Dustwallow Marsh"] = 70,
["Fel Rock"] = 59,
["Azshara"] = 76,
["The Steamvault"] = 263,
["Ahn'Qiraj: The Fallen Kingdom"] = 327,
["Zangarmarsh"] = 102,

["The Exodar"] = 103,
["1953"] = 109,
["Scarlet Halls"] = 431,
["Tol Barad Peninsula"] = 245,
["Dagger in the Dark"] = 488,
["Zul'Farrak"] = 219,
["1954"] = 110,
["Deathknell"] = 465,
["The Grizzled Den"] = 29,
["The Oculus"] = 142,
["Tempest Keep"] = 334,

["Hellfire Peninsula"] = 100,
["Ulduar"] = 147,
["1442"] = 65,
["1946"] = 102,
["1455"] = 87,
["Zul'Aman"] = 333,
["The Gaping Chasm"] = 73,
["Elwynn Forest"] = 37,
["1432"] = 48,
["Icecrown Citadel"] = 186,
["Cavern of Lost Spirits"] = 555,
["1438"] = 57,

["1446"] = 71,
["Brawl'gar Arena"] = 503,
["Lightning Vein Mine"] = 505,
["Arathi Basin"] = 93,
["Dustwind Cave"] = 6,
["Loch Modan"] = 48,

["Stillpine Hold"] = 99,
["The Storm Peaks"] = 120,
["Dragonblight"] = 115,

["Shattrath City"] = 111,

["Battle on the High Seas"] = 524,
["1453"] = 84,
["StormPeaks"] = 120,
["Vault of Archavon"] = 156,
["Vashj'ir"] = 203,
["Isle of Thunder"] = 504,
["The Maelstrom"] = 276,
["Duskwood"] = 47,
["1448"] = 77,
["Scholomance"] = 476,
["Knucklethump Hole"] = 382,
["Ghostlands"] = 95,
["Shadowglen"] = 460,
["Echo Ridge Mine"] = 426,
["Southern Barrens"] = 199,
["Ragefire Chasm"] = 213,
["Dread Wastes"] = 422,
["Blasted Lands"] = 17,
["Isle of Quel'Danas"] = 122,
["Mulgore"] = 7,
["1942"] = 95,
["1944"] = 100,
["Kaja'mine"] = 195,
["Thousand Needles"] = 64,

["Twilight's Run"] = 82,
["1419"] = 17,
["Magtheridon's Lair"] = 331,

["Blackwing Descent"] = 285,
["Assault on Zan'vess"] = 451,
["Uldum"] = 249,
["Krasarang Wilds"] = 418,
["1429"] = 37,
["The Arcatraz"] = 269,
}

for zone,id in pairs(addon.mapId) do
	if not tonumber(zone) then
	    local map = C_Map.GetMapInfo(id)
		--addon.mapId[map.name] = i

        local mapType = map.mapType
        if mapType >= 3 and mapType ~= 4 then
            local parentId = map.parentMapID
            local parent = parentId and C_Map.GetMapInfo(parentId)
            if parent and parent.mapType == 3 then
                local t = addon.subzoneList[parentId]
                if not t then
                    t = {}
                    addon.subzoneList[parentId] = t
                end
                table.insert(t,id)
            end
        end
	end
end

addon.professionID = {
    alchemy = {2259, 3101, 3464, 11611, 28596, 51304},
    archaeology = {89718, 89720, 110393, 89719, 78670, 89722, 89721, 88961},
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


addon.mapConversion = addon.mapConversion or {}


--See TaxiNodes dbc table for reference
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
    [32] = {wx = -3825.37012, wy = -4516.58008, flag = 9},
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
  [870] = {
    [1090] = {wx = -570.40503, wy = 3859.79004, flag = 3},
    [1115] = {wx = 234.40601, wy = 2198.03003, flag = 1},
    [1117] = {wx = 2123.14990, wy = 2584.92993, flag = 2},
    [1056] = {wx = 1803.31995, wy = 4204.22998, flag = 3},
    [1070] = {wx = 172.66299, wy = 3152.25000, flag = 3},
    [1072] = {wx = 982.67700, wy = 3451.86011, flag = 3},
    [1080] = {wx = 465.85599, wy = -1558.56006, flag = 3},
    [1294] = {wx = -404.95001, wy = -4608.56006, flag = 2},
    [1029] = {wx = 784.89899, wy = -203.67000, flag = 3},
    [1293] = {wx = -901.37000, wy = -4639.12012, flag = 1},
    [1222] = {wx = 5799.64014, wy = 1080.56995, flag = 2},
    [1221] = {wx = 5753.75977, wy = 1255.55005, flag = 1},
    [1195] = {wx = -1752.18994, wy = 2492.02002, flag = 2},
    [1190] = {wx = -1193.56006, wy = -1193.69995, flag = 1},
    [1053] = {wx = 2363.22998, wy = 2994.38989, flag = 3},
    [1073] = {wx = 611.36499, wy = 2125.03003, flag = 3},
    [1071] = {wx = -1086.20996, wy = 3136.18994, flag = 3},
    [1058] = {wx = 1580.16003, wy = 894.16699, flag = 2},
    [1057] = {wx = 896.45300, wy = 334.35101, flag = 1},
    [1055] = {wx = 1531.72998, wy = 3963.69995, flag = 3},
    [1018] = {wx = 3504.04004, wy = 690.67700, flag = 3},
    [895] = {wx = 1503.70996, wy = -1832.13000, flag = 3},
    [1022] = {wx = 3124.52002, wy = 1224.28003, flag = 3},
    [1020] = {wx = 2103.35010, wy = 1463.82996, flag = 1},
    [1054] = {wx = 1440.71997, wy = 2804.48999, flag = 3},
    [992] = {wx = -2082.30005, wy = 1483.63000, flag = 3},
    [987] = {wx = -878.27600, wy = 171.40300, flag = 6},
    [988] = {wx = -1125.31006, wy = -227.74699, flag = 1},
    [984] = {wx = 543.91498, wy = -637.81403, flag = 7},
    [973] = {wx = 2927.15991, wy = -509.18399, flag = 2},
    [1052] = {wx = 460.54001, wy = -100.46700, flag = 3},
    [969] = {wx = 2550.76001, wy = -2418.32007, flag = 3},
    [971] = {wx = 2505.89990, wy = -1590.89001, flag = 3},
    [1019] = {wx = 2250.59009, wy = 931.56897, flag = 2},
    [966] = {wx = -307.20001, wy = -1762.77002, flag = 1},
    [894] = {wx = 1418.56995, wy = -487.70300, flag = 6},
    [986] = {wx = -375.68399, wy = -647.96503, flag = 3},
    [985] = {wx = -221.32600, wy = 464.55899, flag = 3},
    [991] = {wx = -1156.60999, wy = 1770.38000, flag = 5},
    [989] = {wx = -436.54001, wy = 1886.69995, flag = 3},
    [1024] = {wx = 1880.58997, wy = 2088.58008, flag = 3},
    [990] = {wx = -1685.68005, wy = 1590.33997, flag = 2},
    [967] = {wx = 1600.66003, wy = -2530.27002, flag = 3},
    [993] = {wx = -2504.09009, wy = 491.58301, flag = 3},
    [970] = {wx = 2400.75000, wy = -2099.42993, flag = 3},
    [968] = {wx = 773.24701, wy = -2358.95996, flag = 3},
    [1017] = {wx = 1690.10999, wy = 303.95801, flag = 3},
    [972] = {wx = -186.09700, wy = -2594.61011, flag = 1},
    [1021] = {wx = 4362.95996, wy = 932.11798, flag = 3},
    [1023] = {wx = 2716.42993, wy = 2163.31006, flag = 3},
    [1025] = {wx = 3151.85010, wy = 2677.76001, flag = 3},
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
