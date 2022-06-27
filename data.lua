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

addon.questConversion = {
    [9684] = 63866 -- blood elf rez quest
}

local version = select(4, GetBuildInfo())
if version < 90000 then
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

-- Items required to complete the quest
addon.questCompleteItems = {
    [1517] = 6635, -- Call of Earth // Earth Sapta
    [8330] = 20474, -- Solanian's Belongings // Sunstrider Book Satchel
    [934] = 5623, -- Crown of the Earth // Amethyst Phial
    [9294] = 22955, -- Healing the Lake // Neutralizing Agent
    [2561] = 8149, -- Druid of the Claw // Voodoo Charm
    [933] = 5645, -- Crown of the Earth // Tourmaline Phial
    [1520] = 6635, -- Call of Earth // Earth Sapta
    [929] = 5639, -- Crown of the Earth // Jade Phial
    [11408] = 33306, -- Bark for T'chali's Voodoo Brewery! // Ram Racing Reins
    [760] = 5416, -- Wildmane Cleansing // Wildmane Cleansing Totem
    [11731] = 34862, -- Torch Tossing // Practice Torches
    [11921] = 34862, -- More Torch Tossing // Practice Torches
    [11318] = 33306, -- Now This is Ram Racing... Almost. // Ram Racing Reins
    [11657] = 34833, -- Torch Catching // Unlit Torches
    [758] = 5415, -- Thunderhorn Cleansing // Thunderhorn Cleansing Totem
    [921] = 5185, -- Crown of the Earth // Crystal Phial
    [11412] = 33306, -- There and Back Again // Ram Racing Reins
    [11407] = 33306, -- Bark for Drohn's Distillery! // Ram Racing Reins
    [7383] = 18151, -- Crown of the Earth // Amethyst Phial
    [754] = 5411, -- Winterhoof Cleansing // Winterhoof Cleansing Totem
    [11294] = 33306, -- Bark for the Thunderbrews! // Ram Racing Reins
    [11122] = 33306, -- There and Back Again // Ram Racing Reins
    [11922] = 34862, -- Torch Tossing // Practice Torches
    [11926] = 34862, -- More Torch Tossing // Practice Torches
    [11925] = 34833, -- More Torch Catching // Unlit Torches
    [11293] = 33306, -- Bark for the Barleybrews! // Ram Racing Reins
    [11409] = 33306, -- Now This is Ram Racing... Almost. // Ram Racing Reins
    [11923] = 34833, -- Torch Catching // Unlit Torches
    [11924] = 34833, -- More Torch Catching // Unlit Torches
    [9538] = 23818, -- Learning the Language // Stillpine Furbolg Language Primer
    [2520] = 8155, -- Sathrah's Sacrifice // Sathrah's Sacrifice
    [9685] = 24184, -- Redeeming the Dead // Filled Shimmering Vessel
    [9467] = 24336, -- Call of Fire // Fireproof Satchel
    [9689] = 24221, -- Razormaw // Bundle of Dragon Bones
    [9600] = 6866, -- Redemption // Symbol of Life
    [9711] = 24278, -- Matis the Cruel // Flare Gun
    [6543] = 16783, -- The Warsong Reports // Bundle of Reports
    [9275] = 22796, -- A Little Dash of Seasoning // Apothecary's Poison
    [9684] = 24156, -- Claiming the Light // Shimmering Vessel
    [9748] = 24318, -- Don't Drink the Water // Water Sample Flask
    [3514] = 10622, -- Horde Presence // Kadrak's Flag
    [9666] = 24084, -- Declaration of Power // Draenei Banner
    [6124] = 15826, -- Curing the Sick // Curative Animal Salve
    [9491] = 5060, -- Greed // Thieves' Tools
    [881] = 10327, -- Echeyakee // Horn of Echeyakee
    [1030] = 5462, -- Raene's Cleansing // Dartol's Rod of Transformation
    [6002] = 15710, -- Body and Heart // Cenarion Lunardust
    [1045] = 5462, -- Raene's Cleansing // Dartol's Rod of Transformation
    [1861] = 7207, -- Mirror Lake // Jennea's Flask
    [4763] = 12346, -- The Blackwood Corrupted // Empty Cleansing Bowl
    [9403] = 23552, -- The Purest Water // Azure Phial
    [1029] = 5462, -- Raene's Cleansing // Dartol's Rod of Transformation
    [6001] = 15208, -- Body and Heart // Cenarion Moondust
    [6127] = 15842, -- The Principal Source // Empty Dreadmist Peak Sampler
    [849] = 5021, -- Revenge of Gann // Explosive Stick of Gann
    [139] = 1361, -- Captain Sander's Hidden Treasure // Another Clue to Sander's Treasure
    [4762] = 12350, -- The Cliffspring River // Empty Sampling Tube
    [6129] = 15826, -- Curing the Sick // Curative Animal Salve
    [1086] = 5638, -- The Flying Machine Airport // Toxic Fogger
    [1858] = 7209, -- The Shattered Hand // Tazan's Satchel
    [6122] = 15844, -- The Principal Source // Empty Cliffspring Falls Sampler
    [63866] = 24156, -- Claiming the Light // Shimmering Vessel
    [1080] = 5738, -- Covert Ops - Beta // Covert Ops Pack
    [1781] = 6866, -- The Tome of Divinity // Symbol of Life
    [1079] = 5738, -- Covert Ops - Alpha // Covert Ops Pack
    [2118] = 7586, -- Plagued Lands // Tharnariun's Hope
    [11886] = 35828, -- Unusual Activity // Totemic Beacon
    [4812] = 14338, -- As Water Cascades // Empty Water Tube
    [172] = 18597, -- Children's Week // Orcish Orphan Whistle
    [1468] = 18598, -- Children's Week // Human Orphan Whistle
    [1779] = 6866, -- The Tome of Divinity // Symbol of Life
    [9504] = 23749, -- Call of Water // Empty Bota Bag
    [9501] = 23871, -- Call of Water // Potion of Water Breathing
    [1197] = 5868, -- The Sacred Flame // Filled Etched Phial
    [9526] = 23788, -- Reclaiming Felfire Hill // Tree Seedlings
    [2458] = 8051, -- Deep Cover // Flare Gun
    [1944] = 7269, -- Waters of Xavian // Deino's Flask
    [2926] = 9283, -- Gnogaine // Empty Leaden Collection Phial
    [1016] = 5456, -- Elemental Bracers // Divining Scroll
    [1534] = 7767, -- Call of Water // Empty Blue Waterskin
    [1536] = 7768, -- Call of Water // Empty Red Waterskin
    [1535] = 7766, -- Call of Water // Empty Brown Waterskin
    [1657] = 20387, -- Stinking Up Southshore // Forsaken Stink Bomb Cluster
    [8373] = 20604, -- The Power of Pine // Stink Bomb Cleaner
    [735] = 4649, -- The Star, the Hand and the Heart // Bonegrip's Note
    [7067] = 17757, -- The Pariah's Instructions // Amulet of Spirits
    [592] = 3913, -- Saving Yenniku // Soul Gem
    [656] = 4472, -- Summoning the Princess // Scroll of Myzrael
    [6624] = 16991, -- Triage // Triage Bandage
    [2201] = 7668, -- Find the Gems // Bloodstained Journal
    [6622] = 16991, -- Triage // Triage Bandage
    [635] = 16991, -- Crystal in the Mountains // Pendant of Myzrael
    [3642] = 10794, -- The Pledge of Secrecy // Oglethorpe's Pledge of Secrecy
    [11140] = 33045, -- Recover the Cargo! // Renn's Supplies
    [2339] = 7668, -- Find the Gems and Power Source // Bloodstained Journal
    [2932] = 15002, -- Grim Message // Nimboya's Pike
    [3638] = 10792, -- The Pledge of Secrecy // Nixx's Pledge of Secrecy
    [3640] = 10793, -- The Pledge of Secrecy // Overspark's Pledge of Secrecy
    [992] = 8584, -- Gadgetzan Water Survey // Untapped Dowsing Widget
    [11152] = 33082, -- Peace at Last // Wreath
    [2318] = 7886, -- Translating the Journal // Untranslated Journal
    [11147] = 33070, -- Unleash the Raptors // Raptor Bait
    [695] = 4529, -- An Apprentice's Enchantment // Enchanted Agate
    [654] = 8523, -- Tanaris Field Sampling // Field Testing Kit
    [1456] = 34130, -- The Karnitol Shipwreck // Recovery Diver's Potion
    [8149] = 19850, -- Honoring a Hero // Uther's Tribute
    [8150] = 19851, -- Honoring a Hero // Grom's Tribute
    [3528] = 10662, -- The God Hakkar // Egg of Hakkar
    [2937] = 9323, -- Summoning Shadra // Gadrin's Parchment
    [9475] = 23695, -- Reclaiming the Eggs // Featherbeard's Map
    [4505] = 12566, -- Well of Corruption // Hardened Flasket
    [4506] = 12565, -- Corrupted Sabers // Winna's Kitten Carrier
    [4005] = {11617, 11169}, -- Aquementas // Eridan's Supplies, Book of Aquor
    [3463] = 10515, -- Set Them Ablaze! // Torch of Retribution
    [7041] = 17693, -- Vyletongue Corruption // Coated Cerulean Vial
    [3449] = 10445, -- Arcane Runes // Drawing Kit
    [4292] = {11568, 11570, 11569}, -- The Bait for Lar'korwi // Torwa's Pouch
    [2879] = 9263, -- The Stave of Equinex // Troyas' Stave
    [4513] = {11955, 11953}, -- A Little Slime Goes a Long Way // Bag of Empty Ooze Containers, Empty Pure Sample Jar
    [3883] = 11132, -- Alien Ecology // Unused Scraping Vial
    [3602] = 10834, -- Azsharite // Felhound Tracker Kit
    [3912] = 11243, -- Meet at the Grave // Videre Elixir
    [5157] = 12922, -- Collection of the Corrupt Water // Empty Canteen
    [7029] = 17693, -- Vyletongue Corruption // Coated Cerulean Vial
    [7843] = 19036, -- The Final Message to the Wildhammer // Final Message to the Wildhammer
    -- [3568] = {10695,10687,10688,10689,10690}, -- Seeping Corruption // Box of Empty Vials, Empty Vial Labeled #1-4??
    [3568] = 10695, -- Seeping Corruption // Box of Empty Vials
    [7003] = 18904, -- Zapped Giants // Zorbin's Ultra-Shrinker
    [3785] = 11020, -- Morrowgrain Research // Evergreen Pouch
    [3845] = 11107, -- It's a Secret to Everybody // A Small Pack
    [3786] = 11020, -- Morrowgrain Research // Evergreen Pouch
    [7725] = 18904, -- Again With the Zapped Giants // Zorbin's Ultra-Shrinker
    [4642] = 12288, -- Melding of Influences // Encased Corrupt Ooze
    [4441] = 11682, -- Felbound Ancients // Eridan's Vial
    [4512] = {11912, 11914, 11948}, -- A Little Slime Goes a Long Way // Package of Empty Ooze Containers,Empty Cursed/Tainted Ooze Jar
    [2203] = {7870, 7866}, -- Badlands Reagent Run II // Thaumaturgy Vessel Lockbox, Empty Thaumaturgy Vessel
    [3791] = 11020, -- The Mystery of Morrowgrain // Evergreen Pouch
    [2501] = 7870, -- Badlands Reagent Run II // Thaumaturgy Vessel Lockbox
    [8762] = 21315, -- Metzen the Reindeer // Smokywood Satchel
    [5902] = 15044, -- A Plague Upon Thee // Barrel of Plagueland Termites
    [5904] = 15044, -- A Plague Upon Thee // Barrel of Plagueland Termites
    [3825] = 11079, -- Ogre Head On A Stick = Party // Gor'tesh's Lopped Off Head
    [8746] = 21315, -- Metzen the Reindeer // Smokywood Satchel
    [5051] = 12721, -- Two Halves Become One // Good Luck Half-Charm
    [5096] = 12807, -- Scarlet Diversions // Scourge Banner
    [7603] = 18626, -- Kroshius' Infernal Core // Fel Fire
    [4507] = 11833, -- Pawn Captures Queen // Gorishi Queen Lure
    [4024] = 11231, -- A Taste of Flame // Altered Black Dragonflight Molt
    [5247] = 16974, -- Fragments of the Past // Empty Water Vial
    [5098] = 12815, -- All Along the Watchtowers // Beacon Torch
    [4201] = 11412, -- The Love Potion // Nagmara's Vial
    [5097] = 12815, -- All Along the Watchtowers // Beacon Torch
    [9051] = 22432, -- Toxic Test // Devilsaur Barb
    [4122] = 11286, -- Grark Lorkrub // Thorium Shackles
    [6041] = 15736, -- When Smokey Sings, I Get Violent // Smokey's Special Compound
    [4491] = 11804, -- A Little Help From My Friends // Spraggle's Canteen
    [6022] = 15454, -- To Kill With Purpose // Mortar and Pestle
    [10876] = 31702, -- The Foot of the Citadel // Challenge from the Horde
    [10895] = 31739, -- Zeth'Gor Must Burn! // Smoke Beacon
    [4743] = 12339, -- Seal of Ascension // Vaelan's Gift
    [5801] = 14644, -- Fire Plume Forged // Skeleton Key Mold
    [5384] = 13523, -- Kirtonos the Herald // Blood of Innocents
    [5802] = 14644, -- Fire Plume Forged // Skeleton Key Mold
    [5127] = 12848, -- The Demon Forge // Blood Stained Pike
    [5721] = 15209, -- The Battle of Darrowshire // Relic Bundle
    [8258] = 18746, -- The Darkreaver Menace // Divination Scryer
    [9015] = 21986, -- The Challenge // Banner of Provocation
    [5526] = 18540, -- Shards of the Felvine // Reliquary of Purity
    [9773] = 25539, -- No More Mushrooms! // Potion of Water Breathing
    [5282] = 13289, -- The Restless Souls // Egan's Blaster
    [6570] = 16787, -- Emberstrife // Amulet of Draconic Subversion
    [4729] = 12262, -- Kibler's Exotic Pets // Empty Worg Pup Cage
    [4771] = 12368, -- Dawn's Gambit // Dawn's Gambit
    [6146] = 15876, -- Nathanos' Ruse // Nathanos' Chest
    [8970] = 21984, -- I See Alcaz Island In Your Future... // Left Piece of Lord Valthalak's Amulet
    [8315] = 20464, -- The Calling // Glyphs of Calling
    [5466] = 13752, -- The Lich, Ras Frostwhisper // Soulbound Keepsake
    [8930] = 22115, -- In Search of Anthion // Extra-Dimensional Ghost Revealer
    [8995] = 22056, -- Mea Culpa, Lord Valthalak // Brazier of Beckoning
    [8994] = 22048, -- Final Preparations // Lord Valthalak's Amulet
    [7668] = 18746, -- The Darkreaver Menace // Divination Scryer
    [8929] = 22115, -- In Search of Anthion // Extra-Dimensional Ghost Revealer
    [8201] = 19883, -- A Collection of Heads // Sacred Cord
    [9472] = 23693, -- Arelion's Mistress // Carinda's Scroll of Retribution
    [10833] = 31736, -- Becoming a Shadoweave Tailor // Crystal of Deep Shadows
    [9723] = 18818, -- A Gesture of Commitment // Items for Magister Astalor Bloodsworn
    [10831] = 31522, -- Becoming a Mooncloth Tailor // Primal Mooncloth Supplies
    [10021] = 25817, -- Restoring the Light // Blessed Vial
    [10566] = 30650, -- Trial and Error // Dertrok's Wand Case
    [9383] = 23442, -- An Ambitious Plan // Sanctified Crystal
    [9816] = 24470, -- Have You Ever Seen One of These? // Murloc Cage
    [7647] = 18804, -- Judgment and Redemption // Lord Grayson's Satchel
    [9845] = 25539, -- Angling to Beat the Competition // Potion of Water Breathing
    [9834] = 25539, -- Natural Armor // Potion of Water Breathing
    [9397] = 23485, -- Birds of a Feather // Empty Birdcage
    [10710] = 23485, -- Test Flight: The Singing Ridge // Tally's Waiver (Unsigned)
    [10942] = 31880, -- Children's Week // Blood Elf Orphan Whistle
    [64141] = 31880, -- A Gesture of Commitment // Items for Magister Astalor Bloodsworn
    [9780] = 25539, -- Umbrafen Eel Filets // Potion of Water Breathing
    [10943] = 31881, -- Children's Week // Draenei Orphan Whistle
    [10712] = 31123, -- Test Flight: Ruuan Weald // Nether-weather Vane
    [7509] = 31123, -- The Forging of Quel'Serrar // Unfired Ancient Blade
    [9781] = 25539, -- Too Many Mouths to Feed // Potion of Water Breathing
    [8729] = 21136, -- The Wrath of Neptulon // Arcanite Buoy
    [10029] = 25840, -- The Spirits Are Calling // Extract of the Afterlife
    [8620] = 21112, -- The Only Prescription // Magical Book Binding
    [8301] = 21112, -- The Path of the Righteous // Agent of Nozdormu
    [8507] = 21143, -- Field Duty // Unsigned Field Duty Papers
    [8731] = 21143, -- Field Duty // Unsigned Field Duty Papers
    [8606] = 21042, -- Decoy! // Narain's Special Kit
    [8508] = 20810, -- Field Duty Papers // Signed Field Duty Papers
    [8732] = 20810, -- Field Duty Papers // Signed Field Duty Papers
    [10769] = 31279, -- Dissension Amongst the Ranks... // Enchanted Illidari Tabard
    [10764] = 31251, -- Hotter than Hell // Unfired Key Mold
    [10507] = {30260, 30259}, -- Turning Point // Voren'thal's Package
    [10776] = 31279, -- Dissension Amongst the Ranks... // Enchanted Illidari Tabard
    [10098] = 31279, -- Terokk's Legacy // The Relics of Terokk
    [10679] = 30875, -- Quenching the Blade // Forged Illidari-Bane Blade
    [10758] = 31251, -- Hotter than Hell // Unfired Key Mold
    [10438] = 29778, -- On Nethery Wings // Phase Disruptor
    [10297] = 24289, -- The Opening of the Dark Portal // Chrono-beacon
    [10782] = 31360, -- Imbuing the Headpiece // Unfinished Headpiece
    [10283] = 25853, -- Taretha's Diversion // Pack of Incendiary Bombs
    [10644] = 30721, -- Teron Gorefiend - Lore and Legend // Spectrecles
    [10305] = 28336, -- Abjurist Belmara // Belmara's Tome
    [10570] = 30616, -- To Catch A Thistlehead // Bundle of Bloodthistle
    [10633] = 30721, -- Teron Gorefiend - Lore and Legend // Spectrecles
    [10307] = 28353, -- Cohlien Frostweaver // Cohlien's Cap
    [10853] = 31663, -- Spirit Calling // Spirit Calling Totems
    [10721] = 31350, -- A Boaring Time for Grulloc // Huffer's Whistle
    [10182] = 28351, -- Battle-Mage Dathric // Dathric's Blade
    [10306] = 28352, -- Conjurer Luminrath // Luminrath's Mantle
    [10577] = 30639, -- What Illidan Wants, Illidan Gets... // Blood Elf Disguise
    [11001] = 32462, -- Vanquish the Raven God // Morthis' Materials
    [11089] = 24140, -- The Soul Cannon of Reth'hedron // Illidari Lord Balthas' Instructions
    [11379] = 33852, -- Super Hot Stew // Cooking Pot
    [11377] = 33837, -- Revenge is Tasty // Cooking Pot
    [11381] = 33851, -- Soup for the Soul // Cooking Pot
    [10190] = 28369, -- Recharging the Batteries // Battery Recharging Blaster
    [10173] = 29207, -- The Archmage's Staff // Conjuring Powder
    [10226] = 28547, -- Elemental Power Extraction // Elemental Power Extractor
    [10313] = 29324, -- Measuring Warp Energies // Warp-Attuned Orb
    [10309] = 29447, -- It's a Fel Reaver, But with Heart // Fel Zapper
    -- Alliance/neutral items:
    [9581] = 23875,
    [5903] = 15042,
    [9584] = 23876,
    [9585] = 23877,
    [10221] = 29429,
    [10857] = 31678,
    [10351] = 29478,
    [10480] = 30094,
    [10481] = 30094,
    [9720] = 24355,
    [957] = 5338,
    [6101] = 15922,
    [6102] = 15923,
    [10747] = 31129,
    [10240] = 28725,
    [10369] = 29513,
    [974] = 12472,
    [9361] = 23268,
    [10506] = 30251,
    [5159] = 12906,
    [10255] = 23337,
    [11146] = 33069,
    [10512] = 30353,
    [4971] = 12627,
    [10514] = 30462,
    [11150] = 33072,
    [10771] = 31300,
    [9629] = 23995,
    [5165] = 12906,
    [10586] = 30688,
    [11183] = 33113,
    [10269] = 28962,
    [11159] = 33091,
    [10144] = 28106,
    [11161] = 33088,
    [10146] = 28038,
    [10274] = 29101,
    [10275] = 29018,
    [4726] = 12284,
    [10913] = 31769,
    [10935] = 31828,
    [11169] = 33101,
    [11162] = 33095,
    [611] = 4027,
    [9902] = 25539,
    [6063] = 15921,
    [11174] = 33108,
    [9905] = 25539,
    [10929] = 31810,
    [10923] = 31811,
    [10924] = 31815,
    [10163] = 28132,
    [10912] = 31809,
    [10800] = 31403,
    [10911] = 31807,
    [10802] = 31827,
    [10909] = 31772,
    [10424] = 29803,
    [993] = 5387,
    [5245] = 12891,
    [10427] = 29817,
    [10047] = 25889,
    [10556] = 30530,
    [10877] = 31705,
    [10839] = 31610,
    [10808] = 31386,
    [9545] = 23645,
    [9927] = 25552,
    [10563] = 30638,
    [10564] = 30614,
    [10629] = 30803,
    [9931] = 25555,
    [9932] = 25658,
    [10621] = 30756,
    [9427] = 23361,
    [10609] = 30742,
    [10203] = 30354,
    [11209] = 33166,
    [10584] = 30656,
    [10426] = 29818,
    [10345] = 29473,
    [10198] = 28607,
    [9874] = 24560,
    [717] = 4640,
    [55] = 7297,
    [9718] = 25465,
    [10457] = 29952,
    [10458] = 30094,
    [10078] = 26002,
    [10411] = 29737,
    [325] = 7297,
    [10335] = 29445,
    [9849] = 24501,
    [9805] = 24467,
    [9824] = 24474,
    [10594] = 30701,
    -- Horde Items:
    [9774] = 25539,
    [10720] = 31141,
    [9903] = 25539,
    [5441] = 16114,
    [9904] = 25539,
    [3123] = 9618,
    [9433] = 23675,
    [10598] = 30614,
    [10859] = 31668,
    [1196] = 5868,
    [3124] = 9619,
    [10838] = 31606,
    [5901] = 15042,
    [9847] = 24498,
    [553] = 3710,
    [10791] = 31344,
    [10723] = 31752,
    [10714] = 31128,
    [3125] = 9620,
    [11205] = 33072,
    [9410] = 23669,
    [10596] = 30638,
    [10545] = 30353,
    [10544] = 30479,
    [10525] = 30481,
    [9444] = 23691,
    [3126] = 9606,
    [9193] = 22755,
    [3520] = 10699,
    [264] = 6145,
    [10488] = 30175,
    [10278] = 29027,
    [10250] = 28651,
    [3127] = 9621,
    [5151] = 12942,
    [10162] = 28132,
    [10166] = 28209,
    [10208] = 28478,
    [10129] = 28038,
    [6082] = 15920,
    [10087] = 27479,
    [9391] = 23480,
    [9910] = 25458,
    [6083] = 15919,
    [5088] = 12785,
    [8889] = 24337,
    [877] = 5068,
    [9457] = 23680,
    [9174] = 22675,
    [9370] = 23358,
    [10813] = 31463,
    [6062] = 15917
}

-- Items required to turn in the quest
addon.questTurnInItems = {
    [944] = 5251, -- The Master's Glaive // Phial of Scrying
    [3449] = 10444, -- Arcane Runes // Standard Issue Flare Gun
    [10188] = 28455, -- The Sigil of Krasus // Archmage Vargoth's Staff
    [10209] = 28455, -- Summoner Kanthin's Prize // Archmage Vargoth's Staff
    [10192] = 28455, -- Krasus's Compendium // Archmage Vargoth's Staff
    [10301] = 28455, -- Unlocking the Compendium // Archmage Vargoth's Staff
    [10174] = 28455, -- Curse of the Violet Tower // Archmage Vargoth's Staff
    [10904] = 31763, -- Harvesting the Fel Ammunition // Druid Signal
    [10910] = 31763, -- Death's Door // Druid Signal
    [10911] = 31763, -- Fire At Will! // Druid Signal
    [2201] = 7667, -- Find the Gems // Talvash's Phial of Scrying
    [10750] = 31108, -- The Path of Conquest // Kor'kron Flare Gun
    [10751] = 31108, -- Breaching the Path // Kor'kron Flare Gun
    [10765] = 31108, -- When Worlds Collide... // Kor'kron Flare Gun
    [10768] = 31108, -- Tabards of the Illidari // Kor'kron Flare Gun
    [10819] = 31366, -- Felsworn Gas Mask // Felsworn Gas Mask
    [10820] = 31366, -- Deceive thy Enemy // Felsworn Gas Mask
    [10772] = 31310, -- The Path of Conquest // Wildhammer Flare Gun
    [10773] = 31310, -- Breaching the Path // Wildhammer Flare Gun
    [10774] = 31310, -- Blood Elf + Giant = ??? // Wildhammer Flare Gun
    [10775] = 31310, -- Tabards of the Illidari // Wildhammer Flare Gun
    [2458] = 8051 -- Deep Cover // Flare Gun
}

-- Items required to accept the quest
addon.questAcceptItems = {
    [10820] = 31366, -- Deceive thy Enemy // Felsworn Gas Mask
    [10821] = 31366, -- You're Fired! // Felsworn Gas Mask
    [10773] = 31310, -- Breaching the Path // Wildhammer Flare Gun
    [10774] = 31310, -- Blood Elf + Giant = ??? // Wildhammer Flare Gun
    [10775] = 31310, -- Tabards of the Illidari // Wildhammer Flare Gun
    [10776] = 31310, -- Dissension Amongst the Ranks... // Wildhammer Flare Gun
    [10751] = 31108, -- Breaching the Path // Kor'kron Flare Gun
    [10765] = 31108, -- When Worlds Collide... // Kor'kron Flare Gun
    [10768] = 31108, -- Tabards of the Illidari // Kor'kron Flare Gun
    [10769] = 31108, -- Dissension Amongst the Ranks... // Kor'kron Flare Gun
    [10176] = 28455, -- Ar'kelos the Guardian // Archmage Vargoth's Staff
    [10188] = 28455, -- The Sigil of Krasus // Archmage Vargoth's Staff
    [10209] = 28455, -- Summoner Kanthin's Prize // Archmage Vargoth's Staff
    [10192] = 28455, -- Krasus's Compendium // Archmage Vargoth's Staff
    [10301] = 28455, -- Unlocking the Compendium // Archmage Vargoth's Staff
    [10174] = 28455, -- Curse of the Violet Tower // Archmage Vargoth's Staff
    [3461] = 10444, -- Return to Tymor // Standard Issue Flare Gun
    [2204] = 7667, -- Restoring the Necklace // Talvash's Phial of Scrying
    [949] = 5251, -- The Twilight Camp // Phial of Scrying
    [2478] = 8051 -- Mission: Possible But Not Probable // Flare Gun
}

addon.flightPath = {}

addon.flightPath["Alliance"] = {
    [43] = "Aerie Peak, The Hinterlands",
    [12] = "Darkshire, Duskwood",
    [8] = "Thelsamar, Loch Modan",
    [7] = "Menethil Harbor, Wetlands",
    [6] = "Ironforge, Dun Morogh",
    [5] = "Lakeshire, Redridge",
    [4] = "Sentinel Hill, Westfall",
    [195] = "Rebel Camp, Stranglethorn Vale",
    [45] = "Nethergarde Keep, Blasted Lands",
    [19] = "Booty Bay, Stranglethorn",
    [74] = "Thorium Point, Searing Gorge",
    [14] = "Southshore, Hillsbrad",
    [71] = "Morgan's Vigil, Burning Steppes",
    [16] = "Refuge Pointe, Arathi",
    [67] = "Light's Hope Chapel, Eastern Plaguelands",
    [66] = "Chillwind Camp, Western Plaguelands",
    [2] = "Stormwind, Elwynn",
    --
    [64] = "Talrendis Point, Azshara",
    [65] = "Talonbranch Glade, Felwood",
    [73] = "Cenarion Hold, Silithus",
    [79] = "Marshal's Refuge, Un'Goro Crater",
    [80] = "Ratchet, The Barrens",
    [166] = "Emerald Sanctuary, Felwood",
    [167] = "Forest Song, Ashenvale",
    [179] = "Mudsprocket, Dustwallow Marsh",
    [26] = "Auberdine, Darkshore",
    [27] = "Rut'theran Village, Teldrassil",
    [28] = "Astranaar, Ashenvale",
    [31] = "Thalanaar, Feralas",
    [32] = "Theramore, Dustwallow Marsh",
    [33] = "Stonetalon Peak, Stonetalon Mountains",
    [37] = "Nijel's Point, Desolace",
    [39] = "Gadgetzan, Tanaris",
    [41] = "Feathermoon, Feralas",
    [52] = "Everlook, Winterspring",
    [62] = "Nighthaven, Moonglade",
    --
    [156] = "Toshley's Station, Blade's Edge Mountains",
    [150] = "Cosmowrench, Netherstorm",
    [149] = "Shatter Point, Hellfire Peninsula",
    [164] = "Orebor Harborage, Zangarmarsh",
    [160] = "Evergrove, Blade's Edge Mountains",
    [100] = "Honor Hold, Hellfire Peninsula",
    [139] = "The Stormspire, Netherstorm",
    [129] = "Hellfire Peninsula, The Dark Portal, Alliance",
    [128] = "Shattrath, Terokkar Forest",
    [125] = "Sylvanaar, Blade's Edge Mountains",
    [124] = "Wildhammer Stronghold, Shadowmoon Valley",
    [122] = "Area 52, Netherstorm",
    [121] = "Allerian Stronghold, Terokkar Forest",
    [119] = "Telaar, Nagrand",
    [117] = "Telredor, Zangarmarsh",
    [113] = "Quest - Nethrandamus Start",
    [101] = "Temple of Telhamat, Hellfire Peninsula",

    [93] = "Blood Watch, Bloodmyst Isle",
    [94] = "The Exodar",
    [205] = "Zul'Aman, Ghostlands"
}

addon.flightPath["Horde"] = {
    [13] = "Tarren Mill, Hillsbrad",
    [11] = "Undercity, Tirisfal",
    [10] = "The Sepulcher, Silverpine Forest",
    [18] = "Booty Bay, Stranglethorn",
    [17] = "Hammerfall, Arathi",
    [21] = "Kargath, Badlands",
    [20] = "Grom'gol, Stranglethorn",
    [76] = "Revantusk Village, The Hinterlands",
    [75] = "Thorium Point, Searing Gorge",
    [56] = "Stonard, Swamp of Sorrows",
    [70] = "Flame Crest, Burning Steppes",
    [68] = "Light's Hope Chapel, Eastern Plaguelands",
    --
    [72] = "Cenarion Hold, Silithus",
    [77] = "Camp Taurajo, The Barrens",
    [79] = "Marshal's Refuge, Un'Goro Crater",
    [80] = "Ratchet, The Barrens",
    [166] = "Emerald Sanctuary, Felwood",
    [179] = "Mudsprocket, Dustwallow Marsh",
    [22] = "Thunder Bluff, Mulgore",
    [23] = "Orgrimmar, Durotar",
    [25] = "Crossroads, The Barrens",
    [29] = "Sun Rock Retreat, Stonetalon Mountains",
    [30] = "Freewind Post, Thousand Needles",
    [38] = "Shadowprey Village, Desolace",
    [40] = "Gadgetzan, Tanaris",
    [42] = "Camp Mojache, Feralas",
    [44] = "Valormok, Azshara",
    [48] = "Bloodvenom Post, Felwood",
    [53] = "Everlook, Winterspring",
    [55] = "Brackenwall Village, Dustwallow Marsh",
    [58] = "Zoram'gar Outpost, Ashenvale",
    [61] = "Splintertree Post, Ashenvale",
    [63] = "Nighthaven, Moonglade",
    --
    [142] = "Hellfire Peninsula - Reaver's Fall",
    [151] = "Swamprat Post, Zangarmarsh",
    [150] = "Cosmowrench, Netherstorm",
    [163] = "Mok'Nathal Village, Blade's Edge Mountains",
    [160] = "Evergrove, Blade's Edge Mountains",
    [99] = "Thrallmar, Hellfire Peninsula",
    [139] = "The Stormspire, Netherstorm",
    [130] = "Hellfire Peninsula, The Dark Portal, Horde",
    [128] = "Shattrath, Terokkar Forest",
    [127] = "Stonebreaker Hold, Terokkar Forest",
    [126] = "Thunderlord Stronghold, Blade's Edge Mountains",
    [123] = "Shadowmoon Village, Shadowmoon Valley",
    [122] = "Area 52, Netherstorm",
    [120] = "Garadar, Nagrand",
    [118] = "Zabra'jin, Zangarmarsh",
    [102] = "Falcon Watch, Hellfire Peninsula",
    [141] = "Spinebreaker Ridge, Hellfire Peninsula",

    [82] = "Silvermoon City",
    [83] = "Tranquillien, Ghostlands",
    [205] = "Zul'Aman"
}

--[[
local list = C_TaxiMap.GetTaxiNodesForMap(map)
list = ""
for k,v in pairs(list) do
   if v.faction ~= 2 then
      --print(v.name,v.faction)
      mlist = string.format('%s[%d] = "%s", ',list,v.nodeID,v.name)
   end
end
StaticPopupDialogs["m1"] = {timeout=10,hasEditBox = 1,text = ""} StaticPopup_Show("m1") StaticPopup1EditBox:SetText(mlist)
]]

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
]]
--skip line if not needed for that specific quest
--start here

--A Heap of Ethereals
QuestDB[10262] = {}
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

--Drain Schematics
QuestDB[9731] = {}
QuestDB[9731].xp = 6240
QuestDB[9731].itemId = 24330
QuestDB[9731].itemAmount = 1

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

--Murkblood Invaders
QuestDB[9872] = {}
QuestDB[9872].xp = 11650
QuestDB[9872].appliesTo = "Horde"
QuestDB[9872].itemId = 24558
QuestDB[9872].itemAmount = 1

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
QuestDB[9764].itemId = 24367
QuestDB[9764].itemAmount = 1
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

--A Cleansing Light
QuestDB[10420] = {}
QuestDB[10420].xp = 15800
QuestDB[10420].itemId = 29740
QuestDB[10420].itemAmount = 1

--Marks of Sargeras
QuestDB[10653] = {}
QuestDB[10653].xp = 12650
QuestDB[10653].itemId = 30809
QuestDB[10653].itemAmount = 10

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

--Sunfury Signets
QuestDB[10656] = {}
QuestDB[10656].xp = 12650
QuestDB[10656].itemId = 30810
QuestDB[10656].itemAmount = 10

--Firewing Signets
QuestDB[10412] = {}
QuestDB[10412].xp = 11000
QuestDB[10412].itemId = 29426
QuestDB[10412].itemAmount = 10

--Synthesis of Power
QuestDB[10416] = {}
QuestDB[10416].xp = 15800
QuestDB[10416].itemId = 29739
QuestDB[10416].itemAmount = 1

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

--Ethereum Secrets
QuestDB[10971] = {}
QuestDB[10971].previousQuest = 10970
QuestDB[10971].xp = 12650
QuestDB[10971].itemId = 31957
QuestDB[10971].itemAmount = 1

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

--Terokk's Downfall
QuestDB[11073] = {}
QuestDB[11073].xp = 19000
QuestDB[11073].questLog = true

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
QuestDB[10649].previousQuest = 10646 --check if this is right
QuestDB[10649].xp = 25300
QuestDB[10649].questLog = true

--Into the Heart of the Labyrinth
QuestDB[10095] = {}
QuestDB[10095].previousQuest = 10094
QuestDB[10095].xp = 25300
QuestDB[10095].questLog = true

--Trial of the Naaru: Strength
QuestDB[10885] = {}
QuestDB[10885].xp = 19000
QuestDB[10885].questLog = true

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

--[[ --Remove those quests, do illidari bane shard instead
--Tear of the Earthmother
QuestDB[10670] = {}
QuestDB[10670].previousQuest = {10666,10665}
QuestDB[10670].xp = 25300
QuestDB[10670].questLog = true

--Underworld Loam
QuestDB[10667] = {}
QuestDB[10667].previousQuest = {10666,10665}
QuestDB[10667].xp = 25300
QuestDB[10667].questLog = true
]]

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
QuestDB[11369] = {}
QuestDB[11369].xp = 19000
QuestDB[11369].questLog = true
QuestDB[11369].daily = true
--[[
QuestDB[11384] = {}
QuestDB[11384].xp = 19000
QuestDB[11384].questLog = true
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
QuestDB[11369].daily = true
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

QuestDB[11097] = {}
QuestDB[11097].xp = 15800
QuestDB[11097].repfaction = 1015
QuestDB[11097].reputation = "revered"
QuestDB[11097].questLog = true

QuestDB[11101] = {}
QuestDB[11101].xp = 15800
QuestDB[11101].repfaction = 1015
QuestDB[11101].reputation = "revered"
QuestDB[11101].questLog = true

QuestDB[11076] = {}
QuestDB[11076].previousQuest = 11075
QuestDB[11076].xp = 12650
QuestDB[11076].questLog = true

QuestDB[11035] = {}
QuestDB[11035].xp = 12650
QuestDB[11035].questLog = true

QuestDB[11086] = {}
QuestDB[11086].xp = 12650
QuestDB[11086].questLog = true

QuestDB[11055] = {}
QuestDB[11055].previousQuest = 11054
QuestDB[11055].xp = 12650
QuestDB[11055].questLog = true

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

QuestDB[11051] = {}
QuestDB[11051].previousQuest = 11026
QuestDB[11051].xp = 12650
QuestDB[11051].questLog = true

QuestDB[11066] = {}
QuestDB[11066].previousQuest = 11065
QuestDB[11066].xp = 12650
QuestDB[11066].questLog = true

--rest
QuestDB[11515] = {}
QuestDB[11515].xp = 12650
QuestDB[11515].questLog = true

QuestDB[11502] = {}
QuestDB[11502].xp = 12650
QuestDB[11502].appliesTo = "Alliance"
QuestDB[11502].questLog = true

QuestDB[11503] = {}
QuestDB[11503].xp = 12650
QuestDB[11503].appliesTo = "Horde"
QuestDB[11503].questLog = true

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
QuestDB[9724].xp = 10560

--Blessings of the Ancients
QuestDB[9785] = {}
QuestDB[9785].xp = 4320

--Watcher Leesa'oh + Observing the Sporelings
QuestDB[9697] = {}
QuestDB[9697].xp = 9390
QuestDB[9697].repfaction = 942
QuestDB[9697].reputation = "friendly"

--Sporeggar
QuestDB[9919] = {}
QuestDB[9919].xp = 8600

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
QuestDB[10005].xp = 9330
QuestDB[10005].appliesTo = "Alliance"

--Letting Earthbinder Tavgren Know
QuestDB[10006] = {}
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

--Surrender to the Horde
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

--Concerted Efforts
QuestDB[8371] = {}
QuestDB[8371].xp = 4850
QuestDB[8371].appliesTo = "Alliance"
QuestDB[8371].itemId = {20560,20559,20558,29024}
QuestDB[8371].itemAmount = {1,1,1,1}

--Concerted Efforts
QuestDB[8367] = {}
QuestDB[8367].xp = 4850
QuestDB[8367].appliesTo = "Horde"
QuestDB[8367].itemId = {20560,20559,20558,29024}
QuestDB[8367].itemAmount = {1,1,1,1}

--Strained Supplies
QuestDB[10017] = {}
QuestDB[10017].xp = 8600
QuestDB[10017].itemId = 25802
QuestDB[10017].itemAmount = 8

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

--He Called Himself Altruis...
QuestDB[9982] = {}
QuestDB[9982].xp = 1200
QuestDB[9982].appliesTo = "Alliance"

--He Called Himself Altruis...
QuestDB[9983] = {}
QuestDB[9983].xp = 1200
QuestDB[9983].appliesTo = "Horde"

--Murkblood Invaders
QuestDB[9871] = {}
QuestDB[9871].xp = 11650
QuestDB[9871].appliesTo = "Alliance"

--Murkblood Invaders
QuestDB[9872] = {}
QuestDB[9872].xp = 11650
QuestDB[9872].appliesTo = "Horde"

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

--The Hand of Gul'dan
QuestDB[10680] = {}
QuestDB[10680].xp = 3150
QuestDB[10680].appliesTo = "Alliance"

--Imbuing the Headpiece
QuestDB[10680] = {}
QuestDB[10680].previousQuest =10780
QuestDB[10680].xp = 12300

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

--Stand Tall, Captain!
QuestDB[11084] = {}
QuestDB[11084].xp = 12650

--Hail, Commander!
QuestDB[11092] = {}
QuestDB[11092].xp = 12650

--Enter the Deceiver...
QuestDB[11550] = {}
QuestDB[11550].xp = 3150

--Blade's Edge
--The Ogre Threat
QuestDB[9795] = {}
QuestDB[9795].xp = 2700
QuestDB[9795].appliesTo = "Horde"

--No Time for Curiosity
QuestDB[9794] = {}
QuestDB[9794].xp = 2700
QuestDB[9794].appliesTo = "Alliance"

--Where Did Those Darn Gnomes Go? + Follow the Breadcrumbs
QuestDB[10580] = {}
QuestDB[10580].xp = 5800
QuestDB[10580].appliesTo = "Alliance"

--Off To Area 52
QuestDB[10183] = {}
QuestDB[10183].xp = 3050

--A Time for Negotiation...
QuestDB[10682] = {}
QuestDB[10682].xp = 11650

--Our Boy Wants To Be A Skyguard Ranger + followup quest
QuestDB[11030] = {}
QuestDB[11030].xp = 12650
QuestDB[11030].itemId = 32569 --apexis shards
QuestDB[11030].itemAmount = 5

--The Crystals
QuestDB[11025] = {}
QuestDB[11025].xp = 25300
QuestDB[11025].itemId = 32569 --apexis shards
QuestDB[11025].itemAmount = 20

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


local s = {}
addon.defaultSpellList = s

s["DRUID"] = {
    [4] = {
        8921, -- moonfire
        774 -- rejuvenation
    },
    [6] = {
        467, -- thorns
        5177 -- wrath r2
    },
    [8] = {
        339, -- entangling roots
        5186 -- healing touch r2
    },
    [10] = {
        5232, -- mark of the wild
        1058, -- rejuvenation r2
        99 -- demoralizing roar
    },
    [12] = {
        5229, -- enrage
        8936 -- regrowth
    },
    [14] = {
        5211, -- bash
        782, -- thorns r2
        5187 -- healing touch r3
    },
    [16] = {
        1430, -- rejuvenation r3
        779 -- swipe
    },
    [18] = {
        1062, -- entangling roots r2
        770, -- faerie fire
        2637, -- hibernate
        6808, -- maul r2
        8938 -- regrowth
    },
    [20] = {
        768, -- cat form
        1082, -- claw
        5188, -- healing touch r4
        6756, -- mark of the wild r3
        5215, -- prowl
        1079 -- rip
    },
    [22] = {
        2090 -- rejuvenation r4
    },
    [24] = {
        1822, -- rake
        8939, -- regrowth r3
        2782, -- remove curse
        1075, -- thorns r3
        5217 -- tigers fury
    },
    [26] = {
        2893, -- abolish poison
        1850, -- dash
        5189, -- healing touch r5
        3029 -- claw r2
    },
    [28] = {
        5195, -- entangling roots r3
        2091, -- rejuvenation r5
        9492 -- rip r2
    },
    [30] = {
        17390, -- faerie fire feral r2
        778, -- faerie fire r2
        5234, -- mark of the wild
        8940, -- regrowth r4
        783 -- travel form
    },
    [32] = {
        22568, -- ferocious bite
        6778, -- healing touch r6
        6785, -- ravage
        1823 -- rake r2
    },
    [34] = {
        1823, -- rake r2
        3627, -- rejuvenation r6
        8914 -- thorns r4
    },
    [36] = {
        9005, -- pounce
        8941, -- regrowth r5
        9493, -- rip
        6793 -- tigers fury
    },
    [38] = {
        5201, -- claw r3
        5196, -- entangling roots r4
        8903 -- healing touch r7
    },
    [40] = {
        20719, -- feline grace
        22827, -- ferocious bite r2
        29166, -- inntervate
        8907, -- mark of the wild r5
        8910, -- rejuvenation r7
        6783, -- prowl r2
        9634 -- dire bear
    },
    [42] = {
        17391, -- faerie fire feral r3
        9749, -- faerie fire r3
        6787, -- ravage r2
        9750 -- regrowth r6
    },
    [44] = {
        22812, -- barkskin
        9758, -- healing touch r8
        1824, -- rake r3
        9752, -- rip r4
        9756 -- thorns r5
    },
    [46] = {
        9821, -- dash r2
        9823, -- pounce r2
        9839 -- rejuvenation r8
    },
    [48] = {
        9849, -- claw r4
        22828, -- ferocious bite r3
        9856, -- regrowth r7
        9845 -- tigers fury r3
    },
    [50] = {
        9888, -- healing touch r9
        9884, -- mark of the wild r6
        9866 -- ravage r3
    },
    [52] = {
        9840, -- rejuvenation r9
        9894 -- rip r5
    },
    [54] = {
        17392, -- faerie fire feral r4
        9907, -- faerie fire f4
        9857, -- regrowth r8
        9910 -- throns r6
    },
    [56] = {
        22829, -- ferocious bite r4
        9889, -- healing touch r10
        9827 -- pounce r3
    },
    [58] = {
        9857, -- ravage r4
        9841, -- rejuvenation r10
        33982 -- mangle r2
    },
    [60] = {
        31018, -- ferocious bite r5
        25297, -- healing touch r11
        9885, -- mark of the wild r7
        9913, -- prowl r3
        9858, -- regrowth r9
        25299, -- rejuvenation r11
        9868, -- rip r6
        9846 -- tigers fury r4
    },
    [62] = {
        26978, -- healing touch r12
        22570 -- maim
    },
    [63] = {
        24248, -- ferocious bite r6
        26981 -- rejuvenation r12
    },
    [64] = {
        33763, -- lifebloom
        26992 -- thorns r7
    },
    [65] = {
        33357, -- dash r3
        26980 -- regrowth
    },
    [66] = {
        27011, -- faerie fire feral r5
        26993, -- faerie fire r5
        27006, -- pounce r4
        27005 -- ravage r5
    },
    [68] = {
        33983 -- mangle r3
    },
    [69] = {
        26979, -- healing touch r13
        26982 -- rejuvenation r13
    }
}

s["PALADIN"] = {
    [1] = {
        465 -- Devotion Aura
    },
    [4] = {
        20271, -- Judgement
        19740 -- Blessing of might
    },
    [6] = {
        498, -- Divine protections
        639, -- Holy Light R2
        3127 -- parry
    },
    [8] = {
        853 -- Hammer of Justice
    },
    [10] = {
        663, -- Lay on Hands
        1022, -- Blessing of Protection
        10290, -- Devotion Aura R2
        1152 -- Purify
    },
    [12] = {
        20287, -- Seal of Righteousness R2
        19834 -- Blessing of Might R2
    },
    [14] = {
        19742, -- Blessing of Wisdom
        647, -- Holy Light R3
        21082, -- Seal of the crusader r1
        20162 -- Seal of the crusader r2
    },
    [16] = {
        7294 -- Retribution Aura
    },
    [18] = {
        5573, -- Divine Protection R2
        20288 -- Seal of Rightousness
    },
    [20] = {
        26573, -- Consecration
        19750, -- Flash of Light
        879, -- Exorcism
        643 -- Devotion Aura R3
    },
    [22] = {
        1026, -- Holy Light R4
        19835, -- blessing of might r3
        20305 -- seal of teh crusader r3
    },
    [24] = {
        19850, -- blessing of wisdom r2
        5588, -- hammer of justice r2
        5599 -- blessing of pretection r2
    },
    [26] = {
        19939, -- flash of light r2
        10298 -- retribution aura r2
    },
    [28] = {
        5614 -- exorcism r2
    },
    [30] = {
        34769, -- summon warhorse (belf)
        13819, -- summon warhorse (alliance)
        20116, -- consecration r2
        1042, -- holy light r5
        10291, -- devotion aura r4
        2800, -- lay of hands r2
        20915 -- seal of command r2
    },
    [32] = {
        19836, -- blessing of might r4
        20306 -- seal of the crusader r4
    },
    [34] = {
        642, -- divine shield
        19940, -- flash of light r3
        19852 -- blessing of wisdom r3
    },
    [36] = {
        5615, -- exorcism r3
        10299 -- retribution aura r3
    },
    [38] = {
        10278, -- blessing of protection r3
        3472, -- holy light
        20166 -- seal of wisdom
    },
    [40] = {
        20922, -- consecration r3
        5589, -- hammer of justice r3
        1032, -- devotion aura r5
        20918 -- seal of command r3
    },
    [42] = {
        4987, -- cleanse
        19837, --  blessing of might r5
        19941, -- flash of light r4
        20307 -- seal of the crusader r5
    },
    [44] = {
        24275, -- hammer of wrath
        10312, -- exorcism r4
        19853 -- blessing of wisdom r4
    },
    [46] = {
        10300, -- retribution aura r4
        10328, -- holy light r7
        20356 -- seal of wisdom r2
    },
    [50] = {
        1020, -- divine shield r2
        2812, -- holy wrath
        19942, -- flash of light r5
        10310, -- lay of hands r3
        10292, -- devotion aura r6
        20923, -- consecration r4
        20919 -- seal of command r4
    },
    [52] = {
        19838, -- blessing of might r6
        24274, -- hammer of wrath r2
        10313, -- exorcism r5
        20308 -- seal of the crusader r6
    },
    [54] = {
        10308, -- hammer of justice r4
        10329, -- holy light r8
        19854 -- blessing of wisdom r5
    },
    [56] = {
        10301 -- retribution aura r5
    },
    [58] = {
        19943, -- flash of light r6
        20357 -- seal of widom r3
    },
    [60] = {
        20954, -- consecration r5
        25291, -- blessing of might r7
        10314, -- exorcism r6
        25294, -- holy light r9
        10318, -- holy wrath r2
        10293, -- devotion aura r7
        25290, -- blessing of wisdom r6
        24239, -- hammer of wrath r3
        20920 -- seal of command r5
    },
    [61] = {
        27158 -- seal of the crusader
    },
    [62] = {
        32223, -- crusader aura
        27135 -- holy light r10
    },
    [64] = {
        31892, -- seal of blood
        31801 -- seal of vengeance
    },
    [65] = {
        27142 -- blessing of wisdom
    },
    [66] = {
        33776, -- spiritual attunement
        27137, -- flash of light r7
        27150, -- retribution aura
        27166 -- seal of wisdom r4
    },
    [68] = {
        27180, -- hammer of wrath r4
        27138, -- exorcism r7
        27139 -- holy wrath r3
    },
    [69] = {
        27154 --  lay of hands r4
    }
}

s["SHAMAN"] = {
    [1] = {
        8017 -- Rockbiter weapon
    },
    [4] = {
        8042 -- earth shock
    },
    [6] = {
        2484, -- earthbind totem
        332 -- healing wave r2
    },
    [8] = {
        8044, -- earth shock r2
        324, -- lightning shield
        5730, -- stoneclaw totem
        8018 -- rockbiter weapon r2
    },
    [10] = {
        850, -- flame shock
        8075, -- strength of earth totem
        529, -- Lightning Bolt r2 (10 instead of 8 to save money)
        8024 -- Flametongue Weapon
    },
    [12] = {
        1535, -- fire nova totem
        547, -- healing wave r3
        370 -- Purge
    },
    [14] = {
        8045, -- earth shock r3
        548 -- Lightning Bolt r3
    },
    [16] = {
        526, -- cure poison
        325, -- lightning shield r2
        8019 -- rockbiter weapon r3
    },
    [18] = {
        8052, -- flame shock r2
        913, -- healing wave r4
        6390, -- stoneclaw totem r2
        8143, -- Tremor Totem
        8027 -- Flametongue Weapon r2
    },
    [20] = {
        8056, -- frost shock
        2645, -- ghost wolf
        8004, -- lesser healing wave
        6363, -- searing totem r2
        915 -- Lightning Bolt r4
    },
    [22] = {
        131, -- Water Breathing
        2870, -- cure disease
        8498, -- fire nova totem r2
        8166 -- Poison Cleansing Totem
    },
    [24] = {
        8046, -- earth shock r4
        939, -- healing wave r5
        905, -- lightning shield r3
        10399, -- rockbiter e4
        8160, -- strength of earth totem r2
        8181 -- Frost resistance totem
    },
    [26] = {
        943, -- Lightning Bolt r5
        5675, -- Mana Spring Totem
        6196, -- far sight
        8030, -- Flametongue Weapon r3
        8190 -- Magma Totem r1
    },
    [28] = {
        8053, -- flame shock r3
        8008, -- lesser healing wave r2
        6391, -- stoneclaw totem r3
        546, -- water walking
        8184 -- Fire resistance totem
    },
    [30] = {
        556, -- astral recall
        8177, -- grounding totem
        20608, -- reincarnation
        6364, -- searing totem r3
        36936, -- totemic call
        8232 -- windfury weapon
    },
    [32] = {
        8499, -- fire nova totem r3
        421, -- Chain Lightning
        959, -- healing wave r6
        945, -- lightning shield r4
        8012, -- Purge r2
        6041 -- Lightning Bolt r6
    },
    [34] = {
        8058, -- frost shock r2
        16314 -- rockbiter weapon r5
    },
    [36] = {
        8010, -- lesser healing wave r3
        10412, -- earth shock r5
        10495, -- Mana Spring Totem r2
        16339 -- Flametongue Weapon r4
    },
    [38] = {
        6392, -- stoneclaw totem r4
        8161, -- strength of earth totem r3
        10391, -- Lightning Bolt r7
        8170 -- Disease Cleansing Totem
    },
    [40] = {
        8737, -- Mail
        10447, -- flame shock r4
        8005, -- healing wave r7
        8134, -- lightning shield r5
        6365, -- searing totem r4
        8235, -- windfury weapon r2
        930 -- Chain Lightning r2
    },
    [42] = {
        11314, -- fire nova totem r4
        8835 -- Grace of Air Totem
    },
    [44] = {
        10466, -- lesser healing wave r4
        10392 -- Lightning Bolt r8
    },
    [46] = {
        10472, -- frost shock r3
        10496, -- Mana Spring Totem r3
        10585, -- Magma Totem r2
        10586 -- Magma Totem r3
    },
    [48] = {
        10413, -- earth shock r6
        10395, -- healing wave r8
        10431, -- lightning shield r6
        10427, -- stoneclaw totem r5
        2860 -- Chain Lightning r3
    },
    [50] = {
        10437, -- searing totem r5
        10486, -- windfury weapon r3
        15207 -- Lightning Bolt r9
    },
    [52] = {
        11315, -- fire nova totem r5
        10448, -- flame shock r5
        10467, -- lesser healing wave r5
        10442 -- strength of earth totem r4
    },
    [54] = {
        10408 -- stoneskin totem r6
    },
    [56] = {
        10396, -- healing wave r9
        10432, -- lightning shield r7
        10497, -- Mana Spring Totem r4
        10627, -- Grace of Air Totem r2
        15208, -- Lightning Bolt r10
        10605 -- Chain Lightning r4
    },
    [58] = {
        10473, -- frost shock r4
        10428 -- stoneclaw totem r6
    },
    [60] = {
        10414, -- earthshock r7
        29228, -- flame shock r6
        25357, -- healing wave r10
        10468, -- lesser healing wave r6
        10438, -- searing totem r6
        25361, -- strength of earth totem r5
        16362, -- windfury weapon r4
        25359 -- Grace of Air Totem r3
    },
    [61] = {
        25546 -- fire nova totem r6
    },
    [62] = {
        24398, -- water shield
        25448 -- Lightning Bolt r11
    },
    [63] = {
        25469, -- lightning shield r8
        25391, -- healing wave r11
        25439 -- Chain Lightning r5
    },
    [64] = {
        3738 -- wrath of air totem
    },
    [65] = {
        25528, -- strength of earth totem r6
        25570 -- Mana Spring Totem r5
    },
    [66] = {
        2062, -- earth elemental totem
        25320, -- lesser healing wave r7
        25525 -- stoneclaw totem r7
    },
    [67] = {
        25525, -- stoneclaw totem r7
        25449 -- Lightning Bolt r12
    },
    [68] = {
        2894, -- fire elemental totem
        25364, -- frost shock r5
        25505 -- windfury weapon r5
    },
    [69] = {
        25454, -- earth shock r8
        25533, -- searing totem r7
        33736 -- Water Shield r2
    }
}

s["HUNTER"] = {
    [4] = {
        1979 -- serpent sting
    },
    [6] = {
        3044 -- arcane shot
    },
    [8] = {
        5116, -- concussive shot
        14260, -- raptor strike r2
        1130, -- hunter's mark
        13163, -- aspect of the monkey
        3127 -- parry
    },
    [10] = {
        13165, -- aspect of the hawk
        13549, -- serpent string r2
        4187, -- great stamina
        24545 -- natural armor
    },
    [12] = {
        136, -- mend pet
        2974, -- wing clip
        4188, -- great stamina r2
        24549 -- natural armor r2
    },
    [14] = {
        1513 -- scare beast
    },
    [16] = {
        13795 -- immolation trap
    },
    [18] = {
        14281, -- arcane shot 2
        14318, -- aspect of the hawk r2
        13550, -- serpent sting r3
        4187, -- great stamina r3
        24550 -- natural armor r3
    },
    [20] = {
        5118, -- aspect of the cheetah
        1499, -- freezing trap
        3111, -- mend pet r2
        15147, -- growl r3
        781 -- disengage r1
    },
    [22] = {
        2643, -- multishot
        14323 -- hunters mark r2
    },
    [24] = {
        4190, -- great stamina r4
        24551 -- natural armor r4
    },
    [26] = {
        3045, -- rapid fire
        13551 -- serpent sting r4
    },
    [28] = {
        14319, -- aspect of the hawk r3
        13809, -- frost trap
        3661 -- mend pet r3
    },
    [30] = {
        5384, -- feign death
        4191, -- great stamina r5
        24552, -- natural armor r5
        14924, -- growl r4
        35694, -- avoidance
        25076, -- cobra reflexes
        14282 -- arcane shot r3
    },
    [32] = {
        14283 -- arcane shot r4
    },
    [34] = {
        13552 -- serpent sting r5
    },
    [36] = {
        3662, -- mend pet r4
        4192, -- great stamina r6
        24553, -- natural armor r6
        3034 -- viper sting
    },
    [38] = {
        14320 -- aspect of the hawk r4
    },
    [40] = {
        14310, -- freezing trap r2
        14324, -- hunter's mark r3
        14925 -- growl r5
    },
    [42] = {
        13553, -- serpentsting r6
        4193, -- great stamina r7
        24561 -- natural armor r7
    },
    [44] = {
        13542, -- mend pet r5
        14284, -- arcane shot r5
        14285 -- arcaneshot r6
    },
    [46] = {
        14384 -- arcane shot r5
    },
    [48] = {
        14321, -- aspect of the hawk r5
        4194, -- great stamina r8
        24555, -- natural armor r8
        14279 -- viper r2
    },
    [50] = {
        13554, -- serpent sting r7
        14926 -- growl r6
    },
    [52] = {
        13543 -- mend pet r6
    },
    [54] = {
        5041, -- great stamina r9
        24629 -- natural armor r9
    },
    [56] = {
        14286, -- arcaneshot r7
        14280 -- viper r3
    },
    [58] = {
        14322, -- aspect of the hawk r6
        14325, -- hunter's mark r4
        13555 -- serpent sting r8
    },
    [60] = {
        14287, -- arcaneshot r8
        25296, -- aspect of the hawk r7
        14311, -- freezing trap r3
        13544, -- mend pet r7
        25295, -- serpentsting r9
        5042, -- great stamind r10
        24630, -- natural armor r10
        14927, -- growl r7
        35698 -- avoidance r2
    },
    [62] = {
        34120 -- steady shot
    },
    [64] = {
        34074 -- aspect of the viper
    },
    [66] = {
        34026 -- kill command
    },
    [67] = {
        27016 -- serpentsting r10
    },
    [68] = {
        27044, -- aspect of the hawk r8
        27046, -- mend pet r8
        34600 -- snake trap
    },
    [69] = {
        27019 -- arcane shot r9
    }
}

s["WARRIOR"] = {
    [1] = {
        6673 -- battle shout r1
    },
    [4] = {
        100, -- charge
        772, -- rend
        3127 -- parry
    },
    [8] = {
        1715, -- hamstring
        284 -- heroic strike r2
    },
    [10] = {
        6546 -- rend 2
    },
    [12] = {
        5242, -- battle shout r2
        7384 -- overpower
    },
    [14] = {
        1160 -- demoralizing shout r1
    },
    [16] = {
        285 -- heroic strike r3
    },
    [20] = {
        845, -- cleave
        6547, -- rend r3
        20230 -- retaliation
    },
    [22] = {
        6192, -- battle shout r3
        5246, -- intimidating shout
        7405 -- sunder armor
    },
    [24] = {
        6190, -- demoralizing shout
        5309, -- execute
        1608 -- heroic strike r4
    },
    [26] = {
        6178 -- charge
    },
    [28] = {
        7887 -- overpower r2
    },
    [30] = {
        7368, -- cleave r2
        20252 -- intercept
    },
    [32] = {
        11549, -- battle shout
        18499, -- berserker rage
        20658, -- execute r2
        7372, -- hamstring r2
        11564 -- heroic strike r5
    },
    [34] = {
        11554, -- demoralizing shout
        8340 -- sunder armor r3
    },
    [36] = {
        1680 -- whirlwind
    },
    [38] = {
        6552 -- pummel
    },
    [40] = {
        20660 -- execute r3
    },
    [42] = {
        11550 -- battle shout r5
    },
    [44] = {
        11555, -- demoralizing shout
        11584 -- overpower r3
    },
    [46] = {
        11578, -- charge r3
        11596 -- sunder armor r4
    },
    [48] = {
        21551, -- mortal strike r2
        20661 -- execute r4
    },
    [50] = {
        1719 -- recklessness
    },
    [52] = {
        11551 -- battle shout 46
    },
    [54] = {
        21552, -- mortal strike r3
        11556, -- demoralizing shout r5
        7373 -- hamstring
    },
    [56] = {
        20662 -- execute r5
    },
    [58] = {
        11597 -- sunder armor r5
    },
    [60] = {
        21553, -- mortal strike r4
        25289, -- battle shout r7
        11585 -- overpower r4
    },
    [62] = {
        25202, -- demoralizing shout r6
        34428 -- victory rush
    },
    [64] = {
        23920 -- spell reflection
    },
    [65] = {
        25234 -- execute r6
    },
    [66] = {
        25248 -- mortal strike r5
    },
    [67] = {
        25212, -- hamstring r4
        25225 -- sunder armor r6
    },
    [68] = {
        249 -- commanding shout
    },
    [69] = {
        2048, -- battle shout r8
        25275 -- intercept r5
    }
}

s["ROGUE"] = {
    [6] = {
        1776, -- gouge
        1757, -- sinister strike r2
        3127 -- parry
    },
    [8] = {
        5277, -- evasion
        6760 -- eviscerate r2
    },
    [10] = {
        5171, -- slice and dice
        2983 -- sprint
    },
    [12] = {
        1766 -- kick
    },
    [14] = {
        1758 -- sinister strike r3
    },
    [16] = {
        6761 -- eviscerate r3
    },
    [20] = {
        1785 -- stealth r2
    },
    [22] = {
        1725, -- distract
        1759, -- sinister strike r4
        1856 -- vanish
    },
    [24] = {
        6762 -- eviscerate r4
    },
    [26] = {
        1833 -- cheap shot
    },
    [28] = {
        8687 -- instant poison 2
    },
    [30] = {
        408, -- kidney shot
        1760 -- sinister strike
    },
    [32] = {
        8623 -- eviscerate
    },
    [34] = {
        2094, -- blind
        8696 -- sprint r2
    },
    [36] = {
        8691 -- instant posion 3
    },
    [38] = {
        8621 -- sinister strike r6
    },
    [40] = {
        8624, -- eviscerate r6
        1860, -- safe fall
        1726 -- stealth r3
    },
    [42] = {
        6774, -- slice and dice r2
        1857 -- vanish r2
    },
    [44] = {
        11341 -- instant poison 4
    },
    [46] = {
        11293 -- sinister strike r7
    },
    [48] = {
        11299 -- eviscerate r7
    },
    [50] = {
        26669, -- evasion r2
        8643 -- kidney shot r2
    },
    [52] = {
        11342 -- instant poison r5
    },
    [54] = {
        11294 -- sinister strike r8
    },
    [56] = {
        11300 -- eviscerate r8
    },
    [58] = {
        11305 -- sprint r3
    },
    [60] = {
        31016, -- eviscerate r9
        11343, -- instant poison r6
        1787 -- stealth r4
    },
    [62] = {
        26861, -- sinister strike r9
        26889 -- vanish r3
    },
    [64] = {
        26679, -- deadly throw
        26865 -- eviscerate r10
    },
    [66] = {
        31224 -- cloak of shadows
    },
    [68] = {
        26892 -- instant poison r7
    }
}

s["WARLOCK"] = {
    [1] = {
        348 -- immolate
    },
    [4] = {
        172 -- corruption
    },
    [6] = {
        1454, -- life tap
        695 -- shadow bolt r2
    },
    [8] = {
        980, -- curse of agony
        5782 -- fear
    },
    [10] = {
        6201, -- create healthstone
        696, -- demon skin r2
        1120, -- drain soul
        707 -- immolate r2
    },
    [12] = {
        755, -- health funnel
        705 -- shadow bolt r3
    },
    [14] = {
        6222, -- corruption r2
        689 -- drain life
    },
    [16] = {
        1455 -- life tap r2
    },
    [18] = {
        1014 -- curse of agony r2
    },
    [20] = {
        706, -- demon armor
        3698, -- health funnel r2
        1094, -- immolate r3
        1088, -- shadowbolt r4
        5740 -- rain of fire r1
    },
    [22] = {
        6202, -- create healthstone r2
        699, -- drain life r2
        5676 -- searing pain r1
    },
    [26] = {
        1714, -- curse of tongues
        1456 -- life tap r3
    },
    [28] = {
        710, -- banish
        6217, -- curse of agony r3
        3699, -- health funnel r3
        1106 -- shadow bolt r5
    },
    [30] = {
        20752, -- create soulstone r2
        1086, -- demon armor r2
        709, -- drain life r3
        2941, -- immolate r4
        5784 -- summon felsteed
    },
    [32] = {
        6213 -- fear r2
    },
    [34] = {
        7684, -- corruption r4
        5699 -- create healthstone r3
    },
    [36] = {
        2362, -- create spellstone
        3700, -- health funnel
        11687, -- life tap r4
        7641 -- shadow bolt r6
    },
    [38] = {
        18879, -- siphon life r2
        11711, -- curse of agony r4
        7651 -- drain life r4
    },
    [40] = {
        20755, -- create soulstone r3
        11733, -- demon armor r3
        5484, -- howl of terror
        11655 -- immolate r5
    },
    [42] = {
        6789 -- death coil
    },
    [44] = {
        11671, -- corruption r5
        11693, -- health funnel r5
        11659 -- shadowbolt r7
    },
    [46] = {
        11729, -- create healthstone
        11699, -- drain life r5
        11688 -- life tap r5
    },
    [48] = {
        18880, -- siphon life r3
        18647, -- banish r2
        11712 -- curse of agony r5
    },
    [50] = {
        18937, -- dark pact r2
        20756, -- create soulstone r4
        17925, -- death coil r2
        11734, -- demon armor r4
        11667 -- immolate r6
    },
    [52] = {
        11694, -- health funnel r6
        11660 -- shadow bolt r8
    },
    [54] = {
        11672, -- corruption r6
        11700, -- drain life r6
        17928 -- howl of terror r2
    },
    [56] = {
        6215, -- fear r3
        11689, -- life tap r6
        18881, -- siphon life r4
        11730 -- create healthstone r5
    },
    [58] = {
        11713, -- curse of agony r6
        17926 -- death coil r3
    },
    [60] = {
        30404, -- unstable affliction r2
        25311, -- corruption r7
        20757, -- create soulstone r5
        11735, -- demon armor r5
        11696, -- health funnel r7
        11668, -- immolate r7
        25309, -- immolate r8
        11661, -- shadow bolt r9
        25307, -- shadow bolt r10
        18938, -- dark pact r3
        25311 -- corruption r7
    },
    [62] = {
        27219, -- drain life r7
        28176 -- fel armor
    },
    [63] = {
        27264 -- siphon life r5
    },
    [65] = {
        27216 -- corruption r8
    },
    [67] = {
        27218, -- curse of agony r7
        27259 -- health funnel r8
    },
    [68] = {
        27230, -- create healthstone r6
        27223, -- death coil r4
        27222 -- life tap r7
    },
    [69] = {
        27220, -- drain life r8
        28189, -- fel armor r2
        27215, -- immolate r9
        27209 -- shadow bolt r11
    }
}

s["MAGE"] = {
    [4] = {
        1459, -- Arcane Intellect
        116, -- frostbolt
        5504 -- Conjure water
    },
    [6] = {
        2136, -- fire blast
        143, -- fireball r2
        587 -- conjure food
    },
    [8] = {
        205, -- frostbolt r2
        118 -- polymorph
    },
    [10] = {
        7300, -- frost armor r2
        122, -- frost nova
        5505 -- conjure water r2
    },
    [12] = {
        597, -- conjure food
        145, -- fireball r3
        130 -- slow fall
    },
    [14] = {
        1449, -- arcane explosion
        1460, -- arcane intellect
        2137, -- fire blast
        837 -- frostbolt
    },
    [16] = {
        2120 -- flamestrike
    },
    [18] = {
        475, -- remove lesser curse
        3140 -- fireball r4
    },
    [20] = {
        1953, -- blink
        10, -- blizzard
        5506, -- conure water r3
        12051, -- evocation
        7103, -- frost armor r3
        7322, -- frostbolt r4
        1463, -- mana shield
        12824, -- polymorph r2
        12271, -- exodar
        3562, -- ironforge
        3561, -- stormwind
        3567, -- orgrimmar
        32272, -- silvermoon
        3563 -- undercity
    },
    [22] = {
        8437, -- arcane explosion r2
        990, -- conure food r3
        2138, -- fireblast
        2948 -- scorch
    },
    [24] = {
        2139, -- counterspell
        8400, -- fireball r5
        2121 -- flamastrike r2
    },
    [26] = {
        120, -- cone of cold
        8406 -- frostbolt r5
    },
    [28] = {
        1461, -- arcane intellect r3
        6141, -- blizzard r2
        759, -- conure mana agate
        8494, -- mana shield r2
        8444 -- scorch r2
    },
    [30] = {
        8438, -- arcane explosion r3
        6127, -- conjure water r4
        8412, -- fire blast r4
        8101, -- fireball r6
        7302, -- ice armor
        45438, -- ice block
        3565, -- darnassus
        3566 -- thunder bluff
    },
    [32] = {
        6129, -- conjure food
        8422, -- flamestrike r3
        8407 -- frostbolt r6
    },
    [34] = {
        8492, -- cone of cold r2
        6117, -- mage armor
        8445 -- scorch r3
    },
    [36] = {
        8427, -- blizzard r3
        8402, -- fireball r7
        8495 -- mana shield
    },
    [38] = {
        8439, -- arcane explosion r4
        3552, -- conjure mana jade
        8413, -- fire blast r5
        8409 -- frostbolt r7
    },
    [40] = {
        10138, -- conjure water r5
        8423, -- flamestrike r4
        7320, -- ice armor r2
        12825, -- polymorph r3
        8446 -- scorch r4
    },
    [42] = {
        10156, -- arcane intellect r4
        10159, -- cone of cold r3
        10144, -- conure food r5
        10148 -- fireball r8
    },
    [44] = {
        10185, -- blizzard r4
        10179, -- frostbolt r8
        10191 -- mana shield r4
    },
    [46] = {
        13031, -- ice barrier r2
        10201, -- arcane explosion r5
        10197, -- fire blast r6
        22782, -- mage armor r2
        10205 -- scorch r5
    },
    [48] = {
        10053, -- conujre mana citrine
        10149, -- fireball r9
        10215 -- flamestrike r5
    },
    [50] = {
        10160, -- cone of cold r4
        10139, -- conure water r6
        10180, -- frotbolt r9
        10219 -- ice armor r3
    },
    [52] = {
        13032, -- ice barrier r3
        10186, -- blizzard r5
        10192, -- mana shield r5
        10206 -- scorch r6
    },
    [54] = {
        10202, -- arcane explosion r6
        10199, -- fire blast r7
        10150 -- fireball r10
    },
    [56] = {
        10157, -- arcane intellect r5
        10216, -- flamestrike r6
        10181 -- frostboltr10
    },
    [58] = {
        13033, -- ice barrier r4
        10161, -- cone of cold r5
        10054, -- conure mana ruby
        22783, -- mage armor r3
        10207 -- scorch r7
    },
    [60] = {
        10187, -- blizzard r6
        28612, -- conjure food r7
        10140, -- conjure water r7
        10151, -- fireball r11
        25306, -- fireball r12
        25304, -- frostbolt r11
        10220, -- ice armor r4
        10193, -- mana shield r6
        12826, -- polymorph r4
        33690, -- shat - alliance
        35715 -- shat - horde
    },
    [61] = {
        27078 -- fireb blast 48
    },
    [62] = {
        27080, -- arcane explosion r7
        30482 -- molten armor
    },
    [63] = {
        27071 -- frostbolt r12
    },
    [64] = {
        27134, -- ice barrier r5
        27086 -- flamestrike r7
    },
    [65] = {
        27087, -- cone of cold r6
        37420, -- conjure water r8
        27073 -- scorch r8
    },
    [66] = {
        27070, -- fireball r13
        30455 -- ice lacnce
    },
    [68] = {
        27085, -- blizzard r7
        27101, -- conjure mana emerald
        66, -- invisiability
        27131 -- mana shield r7
    },
    [69] = {
        27072, -- frostbolt r13
        27124, -- ice armor r5
        27125 -- mage armor r4
    }
}

s["PRIEST"] = {
    [4] = {
        2052, -- lesser heal r2
        359 -- shadow word pain
    },
    [6] = {
        17, -- power word shield
        591 -- smite r2
    },
    [8] = {
        139 -- renew
    },
    [10] = {
        13908, -- desperate prayer human/dwarf
        2053, -- lesser heal r3
        8092, -- mind blast
        594, -- shadow word pain r2
        10797, -- starshards night elf
        32548 -- symbol of hope draenei
    },
    [12] = {
        588, -- inner fire
        1244, -- power word fortitude r2
        592 -- power word shield r2
    },
    [14] = {
        528, -- cure disease
        8122, -- psychic scream
        6074, -- renew r2
        598 -- smite r3
    },
    [16] = {
        2054, -- heal
        8102 -- mind blast r2
    },
    [18] = {
        19236, -- desperate prayer r2 human/dwarf
        600, -- power word shield r3
        970, -- shadow word pain r3
        19296 -- starshards r2 night elf
    },
    [20] = {
        44041, -- chastise draenei/dwarf
        42676, -- consume magic blood elf
        2944, -- devouring plague undead
        2651, -- elunes grace night elf
        6346, -- fear ward
        13896, -- feedback human
        2061, -- flash heal
        14914, -- holy fire
        7128, -- inner fire r2
        6075, -- renew r3
        18137 -- shadowguard
    },
    [22] = {
        2055, -- heal r2
        8103, -- mind blast r3
        984 -- smite r4
    },
    [24] = {
        15262, -- holy fire r2
        1245, -- power word fortitude r3
        3747 -- power word shield r4
    },
    [26] = {
        19238, -- desperate prayer r3 human dwarf
        9472, -- flash heal r2
        6076, -- renew r4
        992, -- shadow word pain r4
        19299 -- star shards r3 night elf
    },
    [28] = {
        19276, -- devouring plague r2 undead
        6063, -- heal r3
        8104, -- mind blast r4
        824, -- psychic scream r2
        19308 -- shadowguard r2 troll
    },
    [30] = {
        44043, -- chastise r2 dwarf/draenei
        19271, -- feedback r2 human
        15263, -- holy fire r3
        602, -- inner fire r3
        6065, -- powerwordshield r5
        1004 -- smite r5
    },
    [32] = {
        552, -- abolish disease
        9473, -- flash heal r3
        6077 -- renew r5
    },
    [34] = {
        19240, -- desperate prayer r4
        6064, -- heal r4
        1706, -- levitate
        8105, -- mind blast r5
        2767, -- shadow word pain
        19302 -- starshards r4 night elf
    },
    [36] = {
        19277, -- devouring plague r3
        15264, -- holy fire r4
        2791, -- power word fortitude r4
        6066, -- power word shield r6
        19309, -- shadowguard r3 troll
        6060 -- smite r6
    },
    [38] = {
        9474, -- flash heal r4
        6078 -- renew r6
    },
    [40] = {
        8106, -- mind blast r6
        44044, -- chastise r3 dwarf/draenei
        19273, -- feedback r3
        2060, -- greater heal
        1006, -- inner fire r4
        17311, -- mind flay r2
        17312 -- mind flay r3
    },
    [42] = {
        19241, -- desperate prayer r5 dwarf human
        10898, -- power word shield r7
        10888, -- psychic scream r3
        10892, -- shadow word pain r6
        19303 -- starshards r5 night elf
    },
    [44] = {
        17313, -- mind flay r4
        19208, -- devouring plague r4 undead
        10915, -- flash heal r5
        10927, -- renew r7
        19310 -- shadowguard r4 troll
    },
    [46] = {
        10963, -- greater heal r2
        10945 -- mind blast r7
    },
    [48] = {
        10937, -- power word fortitude r5
        10899 -- power word shield r8
    },
    [50] = {
        44045, -- chastise r4 dwarf draenei
        19242, -- desperate prayer r6 human dwarf
        19274, -- feedback r4 human
        10916, -- flash heal r6
        10951, -- inner fire r5
        10928, -- renew r8
        10893, -- shadow word pain r7
        19304 -- starshards r6
    },
    [52] = {
        17314, -- mind flay r5
        19279, -- devouring plague r5
        10964, -- greater heal r3
        10946, -- mind blast r8
        19311 -- shadowguard r5 troll
    },
    [54] = {
        10900 -- power word shield r9
    },
    [56] = {
        10917, -- flash heal r7
        10890, -- psychic scream r4
        10929 -- renew r9
    },
    [58] = {
        19243, -- deserpate prayer r7 dwarf human
        10965, -- greater heal r4
        10947, -- mind blast r9
        10894, -- shadow word pain r8
        19305 -- starshards r7
    },
    [60] = {
        18807, -- mind flay r6
        34916, -- vampiric touch r2
        44046, -- chastise r5 draenei dwarf
        19280, -- devouring plague r6 undead
        19275, -- feedback r5 human
        25314, -- greater heal r5
        10952, -- inner fire r6
        10938, -- power word fortitude r6
        10901, -- power word shield r10
        25315, -- renew r10
        19312 -- shadowguard r6 troll
    },
    [61] = {
        25233 -- flash heal r8
    },
    [62] = {
        32379 -- shadow word death
    },
    [63] = {
        25210, -- greater heal r6
        25372 -- mind blast r10
    },
    [65] = {
        25217, -- power word shield r11
        25221, -- renew r11
        25367 -- shadow word pain r9
    },
    [66] = {
        25437, -- desperate prayer r8 human dwarf
        34433, -- shadowfiend
        25446 -- starshards 48 night elf
    },
    [67] = {
        25235 -- flash heal r9
    },
    [68] = {
        25387, -- mind flay r7
        25467, -- devouring plague r7 undead
        25213, -- greater heal r7
        25477 -- shadowguard r7 troll
    },
    [69] = {
        25431, -- inner fire r7
        25375 -- mind blast r11
    }
}
