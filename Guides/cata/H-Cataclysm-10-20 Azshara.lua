local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 10-22 Azshara
#displayname 11-22 Azshara << Goblin/Pandaren
#next 22-27 Ashenvale
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Cataclysm 1-80 (H) << cata
#group RXP MoP 1-60 (H) << mop
#subweight 10000

step << Rogue Cata/Warlock Cata/Mage Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >> Travel toward the Cleft of Shadow
step << Priest Cata/Paladin Cata
    #completewith next
    .goto 1454,49.88,75.54,30 >> Enter Grommash Hold
step << Shaman Cata/Druid Cata
    #completewith next
    .goto 1454,44.84,75.46,40,0
    .goto 1454,41.53,60.64,40 >> Travel to the Valley of Wisdom
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordul|r
    .train 61922 >> Train your class spells
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rekkul|r.
    >>|cRXP_BUY_Buy|r |T132273:0|t[Instant Poison] |cRXP_BUY_from him|r
    .collect 6947,20,14129,1 --Instant Poison (20)
    .target Rekkul
step << Shaman Cata
    .goto 1454,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sahi|r
    .train 3599 >> Train your class spells
    .target Sahi Cloudsinger
    .xp <10,1
step << Druid Cata
    .goto 1454,44.79,51.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalla|r
    .train 5215 >> Train your class spells
    .target Shalla Whiteleaf
    .xp <10,1
step << Mage Cata
    .goto 1454,48.45,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marud|r
    .train 5505 >> Train your class spells
    .target Marud
    .xp <10,1
step << Priest Cata
    .goto 1454,49.17,70.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyelis|r
    .train 8092 >> Train your class spells
    .target Tyelis
    .xp <10,1
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Train your class spells
    .target Mirket
    .xp <10,1
step << Paladin Cata
    .goto 1454,49.27,71.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyreanor|r
    .train 82242 >> Train your class spells
    .target Master Pyreanor
    .xp <10,1
step
    #completewith next
    .goto 1454,59.59,50.63,40,0
    .goto 1454,65.39,49.14,40 >> Travel to the the Valley of Honor
step << !Goblin
    .goto 1454,66.433,49.292
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .isQuestAvailable 28496
step << !Warrior !Paladin !Rogue !Hunter !Shaman
    #completewith next
    .goto 1454,66.84,50.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
    .vendor >> Vendor and Repair
    .target Kiro
step << Warrior Cata
    .goto 1454,73.71,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ronakada|r
    .train 71 >> Train your class spells
    .target Blademaster Ronakada
    .xp <10,1
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koru|r
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T133477:0|t[Giant Mace] (24s) << Orc/Troll
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T133477:0|t[Giant Mace] (25s 34c) << Tauren
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T133477:0|t[Giant Mace] (26s 67c) << Undead/BloodElf
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T133477:0|t[Giant Mace] (21s 34c) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koru|r
    >>|cRXP_BUY_Buy a|r|T133477:0|t[Giant Mace] |cRXP_BUY_from him|r
    .collect 1197,1,14129,1 --Collect Giant Mace (1)
    .money <0.2400 << Orc/Troll
    .money <0.2534 << Tauren
    .money <0.2667 << Undead/BloodElf
    .money <0.2134 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_WARN_Skip this step if you did not take Enhancement specialization!|r
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T132938:0|t[Right-Handed Brass Knuckles]  (19s 17c) and |T132938:0|t[Left-Handed Brass Knuckles] [19s 24c] << Orc/Troll
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T132938:0|t[Right-Handed Brass Knuckles]  (20s 24c) and |T132938:0|t[Left-Handed Brass Knuckles] [20s 31c] << Tauren
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T132938:0|t[Right-Handed Brass Knuckles]  (17s 4c) and |T132938:0|t[Left-Handed Brass Knuckles] [17s 10c] << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Buy|r |T132938:0|t[Right-Handed Brass Knuckles] |cRXP_BUY_and|r |T132938:0|t[Left-Handed Brass Knuckles] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Skip this step if you did not take Enhancement specialization!|r
    .collect 15905,1,14129,1 --Collect Right-Handed Brass Knuckles (1)
    .collect 15906,1,14129,1 --Collect Left-Handed Brass Knuckles (1)
    .money <0.3841 << Orc/Troll
    .money <0.4045 << Tauren
    .money <0.3450 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zendo'jian|r
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T135489:0|t[Laminated Recurve Bow] (15s 76c) << Orc/Troll
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T135489:0|t[Laminated Recurve Bow] (16s 64c) << Tauren
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T135489:0|t[Laminated Recurve Bow] (17s 52c) << Undead/BloodElf
    .vendor >> Vendor trash and repair. Sell your weapon if it gives you enough money for |T135489:0|t[Laminated Recurve Bow] (14s 2c) << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
    .xp <11,1
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,14129,1 --Laminated Recurve Bow (1)
    .money <0.1576 << Orc/Troll
    .money <0.1664 << Tauren
    .money <0.1752 << Undead/BloodElf
    .money <0.1402 << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoma|r
    .vendor >> Vendor Trash and Repair. Sell your weapon if it gives you enough money for |T135346:0|t[Cutlass], buy two if you have enough money (18s 20c each) << Orc/Troll
    .vendor >> Vendor Trash and Repair. Sell your weapon if it gives you enough money for |T135346:0|t[Cutlass], buy two if you have enough money (20s 23c each) << Undead/BloodElf
    .vendor >> Vendor Trash and Repair. Sell your weapon if it gives you enough money for |T135346:0|t[Cutlass], buy two if you have enough money (16s 18c each) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Buy one or two|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,14129,1 --Cutlass (1)
    .money <0.1820 << Orc/Troll
    .money <0.2023 << Undead/BloodElf
    .money <0.1618 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Warrior/Paladin
    #optional
    #completewith RunawayShredder
    +Equip the |T133477:0|t[Giant Mace]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Equip the |T132938:0|t[Right-Handed Brass Knuckles]
    .use 15905
    .itemcount 15905,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Equip the |T132938:0|t[Left-Handed Brass Knuckles]
    .use 15906
    .itemcount 15906,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter
    #optional
    #completewith RunawayShredder
    +Equip the |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp <11,1
step << Hunter
    #optional
    #completewith RunawayShredder
    +Equip the |T135489:0|t[Laminated Recurve Bow] when you are level 11
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp >11,1
step << Rogue
    #optional
    #completewith RunawayShredder
    +Equip the |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter Cata
    .goto 1454,63.87,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak Grimshot|r
    .train 1978 >> Train your class spells
    .target Ormak Grimshot
    .xp <10,1
step
    #completewith RunawayShredder
    .goto 1454,75.39,4.15,0
    .zone Azshara >> Enter Azshara through the northern exit
step
    #optional
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
    .turnin 25648 >>Turn in Beyond Durotar
    .accept 14118 >>Accept Venison for the Troops
    .accept 14117 >>Accept The Eyes of Ashenvale
    .target Ag'tor Bloodfist
    .isOnQuest 25648
step
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
    .accept 14118 >>Accept Venison for the Troops
    .accept 14117 >>Accept The Eyes of Ashenvale
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grabbit|r
    .turnin 25275 >>Turn in Report to the Labor Captain
    .accept 14129 >>Accept Runaway Shredder!
    .target Labor Captain Grabbit
    .isOnQuest 25275
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grabbit|r
    .turnin 28496 >>Turn in Warchief's Command: Azshara!
    .accept 14129 >>Accept Runaway Shredder!
    .target Labor Captain Grabbit
    .isOnQuest 28496
step
    #label RunawayShredder
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grabbit|r
    .accept 14129 >>Accept Runaway Shredder!
    .target Labor Captain Grabbit
step
    #completewith DefendtheGates
    >>Kill |cRXP_ENEMY_Talrendis Scouts|r. They are stealthed
    >>Kill |cRXP_ENEMY_Weakened Mosshoof Stags|r. Loot them for their |cRXP_LOOT_Slab of Venison|r
    >>|cRXP_ENEMY_Talrendis Scouts|r |cRXP_WARN_can jump you as you're killing|r |cRXP_ENEMY_Weakened Mosshoof Stags|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .mob Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    .goto 76,27.47,73.55,60,0
    .goto 76,28.55,72.22,60,0
    .goto 76,29.89,71.73
    >>Attack a |cRXP_ENEMY_Runaway Shredder|r. Mount it once it becomes friendly
    .complete 14129,1 --Runaway Shredder Captured (1)
    .mob Runaway Shredder
step
    .goto 76,27.33,76.17
    .turnin 14129 >>Turn in Runaway Shredder!
    .accept 14134 >>Accept The Captain's Logs
step
    #loop
    .goto 1447/1,-4994.10010,2593.60010,0
    .waypoint 1447/1,-4941.39990,2669.00000,30,0
    .waypoint 1447/1,-4994.10010,2593.60010,30,0
    .waypoint 1447/1,-5032.80029,2625.69995,30,0
    .waypoint 1447/1,-5063.00000,2662.30005,30,0
    >>Use |T135437:0|t[Gather Lumber]|r at |cRXP_PICK_Azshara Lumber Piles|r to collect |cRXP_LOOT_Lumber|r
    .complete 14134,1 --Azshara Lumber (6)
step
    .turnin 14134 >>Turn in The Captain's Logs
    .accept 14135 >>Accept Up a Tree
step
    #loop
    .goto 1447/1,-5007.70020,2719.19995,0
    .waypoint 1447/1,-5007.70020,2719.19995,30,0
    .waypoint 1447/1,-5013.30029,2780.50000,30,0
    .waypoint 1447/1,-5084.10010,2787.19995,30,0
    .waypoint 1447/1,-5088.00000,2726.50000,30,0
    >>|cRXP_WARN_Use|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_at|r |cRXP_FRIENDLY_Azshara Saplings|r |cRXP_WARN_to make|r |cRXP_ENEMY_Talrendis Snipers|r |cRXP_WARN_attack you|r
    >>|cRXP_WARN_Use|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_and|r |T132330:0|t[Fling Blade]|r |cRXP_WARN_to kill the|r |cRXP_ENEMY_Talrendis Snipers|r
    -->>|cRXP_WARN_Make sure your|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_hits the very core of the tree|r
    .complete 14135,1 --Talrendis Sniper (9)
    .mob Talrendis Sniper
    .target Azshara Sapling
step
    #label DefendtheGates
    .turnin 14135 >>Turn in Up a Tree
    .accept 14146 >>Accept Defend the Gates!
step
    #completewith next
    .goto 76,27.00,76.76,50 >>Return to the Orgrimmar Rear Gate
step
    .goto 76,27.017,76.728
    >>|cRXP_WARN_Use your|r |T134427:0|t[Buzzsaw]|r|cRXP_WARN_,|r |T132330:0|t[Fling Blade|r |cRXP_WARN_and|r |T133716:0|t[Grenade Launcher|r |cRXP_WARN_to kill|r |cRXP_ENEMY_Talrendis Raiders|r
    >>|cRXP_WARN_If you lost your Shredder, mount a|r |cRXP_FRIENDLY_Backup Shredder|r |cRXP_WARN_instead|r
    .complete 14146,1 --Talrendis Raider (20)
    .mob Talrendis Raider
    .target Backup Shredder
step
    .turnin 14146 >>Turn in Defend the Gates!
    .accept 14155 >>Accept Arborcide
step
    .goto 76,21.506,75.870
    >>Kill the |cRXP_ENEMY_Talrendis Ancient|r to the west
    >>|cRXP_WARN_If you lost your Shredder, mount a|r |cRXP_FRIENDLY_Backup Shredder|r |cRXP_WARN_instead|r
    >>|cRXP_WARN_Cast|r |T132489:0|t[Recharge] |cRXP_WARN_if your |cRXP_FRIENDLY_Shredder|r gets low health|r
    .complete 14155,1 --Talrendis Ancient (1)
    .unitscan Talrendis Ancient
    .target Backup Shredder
step
    #completewith next
    >>Kill |cRXP_ENEMY_Talrendis Scouts|r. They are stealthed
    >>Kill |cRXP_ENEMY_Weakened Mosshoof Stags|r. Loot them for their |cRXP_LOOT_Slab of Venison|r
    >>|cRXP_ENEMY_Talrendis Scouts|r |cRXP_WARN_can jump you as you're killing|r |cRXP_ENEMY_Weakened Mosshoof Stags|r
    >>|cRXP_WARN_Skip this step if you're not almost done at this point|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .disablecheckbox
    .unitscan Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    #label ArborcideTurnin
    .goto 76,27.00,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grabbit|r
    .turnin 14155 >>Turn in Arborcide
    .accept 14162 >>Accept Report to Horzak
    .target Labor Captain Grabbit
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
    .collect 47039,1,14127 --Scout's Orders (1)
    .accept 14127 >>Accept Return of the Highborne?
    .turnin 14127 >>Turn in Return of the Highborne?
    .use 47039
    .itemcount 47039,1
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14117 >>Turn in The Eyes of Ashenvale
    .target Ag'tor Bloodfist
    .isQuestComplete 14117
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14127 >>Turn in Return of the Highborne?
    .target Ag'tor Bloodfist
    .isQuestComplete 14118
step
    #completewith Horzak1
    #optional
    .abandon 14118 >>Abandon Venison for the Troops
step
    #completewith Horzak1
    #optional
    .abandon 14117 >>Abandon in The Eyes of Ashenvale
step
    #completewith Horzak1
    .subzone 4830 >>Travel to the Orgrimmar Rocketway Exchange
step
    .goto Azshara,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea|r
    .turnin 14128 >>Turn in Return of the Highborne?
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    #label Horzak1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horzak|r and |cRXP_FRIENDLY_Foreman Fisk|r
    .turnin 14162 >>Turn in Report to Horzak
    .accept 14161 >>Accept Basilisk Bashin'
    .accept 14165 >>Accept Stone Cold
    .target +Horzak Zignibble
    .goto 76,29.15,66.25
    .accept 14197 >>Accept A Quota to Meet
    .target +Foreman Fisk
    .goto Azshara,29.07,66.25
step
    #completewith next
    .subzone 4744 >>Travel West to the Mountainfoot Stripmine
step
    #loop
    .goto 76,25.976,68.758,0
    .goto 76,25.533,69.045,0
    .goto 76,25.096,69.901,0
    .waypoint 76,25.976,68.758,30,0
    .waypoint 76,25.533,69.045,30,0
    .waypoint 76,25.096,69.901,30,0
    .aura 67032 >>Pick up a |cRXP_FRIENDLY_Mountainfoot Miner|r
    .target Mountainfoot Miner
    .isOnQuest 14165
step
    .goto 76,29.075,66.418
	>>Carry the |cRXP_FRIENDLY_Mountainfoot Miner|r back to the Orgrimmar Rocketway Exchange
    >>|cRXP_WARN_You cannot mount or shapeshift as you do this!|r
    .complete 14165,1 --Stonified Miner Delivered
    .target Mountainfoot Miner
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horzak|r
    .turnin 14165 >>Turn in Stone Cold
    .accept 14190 >>Accept The Perfect Prism
    .target Horzak Zignibble
step
    #completewith GreyBasilisks
    >>Loot |cRXP_PICK_Iron Ingots|r and |cRXP_PICK_Iron Stockpiles|r on the ground for |cRXP_LOOT_Mountainfoot Iron|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith Refleshify
    >>Kill |cRXP_ENEMY_Greystone Basilisks|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    .goto 76,21.91,69.37
    >>Kill |cRXP_ENEMY_Talrendis Saboteurs|r. Loot them for a |cRXP_LOOT_Crystal Pendant|r
    .complete 14190,1 --Crystal Pendant (1)
    .mob Talrendis Saboteur
step
    .goto 76,20.26,70.40
    >>Click the |cRXP_PICK_Headquarters Radio|r
    .turnin 14190 >>Turn in The Perfect Prism
    .accept 14192 >>Accept Prismbreak
step
    .goto 76,20.03,69.97
    >>Click the |cRXP_PICK_Weapon Cabinet|r
    .turnin 14192 >>Turn in Prismbreak
    .accept 14194 >>Accept Refleshification
step
    #label Refleshify
    #loop
    .goto 76,24.869,69.998,0
    .waypoint 76,22.454,69.462,20,0
    .waypoint 76,22.948,69.353,20,0
    .waypoint 76,23.338,71.559,20,0
    .waypoint 76,24.442,69.803,20,0
    .waypoint 76,24.869,69.998,20,0
    .waypoint 76,24.877,71.476,20,0
    .waypoint 76,24.633,72.520,20,0
    .waypoint 76,26.635,70.113,20,0
    .waypoint 76,25.517,69.028,20,0
    .waypoint 76,24.911,68.008,20,0
    .waypoint 76,23.005,68.003,20,0
    .use 48104 >> |cRXP_WARN_Use|r |T249182:0|t[The Refleshifier] |cRXP_WARN_on|r |cRXP_FRIENDLY_Mountainfoot Miners|r
    .complete 14194,1 --Mountainfoot Miner Destoned (8)
    .target Mountainfoot Miner
step
    #label GreyBasilisks
    #loop
    .goto 76,24.459,70.185,0
    .waypoint 76,24.459,70.185,40,0
    .waypoint 76,26.214,70.118,40,0
    .waypoint 76,24.683,68.383,40,0
    .waypoint 76,22.607,69.349,40,0
    >>Kill |cRXP_ENEMY_Greystone Basilisks|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    #loop
    .goto 76,22.683,68.753,0
    .waypoint 76,21.973,69.859,30,0
    .waypoint 76,22.683,68.753,30,0
    .waypoint 76,24.608,70.578,30,0
    .waypoint 76,25.493,69.020,30,0
    .waypoint 76,25.367,68.128,30,0
    .waypoint 76,22.933,67.848,30,0
    >>Loot |cRXP_PICK_Iron Ingots|r and |cRXP_PICK_Iron Stockpiles|r on the ground for |cRXP_LOOT_Mountainfoot Iron|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith next
    .subzone 4830 >>Travel to the Orgrimmar Rocketway Exchange
step
    .goto 76,29.12,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fisk|r
    .turnin 14197 >>Turn in A Quota to Meet
    .target Foreman Fisk
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horzak|r
    .turnin 14161 >>Turn in Basilisk Bashin'
    .turnin 14194 >>Turn in Refleshification
    .target Horzak Zignibble
step
    .goto 76,29.53,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Worcester|r
    .accept 14468 >>Accept Another Warm Body
    .target Private Worcester
step
    #completewith next
    .subzone 1233 >>Travel North toward Forlorn Ridge
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Molotov|r
    .turnin 14468 >>Turn in Another Warm Body
    .accept 14469 >>Accept Hand-me-downs
    .target Commander Molotov
step
    .goto 76,29.38,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix|r
    .accept 14470 >>Accept Military Breakthrough
    .target Glix Grindlock
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiz|r
    .accept 14471 >>Accept First Degree Mortar
    .target Xiz "The Eye" Salvoblast
step
    #completewith next
    >>Loot |cRXP_FRIENDLY_Dead Soldiers|r on the ground for |cRXP_LOOT_Military Supplies|r
    >>|cRXP_WARN_Be careful of the|r |cFFEB144CLand Mines|r|cRXP_WARN_. You will get launched away if stepped on|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    >>Kill |cRXP_ENEMY_Warlord Krellian|r. Loot him for the |cRXP_LOOT_SFG|r
    .complete 14470,1 --Warlord Krellian (1)
    .goto 76,27.562,52.010
    .complete 14470,2 --SFG (1)
    .goto 76,27.693,51.903
    .mob Warlord Krellian
step
    #loop
    .goto 76,29.619,53.022,0
    .waypoint 76,28.259,53.135,20,0
    .waypoint 76,28.735,52.656,20,0
    .waypoint 76,29.212,52.368,20,0
    .waypoint 76,29.619,53.022,20,0
    .waypoint 76,29.508,54.180,20,0
    .waypoint 76,29.166,54.338,20,0
    .waypoint 76,28.623,54.670,20,0
    >>Loot |cRXP_FRIENDLY_Dead Soldiers|r on the ground for |cRXP_LOOT_Military Supplies|r
    >>|cRXP_WARN_Be careful of the|r |cFFEB144CLand Mines|r|cRXP_WARN_. You will get launched away if stepped on|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix|r
    .turnin 14470 >>Turn in Military Breakthrough
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Molotov|r
    .turnin 14469 >>Turn in Hand-me-downs
    .target Commander Molotov
step
    .goto 76,31.12,57.59
    .vehicle >> Mount a |cRXP_FRIENDLY_Bilgewater Mortar|r
    .target Bilgewater Mortar
    .isOnQuest 14471
step
    .goto 76,31.12,57.59
    >>|cRXP_WARN_Use|r |T252172:0|t[Mortar Round] |cRXP_WARN_to kill|r |cRXP_ENEMY_Spitelash Attackers|r
    .complete 14471,1 --Spitelash Attackers blown to bits (60)
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiz|r
    .turnin 14471 >>Turn in First Degree Mortar
    .target Xiz "The Eye" Salvoblast
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix|r
    .accept 14472 >>Accept In The Face!
    .target Glix Grindlock
step
    .goto 76,31.61,60.49
    .use 49700 >> |cRXP_WARN_Use your|r |T133032:0|t[SFG] |cRXP_WARN_to kill an|r |cRXP_ENEMY_Enslaved Son of Arkkoroc|r
    .complete 14472,1 --Enslaved Son of Arkkoroc (1)
    .mob Enslaved Son of Arkkoroc
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix|r
    .turnin 14472 >>Turn in In The Face!
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Molotov|r
    .accept 24452 >>Accept Profitability Scouting
    .target Commander Molotov
step
    .goto 76,31.924,50.964
    >>Travel toward the centre of the Ruins of Eldarath
    .use 49701 >> |cRXP_WARN_Use your|r |T133866:0|t[Stealth Field Generator] |cRXP_WARN_to become invisible|r
    .complete 24452,1 --Heart of Arkkoroc identified
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Molotov|r
    .turnin 24452 >>Turn in Profitability Scouting
    .accept 24453 >>Accept Private Chat
    .target Commander Molotov
step
    #completewith next
    .subzone 4830 >>Travel to the Orgrimmar Rocketway Exchange
step
    .goto 76,29.53,66.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Worcester|r
    .turnin 24453 >>Turn in Private Chat
    .target Private Worcester
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer|r
    .accept 14202 >>Accept Survey the Lakeshore
    .target Custer Clubnik
step
    .goto 76,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea|r
    .accept 14201 >>Accept A Thousand Stories in the Sand
    .target Malynea Skyreaver
step
    #completewith next
    >>Loot |cRXP_PICK_Ancient Debril Piles|r from the ground for |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    >>Defend |cRXP_FRIENDLY_Goblin Surveyor Jr. Grade|r from incoming |cRXP_ENEMY_Shades of Hate|r as she marks the surveys
    .use 48655 >> |cRXP_WARN_Use your|r |T133015:0|t[Surveyor's Beacon] |cRXP_WARN_to summon a new|r |cRXP_FRIENDLY_Goblin Surveyor|r |cRXP_WARN_if needed|r
    .complete 14202,2 --Survey North Marker (1)
    .goto 76,34.69,71.58
    .complete 14202,3 --Survey East Marker (1)
    .goto 1447/1,-5434.39990,2637.10010
    .complete 14202,1 --Survey West Marker (1)
    .goto 76,34.263,76.616
    .target Goblin Surveyor Jr. Grade
    .mob Shade of Hate
step
    #loop
    .goto 1447/1,-5316.60010,2747.90015,0
    .waypoint 1447/1,-5316.60010,2747.90015,40,0
    .waypoint 1447/1,-5409.30029,2716.69995,40,0
    .waypoint 1447/1,-5457.70020,2650.60010,40,0
    .waypoint 1447/1,-5385.00000,2562.80005,40,0
    .waypoint 1447/1,-5335.39990,2535.40015,40,0
    .waypoint 1447/1,-5274.00000,2535.90015,40,0
    .waypoint 1447/1,-5221.60010,2638.00000,40,0
    >>Loot |cRXP_PICK_Ancient Debril Piles|r from the ground for |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer|r
    .turnin 14202 >>Turn in Survey the Lakeshore
    .accept 14209 >>Accept Gunk in the Trunk
    .target Custer Clubnik
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea|r
    .turnin 14201 >>Turn in A Thousand Stories in the Sand
    --.accept 14215 >>Accept Memories of the Dead
    .target Malynea Skyreaver
    --could skip 14215 and follow-up
step
    .goto 76,30.14,67.25
    >>Click |cRXP_FRIENDLY_Clubnik's Dozer|r
    >>Kill the |cRXP_ENEMY_Ectoplasm|r that appears. Loot it for its |cRXP_LOOT_Sample|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .target Clubnik's Dozer
    .mob Ectoplasmic Exhaust
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer|r
    .turnin 14209 >>Turn in Gunk in the Trunk
    .accept 14423 >>Accept Dozercism
    .target Custer Clubnik
step
    .goto 76,30.08,67.27
    .cast 68007 >>|cRXP_WARN_Use|r |T135619:0|t[Blessed Flaregun] |cRXP_WARN_near|r |cRXP_FRIENDLY_Clubnik's Dozer|r
    .timer 34,Dozercism RP
    >>Attack |cRXP_ENEMY_Clubnik's Dozer|r once it becomes hostile
    .complete 14423,1 --Clubnik's Dozer Exorcised (1)
    .use 49350
    .target Clubnik's Dozer
    .isOnQuest 14423
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer|r
    .turnin 14423 >>Turn in Dozercism
    .accept 14424 >>Accept Need More Science
    .target Custer Clubnik

    --next 2 quests not mandatory to continue in zone, could skip

step << skip
    .goto 1447/1,-5381.60010,2720.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalytha|r at Lake Mennar
    .aura 67704 >>|cRXP_WARN_Let her give you the|r |T136223:0|t[Memories of the Dead] |cRXP_WARN_buff|r
    .skipgossip
    .target Spirit of Kalytha
    .isOnQuest 14215
step << skip
    .goto 76,37.515,74.507
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Selwyn|r
    .complete 14215,1 --Kalytha's Secret Learned (1)
    .skipgossip
    .target Archmage Selwyn
step << skip
    .turnin 14215 >>Turn in Memories of the Dead
    .accept 14216 >>Accept Mystery of the Sarcen Stone
step << skip
    .goto 76,35.57,75.31
    >>Loot the |cRXP_PICK_Ancient Stone Cask|r at the bottom of the lake for the |cRXP_LOOT_Sarcen Stone|r
    .complete 14216,1 --Sarcen Stone (1)
step << skip
    .goto 76,29.68,66.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea|r
    .turnin 14216 >>Turn in Mystery of the Sarcen Stone
    .target Malynea Skyreaver

    --Travel to next area here

step
    #completewith next
    .goto 1447/1,-4993.50000,2936.90015,5,0
    .goto 1447/1,-4998.70020,2947.10010,3 >>Take the lift up the platform
step
    .goto Azshara,29.49,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Bilgewater Rocket-jockey|r
    .gossipoption 112430 >>Take the rocketride to the Southern Rocketway Terminus
    .timer 41,Southern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14424
step
    .goto 76,50.411,74.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greely|r
    .turnin 14424 >>Turn in Need More Science
    .accept 14308 >>Accept When Science Attacks
    .target Assistant Greely
step
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smooks|r
    .accept 14258 >>Accept Mortar the Point
    .target Bombardier Captain Smooks
step
    #completewith GoblinFires
    >>Loot |cRXP_PICK_Goblin Mortar Shells|r from the ground
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    #completewith NineVisit1
    .use 49132 >> |cRXP_WARN_Aim your|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_at fires and|r |cRXP_FRIENDLY_Research Interns|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
step
    .goto 76,45.07,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twistex|r
    .accept 14322 >>Accept Bad Science! Bad!
    .target Twistex Happytongs
step
    #label NineVisit1
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .accept 14408 >>Accept Nine's Plan
    .target Subject Nine
step
    #label GoblinFires
    #loop
    .goto 76,44.122,76.798,0
    .waypoint 76,44.122,76.798,30,0
    .waypoint 76,43.906,74.755,30,0
    .waypoint 76,43.465,75.872,30,0
    .use 49132 >> |cRXP_WARN_Aim your|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_at fires and|r |cRXP_FRIENDLY_Research Interns|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Subject Four|r|cRXP_WARN_ (red raptor). He can oneshot you|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
    .unitscan Subject Four
step
    .goto 76,43.82,77.39
    >>Click the |cRXP_PICK_Secret Lab Squawkbox|r
    .turnin 14308 >>Turn in When Science Attacks
    .accept 14310 >>Accept Segmentation Fault: Core Dumped
step
    .goto 76,43.818,77.301,10,0
    .goto 76,43.983,76.263,12,0
    .goto 76,44.108,75.642,12,0
    .goto 76,45.267,75.668,20,0
    .goto 76,46.571,75.710,20,0
    .goto 76,47.874,75.147,20,0
    .goto 76,49.490,74.495
    >>Click the |cRXP_PICK_Reactor Control Console|r to start the escort
    >>Escort the cart back to the Southern Rocketway Exchange
    .use 49132 >> |cRXP_WARN_Aim your|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_at the|r |cRXP_FRIENDLY_Hulking Labgoblin|r |cRXP_WARN_whenever he's on fire|r
    .complete 14310,1 --Azsharite Core Delivered (1)
    .target Hulking Labgoblin
step
    .goto 76,50.42,74.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greely|r
    .turnin 14310 >>Turn in Segmentation Fault: Core Dumped
    .accept 14370 >>Accept Mysterious Azsharite
    .accept 14371 >>Accept A Gigantic Snack
    .target Assistant Greely
step
    .goto 76,45.97,76.08
    >>Click the |cRXP_PICK_Door Buzzer|r
    >>Kill the |cRXP_ENEMY_Mutant Goblin|r that appears. Loot him for his |cRXP_LOOT_Rocket Plans|r
    .complete 14408,1 --Ring Door Buzzer (1)
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
    .skipgossip
    --VV Gossipoption
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mistwing Cliffdwellers|r. Loot them for their |cRXP_LOOT_Carcasses|r
    >>Kill |cRXP_ENEMY_Static-Charged Hippogryphs|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    #loop
    .goto 76,46.586,71.044,0
    .goto 76,42.053,70.833,0
    .goto 76,41.660,77.979,0
    .goto 76,44.681,81.500,0
    .waypoint 76,46.586,71.044,40,0
    .waypoint 76,43.917,70.036,40,0
    .waypoint 76,43.212,68.401,40,0
    .waypoint 76,42.053,70.833,40,0
    .waypoint 76,41.660,77.979,40,0
    .waypoint 76,43.022,81.757,40,0
    .waypoint 76,44.681,81.500,40,0
    >>Loot |cRXP_PICK_Azsharite Formations|r from the ground for |cRXP_LOOT_Azsharite Samples|r
    .complete 14370,1 --Azsharite Sample (5)
step
    #loop
    .goto 76,44.908,79.037,0
    .waypoint 76,45.723,72.688,60,0
    .waypoint 76,45.068,77.881,60,0
    .waypoint 76,44.908,79.037,60,0
    >>Kill |cRXP_ENEMY_Mistwing Cliffdwellers|r. Loot them for their |cRXP_LOOT_Carcasses|r
    >>Kill |cRXP_ENEMY_Static-Charged Hippogryphs|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14408 >>Turn in Nine's Plan
    .accept 14422 >>Accept Raptor Raptor Rocket
    .target Subject Nine
step
    .goto 76,44.06,75.09
    .aura 69704,5+ >>Open 5 |cRXP_PICK_Specimen Cages|r in the Secret Lab
    .isOnQuest 14422
step
    .goto 76,42.25,76.08
    >>Return to |cRXP_FRIENDLY_Subject Nine|r
    .complete 14422,1 --Experimental Raptor Delivered (5)
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14422 >> Turn in Raptor Raptor Rocket
    .target Subject Nine
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twistex|r
    .turnin 14322 >>Turn in Bad Science! Bad!
    .target Twistex Happytongs
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greely|r
    .turnin 14370 >>Turn in Mysterious Azsharite
    .turnin 14371 >>Turn in A Gigantic Snack
    .accept 14377 >>Accept Befriending Giants
    .target Assistant Greely
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormungan|r
    .complete 14377,1 --Secret of Azsharite Discovered (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greely|r
    .turnin 14377 >>Turn in Befriending Giants
    .accept 14385 >>Accept Azsharite Experiment Number One
    .target Assistant Greely
step
    .goto 76,50.53,74.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart|r
    .accept 14383 >>Accept The Terrible Tinkers of the Ruined Reaches
    .target Hobart Grapplehammer
step
    #completewith next
    .subzone 1256 >>Travel to The Ruined Reaches
step
    #completewith next
    >>Kill |cRXP_ENEMY_Netgun Gnomes|r, |cRXP_ENEMY_Zapper Gnomes|r and |cRXP_ENEMY_Bingham Gadgetspring|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 76,39.89,84.76
    >>Loot the |cRXP_LOOT_Giant-Sized Laxative|r
    >>|cRXP_WARN_Take the elevator to the upper floor of the building where|r |cRXP_ENEMY_Bingham Gadgetspring|r |cRXP_WARN_is located|r
    .complete 14385,2 --Giant-Sized Laxative (1)
step
    #loop
    .goto 76,40.921,84.919,0
    .waypoint 76,40.921,84.919,40,0
    .waypoint 76,42.938,85.531,40,0
    .waypoint 76,40.990,83.634,40,0
    .waypoint 76,42.123,83.416,40,0
    .waypoint 76,43.943,82.385,40,0
    >>Finish killing |cRXP_ENEMY_Netgun Gnomes|r, |cRXP_ENEMY_Zapper Gnomes|r and |cRXP_ENEMY_Bingham Gadgetspring|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormungan|r
    .complete 14385,1 --Try to Feed Gormungan (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greely|r
    .turnin 14385 >>Turn in Azsharite Experiment Number One
    .accept 14388 >>Accept Azsharite Experiment Number Two
    .target Assistant Greely
 step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greely|r
    .aura 68710 >>Shrink into a mouse
    .skipgossipid 111824
    .isOnQuest 14388
    .target Assistant Greely
step
    .goto 76,50.313,74.422
    .vehicle >>Mount a |cRXP_FRIENDLY_Rocketway Rat|r
    .target Rocketway Rat
    .isOnQuest 14388
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormungan|r
    >>|cRXP_WARN_Use|r |T132328:0|t[Scurry] |cRXP_WARN_to increase your movement speed|r
    .complete 14388,1 --Gormungan Scared (1)
    .skipgossip
    .target Gormungan
step
    #loop
    .goto 76,46.532,75.907,0
    .goto 76,43.494,75.449,0
    .waypoint 76,46.532,75.907,20,0
    .waypoint 76,46.070,76.435,20,0
    .waypoint 76,44.095,76.145,20,0
    .waypoint 76,44.205,77.003,20,0
    .waypoint 76,43.494,75.449,20,0
    .waypoint 76,43.825,75.554,20,0
    .waypoint 76,43.536,74.743,20,0
    >>Finish looting |cRXP_PICK_Goblin Mortar Shells|r from the ground
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greely|r
    .turnin 14388 >>Turn in Azsharite Experiment Number Two
    .target Assistant Greely
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart|r
    .turnin 14383 >>Turn in The Terrible Tinkers of the Ruined Reaches
    .accept 24458 >>Accept A Hello to Arms
    .target Hobart Grapplehammer
step
    .goto 76,52.21,74.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smooks|r
    .turnin 14258 >>Turn in Mortar the Point
    .target Bombardier Captain Smooks
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg|r
    .accept 14262 >>Accept To Gut a Fish
    .accept 14267 >>Accept Investigating the Sea Shrine
    .target Torg Twocrush
    .maxlevel 15
step
    #xprate <1.2
    #completewith KeystoneShard
    .goto 1447/1,-6378.30029,2577.10010
    .subzone 4826 >>Travel to Storm Cliffs
    .isOnQuest 14262
step
    #xprate <1.2
    #completewith KeystoneShard
    >>Kill |cRXP_ENEMY_Spitelash Stormfury|r and |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,58.98,71.85
    >>Click the |cRXP_PICK_Naga Power Stone|r
    .turnin 14267 >>Turn in Investigating the Sea Shrine
    .accept 14270 >>Accept The Keystone Shard
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,57.51,70.96
    >>Loot the |cRXP_LOOT_Keystone Shard|r on the ground
    .complete 14270,1 --Keystone Shard (1)
    .isOnQuest 14262
step
    #xprate <1.2
    #label KeystoneShard
    .goto 76,58.98,71.85
    >>Click the |cRXP_PICK_Naga Power Stone|r
    .turnin 14270 >>Turn in The Keystone Shard
    .accept 14271 >>Accept Report to Twocrush
    .isOnQuest 14262
step
    #xprate <1.2
    #loop
    .goto 76,61.858,77.871,0
    .waypoint 76,58.019,76.688,50,0
    .waypoint 76,59.851,77.431,50,0
    .waypoint 76,61.858,77.871,50,0
    .waypoint 76,63.084,82.431,50,0
    >>Kill |cRXP_ENEMY_Spitelash Stormfury|r and |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14262 >>Turn in To Gut a Fish
    .turnin 14271 >>Turn in Report to Twocrush
    .accept 14295 >>Accept Sisters of the Sea
    .target Torg Twocrush
    .isQuestComplete 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14271 >>Turn in Report to Twocrush
    .accept 14295 >>Accept Sisters of the Sea
    .target Torg Twocrush
    .isQuestComplete 14271
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14271 >>Turn in Report to Twocrush
    .accept 14295 >>Accept Sisters of the Sea
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.15,75.87
    >>Kill |cRXP_ENEMY_Lady Silisthra|r
    >>|cRXP_WARN_Click|r |cRXP_FRIENDLY_Silisthra's Power Stone|r |cRXP_WARN_on top of the platform to weaken her|r
    .complete 14295,1 --Lady Silisthra (1)
    .mob Lady Silisthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.63,79.42
    >>Kill |cRXP_ENEMY_Lady Vesthra|r
    >>|cRXP_WARN_Click|r |cRXP_FRIENDLY_Vesthra's Power Stone|r |cRXP_WARN_on top of the platform to weaken her|r
    .complete 14295,2 --Lady Vesthra (1)
    .mob Lady Vesthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,50.67,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14295 >>Turn in Sisters of the Sea
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    .goto 76,51.492,74.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Friz Groundspin|r
    .gossipoption 111876 >>Take the flight to Bilgewater Harbor
    .timer 59,A Hello to Arms RP
    .target Friz Groundspin
    .isOnQuest 24458
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >> Train your class spells
    .target Maxx Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >> Train your class spells
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >> Train your class spells
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >> Train your class spells
    .target Sister Goldskimmer
step
    .goto 76,56.978,50.093
    >>Click the |cRXP_PICK_Wrenchmen Recruitment Poster|r inside the building
    .accept 14478 >>Accept Operation Fishgut
step
    .goto 1447/1,-6519.00000,3529.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimy Greasefingers|r
    .home >> Set your hearthstone to Bilgewater Harbor
    .target Grimy Greasefingers
    .subzoneskip 4821,1
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stinky Shapshiv|r
    .trainer >> Train your class spells
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >> Train your class spells
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r upstairs
    .trainer >> Train your class spells
    .target Warrior-Matic NX-01

    --VV Confirm if there are no Druid/Pala trainers in Bilgewater

step
    .goto 76,59.33,50.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teemo|r
    .accept 14407 >>Accept Azshara Blues
    .target Teemo
step
    .goto 76,60.56,51.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bleenik Fizzlefuse|r
    .turnin 24458 >>Turn in A Hello to Arms
    .target Bleenik Fizzlefuse
step
    .goto 76,60.64,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Molotov|r
    .turnin 14478 >>Turn in Operation Fishgut
    .accept 24455 >>Accept Rapid Deployment
    .target Commander Molotov
step
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Desoto|r
    .turnin 24455 >>Turn in Rapid Deployment
    .accept 14479 >>Accept There Are Many Like It
    .target Captain Desoto
step
    .goto 76,57.891,52.246
    .vehicle >>Mount the |cRXP_FRIENDLY_Rocket|r
    .timer 38,There Are Many Like It RP
    .target Surface to Other Surface Transport
    .isOnQuest 14479
step
    .goto 76,39.14,51.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruckus|r
    .accept 24437 >>Accept First Come, First Served
    .target Ruckus
step
    .goto 76,41.50,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 14479 >>Turn in There Are Many Like It
    .accept 24435 >>Accept Mop Up
    .target Lieutenant Drex
step
    .goto 76,41.37,53.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hort|r
    .accept 24436 >>Accept Halo Drops
    .target Sergeant Hort
step
    #completewith NorthernVista
    >>Kill |cRXP_ENEMY_Spitelash Naga|r and |cRXP_ENEMY_Spitelash Siren|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #completewith KillNagas
    .use 49679 >>|cRXP_WARN_Use your|r |T135619:0|t[Sanctified Flaregun] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,43.86,59.95
    .use 49685 >>|cRXP_WARN_Use the|r |T132485:0|t[Flag of Territorial Claim] |cRXP_WARN_at the Southern Pagoda|r
    .complete 24437,1 --Southern Pagoda claimed (1)
step
    .goto 76,43.60,43.43
    .use 49685 >>|cRXP_WARN_Use the|r |T132485:0|t[Flag of Territorial Claim] |cRXP_WARN_at the Big ol' Tower|r
    .complete 24437,2 --Big ol' Tower claimed (1)
step
    #label NorthernVista
    .goto 76,45.46,38.52
    .use 49685 >>|cRXP_WARN_Use the|r |T1324855:0|t[Flag of Territorial Claim] |cRXP_WARN_at the Northern Vista|r
    .complete 24437,3 --Northern Vista claimed (1)
step
    #label KillNagas
    #loop
    .goto 76,40.901,51.711,0
    .waypoint 76,42.234,43.478,60,0
    .waypoint 76,40.500,47.338,60,0
    .waypoint 76,40.901,51.711,60,0
    .waypoint 76,42.469,56.429,60,0
    .waypoint 76,42.583,60.598,60,0
    >>Kill |cRXP_ENEMY_Spitelash Naga|r and |cRXP_ENEMY_Spitelash Siren|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #loop
    .goto 76,41.538,47.075,0
    .waypoint 76,42.063,42.177,30,0
    .waypoint 76,41.636,43.947,30,0
    .waypoint 76,41.538,47.075,30,0
    .waypoint 76,40.529,49.245,30,0
    .waypoint 76,39.905,51.764,30,0
    .waypoint 76,39.729,53.869,30,0
    .waypoint 76,42.040,50.686,30,0
    .waypoint 76,43.193,52.463,30,0
    .waypoint 76,42.736,60.005,30,0
    .use 49679 >>|cRXP_WARN_Use your|r |T135619:0|t[Sanctified Flaregun] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,41.387,53.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hort|r
    .turnin 24436 >>Turn in Halo Drops
    .target Sergeant Hort
step
    .goto 76,41.499,53.650
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 24435 >>Turn in Mop Up
    .accept 24448 >>Accept Field Promotion
    .target Lieutenant Drex
step
    .goto 76,39.133,51.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruckus|r
    .turnin 24437 >>Turn in First Come, First Served
    .target Ruckus
step
    .goto 76,34.317,44.910
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tork|r
    .turnin 24448 >>Turn in Field Promotion
    .accept 14487 >>Accept Still Beating Heart
    .target Captain Tork
step
    .goto 76,34.450,44.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Zelks|r
    .accept 14480 >>Accept Extermination
    .accept 14484 >>Accept Head of the Snake
    .accept 14485 >>Accept Ticker Required
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora Halotrix|r
    .accept 14486 >>Accept Handling the Goods
    .target Tora Halotrix
step
    #sticky
    #completewith SpitelashNagas
    .cast 69310 >>|cRXP_WARN_Use|r |T134286:0|t[Gob Squad Flare] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Goblins|r |cRXP_WARN_who will assist you with the upcoming quests|r
    .use 49629
step
    #completewith LordKassarus
    >>Destroy |cRXP_PICK_Spitelash Runestones|r
    >>|cRXP_FRIENDLY_Tinker|r |cRXP_WARN_will set explosives at the Runestones. Defend him from incoming|r |cRXP_ENEMY_Spitelash Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
step
    #completewith Runestones
    >>Loot |cRXP_LOOT_Highborne Tablets|r on the ground
    .complete 14486,1 --Highborne Tablet (12)
step
    #completewith HighborneTablets
    >>Kill |cRXP_ENEMY_Spitelash Battlemasters|r and |cRXP_ENEMY_Spitelash Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    .goto 76,31.877,50.086
    >>Loot the |cRXP_LOOT_Heart of Arkkoroc|r on the ground
    .complete 14487,1 --|1/1 Heart of Arkkoroc
    .use 49629
step
    #label LordKassarus
    .goto 76,35.993,49.836
    >>Kill |cRXP_ENEMY_Lord Kassarus|r
    .complete 14484,1 --Lord Kassarus (1)
    .mob Lord Kassarus
    .use 49629
step
    #label Runestones
    #loop
    .goto 76,34.045,51.533,0
    .goto 76,36.039,47.628,0
    .waypoint 76,30.477,48.782,20,0
    .waypoint 76,32.307,52.460,20,0
    .waypoint 76,34.045,51.533,20,0
    .waypoint 76,34.335,48.192,20,0
    .waypoint 76,36.039,47.628,20,0
    >>Destroy |cRXP_PICK_Spitelash Runestones|r
    >>|cRXP_FRIENDLY_Tinker|r |cRXP_WARN_will set explosives at the Runestones. Defend him from incoming|r |cRXP_ENEMY_Spitelash Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
    .use 49629
step
    #label HighborneTablets
    #loop
    .goto 76,30.114,49.084,0
    .waypoint 76,33.666,47.151,20,0
    .waypoint 76,32.448,48.661,20,0
    .waypoint 76,31.121,48.792,20,0
    .waypoint 76,30.274,48.555,20,0
    .waypoint 76,30.114,49.084,20,0
    .waypoint 76,30.293,50.517,20,0
    .waypoint 76,30.179,51.323,20,0
    .waypoint 76,31.410,52.117,20,0
    .waypoint 76,31.982,51.393,20,0
    .waypoint 76,32.188,53.156,20,0
    .waypoint 76,33.390,51.737,20,0
    .waypoint 76,34.262,49.631,20,0
    .waypoint 76,34.745,47.102,20,0
    >>Loot |cRXP_LOOT_Highborne Tablets|r on the ground
    .complete 14486,1 --Highborne Tablet (12)
    .use 49629
step
    #label SpitelashNagas
    #loop
    .goto 76,30.159,49.817,0
    .waypoint 76,32.789,46.635,60,0
    .waypoint 76,30.596,47.761,60,0
    .waypoint 76,30.159,49.817,60,0
    .waypoint 76,32.387,53.496,60,0
    .waypoint 76,34.325,51.617,60,0
    .waypoint 76,33.899,46.811,60,0
    >>Kill |cRXP_ENEMY_Spitelash Battlemasters|r and |cRXP_ENEMY_Spitelash Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
    .use 49629
step
    .goto 76,34.464,44.727
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Zelks|r
    .turnin 14480 >>Turn in Extermination
    .turnin 14484 >>Turn in Head of the Snake
    .turnin 14485 >>Turn in Ticker Required
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora Halotrix|r
    .turnin 14486 >>Turn in Handling the Goods
    .target Tora Halotrix
step
    .goto 76,34.307,44.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tork|r
    .turnin 14487 >>Turn in Still Beating Heart
    .accept 24449 >>Accept Shore Leave
    .target Captain Tork
step
    .goto 76,34.513,44.512
    .vehicle >>Mount the |cRXP_FRIENDLY_Military Gyrocopter|r
    .timer 32,Shore Leave RP
    .target Military Gyrocopter
    .isOnQuest 24449
step
    .goto 76,60.61,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Bedlam|r
    .turnin 24449 >>Turn in Shore Leave
    .target Uncle Bedlam
step
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r
    .turnin 14407 >>Turn in Azshara Blues
    .target Kalec
step
    .maxlevel 18,NorthAzsharaSkip
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r
    .accept 14130 >>Accept Friends Come In All Colors
    .target Kalec
step
    #completewith next
    .goto 76,70.36,36.25,60 >>Travel toward |cRXP_FRIENDLY_Ergll|r
    >>|cRXP_WARN_You can walk on water for the next 5 minutes|r
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14130 >>Turn in Friends Come In All Colors
    .accept 14131 >>Accept A Little Pick-me-up
    .accept 14132 >>Accept That's Just Rude!
    .accept 14323 >>Accept Absorbent
    .target Ergll
step
    #completewith VileSplashers
    >>Loot |cRXP_PICK_Kawphi Plants|r on the ground for |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #completewith VileSplashers
    >>Kill |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label VileSplashers
    #loop
    .goto 76,75.914,35.559,0
    .goto 76,82.174,40.080,0
    .waypoint 76,75.914,35.559,50,0
    .waypoint 76,77.838,36.335,50,0
    .waypoint 76,80.072,37.683,50,0
    .waypoint 76,82.174,40.080,50,0
    .waypoint 76,79.225,40.686,50,0
    .waypoint 76,76.552,39.047,50,0
    .waypoint 76,75.496,36.880,50,0
    >>Kill |cRXP_ENEMY_Vile Splashes|r. Loot them for their |cRXP_LOOT_Simmering Water Droplets|r
    >>|cRXP_ENEMY_Vile Splashes|r |cRXP_WARN_die instantly when in close proximity|r
    .complete 14323,1 --Simmering Water Droplet (20)
    .mob Vile Splash
step
    #label ObsorbentTurnin
    .turnin 14323 >>Turn in Absorbent
    --.accept 14324 >>Accept Full of Hot Water
step
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Use the|r |T135231:0|t[Engorged Azshari Sea Sponge] |cRXP_WARN_at the|r |cRXP_PICK_Stone of the Scalding Water lords|r
    >>Kill the |cRXP_ENEMY_Scalding Water Lord|r that appears. Loot it for its |cRXP_LOOT_Globe of Boiling Water|r
    .complete 14324,1 --Globe of Boiling Water (1)
    .isOnQuest 14324
step
    #completewith next
    >>Kill |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label KawphiBeans
    #loop
    .goto 76,70.927,35.021,0
    .goto 76,71.424,29.350,0
    .waypoint 76,70.927,35.021,25,0
    .waypoint 76,71.801,34.789,25,0
    .waypoint 76,70.604,32.345,25,0
    .waypoint 76,70.559,28.732,25,0
    .waypoint 76,71.424,29.350,25,0
    .waypoint 76,72.477,29.047,25,0
    >>Loot |cRXP_PICK_Kawphi Plants|r on the ground for |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #loop
    .goto 76,72.885,36.368,0
    .goto 76,70.218,30.672,0
    .waypoint 76,74.209,32.190,60,0
    .waypoint 76,72.885,36.368,60,0
    .waypoint 76,70.218,30.672,60,0
    >>Kill |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Turn in A Little Pick-me-up
    .turnin 14132 >>Turn in That's Just Rude!
    .turnin 14324 >>Turn in Full of Hot Water
    .accept 14345 >>Accept Wash Out
    .target Ergll
    .isQuestComplete 14324
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Turn in A Little Pick-me-up
    .turnin 14132 >>Turn in That's Just Rude!
    .accept 14324 >>Accept Full of Hot Water
    .target Ergll
step
    #optional
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Use the|r |T135231:0|t[Engorged Azshari Sea Sponge] |cRXP_WARN_at the|r |cRXP_PICK_Stone of the Scalding Water lords|r
    >>Kill the |cRXP_ENEMY_Scalding Water Lord|r that appears. Loot it for its |cRXP_LOOT_Globe of Boiling Water|r
    .complete 14324,1 --Globe of Boiling Water (1)
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14324 >>Turn in Full of Hot Water
    .accept 14345 >>Accept Wash Out
    .timer 198,Turtle Ride
    .target Ergll
step << skip
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .vehicle >>Take the Turtle Ride toward the Northern Rocketway Exchange
    .timer 198,Turtle Ride
    .target Ergll
    .skipgossip
    .isOnQuest 14345
step
    #completewith next
    .goto 76,42.71,25.15,80 >>Wait until you arrive at the Northern Rocketway Exchange
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Ergll|r |cRXP_WARN_again to ride the Turtle if this did not happen automatically|r
    .skipgossip
step
    .goto 76,42.71,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorata Firespinner|r
    .turnin 14345 >>Turn in Wash Out
    .accept 14340 >>Accept Dressed to Impress
    .target Sorata Firespinner
step
    #xprate <1.2
    .goto 76,42.61,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .accept 14428 >>Accept Amberwind's Journal
    .target Andorel Sunsworn
step
    #xprate <1.2
    .goto 76,42.41,23.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .accept 14431 >>Accept The Blackmaw Scar
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #loop
    .goto 76,37.967,28.403,0
    .waypoint 76,38.478,26.428,40,0
    .waypoint 76,37.967,28.403,40,0
    .waypoint 76,37.935,31.246,40,0
    .waypoint 76,37.212,34.089,40,0
    >>Kill |cRXP_ENEMY_Talrendis Biologists|r. Loot them for |cRXP_LOOT_Blackmaw Intelligence|r
    .complete 14431,2 --Blackmaw Intelligence (1)
    .complete 14431,1 --Talrendis Biologist (8)
    .mob Talrendis Biologist
step
    #xprate <1.2
    .goto 76,42.408,23.605
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14431 >>Turn in The Blackmaw Scar
    .accept 14432 >>Accept A Pale Brew
    .accept 14433 >>Accept Diplomacy by Another Means
    .target Haggrum Bloodfist
step
    #xprate <1.2
    .goto 76,49.75,28.44
    >>Kill |cRXP_ENEMY_Lorekeeper Amberwind|r. Loot her for |cRXP_LOOT_Amberwind's Journal|r
    .complete 14428,1 --Amberwind's Journal (1)
    .mob Lorekeeper Amberwind
step
    #xprate <1.2
    .goto 76,49.53,28.78
    >>Click the |cRXP_PICK_Upper Scrying Stone|r
    .turnin 14428 >>Turn in Amberwind's Journal
    .accept 14429 >>Accept Arcane De-Construction
step
    #xprate <1.2
    #loop
    .goto 76,52.303,27.112,0
    .goto 76,49.663,28.456,0
    .waypoint 76,50.329,27.556,40,0
    .waypoint 76,52.303,27.112,40,0
    .waypoint 76,51.685,25.068,40,0
    .waypoint 76,49.041,25.544,40,0
    .waypoint 76,49.291,27.335,40,0
    .waypoint 76,49.663,28.456,40,0
    >>Kill |cRXP_ENEMY_Apprentice Investigators|r and |cRXP_ENEMY_Apprentice Illuminators|r. Loot them for their |cRXP_LOOT_Attuned Runestones|r
    .complete 14429,1 --Attuned Runestone (10)
    .mob Apprentice Investigator
    .mob Apprentice Illuminator
step
    #xprate <1.2
    .goto 76,53.02,29.01
    >>Click the |cRXP_PICK_Lower Scrying Stone|r
    .turnin 14429 >>Turn in Arcane De-Construction
    .accept 14430 >>Accept Hacking the Construct
step
    #xprate <1.2
    .goto 76,52.998,29.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcane Construct|r
    .complete 14430,1 --Arcane Construct Hacked (1)
    .target Arcane Construct
    .skipgossip
step
    .goto 76,47.241,20.861
    >>Travel toward the |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .use 49201 >>|cRXP_WARN_Use your|r |T133131:0|t[Dingy Wizard Hat]
    .complete 14340,1 --Approach Archmage Xylem while wearing your Wizard Hat (1)
    .target Image of Archmage Xylem
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14340 >>Turn in Dressed to Impress
    .target Image of Archmage Xylem
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharkul Ironskull|r
    .accept 14250 >>Accept Renewable Resource
    .target Tharkul Ironskull
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Will Robotronic|r
    .accept 14249 >>Accept Shear Will
    .target Will Robotronic
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarla Whistlebreak|r
    .accept 14263 >>Accept Waste of Thyme
    .target Quarla Whistlebreak
step
    #completewith BalboaBlow
    >>Loot |cRXP_LOOT_Living Ire Thyme|r on the ground
    >>|cRXP_WARN_Looting them will give you the|r |T135791:0|t[Living Ire] |cRXP_WARN_buff for 60 seconds (+20% damage dealt and taken, stacks up to 5 times)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #completewith IreThymes
    >>Kill |cRXP_ENEMY_Thunderhead Hippogryphs|r. Loot them for their |cRXP_LOOT_Pristine Thunderhead Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    #label BalboaBlow
    #loop
    .goto 76,53.267,20.867,0
    .goto 76,49.613,19.691,0
    .goto 76,46.529,15.659,0
    .waypoint 76,48.135,17.807,30,0
    .waypoint 76,49.613,19.691,30,0
    .waypoint 76,51.276,20.168,30,0
    .waypoint 76,53.267,20.867,30,0
    .waypoint 76,46.529,15.659,30,0
    .use 49038 >>|cRXP_WARN_Place the|r |T135735:0|t[Arcane Charge] |cRXP_WARN_in front of|r |cRXP_ENEMY_Balboa|r |cRXP_WARN_and have him run into it|r
    >>Loot the |cRXP_LOOT_Animate Basalt|r on the ground after it detonates
    .complete 14250,1 --Animate Basalt (5)
    .unitscan Balboa
step
    #label IreThymes
    #loop
    .goto 76,52.188,19.077,0
    .goto 76,43.846,16.439,0
    .waypoint 76,50.142,16.603,25,0
    .waypoint 76,52.188,19.077,25,0
    .waypoint 76,52.920,22.025,25,0
    .waypoint 76,51.062,23.085,25,0
    .waypoint 76,50.191,23.321,25,0
    .waypoint 76,49.742,22.168,25,0
    .waypoint 76,49.866,18.267,25,0
    .waypoint 76,45.346,16.768,25,0
    .waypoint 76,43.846,16.439,25,0
    .waypoint 76,44.866,15.379,25,0
    .waypoint 76,45.688,13.923,25,0
    .waypoint 76,47.154,13.987,25,0
    >>Loot |cRXP_LOOT_Living Ire Thyme|r on the ground
    >>|cRXP_WARN_Looting them will give you the|r |T135791:0|t[Living Ire] |cRXP_WARN_buff for 60 seconds (+20% damage dealt and taken, stacks up to 5 times)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #loop
    .goto 76,47.293,15.109,0
    .waypoint 76,49.885,15.595,70,0
    .waypoint 76,51.383,18.945,70,0
    .waypoint 76,49.879,21.922,70,0
    .waypoint 76,47.293,15.109,70,0
    .waypoint 76,42.318,18.466,70,0
    >>Kill |cRXP_ENEMY_Thunderhead Hippogryphs|r. Loot them for their |cRXP_LOOT_Pristine Thunderhead Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarla Whistlebreak|r
    .turnin 14263 >>Turn in Waste of Thyme
    .target Quarla Whistlebreak
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Will Robotronic|r
    .turnin 14249 >>Turn in Shear Will
    .target Will Robotronic
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharkul Ironskull|r
    .turnin 14250 >>Turn in Renewable Resource
    .target Tharkul Ironskull
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teresa Spireleaf|r
    .accept 14230 >>Accept Manual Labor
    .target Teresa Spireleaf
step
    .goto 76,47.24,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .accept 14226 >>Accept Trouble Under Foot
    .target Image of Archmage Xylem
step
    #completewith next
    >>Kill |cRXP_ENEMY_Polymorphed Cockroaches|r
    >>|cRXP_WARN_Have your|r |cRXP_FRIENDLY_Personal Arcane Assistant|r |cRXP_WARN_cast|r |T294474:0|t[Polymorph Insect] |cRXP_WARN_on|r |cRXP_ENEMY_Legashi Satyr|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_and|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #loop
    .goto 76,54.474,24.603,0
    .waypoint 76,55.608,23.916,20,0
    .waypoint 76,55.295,25.216,20,0
    .waypoint 76,54.929,24.217,20,0
    .waypoint 76,54.474,24.603,20,0
    >>Loot the |cRXP_PICK_Stolen Manual|r on the ground for the |cRXP_LOOT_Abjurer's Manual|r
    >>|cRXP_WARN_There are multiple|r |cRXP_PICK_Stolen Manuals|r |cRXP_WARN_in the area. The|r |cRXP_FRIENDLY_GREEN|r |cRXP_WARN_looking one contains the|r |cRXP_LOOT_Abjurer's Manual|r
    .complete 14230,1 --Abjurer's Manual (1)
step
    #loop
    .goto 76,54.524,24.092,0
    .waypoint 76,54.524,24.092,40,0
    .waypoint 76,56.003,24.962,40,0
    .waypoint 76,52.415,22.519,40,0
    >>Kill |cRXP_ENEMY_Polymorphed Cockroaches|r
    >>|cRXP_WARN_Have your|r |cRXP_FRIENDLY_Personal Arcane Assistant|r |cRXP_WARN_cast|r |T294474:0|t[Polymorph Insect] |cRXP_WARN_on|r |cRXP_ENEMY_Legashi Satyr|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_and|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #completewith next
    .goto 76,47.098,20.551,30 >>Return to |cRXP_FRIENDLY_Archmage Xylem's|r camp
    >>|cRXP_WARN_Have your|r |cRXP_FRIENDLY_Personal Arcane Assistant|r |cRXP_WARN_cast|r |T135750:0|t[Return to Camp]
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teresa Spireleaf|r
    .turnin 14230 >>Turn in Manual Labor
    .target Teresa Spireleaf
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14226 >>Turn in Trouble Under Foot
    .accept 14413 >>Accept The Pinnacle of Learning
    .timer 30,The Pinnacle of Learning RP
    .target Image of Archmage Xylem
step
    .goto 76,55.71,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14413 >>Turn in The Pinnacle of Learning
    .accept 14296 >>Accept Watch Your Step
    .target Image of Archmage Xylem
step
    #sticky
    #completewith WatchYourStepComplete
    .goto 76,55.375,14.957,0
    +|cRXP_WARN_Keep moving to avoid getting knocked off the mountain! If you do fall off, swim toward|r |cRXP_FRIENDLY_Image of Archmage Xylem|r |cRXP_WARN_to try again|r
    .target Image of Archmage Xylem
    .isOnQuest 14296
    --VV Need video for this quest
step
    .goto 76,55.740,14.745
    .aura 68613 >>Click the first |cRXP_PICK_Energy Conduit|r
    .isOnQuest 14296
step
    .goto 76,56.211,14.735,5,0
    .goto 76,56.887,14.333
    .aura 68613,2+ >>Click the second |cRXP_PICK_Energy Conduit|r
    >>|cRXP_WARN_Move onto the white circles to move upward|r
    .isOnQuest 14296
step
    .goto 76,56.999,14.143,5,0
    .goto 76,57.570,12.867,5,0
    .goto 76,57.569,11.662
    .aura 68613,3+ >>Click the third |cRXP_PICK_Energy Conduit|r
    >>|cRXP_WARN_Move onto the white circles to move upward|r
    .isOnQuest 14296
step
    .goto 76,57.386,11.252,5,0
    .goto 76,56.332,10.492,5,0
    .goto 76,55.486,10.606
    .aura 68613,4+ >>Click the fourth |cRXP_PICK_Energy Conduit|r
    >>|cRXP_WARN_Move onto the white circles to move upward|r
    .isOnQuest 14296
step
    .goto 76,55.306,10.833,5,0
    .goto 76,55.038,12.596,5,0
    .goto 76,55.548,13.104,5,0
    .goto 76,56.295,13.520
    .aura 68613,5+ >>Click the fifth |cRXP_PICK_Energy Conduit|r
    >>|cRXP_WARN_Move onto the white circles to move upward|r
    .isOnQuest 14296
step
    .goto 76,56.450,13.291,5,0
    .goto 76,56.859,11.766,5,0
    .goto 76,56.173,11.077
    .aura 68613,6+>>Click the sixth |cRXP_PICK_Energy Conduit|r
    >>|cRXP_WARN_Move onto the white circles to move upward|r
    .isOnQuest 14296
step
    .goto 76,55.992,11.256,5,0
    .goto 76,55.873,11.860
    >>|cRXP_WARN_Move onto the white circle to move upward|r
    .complete 14296,1 --Arcane Trial Completed (1)
    .isOnQuest 14296
step
    #label WatchYourStepComplete
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14296 >>Turn in Watch Your Step
    .accept 24478 >>Accept The Trial of Frost
    .accept 14300 >>Accept The Trial of Fire
    .accept 24479 >>Accept The Trial of Shadow
    .target Image of Archmage Xylem
step
    #completewith next
    .goto 76,56.049,11.926
    .goto 76,62.104,21.217,20 >>Click the |cRXP_PICK_Frost Portal Zone|r on the ground, then click the portal
step
    #label FrostTrial
    #loop
    .goto 76,62.041,20.249,8,0
    .goto 76,62.168,19.956,8,0
    .goto 76,62.025,19.774,8,0
    .goto 76,61.633,20.002,8,0
    .goto 76,61.487,20.195,8,0
    .goto 76,61.228,20.548,8,0
    .goto 76,61.446,20.978,8,0
    .goto 76,61.665,20.874,8,0
    .goto 76,61.879,20.912,8,0
    .goto 76,62.116,20.756,8,0
    >>Collect 20 stacks of |T252270:0|t[Essence of Ice] by running past the small floating ice clouds
    >>|cRXP_WARN_Avoid the rotating ice blasts and the blue circles on the ground. You lose a stack of|r |T252270:0|t[Essence of Ice] |cRXP_WARN_when hit each time|r
    .complete 24478,1 --Frost Trial Completed (1)
step
    #completewith FireTrial
    .goto 76,62.082,21.121
    .goto 76,56.173,12.079,20 >>Enter the portal
step
    #completewith next
    .goto 76,56.082,11.942
    .goto 76,32.886,23.395,20 >>Click the |cRXP_PICK_Fire Portal Zone|r on the ground, then click the portal
step
    #label FireTrial
    .goto 76,33.339,23.524
    >>Collect 10 stacks of |T252268:0|t[Fire Dancing] by moving from circle to circle whilst avoiding the flames
    >>|cRXP_WARN_The easiest way to do this is by mimicking|r |cRXP_FRIENDLY_Darwin's|r |cRXP_WARN_movements|r
    .complete 14300,1 --Fire Trial Completed (1)
    .target Darwin
step
    #completewith ShadowTrial
    .goto 76,32.896,23.392
    .goto 76,56.173,12.079,20 >>Enter the portal
step
    #completewith ShadowTrial
    .goto 76,56.119,11.959
    .goto 76,31.183,26.715,20 >>Click the |cRXP_PICK_Shadow Portal Zone|r on the ground, then click the portal
step
    #completewith next
    .goto 76,30.792,27.281
    .aura 69863 >>Click the |cRXP_PICK_Purple Stone|r to begin the trial
step
    #label ShadowTrial
    .goto 76,30.930,27.875
    >>Collect 20 stacks of |T252272:0|t[Shadow Bait] by kiting |cRXP_ENEMY_Weeping Souls|r onto the purple circles on the ground
    >>|cRXP_WARN_Avoid getting hit by the|r |cRXP_ENEMY_Weeping Souls|r|cRXP_WARN_. You lose stacks when they attack you|r
    .complete 24479,1 --Shadow Trial Completed (1)
    .mob Weeping Soul
step
    #completewith next
    .goto 76,31.172,26.719
    .goto 76,56.173,12.079,20 >>Click the portal
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 24478 >>Turn in The Trial of Frost
    .turnin 14300 >>Turn in The Trial of Fire
    .turnin 24479 >>Turn in The Trial of Shadow
    .accept 14299 >>Accept Xylem's Asylum
    .target Image of Archmage Xylem
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .gossipoption 111896 >>Ask him to open up the portal to his tower
    .target Image of Archmage Xylem
    .isOnQuest 14299
step
    #completewith next
    .goto 76,56.162,12.079
    .goto 76,22.462,43.582,20 >>Click the portal
step
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joanna|r
    .turnin 14299 >>Turn in Xylem's Asylum
    .accept 14389 >>Accept Wasn't It Obvious?
    .target Joanna
step
    #completewith next
    .goto 76,25.720,37.969
    .goto 76,27.773,40.970,20 >>Click the portal
step
    .goto 76,27.798,40.448
    >>Find |cRXP_FRIENDLY_Anara|r and |cRXP_FRIENDLY_Azuregos|r
    .complete 14389,1 --Find Anara, and hopefully, Azuregos
    .target Anara
    .target Spirit of Azuregos
step
    .turnin 14389 >>Turn in Wasn't It Obvious?
    .accept 14390 >>Accept Easy is Boring
step
    .goto 76,27.79,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azuregos|r
    .complete 14390,1 --Convince Azuregos to meet with Kalecgos
    .target Spirit of Azuregos
    .skipgossip 36436,1
step
    .turnin 14390 >>Turn in Easy is Boring
    .accept 14391 >>Accept Turning the Tables
step
    .goto 76,27.617,39.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anara|r
    .gossipoption 111889 >>Return to life
    .target Anara
    .isOnQuest 14391
step
    #xprate <1.2
    #completewith MeetingAgenda
    >>Kill |cRXP_ENEMY_Talrendis Ambassadors|r. Loot them for |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #completewith AmbRobes
    >>Loot |cRXP_LOOT_Briaroot Brew|r on the ground
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_can also drop|r |cRXP_LOOT_Briaroot Brew|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #label MeetingAgenda
    .goto 76,29.813,38.566
    >>Loot the |cRXP_PICK_Important Documents|r on the ground for the |cRXP_LOOT_Blackmaw Meeting Agenda|r
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
step
    #xprate <1.2
    #label AmbRobes
    #loop
    .goto 76,30.564,37.729,0
    .waypoint 76,29.965,38.504,40,0
    .waypoint 76,30.564,37.729,40,0
    .waypoint 76,31.261,34.060,40,0
    .waypoint 76,32.123,32.756,40,0
    >>Kill |cRXP_ENEMY_Talrendis Ambassadors|r. Loot them for |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #loop
    .goto 76,30.365,37.578,0
    .waypoint 76,29.926,38.784,30,0
    .waypoint 76,30.365,37.578,30,0
    .waypoint 76,31.393,36.065,30,0
    .waypoint 76,31.073,34.994,30,0
    .waypoint 76,31.171,33.729,30,0
    >>Loot |cRXP_LOOT_Briaroot Brew|r on the ground
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_can also drop|r |cRXP_LOOT_Briaroot Brew|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #completewith Diplomatic
    .subzone 4825 >>Travel to the Northern Rocketway Exchange
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14432 >>Turn in A Pale Brew
    .turnin 14433 >>Turn in Diplomacy by Another Means
    .accept 14435 >>Accept The Blackmaw Doublecross
    .target Haggrum Bloodfist
    .maxlevel 20
step
    #xprate <1.2
    #label Diplomatic
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14432 >>Turn in A Pale Brew
    .turnin 14433 >>Turn in Diplomacy by Another Means
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .turnin 14430 >>Turn in Hacking the Construct
    .target Andorel Sunsworn
step
    #xprate <1.2
    #optional
    .goto 76,42.435,23.696
    .aura 69054 >>|cRXP_WARN_Use your|r |T132671:0|t[Ambassador Disguise] |cRXP_WARN_at|r |cRXP_PICK_Haggrum's Smokepit|r
    .use 49368
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .gossipoption 111853 >>Teleport to Blackmaw Hold
    .target Andorel Sunsworn
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,30.986,29.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .complete 14435,1 --Negotiations Sabotaged (1)
    .target Ungarl
    .skipgossip 36618,2,1,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,31.046,29.258,12,0
    .goto 76,31.889,30.192,12,0
    .goto 76,32.188,31.228,12,0
    .goto 76,32.755,32.247
    >>Kill |cRXP_ENEMY_Blackmaw Warriors|r and |cRXP_ENEMY_Blackmaw Shamans|r as you fight your way out of Blackmaw Hold
    .complete 14435,2 --Blackmaw Warrior (4)
    .complete 14435,3 --Blackmaw Shaman (4)
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    #completewith next
    .goto 76,32.755,32.247,12 >> Exit Blackmaw Hold
    .subzoneskip 1216,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14435 >>Turn in The Blackmaw Doublecross
    .target Haggrum Bloodfist
    .isOnQuest 14435
step
    #xprate <1.2
    #completewith next
    .goto 1447/1,-5711.20020,4488.30029,5,0
    .goto 1447/1,-5718.10010,4477.89990,3 >>Take the lift up the platform
step
    #xprate <1.2
    .goto 76,42.526,24.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Bilgewater Rocket-jockey|r
    .gossipoption 112443 >>Take the rocketride to the Northern Rocketway Terminus
    .timer 51,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    #xprate >1.19
    #completewith next
    .goto 76,25.93,49.64,7 >>Travel to the top of the Rocketway platform
step
    #xprate >1.19
    .goto 76,25.93,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Bilgewater Rocket-jockey|r
    .gossipoption 112442 >>Take the rocketride to the Northern Rocketway Terminus
    .timer 83,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    .goto Azshara,66.50,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Blitz Blastospazz|r
    .fp >>Get the Bitter Reaches Flight Path
    .target Blitz Blastospazz
    .isQuestAvailable 14261
step
    .goto 76,66.551,20.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r
    .turnin 14391 >>Turn in Turning the Tables
    .accept 24467 >>Accept Fade to Black
    .target Kalec
step
    .goto 76,66.338,20.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jellix Fuselighter|r
    .accept 14297 >>Accept Pro-liberation
    .target Jellix Fuselighter
step
    .goto 76,66.540,19.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feno Blastnoggin|r
    .accept 14261 >>Accept Ice Cold
    .target Feno Blastnoggin
step
    #completewith FadeToBlack
    >>Kill |cRXP_ENEMY_Twilight Dragon Hunters|r, |cRXP_ENEMY_Twilight Desecrators|r and |cRXP_ENEMY_Sable Drakonids|r. Loot them for their |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Use the |T134245:0|t[Ironwrought Keys] to open |cRXP_PICK_Twilight Cages|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #completewith LaborerRescue
    .use 49596 >>Use your |T133146:0|t[Cryomatic 16] on |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_This will kill them almost instantly|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,71.627,16.433
    >>Kill |cRXP_ENEMY_Twilight Lord Katrana|r
    >>|cRXP_WARN_Ignore|r |cRXP_ENEMY_Malicion|r|cRXP_WARN_. He will get killed by|r |cRXP_FRIENDLY_Kalecgos|r |cRXP_WARN_afterwards|r
    .complete 24467,1 --|1/1 Twilight Lord Katrana slain
    .complete 24467,2 --|1/1 Malicion slain
    .mob Twilight Lord Katrana
step
    #label FadeToBlack
    .goto 76,71.81,16.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r
    .turnin 24467 >>Turn in Fade to Black
    .target Kalecgos
step
    #label LaborerRescue
    #loop
    .goto 76,66.305,13.159,0
    .waypoint 76,69.095,16.926,40,0
    .waypoint 76,67.738,15.850,40,0
    .waypoint 76,66.305,13.159,40,0
    .waypoint 76,64.272,14.953,40,0
    .waypoint 76,64.953,16.437,40,0
    .waypoint 76,65.883,17.840,40,0
    >>Kill |cRXP_ENEMY_Twilight Dragon Hunters|r, |cRXP_ENEMY_Twilight Desecrators|r and |cRXP_ENEMY_Sable Drakonids|r. Loot them for their |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Use the |T134245:0|t[Ironwrought Keys] to open |cRXP_PICK_Twilight Cages|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #loop
    .goto 76,69.901,16.655,0
    .waypoint 76,69.901,16.655,40,0
    .waypoint 76,67.157,14.734,40,0
    .waypoint 76,65.900,16.034,40,0
    .waypoint 76,69.595,19.144,40,0
    .use 49596 >>Use your |T133146:0|t[Cryomatic 16] on |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_This will kill them almost instantly|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,66.541,19.604
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feno Blastnoggin|r
    .turnin 14261 >>Turn in Ice Cold
    .target Feno Blastnoggin
step
    .goto 76,66.338,20.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jellix Fuselighter|r
    .turnin 14297 >>Turn in Pro-liberation
    .target Jellix Fuselighter
step
    .goto 76,67.042,20.595
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azuregos|r
    .accept 14392 >>Accept Farewell, Minnow
    .target Azuregos
step << Druid Cata
    #completewith DruidTraining1
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid Cata
    #label DruidTraining1
    .goto 1450/1,-2593.69995,7867.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step
    #completewith next
    .hs >>Hearth to Bilgewater Harbor
    .use 6948
    .subzoneskip 4821
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Max Avalanche|r
    .trainer >> Train your class spells
    .target Max Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >> Train your class spells
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >> Train your class spells
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >> Train your class spells
    .target Sister Goldskimmer
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stinky Shapshiv|r
    .trainer >> Train your class spells
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >> Train your class spells
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r upstairs
    .trainer >> Train your class spells
    .target Warrior-Matic NX-01
step
    .goto 76,53.264,49.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorata Firespinner|r
    .turnin 14392 >>Turn in Farewell, Minnow
    .target Sorata Firespinner
step
    .goto 76,52.977,49.761
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurlorn|r
    .accept 24497 >>Accept Airborne Again
    .target Gurlorn
step
    .goto 76,60.479,52.205
    .vehicle >>Mount a |cRXP_FRIENDLY_Wings of Steel|r
    .timer 130,Airborne Again RP
    .target Wings of Steel
    .isOnQuest 24497
    --VV No need for this if flight path is available automatically
step
    #completewith next
    +|cRXP_WARN_Remove the|r |T135992:0|t[Parachute] |cRXP_WARN_buff as you arrive to avoid flying into the river|r
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 24497 >>Turn in Airborne Again
    .accept 14462 >>Accept Where's My Head?
    .accept 24433 >>Accept Let Them Feast on Fear
    .target Chawg
    .isOnQuest 24497
step
    #optional
    #label NorthAzsharaSkip
step
    #completewith next
    .goto Azshara,52.92,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .fly Southern Rocketway >>Fly to Southern Rocketway Terminus
    .target Kroum
    .subzoneskip 1237
step
    #completewith next
    .goto Azshara,50.78,74.52,5,0
    .goto Azshara,50.70,74.22,3 >>Take the lift up the platform
step
    .goto Azshara,50.70,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Bilgewater Rocket-jockey|r
    .gossipoption 112434 >>Take the rocketride to the Southern Rocketway Terminus
    .timer 35,Southern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .subzoneskip 1237
    .isQuestAvailable 14392
step
    #completewith next
    .subzone 1237 >>Travel to Valormok
    .isQuestAvailable 14392
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .accept 14462 >>Accept Where's My Head?
    .accept 24433 >>Accept Let Them Feast on Fear
    .target Chawg
step
    .goto 76,13.854,64.479
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .accept 24434 >>Accept Commando Drop
    .target Andorel Sunsworn
step
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .accept 14475 >>Accept Grounded!
    .target Kroum
step
    #completewith next
    >>Kill |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r and |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,14.453,75.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .target Bombardier Captain Smooks
    .turnin 14475 >>Turn in Grounded!
    .accept 14476 >>Accept Rigged to Blow
step
    .goto 76,15.02,74.28
    >>Click |cRXP_PICK_Detonator Charge 1|r on the ground
    .complete 14476,1 --Detonator Charge 1 Armed (1)
step
    .goto 76,15.47,73.72
    >>Click |cRXP_PICK_Detonator Charge 2|r on the ground
    .complete 14476,2 --Detonator Charge 2 Armed (1)
step
    .goto 76,15.57,74.47
    >>Click |cRXP_PICK_Detonator Charge 3|r on the ground
    .complete 14476,3 --Detonator Charge 3 Armed (1)
step
    .goto 76,14.459,75.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .turnin 14476 >>Turn in Rigged to Blow
    .accept 14477 >>Accept Push the Button!
    .target Bombardier Captain Smooks
step
    .goto 76,14.408,75.734
    >>Click |cRXP_PICK_Goblin Detonator|r
    .complete 14477,1 --Detonate the Explosives
step
    #completewith next
    >>Kill |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r and |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,12.517,67.451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky|r
    .turnin 14462 >>Turn in Where's My Head?
    .accept 14464 >>Accept Lightning Strike Assassination
    .target Slinky Sharpshiv
step
    #completewith next
    .goto 76,12.517,67.451
    +|cRXP_WARN_Climb up the tower with Slinky|r
    .target Slinky Sharpshiv
step
    .goto 76,12.01,68.06
    >>Kill |cRXP_ENEMY_Captain Grunwald|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 14464,1 --Grunwald's Head (1)
    .mob Captain Grunwald
step
    #loop
    .goto 76,10.899,70.438,0
    .goto 76,11.481,71.991,0
    .waypoint 76,10.899,70.438,50,0
    .waypoint 76,11.481,71.991,50,0
    .waypoint 76,10.320,73.798,50,0
    .waypoint 76,9.448,71.859,50,0
    >>Kill |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r and |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,10.56,69.85
    >>Click the |cRXP_PICK_Lorekeeper's Summoning Stone|r
    .turnin 24434 >>Turn in Commando Drop
    .target Lorekeeper's Summoning Stone
step
    #completewith next
    .goto 76,10.56,69.85
    >>Click the |cRXP_PICK_Lorekeeper's Summoning Stone|r
    .gossipoption 111875 >>Teleport back to Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,14.350,65.023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .turnin 14477 >>Turn in Push the Button!
    .target Kroum
step
    .goto 76,14.471,65.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
    .accept 24430 >>Accept Blacken the Skies
    .target Jr. Bombardier Hackel
step
    .goto 76,14.455,65.770
    .vehicle >>Mount the |cRXP_FRIENDLY_Grounded Wind Rider|r
    .target Grounded Wind Rider
    .isOnQuest 24430
step
    #completewith next
    >>|cRXP_WARN_Use|r |T133709:0|t[Bomb Toss] |cRXP_WARN_to destroy|r |cRXP_ENEMY_Talrendis Glaive Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    .goto 76,9.239,72.539
    >>|cRXP_WARN_Use|r |T133709:0|t[Bomb Toss] |cRXP_WARN_to destroy the|r |cRXP_ENEMY_Command Center|r
    .complete 24430,2 --Command Center Bombed (1)
step
    #loop
    .goto 76,12.374,72.832,0
    .goto 76,12.825,70.135,0
    .goto 76,11.672,67.149,0
    .goto 76,9.737,69.693,0
    .waypoint 76,12.374,72.832,40,0
    .waypoint 76,12.825,70.135,40,0
    .waypoint 76,11.672,67.149,40,0
    .waypoint 76,9.737,69.693,40,0
    >>|cRXP_WARN_Use|r |T133709:0|t[Bomb Toss] |cRXP_WARN_to destroy|r |cRXP_ENEMY_Talrendis Glaive Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    #completewith next
    .goto 76,14.471,65.721,50 >>Fly back toward |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
step
    .goto 76,14.471,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
    .turnin 24430 >>Turn in Blacken the Skies
    .target Jr. Bombardier Hackel
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 24433 >>Turn in Let Them Feast on Fear
    .turnin 14464 >>Turn in Lightning Strike Assassination
    .accept 24439 >>Accept The Conquest of Azshara
    .target Chawg
step
    .goto 76,9.15,72.82
    >>Kill |cRXP_ENEMY_Commander Jarrodenus|r on the second floor of the building
    .complete 24439,1 --The Head of Jarrodenus (1)
    .mob Commander Jarrodenus
step
    #completewith next
    .goto 76,10.56,69.85
    >>Click the |cRXP_PICK_Lorekeeper's Summoning Stone|r
    .gossipoption 111875 >>Teleport back to Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 24439 >>Turn in The Conquest of Azshara
    .target Chawg
step
    .goto 76,14.345,65.025
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .accept 24463 >>Accept Probing into Ashenvale
    .target Kroum
step
    #completewith next << !Warlock !Paladin
    #completewith FelsteedTraining << Warlock
    #completewith WarhorseTraining << Paladin
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Kroum
    .zoneskip Orgrimmar
step
    .goto 1454/1,-4356.80029,1799.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maztha|r
    .train 33388 >>Train Apprentice Riding
    .target Maztha
    .xp <20,1
    .train 33391,1 --Journeyman Riding
    .train 34090,1 --Expert Riding
    .train 34091,1 --Artisan Riding
    .train 90265,1 --Master Riding
step << Orc !Warlock
    .goto 1454/1,-4569.50000,2095.10010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogunaro Wolfrunner|r
	.vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[Wolf] |cRXP_BUY_from him if you do not have a mount in your collection yet|r
	.target Ogunaro Wolfrunner
	.mountcount 75-150,<1
    .xp <20,1
step << Goblin !Warlock
    .goto 1454/1,-4132.89990,1483.09998
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kall Worthaton|r
	.vendor >>|cRXP_BUY_Buy a|r |T134237:0|t[Trike] |cRXP_BUY_from him if you do not have a mount in your collection yet|r
	.target Kall Worthaton
	.mountcount 75-150,<1
    .xp <20,1
step << !Orc !Goblin !Warlock !Paladin
    .goto 1454/1,-4439.39990,1573.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryshka|r
    .home >>Set your hearthstone to Orgrimmar
    .target Gryshka
	.mountcount 75-150,<1
step << Troll !Warlock
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Sen'Jin Village >>Fly to Sen'Jin Village
    .target Doras
    .subzoneskip 367
step << Troll !Warlock
    .goto 1411/1,-4882.50000,-857.90002
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zjolnir|r
	.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[Raptor] |cRXP_BUY_from him if you do not have a mount in your collection yet|r
	.target Zjolnir
	.mountcount 75-150,<1
    .xp <20,1
step << Undead/BloodElf !Warlock
    .goto 1454/1,-4390.80029,1840.09998
    #completewith next << Undead
    #completewith SilvermoonPort << BloodElf
    .zone Tirisfal Glades >>Take the zeppelin to Tirisfal Glades
    .zoneskip Undercity
step << Undead !Warlock
    .goto 1420/0,235.70000,2277.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zachariah Post|r
	.vendor >>|cRXP_BUY_Buy a|r |T132264:0|t[Skeletal Horse] |cRXP_BUY_from him if you do not have a mount in your collection yet|r
	.target Zachariah Post
	.mountcount 75-150,<1
    .xp <20,1
step << BloodElf !Warlock
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Travel to Undercity
step << BloodElf !Warlock
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Click the |cRXP_PICK_Orb of Translocation|r to Silvermoon City
    .mountcount 75,<1
step << BloodElf !Warlock
    #completewith next
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059,15,0
    .zone Eversong Woods >>Exit Silvermoon City
step << BloodElf !Warlock
    .goto 1941/0,-5096.30029,6844.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winaestra|r
	.vendor >>|cRXP_BUY_Buy a|r |T132227:0|t[Hawkstrider] |cRXP_BUY_from her if you do not have a mount in your collection yet|r
	.target Winaestra
	.mountcount 75-150,<1
    .xp <20,1
step << Tauren !Paladin
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Doras
    .zoneskip Thunder Bluff
    .zoneskip Mulgore
step << Tauren !Paladin
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Take the elevator to exit Thunder Bluff
    .zoneskip Mulgore
step << Tauren !Paladin
    .goto 1412/1,-392.20001,-2280.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb Clawhoof|r
	.vendor >>|cRXP_BUY_Buy a|r |T132243:0|t[Kodo] |cRXP_BUY_from her if you do not have a mount in your collection yet|r
	.target Harb Clawhoof
	.mountcount 75-150,<1
    .xp <20,1
step << Warlock Cata
    #label FelsteedTraining
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 5784 >>Train |T136103:0|t[Felsteed]
    .target Mirket
    .mountcount 75-150,<1
step << Paladin Cata
    #label WarhorseTraining
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atohmo|r
    .train 34769 >>Train |T136103:0|t[Summon Warhorse] << BloodElf
    .train 69820 >>Train |T132245:0|t[Summon Sunwalker Kodo] << Tauren
    .target Sunwalker Atohmo
    .mountcount 75-150,<1
step << !Orc !Goblin !Warlock !Paladin
    #optional
    #completewith FlyValormok
    .hs >>Hearth to Orgrimmar
    .use 6948
    .zoneskip Azshara
    .zoneskip Orgrimmar
    .zoneskip Ashenvale
step << Warrior/Paladin
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,24463,1 --Battle Axe (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Buy|r |T132941:0|t[Right-Handed Claw] |cRXP_BUY_and|r |T132941:0|t[Left-Handed Claw] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Skip this step if you did not take Enhancement specialization!|r
    .collect 15903,1,24463,1 --Collect Right-Handed Claw (1)
    .collect 15907,1,24463,1 --Collect Left-Handed Claw (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
    .target Shoma
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Buy a|r |T135419:0|t[Longsword] |cRXP_BUY_from him. Equip it once you are level 21|r
    >>|cRXP_WARN_Buy a|r |T135342:0|t[Kris] |cRXP_WARN_instead if you have Assasination or Subtlety specialization|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >21,1
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Buy a|r |T135419:0|t[Longsword] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Buy a|r |T135342:0|t[Kris] |cRXP_WARN_instead if you have Assasination or Subtlety specialization|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
    .zoneskip Orgrimmar,1
step << Warrior/Paladin
    #optional
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Equip the |T132941:0|t[Right-Handed Claw]
    .use 15903
    .itemcount 15903,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Equip the |T132938:0|t[Left-Handed Claw]
    .use 15907
    .itemcount 15907,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equip the|r |T135419:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equip the|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step
    #label FlyValormok
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Valormok >>Fly to Valormok
    .target Doras
    .zoneskip Azshara
    .zoneskip Ashenvale
step
    #completewith next
    .zone Ashenvale >>Cross the bridge into Ashenvale
step
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kulg Gorespatter|r
    .turnin 24463 >>Turn in Probing into Ashenvale
    .accept 13866 >>Accept To The Ramparts!
    .target Kulg Gorespatter
step
    #label AzsharaEnd
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kulg Gorespatter|r
    .gossipoption 111683 >>Fly to The Mor'Shan Ramparts
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .isOnQuest 13866
step
    #optional
    .abandon 14407 >>Abandon Azshara Blues
    ]])
