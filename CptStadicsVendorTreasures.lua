--[[
Cpt. Stadics' Vendor Treasures
Derived from https://www.curseforge.com/wow/addons/cpt-stadics-map-of-vendor-treasures

Creative Commons Attribution-NonCommercial 3.0 Unported https://creativecommons.org/licenses/by-nc/3.0/
]] local _, addon = ...
local L = addon.locale.Get
local build = select(4, GetBuildInfo())
if build > 40000 then return end
local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")

local GetItemInfo = C_Item and C_Item.GetItemInfo or _G.GetItemInfo
local GetItemQualityColor = C_Item and C_Item.GetItemQualityColor or _G.GetItemQualityColor

local GameTooltip, WorldMapFrame = _G.GameTooltip, _G.WorldMapFrame
local UnitOnTaxi, GetBestMapForUnit, GetPlayerMapPosition = _G.UnitOnTaxi, C_Map.GetBestMapForUnit,
                                                            C_Map.GetPlayerMapPosition
local pairs, tinsert = pairs, table.insert
local HORDE, ALLIANCE, NEUTRAL = "Horde", "Alliance", "Neutral"

addon.VendorTreasures = addon:NewModule("VendorTreasures")

-- New Pin owner
local PIN_OWNER = addon.VendorTreasures

local RARE_ADDON_NAME = L"Cpt. Stadics' Vendor Treasures"
local ICON_PATH = "Interface/GossipFrame/VendorGossipIcon.blp"
local TOOLTIP_LOOT_INDEX = 1
local DISTANCE_NPCS = {}
local DISTANCE_THRESHOLD = 0.01

local CLASS_POTION = L"Potion Vendor"
local CLASS_GEAR = L"Gear Vendor"

local CLASS_COLORS = {}
CLASS_COLORS[CLASS_POTION] = {1, 0.82, 0}
CLASS_COLORS[CLASS_GEAR] = {0.12, 1.0, 0.0}

-- TODO addon.mapId
-- Kalimdor
local ZONE_TELDRASSIL = 1438;
local ZONE_WINTERSPRING = 1452;
local ZONE_DARKSHORE = 1439;
local ZONE_FELWOOD = 1448;
local ZONE_AZSHARA = 1447;
local ZONE_ASHENVALE = 1440;
local ZONE_STONETALON_MOUNTAINS = 1442;
local ZONE_DUROTAR = 1411;
local ZONE_BARRENS = 1413;
local ZONE_DESOLACE = 1443;
local ZONE_MULGORE = 1412;
local ZONE_DUSTWALLOW_MARSH = 1445;
local ZONE_FERALAS = 1444;
local ZONE_THOUSAND_NEEDLES = 1441;
local ZONE_TANARIS = 1446;
local ZONE_UNGORO_CRATER = 1449;
local ZONE_SILITHUS = 1451;
local ZONE_ORGRIMMAR = 1454;
local ZONE_THUNDERBLUFF = 1456;
local ZONE_DARNASSUS = 1457;
local ZONE_MOONGLADE = 1450;

-- Eastern Kingdoms
local ZONE_EASTERN_PLAGUELANDS = 1423;
local ZONE_WESTERN_PLAGUELANDS = 1422;
local ZONE_TIRISFAL_GLADES = 1420;
local ZONE_ALTERAC_MOUNTAINS = 1416;
local ZONE_SILVERPINE_FOREST = 1421;
local ZONE_HINTERLANDS = 1425;
local ZONE_HILLSBRAD_FOOTHILLS = 1424;
local ZONE_ARATHI_HIGHLANDS = 1417;
local ZONE_WETLANDS = 1437;
local ZONE_LOCH_MODAN = 1432;
local ZONE_DUN_MOROGH = 1426;
local ZONE_BADLANDS = 1418;
local ZONE_BURNING_STEPPES = 1428;
local ZONE_SEARING_GORGE = 1427;
local ZONE_REDRIDGE_MOUNTAINS = 1433;
local ZONE_ELWYNN_FOREST = 1429;
local ZONE_SWAMP_OF_SORROWS = 1435;
local ZONE_DUSKWOOD = 1431;
local ZONE_WESTFALL = 1436;
local ZONE_BLASTED_LANDS = 1419;
local ZONE_STRANGLETHORN_VALE = 1434;
local ZONE_STORMWIND_CITY = 1453;
local ZONE_IRONFORGE = 1455;
local ZONE_UNDERCITY = 1458;

local DELAY = 5 -- Seconds
local DATA = {}

local WORLD_MAP_ID = -1
local WORLD_MAP_PIN_SIZE = 18

local MINI_MAP_ID = -1;
local MINI_MAP_PIN_SIZE = 12;

local PLAYER_MAP_ID = -1;

local Frame = CreateFrame("Frame", "RXP_" .. RARE_ADDON_NAME)

function Frame:InitializeZones()
    -- ZONE, NAME, X, Y, CLASS, FACTION, LOOT

    -- Azshara
    Frame:SetZoneNPCData(ZONE_AZSHARA, L"Brinna Valanaar", 12.0, 78.2, CLASS_GEAR, ALLIANCE, {11305})

    -- Azshara
    Frame:SetZoneNPCData(ZONE_MOONGLADE, L"Kharedon", 56.6, 29.8, CLASS_GEAR, NEUTRAL, {12254})

    -- Ashenvale
    Frame:SetZoneNPCData(ZONE_ASHENVALE, L"Harklan & Bhaldaran", 50.8, 67.0, CLASS_GEAR, ALLIANCE, {11305, 929, 3385})

    -- Stonetalon Mountains
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, L"Veenix", 58.2, 51.6, CLASS_GEAR, NEUTRAL, {4818, 4817, 4838, 4837});
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, L"Jeeda", 47.6, 61.6, CLASS_POTION, HORDE, {3385, 929});
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, L"Borand", 45.2, 59.2, CLASS_GEAR, HORDE, {11304});
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, L"Nizzik", 62.6, 40.2, CLASS_GEAR, NEUTRAL,
                         {4835, 4833, 4831, 4830, 4832, 4829, 4827, 4828})

    -- The Barrens
    Frame:SetZoneNPCData(ZONE_BARRENS, L"Kiknikle & Pizznukle", 41.8, 38.6, CLASS_GEAR, NEUTRAL,
                         {4781, 4782, 4786, 4788, 4789});
    Frame:SetZoneNPCData(ZONE_BARRENS, L"Lizzarik", 59, 38.2, CLASS_GEAR, NEUTRAL, {4778, 4777, 4765, 4766, 858, 2455});
    Frame:SetZoneNPCData(ZONE_BARRENS, L"Grazlix & Vexspindle", 62.2, 38.4, CLASS_GEAR, NEUTRAL,
                         {4798, 4799, 4820, 4816, 4800, 4821, 4822, 4794, 4795, 4796})
    Frame:SetZoneNPCData(ZONE_BARRENS, L"Vrang Wildgore", 43.8, 12.2, CLASS_GEAR, HORDE,
                         {4800, 4816, 4778, 4777, 4798, 4799})
    Frame:SetZoneNPCData(ZONE_BARRENS, L"Halija Whitestrider", 52.2, 31.8, CLASS_GEAR, HORDE,
                         {4793, 4792, 4781, 4786, 4782})
    Frame:SetZoneNPCData(ZONE_BARRENS, L"Uthrok & Nargal Deatheye", 51.0, 29.0, CLASS_GEAR, HORDE, {11304, 4765, 4766})

    -- Desolace
    Frame:SetZoneNPCData(ZONE_DESOLACE, L"Vendor-Tron 1000", 60.2, 38.2, CLASS_POTION, NEUTRAL, {3827, 1710})
    Frame:SetZoneNPCData(ZONE_DESOLACE, L"Hae'Wilani", 25.8, 71.0, CLASS_GEAR, HORDE, {12250, 12249})

    -- Dustwallow Marsh
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, L"Zulrg & Zanara", 36.2, 31.6, CLASS_GEAR, HORDE, {12251, 12250, 11305});
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, L"Balai Lok'Wein", 36.4, 30.2, CLASS_POTION, HORDE,
                         {929, 3385, 1711, 2290, 1478, 1712, 954, 3012})
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, L"Piter Verance", 67.4, 47.8, CLASS_GEAR, ALLIANCE,
                         {4835, 4833, 4825, 4824, 4826, 4832, 4830, 4831, 4818, 4817})
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, L"Marie Holdston", 64.6, 50.0, CLASS_GEAR, ALLIANCE, {12248, 12250})
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, L"Jensen Farran", 67.8, 49.8, CLASS_GEAR, ALLIANCE, {11305})
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, L"Uma Bartulm", 64.0, 47.6, CLASS_POTION, ALLIANCE, {1710, 3827})

    -- Feralas
    Frame:SetZoneNPCData(ZONE_FERALAS, L"Logannas", 32.6, 44.0, CLASS_POTION, ALLIANCE, {3928, 6149})
    Frame:SetZoneNPCData(ZONE_FERALAS, L"Bronk", 76.0, 43.4, CLASS_POTION, HORDE, {3928, 6149})
    Frame:SetZoneNPCData(ZONE_FERALAS, L"Cawind Trueaim", 74.8, 45.6, CLASS_GEAR, HORDE, {11308})
    Frame:SetZoneNPCData(ZONE_FERALAS, L"Worb Strongstich", 74.6, 42.6, CLASS_GEAR, HORDE, {12254, 12253})

    -- Thousand Needles
    Frame:SetZoneNPCData(ZONE_THOUSAND_NEEDLES, L"Starn & Montarr", 45.0, 50.6, CLASS_GEAR, HORDE,
                         {11305, 11304, 929, 1711, 2290, 1478, 1712})

    -- Winterspring
    Frame:SetZoneNPCData(ZONE_WINTERSPRING, L"Evie Whirlbrew", 60.8, 37.8, CLASS_POTION, NEUTRAL, {3928, 6149})

    -- Eastern Plaguelands
    Frame:SetZoneNPCData(ZONE_EASTERN_PLAGUELANDS, L"Augustus the Touched", 14.4, 33.6, CLASS_GEAR, NEUTRAL, {15902})

    -- Tirisfall Glades
    Frame:SetZoneNPCData(ZONE_TIRISFAL_GLADES, L"Selina Weston", 61.8, 50.0, CLASS_POTION, HORDE, {858})

    -- Alterac Mountains
    Frame:SetZoneNPCData(ZONE_ALTERAC_MOUNTAINS, L"Bro'Kin", 38.4, 38.8, CLASS_POTION, NEUTRAL, {14634, 3827, 1710})

    -- Silverpine Forest
    Frame:SetZoneNPCData(ZONE_SILVERPINE_FOREST, L"Alexandre, Andrea, Nadia & Edwin", 44.6, 39.2, CLASS_GEAR, HORDE,
                         {11304, 4788, 4789, 4781, 4786, 4782, 858})
    Frame:SetZoneNPCData(ZONE_SILVERPINE_FOREST, L"Wallace the Blind", 46.4, 86.4, CLASS_GEAR, NEUTRAL,
                         {4818, 4817, 4778, 4777, 11304, 929})

    -- Hillsbrad Foothills
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, L"Kirs Legace", 80.0, 39.0, CLASS_GEAR, NEUTRAL,
                         {4832, 4830, 4831, 4794, 4795, 4796})
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, L"Zixil", 55.6, 34.6, CLASS_GEAR, NEUTRAL, {4829, 4827, 4828, 4838})
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, L"Ott", 60.4, 26.0, CLASS_GEAR, HORDE,
                         {12247, 12249, 4825, 4824, 4826, 4818, 4817})
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, L"Robert & Nandar", 51.2, 57.0, CLASS_GEAR, ALLIANCE,
                         {4835, 4833, 4798, 4816, 4799, 4800, 1710, 3827})

    -- Arathi Highlands
    Frame:SetZoneNPCData(ZONE_ARATHI_HIGHLANDS, L"Deneb Walker", 27.0, 58.8, CLASS_POTION, ALLIANCE,
                         {3385, 929, 1711, 2290, 1478, 1712})
    Frame:SetZoneNPCData(ZONE_ARATHI_HIGHLANDS, L"Drovnar Strongbrew", 46.4, 47.0, CLASS_POTION, ALLIANCE, {3827, 1710})
    Frame:SetZoneNPCData(ZONE_ARATHI_HIGHLANDS, L"Mu'uta", 72.6, 33.6, CLASS_GEAR, HORDE, {11305})

    -- Wetlands
    Frame:SetZoneNPCData(ZONE_WETLANDS, L"Kixxle", 50.2, 37.8, CLASS_POTION, NEUTRAL, {929})
    Frame:SetZoneNPCData(ZONE_WETLANDS, L"Wenna Silkbeard", 25.6, 25.8, CLASS_GEAR, ALLIANCE,
                         {4835, 4833, 4831, 4830, 4832, 4829, 4827, 4828})
    Frame:SetZoneNPCData(ZONE_WETLANDS, L"Naela Trance & Brak Durnad", 11.2, 58.6, CLASS_GEAR, ALLIANCE,
                         {11304, 4818, 4817})
    Frame:SetZoneNPCData(ZONE_WETLANDS, L"Jennabink & Dewin", 8.0, 55.8, CLASS_GEAR, ALLIANCE,
                         {4829, 4827, 4828, 4793, 4792, 929})
    Frame:SetZoneNPCData(ZONE_WETLANDS, L"Samor Festivus", 10.4, 60.2, CLASS_POTION, ALLIANCE, {929})
    Frame:SetZoneNPCData(ZONE_WETLANDS, L"Dark Iron Entrepreneur", 46.6, 18.2, CLASS_GEAR, NEUTRAL,
                         {4835, 4833, 4825, 4824, 4826, 4832, 4830, 4831})

    -- Loch Modan
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, L"Kat Sampson & Cliff Hadin", 82.6, 64.0, CLASS_GEAR, ALLIANCE,
                         {4788, 4789, 11304})
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, L"Morhan Coppertongue", 34.0, 46.6, CLASS_GEAR, ALLIANCE, {4765, 4766})
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, L"Aldren Cordon", 64.8, 66.0, CLASS_GEAR, ALLIANCE, {4781, 4786, 4782})
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, L"Nillen Andemar", 42.8, 10.0, CLASS_GEAR, ALLIANCE, {4778, 4777})

    -- Redridge Mountains
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, L"Franklin Hamar", 27.2, 45.4, CLASS_GEAR, ALLIANCE, {4781, 4786, 4782})
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, L"Kara Adams", 30.6, 46.6, CLASS_GEAR, ALLIANCE, {4820, 4821, 4822})
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, L"Captured Servant of Azora", 74.6, 79.6, CLASS_GEAR, ALLIANCE,
                         {4793, 4792})
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, L"Bernard Brubaker", 88.2, 71.6, CLASS_GEAR, ALLIANCE,
                         {4794, 4795, 4796})

    -- Elwynn Forest
    Frame:SetZoneNPCData(ZONE_ELWYNN_FOREST, L"Antonio Perelli", 42.6, 66.6, CLASS_GEAR, ALLIANCE,
                         {4794, 4795, 4796, 4818, 4817, 4778, 4777, 858})
    Frame:SetZoneNPCData(ZONE_ELWYNN_FOREST, L"Dawn Brightstar", 64.8, 69.2, CLASS_POTION, ALLIANCE,
                         {858, 2455, 954, 3012, 955, 1180, 1181, 3013})

    -- Swamp of Sorrows
    Frame:SetZoneNPCData(ZONE_SWAMP_OF_SORROWS, L"Masat T'andr", 26.4, 31.6, CLASS_GEAR, NEUTRAL, {12254, 12253})
    Frame:SetZoneNPCData(ZONE_SWAMP_OF_SORROWS, L"Thralosh", 45.0, 51.6, CLASS_GEAR, HORDE, {12255, 12256})
    Frame:SetZoneNPCData(ZONE_SWAMP_OF_SORROWS, L"Thultazor & Rartar", 45.0, 51.6, CLASS_POTION, HORDE, {3928, 6149})

    -- Duskwood
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, L"Kzixx", 81.8, 19.8, CLASS_GEAR, NEUTRAL,
                         {4829, 4827, 4828, 4838, 4837, 3385, 929})
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, L"Bliztik", 18.0, 54.6, CLASS_POTION, NEUTRAL, {3385, 929})
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, L"Avette Fellwood", 73.2, 44.8, CLASS_GEAR, ALLIANCE, {11304})
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, L"Morg & Gaving Gnarltree", 73.8, 48.6, CLASS_GEAR, ALLIANCE,
                         {4798, 4816, 4799, 4800, 12247, 12249})

    -- Westfall
    Frame:SetZoneNPCData(ZONE_WESTFALL, L"Defias Profiteer", 43.4, 66.8, CLASS_GEAR, NEUTRAL, {4788, 4789})
    Frame:SetZoneNPCData(ZONE_WESTFALL, L"William MacGregor", 57.6, 53.8, CLASS_GEAR, ALLIANCE, {11304})

    -- Blasted Lands
    Frame:SetZoneNPCData(ZONE_BLASTED_LANDS, L"Nina Lightbrew", 66.8, 18.6, CLASS_POTION, ALLIANCE, {3928, 6149})

    -- Stranglethorn Vale
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, L"Jutak", 27.4, 77.4, CLASS_GEAR, NEUTRAL, {12248})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, L"Vharr", 32.2, 28.0, CLASS_GEAR, HORDE, {12248, 12250})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, L"Zarena & Kizz & Haren", 28.4, 75.4, CLASS_GEAR, NEUTRAL,
                         {12251, 12252, 4778, 4777, 11305})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, L"Glyx Brewright", 28.0, 78.0, CLASS_POTION, NEUTRAL, {1710, 3827})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, L"Jaquilina Dramet", 35.6, 10.6, CLASS_GEAR, NEUTRAL, {12250})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, L"Fargon Mortalak", 29.0, 75.0, CLASS_GEAR, NEUTRAL, {12257})

    -- Stormwind City
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, L"Charys Yserian", 32.4, 80.0, CLASS_GEAR, ALLIANCE,
                         {4825, 4824, 4826, 4829, 4827, 4828, 3385, 929})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, L"Frederick Stover", 50.2, 57.4, CLASS_GEAR, ALLIANCE,
                         {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, L"Marda Weller", 57.2, 57.0, CLASS_GEAR, ALLIANCE, {7371})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, L"Keldric Boucher", 55.8, 65.2, CLASS_POTION, ALLIANCE, {858})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, L"Adair Gilroy", 41.6, 65.2, CLASS_POTION, ALLIANCE,
                         {1711, 2290, 1478, 1712, 954, 3012, 955, 1180, 1181, 3013})

    -- Orgrimmar
    Frame:SetZoneNPCData(ZONE_ORGRIMMAR, L"Jin'Sora", 77.8, 38.6, CLASS_GEAR, HORDE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_ORGRIMMAR, L"Tor'phan", 62.6, 50.6, CLASS_GEAR, HORDE, {12255})
    Frame:SetZoneNPCData(ZONE_ORGRIMMAR, L"Handor", 62.8, 44.8, CLASS_GEAR, HORDE, {12256})

    -- Ironforge
    Frame:SetZoneNPCData(ZONE_IRONFORGE, L"Skolmin Goldfury", 71.6, 66.2, CLASS_GEAR, ALLIANCE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_IRONFORGE, L"Thalgus Thunderfist", 61.6, 89.0, CLASS_GEAR, ALLIANCE, {7371})

    -- Thunderbluff
    Frame:SetZoneNPCData(ZONE_THUNDERBLUFF, L"Kuna Thunderhorn", 46.8, 45.8, CLASS_GEAR, HORDE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_THUNDERBLUFF, L"Delgo Ragetotem", 53.8, 57.2, CLASS_GEAR, HORDE, {12249})

    -- Undercity
    Frame:SetZoneNPCData(ZONE_UNDERCITY, L"Abigail Sawyer", 54.8, 38.0, CLASS_GEAR, HORDE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_UNDERCITY, L"Benijah Fenner", 58.6, 32.6, CLASS_GEAR, HORDE, {7371})
    Frame:SetZoneNPCData(ZONE_UNDERCITY, L"Salazar Bloch", 77.2, 38.6, CLASS_POTION, HORDE,
                         {1711, 2290, 1478, 1712, 954, 3012, 955, 1180, 1181, 3013})

    -- Darnassus
    Frame:SetZoneNPCData(ZONE_DARNASSUS, L"Landria", 63.2, 66.6, CLASS_GEAR, ALLIANCE, {11308, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_DARNASSUS, L"Glorandiir", 64.0, 59.0, CLASS_GEAR, ALLIANCE, {12249})
    Frame:SetZoneNPCData(ZONE_DARNASSUS, L"Turian", 62.6, 65.6, CLASS_GEAR, ALLIANCE, {12247})
    Frame:SetZoneNPCData(ZONE_DARNASSUS, L"Vinasia", 60.8, 72.6, CLASS_GEAR, ALLIANCE, {12256})


    if build > 20000 then
        Frame:SetZoneNPCData(addon.mapId["Netherstorm"], L"Qiff", 32.648, 66.747, CLASS_GEAR, NEUTRAL, {23782,23784,23786,23787})
        --
        Frame:SetZoneNPCData(addon.mapId["Netherstorm"], L"Dealer Najeeb", 44.989, 36.525, CLASS_GEAR, NEUTRAL,
        {22572,22574,22578,22576,23785,23784})
        --
        Frame:SetZoneNPCData(addon.mapId["Terokkar Forest"], L"Dealer Tariq", 39.452, 70.054, CLASS_GEAR, NEUTRAL,
        {22572,22574,22578,22576})
        --
        Frame:SetZoneNPCData(addon.mapId["Shattrath City"], L"Wind Trader Lathrai", 72.232, 30.774, CLASS_GEAR, NEUTRAL,
        {23811})
        Frame:SetZoneNPCData(addon.mapId["The Exodar"], L"Feera", 53.612, 90.844, CLASS_GEAR, ALLIANCE,
        {23811})
        Frame:SetZoneNPCData(addon.mapId["Silvermoon City"], L"Yatheon", 75.614, 40.713, CLASS_GEAR, HORDE,
        {23811})


        Frame:SetZoneNPCData(addon.mapId["Zangarmarsh"], L"Seer Janidi", 32.379, 51.960, CLASS_GEAR, HORDE,
        {22901,22902})
        Frame:SetZoneNPCData(addon.mapId["Terokkar Forest"], L"Leeli Longhaggle", 57.740, 53.367, CLASS_GEAR, ALLIANCE,
        {22901,22911})
        --
        Frame:SetZoneNPCData(addon.mapId["Zangarmarsh"], L"Haalrun", 67.805, 47.917, CLASS_GEAR, ALLIANCE,
        {22902,22907,22909,22909})
        --
        Frame:SetZoneNPCData(addon.mapId["Blade's Edge Mountains"], L"Daga Ramba", 51.074, 57.815, CLASS_GEAR, HORDE,
        {22907,22911,22909,22909})
        --
        --
        --
        Frame:SetZoneNPCData(addon.mapId["Hellfire Peninsula"], L"Apothecary Antonivich", 52.284, 36.460, CLASS_GEAR, HORDE,
        {22900})
        Frame:SetZoneNPCData(addon.mapId["Silvermoon City"], L"Melaris", 67.149, 19.488, CLASS_GEAR, HORDE,
        {22900,23574})
        Frame:SetZoneNPCData(addon.mapId["Hellfire Peninsula"], L"Alchemist Gribble", 53.802, 65.817, CLASS_GEAR, ALLIANCE,
        {22900})
        Frame:SetZoneNPCData(addon.mapId["The Exodar"], L"Altaa", 28.154, 61.875, CLASS_GEAR, ALLIANCE,
        {22900,23574})
        --
        Frame:SetZoneNPCData(addon.mapId["Shattrath City"], L"Skreah", 45.797, 20.002, CLASS_GEAR, NEUTRAL,
        {23574})

    end

end

function Frame:SetZoneNPCData(zone, name, x, y, cl, faction, loot)
    if not (faction == NEUTRAL or addon.player.faction == faction) then return end

    -- Ensure sure the zone data exists
    if DATA[zone] == nil then DATA[zone] = {} end

    -- Loot Data for this NPC
    local npcData = {}
    npcData.zone = zone
    npcData.name = name
    npcData.x = x
    npcData.y = y
    npcData.kind = cl
    npcData.faction = faction
    npcData.loot = loot
    npcData.loaded = false

    if loot then for _, itemID in ipairs(loot) do GetItemInfo(itemID) end end

    -- Store the data foor this NPC in the corresponding zone data
    DATA[zone][name] = npcData
end

function Frame:GetZoneData(zone) return DATA[zone] end

function Frame:CreateMapPin(_, data)
    local pinFrame = CreateFrame("Button", nil, UIParent)
    pinFrame:EnableMouse(true)
    pinFrame:SetFrameLevel(2100)
    pinFrame:SetScript("OnClick", function(pin) Frame:ShowPinItemTooltip(pin) end)
    pinFrame:SetScript("OnEnter", function(pin) Frame:ShowPinTooltip(pin) end)
    pinFrame:SetScript("OnLeave", function() Frame:HidePinTooltip() end)
    local pinTexture = pinFrame:CreateTexture(nil, "OVERLAY")
    pinTexture:SetAllPoints(pinFrame)
    pinTexture:SetTexture(ICON_PATH)
    pinFrame.__data = data
    pinFrame.texture = pinTexture
    pinFrame:SetHighlightTexture(ICON_PATH, "ADD")
    pinFrame:Hide()

    return pinFrame
end

function Frame:ShowPinItemTooltip(pin)

    if pin == nil then return end

    local npcData = pin.__data

    if npcData == nil then return end

    local npcLoot = npcData.loot

    if next(npcLoot) == nil then return end

    if TOOLTIP_LOOT_INDEX > GetTableLength(npcLoot) then
        TOOLTIP_LOOT_INDEX = 1
        self:ShowPinTooltip(pin)
        return
    end

    local npcLootID = npcLoot[TOOLTIP_LOOT_INDEX]

    GameTooltip:SetHyperlink("item:" .. npcLootID .. ":0:0:0:0:0:0:0")

    TOOLTIP_LOOT_INDEX = TOOLTIP_LOOT_INDEX + 1

end

function Frame:ShowPinTooltip(pin)

    if pin == nil then return end

    local npcData = pin.__data

    if npcData == nil then return end

    local npcClass = npcData.kind
    local npcLoot = npcData.loot

    local npcColor = CLASS_COLORS[npcClass]

    GameTooltip:SetOwner(pin, "ANCHOR_BOTTOMRIGHT")
    GameTooltip:SetText(npcData.name, npcColor[1], npcColor[2], npcColor[3])
    GameTooltip:AddLine(npcClass, 0.7, 0.7, 0.7)

    if next(npcLoot) ~= nil then
        local lowerItemBound = addon.player.level - 10
        local upperItemBound = addon.player.level + 5

        GameTooltip:AddLine(" ")
        GameTooltip:AddLine("Notable Items:")

        local itemName, itemRarity, itemRarityR, itemRarityG, itemRarityB, itemMinLevel

        for _, itemID in ipairs(npcLoot) do
            itemName, _, itemRarity, _, itemMinLevel = GetItemInfo(itemID)

            if itemName ~= nil and (itemMinLevel and itemMinLevel > lowerItemBound and itemMinLevel < upperItemBound) then
                itemRarityR, itemRarityG, itemRarityB = GetItemQualityColor(itemRarity)

                GameTooltip:AddLine(itemName, itemRarityR, itemRarityG, itemRarityB)
            end
        end
        GameTooltip:AddLine("(Click to view)", 0.7, 0.7, 0.7)
    end

    GameTooltip:Show()

end

function Frame:HidePinTooltip()
    TOOLTIP_LOOT_INDEX = 1
    GameTooltip:Hide()
end

-- TODO integrate nearby targets into Active Targets .target
-- addon.generatedSteps["treasure"] = steps
function Frame:CheckZone()
    if not addon.settings.profile.enableVendorTreasure then return end

    self:CheckMiniMap()
    self:CheckWorldMap()

end

-- remove comments to re-enable minimap pins
function Frame:CheckMiniMap()
    -- local mapID = GetMapID()
    -- if mapID ~= MINI_MAP_ID then
    -- self:DrawMiniMapPins()
    -- end
end

function Frame:CheckWorldMap()
    if not IsWorldMapAvailable() then return end

    if GetWorldMapID() ~= WORLD_MAP_ID then self:DrawWorldMapPins() end
end

-- World Map --
function Frame:ShowWorldMapNPC(data)
    self:LoadNPCData(data)

    local x, y = data.x, data.y
    if x > 1 or y > 1 then x, y = x / 100, y / 100 end
    if not x or not y or x < 0 or x > 1 or y < 0 or y > 1 then return end

    data.worldpin:SetSize(WORLD_MAP_PIN_SIZE, WORLD_MAP_PIN_SIZE)
    data.worldpin:SetScale(addon.settings.profile.vendorTreasurePinScale or 1)

    HBDPins:AddWorldMapIconMap(PIN_OWNER, data.worldpin, data.zone, x, y, _G.HBD_PINS_WORLDMAP_SHOW_CONTINENT)
end

function Frame:DrawWorldMapPins()
    Frame:HideWorldMapPins()

    if GetMapID() == GetWorldMapID() then self:ShowWorldMapPins() end
end

function Frame:HideWorldMapPins() HBDPins:RemoveAllWorldMapIcons(PIN_OWNER) end

function Frame:ShowWorldMapPins()
    WORLD_MAP_ID = GetWorldMapID()

    -- Display pins for player's map if soloSelfFound
    if addon.settings.profile.soloSelfFound then
        for _, zoneData in pairs(DATA) do for _, npcData in pairs(zoneData) do self:ShowWorldMapNPC(npcData) end end
    else
        local zoneData = DATA[GetMapID()] or {}

        for _, npcData in pairs(zoneData) do self:ShowWorldMapNPC(npcData) end
    end
end

-- Mini Map --
-- TODO RXP, port World Map changes

-- Mini map pins with HBDPins
function Frame:HideMiniMapNPC(data) if data.minipin then HBDPins:RemoveMinimapIcon(PIN_OWNER, data.minipin) end end

function Frame:ShowMiniMapNPC(data)
    self:LoadNPCData(data)

    -- ensure the pin actually has size
    data.minipin:SetSize(MINI_MAP_PIN_SIZE, MINI_MAP_PIN_SIZE)
    data.minipin:SetScale(addon.settings.profile.vendorTreasurePinScale or 1)

    local x, y = data.x, data.y
    if x > 1 or y > 1 then x, y = x / 100, y / 100 end
    if not x or not y or x < 0 or x > 1 or y < 0 or y > 1 then return end

    -- showOnEdge=true so an arrow appears if the point is off the minimap
    HBDPins:AddMinimapIconMap(PIN_OWNER, data.minipin, data.zone, x, y, true)
end

function Frame:DrawMiniMapPins()
    Frame:HideMiniMapPins()
    Frame:ShowMiniMapPins()
end

function Frame:HideMiniMapPins() HBDPins:RemoveAllMinimapIcons(PIN_OWNER) end

function Frame:ShowMiniMapPins()
    MINI_MAP_ID = GetMapID()

    -- Use current map’s data; if none, try parent so city/indoors still show
    local zoneData = Frame:GetZoneData(MINI_MAP_ID)
    if not zoneData then
        local info = C_Map.GetMapInfo(MINI_MAP_ID)
        if info and info.parentMapID then zoneData = Frame:GetZoneData(info.parentMapID) end
    end
    if not zoneData then return end

    for _, npcData in pairs(zoneData) do Frame:ShowMiniMapNPC(npcData) end
end

-- Utility
function Frame:LoadNPCData(data)
    if data.loaded then return end

    -- Pre-load the loot to prevent bugs on tooltips
    local rarity = 0
    local itemRarity
    if data.loot then
        for _, itemID in ipairs(data.loot) do
            _, _, itemRarity = GetItemInfo(itemID)
            if itemRarity ~= nil and itemRarity > rarity then rarity = itemRarity end
        end
    end

    data.loaded = true
    data.rarity = rarity
    data.worldpin = Frame:CreateMapPin(nil, data)
    data.minipin = Frame:CreateMapPin(nil, data)

end

function IsWorldMapAvailable()

    if not WorldMapFrame:IsVisible() then return false end

    local width, height = WorldMapFrame:GetCanvas():GetSize()

    if width <= 0 or height <= 0 then return false end

    return true
end

function GetWorldMapID() return WorldMapFrame:GetMapID() end

function GetMapID() return GetBestMapForUnit("player") end

function GetTableLength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

function addon.VendorTreasures.UpdatePins()
    if not addon.settings.profile.enableVendorTreasure then
        Frame:HideWorldMapPins()
        return
    end

    Frame:CheckWorldMap()
    Frame:ShowWorldMapPins()
end

hooksecurefunc(WorldMapFrame, "OnMapChanged", addon.VendorTreasures.UpdatePins)

function addon.VendorTreasures:Setup()
    if not addon.settings.profile.enableVendorTreasure then return end

    if next(DATA) ~= nil then
        Frame:CheckZone()
        return
    end

    -- ZONE_CHANGED is new sub-zone, which doesn't apply to world map
    -- ZONE_CHANGED_NEW_AREA is new zone
    Frame:RegisterEvent("ZONE_CHANGED")
    Frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")

    Frame:SetScript("OnEvent", function(this) this:CheckZone() end)

    Frame:InitializeZones()

    Frame:CheckZone()
end
