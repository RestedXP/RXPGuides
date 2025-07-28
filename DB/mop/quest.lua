local _,addon = ...

if addon.game ~= "MOP" then return end
addon.skipPreReq = {
    [9573] = 1,
    [533] = 1,
    [5096] = 1,
    [5092] = 1,
    [1114] = 1,
    [10000] = 1,
    [10008] = 1
}

addon.questConversion = {
}

-- Items required to complete the quest
addon.questCompleteItems = {
    [1517] = 6635, -- Call of Earth // Earth Sapta
    [8330] = 20474, -- Solanian's Belongings // Sunstrider Book Satchel
    [934] = 5623, -- Crown of the Earth // Amethyst Phial
    [9294] = 22955, -- Healing the Lake // Neutralizing Agent
    [2561] = 8149, -- Druid of the Claw // Voodoo Charm
    [933] = 5621, -- Crown of the Earth // Tourmaline Phial
    [1520] = 6635, -- Call of Earth // Earth Sapta
    [929] = 5619, -- Crown of the Earth // Jade Phial
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
    [2459] = 8049, -- Ferocitas the Dream Eater // Gnarlpine Necklace
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
    [2478] = 8051, -- Mission: Possible But Not Probable // Flare Gun
    --
    [11941] = 35684, -- Scintillating Fragment quest
}
--C_DateAndTime.GetSecondsUntilDailyReset()

addon.dailyDB = {}

local klaxxiQuests ={

    [31109] = "clutches",--Culling the Swarm
    [31494] = "clutches",--Free From Her Clutches
    [31496] = "clutches",--Sampling the Empire's Finest
    [31503] = "clutches",--Shortcut to Ruin
    [31487] = "clutches",--Sonic Disruption
    [31599] = "clutches",--The Matriarch's Maw
    [31502] = "clutches",--Wing Clip

    [31111] = "south",--Eradicating the Zan'thik
    [31509] = "south",--Fear Takes Root
    [31598] = "south",--Kypa'rak's Core
    [31507] = "south",--Meltdown
    [31506] = "south",--Shackles of Manipulation
    [31508] = "south",--Specimen Request
    [31505] = "south",--Vess-Guard Duty

    [31232] = "terrace",--An Ancient Empire
    [31238] = "terrace",--Brain Food
    [31231] = "terrace",--Dreadspinner Extermination
    [31235] = "terrace",--Nope Nope Nope
    [31234] = "terrace",--Putting An Eye Out
    [31233] = "terrace",--Sap Tapping
    [31677] = "terrace",--The Warlord's Ashes

    [31268] = "lake",--A Little Brain Work
    [31271] = "lake",--Bad Genes
    [31024] = "lake",--Kunchong Treats
    [31267] = "lake",--Mistblade Destruction
    [31270] = "lake",--The Fight Against Fear
    [31269] = "lake",--The Scale-Lord

}
addon.dailyDB.klaxxiQuests = klaxxiQuests
local celestialQuests

local function CheckQuestHub(faction)
    local reset = true
    local hubs
    local t
    if faction == "klaxxi" then
        hubs = {lake = 0, terrace = 0, south = 0, clutches = 0}
        t = klaxxiQuests
    elseif faction == "celestial" then
        hubs = {jade = 0, cradle = 0, blackox = 0, whitetiger = 0}
        t = celestialQuests
    end

    for id,hub in pairs(t) do
        if addon.IsQuestTurnedIn(id) then
            reset = false
            break
        end
        local n = hubs[hub]
        if addon.IsOnQuest(id) and n then
            hubs[hub] = n+1
        end
    end
    if reset then
        local count = 0
        local current
        for hub,n in pairs(hubs) do
            if n > 0 and n > count then
                current = hub
                count = n
            end
        end
        if current and count >= 5 then
             addon.realmData[faction] = current
        else
            addon.realmData[faction] = nil
        end
    end
end
addon.dailyDB.CheckQuestHub = CheckQuestHub

local valeQuests = {
    [31131] = "whitepetal",
    [30283] = "whitepetalUnderAttack",
    [30293] = "whitepetalUnderAttack",
    [30292] = "whitepetalUnderAttack",
    [30282] = "whitepetalUnderAttack",
    [30281] = "whitepetalUnderAttack",
    [31242] = "mistfallQuiet",
    [31245] = "mistfallQuiet",
    [31249] = "mistfallQuiet",
    [31243] = "mistfallUnderAttack",
    [31246] = "mistfallUnderAttack",
    [31296] = "ruinsofguolaiQuiet",
    [31294] = "ruinsofguolaiQuiet",
    [31240] = "ruinsofguolaiQuiet",
    [31248] = "ruinsofguolaiQuiet",
    [31244] = "ruinsofguolaiUnderAttack",
    [31250] = "settingsun",
    [31247] = "settingsun",
    [30385] = "settingsun",
    [31297] = "settingsun",
}

addon.dailyDB.valeQuests = valeQuests

local function CheckValeQuests()
    local reset = true
    --local current = {}
    for id,hub in pairs(valeQuests) do
        if addon.IsQuestTurnedIn(id) or addon.IsOnQuest(id) then
            reset = false
            --addon.realmData.voeb[hub] = true
        end
    end
    if reset then
        addon.realmData.voeb = {}
    end
end

addon.dailyDB.CheckValeQuests = CheckValeQuests

function addon.dailyDB.ResetQuests(hub)
    if hub == "klaxxi" then
        CheckQuestHub("klaxxi")
    elseif hub == "vale" then
        CheckValeQuests()
    elseif hub == "celestial" then
        CheckQuestHub("celestial")
    end
end

celestialQuests ={

[31376] = "jadeserpent",
[31377] = "jadeserpent",
[31378] = "redcrane",
[31379] = "redcrane",
[31380] = "whitetiger",
[31381] = "whitetiger",
[31382] = "niuzaotemple",
[31383] = "niuzaotemple",

}

addon.dailyDB.celestialQuests = celestialQuests

function addon.CheckAvailableQuest(id)
    local klaxxiHub = klaxxiQuests[id]
    local valeQ = valeQuests[id]
    local celestial = celestialQuests[id]

    if klaxxiHub then
        addon.realmData.klaxxi = klaxxiHub
    elseif valeQ then
        if addon.realmData.voeb then
            addon.realmData.voeb[valeQ] = true
        else
            addon.realmData.voeb = {[valeQ] = true}
        end
    elseif celestial then
        addon.realmData.celestial = celestial
    else
        return
    end
    local t = time()
    local reset = addon.realmData.dailyReset
    if not reset or t > reset then
        addon.realmData.voeb = {}
        addon.realmData.klaxxi = nil
        addon.realmData.celestial = nil
        addon.realmData.dailyReset = t + C_DateAndTime.GetSecondsUntilDailyReset()
    end
end
