RXPGuides.RegisterGuide([[
#tbc
<< skip
#version 7
#group RestedXP Survival Guide (H)
<< Horde
#name 13-18 The Barrens
#subgroup RestedXP Survival Guide 1-30
#defaultfor Shaman/Warrior
#next 18-23 Stonetalon/The Barrens

step << Tauren Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >> Go into Dustwind Cave
step << Tauren Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Kill |cRXP_ENEMY_Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << !Tauren
    #completewith DemonMountain
    +|cRXP_WARN_The|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_has a 30 minute timer. Do not go afk until you have completed 'The Demon Seed' quest|r
    .isOnQuest 924
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Travel to the top of the mountain
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
    .target Thun'grim Firegaze
step << Warrior
    .goto The Barrens,55.05,26.65
    >>Loot the |cRXP_PICK_Stolen Iron Chest|r for its |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Travel to the top of the mountain
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Turn in Forged Steel
    .target Thun'grim Firegaze
step << !Warrior !Shaman
    #hardcore
    #completewith Xroadspickups
    .subzone 380 >>Travel to the Crossroads
step << !Warrior !Shaman
    #softcore
    #completewith Xroadspickups
    .deathskip >>Deathskip to the Crossroads
    .subzoneskip 380
step << !Warrior !Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << !Warrior !Shaman
    #optional
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
step << !Warrior !Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
    .target Gazrog
step << !Warrior !Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Thork
step << !Warrior !Shaman
    #label Xroadspickups
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .target Apothecary Helbrim
step
    #completewith PlainstriderBeaks
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #completewith DisruptTheAttacks
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >> Travel to the top of the mountain
    .isOnQuest 924
step << !Tauren
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >> Go inside Dreadmist Den
    .isOnQuest 924
step << !Tauren
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>Right click the |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Make sure you have a|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_(30 minute duration) on you|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman
    #completewith DisruptTheAttacks
    >>Kill a |cRXP_ENEMY_Razormane Water Seeker|r or |cRXP_ENEMY_Razormane Thornweaver|r. Loot them for a |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #completewith next
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_If it's not up you'll get it later|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Accept Chen's Empty Keg
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Shaman
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Kill a |cRXP_ENEMY_Razormane Water Seeker|r or |cRXP_ENEMY_Razormane Thornweaver|r. Loot them for a |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label PlainstriderBeaks
    .goto The Barrens,53.36,26.28,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Turn in Return to the Crossroads
    .target Zargh
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Thork|r
    .turnin 842 >>Turn in Crossroads Conscription << Tauren Shaman
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 845 >>Accept The Zhevra
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 871 >>Turn in Disrupt the Attacks
    .accept 872 >>Accept The Disruption Ends
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 867 >>Accept Harpy Raiders
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .target Apothecary Helbrim
step << !Hunter !Rogue !Warlock !Mage !Priest
    #completewith next
    .goto The Barrens,52.5,30.7,0
    .vendor >>Check if|r |cRXP_FRIENDLY_Lizzarik|r is in the Crossroads
    >>|cRXP_WARN_He sells potions and|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Tauren
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 894
    .bindlocation 380
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    #completewith SupplyCrates
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #completewith next
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r. It has multiple spawn locations
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #label SupplyCrates
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r. It has multiple spawn locations
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,59.37,25.38,0
	.goto The Barrens,59.37,25.38,50,0
	.goto The Barrens,59.63,24.46,50,0
	.goto The Barrens,59.63,23.88,50,0
	.goto The Barrens,59.06,23.89,50,0
	.goto The Barrens,58.62,23.98,50,0
	.goto The Barrens,57.83,24.28,50,0
	.goto The Barrens,56.87,24.55,50,0
	.goto The Barrens,56.74,25.37,50,0
	.goto The Barrens,57.25,25.46,50,0
	.goto The Barrens,57.52,25.63,50,0
	.goto The Barrens,57.65,25.08,50,0
	.goto The Barrens,58.24,24.98,50,0
	.goto The Barrens,58.90,25.37,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << !Tauren
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Turn in The Demon Seed
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >> Travel toward Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use the|r |T134732:0|t[Fire Sapta]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Kill the |cRXP_ENEMY_Minor Manifestation of Fire|r. Loot him for a |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Click the |cRXP_PICK_Brazier|r on the ground
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
step << Shaman
    #completewith FireEnd
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Kill |cRXP_ENEMY_Zhevra Runners|r. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >> Travel to Ratchet
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Accept Southsea Freebooters
    .target Gazlowe
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path
    .target Bragok
    .isQuestAvailable 895
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Accept Samophlange
    .target Sputtervalve
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .xp <14,1
step
    .goto The Barrens,62.59,37.47
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 895 >>Accept WANTED: Baron Longshore
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Accept Raptor Horns
    .target Mebok Mizzyrix
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135353:0|t[Espadon] |cRXP_BUY_from him|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon] |cRXP_WARN_when you are level 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T132394:0|t[Bearded Axe] |cRXP_BUY_from him|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from him|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer] |cRXP_WARN_when you are level 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Turn in Chen's Empty Keg
    .accept 821 >>Accept Chen's Empty Keg
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #optional
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Delete the|r |T133735:0|t[Control Console Operating Manual] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #completewith BaronLongshore
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Kill |cRXP_ENEMY_Baron Longshore|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He can be found in one of the camps|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Turn in Southsea Freebooters
    .turnin 895 >>Turn in WANTED: Baron Longshore
    .accept 890 >>Accept The Missing Shipment
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Turn in The Missing Shipment
    .accept 888 >>Accept Stolen Booty
    .target Gazlowe
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135353:0|t[Espadon] |cRXP_BUY_from him|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon] |cRXP_WARN_when you are level 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T132394:0|t[Bearded Axe] |cRXP_BUY_from him|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from him|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer] |cRXP_WARN_when you are level 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 923
    .itemcount 923,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .isQuestComplete 845
    .subzoneskip 380
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,55.27,37.82,0
    .goto The Barrens,48.33,36.75,0
    .goto The Barrens,55.27,37.82,80,0
    .goto The Barrens,53.84,38.52,80,0
    .goto The Barrens,52.63,38.07,80,0
    .goto The Barrens,49.49,37.20,80,0
    .goto The Barrens,48.33,36.75,80,0
    >>Finish killing |cRXP_ENEMY_Zhevras|r. Loot them for |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
    .target +Thork
    .goto The Barrens,51.50,30.87
    .turnin 845 >>Turn in The Zhevra
    .accept 903 >>Accept Prowlers of the Barrens
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
    .target Mankrik
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Buy a|r |T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r] |cRXP_BUY_from him if it's available and stock up on arrows|r
    >>|cRXP_WARN_If it's not up, buy a|r |T135490:0|t[Reinforced Bow] |cRXP_WARN_instead|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_from him|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith RegtharDeathgate1
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .accept 855 >>Accept Centaur Bracers
    .target Regthar Deathgate
step
    #completewith Barak
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Dive underwater to the |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Kill |cRXP_ENEMY_Barak Kodobane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Barak Kodobane|r's melee hits deal a LOT of damage and he is protected by a |cRXP_ENEMY_Kolkar Wrangler|r. They can net you and shoot at you from ranged distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>Kill |cRXP_ENEMY_Savannah Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto The Barrens,41.51,19.09,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>Kill |cRXP_ENEMY_Witching Harpies|r and |cRXP_ENEMY_Witching Roguefeathers|r. Loot them for their |cRXP_LOOT_Talons|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith Samophlange
    +|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_in the area. They are up to level 18 and can|r |T132152:0|t[Thrash]
    --.dungeon !RFC
    .xp >17,1
step
    #completewith Samophlange
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r |cRXP_WARN_sells|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r << Orc Warrior/Troll Warrior/Tauren Warrior/Shaman
	.vendor	>> Vendor trash and repair
    .target Vrang Wildgore
    .isQuestAvailable 901
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Click on the |cRXP_PICK_Control Console|r
    .turnin 894 >>Turn in Samophlange
    .accept 900 >>Accept Samophlange
step
    .goto The Barrens,52.33,11.57
    >>Click the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_Be careful! Two mobs will spawn after you shut off the Valve|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Click the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_One mob will spawn after you shut off the Valve|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Click the |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 900 >>Turn in Samophlange
    .accept 901 >>Accept Samophlange
step
    .goto The Barrens,52.84,10.40
    >>Kill |cRXP_ENEMY_Tinkerer Sniggles|r in the building. Loot him for his |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 901 >>Turn in Samophlange
    .accept 902 >>Accept Samophlange
step
    #completewith Ignition
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3,0
    >>Kill |cRXP_ENEMY_Raptors|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto The Barrens,56.5,7.5
    .xp 16 >>Grind to level 16
    >>|cRXP_WARN_This is important, due to the next 3 quests being quite hard|r
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Ven
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    .accept 858 >>Accept Ignition
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Foreman Grills|r |cRXP_WARN_or|r |cRXP_ENEMY_Sludge Beast|r |cRXP_WARN_is up. They are strong level 19 rare mobs|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Kill |cRXP_ENEMY_Supervisor Lugwizzle|r. Loot him for his |cRXP_LOOT_Key|r. He patrols up and down the platform
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_This will begin an escort. Make sure you're at full health|r
    .turnin 858 >>Turn in Ignition
    .accept 863,1 >>Accept The Escape
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_This will begin an escort. Make sure you're at full health|r
    .accept 863,1 >>Accept The Escape
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Venture Co. Mercenaries|r |cRXP_WARN_will spawn when the shredder moves onto the higher ground. Kill them then wait for his RP event at the end|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #completewith next
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
    .goto The Barrens,61.46,4.50,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r and |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for |cRXP_LOOT_Cats Eye Emerald|r
    >>|cRXP_WARN_If it hasn't dropped after 25+ mobs, feel free to skip this quest|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #completewith SpiritsPickup
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Enter Orgrimmar through the western entrance
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Create|r |T133685:0|t[Linen Bandages] |cRXP_WARN_until your skill is 40 or higher|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[Linen Cloth] |cRXP_WARN_to reach 40 skill|r
    .train 3276 >> Train |T133688:0|t[Heavy Linen Bandage]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> |cRXP_WARN_Create|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_until your skill is 50 or higher|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[Linen Cloth] |cRXP_WARN_to reach 50 skill|r
    .train 3274 >> Train Journeyman First Aid
    .target Arnok
    .skill firstaid,<40,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Train your class spells
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Train your class spells
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Train your class spells
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Train your class spells
    .target Pephredo
    .xp <18,1
step << !Orc !Troll
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .zoneskip The Barrens
    .target Doras
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Pyreanor|r
    .train 7294 >>Train your class spells
    .target Master Pyreanor
    .xp <16,1
    .xp >18,1
step << Paladin
    #optional
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Pyreanor|r
    .train 5573 >>Train your class spells
    .target Master Pyreanor
    .xp <18,1
step
    #label SpiritsPickup
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Accept The Spirits of Stonetalon
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .accept 2379 >>Accept Zando'Zan
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Turn in Zando'zan
    .accept 2382 >>Accept Wrenix of Ratchet
    .target Zando'zan
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Train your class spells
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Train your class spells
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Sacrifice]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Firebolt (Rank 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Train your class spells
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Train your class spells
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Train your class spells
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Train your class spells
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Train your pet spells
    .target Xao'tsu
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Train Staves
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Train Bows
    .target Hanashi
step << Warrior/Shaman/Paladin
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 172 >>Train Two-Handed Axes << Orc !Warrior
    .train 227 >>Train Staves << !Paladin !Shaman
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135490:0|t[Reinforced Bow] |cRXP_BUY_from him|r
    .collect 3026,1,3281,1 --Collect Laminated Recurve Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135490:0|t[Reinforced Bow]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior/Paladin/Shaman
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe] |cRXP_WARN_when you are level 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step
    #completewith FoodandWater2
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Fly to The Crossroads
    .target Doras
    .subzoneskip 380
step
    #label FoodandWater2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
step
    .goto The Barrens,55.80,17.03
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r doesn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r didn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #loop
    .goto The Barrens,40.28,15.49,0
    .goto The Barrens,40.28,15.49,40,0
    .goto The Barrens,39.50,14.68,40,0
    .goto The Barrens,39.47,13.24,40,0
    .goto The Barrens,38.94,12.80,40,0
    .goto The Barrens,38.18,12.56,40,0
    .goto The Barrens,37.96,13.52,40,0
    .goto The Barrens,38.62,13.95,40,0
    .goto The Barrens,38.18,14.62,40,0
    .goto The Barrens,38.14,15.59,40,0
    .goto The Barrens,37.29,15.68,40,0
    .goto The Barrens,37.24,16.26,40,0
    .goto The Barrens,37.67,16.34,40,0
    .goto The Barrens,38.35,17.08,40,0
    .goto The Barrens,38.83,17.71,40,0
    .goto The Barrens,39.37,17.21,40,0
    .goto The Barrens,39.87,16.66,40,0
    .goto The Barrens,40.15,15.98,40,0
    >>Kill |cRXP_ENEMY_Witchwing Slayers|r. Loot them for their |cRXP_LOOT_Rings|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Witchwing Slayers|r cast|r |T135358:0|t[Execute] |cRXP_WARN_(deals a LOT of damage when you're at <20% health), and |cRXP_ENEMY_Witchwing Ambushers|r are|r |T132320:0|t[Stealthed] |cRXP_WARN_and patrol around|r
    >>|cRXP_WARN_Watch out for|r |cRXP_ENEMY_Witchwing Ambushers|r|cRXP_WARN_. They are stealthed and patrol in the area|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Train your class spells
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 6808 >> Train your class spells
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >> Hearth to The Crossroads
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destroy|r |T134227:0|t[Horn of Echeyakee] |cRXP_WARN_as you no longer need it|r
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .turnin 875 >>Turn in Harpy Lieutenants
    .accept 876 >>Accept Serena Bloodfeather
    .target Darsok Swiftdagger
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Fly to Ratchet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Turn in Wrenix of Ratchet
    .accept 2381 >>Accept Plundering the Plunderers
    .target Wrenix the Wretched
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Turn in Samophlange
    .turnin 863 >>Turn in The Escape
    .accept 3921 >>Accept Wenikee Boltbucket << Hunter
    .accept 1483 >>Accept Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Turn in Miner's Fortune
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Turn in Samophlange
    .accept 3921 >>Accept Wenikee Boltbucket << Hunter
    .accept 1483 >>Accept Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Turn in Miner's Fortune
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >>Turn in The Escape
    .accept 1483 >>Accept Ziz Fizziks
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 1483 >> Accept Ziz Fizziks
    .target Sputtervalve
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Accept Raptor Horns
    .accept 1069 >>Accept Deepmoss Spider Eggs
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isQuestAvailable 888,865,3281,877,848
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Once your lockpicking is 70, go to the bottom floor of the ship and open |cRXP_PICK_The Jewel of the Southsea|r
    >>|cRXP_WARN_Use the|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_on|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto The Barrens,63.58,49.25
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r and |cRXP_LOOT_Feathers|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Loot the |cRXP_PICK_Stolen Silver|r on the ground
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Click the |cRXP_PICK_Bubble Fissure|r underwater
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    #loop
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Kill |cRXP_ENEMY_Verog|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He has a chance of spawning every time a |cRXP_ENEMY_Kolkar|r is killed|r
    >>|cRXP_WARN_On a highly populated server or fresh launch, your best option is camping his spawnpoint|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>Click the |cRXP_PICK_Blue Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Click the |cRXP_PICK_Red Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Click the |cRXP_PICK_Yellow Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Finish killing |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Beaten Corpse|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Thunder Lizard Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step if you can't find him|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith SetCampTaurajoHS
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r. This does not have to be completed now
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .subzone 378 >>Travel to Camp Taurajo
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
    .home >>Set your Hearthstone to Camp Taurajo
    .target Innkeeper Byula
    .isQuestAvailable 878
    .bindlocation 378
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Turn in Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Accept Tribes at War
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Get the Camp Taurajo flight path << !Tauren
    .fly Crossroads >>Fly to The Crossroads
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Turn in Lost in Battle
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Turn in The Stagnant Oasis
    .accept 880 >>Accept Altered Beings
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Turn in The Angry Scytheclaws
    .accept 3261 >>Accept Jorn Skyseer
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Turn in Stolen Silver
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step
    #completewith StonetalonPickups
    .destroy 5165 >>|cRXP_WARN_Delete any leftover|r |T132914:0|t[Sunscale Feathers] |cRXP_WARN_you may still have|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 11362,1,876,1 --Medium Quiver (1)
    .collect 2515,2200,876,1 --Sharp Arrow (2200)
    .target Uthrok
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Turn in Verog the Dervish
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith StonetalonPickups
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label Serena
    .goto The Barrens,39.16,12.16
    >>Kill |cRXP_ENEMY_Serena Bloodfeather|r. Loot her for her |cRXP_LOOT_Head|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    .goto The Barrens,35.26,27.88,100 >>Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< skip
#group RestedXP Survival Guide (H)
<< Horde
#name 18-23 Stonetalon/The Barrens
#subgroup RestedXP Survival Guide 1-30
#defaultfor Shaman/Warrior
#next 23-25 Hillsbrad Foothills

step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Turn in The Spirits of Stonetalon
    .accept 1062 >>Accept Goblin Invaders
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Accept Avenge My Village
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Ruffians|r and |cRXP_ENEMY_Grimtotem Mercenaries|r in the area
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Travel up the path to the bonfire
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Kill |cRXP_ENEMY_Grundig Darkcloud|r and |cRXP_ENEMY_Grimtotem Brutes|r
    >>|cRXP_WARN_Make sure you kill all six|r |cRXP_ENEMY_Grimtotem Brutes|r |cRXP_WARN_before starting the quest inside|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Accept Protect Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escort |cRXP_FRIENDLY_Kaya|r and stay close to her
    >>|cRXP_WARN_Be careful! Three|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn when you reach the bonfire in Camp Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Accept Blood Feeders
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Kill every |cRXP_ENEMY_Deepmoss Creeper|r you see
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Click the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Accept Arachnophobia
step
    #completewith Besseleth1
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r and |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
step
    #completewith next
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Kill |cRXP_ENEMY_Besseleth|r. Loot her for for her |cRXP_LOOT_Fang|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>Kill |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Travel toward |cRXP_FRIENDLY_Ziz|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Turn in Ziz Fizziks
    .accept 1093 >>Accept Super Reaper 6000
    .target Ziz Fizziks
step
    #completewith Windshear
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #completewith Blueprints
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe] |cRXP_WARN_once you are level 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >19,1
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword] |cRXP_WARN_once you are level 21|r
    --.use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >20,1
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for their |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #label Windshear
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_If you have over 15 |cRXP_LOOT_Deepmoss Eggs|r|cRXP_WARN_, split the stack of any extras (shift click), then delete them|r
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Finish killing |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >>Train your class spells
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Train your class spells
    .target Loganaar
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >>Hearth to Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Turn in Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>Kill |cRXP_ENEMY_Stormstouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Quillboars|r. Loot them for their |cRXP_LOOT_Tusks|r
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Find & kill |cRXP_ENEMY_Lakota'mani|r (Gray Kodo) around this area. Loot him for |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]. Use it to start the quest
    >>|cRXP_WARN_Skip this quest if you can't find him|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Kill |cRXP_ENEMY_Stormstouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>Kill |cRXP_ENEMY_Bristleback Quillboars|r. Loot them for their |cRXP_LOOT_Tusks|r
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+11000 >> Grind to 11000+/21300 xp
    --To ensure lvl 20 before ORG visit class q pickup
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Kill |cRXP_ENEMY_Stormstouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Finish killing |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Kill |cRXP_ENEMY_Oasis Snapjaws|r in and around the lake. Loot them for their |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r. Loot it for a |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.87,30.41
    .use 10338 >>|cRXP_WARN_Use the|r |T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r] |cRXP_WARN_at the dead tree|r
    >>Kill |cRXP_ENEMY_Ishamuhale|r as he spawns. Loot him for his |cRXP_LOOT_Fang|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >> Run to Ratchet
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Turn in Plundering the Plunderers
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Turn in Stolen Booty
    .target Gazlowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .accept 1491 >>Accept Smart Drinks
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Turn in Chen's Empty Keg
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    .home >>Set your Hearthstone to Ratchet
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Buy |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r] from him if it's available
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Buy |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] from him if they're available
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equip the|r |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equip the|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Fly to The Crossroads
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .turnin 876 >>Turn in Serena Bloodfeather
    .accept 1060 >>Accept Letter to Jin'Zil
    .target Darsok Swiftdagger
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r and |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Turn in Consumed by Hatred
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Turn in Altered Beings
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    #completewith TribesTurnin
    .destroy 5085 >>|cRXP_WARN_Delete any leftover|r |T133721:0|t[Bristleback Quilboar Tusks] |cRXP_WARN_you may still have|r
    .itemcount 5085,1
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Train your class spells
    .accept 1507 >>Accept Devourer of Souls
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Torment (Rank 2)]
    .collect 16346,1,1509,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,1509,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
    .target Zankaja
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Fly to The Crossroads
    .zoneskip Orgrimmar,1
    .subzoneskip 380
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
    .target Gazrog
step << !Tauren !Warrior !Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Starts a 45-minute timed quest|r
    .accept 853 >> Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step << !Tauren !Warrior !Shaman
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_You are on a timed quest, don't go afk. It will get turned 20-30 minutes after pick-up|r
    .isOnQuest 853
step
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Devrak
    .subzoneskip 378
step
    .goto The Barrens,44.55,59.27
    >>Kill |cRXP_ENEMY_Bristleback Quillboars|r. Loot them for a |T134128:0|t[|cRXP_LOOT_Blood Shard|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .turnin 883 >>Turn in Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    .goto The Barrens,44.32,60.84,60,0
    >>Kill |cRXP_ENEMY_Thunder Lizards|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Turn in Owatanka
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Kill a |cRXP_ENEMY_Thunderhawk Hatchling|r or a |cRXP_ENEMY_Thunderhawk Cloudscraper|r. Loot it for its |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Turn in Owatanka
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
    .target Jorn Skyseer
step << !Tauren !Shaman !Warrior
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>|cRXP_WARN_If you have 10|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r |cRXP_WARN_left, use them to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_Mangletooth|r
    >>|cRXP_WARN_Skip this step if you have the Thunder Bluff flight path|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skips step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << !Tauren !Shaman !Warrior
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Travel into Mulgore
step << !Tauren !Shaman !Warrior
    #completewith DeathDUPpickup
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Take the lift into Thunder Bluff
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
step << Tauren/Shaman/Warrior
    #completewith DeathDUPpickup
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .dungeon !WC
    .bindlocation 1638
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >>Deposit your |T134128:0|t[Blood Shards]
    --.bankdeposit 5059 >>Deposit your |T132938:0|t[Digging Claw]
    .target Chesmu
step << Warrior !Tauren/Shaman/Paladin
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Train Maces
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Travel to the Spirit Rise and enter the pools of vision
step
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_She patrols around|r
    .accept 264 >>Until Death Do Us Part
    .target Clarice Foster
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
    .isOnQuest 853
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
step
    #optional
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Accept Devouring Plague << Undead Priest
    .accept 5642 >> Accept Shadowguard << Troll Priest
    .trainer >> Train your class spells
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Train your class spells
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Train your class spells
    .target Archmage Shymm
    .xp <22,1
step
    #label DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_She patrols around|r
    .accept 264 >>Until Death Do Us Part
    .target Clarice Foster
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Train your class spells
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Train your class spells
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Accept Call of Water
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Create|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_until your skill is 80 or higher|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[Linen Cloth] |cRXP_WARN_to reach 80 skill|r
    .train 3277 >> Train |T133684:0|t[Wool Bandage]
    .train 7934 >> Train |T134437:0|t[Anti-Venom] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Create|r |T134437:0|t[Anti-Venom] |cRXP_WARN_if you found any|r |T134339:0|t[Small Venom Sacs]
    >>|cRXP_WARN_Save them for later|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Travel to the Elder Rise
    .dungeon WC << !Druid
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Turn in Hamuul Runetotem
    .accept 1490 >> Accept Nara Wildmane
    .target Arch Druid Hamuul Runetotem
    .dungeon WC << !Druid
step << Druid
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .accept 914 >> Accept Leaders of the Fang
    .target Nara Wildmane
    .dungeon WC
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .trainer >> Train your class spells
    .accept 27 >> Accept A Lesson to Learn
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Turn in A Lesson to Learn
    .accept 28 >> Accept Trial of the Lake
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Loot the |cRXP_PICK_Bauble Container|r at the bottom of the lake for a |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r]
    >>|cRXP_WARN_Do not go underwater untill you arive right above the Bauble|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> |cRXP_WARN_Use the|r |T134125:0|t[Shrine Bauble] |cRXP_WARN_at the Shrine of Remulos|r
    .complete 30,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Turn in Trial of the Lake
    .accept 30 >> Accept Trial of the Sea Lion
    .target Tajarri
step << Druid
    .hs >> Hearth to Thunder Bluff
    .use 6948
    .cooldown item,6948,>0
    .zoneskip Moonglade,1
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Moonglade,1
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Accept The Sacred Flame
    .target Zangen Stonehoof
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Travel to the Hunter Rise
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Accept Steelsnap
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Train your pet spells
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .train 845 >> Train your class spells
    .accept 1823 >>Accept Speak with Ruga
    .target Torm Ragetotem
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him.|r
    .collect 923,1,6562,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Warrior/Shaman/Paladin
    #completewith next
    #ah
    +|cRXP_FRIENDLY_If it's cheaper you can buy a green weapon from the auction house instead|r
step << Warrior/Paladin/Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,6562,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Etu Ragetotem
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her|r
    .collect 3027,1,6562,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #completewith KayaLives
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1600,6562,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Now you should be looking for a group to Wailing Caverns
    .dungeon WC
step
    #completewith WCcavepickups
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to the Crossroads
    .target Tal
    .subzoneskip 380
step
    .goto The Barrens,46.15,36.93,100 >> Travel to Wailing Caverns
    .isOnQuest 1491
step
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Run up the mountain at the Wailing Caverns meeting stone
    >>|cRXP_WARN_Follow the arrow closely to reach the hidden cave|r
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .accept 1486 >>Accept Deviate Hides
    .target Nalpak
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .accept 1486 >> Accept Deviate Hides
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Accept Deviate Eradication
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #optional
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1486,1 --Deviate Hide (20)
    .complete 1491,1 --Wailing Essence (6)
step
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_WARN_He is stealthed and has multiple spawn locations|r
    >>|cRXP_WARN_He has a long respawn timer. Skip this step if you cannot find him|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Enter the WC Instance portal. Zone in
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Kill |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r and |cRXP_ENEMY_Lord Serpentis|r. Loot them for their |cRXP_LOOT_Gems|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the entrance of Wailing Caverns. Escort him safely to |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Once you have reached |cRXP_FRIENDLY_Naralex|r you will get attack by two waves of enemies and finally by |cRXP_ENEMY_Mutanus the Devourer|r
    >>Kill him and loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] and use it to start the quest
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Accept The Glowing Shard
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_The rest of these quests can be finished outside of the wailing caverns instance portal|r
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #optional
    #completewith EssenceHides
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1486,1 --Deviate Hide (20)
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #completewith GShard
    .hs >> Hearth to Ratchet
    .use 6948
    .dungeon WC
    .bindlocation 392,1
    .subzoneskip 392
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Turn in Smart Drinks
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 392,1
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Travel up the mountain
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Turn in The Glowing Shard
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1487 >> Turn in Deviate Eradication
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >>Turn in Deviate Hides
    .target Nalpak
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #loop
    #label Hezrul
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    .goto The Barrens,45.64,38.16,50,0
    >>Find & kill |cRXP_ENEMY_Hezrul Bloodmark|r, he patrols around the lake. Loot him for his |cRXP_LOOT_Head|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #completewith CounterattackComplete
    .abandon 855 >> Abandon Centaur Bracers as you have not looted enough previously to make it worthwhile to finish
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #softcore
    #completewith CounterattackComplete
    +|cRXP_WARN_This next quest is very hard & grouping up is recommended. You can kite |cRXP_ENEMY_Warlord Krom'zar|r around using the building where the quest giver is located|r
    .isQuestTurnedIn 852
step
    #hardcore
    #completewith CounterattackComplete
    +|cRXP_WARN_This next quest is very hard & grouping up is recommended. You can kite |cRXP_ENEMY_Warlord Krom'zar|r around using the building where the quest giver is located|r
    >>|cRXP_WARN_There is a high risk of dying when solo and not familiar with this quest|r
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Accept Counterattack!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Kill |cRXP_ENEMY_Warlord Krom'zar|r once he appears. Loot the |cRXP_PICK_Banner|r that he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Turn in Goblin Invaders
    .timer 4,Goblin Invaders RP
    .accept 1063 >>Accept The Elder Crone
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith BloodFeedersTI
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Follow the path on the left upward
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Turn in Letter to Jin'Zil
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Turn in Blood Feeders
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Travel to Sun Rock Retreat
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from her if they're up|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Turn in Arachnophobia
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Turn in Kaya's Alive
    .target Tammra Windfield
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Get the Sun Rock Retreat flight path
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Run up the path to the right
step
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Accept Trouble in the Deeps
    .target Tsunaman
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Turn in Further Instructions
    .target Ziz Fizziks
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Enter the Talondeep Path
step
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Travel toward the Zoram'gar Outpost
    >>|cRXP_WARN_Make sure to avoid Astranaar guards en route. Follow the waypoint for safety|r
    .unitscan Astranaar Sentinel
step
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Get the Zoram'gar Outpost flight path
    .target Andruk
    .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r and |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Turn in Trouble in the Deeps
    .accept 6563 >>Accept The Essence of Aku'Mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Accept Between a Rock and a Thistlefur
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Accept Troll Charm
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Accept Naga at the Zoram Strand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    #softcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_This will start an escort quest. Be careful as it's difficult|r
    .accept 6641,1 >> Accept Vorsha the Lasher
    .target Muglash
step
    #hardcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_This will start an escort quest. Be VERY careful! |cRXP_ENEMY_Vorsha|r hits very hard. Grouping up is recommended|r
    .accept 6641,1 >> Accept Vorsha the Lasher
    .target Muglash
step
    #completewith next
    >>Kill |cRXP_ENEMY_Wraithtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #softcore
    .goto Ashenvale,9.63,27.63
    >>Click the |cRXP_PICK_Brazier|r when you get there
    >>|cRXP_WARN_There will be waves of|r |cRXP_ENEMY_Naga|r |cRXP_WARN_that spawn. Be careful once|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_comes out, he hits very hard|r
    >>|cRXP_WARN_Let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before attacking |cRXP_ENEMY_Vorsha|r!|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #hardcore
    .goto Ashenvale,9.63,27.63
    >>Click the |cRXP_PICK_Brazier|r when you get there
    >>|cRXP_WARN_There will be waves of|r |cRXP_ENEMY_Naga|r |cRXP_WARN_that spawn. Be careful once|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_comes out, he hits very hard|r
    >>|cRXP_WARN_Let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before fighting him!|r
    >>|cRXP_WARN_Be ready to use cooldowns and potions as |cRXP_ENEMY_Vorsha|r could crit you for high damage!|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #loop
	.goto Ashenvale,10.86,26.99,0
	.goto Ashenvale,10.86,26.99,50,0
	.goto Ashenvale,11.23,25.73,50,0
	.goto Ashenvale,11.83,25.75,50,0
	.goto Ashenvale,12.51,24.09,50,0
	.goto Ashenvale,14.18,24.03,50,0
	.goto Ashenvale,14.85,23.08,50,0
	.goto Ashenvale,14.13,20.77,50,0
	.goto Ashenvale,14.73,19.56,50,0
	.goto Ashenvale,14.59,17.90,50,0
	.goto Ashenvale,13.38,16.39,50,0
	.goto Ashenvale,13.62,14.48,50,0
	.goto Ashenvale,14.15,15.31,50,0
	.goto Ashenvale,15.88,15.42,50,0
	.goto Ashenvale,15.40,16.96,50,0
	.goto Ashenvale,15.22,18.81,50,0
	.goto Ashenvale,15.33,20.78,50,0
	.goto Ashenvale,15.33,22.51,50,0
	.goto Ashenvale,15.32,24.90,50,0
	.goto Ashenvale,14.76,25.52,50,0
	.goto Ashenvale,14.62,26.49,50,0
	.goto Ashenvale,14.52,28.25,50,0
	.goto Ashenvale,13.55,29.36,50,0
	.goto Ashenvale,12.41,29.15,50,0
	.goto Ashenvale,11.22,31.04,50,0
	.goto Ashenvale,10.38,29.60,50,0
	.goto Ashenvale,11.01,28.57,50,0
    >>Kill |cRXP_ENEMY_Wraithtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Travel to the entrance of Blackfathom Deeps
step
    #completewith next
    >>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Kill |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for a |T134332:0|t[|cRXP_LOOT_Damp Note|r] and use it to start the quest
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Accept Allegiance to the Old Gods
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #completewith next
    .subzone 2897 >>Travel to Zoram''gar Outpost
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r and |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >>Turn in Vorsha the Lasher
    .goto Ashenvale,12.22,34.21
    .target +Warsong Runner
    .turnin 6442 >>Turn in Naga at the Zoram Strand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Turn in The Essence of Aku'Mai
    .turnin 6564 >>Turn in Allegiance to the Old Gods
    .target Je'neu Sancrea
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Train your class spells
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Train your class spells
    .target Loganaar
    .xp <22,1
step
    #completewith JourneytoTM
    .hs >> Hearth to Thunder Bluff
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Travel to the Elder Rise
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Turn in The Elder Crone
    .timer 6,The Elder Crone RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Turn in Hamuul Runetotem
    .accept 1490 >>Accept Nara Wildmane
    .target Arch Druid Hamuul Runetotem
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Turn in Nara Wildmane
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Turn in Leaders of the Fang
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Turn in In Nightmares
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    .accept 1064 >>Accept Forsaken Aid
    .target Magatha Grimtotem
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r in the pools of vision
    .turnin 1064 >>Turn in Forsaken Aid
    .accept 1065 >>Accept Journey to Tarren Mill
    .turnin 962 >>Turn in Serpentbloom
    .target Apothecary Zamah
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .dungeon WC
step << Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .subzoneskip 378
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
    .target Grunt Logmar
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
    .target Grunt Dogran
step << !Warlock
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Fly to Ratchet
    .target Tal
    .zoneskip Thunder Bluff,1
    .subzoneskip 392
    .dungeon !WC << !Shaman
step << Warlock
    #completewith DockTrouble
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Ratchet >>Fly to Ratchet
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .subzoneskip 392
    .dungeon !WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Turn in Smart Drinks
    .target Mebok Mizzyrix
    .dungeon !WC
step
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1529 >>Turn in Call of Water
    .accept 1530 >>Accept Call of Water
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1528 >>Turn in Call of Water
    .accept 1530 >>Accept Call of Water
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Accept Call of Water
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Accept Call of Water
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Bragok
    .subzoneskip 378
step << Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
    .home >>Set your Hearthstone to Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Turn in Call of Water
    .accept 1535 >>Accept Call of Water
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> |cRXP_WARN_Fill your|r |T132825:0|t[Empty Brown Waterskin] |cRXP_WARN_in the watering hole below Brine's hut|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Turn in Call of Water
    .accept 1536 >>Accept Call of Water
    .target Brine
step << Shaman
    #completewith next
    .hs >> Hearth to Camp Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Travel back to Camp Taurajo
    .cooldown item,6948,<0
    .subzoneskip 378
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Shaman !Druid
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .dungeon !WC
step << !Shaman !Warlock
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Warlock
    #completewith BarrensEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Turn in Love's Gift
    .accept 1513 >>Accept The Binding
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Use|r |T133290:0|t[Dogran's Pendant] |cRXP_WARN_at the Summoning Circle|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Kill the |cRXP_ENEMY_Summoned Succubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Turn in The Binding
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Train your class spells
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Train your class spells
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Buy a|r |T135640:0|t[Jambiya] |cRXP_BUY_from him if you do not have a dagger|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .train 8676 >> Train |T132282:0|t[Ambush]
    .train 1943 >> Train |T132302:0|t[Rupture]
    .train 1856 >> Train |T132331:0|t[Vanish]
    .train 1725 >> Train |T132289:0|t[Distract]
    .train 1785 >> Train |T132320:0|t[Stealth Rank 2]
    .accept 2460 >>Accept The Shattered Salute
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>After |cRXP_FRIENDLY_Shenthul|r does his salute, type /Salute while targeting him
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Turn in The Shattered Salute
    .accept 2458 >>Accept Deep Cover
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T134387:0|t[Flash Powder] |cRXP_BUY_from him|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Train your class spells
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Train your class spells
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Thuul|r at the top of the hut
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Turn in Shadowguard
    .trainer >> Train your class spells
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Train your class spells
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Train your class spells
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Enter The Barrens through the Western Exit
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to the Sludge Ven
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133443:0|t[Half Pendant of Aquatic Agility]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Target |cRXP_FRIENDLY_Taskmaster Fizzule|r, then use your |T134536:0|t[Flare Gun] TWICE and type /Salute
    >>|cRXP_WARN_Be careful! Do NOT approach him until he becomes friendly or he will attack you!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Turn in Deep Cover
    .accept 2478 >>Accept Mission: Possible But Not Probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Foreman Silixiz|r for his |cRXP_LOOT_Tower Key|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Each mob here will take increased damage to certain abilities|r
    >>Use |T132282:0|t[Ambush] on the |cRXP_ENEMY_Mutated Venture Co. Drones|r
    >>Use |T132302:0|t[Rupture] on the |cRXP_ENEMY_Venture Co. Patrollers|r
    >>Use |T132292:0|t[Eviscerate] on the |cRXP_ENEMY_Venture Co. Lookouts|r once (1 combo point)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Run into the Rogue Tower and kill |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r and |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>At the top of the tower you'll find |cRXP_ENEMY_Gallywix|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Ambush] |cRXP_WARN_to reduce his HP to half. Use|r |T132155:0|t[Gouge] |cRXP_WARN_to restore energy and use|r |T136205:0|t[Evasion]
	>>|cRXP_WARN_Remember to use a Potion and|r |T132819:0|t[Thistle Tea] |cRXP_WARN_if needed|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Use your lock picking to open |cRXP_PICK_Gallywix's Lockbox|r & loot the |cRXP_LOOT_Mixture|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Travel to Orgrimmar through the western entrance
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .accept 2479 >>Accept Hinott's Assistance
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T133849:0|t[Dust of Decay] |cRXP_BUY_and|r |T132793:0|t[Empty Vials] |cRXP_BUY_from him|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Train Two-Handed Axes
    .target Hanashi
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Train your class spells
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Train your class spells
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Train your class spells
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Train your class spells
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Train your pet spells
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_If you have any|r |T134437:0|t[Anti-Venom]|cRXP_WARN_, use one to cure yourself of|r |T136230:0|t[Touch of Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Delete the|r |T134536:0|t[Flare Gun] |cRXP_WARN_from your bags, as it's no longer needed|r
    .destroy 8066 >> |cRXP_WARN_Delete|r |T134374:0|t[Fizzule's Whistle] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #label BarrensEnd
    .goto Orgrimmar,49.1,94.5,30 >>Exit Orgrimmar
step
    #optional
    .abandon 1486 >>Abandon Deviate Hides
step
    #optional
    .abandon 1487 >>Abandon Deviate Eradication
step
    #optional
    .abandon 914 >>Abandon Leaders of the Fang
step
    #optional
    .abandon 855 >>Abandon Centaur Bracers
step
    #optional
    .abandon 959 >>Abandon Trouble at the Docks
]])
