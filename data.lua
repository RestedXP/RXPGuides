RXP_.skipPreReq = {
    [9573] = 1,
    [533] = 1,
    [5096] = 1,
    [5092] = 1,
    [1114] = 1,
    [10000] = 1,
    [10008] = 1,
}

RXP_.repStandingID = {
    ["hated"] = 1,
    ["hostile"] = 2,
    ["unfriendly"] = 3,
    ["neutral"] = 4,
    ["friendly"] = 5,
    ["honored"] = 6,
    ["revered"] = 7,
    ["exalted"] = 8,
}

RXP_.repStartValue = {
    -42000,--hated
    -6000,--hostile
    -3000,--unfriendly
    0,--neutral
    3000,--friendly
    9000,--honored
    21000,--revered
    42000,--exalted
}

local version = select(4, GetBuildInfo())
if version < 90000 then
RXP_.mapId = {
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
    ["Outland"] = 987,
}
else
    RXP_.mapId = {
        ["ScarletEnclave"] = 124
    }
    for i=1,2200 do
        local map = C_Map.GetMapInfo(i)
        if map then
            map = map.name
            if not RXP_.mapId[map] then
                RXP_.mapId[map] = i
            end
        end
    end
    RXP_.mapId["IcecrownGlacier"] = RXP_.mapId["Icecrown"]
    RXP_.mapId["CrystalsongForest"] = RXP_.mapId["Crystalsong Forest"]
    RXP_.mapId["StormPeaks"] = RXP_.mapId["The Storm Peaks"]
    RXP_.mapId["TheStormPeaks"] = RXP_.mapId["The Storm Peaks"]
    RXP_.mapId["SholazarBasin"] = RXP_.mapId["Sholazar Basin"]
    RXP_.mapId["ZulDrak"] = RXP_.mapId["Zul'Drak"]
    RXP_.mapId["GrizzlyHills"] = RXP_.mapId["Grizzly Hills"]
    RXP_.mapId["HowlingFjord"] = RXP_.mapId["Howling Fjord"]
    RXP_.mapId["BoreanTundra"] = RXP_.mapId["Borean Tundra"]
end


--Items required to complete the quest
RXP_.questCompleteItems = {
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
    [4005] = {11617,11169}, -- Aquementas // Eridan's Supplies, Book of Aquor
    [3463] = 10515, -- Set Them Ablaze! // Torch of Retribution
    [7041] = 17693, -- Vyletongue Corruption // Coated Cerulean Vial
    [3449] = 10445, -- Arcane Runes // Drawing Kit
    [4292] = {11568,11570,11569}, -- The Bait for Lar'korwi // Torwa's Pouch
    [2879] = 9263, -- The Stave of Equinex // Troyas' Stave
    [4513] = {11955,11953}, -- A Little Slime Goes a Long Way // Bag of Empty Ooze Containers, Empty Pure Sample Jar
    [3883] = 11132, -- Alien Ecology // Unused Scraping Vial
    [3602] = 10834, -- Azsharite // Felhound Tracker Kit
    [3912] = 11243, -- Meet at the Grave // Videre Elixir
    [5157] = 12922, -- Collection of the Corrupt Water // Empty Canteen
    [7029] = 17693, -- Vyletongue Corruption // Coated Cerulean Vial
    [7843] = 19036, -- The Final Message to the Wildhammer // Final Message to the Wildhammer
    --[3568] = {10695,10687,10688,10689,10690}, -- Seeping Corruption // Box of Empty Vials, Empty Vial Labeled #1-4??
    [3568] = 10695, -- Seeping Corruption // Box of Empty Vials
    [7003] = 18904, -- Zapped Giants // Zorbin's Ultra-Shrinker
    [3785] = 11020, -- Morrowgrain Research // Evergreen Pouch
    [3845] = 11107, -- It's a Secret to Everybody // A Small Pack
    [3786] = 11020, -- Morrowgrain Research // Evergreen Pouch
    [7725] = 18904, -- Again With the Zapped Giants // Zorbin's Ultra-Shrinker
    [4642] = 12288, -- Melding of Influences // Encased Corrupt Ooze
    [4441] = 11682, -- Felbound Ancients // Eridan's Vial
    [4512] = {11912,11914,11948}, -- A Little Slime Goes a Long Way // Package of Empty Ooze Containers,Empty Cursed/Tainted Ooze Jar
    [2203] = {7870,7866}, -- Badlands Reagent Run II // Thaumaturgy Vessel Lockbox, Empty Thaumaturgy Vessel
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
    [10507] = {30260,30259}, -- Turning Point // Voren'thal's Package
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
}


--Items required to turn in the quest
RXP_.questTurnInItems = {
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
    [10819] = 31366, --Felsworn Gas Mask // Felsworn Gas Mask
    [10820] = 31366, --Deceive thy Enemy // Felsworn Gas Mask
    [10772] = 31310, -- The Path of Conquest // Wildhammer Flare Gun
    [10773] = 31310, -- Breaching the Path // Wildhammer Flare Gun
    [10774] = 31310, -- Blood Elf + Giant = ??? // Wildhammer Flare Gun
    [10775] = 31310, -- Tabards of the Illidari // Wildhammer Flare Gun
    [2458] = 8051, -- Deep Cover // Flare Gun
}


--Items required to accept the quest
RXP_.questAcceptItems = {
    [10820] = 31366, --Deceive thy Enemy // Felsworn Gas Mask
    [10821] = 31366, --You're Fired! // Felsworn Gas Mask
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
    [2478] = 8051, -- Mission: Possible But Not Probable // Flare Gun
}



RXP_.flightPath = {}

RXP_.flightPath["Alliance"] = {
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
    [205] = "Zul'Aman, Ghostlands",
}

RXP_.flightPath["Horde"] = {
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
    [205] = "Zul'Aman",
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


RXP_.professionID = {
    alchemy = {2259,3101,3464,11611,28596,51304},
    blacksmithing = {2018,3100,3538,9785,29844,51300},
    enchanting = {13920,7411,7412,7413,28029,51313},
    engineering = {4036,4037,4038,12656,30350,51306},
    herbalism = {2383},
    inscription = {45357,45358,45359,45360,45361,45363},
    jewelcrafting = {25229,25230,28894,28895,28897,51311},
    leatherworking = {2108,3104,3811,10662,32549,51302},
    mining = {2656},
    skinning = {8613,8617,8618,10768,32678,50305},
    tailoring = {3908,3909,3910,12180,26790,51309},
    cooking = {2550,3102,3413,18260,33359,51296},
    firstaid = {3273,3274,7924,10846,27028,45542},
    fishing = {7620,7731,7732,18248,33095,51294},
}

C_Spell.RequestLoadSpellData(2575)--mining
C_Spell.RequestLoadSpellData(9134)--herbalism
C_Spell.RequestLoadSpellData(33388)--riding

local s = {}
RXP_.defaultSpellList = s

s["DRUID"] = {
    [4] = {
        8921, -- moonfire
        774, -- rejuvenation
    },
    [6] = {
        467, -- thorns
        5177, -- wrath r2
    },
    [8] = {
        339, -- entangling roots
        5186, -- healing touch r2
    },
    [10] = {
        5232, -- mark of the wild
        1058, -- rejuvenation r2
        99, -- demoralizing roar
    },
    [12] = {
        5229, -- enrage
        8936, -- regrowth
    },
    [14] = {
        5211, -- bash
        782, -- thorns r2
        5187, -- healing touch r3
    },
    [16] = {
        1430, -- rejuvenation r3
        779, -- swipe
    },
    [18] = {
        1062, -- entangling roots r2
        770, -- faerie fire
        2637, -- hibernate
        6808, -- maul r2
        8938, -- regrowth
    },
    [20] = {
        768, -- cat form
        1082, -- claw
        5188, -- healing touch r4
        6756, -- mark of the wild r3
        5215, -- prowl
        1079, -- rip
    },
    [22] = {
        2090, -- rejuvenation r4
    },
    [24] = {
        1822, -- rake
        8939, -- regrowth r3
        2782, -- remove curse
        1075, -- thorns r3
        5217, -- tigers fury
    },
    [26] = {
        2893, -- abolish poison
        1850, -- dash
        5189, -- healing touch r5
        3029, -- claw r2
    },
    [28] = {
        5195, -- entangling roots r3
        2091, -- rejuvenation r5
        9492, -- rip r2
    },
    [30] = {
        17390, -- faerie fire feral r2
        778, -- faerie fire r2
        5234, -- mark of the wild
        8940, -- regrowth r4
        783, -- travel form
    },
    [32] = {
        22568, -- ferocious bite
        6778, -- healing touch r6
        6785, -- ravage
        1823, -- rake r2
    },
    [34] = {
        1823, -- rake r2
        3627, -- rejuvenation r6
        8914, -- thorns r4
    },
    [36] = {
        9005, -- pounce
        8941, -- regrowth r5
        9493, -- rip
        6793, -- tigers fury
    },
    [38] = {
        5201, -- claw r3
        5196, -- entangling roots r4
        8903, -- healing touch r7
    },
    [40] = {
        20719, -- feline grace
        22827, -- ferocious bite r2
        29166, -- inntervate
        8907, -- mark of the wild r5
        8910, -- rejuvenation r7
        6783, -- prowl r2
        9634, -- dire bear
    },
    [42] = {
        17391, -- faerie fire feral r3
        9749, -- faerie fire r3
        6787, -- ravage r2
        9750, -- regrowth r6
    },
    [44] = {
        22812, -- barkskin
        9758, -- healing touch r8
        1824, -- rake r3
        9752, -- rip r4
        9756, -- thorns r5
    },
    [46] = {
        9821, -- dash r2
        9823, -- pounce r2
        9839, -- rejuvenation r8
    },
    [48] = {
        9849, -- claw r4
        22828, -- ferocious bite r3
        9856, -- regrowth r7
        9845, -- tigers fury r3
    },
    [50] = {
        9888, -- healing touch r9
        9884, -- mark of the wild r6
        9866, -- ravage r3
    },
    [52] = {
        9840, -- rejuvenation r9
        9894, -- rip r5
    },
    [54] = {
        17392, -- faerie fire feral r4
        9907, -- faerie fire f4
        9857, -- regrowth r8
        9910, -- throns r6
    },
    [56] = {
        22829, -- ferocious bite r4
        9889, -- healing touch r10
        9827, -- pounce r3
    },
    [58] = {
        9857, -- ravage r4
        9841, -- rejuvenation r10
        33982, -- mangle r2
    },
    [60] = {
        31018, -- ferocious bite r5
        25297, -- healing touch r11
        9885, -- mark of the wild r7
        9913, -- prowl r3
        9858, -- regrowth r9
        25299, -- rejuvenation r11
        9868, -- rip r6
        9846, -- tigers fury r4
    },
    [62] = {
        26978, -- healing touch r12
        22570, -- maim
    },
    [63] = {
        24248, -- ferocious bite r6
        26981, -- rejuvenation r12
    },
    [64] = {
        33763, -- lifebloom
        26992, -- thorns r7
    },
    [65] = {
        33357, -- dash r3
        26980, -- regrowth
    },
    [66] = {
        27011, -- faerie fire feral r5
        26993, -- faerie fire r5
        27006, -- pounce r4
        27005, -- ravage r5
    },
    [68] = {
        33983, --mangle r3
    },
    [69] = {
        26979, -- healing touch r13
        26982, -- rejuvenation r13
    },
}


s["PALADIN"] = {
    [1] = {
         465, --Devotion Aura
    },
    [4] = {
         20271, --Judgement
         19740, --Blessing of might
    },
    [6] = {
         498, --Divine protections
         639, --Holy Light R2
        3127, --parry
    },
    [8] = {
         853, --Hammer of Justice
    },
    [10] = {
         663, --Lay on Hands
         1022, --Blessing of Protection
         10290, --Devotion Aura R2
         1152, --Purify
    },
    [12] = {
         20287, --Seal of Righteousness R2
         19834, --Blessing of Might R2
    },
    [14] = {
         19742, --Blessing of Wisdom
         647, --Holy Light R3
         21082,--Seal of the crusader r1
         20162,--Seal of the crusader r2
    },
    [16] = {
         7294, --Retribution Aura
    },
    [18] = {
         5573, --Divine Protection R2
         20288, --Seal of Rightousness
    },
    [20] = {
         26573, --Consecration
         19750, --Flash of Light
         879, --Exorcism
         643, --Devotion Aura R3
    },
    [22] = {
         1026, --Holy Light R4
         19835, --blessing of might r3
         20305,--seal of teh crusader r3
    },
    [24] = {
         19850, --blessing of wisdom r2
         5588, --hammer of justice r2
         5599, --blessing of pretection r2
    },
    [26] = {
         19939, --flash of light r2
         10298, --retribution aura r2
    },
    [28] = {
         5614, --exorcism r2
    },
    [30] = {
         34769, --summon warhorse (belf)
         13819, --summon warhorse (alliance)
         20116, --consecration r2
         1042, --holy light r5
         10291, --devotion aura r4
         2800, --lay of hands r2
        20915, -- seal of command r2
    },
    [32] = {
        19836, -- blessing of might r4
        20306,--seal of the crusader r4
    },
    [34] = {
        642, -- divine shield
        19940, -- flash of light r3
        19852, -- blessing of wisdom r3
    },
    [36] = {
        5615, -- exorcism r3
        10299, -- retribution aura r3
    },
    [38] = {
        10278, -- blessing of protection r3
        3472, -- holy light
        20166, -- seal of wisdom
    },
    [40] = {
        20922, -- consecration r3
        5589, -- hammer of justice r3
        1032, -- devotion aura r5
        20918, -- seal of command r3
    },
    [42] = {
        4987, -- cleanse
        19837, --  blessing of might r5
        19941, -- flash of light r4
        20307,--seal of the crusader r5
    },
    [44] = {
        24275, -- hammer of wrath
        10312, -- exorcism r4
        19853, -- blessing of wisdom r4
    },
    [46] = {
        10300, -- retribution aura r4
        10328, -- holy light r7
        20356, -- seal of wisdom r2
    },
    [50] = {
        1020, -- divine shield r2
        2812, -- holy wrath
        19942, -- flash of light r5
        10310, -- lay of hands r3
        10292, -- devotion aura r6
        20923, -- consecration r4
        20919, -- seal of command r4
    },
    [52] = {
        19838, -- blessing of might r6
        24274, -- hammer of wrath r2
        10313, -- exorcism r5
        20308,--seal of the crusader r6
    },
    [54] = {
        10308, -- hammer of justice r4
        10329, -- holy light r8
        19854, -- blessing of wisdom r5
    },
    [56] = {
        10301, -- retribution aura r5
    },
    [58] = {
        19943, -- flash of light r6
        20357, -- seal of widom r3
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
        20920, -- seal of command r5
    },
    [61] = {
        27158,--seal of the crusader
    },
    [62] = {
        32223, -- crusader aura
        27135, -- holy light r10
    },
    [64] = {
        31892, -- seal of blood
        31801, -- seal of vengeance
    },
    [65] = {
        27142, -- blessing of wisdom
    },
    [66] = {
        33776, -- spiritual attunement
        27137, -- flash of light r7
        27150, -- retribution aura
        27166, -- seal of wisdom r4
    },
    [68] = {
        27180, -- hammer of wrath r4
        27138, -- exorcism r7
        27139, -- holy wrath r3
    },
    [69] = {
        27154, --  lay of hands r4
    },
}

s["SHAMAN"] = {
    [1] = {
        8017, -- Rockbiter weapon
    },
    [4] = {
        8042, -- earth shock
    },
    [6] = {
        2484, -- earthbind totem
        332, -- healing wave r2
    },
    [8] = {
        8044, -- earth shock r2
        324, -- lightning shield
        5730, -- stoneclaw totem
        8018, -- rockbiter weapon r2
    },
    [10] = {
        850, -- flame shock
        8075, -- strength of earth totem
        529, -- Lightning Bolt r2 (10 instead of 8 to save money)
        8024, -- Flametongue Weapon
    },
    [12] = {
        1535, -- fire nova totem
        547, -- healing wave r3
        370, -- Purge
    },
    [14] = {
        8045, -- earth shock r3
        548, -- Lightning Bolt r3
    },
    [16] = {
        526, -- cure poison
        325, -- lightning shield r2
        8019, -- rockbiter weapon r3
    },
    [18] = {
        8052, -- flame shock r2
        913, -- healing wave r4
        6390, -- stoneclaw totem r2
        8143, -- Tremor Totem
        8027, -- Flametongue Weapon r2
    },
    [20] = {
        8056, -- frost shock
        2645, -- ghost wolf
        8004, -- lesser healing wave
        6363, -- searing totem r2
        915, -- Lightning Bolt r4
    },
    [22] = {
        131, -- Water Breathing
        2870, -- cure disease
        8498, -- fire nova totem r2
        8166, -- Poison Cleansing Totem
    },
    [24] = {
        8046, -- earth shock r4
        939, -- healing wave r5
        905, -- lightning shield r3
        10399, -- rockbiter e4
        8160, -- strength of earth totem r2
        8181, -- Frost resistance totem
    },
    [26] = {
        943, -- Lightning Bolt r5
        5675, -- Mana Spring Totem
        6196, -- far sight
        8030, -- Flametongue Weapon r3
        8190, -- Magma Totem r1
    },
    [28] = {
        8053, -- flame shock r3
        8008, -- lesser healing wave r2
        6391, -- stoneclaw totem r3
        546, -- water walking
        8184, -- Fire resistance totem
    },
    [30] = {
        556, -- astral recall
        8177, -- grounding totem
        20608, -- reincarnation
        6364, -- searing totem r3
        36936, -- totemic call
        8232, -- windfury weapon
    },
    [32] = {
        8499, -- fire nova totem r3
        421, -- Chain Lightning
        959, -- healing wave r6
        945, -- lightning shield r4
        8012, -- Purge r2
        6041, -- Lightning Bolt r6
    },
    [34] = {
        8058, -- frost shock r2
        16314, -- rockbiter weapon r5
    },
    [36] = {
        8010, -- lesser healing wave r3
        10412, -- earth shock r5
        10495, -- Mana Spring Totem r2
        16339, -- Flametongue Weapon r4
    },
    [38] = {
        6392, -- stoneclaw totem r4
        8161, -- strength of earth totem r3
        10391, -- Lightning Bolt r7
        8170, -- Disease Cleansing Totem
    },
    [40] = {
        8737, -- Mail
        10447, -- flame shock r4
        8005, -- healing wave r7
        8134, -- lightning shield r5
        6365, -- searing totem r4
        8235, -- windfury weapon r2
        930, -- Chain Lightning r2
    },
    [42] = {
        11314, -- fire nova totem r4
        8835, -- Grace of Air Totem
    },
    [44] = {
        10466, -- lesser healing wave r4
        10392, -- Lightning Bolt r8
    },
    [46] = {
        10472, -- frost shock r3
        10496, -- Mana Spring Totem r3
        10585, -- Magma Totem r2
        10586, -- Magma Totem r3
    },
    [48] = {
        10413, -- earth shock r6
        10395, -- healing wave r8
        10431, -- lightning shield r6
        10427, -- stoneclaw totem r5
        2860, -- Chain Lightning r3
    },
    [50] = {
        10437, -- searing totem r5
        10486, -- windfury weapon r3
        15207, -- Lightning Bolt r9
    },
    [52] = {
        11315, -- fire nova totem r5
        10448, -- flame shock r5
        10467, -- lesser healing wave r5
        10442, -- strength of earth totem r4
    },
    [54] = {
        10408, -- stoneskin totem r6
    },
    [56] = {
        10396, -- healing wave r9
        10432, -- lightning shield r7
        10497, -- Mana Spring Totem r4
        10627, -- Grace of Air Totem r2
        15208, -- Lightning Bolt r10
        10605, -- Chain Lightning r4
    },
    [58] = {
        10473, -- frost shock r4
        10428, -- stoneclaw totem r6
    },
    [60] = {
        10414, -- earthshock r7
        29228, -- flame shock r6
        25357, -- healing wave r10
        10468, -- lesser healing wave r6
        10438, -- searing totem r6
        25361, -- strength of earth totem r5
        16362, -- windfury weapon r4
        25359, -- Grace of Air Totem r3
    },
    [61] = {
        25546, -- fire nova totem r6
    },
    [62] = {
        24398, -- water shield
        25448, -- Lightning Bolt r11
    },
    [63] = {
        25469, -- lightning shield r8
        25391, -- healing wave r11
        25439, -- Chain Lightning r5
    },
    [64] = {
        3738, --wrath of air totem
    },
    [65] = {
        25528, -- strength of earth totem r6
        25570, -- Mana Spring Totem r5
    },
    [66] = {
        2062, -- earth elemental totem
        25320, -- lesser healing wave r7
        25525, -- stoneclaw totem r7
    },
    [67] = {
        25525, -- stoneclaw totem r7
        25449, -- Lightning Bolt r12
    },
    [68] = {
        2894, -- fire elemental totem
        25364, -- frost shock r5
        25505, -- windfury weapon r5
    },
    [69] = {
        25454, -- earth shock r8
        25533, -- searing totem r7
        33736, -- Water Shield r2
    },
}

s["HUNTER"] ={
    [4] = {
        1979, -- serpent sting
    },
    [6] = {
        3044, -- arcane shot
    },
    [8] = {
        5116, -- concussive shot
        14260, -- raptor strike r2
        1130, -- hunter's mark
        13163, -- aspect of the monkey
        3127, --parry
    },
    [10] = {
        13165, -- aspect of the hawk
        13549, -- serpent string r2
        4187, -- great stamina
        24545, -- natural armor
    },
    [12] = {
        136, -- mend pet
        2974, -- wing clip
        4188, -- great stamina r2
        24549, -- natural armor r2
    },
    [14] = {
        1513, -- scare beast
    },
    [16] = {
        13795, -- immolation trap
    },
    [18] = {
        14281, -- arcane shot 2
        14318, -- aspect of the hawk r2
        13550, -- serpent sting r3
        4187, -- great stamina r3
        24550, -- natural armor r3
    },
    [20] = {
        5118, -- aspect of the cheetah
        1499, -- freezing trap
        3111, -- mend pet r2
        15147, -- growl r3
        781, --disengage r1
    },
    [22] = {
        2643, -- multishot
        14323, -- hunters mark r2
    },
    [24] = {
        4190, -- great stamina r4
        24551, -- natural armor r4
    },
    [26] = {
        3045, -- rapid fire
        13551, -- serpent sting r4
    },
    [28] = {
        14319, -- aspect of the hawk r3
        13809, -- frost trap
        3661, -- mend pet r3
    },
    [30] = {
        5384, -- feign death
        4191, -- great stamina r5
        24552, -- natural armor r5
        14924, -- growl r4
        35694, -- avoidance
        25076, -- cobra reflexes
        14282, -- arcane shot r3
    },
    [32] = {
        14283, -- arcane shot r4
    },
    [34] = {
        13552, -- serpent sting r5
    },
    [36] = {
        3662, -- mend pet r4
        4192, -- great stamina r6
        24553, -- natural armor r6
        3034, -- viper sting
    },
    [38] = {
        14320, -- aspect of the hawk r4
    },
    [40] = {
        14310, -- freezing trap r2
        14324, -- hunter's mark r3
        14925, -- growl r5
    },
    [42] = {
        13553, -- serpentsting r6
        4193, -- great stamina r7
        24561, -- natural armor r7
    },
    [44] = {
        13542, -- mend pet r5
        14284, --arcane shot r5
        14285, -- arcaneshot r6
    },
    [46] = {
        14384, -- arcane shot r5
    },
    [48] = {
        14321, -- aspect of the hawk r5
        4194, -- great stamina r8
        24555, -- natural armor r8
        14279,--viper r2
    },
    [50] = {
        13554, -- serpent sting r7
        14926, -- growl r6
    },
    [52] = {
        13543, -- mend pet r6
    },
    [54] = {
        5041, -- great stamina r9
        24629, -- natural armor r9
    },
    [56] = {
        14286, -- arcaneshot r7
        14280, --viper r3
    },
    [58] = {
        14322, -- aspect of the hawk r6
        14325, -- hunter's mark r4
        13555, -- serpent sting r8
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
        35698, -- avoidance r2
    },
    [62] = {
        34120, -- steady shot
    },
    [64] = {
        34074, -- aspect of the viper
    },
    [66] = {
        34026, -- kill command
    },
    [67] = {
        27016, -- serpentsting r10
    },
    [68] = {
        27044, -- aspect of the hawk r8
        27046, -- mend pet r8
        34600, -- snake trap
    },
    [69] = {
        27019, -- arcane shot r9
    },
}

s["WARRIOR"] = {
    [1] = {
        6673, --battle shout r1
    },
    [4] = {
        100, -- charge
        772, -- rend
        3127, --parry
    },
    [8] = {
        1715, -- hamstring
        284, -- heroic strike r2
    },
    [10] = {
        6546, -- rend 2
    },
    [12] = {
        5242, -- battle shout r2
        7384, -- overpower
    },
    [14] = {
        1160, -- demoralizing shout r1
    },
    [16] = {
        285, -- heroic strike r3
    },
    [20] = {
        845, -- cleave
        6547, -- rend r3
        20230, -- retaliation
    },
    [22] = {
        6192, -- battle shout r3
        5246, -- intimidating shout
        7405, -- sunder armor
    },
    [24] = {
        6190, -- demoralizing shout
        5309, -- execute
        1608, -- heroic strike r4
    },
    [26] = {
        6178, -- charge
    },
    [28] = {
        7887, -- overpower r2
    },
    [30] = {
        7368, -- cleave r2
        20252, -- intercept
    },
    [32] = {
        11549, -- battle shout
        18499, -- berserker rage
        20658, -- execute r2
        7372, -- hamstring r2
        11564, -- heroic strike r5
    },
    [34] = {
        11554, -- demoralizing shout
        8340, -- sunder armor r3
    },
    [36] = {
        1680, -- whirlwind
    },
    [38] = {
        6552, -- pummel
    },
    [40] = {
        20660, -- execute r3
    },
    [42] = {
        11550, -- battle shout r5
    },
    [44] = {
        11555, -- demoralizing shout
        11584, -- overpower r3
    },
    [46] = {
        11578, -- charge r3
        11596, -- sunder armor r4
    },
    [48] = {
        21551, -- mortal strike r2
        20661, -- execute r4
    },
    [50] = {
        1719, -- recklessness
    },
    [52] = {
        11551, -- battle shout 46
    },
    [54] = {
        21552, -- mortal strike r3
        11556, -- demoralizing shout r5
        7373, -- hamstring
    },
    [56] = {
        20662, -- execute r5
    },
    [58] = {
        11597, -- sunder armor r5
    },
    [60] = {
        21553, -- mortal strike r4
        25289, -- battle shout r7
        11585, -- overpower r4
    },
    [62] = {
        25202, -- demoralizing shout r6
        34428, -- victory rush
    },
    [64] = {
        23920, -- spell reflection
    },
    [65] = {
        25234, -- execute r6
    },
    [66] = {
        25248, -- mortal strike r5
    },
    [67] = {
        25212, -- hamstring r4
        25225, -- sunder armor r6
    },
    [68] = {
        249, -- commanding shout
    },
    [69] = {
        2048, -- battle shout r8
        25275, -- intercept r5
    },
}

s["ROGUE"] = {
    [6] = {
        1776, -- gouge
        1757, -- sinister strike r2
        3127, --parry
    },
    [8] = {
        5277, -- evasion
        6760, -- eviscerate r2
    },
    [10] = {
        5171, -- slice and dice
        2983, -- sprint
    },
    [12] = {
        1766, -- kick
    },
    [14] = {
        1758, -- sinister strike r3
    },
    [16] = {
        6761, -- eviscerate r3
    },
    [20] = {
        1785, -- stealth r2
    },
    [22] = {
        1725, -- distract
        1759, -- sinister strike r4
        1856, -- vanish
    },
    [24] = {
        6762, -- eviscerate r4
    },
    [26] = {
        1833, -- cheap shot
    },
    [28] = {
        8687, -- instant poison 2
    },
    [30] = {
        408, -- kidney shot
        1760, -- sinister strike
    },
    [32] = {
        8623, -- eviscerate
    },
    [34] = {
        2094, -- blind
        8696, -- sprint r2
    },
    [36] = {
        8691, -- instant posion 3
    },
    [38] = {
        8621, -- sinister strike r6
    },
    [40] = {
        8624, -- eviscerate r6
        1860, -- safe fall
        1726, -- stealth r3
    },
    [42] = {
        6774, -- slice and dice r2
        1857, -- vanish r2
    },
    [44] = {
        11341, -- instant poison 4
    },
    [46] = {
        11293, -- sinister strike r7
    },
    [48] = {
        11299, -- eviscerate r7
    },
    [50] = {
        26669, -- evasion r2
        8643, -- kidney shot r2
    },
    [52] = {
        11342, -- instant poison r5
    },
    [54] = {
        11294, -- sinister strike r8
    },
    [56] = {
        11300, -- eviscerate r8
    },
    [58] = {
        11305, -- sprint r3
    },
    [60] = {
        31016, -- eviscerate r9
        11343, -- instant poison r6
        1787, -- stealth r4
    },
    [62] = {
        26861, -- sinister strike r9
        26889, -- vanish r3
    },
    [64] = {
        26679, -- deadly throw
        26865, -- eviscerate r10
    },
    [66] = {
        31224, -- cloak of shadows
    },
    [68] = {
        26892, -- instant poison r7
    },
}

s["WARLOCK"] = {
    [1] = {
        348, -- immolate
    },
    [4] = {
        172, -- corruption
    },
    [6] = {
        1454, -- life tap
        695, -- shadow bolt r2
    },
    [8] = {
        980, -- curse of agony
        5782, -- fear
    },
    [10] = {
        6201, -- create healthstone
        696, -- demon skin r2
        1120, -- drain soul
        707, -- immolate r2
    },
    [12] = {
        755, -- health funnel
        705, -- shadow bolt r3
    },
    [14] = {
        6222, -- corruption r2
        689, -- drain life
    },
    [16] = {
        1455, -- life tap r2
    },
    [18] = {
        1014, -- curse of agony r2
    },
    [20] = {
        706, -- demon armor
        3698, -- health funnel r2
        1094, -- immolate r3
        1088, -- shadowbolt r4
        5740, --rain of fire r1
    },
    [22] = {
        6202, -- create healthstone r2
        699, -- drain life r2
        5676, -- searing pain r1
    },
    [26] = {
        1714, -- curse of tongues
        1456, -- life tap r3
    },
    [28] = {
        710, -- banish
        6217, -- curse of agony r3
        3699, -- health funnel r3
        1106, -- shadow bolt r5
    },
    [30] = {
        20752, -- create soulstone r2
        1086, -- demon armor r2
        709, -- drain life r3
        2941, -- immolate r4
        5784, -- summon felsteed
    },
    [32] = {
        6213, -- fear r2
    },
    [34] = {
        7684, -- corruption r4
        5699, -- create healthstone r3
    },
    [36] = {
        2362, -- create spellstone
        3700, -- health funnel
        11687, -- life tap r4
        7641, -- shadow bolt r6
    },
    [38] = {
        18879, -- siphon life r2
        11711, -- curse of agony r4
        7651, -- drain life r4
    },
    [40] = {
        20755, -- create soulstone r3
        11733, -- demon armor r3
        5484, -- howl of terror
        11655, -- immolate r5
    },
    [42] = {
        6789, -- death coil
    },
    [44] = {
        11671, -- corruption r5
        11693, -- health funnel r5
        11659, -- shadowbolt r7
    },
    [46] = {
        11729, -- create healthstone
        11699, -- drain life r5
        11688, -- life tap r5
    },
    [48] = {
        18880, -- siphon life r3
        18647, -- banish r2
        11712, -- curse of agony r5
    },
    [50] = {
        18937, -- dark pact r2
        20756, -- create soulstone r4
        17925, -- death coil r2
        11734, -- demon armor r4
        11667, -- immolate r6
    },
    [52] = {
        11694, -- health funnel r6
        11660, -- shadow bolt r8
    },
    [54] = {
        11672, -- corruption r6
        11700, -- drain life r6
        17928, -- howl of terror r2
    },
    [56] = {
        6215, -- fear r3
        11689, -- life tap r6
        18881, -- siphon life r4
        11730, -- create healthstone r5
    },
    [58] = {
        11713, -- curse of agony r6
        17926, -- death coil r3
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
        25311, -- corruption r7
    },
    [62] = {
        27219, -- drain life r7
        28176, -- fel armor
    },
    [63] = {
        27264, -- siphon life r5
    },
    [65] = {
        27216, -- corruption r8
    },
    [67] = {
        27218, -- curse of agony r7
        27259, -- health funnel r8
    },
    [68] = {
        27230, -- create healthstone r6
        27223, -- death coil r4
        27222, -- life tap r7
    },
    [69] = {
        27220, -- drain life r8
        28189, -- fel armor r2
        27215, -- immolate r9
        27209, -- shadow bolt r11
    },
}

s["MAGE"] = {
    [4] = {
        1459, -- Arcane Intellect
        116, -- frostbolt
        5504, -- Conjure water
    },
    [6] = {
        2136, -- fire blast
        143, -- fireball r2
        587, -- conjure food
    },
    [8] = {
        205, -- frostbolt r2
        118, -- polymorph
    },
    [10] = {
        7300, -- frost armor r2
        122, -- frost nova
        5505, -- conjure water r2
    },
    [12] = {
        597, -- conjure food
        145, -- fireball r3
        130, -- slow fall
    },
    [14] = {
        1449, -- arcane explosion
        1460, -- arcane intellect
        2137, -- fire blast
        837, -- frostbolt
    },
    [16] = {
        2120, -- flamestrike
    },
    [18] = {
        475, -- remove lesser curse
        3140, -- fireball r4
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
        12271,-- exodar
        3562,-- ironforge
        3561,-- stormwind
        3567,-- orgrimmar
        32272,-- silvermoon
        3563,-- undercity
    },
    [22] = {
        8437, -- arcane explosion r2
        990, -- conure food r3
        2138, -- fireblast
        2948, -- scorch
    },
    [24] = {
        2139, -- counterspell
        8400, -- fireball r5
        2121, -- flamastrike r2
    },
    [26] = {
        120, -- cone of cold
        8406, -- frostbolt r5
    },
    [28] = {
        1461, -- arcane intellect r3
        6141, -- blizzard r2
        759, -- conure mana agate
        8494, -- mana shield r2
        8444, -- scorch r2
    },
    [30] = {
        8438, -- arcane explosion r3
        6127, -- conjure water r4
        8412, -- fire blast r4
        8101, -- fireball r6
        7302, -- ice armor
        45438, -- ice block
        3565,-- darnassus
        3566,-- thunder bluff
    },
    [32] = {
        6129, -- conjure food
        8422, -- flamestrike r3
        8407, -- frostbolt r6
    },
    [34] = {
        8492, -- cone of cold r2
        6117, -- mage armor
        8445, -- scorch r3
    },
    [36] = {
        8427, -- blizzard r3
        8402, -- fireball r7
        8495, -- mana shield
    },
    [38] = {
        8439, -- arcane explosion r4
        3552, -- conjure mana jade
        8413, -- fire blast r5
        8409, -- frostbolt r7
    },
    [40] = {
        10138, -- conjure water r5
        8423, -- flamestrike r4
        7320, -- ice armor r2
        12825, -- polymorph r3
        8446, -- scorch r4
    },
    [42] = {
        10156, -- arcane intellect r4
        10159, -- cone of cold r3
        10144, -- conure food r5
        10148, -- fireball r8
    },
    [44] = {
        10185, -- blizzard r4
        10179, -- frostbolt r8
        10191, -- mana shield r4
    },
    [46] = {
        13031, -- ice barrier r2
        10201, -- arcane explosion r5
        10197, -- fire blast r6
        22782, -- mage armor r2
        10205, -- scorch r5
    },
    [48] = {
        10053, -- conujre mana citrine
        10149, -- fireball r9
        10215, -- flamestrike r5
    },
    [50] = {
        10160, -- cone of cold r4
        10139, -- conure water r6
        10180, -- frotbolt r9
        10219, -- ice armor r3
    },
    [52] = {
        13032, -- ice barrier r3
        10186, -- blizzard r5
        10192, -- mana shield r5
        10206, -- scorch r6
    },
    [54] = {
        10202, -- arcane explosion r6
        10199, -- fire blast r7
        10150, -- fireball r10
    },
    [56] = {
        10157, -- arcane intellect r5
        10216, -- flamestrike r6
        10181, -- frostboltr10
    },
    [58] = {
        13033, -- ice barrier r4
        10161, -- cone of cold r5
        10054, -- conure mana ruby
        22783, -- mage armor r3
        10207, -- scorch r7
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
        33690,-- shat - alliance
        35715,-- shat - horde
    },
    [61] = {
        27078, -- fireb blast 48
    },
    [62] = {
        27080, -- arcane explosion r7
        30482, --molten armor
    },
    [63] = {
        27071, -- frostbolt r12
    },
    [64] = {
        27134, -- ice barrier r5
        27086, -- flamestrike r7
    },
    [65] = {
        27087, -- cone of cold r6
        37420, -- conjure water r8
        27073, -- scorch r8
    },
    [66] = {
        27070, -- fireball r13
        30455, -- ice lacnce
    },
    [68] = {
        27085, -- blizzard r7
        27101, -- conjure mana emerald
        66, -- invisiability
        27131, -- mana shield r7
    },
    [69] = {
        27072, -- frostbolt r13
        27124, -- ice armor r5
        27125, -- mage armor r4
    },
}

s["PRIEST"] = {
    [4] = {
        2052, -- lesser heal r2
        359, -- shadow word pain
    },
    [6] = {
        17, -- power word shield
        591, -- smite r2
    },
    [8] = {
        139, -- renew
    },
    [10] = {
        13908, -- desperate prayer human/dwarf
        2053, -- lesser heal r3
        8092, -- mind blast
        594, -- shadow word pain r2
        10797, -- starshards night elf
        32548, -- symbol of hope draenei
    },
    [12] = {
        588, -- inner fire
        1244, -- power word fortitude r2
        592, -- power word shield r2
    },
    [14] = {
        528, -- cure disease
        8122, -- psychic scream
        6074, -- renew r2
        598, -- smite r3
    },
    [16] = {
        2054, -- heal
        8102, -- mind blast r2
    },
    [18] = {
        19236, -- desperate prayer r2 human/dwarf
        600, -- power word shield r3
        970, -- shadow word pain r3
        19296, -- starshards r2 night elf
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
        18137, -- shadowguard
    },
    [22] = {
        2055, -- heal r2
        8103, -- mind blast r3
        984, -- smite r4
    },
    [24] = {
        15262, -- holy fire r2
        1245, -- power word fortitude r3
        3747, -- power word shield r4
    },
    [26] = {
        19238, -- desperate prayer r3 human dwarf
        9472, -- flash heal r2
        6076, -- renew r4
        992, -- shadow word pain r4
        19299, -- star shards r3 night elf
    },
    [28] = {
        19276, -- devouring plague r2 undead
        6063, -- heal r3
        8104, -- mind blast r4
        824, -- psychic scream r2
        19308, -- shadowguard r2 troll
    },
    [30] = {
        44043, -- chastise r2 dwarf/draenei
        19271, -- feedback r2 human
        15263, -- holy fire r3
        602, -- inner fire r3
        6065, -- powerwordshield r5
        1004, -- smite r5
    },
    [32] = {
        552, -- abolish disease
        9473, -- flash heal r3
        6077, -- renew r5
    },
    [34] = {
        19240, -- desperate prayer r4
        6064, -- heal r4
        1706, -- levitate
        8105, -- mind blast r5
        2767, -- shadow word pain
        19302, -- starshards r4 night elf
    },
    [36] = {
        19277, -- devouring plague r3
        15264, -- holy fire r4
        2791, -- power word fortitude r4
        6066, -- power word shield r6
        19309, -- shadowguard r3 troll
        6060, -- smite r6
    },
    [38] = {
        9474, -- flash heal r4
        6078, -- renew r6
    },
    [40] = {
        8106, -- mind blast r6
        44044, -- chastise r3 dwarf/draenei
        19273, -- feedback r3
        2060, -- greater heal
        1006, -- inner fire r4
        17311, -- mind flay r2
        17312, -- mind flay r3
    },
    [42] = {
        19241, -- desperate prayer r5 dwarf human
        10898, -- power word shield r7
        10888, -- psychic scream r3
        10892, -- shadow word pain r6
        19303, -- starshards r5 night elf
    },
    [44] = {
        17313, -- mind flay r4
        19208, -- devouring plague r4 undead
        10915, -- flash heal r5
        10927, -- renew r7
        19310, -- shadowguard r4 troll
    },
    [46] = {
        10963, -- greater heal r2
        10945, -- mind blast r7
    },
    [48] = {
        10937, -- power word fortitude r5
        10899, -- power word shield r8
    },
    [50] = {
        44045, -- chastise r4 dwarf draenei
        19242, -- desperate prayer r6 human dwarf
        19274, -- feedback r4 human
        10916, -- flash heal r6
        10951, -- inner fire r5
        10928, -- renew r8
        10893, -- shadow word pain r7
        19304, -- starshards r6
    },
    [52] = {
        17314, -- mind flay r5
        19279, -- devouring plague r5
        10964, -- greater heal r3
        10946, -- mind blast r8
        19311, -- shadowguard r5 troll
    },
    [54] = {
        10900, -- power word shield r9
    },
    [56] = {
        10917, -- flash heal r7
        10890, -- psychic scream r4
        10929, -- renew r9
    },
    [58] = {
        19243, -- deserpate prayer r7 dwarf human
        10965, -- greater heal r4
        10947, -- mind blast r9
        10894, -- shadow word pain r8
        19305, -- starshards r7
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
        19312, -- shadowguard r6 troll
    },
    [61] = {
        25233, -- flash heal r8
    },
    [62] = {
        32379, -- shadow word death
    },
    [63] = {
        25210, -- greater heal r6
        25372, -- mind blast r10
    },
    [65] = {
        25217, -- power word shield r11
        25221, -- renew r11
        25367, -- shadow word pain r9
    },
    [66] = {
        25437, -- desperate prayer r8 human dwarf
        34433, -- shadowfiend
        25446, -- starshards 48 night elf
    },
    [67] = {
        25235, -- flash heal r9
    },
    [68] = {
        25387, -- mind flay r7
        25467, -- devouring plague r7 undead
        25213, -- greater heal r7
        25477, -- shadowguard r7 troll
    },
    [69] = {
        25431, -- inner fire r7
        25375, -- mind blast r11
    },
}
