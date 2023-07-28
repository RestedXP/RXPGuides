--[[
Cpt. Stadics' Vendor Treasures
Derived from https://www.curseforge.com/wow/addons/cpt-stadics-map-of-vendor-treasures

Creative Commons Attribution-NonCommercial 3.0 Unported https://creativecommons.org/licenses/by-nc/3.0/
]] local _, addon = ...

if addon.gameVersion > 20000 then return end

local GameTooltip, WorldMapFrame = _G.GameTooltip, _G.WorldMapFrame
local UnitOnTaxi, GetBestMapForUnit, GetPlayerMapPosition = _G.UnitOnTaxi,
                                                            C_Map.GetBestMapForUnit,
                                                            C_Map.GetPlayerMapPosition
local wipe, pairs, tinsert = table.wipe, pairs, table.insert
local UnitLevel = _G.UnitLevel
local HORDE, ALLIANCE, NEUTRAL = "Horde", "Alliance", "Neutral"

addon.VendorTreasures = addon:NewModule("VendorTreasures")

local RARE_ADDON_NAME = "Cpt. Stadics' Vendor Treasures"
local ICON_PATH = "Interface/GossipFrame/VendorGossipIcon.blp"
local TOOLTIP_LOOT_INDEX = 1
local DISTANCE_NPCS = {}
local DISTANCE_THRESHOLD = 0.01

local CLASS_POTION = "Potion Vendor"
local CLASS_GEAR = "Gear Vendor"

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
local WORLD_MAP_PINS = {}
local WORLD_MAP_CONTAINER = WorldMapFrame:GetCanvas()
local WORLD_MAP_PIN_SIZE = 18

local MINI_MAP_ID = -1;
local MINI_MAP_PINS = {};
local MINI_MAP_CONTAINER = Minimap;
local MINI_MAP_PIN_SIZE = 12;

local PLAYER_MAP_ID = -1;

local Frame = CreateFrame("Frame", "RXP_" .. RARE_ADDON_NAME)

function Frame:InitializeZones()
    -- ZONE, NAME, X, Y, CLASS, FACTION, LOOT

    -- Azshara
    Frame:SetZoneNPCData(ZONE_AZSHARA, "Brinna Valanaar", 12.0, 78.2,
                         CLASS_GEAR, ALLIANCE, {11305})

    -- Azshara
    Frame:SetZoneNPCData(ZONE_MOONGLADE, "Kharedon", 56.6, 29.8, CLASS_GEAR,
                         NEUTRAL, {12254})

    -- Ashenvale
    Frame:SetZoneNPCData(ZONE_ASHENVALE, "Harklan & Bhaldaran", 50.8, 67.0,
                         CLASS_GEAR, ALLIANCE, {11305, 929, 3385})

    -- Stonetalon Mountains
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, "Veenix", 58.2, 51.6,
                         CLASS_GEAR, NEUTRAL, {4818, 4817, 4838, 4837});
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, "Jeeda", 47.6, 61.6,
                         CLASS_POTION, HORDE, {3385, 929});
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, "Borand", 45.2, 59.2,
                         CLASS_GEAR, HORDE, {11304});
    Frame:SetZoneNPCData(ZONE_STONETALON_MOUNTAINS, "Nizzik", 62.6, 40.2,
                         CLASS_GEAR, NEUTRAL,
                         {4835, 4833, 4831, 4830, 4832, 4829, 4827, 4828})

    -- The Barrens
    Frame:SetZoneNPCData(ZONE_BARRENS, "Kiknikle & Pizznukle", 41.8, 38.6,
                         CLASS_GEAR, NEUTRAL, {4781, 4782, 4786, 4788, 4789});
    Frame:SetZoneNPCData(ZONE_BARRENS, "Lizzarik", 59, 38.2, CLASS_GEAR,
                         NEUTRAL, {4778, 4777, 4765, 4766, 858, 2455});
    Frame:SetZoneNPCData(ZONE_BARRENS, "Grazlix & Vexspindle", 62.2, 38.4,
                         CLASS_GEAR, NEUTRAL, {
        4798, 4799, 4820, 4816, 4800, 4821, 4822, 4794, 4795, 4796
    })
    Frame:SetZoneNPCData(ZONE_BARRENS, "Vrang Wildgore", 43.8, 12.2, CLASS_GEAR,
                         HORDE, {4800, 4816, 4778, 4777, 4798, 4799})
    Frame:SetZoneNPCData(ZONE_BARRENS, "Halija Whitestrider", 52.2, 31.8,
                         CLASS_GEAR, HORDE, {4793, 4792, 4781, 4786, 4782})
    Frame:SetZoneNPCData(ZONE_BARRENS, "Uthrok & Nargal Deatheye", 51.0, 29.0,
                         CLASS_GEAR, HORDE, {11304, 4765, 4766})

    -- Desolace
    Frame:SetZoneNPCData(ZONE_DESOLACE, "Vendor-Tron 1000", 60.2, 38.2,
                         CLASS_POTION, NEUTRAL, {3827, 1710})
    Frame:SetZoneNPCData(ZONE_DESOLACE, "Hae'Wilani", 25.8, 71.0, CLASS_GEAR,
                         HORDE, {12250, 12249})

    -- Dustwallow Marsh
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, "Zulrg & Zanara", 36.2, 31.6,
                         CLASS_GEAR, HORDE, {12251, 12250, 11305});
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, "Balai Lok'Wein", 36.4, 30.2,
                         CLASS_POTION, HORDE,
                         {929, 3385, 1711, 2290, 1478, 1712, 954, 3012})
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, "Piter Verance", 67.4, 47.8,
                         CLASS_GEAR, ALLIANCE, {
        4835, 4833, 4825, 4824, 4826, 4832, 4830, 4831, 4818, 4817
    })
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, "Marie Holdston", 64.6, 50.0,
                         CLASS_GEAR, ALLIANCE, {12248, 12250})
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, "Jensen Farran", 67.8, 49.8,
                         CLASS_GEAR, ALLIANCE, {11305})
    Frame:SetZoneNPCData(ZONE_DUSTWALLOW_MARSH, "Uma Bartulm", 64.0, 47.6,
                         CLASS_POTION, ALLIANCE, {1710, 3827})

    -- Feralas
    Frame:SetZoneNPCData(ZONE_FERALAS, "Logannas", 32.6, 44.0, CLASS_POTION,
                         ALLIANCE, {3928, 6149})
    Frame:SetZoneNPCData(ZONE_FERALAS, "Bronk", 76.0, 43.4, CLASS_POTION, HORDE,
                         {3928, 6149})
    Frame:SetZoneNPCData(ZONE_FERALAS, "Cawind Trueaim", 74.8, 45.6, CLASS_GEAR,
                         HORDE, {11308})
    Frame:SetZoneNPCData(ZONE_FERALAS, "Worb Strongstich", 74.6, 42.6,
                         CLASS_GEAR, HORDE, {12254, 12253})

    -- Thousand Needles
    Frame:SetZoneNPCData(ZONE_THOUSAND_NEEDLES, "Starn & Montarr", 45.0, 50.6,
                         CLASS_GEAR, HORDE,
                         {11305, 11304, 929, 1711, 2290, 1478, 1712})

    -- Winterspring
    Frame:SetZoneNPCData(ZONE_WINTERSPRING, "Evie Whirlbrew", 60.8, 37.8,
                         CLASS_POTION, NEUTRAL, {3928, 6149})

    -- Eastern Plaguelands
    Frame:SetZoneNPCData(ZONE_EASTERN_PLAGUELANDS, "Augustus the Touched", 14.4,
                         33.6, CLASS_GEAR, NEUTRAL, {15902})

    -- Tirisfall Glades
    Frame:SetZoneNPCData(ZONE_TIRISFAL_GLADES, "Selina Weston", 61.8, 50.0,
                         CLASS_POTION, HORDE, {858})

    -- Alterac Mountains
    Frame:SetZoneNPCData(ZONE_ALTERAC_MOUNTAINS, "Bro'Kin", 38.4, 38.8,
                         CLASS_POTION, NEUTRAL, {14634, 3827, 1710})

    -- Silverpine Forest
    Frame:SetZoneNPCData(ZONE_SILVERPINE_FOREST,
                         "Alexandre, Andrea, Nadia & Edwin", 44.6, 39.2,
                         CLASS_GEAR, HORDE,
                         {11304, 4788, 4789, 4781, 4786, 4782, 858})
    Frame:SetZoneNPCData(ZONE_SILVERPINE_FOREST, "Wallace the Blind", 46.4,
                         86.4, CLASS_GEAR, NEUTRAL,
                         {4818, 4817, 4778, 4777, 11304, 929})

    -- Hillsbrad Foothills
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, "Kirs Legace", 80.0, 39.0,
                         CLASS_GEAR, NEUTRAL,
                         {4832, 4830, 4831, 4794, 4795, 4796})
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, "Zixil", 55.6, 34.6,
                         CLASS_GEAR, NEUTRAL, {4829, 4827, 4828, 4838})
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, "Ott", 60.4, 26.0,
                         CLASS_GEAR, HORDE,
                         {12247, 12249, 4825, 4824, 4826, 4818, 4817})
    Frame:SetZoneNPCData(ZONE_HILLSBRAD_FOOTHILLS, "Robert & Nandar", 51.2,
                         57.0, CLASS_GEAR, ALLIANCE,
                         {4835, 4833, 4798, 4816, 4799, 4800, 1710, 3827})

    -- Arathi Highlands
    Frame:SetZoneNPCData(ZONE_ARATHI_HIGHLANDS, "Deneb Walker", 27.0, 58.8,
                         CLASS_POTION, ALLIANCE,
                         {3385, 929, 1711, 2290, 1478, 1712})
    Frame:SetZoneNPCData(ZONE_ARATHI_HIGHLANDS, "Drovnar Strongbrew", 46.4,
                         47.0, CLASS_POTION, ALLIANCE, {3827, 1710})
    Frame:SetZoneNPCData(ZONE_ARATHI_HIGHLANDS, "Mu'uta", 72.6, 33.6,
                         CLASS_GEAR, HORDE, {11305})

    -- Wetlands
    Frame:SetZoneNPCData(ZONE_WETLANDS, "Kixxle", 50.2, 37.8, CLASS_POTION,
                         NEUTRAL, {929})
    Frame:SetZoneNPCData(ZONE_WETLANDS, "Wenna Silkbeard", 25.6, 25.8,
                         CLASS_GEAR, ALLIANCE,
                         {4835, 4833, 4831, 4830, 4832, 4829, 4827, 4828})
    Frame:SetZoneNPCData(ZONE_WETLANDS, "Naela Trance & Brak Durnad", 11.2,
                         58.6, CLASS_GEAR, ALLIANCE, {11304, 4818, 4817})
    Frame:SetZoneNPCData(ZONE_WETLANDS, "Jennabink & Dewin", 8.0, 55.8,
                         CLASS_GEAR, ALLIANCE,
                         {4829, 4827, 4828, 4793, 4792, 929})
    Frame:SetZoneNPCData(ZONE_WETLANDS, "Samor Festivus", 10.4, 60.2,
                         CLASS_POTION, ALLIANCE, {929})
    Frame:SetZoneNPCData(ZONE_WETLANDS, "Dark Iron Entrepreneur", 46.6, 18.2,
                         CLASS_GEAR, NEUTRAL,
                         {4835, 4833, 4825, 4824, 4826, 4832, 4830, 4831})

    -- Loch Modan
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, "Kat Sampson & Cliff Hadin", 82.6,
                         64.0, CLASS_GEAR, ALLIANCE, {4788, 4789, 11304})
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, "Morhan Coppertongue", 34.0, 46.6,
                         CLASS_GEAR, ALLIANCE, {4765, 4766})
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, "Aldren Cordon", 64.8, 66.0,
                         CLASS_GEAR, ALLIANCE, {4781, 4786, 4782})
    Frame:SetZoneNPCData(ZONE_LOCH_MODAN, "Nillen Andemar", 42.8, 10.0,
                         CLASS_GEAR, ALLIANCE, {4778, 4777})

    -- Redridge Mountains
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, "Franklin Hamar", 27.2, 45.4,
                         CLASS_GEAR, ALLIANCE, {4781, 4786, 4782})
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, "Kara Adams", 30.6, 46.6,
                         CLASS_GEAR, ALLIANCE, {4820, 4821, 4822})
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, "Captured Servant of Azora",
                         74.6, 79.6, CLASS_GEAR, ALLIANCE, {4793, 4792})
    Frame:SetZoneNPCData(ZONE_REDRIDGE_MOUNTAINS, "Bernard Brubaker", 88.2,
                         71.6, CLASS_GEAR, ALLIANCE, {4794, 4795, 4796})

    -- Elwynn Forest
    Frame:SetZoneNPCData(ZONE_ELWYNN_FOREST, "Antonio Perelli", 42.6, 66.6,
                         CLASS_GEAR, ALLIANCE,
                         {4794, 4795, 4796, 4818, 4817, 4778, 4777, 858})
    Frame:SetZoneNPCData(ZONE_ELWYNN_FOREST, "Dawn Brightstar", 64.8, 69.2,
                         CLASS_POTION, ALLIANCE,
                         {858, 2455, 954, 3012, 955, 1180, 1181, 3013})

    -- Swamp of Sorrows
    Frame:SetZoneNPCData(ZONE_SWAMP_OF_SORROWS, "Masat T'andr", 26.4, 31.6,
                         CLASS_GEAR, NEUTRAL, {12254, 12253})
    Frame:SetZoneNPCData(ZONE_SWAMP_OF_SORROWS, "Thralosh", 45.0, 51.6,
                         CLASS_GEAR, HORDE, {12255, 12256})
    Frame:SetZoneNPCData(ZONE_SWAMP_OF_SORROWS, "Thultazor & Rartar", 45.0,
                         51.6, CLASS_POTION, HORDE, {3928, 6149})

    -- Duskwood
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, "Kzixx", 81.8, 19.8, CLASS_GEAR,
                         NEUTRAL, {4829, 4827, 4828, 4838, 4837, 3385, 929})
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, "Bliztik", 18.0, 54.6, CLASS_POTION,
                         NEUTRAL, {3385, 929})
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, "Avette Fellwood", 73.2, 44.8,
                         CLASS_GEAR, ALLIANCE, {11304})
    Frame:SetZoneNPCData(ZONE_DUSKWOOD, "Morg & Gaving Gnarltree", 73.8, 48.6,
                         CLASS_GEAR, ALLIANCE,
                         {4798, 4816, 4799, 4800, 12247, 12249})

    -- Westfall
    Frame:SetZoneNPCData(ZONE_WESTFALL, "Defias Profiteer", 43.4, 66.8,
                         CLASS_GEAR, NEUTRAL, {4788, 4789})
    Frame:SetZoneNPCData(ZONE_WESTFALL, "William MacGregor", 57.6, 53.8,
                         CLASS_GEAR, ALLIANCE, {11304})

    -- Blasted Lands
    Frame:SetZoneNPCData(ZONE_BLASTED_LANDS, "Nina Lightbrew", 66.8, 18.6,
                         CLASS_POTION, ALLIANCE, {3928, 6149})

    -- Stranglethorn Vale
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, "Jutak", 27.4, 77.4,
                         CLASS_GEAR, NEUTRAL, {12248})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, "Vharr", 32.2, 28.0,
                         CLASS_GEAR, HORDE, {12248, 12250})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, "Zarena & Kizz & Haren", 28.4,
                         75.4, CLASS_GEAR, NEUTRAL,
                         {12251, 12252, 4778, 4777, 11305})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, "Glyx Brewright", 28.0, 78.0,
                         CLASS_POTION, NEUTRAL, {1710, 3827})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, "Jaquilina Dramet", 35.6,
                         10.6, CLASS_GEAR, NEUTRAL, {12250})
    Frame:SetZoneNPCData(ZONE_STRANGLETHORN_VALE, "Fargon Mortalak", 29.0, 75.0,
                         CLASS_GEAR, NEUTRAL, {12257})

    -- Stormwind City
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, "Charys Yserian", 32.4, 80.0,
                         CLASS_GEAR, ALLIANCE,
                         {4825, 4824, 4826, 4829, 4827, 4828, 3385, 929})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, "Frederick Stover", 50.2, 57.4,
                         CLASS_GEAR, ALLIANCE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, "Marda Weller", 57.2, 57.0,
                         CLASS_GEAR, ALLIANCE, {7371})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, "Keldric Boucher", 55.8, 65.2,
                         CLASS_POTION, ALLIANCE, {858})
    Frame:SetZoneNPCData(ZONE_STORMWIND_CITY, "Adair Gilroy", 41.6, 65.2,
                         CLASS_POTION, ALLIANCE, {
        1711, 2290, 1478, 1712, 954, 3012, 955, 1180, 1181, 3013
    })

    -- Orgrimmar
    Frame:SetZoneNPCData(ZONE_ORGRIMMAR, "Jin'Sora", 77.8, 38.6, CLASS_GEAR,
                         HORDE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_ORGRIMMAR, "Tor'phan", 62.6, 50.6, CLASS_GEAR,
                         HORDE, {12255})
    Frame:SetZoneNPCData(ZONE_ORGRIMMAR, "Handor", 62.8, 44.8, CLASS_GEAR,
                         HORDE, {12256})

    -- Ironforge
    Frame:SetZoneNPCData(ZONE_IRONFORGE, "Skolmin Goldfury", 71.6, 66.2,
                         CLASS_GEAR, ALLIANCE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_IRONFORGE, "Thalgus Thunderfist", 61.6, 89.0,
                         CLASS_GEAR, ALLIANCE, {7371})

    -- Thunderbluff
    Frame:SetZoneNPCData(ZONE_THUNDERBLUFF, "Kuna Thunderhorn", 46.8, 45.8,
                         CLASS_GEAR, HORDE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_THUNDERBLUFF, "Delgo Ragetotem", 53.8, 57.2,
                         CLASS_GEAR, HORDE, {12249})

    -- Undercity
    Frame:SetZoneNPCData(ZONE_UNDERCITY, "Abigail Sawyer", 54.8, 38.0,
                         CLASS_GEAR, HORDE, {11307, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_UNDERCITY, "Benijah Fenner", 58.6, 32.6,
                         CLASS_GEAR, HORDE, {7371})
    Frame:SetZoneNPCData(ZONE_UNDERCITY, "Salazar Bloch", 77.2, 38.6,
                         CLASS_POTION, HORDE, {
        1711, 2290, 1478, 1712, 954, 3012, 955, 1180, 1181, 3013
    })

    -- Darnassus
    Frame:SetZoneNPCData(ZONE_DARNASSUS, "Landria", 63.2, 66.6, CLASS_GEAR,
                         ALLIANCE, {11308, 11306, 11303})
    Frame:SetZoneNPCData(ZONE_DARNASSUS, "Glorandiir", 64.0, 59.0, CLASS_GEAR,
                         ALLIANCE, {12249})
    Frame:SetZoneNPCData(ZONE_DARNASSUS, "Turian", 62.6, 65.6, CLASS_GEAR,
                         ALLIANCE, {12247})
    Frame:SetZoneNPCData(ZONE_DARNASSUS, "Vinasia", 60.8, 72.6, CLASS_GEAR,
                         ALLIANCE, {12256})

end

function Frame:OnUpdate(sinceLastUpdate)
    self.sinceLastUpdate = (self.sinceLastUpdate or 0) + sinceLastUpdate;
    if (self.sinceLastUpdate >= DELAY) then
        self.sinceLastUpdate = 0
        self:CheckNearby()
        self:CheckZone()
    end

end

function Frame:SetZoneNPCData(zone, name, x, y, cl, faction, loot)
    if not (faction == NEUTRAL or addon.player.faction == faction) then
        return
    end

    -- Ensure sure the zone data exists
    if DATA[zone] == nil then DATA[zone] = {} end

    -- Define the data keys for this NPC
    local npcData = {}
    npcData.zone = zone
    npcData.name = name
    npcData.x = x
    npcData.y = y
    npcData.kind = cl
    npcData.faction = faction
    npcData.loot = loot
    npcData.loaded = false

    -- Load loot early for tooltips
    if loot then
        for _, itemID in ipairs(loot) do
            GetItemInfo(itemID)
            -- if (itemName == nil) then
            -- print("Invalid Item: " .. itemID);
            -- end
        end
    end

    -- Store the data foor this NPC in the corresponding zone data
    DATA[zone][name] = npcData
end

function Frame:GetZoneData(zone) return DATA[zone] end

function Frame:CreateMapPin(container, data)

    -- local containerWidth = container:GetWidth();
    -- local containerHeight = container:GetHeight();

    local pinFrame = CreateFrame("Button", nil, container)
    pinFrame:EnableMouse(true)
    pinFrame:SetFrameLevel(2100)
    pinFrame:SetScript("OnClick",
                       function(pin) Frame:ShowPinItemTooltip(pin) end)
    pinFrame:SetScript("OnEnter", function(pin) Frame:ShowPinTooltip(pin) end)
    pinFrame:SetScript("OnLeave", function(pin) Frame:HidePinTooltip(pin) end)

    local pinTexture = pinFrame:CreateTexture(nil, "BACKGROUND")
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
        -- TODO only display map pin if level range
        -- local playerLevel = UnitLevel("player")
        -- local lowerItemBound = playerLevel - 10
        -- local upperItemBound = playerLevel + 5

        GameTooltip:AddLine(" ")
        GameTooltip:AddLine("Notable Items:")

        local itemName, itemRarity, itemRarityR, itemRarityG, itemRarityB,
              itemMinLevel

        for _, itemID in ipairs(npcLoot) do
            itemName, _, itemRarity, _, itemMinLevel = GetItemInfo(itemID)

            -- and (itemMinLevel and itemMinLevel > lowerItemBound and itemMinLevel < upperItemBound)
            if itemName ~= nil then
                itemRarityR, itemRarityG, itemRarityB =
                    GetItemQualityColor(itemRarity)

                GameTooltip:AddLine(itemName, itemRarityR, itemRarityG,
                                    itemRarityB)
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

function Frame:CheckZone()
    if not addon.settings.profile.enableVendorTreasure then return end

    self:CheckMiniMap()
    self:CheckWorldMap()
    self:CheckPlayerMap()

end

-- TODO integrate nearby targets into Active Targets .target
-- addon.generatedSteps["treasure"] = steps
function Frame:CheckPlayerMap()

    local mapID = GetMapID()
    -- if (mapID ~= PLAYER_MAP_ID) then self:UpdateMacros() end
    PLAYER_MAP_ID = mapID

end

function Frame:UpdateMacros()

    -- print("Updating Macros");

    -- local macroName = "RA1";
    local macroContent = "";
    local mapID = GetMapID();
    local zoneData = Frame:GetZoneData(mapID);
    if (zoneData ~= nil) then
        for _, npcData in pairs(zoneData) do
            local npcName = npcData.name;
            macroContent = macroContent .. "/target " .. npcName .. ";";
        end
    end

    -- local macroId = CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroContent, nil, nil);
    -- print("Create Macro " .. macroName .. " With Content: " .. macroContent .. " And ID " .. macroId);
end

function Frame:CheckMiniMap()
    -- TODO port World Map changes to minimap
    if true then return end

    local mapID = GetMapID();
    if (mapID ~= MINI_MAP_ID) then Frame:DrawMiniMapPins(); end
    self:UpdateMiniMapPins();

end

function Frame:CheckWorldMap()
    if not IsWorldMapAvailable() then return end
    -- Only display pins for player's map unless soloSelfFound
    if not addon.settings.profile.soloSelfFound then
        if GetBestMapForUnit("player") ~= GetWorldMapID() then
            Frame:HideWorldMapPins()
            return
        end
    end

    if GetWorldMapID() ~= WORLD_MAP_ID then self:DrawWorldMapPins() end
    self:UpdateWorldMapPins()

end

function Frame:CheckNearby()

    if UnitOnTaxi("player") then return end

    local mapID = GetMapID()

    if not mapID then return end

    local nearbyNPCs = {}
    local position = GetPlayerPosition(mapID)

    if position then
        local playerX, playerY = position:GetXY()
        local zoneData = Frame:GetZoneData(mapID)

        if zoneData ~= nil then
            local pointX, pointY, distance

            for _, npcData in pairs(zoneData) do
                pointX = npcData.x / 100
                pointY = npcData.y / 100
                distance = GetDistance(playerX, playerY, pointX, pointY)

                if distance <= DISTANCE_THRESHOLD then
                    tinsert(nearbyNPCs, npcData)
                end
            end
        end
    end

    -- TODO why?
    if false and next(nearbyNPCs) ~= nil then
        local found
        for _, nearbyNPC in pairs(nearbyNPCs) do
            found = false
            for _, distanceNPC in pairs(DISTANCE_NPCS) do
                if (distanceNPC == nearbyNPC) then found = true end
            end
        end

    end

    DISTANCE_NPCS = nearbyNPCs

end

-- World Map --
function Frame:HideWorldMapNPC(data)
    local npcPin = data.worldpin
    npcPin:Hide()
end

function Frame:ShowWorldMapNPC(data)
    self:LoadNPCData(data)
    local npcPin = data.worldpin
    npcPin:Show()
end

function Frame:DrawWorldMapPins()
    Frame:HideWorldMapPins()
    Frame:ShowWorldMapPins()
end

function Frame:HideWorldMapPins()
    local npcData

    for _, npcPin in pairs(WORLD_MAP_PINS) do
        npcData = npcPin.__data
        self:HideWorldMapNPC(npcData)
    end

    wipe(WORLD_MAP_PINS)
end

function Frame:ShowWorldMapPins()
    WORLD_MAP_ID = GetWorldMapID()

    local zoneData = Frame:GetZoneData(WORLD_MAP_ID)

    if zoneData == nil then return end

    local npcPin
    for _, npcData in pairs(zoneData) do

        npcPin = npcData.worldpin
        self:ShowWorldMapNPC(npcData)
        tinsert(WORLD_MAP_PINS, npcPin)

    end

    self:UpdateWorldMapPins()

end

function Frame:UpdateWorldMapPins()
    -- TODO: Try not to call this on every frame. Only when the canvas width or height has changed, and if the scale has changed.
    local width = WORLD_MAP_CONTAINER:GetWidth()
    local height = WORLD_MAP_CONTAINER:GetHeight()

    local npcData, npcPin, pointX, pointY, pinX, pinY

    for _, pin in pairs(WORLD_MAP_PINS) do

        npcData = pin.__data
        npcPin = npcData.worldpin

        pointX = npcData.x
        pointY = npcData.y

        pinX = ((pointX / 100) * width) - (width / 2)
        pinY = (((pointY / 100) * height) - (height / 2)) * -1
        npcPin:SetPoint("CENTER", pinX, pinY)
        npcPin:SetWidth(WORLD_MAP_PIN_SIZE)
        npcPin:SetHeight(WORLD_MAP_PIN_SIZE)
        npcPin:SetScale(addon.settings.profile.worldMapPinScale)
    end

end

-- Mini Map --
-- TODO RXP, port World Map changes
function Frame:HideMiniMapNPC(data)
    local npcPin = data.minipin
    npcPin:Hide()
end

function Frame:ShowMiniMapNPC(data)
    self:LoadNPCData(data)
    local npcPin = data.minipin
    npcPin:Show()
end

function Frame:DrawMiniMapPins()
    -- Disabled for now
    -- Frame:HideMiniMapPins();
    -- Frame:ShowMiniMapPins();
end

function Frame:HideMiniMapPins()

    local npcData
    for _, npcPin in pairs(MINI_MAP_PINS) do
        npcData = npcPin.__data
        self:HideMiniMapNPC(npcData)
    end

    table.wipe(MINI_MAP_PINS)

end

function Frame:ShowMiniMapPins()

    MINI_MAP_ID = GetMapID()
    local zoneData = Frame:GetZoneData(MINI_MAP_ID)

    if zoneData == nil then return end

    local npcPin
    for _, npcData in pairs(zoneData) do

        npcPin = npcData.minipin
        self:ShowMiniMapNPC(npcData)
        table.insert(MINI_MAP_PINS, npcPin)

    end

    self:UpdateMiniMapPins()

end

function Frame:UpdateMiniMapPins()

    -- TODO: Try not to call this on every frame. Only when the canvas width or height has changed, and if the scale has changed.
    local scale = MINI_MAP_CONTAINER:GetEffectiveScale()
    local width = MINI_MAP_CONTAINER:GetWidth()
    local height = MINI_MAP_CONTAINER:GetHeight()
    -- local left = MINI_MAP_CONTAINER:GetLeft()
    -- local top = MINI_MAP_CONTAINER:GetTop()

    local pinSize = MINI_MAP_PIN_SIZE / scale;

    for _, npcPin in pairs(MINI_MAP_PINS) do

        local npcData = npcPin.__data;
        local npcPin = npcData.minipin;

        local pointX = npcData.x;
        local pointY = npcData.y;

        -- if (i == 1) then pointX = 0; pointY = 0; end
        -- if (i == 2) then pointX = 100; pointY = 0; end
        -- if (i == 3) then pointX = 0; pointY = 100; end
        -- if (i == 4) then pointX = 100; pointY = 100; end
        -- if (i >= 5) then pointX = 50; pointY = 50; end

        local pinX = ((pointX / 100) * width) - (width / 2);
        local pinY = (((pointY / 100) * height) - (height / 2)) * -1;
        npcPin:SetPoint("CENTER", pinX, pinY)
        npcPin:SetWidth(pinSize);
        npcPin:SetHeight(pinSize);

    end

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
            if itemRarity ~= nil and itemRarity > rarity then
                rarity = itemRarity
            end
        end
    end

    data.loaded = true
    data.rarity = rarity
    data.worldpin = Frame:CreateMapPin(WORLD_MAP_CONTAINER, data)
    data.minipin = Frame:CreateMapPin(MINI_MAP_CONTAINER, data)

end

function IsWorldMapAvailable()

    if not WorldMapFrame:IsVisible() then return false end

    local width, height = WorldMapFrame:GetCanvas():GetSize()

    if width <= 0 or height <= 0 then return false end

    return true
end

function GetWorldMapID() return WorldMapFrame:GetMapID() end

function GetMapID() return GetBestMapForUnit("player") end

function GetPlayerPosition(mapID) return GetPlayerMapPosition(mapID, "player") end

function GetTableLength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

function GetDistance(x1, y1, x2, y2)
    local dx = x1 - x2
    local dy = y1 - y2
    return math.sqrt(dx * dx + dy * dy)
end

function addon.VendorTreasures.UpdatePins()
    if not addon.settings.profile.enableVendorTreasure then
        Frame:HideWorldMapPins()
        return
    end

    -- Only display pins for player's map unless soloSelfFound
    if not addon.settings.profile.soloSelfFound then
        if GetBestMapForUnit("player") ~= GetWorldMapID() then
            Frame:HideWorldMapPins()
            return
        end
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

    Frame:SetScript("OnUpdate", function(_, sinceLastUpdate)
        Frame:OnUpdate(sinceLastUpdate)
    end)

    Frame:SetScript("OnEvent", function(this) this:CheckZone() end)

    Frame:InitializeZones()

    Frame:CheckZone()
end
