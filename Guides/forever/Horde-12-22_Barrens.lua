local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#xprate <1.99
<< Horde
#name 12-17 The Barrens
#displayname 14-18 The Barrens << !Shaman !Hunter !Tauren !Skyborne
#displayname 15-18 The Barrens << Paladin
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#next 17-22 Stonetalon/Barrens/Ashenvale


step << Tauren Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-4834.14,418.07,30,0
    .goto 1411/1,-4754.3,796.66,20 >> Go into Dustwind Cave
step << Tauren Shaman
    #loop
    .goto 1411/1,-4706.71,902.41,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Kill |cRXP_ENEMY_Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Warrior !Undead
    #xprate <1.5
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Travel to the top of the mountain
step << Warrior !Undead
    #xprate <1.5
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
    .target Thun'grim Firegaze
step << Warrior !Undead
    #xprate <1.5
    .goto 1413/1,-2955.48,-188.04
    >>Loot the |cRXP_PICK_Stolen Iron Chest|r for its |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #xprate <1.5
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Travel to the top of the mountain
step << Warrior !Undead
    #xprate <1.5
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Turn in Forged Steel
    .target Thun'grim Firegaze
step << !Shaman !Warrior/Undead
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Shaman !Warrior/Undead
    #hardcore
    #completewith ThievesPickup
    .subzone 380 >> Travel to The Crossroads
step << !Shaman !Warrior/Undead
    #softcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #hardcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Zargh
step << !Shaman !Warrior/Undead
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Turn in Crossroads Conscription << !Druid
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Shaman !Warrior/Undead
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
step << !Shaman !Warrior/Undead
    #hardcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << !Shaman !Warrior/Undead
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Thork
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_Do NOT fly to Orgrimmar!|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Devrak
step << Undead
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .target Devrak
    .isQuestAvailable 1492
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .accept 848 >>Accept Fungal Spores
    .turnin 1358 >>Turn in Sample for Helbrim << Undead/Rogue/Mage/Priest/Warlock
    .target Apothecary Helbrim
    .isQuestAvailable 848
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .turnin 1358 >>Turn in Sample for Helbrim << Undead/Rogue/Mage/Priest/Warlock
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_from him|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T135613:0|t[Hunter's Boomstick]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << !Shaman !Warrior/Undead
    #label ThievesPickup
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
    .target Gazrog
step << !Tauren !Shaman !Warrior/Undead
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #softcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Zargh
step
    #optional
    #completewith DisruptTheAttacks
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #completewith next
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> Travel to the top of the mountain
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> Go inside Dreadmist Den
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>Right click the |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Make sure you have a|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_(30 minute duration) on you|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << skip
    #xprate <1.5 << !Hunter
    #completewith DisruptTheAttacks
    .goto 1413/1,-2198.52,303.14,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2554.2,80.18,100 >> Travel down the mountain where you came from
    .isQuestComplete 924
--XX !Tauren !Undead
step << Shaman
    #sticky
    #label FireTar2
    .goto 1413/1,-2947.38,-92.1,50,0
    .goto 1413/1,-2869.35,-49.54,50,0
    .goto 1413/1,-2805.51,-111.02
    >>Kill a |cRXP_ENEMY_Razormane Water Seeker|r or |cRXP_ENEMY_Razormane Thornweaver|r. Loot them for a |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    #requires FireTar2 << Shaman
    #label DisruptTheAttacks
    #loop
	.goto 1413/1,-2811.59,-42.780,0
	.goto 1413/1,-2811.59,-42.780,50,0
	.goto 1413/1,-2875.43,-52.24,50,0
	.goto 1413/1,-2931.16,-89.40,50,0
	.goto 1413/1,-3001.08,-117.78,50,0
	.goto 1413/1,-3037.56,-164.390,50,0
	.goto 1413/1,-3034.52,-221.82,50,0
	.goto 1413/1,-2991.96,-239.39,50,0
	.goto 1413/1,-2899.75,-209.66,50,0
	.goto 1413/1,-2854.15,-151.56,50,0
	.goto 1413/1,-2799.43,-92.78,50,0
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Warrior !Undead
    #xprate >1.49
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Travel to the top of the mountain
step << Warrior !Undead
    #xprate >1.49
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
    .target Thun'grim Firegaze
step << Warrior !Undead
    #xprate >1.49
    .goto 1413/1,-2955.48,-188.04
    >>Loot the |cRXP_PICK_Stolen Iron Chest|r for its |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #xprate >1.49
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Travel to the top of the mountain
step << Warrior !Undead
    #xprate >1.49
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Turn in Forged Steel
    .target Thun'grim Firegaze
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Now you should be looking for a group to Ragefire Chasm
    .dungeon RFC
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2819.70,-359.65,0
    .goto 1413/1,-2784.23,-163.04,80,0
    .goto 1413/1,-2771.06,-306.95,80,0
    .goto 1413/1,-2805.51,-386.00,80,0
    .goto 1413/1,-2738.63,-610.310,80,0
    .goto 1413/1,-2576.50,-610.98,80,0
    .goto 1413/1,-2494.42,-485.32,80,0
    .goto 1413/1,-2448.82,-398.84,80,0
    .goto 1413/1,-2537.99,-260.33,80,0
    .goto 1413/1,-2730.52,-273.17,80,0
    .goto 1413/1,-2819.70,-359.65,80,0
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Shaman Troll/Shaman Orc/Warrior Orc/Warrior Troll
    .goto 1413/1,-2709.24,-404.24
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
    .goto 1413/1,-2670.74,-482.61
    .turnin 871 >>Turn in Disrupt the Attacks
    .accept 872 >>Accept The Disruption Ends
    .target +Thork
    .goto 1413/1,-2595.75,-473.15
step
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 867 >>Accept Harpy Raiders
    .target Darsok Swiftdagger
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Tauren Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_from him|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc Warrior/Troll Warrior/Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_Check if|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_is in the Crossroads. He sells potions and|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .dungeon RFC
step << Tauren
    #optional
    #completewith KreenigSnarlsnout1
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #label KreenigSnarlsnout1
    .goto 1413/1,-3324.34,-217.09
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_Use the|r |T134732:0|t[Fire Sapta]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Kill the |cRXP_ENEMY_Minor Manifestation of Fire|r. Loot him for a |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Click the |cRXP_PICK_Brazier|r on the ground
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Now you should be looking for a group to Ragefire Chasm
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Travel to Orgrimmar
    .dungeon RFC
step << Tauren
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
    .isQuestAvailable 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1411/1,-4769.10,1484.39,0
    >>Kill |cRXP_ENEMY_Burning Blade|r mobs in Skull Rock until |cRXP_LOOT_Lieutenant's Insignia|r drops
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Turn in Hidden Enemies
    .accept 5727 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Accept Slaying the Beast
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Turn in Hidden Enemies
    .accept 5728 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destroy|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_as you no longer need it|r
    .dungeon RFC
step << !Undead
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >> Enter the RFC Instance portal. Zone in
    .dungeon RFC
step << !Undead
    >>|cRXP_WARN_If possible, have party members share the following quests|r
    .accept 5722 >> Accept Searching for the Lost Satchel
    .accept 5723 >> Accept Testing an Enemy's Strength
    .dungeon RFC
step << !Undead
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Turn in Searching for the Lost Satchel
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << !Undead
    #label TroggsShamans
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    >>Kill |cRXP_ENEMY_Taragaman the Hungerer|r. Loot him for his |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << !Undead
    #label BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Bazzalan|r and |cRXP_ENEMY_Jergosh the Invoker|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << !Undead
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Turn in Slaying the Beast
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Turn in Hidden Enemies
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Turn in Hidden Enemies
    .accept 5730 >> Accept Hidden Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Turn in Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith KreenigSnarlsnout
    .hs >> Hearth to The Crossroads
    .use 6948
    .zoneskip The Barrens
    .bindlocation 380,1
    .subzoneskip 380
    .dungeon RFC
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Devrak
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
    .zoneskip Thunder Bluff

    --not worth to turn in 5723/5724 w/o TB flight path

step << skip
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Thunder Bluff >>Travel South to Camp Taurajo and enter Mulgore. Travel to Thunder Bluff from there
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path << !Tauren
    .target Omusa Thunderhorn
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Thunder Bluff >> Get the Thunder Bluff flight path
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >> Hearth to The Crossroads
    .use 6948
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,>0
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to Crossroads
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #optional
    #completewith next
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Go to the Altar of Thorns|r. Cast |T136126:0|t[Life Tap] until you're almost dying. Then cast |T136168:0|t[Health Funnel] on your pet to die and get |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    *|cRXP_WARN_You will be revived immediately after dying|r
    .goto 1413/1,-3274.68,-191.42
    .cast 1454
    .cast 735
    .collect 208750,1
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
step
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,0
    .goto 1413/1,-3382.10,-54.27,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #loop
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19,30,0
    .goto 1413/1,-3292.92,-212.36,0
    .goto 1413/1,-3402.36,-48.19,0
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << !Tauren !Undead
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Turn in The Demon Seed
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> Travel toward Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_Use the|r |T134732:0|t[Fire Sapta]
    .use 6636
step << Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Kill the |cRXP_ENEMY_Minor Manifestation of Fire|r. Loot him for a |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Click the |cRXP_PICK_Brazier|r on the ground
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
step << Shaman
    #optional
    #completewith FireEnd
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
step << Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step << skip
    #completewith RatchetEnter
    >>Kill |cRXP_ENEMY_Sunscale Screechers|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #optional
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>Kill |cRXP_ENEMY_Zhevra Runners|r. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> Travel to Ratchet
    .isOnQuest 845
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Accept Southsea Freebooters
    .target Gazlowe
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 894 >>Accept Samophlange
    .goto 1413/1,-3759.06,-902.18
    .accept 895 >>Accept WANTED: Baron Longshore
    .goto 1413/1,-3719.54,-919.07
    .target Sputtervalve
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T132394:0|t[Bearded Axe] |cRXP_BUY_from him|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
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
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133052:0|t[Hammer] |cRXP_BUY_from him|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133052:0|t[Hammer]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the second|r |T135343:0|t[Scimitar] |cRXP_WARN_in your off-hand|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Turn in Chen's Empty Keg
    .accept 821 >>Accept Chen's Empty Keg
    .target Brewmaster Drohn
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Delete the|r |T133735:0|t[Control Console Operating Manual] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #optional
    #completewith BaronLongshore
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r
    >>|cRXP_WARN_He patrols up and down the hill|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto 1413/1,-3883.70,-1572.40,0
    .goto 1413/1,-3818.84,-1707.52,0
    .goto 1413/1,-3724.60,-1746.71,0
    .goto 1413/1,-3883.70,-1572.40,50,0
    .goto 1413/1,-3818.84,-1707.52,50,0
    .goto 1413/1,-3724.60,-1746.71,50,0
    >>Kill |cRXP_ENEMY_Baron Longshore|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He can be found in one of the camps|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #label SouthSea
    #loop
    .goto 1413/1,-3885.72,-1569.690,0
    .goto 1413/1,-3902.95,-1366.33,50,0
    .goto 1413/1,-3823.91,-1512.94,50,0
    .goto 1413/1,-3885.72,-1569.690,50,0
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    .goto 1413/1,-3832.02,-1381.87,50,0
    .goto 1413/1,-3730.68,-1364.98,50,0
    .goto 1413/1,-3677.99,-1392.00
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r
    >>|cRXP_WARN_He patrols up and down the hill|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Turn in Southsea Freebooters
    .turnin 895 >>Turn in WANTED: Baron Longshore
    .accept 890 >>Accept The Missing Shipment
    .target Gazlowe
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
    .target Wharfmaster Dizzywig
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Turn in The Missing Shipment
    .accept 888 >>Accept Stolen Booty
    .target Gazlowe
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135353:0|t[Espadon] |cRXP_BUY_from him|r
    .collect 2024,1,850,1 --Collect Espadon (1)
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133052:0|t[Hammer] |cRXP_BUY_from him|r
    .collect 2028,1,850,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133052:0|t[Hammer]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    --Enter completewith label
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2977.78,-942.71,0
    .goto 1413/1,-2274.52,-870.42,0
    .goto 1413/1,-2977.78,-942.71,80,0
    .goto 1413/1,-2832.87,-990.01,80,0
    .goto 1413/1,-2710.26,-959.6,80,0
    .goto 1413/1,-2392.07,-900.83,80,0
    .goto 1413/1,-2274.52,-870.42,80,0
    >>Finish killing |cRXP_ENEMY_Zhevras|r. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
    .target +Thork
    .goto 1413/1,-2595.75,-473.15
    .turnin 845 >>Turn in The Zhevra
    .accept 903 >>Accept Prowlers of the Barrens
    .target +Sergra Darkthorn
    .goto 1413/1,-2669.72,-481.94
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Buy a|r |T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r] |cRXP_BUY_from him if it's available and stock up on arrows|r
    >>|cRXP_WARN_If it's not up, buy a|r |T135490:0|t[Reinforced Bow] |cRXP_WARN_instead|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_from him|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #optional
    #completewith RegtharDeathgate1
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #optional
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .accept 855 >>Accept Centaur Bracers
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .target Regthar Deathgate
step
    #optional
    #xprate <1.5
    #completewith KodobaneTurnin
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for their |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #optional
    #completewith Barak
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto 1413/1,-1909.72,113.96
    >>Loot the |cRXP_PICK_Abandoned Snapjaw Nest|r on the ground for |T294479:0|t[|cRXP_LOOT_Abandoned Snapjaw Egg|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto 1413/1,-1943.16,89.64
    >>Dive underwater to the |cRXP_PICK_Bubbling Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Kill |cRXP_ENEMY_Barak Kodobane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Barak Kodobane|r's melee hits deal a LOT of damage and he is protected by a |cRXP_ENEMY_Kolkar Wrangler|r. They can net you and shoot at you from ranged distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
step
    #xprate <1.5
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Kill |cRXP_ENEMY_Savannah Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto 1413/1,-1616.87,611.90,0
    .goto 1413/1,-1583.43,322.73,60,0
    .goto 1413/1,-1513.51,380.84,60,0
    .goto 1413/1,-1526.68,477.450,60,0
    .goto 1413/1,-1555.06,545.69,60,0
    .goto 1413/1,-1553.03,615.95,60,0
    .goto 1413/1,-1616.87,611.90,60,0
    >>Kill |cRXP_ENEMY_Witchwing Harpies|r and |cRXP_ENEMY_Witchwing Roguefeathers|r. Loot them for their |cRXP_LOOT_Talons|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather

    --RFC turnin section below no longer possible due to TB logout skip no longer workng

step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #optional
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Follow the path on the left upward
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Jump onto one of the cages. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith RFCPickups
    .goto 1456/1,-13.04,-1107.95,40 >> Take the lift up to Thunder Bluff
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith Samophlange
    .hs >> Hearth to The Crossroads
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << skip --!Tauren
    #completewith Samophlange
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to The Crossroads
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Abandon Testing an Enemy's Strength
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Abandon The Power to Destroy...
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Abandon Hidden Enemies
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Abandon Slaying the Beast
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate >1.49
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Turn in Harpy Raiders
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
    .target Tonga Runetotem
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r doesn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r didn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    +|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_in the area. They are up to level 18 and can|r |T132152:0|t[Thrash]
    .dungeon RFC
    .xp >17,1
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #completewith Samophlange
    +|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_in the area. They are up to level 18 and can|r |T132152:0|t[Thrash]
    --.dungeon !RFC
    .xp >17,1
step
    #optional
    #completewith Samophlange
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    --.dungeon !RFC
step
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r |cRXP_WARN_sells|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>> Vendor trash and repair
    .target Vrang Wildgore
    --.dungeon !RFC
step
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Click on the |cRXP_PICK_Control Console|r
    .turnin 894 >>Turn in Samophlange
    .accept 900 >>Accept Samophlange
step
    .goto 1413/1,-2679.86,830.80
    >>Click the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_Be careful! Two mobs will spawn after you shut off the Valve|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto 1413/1,-2675.80,842.290
    >>Click the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_One mob will spawn after you shut off the Valve|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto 1413/1,-2686.95,842.290
    >>Click the |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto 1413/1,-2686.95,825.40
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 900 >>Turn in Samophlange
    .accept 901 >>Accept Samophlange
step
    .goto 1413/1,-2731.54,909.850
    >>Kill |cRXP_ENEMY_Tinkerer Sniggles|r in the building. Loot him for his |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto 1413/1,-2686.95,825.40
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 901 >>Turn in Samophlange
    .accept 902 >>Accept Samophlange
step
    #optional
    #completewith Ignition
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-1693.88,592.31,90,0
    >>Kill |cRXP_ENEMY_Raptors|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto 1413/1,-3102.42,1105.78
    >>Grinding to level 16 here is important, due to the next 3 quests being quite hard
	.xp 16
step
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
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
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Kill |cRXP_ENEMY_Supervisor Lugwizzle|r. Loot him for his |cRXP_LOOT_Key|r
    >>|cRXP_WARN_He patrols up and down the platform|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_This will begin an escort. Make sure you're at full health|r
    .turnin 858 >>Turn in Ignition
    .accept 863,1 >>Accept The Escape
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_This will begin an escort. Make sure you're at full health|r
    .accept 863,1 >>Accept The Escape
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Venture Co. Mercenaries|r |cRXP_WARN_will spawn when the shredder moves onto the higher ground. Kill them then wait for his RP event at the end|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r and |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for |cRXP_LOOT_Cats Eye Emerald|r
    >>|cRXP_WARN_If it hasn't dropped after 25+ mobs, feel free to skip this quest|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for their |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for their |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]
    >>|cRXP_WARN_You could also buy them from the auction house instead|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Jump onto the wooden beam. Perform a Logout Skip by logging out and back in. Run back to Orgrimmar if you don't succeed|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .zoneskip Orgrimmar
step
    #completewith SpiritsPickup
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Enter Orgrimmar through the western entrance
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Create|r |T133685:0|t[Linen Bandages] |cRXP_WARN_until your skill is 40 or higher|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
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
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[Linen Cloth] |cRXP_WARN_to reach 50 skill|r
    .train 3274 >> Train Journeyman First Aid
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith SpiritsPickup
    +|cRXP_WARN_Make sure you don't sell your|r |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Train your class spells
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 527 >> Train |T135894:0|t[Dispel Magic]
    >>|cRXP_WARN_You will need|r |T135894:0|t[Dispel Magic] |cRXP_WARN_to obtain a rune later|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Train your class spells
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Train your class spells
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Train your class spells
    .target Pephredo
    .xp <18,1
step << !Tauren !Undead !Shaman !Warrior
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
    .isQuestAvailable 4921
step << Shaman
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Make sure you have trained|r |T136075:0|t[Purge] |cRXP_WARN_as it will be needed to obtain a rune later|r
    .train 8019 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Make sure you have trained|r |T136075:0|t[Purge] |cRXP_WARN_as it will be needed to obtain a rune later|r
    .train 913 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Accept The Spirits of Stonetalon
    .target Zor Lonetree
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .accept 2379 >> Accept Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Turn in The Shattered Hand
    .accept 1858 >> Accept The Shattered Hand
    .target Therzok
step << Rogue
    .goto 1454/1,-4279.79,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Turn in Zando'zan
    .accept 2382 >>Accept Wrenix of Ratchet
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #optional
    #completewith next
    .goto 1454/1,-4271.1,1810.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy a|r |T134065:0|t[Thieves' Tools] |cRXP_BUY_from him|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1773.24
    >>|cRXP_WARN_Use|r |T136058:0|t[Pick Lock] |cRXP_WARN_to open|r |T133626:0|t[Tazan's Satchel]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Turn in The Shattered Hand
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4437.87,1637.33
    >>|cRXP_WARN_Use|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_in the Inn. Use his key to open|r |T133626:0|t[Tazan's Satchel]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Turn in The Shattered Hand
    .target Therzok
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Train your class spells
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Train your class spells
    .target Mirket
    .xp <18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Sacrifice]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Firebolt (Rank 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Train your class spells
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Train your class spells
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Train your class spells
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Train your class spells
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Train your pet spells
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Train Staves
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Train Bows
    .target Hanashi
step << Troll Warrior/Tauren Warrior/Undead Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Train Two-Handed Axes
    .train 227 >>Train Staves
    .target Hanashi
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135490:0|t[Reinforced Bow] |cRXP_BUY_from him|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
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
step << Warrior
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe] |cRXP_WARN_when you are level 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid/Mage
    #season 2
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Buy a|r |T134237:0|t[Kolkar Booty Key] |cRXP_BUY_from the Auction House if possible|r
    >>|cRXP_WARN_You will need this to obtain|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_to train|r |T236167:0|t[Savage Roar] << Druid
    >>|cRXP_WARN_You will need this to obtain|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: TENGI RONEERA]|r |cRXP_WARN_to train|r |T132869:0|t[Regeneration] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #optional
    #label SpiritsPickup
step
    #completewith FoodandWater2
    .hs >> Hearth to The Crossroads
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater2
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Fly to The Crossroads
    .target Doras
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
    .target Gazrog
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
step
    #xprate >1.49
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Turn in Harpy Raiders
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
step << !Tauren !Undead !Warrior !Shaman
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Turn in Return to the Crossroads
    .target Zargh
    .isOnQuest 6386
step
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r doesn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r didn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destroy|r |T134227:0|t[Horn of Echeyakee] |cRXP_WARN_as you no longer need it|r
step << Warrior
    #season 2
    .goto 1413/1,-2673.78,-487.34,
    .aura 420667 >>Click the |cRXP_PICK_Horde Warbanner|r
    .train 403489,1
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
    .target Mankrik
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Fly to Ratchet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Turn in Wrenix of Ratchet
    .accept 2381 >>Accept Plundering the Plunderers
    .target Wrenix the Wretched
step << Rogue
    .goto 1413/1,-3773.24,-841.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix's Gizmotronic Apparatus|r
    >>|cRXP_WARN_Obtain an|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_and a|r |T134065:0|t[Thieves' Tools]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Turn in Samophlange
    .turnin 863 >> Turn in The Escape
    .accept 3921 >> Accept Wenikee Boltbucket << Hunter
    .accept 1483 >> Accept Ziz Fizziks
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Turn in Miner's Fortune
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Turn in Samophlange
    .accept 3921 >> Accept Wenikee Boltbucket << Hunter
    .accept 1483 >> Accept Ziz Fizziks
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Turn in Miner's Fortune
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >> Turn in The Escape
    .accept 1483 >> Accept Ziz Fizziks
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 1483 >> Accept Ziz Fizziks
    .target Sputtervalve
step
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Accept Raptor Horns
    .accept 1069 >>Accept Deepmoss Spider Eggs
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto 1413/1,-3737.78,-971.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Buy a|r |T135129:0|t[Fishing Harpoon] |cRXP_BUY_from him|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto 1413/1,-3914.10,-1044.06
    .use 208773 >>Use the |T135129:0|t[Fishing Harpoon] on |cRXP_ENEMY_Bruuz|r and kill him. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] << Warrior
    >>|cRXP_WARN_He patrols around the sunken boat in the water|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] |cRXP_WARN_to train|r |T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70|r
step << Rogue
    .goto 1413/1,-3958.68,-1457.54
    >>Once your lockpicking is 70, go to the bottom floor of the ship and open |cRXP_PICK_The Jewel of the Southsea|r
    >>|cRXP_WARN_Use the|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_on|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto 1413/1,-3819.86,-1714.95
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,2 --Telescopic Lens (1)
step
    .goto 1413/1,-3723.59,-1741.30
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,1 --Shipment of Boots (1)
step << Warrior
    #season 2
    #completewith next
    .subzone 385 >>Travel to Northwatch Hold
step << Warrior
    #season 2
    .goto 1413/1,-3715.48,-2191.94
    >>Click the |cRXP_PICK_Alliance Warbanner|r
    >>Kill |cRXP_ENEMY_Lieutenant Stonebrew|r as he spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
step
    #optional
    #completewith TestSeeds
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #optional
    #completewith TestSeeds
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r and |cRXP_LOOT_Feathers|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-3192.60,-1919.67,60,0
    .goto 1413/1,-3258.47,-2027.09
    >>Loot the |cRXP_PICK_Stolen Silver|r on the ground
    .complete 3281,1 --Stolen Silver (1)
step
    #optional
    #xprate <1.5
    #completewith Verog
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #xprate >1.49
    #completewith next
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>Click the |cRXP_PICK_Bubbling Fissure|r underwater
    .complete 877,1 --Test the Dried Seeds (1)
step << Druid/Mage
    #optional
    #season 2
    #completewith Verog
    >>Kill |cRXP_ENEMY_Kolkar|r. Loot them for a |T134237:0|t[|cRXP_LOOT_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #optional
    #xprate <1.5
    #completewith next
    #loop
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <1.5
    #label Verog
    .goto 1413/1,-2742.68,-1208.23
    >>Kill |cRXP_ENEMY_Verog|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He has a chance of spawning every time a |cRXP_ENEMY_Kolkar|r is killed|r
    >>|cRXP_WARN_On a highly populated server or fresh launch, your best option is camping his spawnpoint|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step << Druid/Mage
    #season 2
    #loop
    .goto 1413/1,-3031.48,-1480.51,0
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Kill |cRXP_ENEMY_Kolkar|r. Loot them for a |T134237:0|t[|cRXP_LOOT_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid/Mage
    #season 2
    .goto 1413/1,-2717.35,-1211.61
    >>Open a |cRXP_PICK_Kolkar Booty|r chest for |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] << Druid
    >>Open a |cRXP_PICK_Kolkar Booty|r chest for |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 << Druid --Ferocious Idol (1)
    .collect 208754,1 << Mage --Spell Notes: TENGI RONEERA (1)
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >> |cRXP_WARN_Equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_Once you've learned|r |T132115:0|t[Cat Form]
    .use 208689
    .itemcount 208689,1
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_Deal 20 instances of bleeding damage from|r |T132152:0|t[Rip] |cRXP_WARN_or|r |T132122:0|t[Rake] |cRXP_WARN_to humanoids, then use the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_again to learn|r |T236167:0|t[Savage Roar]
    .use 208689
    .itemcount 208689,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to train|r |T132869:0|t[Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    #loop
    .goto 1413/1,-3023.38,-1234.58,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    .goto 1413/1,-3000.07,-1208.23,30,0
    .goto 1413/1,-2959.54,-1196.75,30,0
    .goto 1413/1,-2953.46,-1241.34,30,0
    .goto 1413/1,-2977.78,-1304.17,30,0
    .goto 1413/1,-3029.46,-1324.44,30,0
    .goto 1413/1,-3066.95,-1311.61,30,0
    .goto 1413/1,-3059.86,-1264.31,30,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #completewith LakotaMani1
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto 1413/1,-2707.22,-1502.130
    >>Click the |cRXP_PICK_Blue Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-2692.02,-1533.89
    >>Click the |cRXP_PICK_Red Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto 1413/1,-2648.44,-1527.13
    >>Click the |cRXP_PICK_Yellow Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto 1413/1,-2375.86,-1787.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Beaten Corpse|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Thunder Lizard Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step if you can't find him|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #optional
    #completewith CampTArrive
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r. This does not have to be completed now
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_You need to have learned|r |T135813:0|t[Immolation Trap] |cRXP_WARN_or any other trap to be able to obtain this rune|r
step << Hunter
    #season 2
    #loop
    .goto 1413/1,-1746.58,-2263.56,0
    .goto 1413/1,-1896.55,-2137.89,40,0
    .goto 1413/1,-1840.82,-2184.510,40,0
    .goto 1413/1,-1746.58,-2263.56,40,0
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Use |T135813:0|t[Immolation Trap] on the patrol path of the |cRXP_ENEMY_Patrolling Cheetah|r to remove his buff
    >>Kill him and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] |cRXP_WARN_to train|r |T132270:0|t[Beast Mastery]
    .use 208701
    .itemcount 208701,1
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >> Travel to Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto 1413/1,-1995.86,-2376.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
    .home >>Set your Hearthstone to Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Turn in Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Accept Tribes at War
    .target Mangletooth
step
    #optional
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path << !Tauren
    .target Omusa Thunderhorn
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Travel into Mulgore
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Take the lift into Thunder Bluff
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to The Crossroads
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path << !Tauren
    .fly Crossroads >>Fly to The Crossroads
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Turn in Lost in Battle
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>Turn in The Stagnant Oasis
    .accept 880 >>Accept Altered Beings
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>Turn in The Angry Scytheclaws
    .accept 3261 >>Accept Jorn Skyseer
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>Turn in Stolen Silver
    .target +Gazrog
    .goto 1413/1,-2639.32,-436.00
step
    .destroy 5165 >>|cRXP_WARN_Delete any leftover|r |T132914:0|t[Sunscale Feathers] |cRXP_WARN_you still have|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Turn in Verog the Dervish
    .accept 852 >>Accept Hezrul Bloodmark
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Leaders
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Turn in Verog the Dervish
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .target Regthar Deathgate
step
    #xprate <1.5
    #completewith Hezrul
    .subzone 387 >> Travel to the Lushwater Oasis
    .isQuestTurnedIn 851
step
    #optional
    #xprate <1.5
    #completewith Hezrul
    >>Kill |cRXP_ENEMY_Oasis Snapjaws|r as you're looking for |cRXP_ENEMY_Hezrul Bloodmark|r. Loot them for their |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #optional
    #xprate <1.5
    #completewith next
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <1.5
    #loop
    #label Hezrul
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    .goto 1413/1,-2001.94,-965.69,50,0
    >>Find & kill |cRXP_ENEMY_Hezrul Bloodmark|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrols around the lake|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #xprate <1.5
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    .goto 1413/1,-2001.94,-965.69,50,0
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_Feel free to skip this quest if you haven't had many drops yet so far|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto 1413/1,-2273.51,-1106.89
    >>Open the |cRXP_PICK_Empty Snapjaw Nest|r on the ground for |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] |cRXP_WARN_to train|r |T132131:0|t[Lacerate]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #optional
    #xprate <1.5
    #completewith CounterattackComplete
    .abandon 855 >> Abandon Centaur Bracers as you have not looted enough previously to make it worthwhile to finish
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #completewith CounterattackComplete
    +|cRXP_WARN_This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located|r
    +|cRXP_WARN_Skip it if you can't do this quest. You will have another opportunity to complete it at higher level|r
    .isQuestTurnedIn 852
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Accept Counterattack!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <1.5
    #label CounterattackComplete
    .goto 1413/1,-1884.39,-289.38
    >>Kill |cRXP_ENEMY_Warlord Krom'zar|r once he appears. Loot the |cRXP_PICK_Banner|r that he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #optional
    #xprate <1.5
    #completewith StonetalonPickups
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <1.5
    #loop
    .goto 1413/1,-1458.79,565.96,0
    .goto 1413/1,-1458.79,565.96,40,0
    .goto 1413/1,-1379.75,620.68,40,0
    .goto 1413/1,-1376.71,717.97,40,0
    .goto 1413/1,-1323.0,747.7,40,0
    .goto 1413/1,-1245.99,763.91,40,0
    .goto 1413/1,-1223.7,699.05,40,0
    .goto 1413/1,-1290.58,670.0,40,0
    .goto 1413/1,-1245.99,624.74,40,0
    .goto 1413/1,-1241.94,559.2,40,0
    .goto 1413/1,-1155.8,553.12,40,0
    .goto 1413/1,-1150.74,513.93,40,0
    .goto 1413/1,-1194.31,508.53,40,0
    .goto 1413/1,-1263.22,458.53,40,0
    .goto 1413/1,-1311.86,415.97,40,0
    .goto 1413/1,-1366.58,449.75,40,0
    .goto 1413/1,-1417.24,486.91,40,0
    .goto 1413/1,-1445.62,532.85,40,0
    >>Kill |cRXP_ENEMY_Witchwing Slayers|r. Loot them for their |cRXP_LOOT_Rings|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Witchwing Slayers|r cast|r |T135358:0|t[Execute] |cRXP_WARN_(deals a LOT of damage when you're at <20% health), and |cRXP_ENEMY_Witchwing Ambushers|r are|r |T132320:0|t[Stealthed] |cRXP_WARN_and patrol around|r
    >>|cRXP_WARN_Watch out for|r |cRXP_ENEMY_Witchwing Ambushers|r|cRXP_WARN_. They are stealthed and patrol in the area|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
    .isOnQuest 875
step
    #label StonetalonPickups
    #completewith next
    .goto 1413/1,-950.10,-271.14,30 >> Travel toward |cRXP_FRIENDLY_Seereth|r
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    #label StonetalonPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .accept 6548 >> Accept Avenge My Village
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .maxlevel 20 << !Druid
step
    #optional
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto 1413/1,-950.10,-271.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .target Seereth Stonebreak
]])

RXPGuides.RegisterGuide([[
#forever
#xprate <1.99
<< Horde
#name 17-22 Stonetalon/Barrens/Ashenvale
#displayname 18-22 Stonetalon/Barrens/Ashenvale << !Shaman !Hunter !Tauren !Skyborne
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#next RestedXP Horde 22-30\22-24 Hillsbrad


step << Druid
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Grimtotem Taurens|r. Loot them for the |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
step
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Ruffians|r and |cRXP_ENEMY_Grimtotem Mercenaries|r in the area
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #season 2
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Kill |cRXP_ENEMY_Grimtotems|r. Loot them for the |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #season 2
    #completewith AvengeVillageTurnin
    .equip 18,210534 >> |cRXP_WARN_Equip the|r |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #completewith next
    >>|cRXP_WARN_Cast|r |T136085:0|t[Regrowth] |cRXP_WARN_or|r |T136041:0|t[Healing Touch] |cRXP_WARN_on 10 different friendly Beasts such as Hunter Pets/Druids in Bear Form/Shamans in Ghost Wolf|r
    .train 410021 >> |cRXP_WARN_Use the|r |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r] |cRXP_WARN_to train|r |T132143:0|t[Wild Strikes]
    .itemcount 210534,1
step
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto 1442/1,-460.13,67.77,30 >>Travel up the path to the bonfire
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-350.74,112.06
    >>Kill |cRXP_ENEMY_Grundig Darkcloud|r and |cRXP_ENEMY_Grimtotem Brutes|r
    >>|cRXP_WARN_Make sure you kill all six|r |cRXP_ENEMY_Grimtotem Brutes|r |cRXP_WARN_before starting the quest inside|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-342.44,129.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Accept Protect Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-261.38,90.57,40,0
    .goto 1442/1,-261.86,-7.12,40,0
    .goto 1442/1,-501.15,-41.64
    >>Escort |cRXP_FRIENDLY_Kaya|r and stay close to her
    >>|cRXP_WARN_Be careful! Three|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn when you reach the bonfire in Camp Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Accept Blood Feeders
    .target Xen'Zilla
step << Priest/Mage/Warlock
    #completewith next
    .goto 1442/1,-103.64,40.10,100,0
    .goto 1442/1,74.11,185.32,100,0
    .goto 1442/1,244.05,262.50,100,0
    >>Kill every |cRXP_ENEMY_Deepmoss Creeper|r you see
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    .goto 1442/1,360.76,451.690
    >>Click the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Accept Arachnophobia
    .group << Priest/Mage
step << Warlock/Priest/Mage
    #completewith Besseleth1
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r and |cRXP_ENEMY_Deepmoss Creepers|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #completewith next
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #label Besseleth1
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>Kill |cRXP_ENEMY_Besseleth|r. Loot her for for her |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Clear the area around|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Be careful as she webs you. Keep her permanently feared with dots|r << Warlock
    >>|cRXP_WARN_This quest is optional. If you can't do it, skip this quest. You can try it again later|r << Warlock
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 2 << Priest/Mage
step << Warlock/Priest/Mage
    .goto 1442/1,560.49,440.94
    >>Kill |cRXP_ENEMY_Deepmoss Creepers|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << !Warlock
    .goto 1442/1,-44.56,84.05,80,0
    .goto 1442/1,245.51,255.01,80,0
    .goto 1442/1,392.01,445.17,40,0
    .goto 1442/1,560.49,440.94
    >>Kill |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto 1442/1,735.8,925.8,50,0
    .goto 1442/1,806.12,929.05
    .subzone 460 >>Travel to Sun Rock Retreat
step
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 1093
step
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from her if they're up|r << Warrior
    .target Jeeda
    .isQuestAvailable 1093
step
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Turn in Arachnophobia
    .target Maggran Earthbinder
	.isQuestComplete 6284
step
    #label SRRFP
    .goto 1442/1,1041.99,967.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Get the Sun Rock Retreat flight path
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto 1442/1,365.16,878.250,15 >> Travel toward |cRXP_FRIENDLY_Ziz|r
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >> Turn in Ziz Fizziks
    .accept 1093 >> Accept Super Reaper 6000
    .target Ziz Fizziks
step
    #completewith Windshear
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto 1442/1,352.46,912.44,0
    .goto 1442/1,352.46,912.44,50,0
    .goto 1442/1,297.77,959.660,50,0
    .goto 1442/1,250.40,990.59,50,0
    .goto 1442/1,259.68,1032.93,50,0
    .goto 1442/1,246.98,1068.09,50,0
    .goto 1442/1,207.91,1010.13,50,0
    .goto 1442/1,163.47,962.27,50,0
    .goto 1442/1,86.81,961.94,50,0
    .goto 1442/1,181.05,907.89,50,0
    .goto 1442/1,193.75,867.83,50,0
    .goto 1442/1,194.73,827.78,50,0
    .goto 1442/1,225.49,765.26,50,0
    .goto 1442/1,281.16,763.63,50,0
    .goto 1442/1,268.95,832.99,50,0
    .goto 1442/1,303.63,858.39,50,0
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Undead Warrior
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veenix|r
    .vendor >>|cRXP_BUY_Buy an|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him|r
    >>|cRXP_WARN_If it's not up, buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_instead|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Undead Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135329:0|t[Executioner's Sword]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <19,1
step << Undead Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Shaman
    #season 0
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 2
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T133476:0|t[Flail] |cRXP_BUY_from him|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T133476:0|t[Flail]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Rogue
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him.|r
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
step
    #label Windshear
    .subzone 461 >> Travel to Windshear Crag
    .isOnQuest 1093
step
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #label BluePrints
    #loop
    .goto 1442/1,179.10,1168.06,0
    .goto 1442/1,179.10,1168.06,100,0
    .goto 1442/1,232.82,1239.70,100,0
    .goto 1442/1,-16.23,1441.59,100,0
    .goto 1442/1,-255.52,1291.80,100,0
    .goto 1442/1,-382.48,1135.50,100,0
    >>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for their |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #loop
    .goto 1442/1,242.58,1121.82,0
    .goto 1442/1,242.58,1121.82,50,0
    .goto 1442/1,292.39,1122.470,50,0
    .goto 1442/1,325.6,1168.39,50,0
    .goto 1442/1,338.79,1206.48,50,0
    .goto 1442/1,276.77,1248.49,50,0
    .goto 1442/1,215.24,1145.59,50,0
    .goto 1442/1,187.40,1114.33,50,0
    .goto 1442/1,138.57,1144.62,50,0
    .goto 1442/1,51.16,1153.41,50,0
    .goto 1442/1,-17.70,1128.33,50,0
    .goto 1442/1,-106.09,1157.31,50,0
    .goto 1442/1,-165.66,1173.60,50,0
    .goto 1442/1,-189.10,1079.82,50,0
    .goto 1442/1,-69.95,1061.91,50,0
    .goto 1442/1,10.63,1072.33,50,0
    .goto 1442/1,57.51,1056.05,50,0
    .goto 1442/1,107.32,1040.09,50,0
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto 1442/1,246.98,1068.09,0
    .goto 1442/1,352.46,912.44,30,0
    .goto 1442/1,297.77,959.660,30,0
    .goto 1442/1,250.40,990.59,30,0
    .goto 1442/1,259.68,1032.93,30,0
    .goto 1442/1,246.98,1068.09,30,0
    .goto 1442/1,207.91,1010.13,30,0
    .goto 1442/1,163.47,962.27,30,0
    .goto 1442/1,86.81,961.94,30,0
    .goto 1442/1,181.05,907.89,30,0
    .goto 1442/1,193.75,867.83,30,0
    .goto 1442/1,194.73,827.78,30,0
    .goto 1442/1,225.49,765.26,30,0
    .goto 1442/1,281.16,763.63,30,0
    .goto 1442/1,268.95,832.99,30,0
    .goto 1442/1,303.63,858.39,30,0
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #optional
	#completewith next
	+|cRXP_WARN_If you have over 15 |cRXP_LOOT_Deepmoss Eggs|r|cRXP_WARN_, split the stack of any extras (shift click), then delete them|r
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
    .target Ziz Fizziks
step
    #loop
    .goto 1442/1,362.71,539.28,0
    .goto 1442/1,275.30,577.38,80,0
    .goto 1442/1,362.71,539.28,80,0
    .goto 1442/1,298.25,432.80,80,0
    .goto 1442/1,244.05,262.50,80,0
    .goto 1442/1,74.11,185.32,80,0
    .goto 1442/1,-103.64,40.10,80,0
    .goto 1442/1,362.71,539.28,80,0
    >>Finish killing |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Train your class spells
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Train your class spells
    .target Loganaar
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >> Hearth to Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto 1413/1,-1995.86,-2375.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Turn in Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani2
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r. Save the |T134128:0|t[|cRXP_LOOT_Blood Shards|r] you get
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
    #label LakotaMani2
    #loop
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step if you can't find him|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto 1413/1,-2515.7,-2076.41,0
    .goto 1413/1,-2515.7,-2076.41,60,0
    .goto 1413/1,-2518.74,-2125.73,60,0
    .goto 1413/1,-2517.72,-2223.7,60,0
    .goto 1413/1,-2486.31,-2254.1,60,0
    .goto 1413/1,-2494.42,-2282.48,60,0
    .goto 1413/1,-2531.91,-2272.34,60,0
    .goto 1413/1,-2571.43,-2295.31,60,0
    .goto 1413/1,-2620.07,-2285.18,60,0
    .goto 1413/1,-2625.14,-2245.32,60,0
    .goto 1413/1,-2755.86,-2082.49,60,0
    .goto 1413/1,-2813.62,-2054.12,60,0
    .goto 1413/1,-2811.59,-2004.12,60,0
    .goto 1413/1,-2783.22,-1949.39,60,0
    .goto 1413/1,-2747.75,-1889.26,60,0
    .goto 1413/1,-2709.24,-1913.59,60,0
    .goto 1413/1,-2706.2,-1948.72,60,0
    .goto 1413/1,-2687.96,-1973.04,60,0
    .goto 1413/1,-2678.84,-2016.28,60,0
    .goto 1413/1,-2584.6,-2050.74,60,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r. Save the |T134128:0|t[|cRXP_LOOT_Blood Shards|r] you get
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
step << Warlock/Shaman
    #loop
	.goto 1413/1,-2515.7,-2076.41,60,0
	.goto 1413/1,-2518.74,-2125.73,60,0
	.goto 1413/1,-2517.72,-2223.7,60,0
	.goto 1413/1,-2486.31,-2254.1,60,0
	.goto 1413/1,-2494.42,-2282.48,60,0
	.goto 1413/1,-2531.91,-2272.34,60,0
	.goto 1413/1,-2571.43,-2295.31,60,0
	.goto 1413/1,-2620.07,-2285.18,60,0
	.goto 1413/1,-2625.14,-2245.32,60,0
	.goto 1413/1,-2755.86,-2082.49,60,0
	.goto 1413/1,-2813.62,-2054.12,60,0
	.goto 1413/1,-2811.59,-2004.12,60,0
	.goto 1413/1,-2783.22,-1949.39,60,0
	.goto 1413/1,-2747.75,-1889.26,60,0
	.goto 1413/1,-2709.24,-1913.59,60,0
	.goto 1413/1,-2706.2,-1948.72,60,0
	.goto 1413/1,-2687.96,-1973.04,60,0
	.goto 1413/1,-2678.84,-2016.28,60,0
	.goto 1413/1,-2584.6,-2050.74,60,0
    .xp 19+11000 >> Grind to 11000+/21300 xp
    --VV 1.5x Add 1.5x grind step
step
    #loop
    .goto 1413/1,-2532.92,-1965.61,0
    .goto 1413/1,-2532.92,-1965.61,50,0
    .goto 1413/1,-2449.83,-1953.45,50,0
    .goto 1413/1,-2377.88,-2018.31,50,0
    .goto 1413/1,-2397.14,-2108.84,50,0
    .goto 1413/1,-2345.46,-2187.21,50,0
    .goto 1413/1,-2415.38,-2179.78,50,0
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto 1413/1,-2847.06,-1879.13,0
    .goto 1413/1,-2847.06,-1879.13,50,0
    .goto 1413/1,-2859.22,-1804.81,50,0
    .goto 1413/1,-2833.88,-1749.41,50,0
    .goto 1413/1,-2881.51,-1723.74,50,0
    .goto 1413/1,-2932.18,-1698.06.0,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>Finish killing |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto 1413/1,-3183.48,-2015.61,0
    .goto 1413/1,-2646.42,-1529.16,0
    .goto 1413/1,-3183.48,-2015.61,90,0
    .goto 1413/1,-2646.42,-1529.16,90,0
    >>Finish killing |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r. Loot it for a |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #loop
    .goto 1413/1,-3010.20,-1319.04,0
    .goto 1413/1,-3010.20,-1319.04,40,0
    .goto 1413/1,-2959.54,-1292.69,40,0
    .goto 1413/1,-2953.46,-1239.31,40,0
    .goto 1413/1,-2998.04,-1192.02,40,0
    .goto 1413/1,-3050.74,-1225.13,40,0
    .goto 1413/1,-3066.95,-1260.93,40,0
    .goto 1413/1,-3052.76,-1319.710,40,0
    >>Kill |cRXP_ENEMY_Oasis Snapjaws|r in and around the lake. Loot them for their |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step << Shaman/Priest
    #season 2
    #loop
    .goto 1413/1,-3028.44,-685.30,40,0 --Spawn 1
    .goto 1413/1,-3034.52,-698.81,40,0
    .goto 1413/1,-2931.16,-816.37,40,0 --Spawn 2
    .goto 1413/1,-2946.36,-800.83,40,0
    .goto 1413/1,-3200.71,-821.78,40,0 --Spawn 3
    .goto 1413/1,-3209.83,-804.89,40,0
    .goto 1413/1,-3199.70,-799.480,40,0
    .goto 1413/1,-3212.87,-979.20,40,0 --Spawn 4
    .goto 1413/1,-3202.74,-998.79,40,0
    .goto 1413/1,-3337.51,-932.58,40,0 --Spawn 5
    .goto 1413/1,-3347.64,-923.12,40,0
    .goto 1413/1,-3349.67,-936.63,40,0
    >>Cast |T136075:0|t[Purge] on the |cRXP_ENEMY_Desert Mirage|r to kill it. Loot it for the |T134419:0|t|cRXP_LOOT_[Earthen Rune]|r << Shaman
    >>Cast |T135894:0|t[Dispel Magic] on the |cRXP_ENEMY_Desert Mirage|r to kill it. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r] << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r. Loot it for a |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto 1413/1,-3427.70,-436.67
    .use 10338 >>Use the |T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r] at the dead tree to summon |cRXP_ENEMY_Ishamuhale|r. Kill and loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_The Carcass only has a 30 minute duration!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .subzone 392 >> Travel to Ratchet
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Turn in Plundering the Plunderers
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Turn in Stolen Booty
    .target Gazlowe
step
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto 1413/1,-3639.48,-1049.46
    >>|cRXP_WARN_If you have |cRXP_LOOT_3 gold|r to spare you can buy a rune from|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in the Ratchet inn. Judge for yourself if you can afford it and if the rune is useful for your class. You can always buy it later|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
    .train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
    .train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
    .train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
    .train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
    .train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .accept 1491 >>Accept Smart Drinks
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Turn in Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Turn in Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
step << Warrior
    .goto 1413/1,-3680.02,-982.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Buy |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r] from him if it's up
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto 1413/1,-3675.96,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Buy |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] from him if they're up
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
    .isQuestTurnedIn 865
step << Warrior
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equip the|r |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equip the|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    .home >>Set your Hearthstone to Ratchet
    .target Innkeeper Wiley
    .dungeon WC
    .bindlocation 392
    .isQuestTurnedIn 865
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Fly to The Crossroads
    .target Bragok
    .subzoneskip 380
step << Hunter
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Accept Report to Kadrak
    .target Thork
step
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .turnin 875 >>Turn in Harpy Lieutenants
    .accept 876 >>Accept Serena Bloodfeather
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 876 >>Accept Serena Bloodfeather
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r and |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Turn in Consumed by Hatred
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>Turn in Altered Beings
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
step
    .destroy 5085 >>|cRXP_WARN_Delete any leftover|r |T133721:0|t[Bristleback Quilboar Tusks] |cRXP_WARN_you may still have|r
    .itemcount 5085,1
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .dungeon !WC
    .dungeon DM
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Accept Egg Hunt
    .target Korran
step << Shaman
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto 1454/1,-4213.03,1920.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Accept Call of Water
    .target Searn Firewarder
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Train your class spells
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Train your class spells
    .accept 1507 >>Accept Devourer of Souls
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Torment (Rank 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto 1454/1,-4340.53,1839.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
    .target Cazul
step << Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto 1454/1,-4199.99,1717.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> Now you should be looking for a group to The Deadmines
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Train your class spells
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Train your class spells
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4610.95,2135.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Train your pet spells
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Train your class spells
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Train your class spells
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Train your class spells
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Train your class spells
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Train your class spells
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Train your class spells
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Train your class spells
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Train your class spells
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Train your class spells
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Flask of Oil] |cRXP_BUY_from the Auction House if possible|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto 1411/1,-4648.55,1321.88,40 >>Go up the Zeppelin Tower
    .zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn Vale
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto 1434/0,273.91,-12406.71,40,0
    .goto 1434/0,492.15,-12499.03,40,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,1004.57,-12317.37.0,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >> Swim directly to the west from Grom'Gol into the Vile Reef and then swim north toward Westfall
    >>|cRXP_WARN_Steer clear from the island. Follow the waypoint for safety!|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Travel to the Westfall Lighthouse
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 103 >> Accept Keeper of the Flame
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 103 >> Turn in Keeper of the Flame
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >> Turn in The Coastal Menace
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandon Keeper of the Flame
    .dungeon DM
step
    #label EnterDM
    .goto 1415/0,1596.2,-11768.97,8,0
    .goto 1415/0,1596.2,-11780.71,8,0
    .goto 1415/0,1606.76,-11797.13,8,0
    .goto 1415/0,1582.12,-11799.48,8,0
    .goto 1415/0,1596.2,-11813.56,15,0
    .goto 1415/0,1631.4,-11846.41,15,0
    .goto 1415/0,1649.0,-11898.04,15,0
    .goto 1415/0,1659.56,-11919.16,15,0
    .goto 1415/0,1698.28,-11891.0,15,0
    .goto 1415/0,1744.04,-11881.61
    .zone 291 >> Enter the Deadmines Instance portal. Zone in
    .dungeon DM
step
    .hs >> Hearth to The Barrens after having completed Deadmines
    .zone The Barrens >> Arrive in The Barrens
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Fly to The Crossroads
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
    .target Gazrog
step << Shaman
    #completewith CallofWater01
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Fly to Ratchet
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #label CallofWater01
    .goto 1413/1,-4047.86,-1345.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Turn in Call of Water
    .accept 1530 >>Accept Call of Water
    .target Islen Waterseer
step << !Warlock !Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to Crossroads
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to Crossroads
    .target Bragok
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Starts a 45-minute timed quest|r
    .accept 853 >> Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_You are on a timed quest, don't go afk. It will get turned 20-30 minutes after pick-up|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Bragok
    .subzoneskip 380
step
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
step
    .goto 1413/1,-1891.48,-2391.93
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for a |T134128:0|t[|cRXP_LOOT_Blood Shard|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
    .target Mangletooth
step
    #completewith IshamuhaleTurnin
    .goto 1413/1,-1891.48,-2391.93,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    +|cRXP_WARN_Use your|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r] |cRXP_WARN_to get buffs. Save at least 4 of them for later|r << Tauren/Shaman/Orc Warrior/Troll Warrior
    +|cRXP_WARN_Use your|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r] |cRXP_WARN_to get buffs. Save at least 4 of them for later|r << !Tauren !Shaman !Warrior/Undead
    +|cRXP_WARN_Make sure to turn off any autocomplete functions from addons such as Questie or Leatrix Plus for this!|r
    .target Mangletooth
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .turnin 883 >>Turn in Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .target Jorn Skyseer
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1868.18,-2498.00,0
    .goto 1413/1,-1868.18,-2498.00,60,0
    .goto 1413/1,-1861.08,-2561.51,60,0
    .goto 1413/1,-1842.84,-2618.94,60,0
    .goto 1413/1,-1888.44,-2650.690,60,0
    .goto 1413/1,-2004.98,-2683.80,60,0
    .goto 1413/1,-2133.67,-2590.56,60,0
    .goto 1413/1,-2182.31,-2479.76,60,0
    .goto 1413/1,-2232.98,-2478.41,60,0
    .goto 1413/1,-2273.51,-2456.79,60,0
    .goto 1413/1,-2356.60,-2513.54,60,0
    .goto 1413/1,-2428.55,-2517.60,60,0
    .goto 1413/1,-2406.26,-2424.36,60,0
    .goto 1413/1,-2363.70,-2395.98,60,0
    .goto 1413/1,-2253.24,-2345.99,60,0
    >>Kill |cRXP_ENEMY_Thunder Lizards|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Turn in Owatanka
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>> Travel South toward |cRXP_FRIENDLY_Brine|r
step << Shaman
    #completewith next
    >>Kill a |cRXP_ENEMY_Thunderhawk|r. Loot it for its |cRXP_LOOT_Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Turn in Call of Water
    .accept 1535 >>Accept Call of Water
    .target Brine
step << Shaman
    .goto 1413/1,-1858.04,-3572.92
    .use 7766 >> |cRXP_WARN_Fill your|r |T132825:0|t[Empty Brown Waterskin] |cRXP_WARN_in the watering hole below Brine's hut|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Turn in Call of Water
    .accept 1536 >>Accept Call of Water
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .subzone 378 >>Travel back toward Camp Taurajo
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1919.86,-2652.04,0
    .goto 1413/1,-1919.86,-2652.04,60,0
    .goto 1413/1,-2096.18,-2531.11,60,0
    .goto 1413/1,-2341.4,-2352.74,60,0
    .goto 1413/1,-1982.68,-2217.62,60,0
    .goto 1413/1,-1775.96,-2235.86,60,0
    >>Kill a |cRXP_ENEMY_Thunderhawk Hatchling|r or a |cRXP_ENEMY_Thunderhawk Cloudscraper|r. Loot it for its |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Turn in Owatanka
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
    .accept 6382 >>Accept The Ashenvale Hunt << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
    .accept 6382 >>Accept The Ashenvale Hunt << Hunter
    .target Jorn Skyseer
step << !Tauren !Shaman !Warrior/Undead
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>|cRXP_WARN_If you have 10|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r |cRXP_WARN_left, use them to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_Mangletooth|r
    >>|cRXP_WARN_Skip this step if you have the Thunder Bluff flight path|r
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren !Shaman !Warrior/Undead
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Travel into Mulgore
step << !Tauren !Shaman !Warrior/Undead
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Take the lift into Thunder Bluff
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
step << Tauren/Shaman/Orc Warrior/Troll Warrior
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Train Two-Handed Maces
    .train 227 >>Train Staves
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
step << Rogue
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Train Maces
    .target Ansekhwa
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposit your |T134128:0|t[Blood Shards]
    .bankdeposit 5059 >> Deposit your |T132938:0|t[Digging Claw]
    .target Chesmu
    .isOnQuest 868
step
    #optional
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposit your |T134128:0|t[Blood Shards]
    .target Chesmu
step
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon !WC
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Travel to the Spirit Rise and enter the pools of vision
step
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Accept Until Death Do Us Part
    .target Clarice Foster
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
    .dungeon WC
step
    #optional
    #label ZamahTurnin
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Accept Devouring Plague << Undead Priest
    .accept 5642 >> Accept Shadowguard << Troll Priest
    .trainer >> Train your class spells
    .target Miles Welsh
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Train your class spells
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Train your class spells
    .target Archmage Shymm
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Train your class spells
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Train your class spells
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Create|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_until your skill is 80 or higher|r
    .skill firstaid,<1,1
step
    .goto 1456/1,206.88,-997.45
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
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Turn in Hamuul Runetotem
    .accept 1490 >> Accept Nara Wildmane
    .target Arch Druid Hamuul Runetotem
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .accept 914 >> Accept Leaders of the Fang
    .target Nara Wildmane
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .target Nara Wildmane
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .trainer >> Train your class spells
    .accept 27 >> Accept A Lesson to Learn
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Turn in A Lesson to Learn
    .accept 28 >> Accept Trial of the Lake
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto 1450/1,-2634.67,7634.43
    .collect 15877,1,28,1 >>Loot the |cRXP_PICK_Bauble Container|r at the bottom of the lake for a|T134125:0|t[Shrine Bauble]
    >>|cRXP_WARN_Do not go underwater until you arive right above the Bauble|r
step << Druid
    .goto 1450/1,-2221.48,7844.89
    .cast 19719 >> |cRXP_WARN_Use the|r |T134125:0|t[Shrine Bauble] |cRXP_WARN_at the Shrine of Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto 1450/1,-2224.25,7874.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Turn in Trial of the Lake
    .accept 30 >> Accept Trial of the Sea Lion
    .target Tajarri
step << Druid
    .hs >> Hearth to Thunder Bluff
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .dungeon !WC
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .dungeon WC
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >> Travel to the Hunter Rise
step << Hunter
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Train your pet spells
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >> Travel to the Hunter Rise
step << Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .train 845 >>Train your class spells
    .accept 1823 >>Accept Speak with Ruga
    .target Torm Ragetotem
step << Rogue
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him.|r
    .collect 923,1,493,1 --Collect Longsword (1)
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
    .xp <21,1
step << Warrior/Shaman
    #optional
    #completewith next
    #ah
    +|cRXP_FRIENDLY_If it's cheaper you can buy a green weapon from the auction house instead|r
step << Warrior
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 0
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <21,1
step << Shaman
    #season 2
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T133476:0|t[Flail] |cRXP_BUY_from him|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equip the|r |T133476:0|t[Flail]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #completewith KayaLives
    #optional
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn

    --WC

step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to Crossroads
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    +Now you should be looking for a group to Wailing Caverns
    >>Grind |cRXP_ENEMY_Quilboars|r |cRXP_WARN_while assembling a Wailing Caverns group|r
    .dungeon WC
step
    .goto 1413/1,-2053.62,-882.58,100 >> Travel to Wailing Caverns
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>Run up the mountain at the Wailing Caverns meeting stone
    >>|cRXP_WARN_Follow the arrow closely to reach the hidden cave|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .accept 1486 >> Accept Deviate Hides
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >> Accept Deviate Eradication
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .dungeon WC
step
    #optional
    #hardcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Kill all the |cRXP_ENEMY_Deviate Beasts|r you see. Loot them for their |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Hides|r |cRXP_WARN_for everybody|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>Kill all the |cRXP_ENEMY_Deviate Beasts|r you see. Loot them for their |cRXP_LOOT_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #label MadMagg
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2124.50,-730.16,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    .goto 1414/1,-2124.50,-730.16,30,0
    >>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_WARN_He has a long respawn timer. Skip this step if you cannot find him|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >> Enter the WC Instance portal. Zone in
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
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
    #completewith GlowingShard
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Hides|r |cRXP_WARN_for everybody|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
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
    #optional
    #completewith DeviateRaptors
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
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
    #completewith Ectoplasms
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r. . Loot them for their |cRXP_ENEMY_Hides|r
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
    .isOnQuest 1486
    .dungeon WC
 step
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>Kill |cRXP_ENEMY_Deviate Raptors|r. Loot them for their |cRXP_ENEMY_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #label Ectoplasms
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GShard
    .hs >> Hearth to Ratchet
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
    .dungeon WC
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Turn in Smart Drinks
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 380
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >> Travel up the mountain
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Turn in The Glowing Shard
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >> Turn in Deviate Hides
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >> Turn in Deviate Eradication
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1487 >> Turn in Deviate Eradication
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >> Turn in Deviate Hides
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
step << skip
    #completewith next
    .subzone 378 >> Travel South to Camp Taurajo
    .dungeon WC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Turn in Leaders of the Fang
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Turn in In Nightmares
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> Travel to the Spirit Rise and enter the pools of vision
    .isQuestComplete 962
    .dungeon WC
step
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 962 >>Turn in Serpentbloom
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    #label WCEnd
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon WC
step
    #optional
    .abandon 1486 >>Abandon Deviate Hides
step
    #optional
    .abandon 1487 >>Abandon Deviate Eradication
step
    #optional
    .abandon 1491 >>Abandon Smart Drinks
step
    #optional
    .abandon 959 >>Abandon Trouble at the Docks
step
    #optional
    .abandon 914 >>Abandon Leaders of the Fang
step
    #optional
    .abandon 962 >>Abandon Serpentbloom
step
    #xprate <1.5
    #completewith Serena
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to The Crossroads
    .target Tal
    .subzoneskip 380
    .isQuestTurnedIn 852 << !Hunter
step
    #xprate >1.49
    #completewith CounterattackTurnin2
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to The Crossroads
    .subzoneskip 380
    .target Tal
    .isQuestTurnedIn 852 << !Hunter
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #optional
    #completewith Serena
    .abandon 855 >>Abandon Centaur Bracers
step
    #completewith CounterattackTurnin2
    +|cRXP_WARN_This next quest is very hard & grouping up is recommended. You can kite |cRXP_ENEMY_Warlord Krom'zar|r around using the building where the quest giver is located|r
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Accept Counterattack!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto 1413/1,-1884.39,-289.38
    >>Kill |cRXP_ENEMY_Warlord Krom'zar|r once he appears. Loot the |cRXP_PICK_Banner|r that he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #label CounterattackTurnin2
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Serena
    .goto 1413/1,-1345.3,790.94
    >>Kill |cRXP_ENEMY_Serena Bloodfeather|r. Loot her for her |cRXP_LOOT_Head|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    .goto 1413/1,-2347.48,857.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wenikee|r
    .turnin 3921 >> Turn in Wenikee Boltbucket
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    .goto 1413/1,-2253.24,1246.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r
    .turnin 6541 >> Turn in Report to Kadrak
    .target Kadrak
step << Hunter
    .goto 1440/1,-2240.94,1778.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r to start the escort
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_has a 5 minute respawn time|r
    .accept 6544 >> Accept Torek's Assault
    .target Torek
step << Hunter
    .goto 1440/1,-2110.61,1809.320,60,0
    .goto 1440/1,-2052.37,1776.27,20,0
    .goto 1440/1,-2006.81,1777.42,10,0
    .goto 1440/1,-2037.38,1777.04
    >>Follow |cRXP_FRIENDLY_Torek|r
    >>Let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r tank the |cRXP_ENEMY_Silverwing Warriors|r and |cRXP_ENEMY_Silverwing Sentinels|r
    >>|cRXP_WARN_When you clear the building, run toward the Balcony. When |cRXP_ENEMY_Duriel Moonfire|r comes, let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    .goto 1440/1,-2511.97,2271.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Turn in Torek's Assault
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >> Turn in The Ashenvale Hunt
    .turnin 6383 >> Turn in The Ashenvale Hunt
    .target Senani Thunderheart
step << Hunter
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Get the Splintertree Post flight path
    .target Vhulgra
step << Hunter
    #completewith EnterSTM2
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fly Crossroads >> Fly to Crossroads
    .target Vhulgra
    .zoneskip The Barrens
step << !Hunter
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Hunter
    #xprate <1.5
    #hardcore
    #completewith next
    .subzone 380 >>Travel to Crossroads
step
    #xprate <1.5
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 876 >> Turn in Serena Bloodfeather
    .accept 1060 >> Accept Letter to Jin'Zil
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <1.5
    #optional
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .accept 1060 >> Accept Letter to Jin'Zil
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Accept Egg Hunt
    .target Korran
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Turn in Goblin Invaders
    .timer 4,Goblin Invaders RP
    .accept 1063 >>Accept The Elder Crone
    .accept 1068 >>Accept Shredding Machines
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Turn in Goblin Invaders
    .timer 4,Goblin Invaders RP
    .accept 1063 >>Accept The Elder Crone
    .accept 1068 >>Accept Shredding Machines
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Turn in Goblin Invaders
    .timer 4,Goblin Invaders RP
    .accept 1063 >>Accept The Elder Crone
    .accept 1068 >>Accept Shredding Machines
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6523
step
    #label STMturnins1
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Turn in Goblin Invaders
    .timer 4,Goblin Invaders RP
    .accept 1063 >>Accept The Elder Crone
    .accept 1068 >>Accept Shredding Machines
    .goto 1413/1,-950.10,-271.14
    .target Seereth Stonebreak
step
    #completewith BloodFeedersTI
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Follow the path on the left upward
step
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Turn in Letter to Jin'Zil
    .accept 1058 >> Accept Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
    .isQuestTurnedIn 876
step
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .accept 1058 >> Accept Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Turn in Blood Feeders
    .target Xen'Zilla
step << skip
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Jump onto one of the cages. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLICK HERE for an example|r
step << skip
    #completewith ElderCroneTurnin
    .goto 1456/1,-48.84,-1037.94,20,0
    .goto 1456/1,-13.04,-1107.95,40 >> Take the lift up to Thunder Bluff
step << Hunter
    .goto 1442/1,360.76,451.690
    >>Click the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Accept Arachnophobia
step << Hunter
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>Kill |cRXP_ENEMY_Besseleth|r. Loot her for for her |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Clear the area around|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Be careful as she webs you|r
    >>|cRXP_WARN_This quest is optional. If you can't do it, skip this quest|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #completewith Tsunaman1
    .subzone 460 >>Travel to Sun Rock Retreat
step
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Turn in Arachnophobia
    .target Maggran Earthbinder
    .isQuestComplete 6284
step
    #label KayaLives
    .goto 1442/1,928.20,1015.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Turn in Kaya's Alive
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
    >>|cRXP_WARN_Do NOT set your|r |T134414:0|t[Hearthstone]
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .vendor >> Vendor Trash
    .target Innkeeper Jayka
    .isOnQuest 1095
step
    .goto 1442/1,925.27,885.42,5,0
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
    .vendor 4083 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r << !Warrior
    .vendor 4083 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from her if they're up|r << Warrior
    .target Jeeda
    .isOnQuest 1095
step
    #xprate <1.5
    #completewith next
    .goto 1442/1,834.44,908.21,30,0
    .goto 1442/1,856.91,874.67,30,0
    .goto 1442/1,896.46,836.57,30,0
    .goto 1442/1,940.41,831.04,30 >> Run up the path to the right
step
    #xprate <1.5
    #label Tsunaman1
    .goto 1442/1,933.09,824.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Accept Trouble in the Deeps
    .accept 6393 >>Accept Elemental War
    .target Tsunaman
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Turn in Further Instructions
    .target Ziz Fizziks
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto 1442/1,265.54,1213.00,50,0
    .goto 1442/1,299.72,1233.84,50,0
    .goto 1442/1,332.44,1218.86,50,0
    .goto 1442/1,325.11,1174.25,50,0
    .goto 1442/1,267.98,1156.34,50,0
    .goto 1442/1,262.12,1136.15,50,0
    .goto 1442/1,238.68,1122.470,50,0
    .goto 1442/1,202.54,1089.58,50,0
    .goto 1442/1,169.82,1085.03,50,0
    .goto 1442/1,134.17,1067.120,50,0
    .goto 1442/1,102.43,1077.86,50,0
    .goto 1442/1,64.83,1059.95,50,0
    .goto 1442/1,35.53,1054.090,50,0
    .goto 1442/1,2.81,1083.07,50,0
    .goto 1442/1,-23.07,1085.03,50,0
    .goto 1442/1,-63.60,1094.14,50,0
    .goto 1442/1,-100.23,1091.86,50,0
    .goto 1442/1,-160.78,1070.370,50,0
    .goto 1442/1,-197.89,1086.00,50,0
    .goto 1442/1,-212.54,1117.59,50,0
    .goto 1442/1,332.44,1218.86,0
    >>Kill |cRXP_ENEMY_XT:9|r. It patrols the southern side of the river
    >>|cRXP_WARN_Skip this step if you can't find it|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto 1442/1,-34.79,1390.46,50,0
    .goto 1442/1,-3.05,1387.86,50,0
    .goto 1442/1,36.51,1448.42,50,0
    .goto 1442/1,133.69,1450.70,50,0
    .goto 1442/1,134.17,1421.40,50,0
    .goto 1442/1,148.34,1400.23,50,0
    .goto 1442/1,99.50,1414.56,50,0
    .goto 1442/1,85.34,1398.28,50,0
    .goto 1442/1,80.46,1362.78,50,0
    .goto 1442/1,66.30,1343.57,50,0
    .goto 1442/1,23.81,1331.85,50,0
    .goto 1442/1,11.11,1299.94,50,0
    .goto 1442/1,-8.91,1302.22,50,0
    .goto 1442/1,-20.14,1322.73,50,0
    .goto 1442/1,-94.85,1302.22,50,0
    .goto 1442/1,-145.64,1400.56,50,0
    .goto 1442/1,-183.24,1333.48,50,0
    .goto 1442/1,-218.89,1337.71,50,0
    .goto 1442/1,-241.35,1433.77,50,0
    .goto 1442/1,-233.54,1501.83,50,0
    .goto 1442/1,80.46,1378.74,50,0
    .goto 1442/1,80.46,1378.74,0
    >>Kill |cRXP_ENEMY_XT:4|r. It patrols the northern side of the river
    >>|cRXP_WARN_Skip this step if you can't find it|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #xprate <1.5
    #completewith next
    .goto 1442/1,-357.09,978.55
    .subzone 2160 >> Enter the Windshear Mine
    .group
step
    #xprate <1.5
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piznik|r
    >>|cRXP_WARN_This quest takes 5 minutes, and will spawn 3 waves of Kobolds at set times:|r
    >>|cRXP_WARN_First wave at 15 seconds (3 Kobolds), Second wave at 2 minutes 15 seconds (4 Kobolds, 2 casters 2 melee), and the Third wave at 3 minutes 20 seconds (4 Kobolds). The objective completes at 5 minutes|r
    .accept 1090 >> Accept Gerenzo's Orders
    .target Piznik
    .group 2
step
    #xprate <1.5
    .goto 1442/1,-258.93,956.73
    >>Protect |cRXP_FRIENDLY_Piznik|r from incoming |cRXP_ENEMY_Windshear Vermin|r
    >>|cRXP_WARN_First wave at 15 seconds (3 Kobolds), Second wave at 2 minutes 15 seconds (4 Kobolds, 2 casters 2 melee), and the Third wave at 3 minutes 20 seconds (4 Kobolds). The objective completes at 5 minutes|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 2
step
    #xprate <1.5
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >> Turn in Gerenzo's Orders
    .accept 1092 >> Accept Gerenzo's Orders
    .target Piznik
    .group
step << skip
    #xprate <1.5
    .goto 1442/1,-261.86,951.85
    .goto 1442/1,434.5,898.12,30 >>|cRXP_WARN_Jump onto the wooden wheel. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .group
step
    #xprate <1.5
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1092 >> Turn in Gerenzo's Orders
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto 1442/1,265.54,1213.00,50,0
    .goto 1442/1,299.72,1233.84,50,0
    .goto 1442/1,332.44,1218.86,50,0
    .goto 1442/1,325.11,1174.25,50,0
    .goto 1442/1,267.98,1156.34,50,0
    .goto 1442/1,262.12,1136.15,50,0
    .goto 1442/1,238.68,1122.470,50,0
    .goto 1442/1,202.54,1089.58,50,0
    .goto 1442/1,169.82,1085.03,50,0
    .goto 1442/1,134.17,1067.120,50,0
    .goto 1442/1,102.43,1077.86,50,0
    .goto 1442/1,64.83,1059.95,50,0
    .goto 1442/1,35.53,1054.090,50,0
    .goto 1442/1,2.81,1083.07,50,0
    .goto 1442/1,-23.07,1085.03,50,0
    .goto 1442/1,-63.60,1094.14,50,0
    .goto 1442/1,-100.23,1091.86,50,0
    .goto 1442/1,-160.78,1070.370,50,0
    .goto 1442/1,-197.89,1086.00,50,0
    .goto 1442/1,-212.54,1117.59,50,0
    .goto 1442/1,332.44,1218.86,0
    >>Kill |cRXP_ENEMY_XT:9|r. It patrols the southern side of the river
    >>|cRXP_WARN_Skip this step if you can't find it|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto 1442/1,-34.79,1390.46,50,0
    .goto 1442/1,-3.05,1387.86,50,0
    .goto 1442/1,36.51,1448.42,50,0
    .goto 1442/1,133.69,1450.70,50,0
    .goto 1442/1,134.17,1421.40,50,0
    .goto 1442/1,148.34,1400.23,50,0
    .goto 1442/1,99.50,1414.56,50,0
    .goto 1442/1,85.34,1398.28,50,0
    .goto 1442/1,80.46,1362.78,50,0
    .goto 1442/1,66.30,1343.57,50,0
    .goto 1442/1,23.81,1331.85,50,0
    .goto 1442/1,11.11,1299.94,50,0
    .goto 1442/1,-8.91,1302.22,50,0
    .goto 1442/1,-20.14,1322.73,50,0
    .goto 1442/1,-94.85,1302.22,50,0
    .goto 1442/1,-145.64,1400.56,50,0
    .goto 1442/1,-183.24,1333.48,50,0
    .goto 1442/1,-218.89,1337.71,50,0
    .goto 1442/1,-241.35,1433.77,50,0
    .goto 1442/1,-233.54,1501.83,50,0
    .goto 1442/1,80.46,1378.74,50,0
    .goto 1442/1,80.46,1378.74,0
    >>Kill |cRXP_ENEMY_XT:4|r. It patrols the northern side of the river
    >>|cRXP_WARN_Skip this step if you can't find it|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
    #completewith next
    .goto 1442/1,-577.33,1532.43,30 >> Enter the Talondeep Path
step << skip
    #xprate <1.5
    .goto 1442/1,-606.63,1573.79
    .goto 1440/1,-629.73,2633.42,30 >>|cRXP_WARN_Jump onto the white stone on your right. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .zoneskip Ashenvale
step
    #xprate <1.5
	#completewith ZoramFP
    .goto 1440/1,-268.74,2612.28,50,0
    .goto 1440/1,637.2,3406.79,50,0
    .goto 1440/1,1010.31,3355.28,80 >>Travel toward the Zoram'gar Outpost
    >>|cRXP_WARN_Make sure to avoid Astranaar guards en route. Follow the waypoint for safety|r
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
    #optional
	#loop
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
    .xp 21 >> Grind to level 21
step
    #xprate <1.5
    #label ZoramFP
   .goto 1440/1,994.16,3373.730
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
   .fp Zoram'gar Outpost >> Get the Zoram'gar Outpost flight path
   .target Andruk
   .isQuestAvailable 6442
step
    #xprate <1.5
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r and |cRXP_FRIENDLY_Marukai|r
   .turnin 6562 >> Turn in Trouble in the Deeps
   .target +Je'neu Sancrea
   .goto 1440/1,1033.37,3354.89
   .accept 216 >> Accept Between a Rock and a Thistlefur
   .target +Karang Amakkar
   .goto 1440/1,1013.77,3345.67
   .accept 6462 >> Accept Troll Charm
   .target +Mitsuwa
   .goto 1440/1,1028.18,3333.37
   .accept 6442 >> Accept Naga at the Zoram Strand
   .target +Marukai
   .goto 1440/1,1025.88,3331.450
step
    #xprate <1.5
   .goto 1440/1,1004.54,3341.83
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
   >>|cRXP_WARN_This will start an escort quest. Be careful as it's difficult|r
   .accept 6641,1 >> Accept Vorsha the Lasher
   .target Muglash
step
    #xprate <1.5
    #completewith next
   >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
   .complete 6442,1 --Wrathtail Head (20)
   .mob Wrathtail Razortail
   .mob Wrathtail Wave Rider
   .mob Wrathtail Sorceress
   .mob Wrathtail Sea Witch
   .mob Wrathtail Priestess
   .mob Wrathtail Myrmidon
   .mob Lady Vespia
step
    #xprate <1.5
   .goto 1440/1,1144.67,3610.89
   >>Click the |cRXP_PICK_Brazier|r when you get there
   >>|cRXP_WARN_There will be waves of|r |cRXP_ENEMY_Naga|r |cRXP_WARN_that spawn. Be careful once|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_comes out, he hits very hard|r
   >>|cRXP_WARN_You can let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before fighting him|r
   .complete 6641,1 --Defeat Vorsha the Lasher
   .mob Vorsha the Lasher
step << Priest
    #xprate <1.5
    #season 0,1
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Find a group now for BFD if you wish to get a big wand upgrade (Gravestone Scepter). You could also wait to do BFD when you are in Ashenvale at level 26-28
    .dungeon BFD
step
    #xprate <1.5
	#loop
    .goto 1440/1,1065.09,3574.76,0
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
   >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
   .complete 6442,1 --Wrathtail Head (20)
   .mob Wrathtail Razortail
   .mob Wrathtail Wave Rider
   .mob Wrathtail Sorceress
   .mob Wrathtail Sea Witch
   .mob Wrathtail Priestess
   .mob Wrathtail Myrmidon
   .mob Lady Vespia
step
    #xprate <1.5
	#loop
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
    .xp 21+21450 >> Grind to 21450+/25200 xp
    .dungeon !BFD << Priest
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r and |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >> Turn in Vorsha the Lasher
    .target +Warsong Runner
    .goto 1440/1,995.31,3357.97
    .turnin 6442 >> Turn in Naga at the Zoram Strand
    .target +Marukai
    .goto 1440/1,1025.88,3331.450
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Accept The Essence of Aku'Mai
    .accept 6921 >> Accept Amongst The Ruins
    .accept 6565 >> Accept Allegiance to the Old Gods
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Accept The Essence of Aku'Mai
    .accept 6921 >> Accept Amongst The Ruins
    .target Je'neu Sancrea
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1414/1,915.16,4156.85,100 >> Travel to the entrance of Blackfathom Deeps
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
    #loop
    .goto 1414/1,896.76,4247.63,0
    .goto 1414/1,944.60,4174.03,20,0
    .goto 1414/1,896.76,4247.63,20,0
    .goto 1414/1,911.48,4313.87,20,0
    .goto 1414/1,874.68,4318.77,20,0
    .goto 1414/1,815.80,4250.08,20,0
    .goto 1414/1,745.88,4220.64,20,0
    .goto 1414/1,679.64,4247.63,20,0
    .goto 1414/1,896.76,4247.63,20,0
    >>Kill |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for a |T134332:0|t[|cRXP_LOOT_Damp Note|r] and use it to start the quest
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Accept Allegiance to the Old Gods
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #loop
    .goto 1414/1,749.56,4186.29,0
    .goto 1414/1,679.64,4247.63,20,0
    .goto 1414/1,745.88,4220.64,20,0
    .goto 1414/1,815.80,4250.08,20,0
    .goto 1414/1,874.68,4318.77,20,0
    .goto 1414/1,911.48,4313.87,20,0
    .goto 1414/1,896.76,4247.63,20,0
    .goto 1414/1,944.60,4174.03,20,0
    .goto 1414/1,749.56,4186.29,20,0
    >>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
    #label EnterBFD
    .goto 1414/1,742.20,4247.63
    .subzone 2797,2 >> Enter the BFD Instance portal. Zone in
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .accept 6561 >>Accept Blackfathom Villainy
    .target Argent Guard Thaelrid
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Kill |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>Loot the |cRXP_PICK_Fathom Stone|r in the water on the ground for the |cRXP_LOOT_Fathom Core|r
    >>|cRXP_WARN_Looting this will spawn|r |cRXP_ENEMY_Baron Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Kill |cRXP_ENEMY_Baron Aquanis|r. Loot him for a |T136222:0|t[|cRXP_LOOT_Strange Water Globe|r]. Use it to accept the quest
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Accept Baron Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Loot the |cRXP_PICK_Fathom Stone|r in the water on the ground for the |cRXP_LOOT_Fathom Core|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Kill |cRXP_ENEMY_Twilight Lord Kelris|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .hs >> Hearth to Thunder Bluff
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    >>|cRXP_WARN_Kill|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_first if you wish. This is the last boss of the dungeon|r
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1456/1,-224.81,-1087.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Turn in Blackfathom Villainy
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Zoram'gar >> Fly to Zoram'gar Outpost
    .target Tal
    .zoneskip Ashenvale
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Turn in Allegiance to the Old Gods
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Turn in Allegiance to the Old Gods
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Turn in The Essence of Aku'Mai
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Turn in Amongst The Ruins
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Turn in Baron Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #xprate <1.5
    .goto 1440/1,1013.77,3345.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang|r
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    #xprate >1.49
    #completewith JourneytoTM
    .goto 1442/1,1041.99,967.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharm|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Tharm
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step
    #xprate <1.5
    #completewith JourneytoTM
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .zoneskip Thunder Bluff
    .target Andruk
    .cooldown item,6948,<0
step
    #completewith JourneytoTM
    .hs >> Hearth to Thunder Bluff
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
    .cooldown item,6948,>0
step
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
step
    .goto 1456/1,-212.71,-1065.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_Wait for the RP to finish|r
    .turnin 1063 >> Turn in The Elder Crone
    .timer 6,The Elder Crone RP
    .accept 1064 >> Accept Forsaken Aid
    .target Magatha Grimtotem
step
    #label JourneytoTM
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Turn in Forsaken Aid
    .accept 1065 >> Accept Journey to Tarren Mill
    .target Apothecary Zamah
step << Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
step << !Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Warlock
    #optional
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Andruk
    .zoneskip Ashenvale,1
step << !Warlock
    #optional
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Andruk
    .zoneskip Ashenvale,1
step << Warlock
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
    .target Grunt Logmar
step << Warlock
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
    .target Grunt Dogran
step << Warlock
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Turn in Love's Gift
    .accept 1513 >>Accept The Binding
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Use|r |T133290:0|t[Dogran's Pendant] |cRXP_WARN_at the Summoning Circle|r
    .use 6626
step << Warlock
    .goto 1454/1,-4377.13,1804.77
    >>Kill the |cRXP_ENEMY_Summoned Succubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Turn in The Binding
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Train your class spells
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Train your class spells
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Buy a|r |T135640:0|t[Jambiya] |cRXP_BUY_from him if you do not have a dagger|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 921 >>Train |T133644:0|t[Pick Pocket]
    .train 8676 >>Train |T132282:0|t[Ambush]
    .train 1943 >>Train |T132302:0|t[Rupture]
    .train 1856 >>Train |T132331:0|t[Vanish]
    .train 1725 >>Train |T132289:0|t[Distract]
    .train 1785 >>Train |T132320:0|t[Stealth Rank 2]
    .accept 2460 >>Accept The Shattered Salute
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>After |cRXP_FRIENDLY_Shenthul|r does his salute, type /Salute while targeting him
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Turn in The Shattered Salute
    .accept 2458 >>Accept Deep Cover
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T134387:0|t[Flash Powder] |cRXP_BUY_from him|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Train your class spells
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Train your class spells
    .target Pephredo
    .xp <24,1
step << Mage
    .goto 1454/1,-4222.85,1474.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Thuul|r at the top of the hut
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Turn in Shadowguard
    .trainer >> Train your class spells
    .target Ur'kyo
step << Undead Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Train your class spells
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Train your class spells
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >> Enter The Barrens through the Western Exit
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >> Travel toward the Sludge Ven
step << Druid
    .goto 1413/1,-3119.64,1050.38
    >>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133443:0|t[Half Pendant of Aquatic Agility]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto 1413/1,-3021.35,1214.56
	+Target |cRXP_FRIENDLY_Taskmaster Fizzule|r, then use your |T134536:0|t[Flare Gun] TWICE and type /Salute
    >>|cRXP_WARN_Be careful! Do NOT approach him until he becomes friendly or he will attack you!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto 1413/1,-2995.0,1236.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Turn in Deep Cover
    .accept 2478 >>Accept Mission: Possible But Not Probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto 1413/1,-2930.15,1209.15
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
    .goto 1413/1,-2922.04,1224.69
    >>Run into the Rogue Tower and kill |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r and |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>At the top of the tower you'll find |cRXP_ENEMY_Gallywix|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Ambush] |cRXP_WARN_to reduce his HP to half. Use|r |T132155:0|t[Gouge] |cRXP_WARN_to restore energy and use|r |T136205:0|t[Evasion]
	>>|cRXP_WARN_Remember to use a Potion and|r |T132819:0|t[Thistle Tea] |cRXP_WARN_if needed|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Use your lock picking to open |cRXP_PICK_Gallywix's Lockbox|r & loot the |cRXP_LOOT_Mixture|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto 1413/1,-3591.86,1328.06,120 >>Travel toward the Boulder Lode Mine
step << skip --Rogue/Druid
    #hardcore
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Jump onto the wooden beam. Perform a Logout Skip by logging out and back in. Run back to Orgrimmar if you don't succeed|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Rogue/Druid
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue/Druid
    #hardcore
    #completewith flytoORG
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Enter Orgrimmar through the western entrance
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .accept 2479 >>Accept Hinott's Assistance
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T133849:0|t[Dust of Decay] |cRXP_BUY_and|r |T132793:0|t[Empty Vials] |cRXP_BUY_from him|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Train Two-Handed Axes
    .target Hanashi
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Train your class spells
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Train your class spells
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Train your class spells
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Train your class spells
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Train your pet spells
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto 1454/1,-4355.53,1520.68
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
    #optional
    #label flytoORG
step
    #optional
    .abandon 6421 >>Abandon Boulderslide Ravine
step
    #optional
    .abandon 4021 >>Abandon Counterattack!
step
    #optional
    .abandon 6481 >>Abandon Earthen Arise
step
    #optional
    .abandon 6284 >>Abandon Arachnophobia
step
    #optional
    .abandon 6641 >>Abandon Vorsha the Lasher
step
    #optional
    .abandon 6563 >>Abandon The Essence of Aku'Mai
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#xprate >1.99
#name 13-20 The Barrens
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#next 20-24 Stonetalon/Barrens


step << !Tauren
    #xprate <2.1 << !Undead
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 380
step << !Tauren
    #xprate <2.1 << !Undead
    #hardcore
    #completewith ThievesPickup
    .goto 1413/1,-2680.87,-365.05,150 >> Travel to The Crossroads
    .subzoneskip 380
step << !Tauren
    #softcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Zargh
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
step << !Tauren
    #hardcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << !Tauren
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Thork
    .maxlevel 15
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_Do NOT fly to Orgrimmar!|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Devrak
step << Undead
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .target Devrak
    .isQuestAvailable 1492
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .accept 848 >>Accept Fungal Spores
    .target Apothecary Helbrim
    .isQuestAvailable 848
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
    .xp >15,1
step << Orc Hunter/Troll Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >15,1
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Buy a|r |T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r] |cRXP_BUY_from him if it's available and stock up on arrows|r
    >>|cRXP_WARN_If it's not up, buy a|r |T135490:0|t[Reinforced Bow] |cRXP_WARN_instead|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .xp <16,1
step << Orc Warrior
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T132395:0|t[Tabar] |cRXP_BUY_from him|r
    .collect 1196,1,871,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #season 2
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy one or two|r |T135640:0|t[Jambiya] |cRXP_BUY_from him|r
    .collect 2207,1,871,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #season 2
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T133490:0|t[Mace] |cRXP_BUY_from him|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T133490:0|t[Mace] |cRXP_BUY_from him|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Tauren
    #label ThievesPickup
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
    .target Gazrog
step << !Tauren
    #xprate <2.1
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Undead
    #xprate >2.09
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << !Undead !Tauren
    #xprate >2.09
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Turn in Return to the Crossroads
    .target Zargh
step << !Undead !Tauren
    #xprate <2.1
    #softcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Zargh
step << Warlock
    #season 2
    #sticky
    #completewith BarrensEnd
    #label ExplorerImp
    >>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs until you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith BarrensEnd
    #label FelPortalRune
    >>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one summon your |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] and talk to it while next to a portal to send it on an expedition. After 10-20 minutes it will return with loot and a chance to award you with |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one close it using a |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r]. This will award you with |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
    >>|cRXP_WARN_Be on the lookout for the portals until you get the rune|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 429311,1 << Mage
    .train 431756,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith BarrensEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #completewith DisruptTheAttacks
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> Travel to the top of the mountain
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> Go inside Dreadmist Den
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>Right click the |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Make sure you have a|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_(30 minute duration) on you|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << skip
    #xprate <1.5
    #completewith DisruptTheAttacks
    .goto 1413/1,-2198.52,303.14,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2554.2,80.18,100 >> Travel down the mountain where you came from
    .isQuestComplete 924
--XX !Tauren !Undead
step << Shaman
    #sticky
    #label FireTar1
    .goto 1413/1,-2947.38,-92.1,50,0
    .goto 1413/1,-2869.35,-49.54,50,0
    .goto 1413/1,-2805.51,-111.02
    >>Kill a |cRXP_ENEMY_Razormane Water Seeker|r or |cRXP_ENEMY_Razormane Thornweaver|r. Loot them for a |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .maxlevel 15
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_If it's not up you'll get it later|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .maxlevel 15
step
    #requires FireTar1<< Shaman
    #label DisruptTheAttacks
    #loop
	.goto 1413/1,-2811.59,-42.780,25,0
	.goto 1413/1,-2875.43,-52.24,25,0
	.goto 1413/1,-2931.16,-89.40,25,0
	.goto 1413/1,-3001.08,-117.78,25,0
	.goto 1413/1,-3037.56,-164.390,25,0
	.goto 1413/1,-3034.52,-221.82,25,0
	.goto 1413/1,-2991.96,-239.39,25,0
	.goto 1413/1,-2899.75,-209.66,25,0
	.goto 1413/1,-2854.15,-151.56,25,0
	.goto 1413/1,-2799.43,-92.78,25,0
	.goto 1413/1,-2811.59,-42.780,25,0
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .maxlevel 15
step << Warrior !Undead
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Travel to the top of the mountain
step << Warrior !Undead
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
    .target Thun'grim Firegaze
step << Warrior !Undead
    .goto 1413/1,-2955.48,-188.04
    >>Loot the |cRXP_PICK_Stolen Iron Chest|r for its |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Travel to the top of the mountain
step << Warrior !Undead
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Turn in Forged Steel
    .target Thun'grim Firegaze
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Now you should be looking for a group to Ragefire Chasm
    .dungeon RFC
step
    #optional
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label PlainstriderBeaks
    #loop
    .goto 1413/1,-2819.70,-359.65,0
    .goto 1413/1,-2784.23,-163.04,80,0
    .goto 1413/1,-2771.06,-306.95,80,0
    .goto 1413/1,-2805.51,-386.00,80,0
    .goto 1413/1,-2738.63,-610.310,80,0
    .goto 1413/1,-2576.50,-610.98,80,0
    .goto 1413/1,-2494.42,-485.32,80,0
    .goto 1413/1,-2448.82,-398.84,80,0
    .goto 1413/1,-2537.99,-260.33,80,0
    .goto 1413/1,-2730.52,-273.17,80,0
    .goto 1413/1,-2819.70,-359.65,80,0
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_Check if|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_is in the Crossroads. He sells potions and|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Turn in Crossroads Conscription << Tauren Shaman
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 845 >>Accept The Zhevra
    .target Sergra Darkthorn
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Turn in Disrupt the Attacks
    .accept 872 >>Accept The Disruption Ends
    .target Thork
    .isQuestComplete 871
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Accept The Disruption Ends
    .target Thork
    .isQuestTurnedIn 871
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 867 >>Accept Harpy Raiders
    .target Darsok Swiftdagger
step << !Tauren !Undead
    #softcore
    #xprate <2.1
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,872,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
    .xp >15,1
step << Orc Hunter/Troll Hunter
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >15,1
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Buy a|r |T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r] |cRXP_BUY_from him if it's available and stock up on arrows|r
    >>|cRXP_WARN_If it's not up, buy a|r |T135490:0|t[Reinforced Bow] |cRXP_WARN_instead|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .xp <16,1
step << Tauren Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_from him|r
    .collect 2511,1,872,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equip the|r |T135613:0|t[Hunter's Boomstick]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Orc Warrior
    #optional
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T132395:0|t[Tabar] |cRXP_BUY_from him|r
    .collect 1196,1,872,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equip the|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy one or two|r |T135640:0|t[Jambiya] |cRXP_BUY_from him|r
    .collect 2207,1,872,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equip the|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T133490:0|t[Mace] |cRXP_BUY_from him|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    #completewith KreenigSnarlsnout1
    +|cRXP_WARN_Equip the|r |T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    #optional
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T133490:0|t[Mace] |cRXP_BUY_from him|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #optional
    #completewith KreenigSnarlsnout1
    +|cRXP_WARN_Equip the|r |T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .dungeon RFC
step << Tauren
    #completewith KreenigSnarlsnout1
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #completewith next
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #label KreenigSnarlsnout1
    .goto 1413/1,-3324.34,-217.09
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
    .isOnQuest 872
step << Tauren
   #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_Use the|r |T134732:0|t[Fire Sapta]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Kill the |cRXP_ENEMY_Minor Manifestation of Fire|r. Loot him for a |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Click the |cRXP_PICK_Brazier|r on the ground
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest. Wait for the respawn if it's not up
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Now you should be looking for a group to Ragefire Chasm
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Travel to Orgrimmar
    .dungeon RFC
step << Tauren
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
    .isQuestAvailable 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1411/1,-4769.10,1484.39,0
    >>Kill |cRXP_ENEMY_Burning Blade|r mobs in Skull Rock until |cRXP_LOOT_Lieutenant's Insignia|r drops
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Turn in Hidden Enemies
    .accept 5727 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Accept Slaying the Beast
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Turn in Hidden Enemies
    .accept 5728 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destroy|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_as you no longer need it|r
    .dungeon RFC
step << !Undead
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >> Enter the RFC Instance portal. Zone in
    .dungeon RFC
step << !Undead
    >>|cRXP_WARN_If possible, have party members share the following quests|r
    .accept 5722 >> Accept Searching for the Lost Satchel
    .accept 5723 >> Accept Testing an Enemy's Strength
    .dungeon RFC
step << !Undead
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Turn in Searching for the Lost Satchel
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << !Undead
    #label TroggsShamans
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    >>Kill |cRXP_ENEMY_Taragaman the Hungerer|r. Loot him for his |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << !Undead
    #label BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Bazzalan|r and |cRXP_ENEMY_Jergosh the Invoker|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << !Undead
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Turn in Slaying the Beast
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Turn in Hidden Enemies
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Turn in Hidden Enemies
    .accept 5730 >> Accept Hidden Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Turn in Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith KreenigSnarlsnout
    .hs >> Hearth to The Crossroads
    .use 6948
    .bindlocation 380
    .zoneskip The Barrens
    .dungeon RFC
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Devrak
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
    .zoneskip Thunder Bluff

    --not worth to turn in 5723/5724 w/o TB flight path

step << skip
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Thunder Bluff >>Travel South to Camp Taurajo and enter Mulgore. Travel to Thunder Bluff from there
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path << !Tauren
    .target Omusa Thunderhorn
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .target Rahauro
    .isOnQuest 5724
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .isQuestComplete 5723
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << skip
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Thunder Bluff >> Get the Thunder Bluff flight path
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >> Hearth to The Crossroads
    .use 6948
    .zoneskip Thunder Bluff,1
    .bindlocation 380
    .cooldown item,6948,>0
    .dungeon RFC
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to Crossroads
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Go to the Altar of Thorns|r. Cast |T136126:0|t[Life Tap] until you're almost dying. Then cast |T136168:0|t[Health Funnel] on your pet to die and get |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    *|cRXP_WARN_You will be revived immediately after dying|r
    .goto 1413/1,-3274.68,-191.42
    .cast 1454
    .cast 735
    .collect 208750,1
    .isOnQuest 872
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
    .isOnQuest 872
step
    #completewith next
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step << !Tauren !Undead
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5
    .goto 1413/1,-3694.2,256.52
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
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> Travel toward Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_Use the|r |T134732:0|t[Fire Sapta]
    .use 6636
step << Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Kill the |cRXP_ENEMY_Minor Manifestation of Fire|r. Loot him for a |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto 1411/1,-4022.51,-243.92
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
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
step << Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step << skip
    #completewith RatchetEnter
    >>Kill |cRXP_ENEMY_Sunscale Screechers|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>Kill |cRXP_ENEMY_Zhevra Runners|r. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> Travel to Ratchet
    .isOnQuest 845
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Accept Southsea Freebooters
    .target Gazlowe
    .maxlevel 16
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path
    .target Bragok
step
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 894 >>Accept Samophlange
    .target Sputtervalve
    .maxlevel 16
step
    .goto 1413/1,-3719.54,-919.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 895 >>Accept WANTED: Baron Longshore
    .maxlevel 16
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T132394:0|t[Bearded Axe] |cRXP_BUY_from him|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
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
    .xp <16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Shaman
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133052:0|t[Hammer] |cRXP_BUY_from him|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133052:0|t[Hammer]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the second|r |T135343:0|t[Scimitar] |cRXP_WARN_in your off-hand|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy one or two|r |T135302:0|t[Poniard] |cRXP_BUY_from him|r
    .collect 2208,1,895,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135302:0|t[Poniard]
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Turn in Chen's Empty Keg
    .accept 821 >>Accept Chen's Empty Keg
    .target Brewmaster Drohn
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Delete the|r |T133735:0|t[Control Console Operating Manual] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #completewith BaronLongshore
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith Southsea
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r
    >>|cRXP_WARN_He patrols up and down the hill|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto 1413/1,-3883.70,-1572.40,0
    .goto 1413/1,-3818.84,-1707.52,0
    .goto 1413/1,-3724.60,-1746.71,0
    .goto 1413/1,-3883.70,-1572.40,50,0
    .goto 1413/1,-3818.84,-1707.52,50,0
    .goto 1413/1,-3724.60,-1746.71,50,0
    >>Kill |cRXP_ENEMY_Baron Longshore|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He can be found in one of the camps|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
    .isOnQuest 895
step
    #label Southsea
    #loop
    .goto 1413/1,-3885.72,-1569.690,0
    .goto 1413/1,-3902.95,-1366.33,50,0
    .goto 1413/1,-3823.91,-1512.94,50,0
    .goto 1413/1,-3885.72,-1569.690,50,0
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
    .isOnQuest 887
step << Orc Rogue/Troll Rogue
    .goto 1413/1,-3832.02,-1381.87,50,0
    .goto 1413/1,-3730.68,-1364.98,50,0
    .goto 1413/1,-3677.99,-1392.00
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r
    >>|cRXP_WARN_He patrols up and down the hill|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
    .isOnQuest 1963
    .maxlevel 16
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Turn in Southsea Freebooters
    .turnin 895 >>Turn in WANTED: Baron Longshore
    .accept 890 >>Accept The Missing Shipment
    .target Gazlowe
    .isQuestComplete 887
    .isQuestComplete 895
step
    #optional
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 890 >>Accept The Missing Shipment
    .target Gazlowe
    .isQuestTurnedIn 887
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
    .target Wharfmaster Dizzywig
    .isQuestTurnedIn 887
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .accept 896 >>Accept Miner's Fortune
    .target Wharfmaster Dizzywig
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Turn in The Missing Shipment
    .accept 888 >>Accept Stolen Booty
    .target Gazlowe
    .isQuestTurnedIn 887
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135353:0|t[Espadon] |cRXP_BUY_from him|r
    .collect 2024,1,850,1 --Collect Espadon (1)
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133052:0|t[Hammer] |cRXP_BUY_from him|r
    .collect 2028,1,850,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T133052:0|t[Hammer]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith FlyToXroads1
    |cRXP_WARN_+Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy one or two|r |T135302:0|t[Poniard] |cRXP_BUY_from him|r
    .collect 2208,1,850,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135302:0|t[Poniard]
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2977.78,-942.71,0
    .goto 1413/1,-2274.52,-870.42,0
    .goto 1413/1,-2977.78,-942.71,80,0
    .goto 1413/1,-2832.87,-990.01,80,0
    .goto 1413/1,-2710.26,-959.6,80,0
    .goto 1413/1,-2392.07,-900.83,80,0
    .goto 1413/1,-2274.52,-870.42,80,0
    >>Finish killing |cRXP_ENEMY_Zhevras|r. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
    .target Thork
    .isQuestComplete 5041
    .isQuestComplete 872
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Sergra|r
    .turnin 872 >>Turn in The Disruption Ends
    .target Thork
    .isQuestComplete 5041
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .target Thork
    .isQuestComplete 5041
step
    #optional
    #completewith RegtharDeathgate1
    .abandon 871 >>Abandon Disrupt the Attacks
    .abandon 5041 >>Abandon Supplies for the Crossroads
step
    #label XroadsTurnins3
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Turn in The Zhevra
    .accept 903 >>Accept Prowlers of the Barrens
    .target Sergra Darkthorn
step << skip
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Buy a|r |T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r] |cRXP_BUY_from him if it's available and stock up on arrows|r
    >>|cRXP_WARN_If it's not up, buy a|r |T135490:0|t[Reinforced Bow] |cRXP_WARN_instead|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
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
    .maxlevel 16
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .accept 855 >>Accept Centaur Bracers
    .target Regthar Deathgate
step
    #xprate >2.09
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
step
    #xprate <2.1
    #completewith KodobaneTurnin
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for their |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #completewith Barak
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto 1413/1,-1909.72,113.96
    >>Loot the |cRXP_PICK_Abandoned Snapjaw Nest|r on the ground for |T294479:0|t[|cRXP_LOOT_Abandoned Snapjaw Egg|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto 1413/1,-1943.16,89.64
    >>Dive underwater to the |cRXP_PICK_Bubbling Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Kill |cRXP_ENEMY_Barak Kodobane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Barak Kodobane|r's melee hits deal a LOT of damage and he is protected by a |cRXP_ENEMY_Kolkar Wrangler|r. They can net you and shoot at you from ranged distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #completewith KodobaneTurnin
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate >2.09
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Kill |cRXP_ENEMY_Savannah Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
step
    #xprate <2.1
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #xprate >2.09
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate >2.09
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .target Regthar Deathgate
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Kill |cRXP_ENEMY_Savannah Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #xprate <2.1
    #loop
    .goto 1413/1,-1616.87,611.90,0
    .goto 1413/1,-1583.43,322.73,60,0
    .goto 1413/1,-1513.51,380.84,60,0
    .goto 1413/1,-1526.68,477.450,60,0
    .goto 1413/1,-1555.06,545.69,60,0
    .goto 1413/1,-1553.03,615.95,60,0
    .goto 1413/1,-1616.87,611.90,60,0
    >>Kill |cRXP_ENEMY_Witchwing Harpies|r and |cRXP_ENEMY_Witchwing Roguefeathers|r. Loot them for their |cRXP_LOOT_Talons|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Follow the path on the left upward
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Jump onto one of the cages. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith RFCPickups
    .goto 1456/1,-13.04,-1107.95,40 >> Take the lift up to Thunder Bluff
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith Samophlange
    .hs >> Hearth to The Crossroads
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << skip --!Tauren
    #completewith Samophlange
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to The Crossroads
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Abandon Testing an Enemy's Strength
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Abandon The Power to Destroy...
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Abandon Hidden Enemies
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Abandon Slaying the Beast
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
    .target Tonga Runetotem
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r doesn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r didn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    +|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_in the area. They are up to level 18 and can|r |T132152:0|t[Thrash]
    .dungeon RFC
    .xp >17,1
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #xprate <2.1
    #completewith Samophlange
    +|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_in the area. They are up to level 18 and can|r |T132152:0|t[Thrash]
    --.dungeon !RFC
    .xp >17,1
step
    #xprate >2.09
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate >2.09
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
    .target Tonga Runetotem
step
    #xprate >2.09
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r doesn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #xprate >2.09
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r didn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #xprate >2.09
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #optional
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
    .target Sergra Darkthorn
    .xp <20,1
step
    #optional
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .xp <20,1
step
    #optional
    .maxlevel 19,NorthBarrensSkip
step
    #xprate <2.1
    #completewith Samophlange
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    --.dungeon !RFC
step
    #xprate >2.09
    #completewith Samophlange
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r |cRXP_WARN_sells|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>> Vendor trash and repair
    .target Vrang Wildgore
    --.dungeon !RFC
step
    #xprate >2.09
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Click on the |cRXP_PICK_Control Console|r
    .turnin 894 >>Turn in Samophlange
    .accept 900 >>Accept Samophlange
step
    .goto 1413/1,-2679.86,830.80
    >>Click the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_Be careful! Two mobs will spawn after you shut off the Valve|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
    .isOnQuest 900
step
    .goto 1413/1,-2675.80,842.290
    >>Click the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_One mob will spawn after you shut off the Valve|r
    .complete 900,3 --Shut off Regulator Valve (1)
    .isOnQuest 900
step
    .goto 1413/1,-2686.95,842.290
    >>Click the |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
    .isOnQuest 900
step
    .goto 1413/1,-2686.95,825.40
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 900 >>Turn in Samophlange
    .accept 901 >>Accept Samophlange
    .isQuestComplete 900
step
    #optional
    .goto 1413/1,-2686.95,825.40
    >>Click the |cRXP_PICK_Control Console|r
    .accept 901 >>Accept Samophlange
    .isQuestTurnedIn 900
step
    .goto 1413/1,-2731.54,909.850
    >>Kill |cRXP_ENEMY_Tinkerer Sniggles|r in the building. Loot him for his |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
    .isQuestTurnedIn 900
step
    .goto 1413/1,-2686.95,825.40
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 901 >>Turn in Samophlange
    .accept 902 >>Accept Samophlange
    .isQuestTurnedIn 900
step
    #completewith Ignition
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-1693.88,592.31,90,0
    >>Kill |cRXP_ENEMY_Raptors|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto 1413/1,-3102.42,1105.78
    .xp 16>> Grind to level 16
step
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
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
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Kill |cRXP_ENEMY_Supervisor Lugwizzle|r. Loot him for his |cRXP_LOOT_Key|r
    >>|cRXP_WARN_He patrols up and down the platform|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_This will begin an escort. Make sure you're at full health|r
    .turnin 858 >>Turn in Ignition
    .accept 863,1 >>Accept The Escape
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_This will begin an escort. Make sure you're at full health|r
    .accept 863,1 >>Accept The Escape
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
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
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r and |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for |cRXP_LOOT_Cats Eye Emerald|r
    >>|cRXP_WARN_If it hasn't dropped after 25+ mobs, feel free to skip this quest|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for their |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for their |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]
    >>|cRXP_WARN_You could also buy them from the auction house instead|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Jump onto the wooden beam. Perform a Logout Skip by logging out and back in. Run back to Orgrimmar if you don't succeed|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .zoneskip Orgrimmar
step
    #completewith SpiritsPickup
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Enter Orgrimmar through the western entrance
step
    #optional
    #label NorthBarrensSkip
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Create|r |T133685:0|t[Linen Bandages] |cRXP_WARN_until your skill is 40 or higher|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
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
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[Linen Cloth] |cRXP_WARN_to reach 50 skill|r
    .train 3274 >> Train Journeyman First Aid
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith next
    +|cRXP_WARN_Make sure you don't sell your|r |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]!
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Train your class spells
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 527 >> Train |T135894:0|t[Dispel Magic]
    >>|cRXP_WARN_You will need|r |T135894:0|t[Dispel Magic] |cRXP_WARN_to obtain a rune later|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Train your class spells
    .target Ur'kyo
    .xp <18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Train your class spells
    .target Pephredo
    .xp <18,1
step << !Tauren !Undead
    #xprate <2.1
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
    .isQuestAvailable 4921
step << Shaman
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Make sure you have trained|r |T136075:0|t[Purge] |cRXP_WARN_as it will be needed to obtain a rune later|r
    .train 8019 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Make sure you have trained|r |T136075:0|t[Purge] |cRXP_WARN_as it will be needed to obtain a rune later|r
    .train 913 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Make sure you have trained|r |T136075:0|t[Purge] |cRXP_WARN_as it will be needed to obtain a rune later|r
    .train 8019 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Make sure you have trained|r |T136075:0|t[Purge] |cRXP_WARN_as it will be needed to obtain a rune later|r
    .train 913 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
step
    #xprate <2.1
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Accept The Spirits of Stonetalon
    .target Zor Lonetree
step << Shaman/Hunter
    #season 2
    .goto 1454/1,-4226.54,1914.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor Lonetree|r
    .train 409580 >>|cRXP_WARN_Buy and use the|r |T133739:0|t|cRXP_LOOT_[Treatise on the Heart of the Lion]|r |cRXP_WARN_to learn|r |T132185:0|t[Heart of the Lion] << Hunter
    .train 425336 >>|cRXP_WARN_Buy and use the|r |T133747:0|t|cRXP_LOOT_[Revelation of Shamanistic Rage]|r |cRXP_WARN_to learn|r |T136088:0|t[Shamanistic Rage] << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .money <0.5
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .accept 2379 >> Accept Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Turn in The Shattered Hand
    .accept 1858 >> Accept The Shattered Hand
    .target Therzok
    .isQuestComplete 1963
step << Orc Rogue/Troll Rogue
    #optional
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .accept 1858 >> Accept The Shattered Hand
    .target Therzok
    .isQuestTurnedIn 1963
step << Rogue
    .goto 1454/1,-4279.79,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Turn in Zando'zan
    .accept 2382 >>Accept Wrenix of Ratchet
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto 1454/1,-4271.1,1810.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy a|r |T134065:0|t[Thieves' Tools] |cRXP_BUY_from him|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1773.24
    >>|cRXP_WARN_Use|r |T136058:0|t[Pick Lock] |cRXP_WARN_to open|r |T133626:0|t[Tazan's Satchel]
    .complete 1858,1 --Tazan's Logbook (1)
    .itemcount 5060,1
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4437.87,1637.33
    >>|cRXP_WARN_Use|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_in the Inn. Use his key to open|r |T133626:0|t[Tazan's Satchel]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Turn in The Shattered Hand
    .target Therzok
    .isQuestTurnedIn 1963
step << Rogue
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Buy one or two|r |T135342:0|t[Kris] |cRXP_BUY_from him|r
    .collect 2209,1,881,1 --Collect Kris (1)
    .money <0.7115
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .target Kareth
step << Orc Rogue/Troll Rogue
    #optional
    #completewith FoodandWater2
    .abandon 1963 >> Abandon The Shattered Hand
step << Rogue
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp <19,1
step << Rogue
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135342:0|t[Kris] once you are level 19
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp >19,1
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Train your class spells
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Train your class spells
    .target Mirket
    .xp <18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Sacrifice]
    .collect 16351,1,881,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Firebolt (Rank 3)]
    .collect 16316,1,881,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Train your class spells
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Train your class spells
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Train your class spells
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Train your class spells
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Train your pet spells
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Train Staves
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Train Bows
    .target Hanashi
step << Tauren Warrior/Undead Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Train Two-Handed Axes
    .train 227 >>Train Staves
    .target Hanashi
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135490:0|t[Reinforced Bow] |cRXP_BUY_from him|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
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
step << Warrior
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe] |cRXP_WARN_when you are level 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid
    #season 2
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Buy a|r |T134237:0|t[Kolkar Booty Key] |cRXP_BUY_from the Auction House if possible|r
    >>|cRXP_WARN_You will need this to obtain|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_for|r |T236167:0|t[Savage Roar] << Druid
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
step
    #optional
    #label SpiritsPickup
step
    #completewith FoodandWater2
    .hs >> Hearth to The Crossroads
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater2
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Fly to The Crossroads
    .target Doras
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
    .target Gazrog
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
step << !Tauren !Undead
    #xprate <2.1
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Turn in Return to the Crossroads
    .target Zargh
    .isOnQuest 6386
step
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r doesn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r didn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-3031.48,461.91
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destroy|r |T134227:0|t[Horn of Echeyakee] |cRXP_WARN_as you no longer need it|r
step << Warrior
    #season 2
    .goto 1413/1,-2673.78,-487.34,
    .aura 420667 >>Click the |cRXP_PICK_Horde Warbanner|r
    .train 403489,1
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
    .target Mankrik
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Fly to Ratchet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Turn in Wrenix of Ratchet
    .accept 2381 >>Accept Plundering the Plunderers
    .target Wrenix the Wretched
step << Rogue
    .goto 1413/1,-3773.24,-841.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix's Gizmotronic Apparatus|r
    >>|cRXP_WARN_Obtain an|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_and a|r |T134065:0|t[Thieves' Tools]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Turn in Samophlange
    .turnin 863 >>Turn in The Escape
    .target Sputtervalve
    .isQuestComplete 863
    .isOnQuest 902
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Turn in Samophlange
    .target Sputtervalve
    .isOnQuest 902
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >>Turn in The Escape
    .target Sputtervalve
    .isQuestComplete 863
step
    #xprate <2.1
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 3921 >>Accept Wenikee Boltbucket << Hunter
    .accept 1483 >>Accept Ziz Fizziks
    .target Sputtervalve
    .isQuestTurnedIn 902 << Hunter
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzywig|r
    .turnin 896 >>Turn in Miner's Fortune
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
step
    #xprate <2.1
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Accept Raptor Horns
    .accept 1069 >>Accept Deepmoss Spider Eggs
    .target Mebok Mizzyrix
step
    #xprate >2.09
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Accept Raptor Horns
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto 1413/1,-3737.78,-971.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Buy a|r |T135129:0|t[Fishing Harpoon] |cRXP_BUY_from him|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto 1413/1,-3914.10,-1044.06
    .use 208773 >>Use the |T135129:0|t[Fishing Harpoon] on |cRXP_ENEMY_Bruuz|r and kill him. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] << Warrior
    >>|cRXP_WARN_He patrols around the sunken boat in the water|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] |cRXP_WARN_to train|r |T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step
    #sticky
    #completewith LeaveRatchet
    #season 2
    .goto 1413/1,-3639.48,-1049.46
    >>|cRXP_WARN_If you have |cRXP_LOOT_3 gold|r to spare you can buy a rune from|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in the Ratchet inn. Judge for yourself if you can afford it and if the rune is useful for your class. You can always buy it later|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
    .train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
    .train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
    .train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
    .train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
    .train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
    #season 0
	#completewith SSTreasure
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70|r
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70|r
    .train 424984,3 --Saber slash rune already learned, no need to get 80 LP
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 80|r
    .train 424984,1 --Saber slash rune not learned yet, need to get 80 LP
step << Rogue
    #label SSTreasure
    .goto 1413/1,-3958.68,-1457.54
    >>Once your lockpicking is 70, go to the bottom floor of the ship and open |cRXP_PICK_The Jewel of the Southsea|r
    >>|cRXP_WARN_Use the|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_on|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto 1413/1,-3819.86,-1714.95
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,2 --Telescopic Lens (1)
    .isOnQuest 888
step
    .goto 1413/1,-3723.59,-1741.30
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,1 --Shipment of Boots (1)
    .isOnQuest 888
step << Warrior/Rogue
    #season 2
    #completewith EndlessRageRune << Warrior
    #completewith SaberSlashRune << Rogue
    .subzone 385 >>Travel to Northwatch Hold
step << Warrior
    #season 2
    .goto 1413/1,-3715.48,-2191.94
    >>Click the |cRXP_PICK_Alliance Warbanner|r
    >>Kill |cRXP_ENEMY_Lieutenant Stonebrew|r as he spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    #label EndlessRageRune
    .train 403489 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
step << Rogue
    #season 2
    .goto 1413/1,-3691.16,-2050.74
    >>Loot the |cRXP_PICK_Stable Hand's Trunk|r on top of the stable for |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_Run upward the hill and jump on top of the castle wall. From there you can jump on top of the stable|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    #label SaberSlashRune
    .train 424984 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r] |cRXP_WARN_to train|r |T132375:0|t[Saber Slash]
    .use 208772
    .itemcount 208772,1
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
    .goto 1413/1,-3192.60,-1919.67,60,0
    .goto 1413/1,-3258.47,-2027.09
    >>Loot the |cRXP_PICK_Stolen Silver|r on the ground
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>Click the |cRXP_PICK_Bubbling Fissure|r underwater
    .complete 877,1 --Test the Dried Seeds (1)
step << Druid
    #xprate <2.1
    #season 2
    #completewith Verog
    >>Kill |cRXP_ENEMY_Kolkar|r. Loot them for a |T134237:0|t[|cRXP_LOOT_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #xprate <2.1
    #completewith next
    #loop
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    .goto 1413/1,-3031.48,-1480.51,50,0
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <2.1
    .goto 1413/1,-2742.68,-1208.23
    >>Kill |cRXP_ENEMY_Verog|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He has a chance of spawning every time a |cRXP_ENEMY_Kolkar|r is killed|r
    >>|cRXP_WARN_On a highly populated server or fresh launch, your best option is camping his spawnpoint|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #optional
    #label Verog
step << Druid
    #season 2
    #loop
    .goto 1413/1,-3031.48,-1480.51,0
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Kill |cRXP_ENEMY_Kolkar|r. Loot them for a |T134237:0|t[|cRXP_LOOT_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    .goto 1413/1,-2717.35,-1211.61
    >>Open a |cRXP_PICK_Kolkar Booty|r chest for |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >> |cRXP_WARN_Equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_Once you've learned|r |T132115:0|t[Cat Form]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_Deal 20 instances of bleeding damage from|r |T132152:0|t[Rip] |cRXP_WARN_or|r |T132122:0|t[Rake] |cRXP_WARN_to humanoids, then use the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_again to learn|r |T236167:0|t[Savage Roar]
    .use 208689
    .itemcount 208689,1
step
    #loop
    .goto 1413/1,-3023.38,-1234.58,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    .goto 1413/1,-3000.07,-1208.23,30,0
    .goto 1413/1,-2959.54,-1196.75,30,0
    .goto 1413/1,-2953.46,-1241.34,30,0
    .goto 1413/1,-2977.78,-1304.17,30,0
    .goto 1413/1,-3029.46,-1324.44,30,0
    .goto 1413/1,-3066.95,-1311.61,30,0
    .goto 1413/1,-3059.86,-1264.31,30,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani1
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto 1413/1,-2707.22,-1502.130
    >>Click the |cRXP_PICK_Blue Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-2692.02,-1533.89
    >>Click the |cRXP_PICK_Red Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto 1413/1,-2648.44,-1527.13
    >>Click the |cRXP_PICK_Yellow Raptor Nest|r. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto 1413/1,-2375.86,-1787.24
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
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step if you can't find him|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTArrive
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r. This does not have to be completed now
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_You need to have learned|r |T135813:0|t[Immolation Trap] |cRXP_WARN_or any other trap to be able to obtain this rune|r
step << Hunter
    #season 2
    #loop
    .goto 1413/1,-1746.58,-2263.56,0
    .goto 1413/1,-1896.55,-2137.89,40,0
    .goto 1413/1,-1840.82,-2184.510,40,0
    .goto 1413/1,-1746.58,-2263.56,40,0
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Use |T135813:0|t[Immolation Trap] on the patrol path of the |cRXP_ENEMY_Patrolling Cheetah|r to remove his buff
    >>Kill him and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] |cRXP_WARN_to train|r |T132270:0|t[Beast Mastery]
    .use 208701
    .itemcount 208701,1
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >> Travel to Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto 1413/1,-1995.86,-2376.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
    .home >>Set your Hearthstone to Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Turn in Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Accept Tribes at War
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path << !Tauren
    .fly Crossroads >>Fly to The Crossroads
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Turn in Lost in Battle
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>Turn in The Stagnant Oasis
    .accept 880 >>Accept Altered Beings
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>Turn in The Angry Scytheclaws
    .accept 3261 >>Accept Jorn Skyseer
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>Turn in Stolen Silver
    .goto 1413/1,-2639.32,-436.00
    .target +Gazrog
step
    .destroy 5165 >>|cRXP_WARN_Delete any leftover|r |T132914:0|t[Sunscale Feathers] |cRXP_WARN_you may still have|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok

    --Warlock skips Herog/Counterattack below for 150% route. Will do it later otwt Stonetalon for class q into logout skip to TB

step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Turn in Verog the Dervish
    .accept 852 >>Accept Hezrul Bloodmark
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Turn in Verog the Dervish
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    #label Leaders
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #xprate <2.1
    #completewith Hezrul
    .subzone 387 >> Travel to the Lushwater Oasis
    .isQuestTurnedIn 851
step
    #xprate <2.1
    #completewith Hezrul
    >>Kill |cRXP_ENEMY_Oasis Snapjaws|r as you're looking for |cRXP_ENEMY_Hezrul Bloodmark|r. Loot them for their |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #xprate <2.1
    #completewith next
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <2.1
    #loop
    #label Hezrul
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    >>Find & kill |cRXP_ENEMY_Hezrul Bloodmark|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrols around the lake|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #xprate <2.1
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    >>Kill |cRXP_ENEMY_Kolkar|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_Feel free to skip this quest if you haven't had many drops yet so far|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto 1413/1,-2273.51,-1106.89
    >>Open the |cRXP_PICK_Empty Snapjaw Nest|r on the ground for |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] |cRXP_WARN_to train|r |T132131:0|t[Lacerate]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #xprate <2.1
    #optional
    #completewith CounterattackComplete
    .abandon 855 >> Abandon Centaur Bracers as you have not looted enough previously to make it worthwhile to finish
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith CounterattackComplete
    +|cRXP_WARN_This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located|r
    +|cRXP_WARN_Skip it if you can't do this quest. You will have another opportunity to complete it at higher level|r
    .isQuestTurnedIn 852
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Accept Counterattack!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    #label CounterattackComplete
    .goto 1413/1,-1884.39,-289.38
    >>Kill |cRXP_ENEMY_Warlord Krom'zar|r once he appears. Loot the |cRXP_PICK_Banner|r that he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith StonetalonPickups
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
    #loop
    .goto 1413/1,-1458.79,565.96,0
    .goto 1413/1,-1458.79,565.96,40,0
    .goto 1413/1,-1379.75,620.68,40,0
    .goto 1413/1,-1376.71,717.97,40,0
    .goto 1413/1,-1323.0,747.7,40,0
    .goto 1413/1,-1245.99,763.91,40,0
    .goto 1413/1,-1223.7,699.05,40,0
    .goto 1413/1,-1290.58,670.0,40,0
    .goto 1413/1,-1245.99,624.74,40,0
    .goto 1413/1,-1241.94,559.2,40,0
    .goto 1413/1,-1155.8,553.12,40,0
    .goto 1413/1,-1150.74,513.93,40,0
    .goto 1413/1,-1194.31,508.53,40,0
    .goto 1413/1,-1263.22,458.53,40,0
    .goto 1413/1,-1311.86,415.97,40,0
    .goto 1413/1,-1366.58,449.75,40,0
    .goto 1413/1,-1417.24,486.91,40,0
    .goto 1413/1,-1445.62,532.85,40,0
    >>Kill |cRXP_ENEMY_Witchwing Slayers|r. Loot them for their |cRXP_LOOT_Rings|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Witchwing Slayers|r cast|r |T135358:0|t[Execute] |cRXP_WARN_(deals a LOT of damage when you're at <20% health), and |cRXP_ENEMY_Witchwing Ambushers|r are|r |T132320:0|t[Stealthed] |cRXP_WARN_and patrol around|r
    >>|cRXP_WARN_Watch out for|r |cRXP_ENEMY_Witchwing Ambushers|r|cRXP_WARN_. They are stealthed and patrol in the area|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
    .isOnQuest 875
step
    #xprate <2.1
    #label BarrensEnd
    #completewith next
    .goto 1413/1,-950.10,-271.14,30 >> Travel toward |cRXP_FRIENDLY_Seereth|r
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .accept 6548 >> Accept Avenge My Village
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .maxlevel 20
step
    #xprate <2.1
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto 1413/1,-950.10,-271.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .target Seereth Stonebreak

    ]])

RXPGuides.RegisterGuide([[
#forever
#xprate >1.99
<< Horde
#name 20-24 Stonetalon/Barrens
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#next 24-26 Southern Barrens << !Rogue !Shaman
#next 23-24 Hillsbrad Class Quests << Rogue/Shaman


step << Druid
    #xprate <2.1
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Grimtotem Taurens|r. Loot them for the |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
step
    #xprate <2.1
    #optional
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Ruffians|r and |cRXP_ENEMY_Grimtotem Mercenaries|r in the area
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #xprate <2.1
    #season 2
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Kill |cRXP_ENEMY_Grimtotems|r. Loot them for the |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    .equip 18,210534 >> |cRXP_WARN_Equip the|r |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    >>|cRXP_WARN_Cast|r |T136085:0|t[Regrowth] |cRXP_WARN_or|r |T136041:0|t[Healing Touch] |cRXP_WARN_on 10 different friendly Beasts such as Hunter Pets/Druids in Bear Form/Shamans in Ghost Wolf|r
    .train 410021 >> |cRXP_WARN_Use the|r |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r] |cRXP_WARN_to train|r |T132143:0|t[Wild Strikes]
    .itemcount 210534,1
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #xprate <2.1
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #completewith next
    .goto 1442/1,-460.13,67.77,30 >>Travel up the path to the bonfire
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto 1442/1,-350.74,112.06
    >>Kill |cRXP_ENEMY_Grundig Darkcloud|r and |cRXP_ENEMY_Grimtotem Brutes|r
    >>|cRXP_WARN_Make sure you kill all six|r |cRXP_ENEMY_Grimtotem Brutes|r |cRXP_WARN_before starting the quest inside|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto 1442/1,-342.44,129.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Accept Protect Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto 1442/1,-261.38,90.57,40,0
    .goto 1442/1,-261.86,-7.12,40,0
    .goto 1442/1,-501.15,-41.64
    >>Escort |cRXP_FRIENDLY_Kaya|r and stay close to her
    >>|cRXP_WARN_Be careful! Three|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn when you reach the bonfire in Camp Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .target Makaba Flathoof
    .isQuestComplete 6523
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .target Makaba Flathoof
    .isQuestComplete 6523
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .target Makaba Flathoof
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .accept 6401 >>Accept Kaya's Alive
    .target Makaba Flathoof
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Follow the path on the left upward
step
    #xprate <2.1
    #label BloodFeedersPickup
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Accept Blood Feeders
    .target Xen'Zilla
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,-103.64,40.10,100,0
    .goto 1442/1,74.11,185.32,100,0
    .goto 1442/1,244.05,262.50,100,0
    >>Kill every |cRXP_ENEMY_Deepmoss Creeper|r you see
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <2.1
    .goto 1442/1,360.76,451.690
    >>Click the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Accept Arachnophobia
step
    #xprate <2.1
    #completewith Besseleth1
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r and |cRXP_ENEMY_Deepmoss Creepers|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
step
    #xprate <2.1
    #completewith next
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step
    #xprate <2.1
    #label Besseleth1
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>Kill |cRXP_ENEMY_Besseleth|r. Loot her for for her |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Clear the area around|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Be careful as she webs you. Keep her permanently feared with dots|r << Warlock
    >>|cRXP_WARN_This quest is hard. Skip it needed|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #xprate <2.1
    .goto 1442/1,-44.56,84.05,80,0
    .goto 1442/1,245.51,255.01,80,0
    .goto 1442/1,392.01,445.17,40,0
    .goto 1442/1,560.49,440.94
    >>Kill |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,735.8,925.8,50,0
    .goto 1442/1,806.12,929.05
    .subzone 460 >>Travel to Sun Rock Retreat
step
    #xprate <2.1
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isOnQuest 1483
step
    #xprate <2.1
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from her if they're up|r << Warrior
    .target Jeeda
    .isOnQuest 1483
step
    #xprate <2.1
    #label KayaLives
    .goto 1442/1,928.20,1015.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Turn in Kaya's Alive
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Turn in Arachnophobia
    .target Maggran Earthbinder
    .isQuestComplete 6284
step
    #xprate <2.1
    #label SRRFP
    .goto 1442/1,1041.99,967.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Get the Sun Rock Retreat flight path
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,365.16,878.250,15 >> Travel toward |cRXP_FRIENDLY_Ziz|r
step
    #xprate <2.1
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >> Turn in Ziz Fizziks
    .accept 1093 >> Accept Super Reaper 6000
    .target Ziz Fizziks
step
    #xprate <2.1
    #completewith Windshear
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #xprate <2.1
    #loop
    .goto 1442/1,352.46,912.44,0
    .goto 1442/1,352.46,912.44,50,0
    .goto 1442/1,297.77,959.660,50,0
    .goto 1442/1,250.40,990.59,50,0
    .goto 1442/1,259.68,1032.93,50,0
    .goto 1442/1,246.98,1068.09,50,0
    .goto 1442/1,207.91,1010.13,50,0
    .goto 1442/1,163.47,962.27,50,0
    .goto 1442/1,86.81,961.94,50,0
    .goto 1442/1,181.05,907.89,50,0
    .goto 1442/1,193.75,867.83,50,0
    .goto 1442/1,194.73,827.78,50,0
    .goto 1442/1,225.49,765.26,50,0
    .goto 1442/1,281.16,763.63,50,0
    .goto 1442/1,268.95,832.99,50,0
    .goto 1442/1,303.63,858.39,50,0
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
    .xp <20,1
step << Undead Warrior
    #xprate <2.1
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veenix|r
    .vendor >>|cRXP_BUY_Buy an|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him|r
    >>|cRXP_WARN_If it's not up, buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_instead|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135329:0|t[Executioner's Sword]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
    .xp <21,1
step << Shaman
    #xprate <2.1
    #season 0
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #xprate <2.1
    #season 0
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #xprate <2.1
    #season 2
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T133476:0|t[Flail] |cRXP_BUY_from him|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #xprate <2.1
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T133476:0|t[Flail]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Rogue
    #xprate <2.1
    #season 0
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #xprate <2.1
    #season 0
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #xprate <2.1
    #season 2
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy one or two|r |T135342:0|t[Kris] |cRXP_BUY_from him|r
    .collect 2209,1,899,1 --Collect Kris (1)
    .money <0.7115
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
step << Rogue
    #xprate <2.1
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp <19,1
step
    #xprate <2.1
    #label Windshear
    .subzone 461 >> Travel to Windshear Crag
    .isOnQuest 1093
step
    #xprate <2.1
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <2.1
    #label BluePrints
    #loop
    .goto 1442/1,179.10,1168.06,0
    .goto 1442/1,179.10,1168.06,100,0
    .goto 1442/1,232.82,1239.70,100,0
    .goto 1442/1,-16.23,1441.59,100,0
    .goto 1442/1,-255.52,1291.80,100,0
    .goto 1442/1,-382.48,1135.50,100,0
    >>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for their |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #xprate <2.1
    #loop
    .goto 1442/1,242.58,1121.82,0
    .goto 1442/1,242.58,1121.82,50,0
    .goto 1442/1,292.39,1122.470,50,0
    .goto 1442/1,325.6,1168.39,50,0
    .goto 1442/1,338.79,1206.48,50,0
    .goto 1442/1,276.77,1248.49,50,0
    .goto 1442/1,215.24,1145.59,50,0
    .goto 1442/1,187.40,1114.33,50,0
    .goto 1442/1,138.57,1144.62,50,0
    .goto 1442/1,51.16,1153.41,50,0
    .goto 1442/1,-17.70,1128.33,50,0
    .goto 1442/1,-106.09,1157.31,50,0
    .goto 1442/1,-165.66,1173.60,50,0
    .goto 1442/1,-189.10,1079.82,50,0
    .goto 1442/1,-69.95,1061.91,50,0
    .goto 1442/1,10.63,1072.33,50,0
    .goto 1442/1,57.51,1056.05,50,0
    .goto 1442/1,107.32,1040.09,50,0
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <2.1
    #loop
    .goto 1442/1,246.98,1068.09,0
    .goto 1442/1,352.46,912.44,30,0
    .goto 1442/1,297.77,959.660,30,0
    .goto 1442/1,250.40,990.59,30,0
    .goto 1442/1,259.68,1032.93,30,0
    .goto 1442/1,246.98,1068.09,30,0
    .goto 1442/1,207.91,1010.13,30,0
    .goto 1442/1,163.47,962.27,30,0
    .goto 1442/1,86.81,961.94,30,0
    .goto 1442/1,181.05,907.89,30,0
    .goto 1442/1,193.75,867.83,30,0
    .goto 1442/1,194.73,827.78,30,0
    .goto 1442/1,225.49,765.26,30,0
    .goto 1442/1,281.16,763.63,30,0
    .goto 1442/1,268.95,832.99,30,0
    .goto 1442/1,303.63,858.39,30,0
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #optional
    #xprate <2.1
	#completewith next
	+|cRXP_WARN_If you have over 15 |cRXP_LOOT_Deepmoss Eggs|r|cRXP_WARN_, split the stack of any extras (shift click), then delete them|r
step
    #xprate <2.1
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
    .target Ziz Fizziks
step
    #xprate <2.1
    #loop
    .goto 1442/1,362.71,539.28,0
    .goto 1442/1,275.30,577.38,80,0
    .goto 1442/1,362.71,539.28,80,0
    .goto 1442/1,298.25,432.80,80,0
    .goto 1442/1,244.05,262.50,80,0
    .goto 1442/1,74.11,185.32,80,0
    .goto 1442/1,-103.64,40.10,80,0
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
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Train your class spells
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #optional
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Train your class spells
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Train your class spells
    .target Loganaar
    .xp <22,1
step
    #completewith JornSkyseerTurnin
    .hs >> Hearth to Camp Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
    .cooldown item,6948,<0
step
    #label JornSkyseerTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Turn in Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
    .target Jorn Skyseer
step << Warlock
    #season 2
    #sticky
    #completewith CounterattackTurnin3
    #label ExplorerImp
    >>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs until you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith CounterattackTurnin3
    #label FelPortalRune
    >>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one summon your |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] and talk to it while next to a portal to send it on an expedition. After 10-20 minutes it will return with loot and a chance to award you with |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one close it using a |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r]. This will award you with |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
    >>|cRXP_WARN_Be on the lookout for the portals until you get the rune|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 429311,1 << Mage
    .train 431756,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith CounterattackTurnin3
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
	#completewith LakotaMani2
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r. Save the |T134128:0|t[|cRXP_LOOT_Blood Shards|r] you get
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #label LakotaMani2
    #loop
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step if you can't find him|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto 1413/1,-2515.7,-2076.41,0
    .goto 1413/1,-2515.7,-2076.41,60,0
    .goto 1413/1,-2518.74,-2125.73,60,0
    .goto 1413/1,-2517.72,-2223.7,60,0
    .goto 1413/1,-2486.31,-2254.1,60,0
    .goto 1413/1,-2494.42,-2282.48,60,0
    .goto 1413/1,-2531.91,-2272.34,60,0
    .goto 1413/1,-2571.43,-2295.31,60,0
    .goto 1413/1,-2620.07,-2285.18,60,0
    .goto 1413/1,-2625.14,-2245.32,60,0
    .goto 1413/1,-2755.86,-2082.49,60,0
    .goto 1413/1,-2813.62,-2054.12,60,0
    .goto 1413/1,-2811.59,-2004.12,60,0
    .goto 1413/1,-2783.22,-1949.39,60,0
    .goto 1413/1,-2747.75,-1889.26,60,0
    .goto 1413/1,-2709.24,-1913.59,60,0
    .goto 1413/1,-2706.2,-1948.72,60,0
    .goto 1413/1,-2687.96,-1973.04,60,0
    .goto 1413/1,-2678.84,-2016.28,60,0
    .goto 1413/1,-2584.6,-2050.74,60,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r. Save the |T134128:0|t[|cRXP_LOOT_Blood Shards|r] you get
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step << Warlock/Shaman
    #optional
    #loop
	.goto 1413/1,-2515.7,-2076.41,60,0
	.goto 1413/1,-2518.74,-2125.73,60,0
	.goto 1413/1,-2517.72,-2223.7,60,0
	.goto 1413/1,-2486.31,-2254.1,60,0
	.goto 1413/1,-2494.42,-2282.48,60,0
	.goto 1413/1,-2531.91,-2272.34,60,0
	.goto 1413/1,-2571.43,-2295.31,60,0
	.goto 1413/1,-2620.07,-2285.18,60,0
	.goto 1413/1,-2625.14,-2245.32,60,0
	.goto 1413/1,-2755.86,-2082.49,60,0
	.goto 1413/1,-2813.62,-2054.12,60,0
	.goto 1413/1,-2811.59,-2004.12,60,0
	.goto 1413/1,-2783.22,-1949.39,60,0
	.goto 1413/1,-2747.75,-1889.26,60,0
	.goto 1413/1,-2709.24,-1913.59,60,0
	.goto 1413/1,-2706.2,-1948.72,60,0
	.goto 1413/1,-2687.96,-1973.04,60,0
	.goto 1413/1,-2678.84,-2016.28,60,0
	.goto 1413/1,-2584.6,-2050.74,60,0
    .xp 19 >> Grind to level 19
step
    #loop
    .goto 1413/1,-2532.92,-1965.61,0
    .goto 1413/1,-2532.92,-1965.61,50,0
    .goto 1413/1,-2449.83,-1953.45,50,0
    .goto 1413/1,-2377.88,-2018.31,50,0
    .goto 1413/1,-2397.14,-2108.84,50,0
    .goto 1413/1,-2345.46,-2187.21,50,0
    .goto 1413/1,-2415.38,-2179.78,50,0
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto 1413/1,-2847.06,-1879.13,0
    .goto 1413/1,-2847.06,-1879.13,50,0
    .goto 1413/1,-2859.22,-1804.81,50,0
    .goto 1413/1,-2833.88,-1749.41,50,0
    .goto 1413/1,-2881.51,-1723.74,50,0
    .goto 1413/1,-2932.18,-1698.06.0,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>Finish killing |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto 1413/1,-3183.48,-2015.61,0
    .goto 1413/1,-2646.42,-1529.16,0
    .goto 1413/1,-3183.48,-2015.61,90,0
    .goto 1413/1,-2646.42,-1529.16,90,0
    >>Finish killing |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r. Loot it for a |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #loop
    .goto 1413/1,-3010.20,-1319.04,0
    .goto 1413/1,-3010.20,-1319.04,40,0
    .goto 1413/1,-2959.54,-1292.69,40,0
    .goto 1413/1,-2953.46,-1239.31,40,0
    .goto 1413/1,-2998.04,-1192.02,40,0
    .goto 1413/1,-3050.74,-1225.13,40,0
    .goto 1413/1,-3066.95,-1260.93,40,0
    .goto 1413/1,-3052.76,-1319.710,40,0
    >>Kill |cRXP_ENEMY_Oasis Snapjaws|r in and around the lake. Loot them for their |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step << Shaman/Priest
    #season 2
    #loop
    .goto 1413/1,-3028.44,-685.30,40,0 --Spawn 1
    .goto 1413/1,-3034.52,-698.81,40,0
    .goto 1413/1,-2931.16,-816.37,40,0 --Spawn 2
    .goto 1413/1,-2946.36,-800.83,40,0
    .goto 1413/1,-3200.71,-821.78,40,0 --Spawn 3
    .goto 1413/1,-3209.83,-804.89,40,0
    .goto 1413/1,-3199.70,-799.480,40,0
    .goto 1413/1,-3212.87,-979.20,40,0 --Spawn 4
    .goto 1413/1,-3202.74,-998.79,40,0
    .goto 1413/1,-3337.51,-932.58,40,0 --Spawn 5
    .goto 1413/1,-3347.64,-923.12,40,0
    .goto 1413/1,-3349.67,-936.63,40,0
    >>Cast |T136075:0|t[Purge] on the |cRXP_ENEMY_Desert Mirage|r to kill it. Loot it for the |T134419:0|t|cRXP_LOOT_[Earthen Rune]|r << Shaman
    >>Cast |T135894:0|t[Dispel Magic] on the |cRXP_ENEMY_Desert Mirage|r to kill it. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r] << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r. Loot it for a |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto 1413/1,-3427.70,-436.67
    .use 10338 >>Use the |T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r] at the dead tree to summon |cRXP_ENEMY_Ishamuhale|r. Kill and loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_The Carcass only has a 30 minute duration!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith FlytoXroads
    .goto 1413/1,-3768.18,-840.69 << Rogue
    .goto 1413/1,-3728.66,-835.29 << !Rogue
    .subzone 392 >> Travel to Ratchet
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Turn in Plundering the Plunderers
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Turn in Stolen Booty
    .target Gazlowe
    .isQuestComplete 888
step
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto 1413/1,-3639.48,-1049.46
    >>|cRXP_WARN_If you have |cRXP_LOOT_3 gold|r to spare you can buy a rune from|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in the Ratchet inn. Judge for yourself if you can afford it and if the rune is useful for your class. You can always buy it later|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
    .train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
    .train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
    .train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
    .train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
    .train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Turn in Further Instructions
    --.accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .accept 1491 >>Accept Smart Drinks
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Turn in Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
    .dungeon WC
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Turn in Further Instructions
    --.accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Turn in Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 865 >>Turn in Raptor Horns
    .accept 1491 >>Accept Smart Drinks
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Turn in Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
    .dungeon WC
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 865 >>Turn in Raptor Horns
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Turn in Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
step << Warrior
    .goto 1413/1,-3680.02,-982.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Buy |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r] from him if it's up
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto 1413/1,-3675.96,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Buy |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] from him if they're up
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .equip 9,4794
step << Warrior
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equip the|r |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equip the|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    .home >>Set your Hearthstone to Ratchet
    .target Innkeeper Wiley
    .dungeon WC
    .bindlocation 392
    .isQuestTurnedIn 865
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >> Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 380
step << Hunter
    #xprate <2.1
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Accept Report to Kadrak
    .target Thork
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .turnin 875 >>Turn in Harpy Lieutenants
    .accept 876 >>Accept Serena Bloodfeather
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 876 >>Accept Serena Bloodfeather
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r and |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Turn in Consumed by Hatred
    .target +Tonga Runetotem
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>Turn in Altered Beings
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem << Shaman/Rogue
    .target +Mankrik
    .goto 1413/1,-2672.76,-544.77
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Accept Egg Hunt
    .target Korran
step
    .destroy 5085 >>|cRXP_WARN_Delete any leftover|r |T133721:0|t[Bristleback Quilboar Tusks] |cRXP_WARN_you may still have|r
    .itemcount 5085,1
step << Shaman
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto 1454/1,-4213.03,1920.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Accept Call of Water
    .target Searn Firewarder
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Train your class spells
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .trainer >>Train your class spells
    .accept 1507 >>Accept Devourer of Souls
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Torment (Rank 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto 1454/1,-4340.53,1839.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
    .target Cazul
step << Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto 1454/1,-4199.99,1717.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> Now you should be looking for a group to The Deadmines
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Train your class spells
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Train your class spells
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4610.95,2135.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Train your pet spells
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Train your class spells
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Train your class spells
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Train your class spells
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Train your class spells
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Train your class spells
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Train your class spells
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Train your class spells
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Train your class spells
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Train your class spells
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
    --VV Adjust to 20-22 level range
step
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Flask of Oil] |cRXP_BUY_from the Auction House if possible|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto 1411/1,-4648.55,1321.88,40 >>Go up the Zeppelin Tower
    .zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn Vale
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto 1434/0,273.91,-12406.71,40,0
    .goto 1434/0,492.15,-12499.03,40,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,1004.57,-12317.37.0,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >> Swim directly to the west from Grom'Gol into the Vile Reef and then swim north toward Westfall
    >>|cRXP_WARN_Steer clear from the island. Follow the waypoint for safety!|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Travel to the Westfall Lighthouse
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .accept 103 >> Accept Keeper of the Flame
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 103 >> Turn in Keeper of the Flame
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >> Turn in The Coastal Menace
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandon Keeper of the Flame
    .dungeon DM
step
    #label EnterDM
    .goto 1415/0,1596.2,-11768.97,8,0
    .goto 1415/0,1596.2,-11780.71,8,0
    .goto 1415/0,1606.76,-11785.4,8,0
    .goto 1415/0,1582.12,-11799.48,8,0
    .goto 1415/0,1596.2,-11813.56,15,0
    .goto 1415/0,1631.4,-11846.41,15,0
    .goto 1415/0,1649.0,-11898.04,15,0
    .goto 1415/0,1659.56,-11919.16,15,0
    .goto 1415/0,1698.28,-11891.0,15,0
    .goto 1415/0,1744.04,-11881.61
    .zone 291 >> Enter the Deadmines Instance portal. Zone in
    .dungeon DM
step
    .hs >> Hearth to The Barrens after having completed Deadmines
    .zone The Barrens >> Arrive in The Barrens
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Fly to The Crossroads
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
    .target Gazrog
step << Shaman
    #completewith CallofWater01
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Fly to Ratchet
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #label CallofWater01
    .goto 1413/1,-4047.86,-1345.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Turn in Call of Water
    .accept 1530 >>Accept Call of Water
    .target Islen Waterseer
step << !Warlock !Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to Crossroads
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to Crossroads
    .target Bragok
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Starts a 45-minute timed quest|r
    .accept 853 >> Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_You are on a timed quest, don't go afk. It will get turned in 20-30 minutes after pick-up|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Bragok
    .subzoneskip 380
step
    #xprate <2.1 << Warlock
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Devrak
    .subzoneskip 380,1

    --Warlock Class Q section

step << Warlock
    #xprate >2.09
    #label EnterSTMWL
    #completewith KenZiglaWL
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step << Warlock
    #xprate >2.09
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Follow the path on the left upward
step << Warlock
    #xprate >2.09
    #label KenZiglaWL
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
    .target Ken'zigla
step << Warlock
    #xprate >2.09
    #completewith next
    .hs >>Hearth to Camp Taurajo
    .subzoneskip 378
    .bindlocation 378,1
    .cooldown item,6948,>0
    .dungeon !WC
step << Warlock
    #xprate >2.09
    #completewith next
    .subzone 378 >>Travel to Camp Taurajo
step << Warlock
    #xprate >2.09
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
    .target Grunt Logmar
step
    .goto 1413/1,-1891.48,-2391.93
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for a |T134128:0|t[|cRXP_LOOT_Blood Shard|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
    .target Mangletooth
    .addquestitem 5075,5052
step
    #optional
    #completewith IshamuhaleTurnin
    .goto 1413/1,-1891.48,-2391.93,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    +|cRXP_WARN_Use your|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r] |cRXP_WARN_to get buffs. Save at least 4 of them for later|r
    +|cRXP_WARN_Make sure to turn off any autocomplete functions from addons such as Questie or Leatrix Plus for this!|r
    .target Mangletooth
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .turnin 883 >>Turn in Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .target Jorn Skyseer
step << Warlock
    #xprate >2.09
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
    .target Grunt Dogran
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1868.18,-2498.00,0
    .goto 1413/1,-1868.18,-2498.00,60,0
    .goto 1413/1,-1861.08,-2561.51,60,0
    .goto 1413/1,-1842.84,-2618.94,60,0
    .goto 1413/1,-1888.44,-2650.690,60,0
    .goto 1413/1,-2004.98,-2683.80,60,0
    .goto 1413/1,-2133.67,-2590.56,60,0
    .goto 1413/1,-2182.31,-2479.76,60,0
    .goto 1413/1,-2232.98,-2478.41,60,0
    .goto 1413/1,-2273.51,-2456.79,60,0
    .goto 1413/1,-2356.60,-2513.54,60,0
    .goto 1413/1,-2428.55,-2517.60,60,0
    .goto 1413/1,-2406.26,-2424.36,60,0
    .goto 1413/1,-2363.70,-2395.98,60,0
    .goto 1413/1,-2253.24,-2345.99,60,0
    >>Kill |cRXP_ENEMY_Thunder Lizards|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Turn in Owatanka
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .accept 6382 >>Accept The Ashenvale Hunt << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .accept 6382 >>Accept The Ashenvale Hunt << Hunter
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>> Travel South toward |cRXP_FRIENDLY_Brine|r
step << Shaman
    #completewith next
    >>Kill a |cRXP_ENEMY_Thunderhawk|r. Loot it for its |cRXP_LOOT_Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Turn in Call of Water
    .accept 1535 >>Accept Call of Water
    .target Brine
step << Shaman
    .goto 1413/1,-1858.04,-3572.92
    .use 7766 >> |cRXP_WARN_Fill your|r |T132825:0|t[Empty Brown Waterskin] |cRXP_WARN_in the watering hole below Brine's hut|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Turn in Call of Water
    .accept 1536 >>Accept Call of Water
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .subzoneskip 378 >>Travel back toward Camp Taurajo
step << Shaman
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith next
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step for now if you can't find him|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1919.86,-2652.04,0
    .goto 1413/1,-1919.86,-2652.04,60,0
    .goto 1413/1,-2096.18,-2531.11,60,0
    .goto 1413/1,-2341.4,-2352.74,60,0
    .goto 1413/1,-1982.68,-2217.62,60,0
    .goto 1413/1,-1775.96,-2235.86,60,0
    >>Kill a |cRXP_ENEMY_Thunderhawk Hatchling|r or a |cRXP_ENEMY_Thunderhawk Cloudscraper|r. Loot it for its |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Turn in Owatanka
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
    .target Jorn Skyseer
    .isQuestComplete 913
step << !Tauren
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>|cRXP_WARN_If you have 10|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r |cRXP_WARN_left, use them to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_Mangletooth|r
    >>|cRXP_WARN_Skip this step if you have the Thunder Bluff flight path|r
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Travel into Mulgore
step << !Tauren
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Take the lift into Thunder Bluff
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
step << Tauren
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Train Two-Handed Maces
    .train 227 >>Train Staves
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
step << Rogue
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Train Maces
    .target Ansekhwa
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Travel to the Spirit Rise and enter the pools of vision
step << Rogue/Shaman
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Accept Until Death Do Us Part
    .target Clarice Foster
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
    .dungeon WC
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step
    #optional
    #label ZamahTurnin
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
    --.accept 5644 >> Accept Devouring Plague << Undead Priest
    .accept 5642 >> Accept Shadowguard << Troll Priest
    .trainer >> Train your class spells
    .target Miles Welsh
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Train your class spells
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Train your class spells
    .target Archmage Shymm
    .xp <22,1
    .xp >24,1
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 2121 >> Train your class spells
    .target Archmage Shymm
    .xp <24,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Train your class spells
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Train your class spells
    .target Tigor Skychaser
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 8046 >> Train your class spells
    .target Tigor Skychaser
    .xp <24,1
step
    #xprate <2.1 << Warlock
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Create|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_until your skill in First Aid is 80 or higher|r
    .skill firstaid,<1,1
step
    #xprate <2.1 << Warlock
    #label FirstAid2
    .goto 1456/1,206.88,-997.45
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
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Turn in Hamuul Runetotem
    .accept 1490 >> Accept Nara Wildmane
    .target Arch Druid Hamuul Runetotem
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .accept 914 >> Accept Leaders of the Fang
    .target Nara Wildmane
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .target Nara Wildmane
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .trainer >> Train your class spells
    .target Turak Runetotem
step
    #label SacredFlame
    .goto 1456/1,-56.98,-1207.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Accept The Sacred Flame
    .target Zangen Stonehoof
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >> Travel to the Hunter Rise
step << Hunter
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <22,1
    .xp >24,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 19885 >> Train |T132320:0|t[Track Hidden]
    .target Urek Thunderhorn
    .xp <24,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Train your pet spells
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >> Travel to the Hunter Rise
step << Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .train 845 >> Train your class spells
    .accept 1823 >>Accept Speak with Ruga
    .target Torm Ragetotem
step << Rogue
    #season 0
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him.|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #season 0
    #optional
    #completewith FlyOrgSR
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #season 2
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy one or two|r |T135342:0|t[Kris] |cRXP_BUY_from him|rr
    .collect 2209,1,493,1 --Collect Kris (1)
    .money <0.7115
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #season 2
    #optional
    #completewith FlyOrgSR
    +|cRXP_WARN_Equip the|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .xp <19,1
step << Warrior/Shaman
    #completewith next
    #ah
    +|cRXP_FRIENDLY_If it's cheaper you can buy a green weapon from the auction house instead|r
step << Warrior
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith FlyCampT
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 0
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith CallofWater2
    +|cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 2
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T133476:0|t[Flail] |cRXP_BUY_from him|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith CallofWater2
    +|cRXP_WARN_Equip the|r |T133476:0|t[Flail]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #optional
    #completewith FlyCampT
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to Crossroads
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Now you should be looking for a group to Wailing Caverns
    >>Grind |cRXP_ENEMY_Quilboars|r while assembling a Wailing Caverns group
    .dungeon WC
step
    .goto 1413/1,-2053.62,-882.58,100 >> Travel to Wailing Caverns
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>Run up the mountain at the Wailing Caverns meeting stone
    >>|cRXP_WARN_Follow the arrow closely to reach the hidden cave|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .accept 1486 >> Accept Deviate Hides
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >> Accept Deviate Eradication
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .dungeon WC
step
    #optional
    #hardcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Kill all the |cRXP_ENEMY_Deviate Beasts|r you see. Loot them for their |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Hides|r |cRXP_WARN_for everybody|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>Kill all the |cRXP_ENEMY_Deviate Beasts|r you see. Loot them for their |cRXP_LOOT_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #label MadMagg
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2124.50,-730.16,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    .goto 1414/1,-2124.50,-730.16,30,0
    >>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_WARN_He has a long respawn timer. Skip this step if you cannot find him|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >> Enter the WC Instance portal. Zone in
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
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
    #completewith GlowingShard
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Hides|r |cRXP_WARN_for everybody|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
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
    #optional
    #completewith DeviateRaptors
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
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
    #completewith Ectoplasms
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r. . Loot them for their |cRXP_ENEMY_Hides|r
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
    .isOnQuest 1486
    .dungeon WC
 step
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>Kill |cRXP_ENEMY_Deviate Raptors|r. Loot them for their |cRXP_ENEMY_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #label Ectoplasms
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
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
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    >>|cRXP_WARN_Cast|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Loot the |cRXP_PICK_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GShard
    .hs >> Hearth to Ratchet
    .use 6948
    .dungeon WC
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Turn in Smart Drinks
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >> Travel up the mountain
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Turn in The Glowing Shard
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >> Turn in Deviate Hides
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >> Turn in Deviate Eradication
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1487 >> Turn in Deviate Eradication
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >> Turn in Deviate Hides
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
step << skip
    #completewith next
    .goto 1413/1,-1881.35,-2384.50,100 >> Travel South to Camp Taurajo
    .subzoneskip 378
    .dungeon WC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Turn in Leaders of the Fang
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Turn in In Nightmares
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> Travel to the Spirit Rise and enter the pools of vision
    .isQuestComplete 962
    .dungeon WC
step
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 962 >>Turn in Serpentbloom
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    #optional
    .abandon 1486 >>Abandon Deviate Hides
step
    #optional
    .abandon 1487 >>Abandon Deviate Eradication
step
    #optional
    .abandon 1491 >>Abandon Smart Drinks
step
    #optional
    .abandon 959 >>Abandon Trouble at the Docks
step
    #optional
    .abandon 914 >>Abandon Leaders of the Fang
step
    #optional
    .abandon 962 >>Abandon Serpentbloom
step
    #xprate <2.1
    #completewith Serena
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to The Crossroads
    .target Tal
    .subzoneskip 380
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith CounterattackTurnin2
    +|cRXP_WARN_This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located|r
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Accept Counterattack!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto 1413/1,-1884.39,-289.38
    >>Kill |cRXP_ENEMY_Warlord Krom'zar|r once he appears. Loot the |cRXP_PICK_Banner|r that he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin2
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #optional
    #completewith Serena
    .abandon 855 >>Abandon Centaur Bracers
step
    #xprate <2.1
    #label Serena
    .goto 1413/1,-1345.3,790.94
    >>Kill |cRXP_ENEMY_Serena Bloodfeather|r. Loot her for her |cRXP_LOOT_Head|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    #xprate <2.1
    .goto 1413/1,-2347.48,857.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wenikee|r
    .turnin 3921 >> Turn in Wenikee Boltbucket
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    #xprate <2.1
    .goto 1413/1,-2253.24,1246.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r
    .turnin 6541 >> Turn in Report to Kadrak
    .target Kadrak
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2240.94,1778.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r to start the escort
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_has a 5 minute respawn time|r
    .accept 6544 >> Accept Torek's Assault
    .target Torek
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2110.61,1809.320,60,0
    .goto 1440/1,-2052.37,1776.27,20,0
    .goto 1440/1,-2006.81,1777.42,10,0
    .goto 1440/1,-2037.38,1777.04
    >>Follow |cRXP_FRIENDLY_Torek|r
    >>Let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r tank the |cRXP_ENEMY_Silverwing Warriors|r and |cRXP_ENEMY_Silverwing Sentinels|r
    >>|cRXP_WARN_When you clear the building, run toward the Balcony. When |cRXP_ENEMY_Duriel Moonfire|r comes, let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2511.97,2271.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Turn in Torek's Assault
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >> Turn in The Ashenvale Hunt
    .turnin 6383 >> Turn in The Ashenvale Hunt
    .target Senani Thunderheart
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Get the Splintertree Post flight path
    .target Vhulgra
step << Hunter
    #xprate <2.1
    #completewith EnterSTM2
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fly Crossroads >> Fly to Crossroads
    .target Vhulgra
    .zoneskip The Barrens
step << !Hunter
    #xprate <2.1
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Hunter
    #xprate <2.1
    #hardcore
    #completewith next
    .subzone 380 >>Travel to Crossroads
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .turnin 876 >> Turn in Serena Bloodfeather
    .accept 1060 >> Accept Letter to Jin'Zil
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <2.1
    #optional
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    .accept 1060 >> Accept Letter to Jin'Zil
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Accept Egg Hunt
    .target Korran
step
    #xprate <2.1
    #completewith CounterattackTurnin3
    +|cRXP_WARN_This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located|r
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Accept Counterattack!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto 1413/1,-1884.39,-289.38
    >>Kill |cRXP_ENEMY_Warlord Krom'zar|r once he appears. Loot the |cRXP_PICK_Banner|r that he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin3
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #label STMturnins1
    #map Stonetalon Mountains
    .goto 1413/1,-950.10,-271.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Turn in Goblin Invaders
    .timer 4,Goblin Invaders RP
    .accept 1063 >>Accept The Elder Crone
    --.accept 1068 >> Accept Shredding Machines
    .target Seereth Stonebreak
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Follow the path on the left upward
step
    #xprate <2.1
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Turn in Letter to Jin'Zil
    --.accept 1058 >> Accept Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
    .isQuestTurnedIn 876
step << Warlock
    #xprate <2.1
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
    .target Ken'zigla
step
    #xprate <2.1
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Turn in Blood Feeders
    .target Xen'Zilla
step << skip
    #xprate <2.1
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Jump onto one of the cages. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLICK HERE for an example|r
step << skip
    #xprate <2.1 << !Warlock
    #completewith ElderCroneTurnin
    .goto 1456/1,-48.84,-1037.94,20,0
    .goto 1456/1,-13.04,-1107.95,40 >> Take the lift into Thunder Bluff
step
    #xprate <2.1
    .hs >>Hearth to Thunder Bluff
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
step
    #xprate <2.1
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Travel to the Elder Rise
step
    #xprate <2.1
    #label ElderCroneTurnin
    .goto 1456/1,-212.71,-1065.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_Wait for the RP to finish|r
    .turnin 1063 >> Turn in The Elder Crone
    .timer 6,The Elder Crone RP
    .accept 1064 >> Accept Forsaken Aid
    .target Magatha Grimtotem
step
    #xprate <2.1
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Turn in Forsaken Aid
    .accept 1065 >> Accept Journey to Tarren Mill << Rogue/Shaman
    .target Apothecary Zamah
step << !Shaman !Rogue
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Tal
    .subzoneskip 378
step << Warlock
    #xprate <2.1
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
    .target Grunt Logmar
step << Warlock
    #xprate <2.1
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
    .target Grunt Dogran
step << Shaman/Rogue
    #label FlyOrgSR
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Shaman
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <24,1
step << Rogue
    #completewith next
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Buy a|r |T135640:0|t[Jambiya] |cRXP_BUY_from him if you do not have a dagger|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto 1454/1,-4284.42,1771.28
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
    .goto 1454/1,-4284.42,1771.28
    >>After |cRXP_FRIENDLY_Shenthul|r does his salute, type /Salute while targeting him
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Turn in The Shattered Salute
    .accept 2458 >>Accept Deep Cover
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T134387:0|t[Flash Powder] |cRXP_BUY_from him|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Rogue
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >> Enter The Barrens through the western Exit
    .zoneskip The Barrens
step << Rogue
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >> Travel toward the Sludge Ven
step << Rogue
    #completewith next
    .goto 1413/1,-3021.35,1214.56
	+Target |cRXP_FRIENDLY_Taskmaster Fizzule|r, then use your |T134536:0|t[Flare Gun] TWICE and type /Salute
    >>|cRXP_WARN_Be careful! Do NOT approach him until he becomes friendly or he will attack you!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    #label MissionProbable
    .goto 1413/1,-2995.0,1236.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Turn in Deep Cover
    .accept 2478 >>Accept Mission: Possible But Not Probable
    .target Taskmaster Fizzule
step << Rogue
    .goto 1413/1,-2930.15,1209.15
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
    .goto 1413/1,-2922.04,1224.69
    >>Run into the Rogue Tower and kill |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r and |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>At the top of the tower you'll find |cRXP_ENEMY_Gallywix|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Ambush] |cRXP_WARN_to reduce his HP to half. Use|r |T132155:0|t[Gouge] |cRXP_WARN_to restore energy and use|r |T136205:0|t[Evasion]
	>>|cRXP_WARN_Remember to use a Potion and|r |T132819:0|t[Thistle Tea] |cRXP_WARN_if needed|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Use your lock picking to open |cRXP_PICK_Gallywix's Lockbox|r & loot the |cRXP_LOOT_Mixture|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto 1413/1,-3591.86,1328.06,120 >>Travel toward the Boulder Lode Mine
step << skip --Rogue
    #hardcore
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Jump onto the wooden beam. Perform a Logout Skip by logging out and back in. Run back to Orgrimmar if you don't succeed|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .zoneskip Orgrimmar
step << Rogue
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Rogue
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue
    #hardcore
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Enter Orgrimmar through the western entrance
    .isQuestComplete 2478
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .accept 2479 >>Accept Hinott's Assistance
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T133849:0|t[Dust of Decay] |cRXP_BUY_and|r |T132793:0|t[Empty Vials] |cRXP_BUY_from him|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Rogue
    >>|cRXP_WARN_If you have any|r |T134437:0|t[Anti-Venom]|cRXP_WARN_, use one to cure yourself of|r |T136230:0|t[Touch of Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Delete the|r |T134536:0|t[Flare Gun] |cRXP_WARN_from your bags, as it's no longer needed|r
    .destroy 8066 >> |cRXP_WARN_Delete|r |T134374:0|t[Fizzule's Whistle] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #optional
    .abandon 6421 >>Abandon Boulderslide Ravine
step
    #optional
    .abandon 4021 >>Abandon Counterattack!
step
    #optional
    .abandon 6481 >>Abandon Earthen Arise
step
    #optional
    .abandon 6284 >>Abandon Arachnophobia
step
    #optional
    .abandon 6641 >>Abandon Vorsha the Lasher
step
    #optional
    .abandon 6563 >>Abandon The Essence of Aku'Mai
]])
