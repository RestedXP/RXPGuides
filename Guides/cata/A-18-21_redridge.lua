local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#mop
#name 15-20 Redridge
#displayname 18-21 Redridge
#next 20-25 Duskwood
<<Alliance

--TODO: Figure out how flight paths work while leveling
--FPs from lower level zones are supposed to open up as you level: https://youtu.be/9Y_PE0Wb4IM?si=H5H-FVQ-5StEQUfI&t=929

step << NightElf/Draenei/Worgen
    .goto 62,51.716,17.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teldira Moonfeather|r
    .target Teldira Moonfeather
    .fly Rut'theran Village >>Fly to Rut'theran Village
    .zoneskip Darkshore,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Go through the portal to Darnassus
    .train 33388,1
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Go through the portal to Darnassus
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.497,32.595
    >>Talk to |cRXP_FRIENDLY_Lelanai|r
    +|cRXP_BUY_Buy a|r |T132267:0|t[Saber] |cRXP_BUY_mount, you won't be able to use it until level 20, keep it in your bags for later|r
    .target Lelanai
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.782,32.919
    >>Talk to |cRXP_FRIENDLY_Jartsam|r
    .train 33388 >> Train Apprentice Riding
    .target Jartsam
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 89,36.547,50.413
    .zone 57 >>Go back through the portal to Rut'Theran Village
    .zoneskip 89,1
step << Draenei
    .goto 57,52.30,89.50
    .zone Azuremyst Isle >> Take the boat to Azuremyst Isle
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto Azuremyst Isle,81.497,51.456
    >>Talk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    +Buy an Elekk, you won't be able to use it until level 20, keep it in your bags for later
    .target Torallius the Pack Handler
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto 89,81.348,52.623
    >>Talk to |cRXP_FRIENDLY_Aalun|r
    .train 33388 >> Train Apprentice Riding
    .target Aalun
    .money <3.6000
    .xp <20,1
    .zoneskip Azuremyst Isle,1
step << Draenei
    .goto Azuremyst Isle,20.41,54.18
    .zone 57 >> Take the boat back to Rut'theran Village
    .zoneskip Azuremyst Isle,1
step << NightElf/Draenei/Worgen
    .goto 57,55.037,93.677,25,0
    .goto 57,55.037,93.677,0
    .zone Stormwind City >> Take the boat to Stormwind
step << Gnome/Dwarf
#completewith next
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Kharanos >> Fly to Kharanos << Gnome
    .fly Gol'Bolar Quarry >> Fly to Gol'Bolar Quarry << Dwarf
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Gnome
    .goto 1426/0,-618.400,-5451.100
    >>Talk to |cRXP_FRIENDLY_Milli Featherwhistle|r
    +|cRXP_BUY_Buy a|r |T132247:0|t[Mechanostrider] |cRXP_BUY_mount, you won't be able to use it until level 20, keep it in your bags for later|r
    .target Milli Featherwhistle
    .mountcount 0-150,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Dwarf
    .goto 1426/0,-1322.500,-5539.800
    >>Talk to |cRXP_FRIENDLY_Veron Amberstill|r
    +|cRXP_BUY_Buy a|r |T132248:0|t[Ram] |cRXP_BUY_mount, you won't be able to use it until level 20, keep it in your bags for later|r
    .target Veron Amberstill
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
step << Human/Dwarf/Gnome
    .goto 48,33.938,50.932,-1
    .goto 1426/0,-497.200,-5663.700,-1 << Gnome
    .goto 1426/0,-1578.000,-5718.000,-1 << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Stormwind >> Fly to Stormwind
    .target Thorgrum Borrelson
    .target Brolan Galebeard << Gnome
    .target Dominic Galebeard << Dwarf
    .zoneskip Stormwind City
    .zoneskip Elwynn Forest
    .zoneskip Redridge Mountains
step
    .goto Stormwind City,62.875,71.490
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28563 >>Accept Hero's Call: Redridge Mountains!
    >>|cRXP_WARN_Skip this step if you are not being offered this quest|r
    .isQuestAvailable 26504
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp <21,1
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from her. Equip when you are level 21|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp >21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp <21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from her. Equip when you are level 21|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp >21,1
step << Shaman
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T132415:0|t[Double Axe] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 927,1 -- Double Axe (1)
    .money <0.5911
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lina Stover|r
    >>|cRXP_BUY_Buy a|r |T135612:0|t[BKP 2700 "Enforcer"] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp <21,1
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lina Stover|r
    >>|cRXP_BUY_Buy a|r |T135612:0|t[BKP 2700 "Enforcer"] |cRXP_BUY_from her. Equip when you are level 21|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp >21,1
step << Warrior/Paladin
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Rogue
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Shaman
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equip the|r |T132415:0|t[Double Axe]
    .use 927
    .itemcount 927,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Hunter
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equip the|r |T135612:0|t[BKP 2700 "Enforcer"]
    .use 3024
    .itemcount 3024,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
    #optional
    #completewith next
    .goto 84,64.55,70.61,15,0
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >> Travel toward |cRXP_FRIENDLY_Dungar Longdrink|r
    .noflyable --Azeroth Flying
step
    #completewith EnterRR
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Eastvale Logging Camp >> Fly to Eastvale Logging Camp
	.target Dungar Longdrink
    .zoneskip 49 --Redridge Mountains
step
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Hunter|r
    .train 33388 >> Train Apprentice Riding
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step << Human
    .train 33388,3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie Hunter|r
    +|cRXP_BUY_Buy a|r |T132261:0|t[Horse] |cRXP_BUY_from her|r
    .money <0.08
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    #label EnterRR
    .goto 49,11.78,64.40
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .isQuestAvailable 26504
step
    #optional
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Lakeshire >> Get the Lakeshire flight path
    .target Ariena Stormfeather
    .xp <21,1
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 49,16.032,64.633
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 26504 >>Accept WANTED: Redridge Gnolls
step
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy Parker|r inside
    .accept 26506 >>Accept Franks and Beans
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Captain Parker|r atop Tower Watch
    .turnin 28563 >>Turn in Hero's Call: Redridge Mountains!
    .accept 26503 >>Accept Still Assessing the Threat
    .target Watch Captain Parker
    .isOnQuest 28563
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Captain Parker|r atop Tower Watch
    .accept 26503 >>Accept Still Assessing the Threat
    .target Watch Captain Parker
step
    #optional
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,13.543,66.732,50,0
    .goto 49,12.566,69.384,50,0
    .goto 49,14.471,75.116,50,0
    .goto 49,15.220,73.203,50,0
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Tarantula Eyes|r
    >>Kill the |cRXP_ENEMY_Dire Condors|r flying above or sitting on perches. Loot them for their |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1,2 --Tarantula Eyes (2/4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .disablecheckbox
    .unitscan Dire Condor
    .mob Tarantula
    .maxlevel 20
step
    #completewith GnollGuide
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Tarantula Eyes|r
    >>Kill |cRXP_ENEMY_Dire Condors|r flying above or sitting on perches. Loot them for their |cRXP_LOOT_Condor Giblets|r
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Kidneys|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .complete 26506,3 --Goretusk Kidney (4)
    .mob +Great Goretusk
    .maxlevel 20
step
    #completewith Kidneys
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Kill |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, and |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #optional
    #completewith next
    .goto 49,23.281,68.320,50,0
    .goto 49,28.028,74.887,30 >>Travel toward the |cRXP_PICK_Gnoll Orders|r
    .noflyable --Azeroth Flying
step
    #label GnollOrders
    .goto 49,28.028,74.887
    >>Loot the |cRXP_PICK_Gnoll Orders|r on the barrel
    .complete 26503,2 --Gnoll Orders (1)
step
    #label GnollGuide
    .goto 49,30.563,62.710
    >>Loot the |cRXP_PICK_Gnoll Strategy Guide|r on the ground
    .complete 26503,3 --Gnoll Strategy Guide (1)
step
    #label Kidneys
    #loop
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    .goto 49,27.403,59.815,50,0
    .goto 49,29.142,56.606,50,0
    .goto 49,32.433,54.249,50,0
    .goto 49,33.624,57.701,50,0
    .goto 49,35.378,64.225,50,0
    .goto 49,32.309,63.674,50,0
    .goto 49,29.952,64.571,50,0
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Kidneys|r
    .complete 26506,3 --Goretusk Kidney (4)
    .mob Great Goretusk
    .maxlevel 20
step
    #optional
    #completewith RRGnolls
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Tarantula Eyes|r
    >>Kill |cRXP_ENEMY_Dire Condors|r flying above or sitting on perches. Loot them for their |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .maxlevel 20
step
    #optional
    #completewith next
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Kill |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, and |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #label GnollPlans
    .goto 49,16.203,55.263
    >>Loot the |cRXP_PICK_Gnoll Battle Plans|r on the ground
    .complete 26503,1 --Gnoll Battle Plans (1)
step
    #label RRGnolls
    #loop
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    .goto 49,16.188,59.307,50,0
    .goto 49,18.410,58.985,50,0
    .goto 49,17.988,55.657,50,0
    .goto 49,15.728,54.280,50,0
    .goto 49,16.049,56.984,50,0
    >>Kill |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, and |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #sticky
    #label Eyes
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .waypoint 49,13.543,66.732,40,0
    .waypoint 49,12.566,69.384,40,0
    .waypoint 49,14.471,75.116,40,0
    .waypoint 49,15.220,73.203,40,0
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Tarantula Eyes|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob Tarantula
    .maxlevel 20
step
    #loop
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,16.461,54.587,40,0
    .goto 49,20.199,58.665,40,0
    .goto 49,20.881,65.321,40,0
    .goto 49,20.123,66.613,40,0
    .goto 49,16.993,63.436,40,0
    .goto 49,13.697,68.732,40,0
    .goto 49,13.265,62.483,40,0
    >>Kill |cRXP_ENEMY_Dire Condors|r flying above or sitting on perches. Loot them for their |cRXP_LOOT_Condor Giblets|r
    .complete 26506,2 --Condor Giblets (4)
    .unitscan Dire Condor
    .maxlevel 20
step
    #requires Eyes
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy Parker|r inside
    .turnin 26506 >>Turn in Franks and Beans
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Captain Parker|r atop Tower Watch
    .turnin 26504 >>Turn in WANTED: Redridge Gnolls
    .turnin 26503 >>Turn in Still Assessing the Threat
    .accept 26505 >>Accept Parker's Report
    .target Watch Captain Parker
step
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Lakeshire >> Get the Lakeshire flight path
    .target Ariena Stormfeather
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #optional
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r
    .accept 26508 >>Accept Nida's Necklace
    .target Shawn
    .flyable --Azeroth Flying
step
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r whilst you're on the dock
    .accept 26508 >>Accept Nida's Necklace
    .target Shawn
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Enter the Lakeshire Town Hall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r and |cRXP_FRIENDLY_Magistrate Solomon|r inside
    .accept 26511 >>Accept Lake Everstill Clean Up
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26505 >>Turn in Parker's Report
    .accept 26510 >>Accept We Must Prepare!
    .goto 49,28.910,41.111
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Exit the Lakeshire Town Hall
step
    #sticky
    #label EverstillMurlocs
    #loop
    .goto 49,37.818,42.158,0
    .goto 49,39.626,46.404,0
    .waypoint 49,36.095,45.006,40,0
    .waypoint 49,36.580,43.202,40,0
    .waypoint 49,37.798,41.157,40,0
    .waypoint 49,38.840,41.673,40,0
    .waypoint 49,40.457,44.698,40,0
    .waypoint 49,42.557,47.125,40,0
    .waypoint 49,40.397,48.986,40,0
    .waypoint 49,36.943,50.290,40,0
    .waypoint 49,36.640,46.754,40,0
    >>Kill |cRXP_ENEMY_Murloc Flesheaters|r and |cRXP_ENEMY_Murloc Scouts|r
    .complete 26511,1 --Lake Everstill Murloc (10)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 49,37.818,42.158
    >>Loot the |cRXP_PICK_Gnomecorder|r on the ground
    .complete 26510,1 --Gnomecorder (1)
step
    #optional
    #requires EverstillMurlocs
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Enter the Lakeshire Town Hall
step
    #requires EverstillMurlocs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r and |cRXP_FRIENDLY_Magistrate Solomon|r inside
    .turnin 26511 >>Turn in Lake Everstill Clean Up
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26510 >>Turn in We Must Prepare!
    .accept 26512 >>Accept Tuning the Gnomecorder
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Exit the Lakeshire Town Hall
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 26513 >>Accept Like a Fart in the Wind
    .target Marshal Marris
step
    .goto 49,32.330,39.544
	>>|cRXP_WARN_Travel to the Lakeshire graveyard|r
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
    .turnin 26512 >>Turn in Tuning the Gnomecorder
    .accept 26514 >>Accept Canyon Romp
--TODO: Quest is an auto turnin/pickup from the quest log, research how to automate it
--XX     >>|cRXP_WARN_Click the pop-up in your questlog|r
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #sticky
    #label DirtScroll
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Kill |cRXP_ENEMY_Redridge Gnolls|r. Loot them for the |T134944:0|t|cRXP_LOOT_[Dirt-Stained Scroll]|r
    >>|cRXP_WARN_Use the |T134944:0|t|cRXP_LOOT_[Dirt-Stained Scroll]|r to start the quest|r
    .collect 58898,1,26519,1 --Dirt-Stained Scroll (1)
    .accept 26519 >>Accept He Who Controls the Ettins
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .use 58898
step
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .goto 49,36.305,30.502,50,0
    .goto 49,32.496,24.909,50,0
    .goto 49,30.051,28.018,50,0
    .goto 49,27.453,27.292,50,0
    .goto 49,27.470,34.077,50,0
    .goto 49,21.637,34.274,50,0
    .goto 49,23.390,26.005,50,0
    >>Loot the |cRXP_LOOT_Redridge Supply Crates|r on the ground
    >>Kill |cRXP_ENEMY_Redridge Drudgers|r, |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Redridge Bashers|r, |cRXP_ENEMY_Redridge Alphas|r, and |cRXP_ENEMY_Redridge Brutes|r. Loot them for their |cRXP_LOOT_Redridge Gnoll Collars|r
    >>|cRXP_WARN_Avoid pulling the |cRXP_ENEMY_Canyon Ettins|r that patrol the area|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .disablecheckbox
    .complete 26514,1 --Redridge Gnoll Collar (10)
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .unitscan Canyon Ettin
step
    .goto 49,20.431,26.655
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 26514 >>Turn in Canyon Romp
    .accept 26544 >>Accept They've Wised Up...
--TODO: Auto turn in, research how to automate it
step
    #optional
    #completewith next
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    >>Loot the |cRXP_LOOT_Redridge Supply Crates|r on the ground
    >>|cRXP_WARN_Avoid pulling the |cRXP_ENEMY_Canyon Ettins|r that patrol the area|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #completewith Ardo
    #requires DirtScroll
    .goto 49,20.431,26.655
    .subzone 98 >> Enter the Rethban Caverns
    .isOnQuest 26544
step
    #sticky
    #requires DirtScroll
    #label Missive1
    #loop
    .goto 49,20.337,15.044,0
    .goto 49,22.424,17.323,0
    .goto 49,22.425,21.890,0
    .goto 49,21.588,23.647,0
    .goto 49,19.525,24.078,0
    .goto 49,20.141,21.509,0
    .goto 49,16.783,19.487,0
    .waypoint 49,20.337,15.044,20,0
    .waypoint 49,22.424,17.323,20,0
    .waypoint 49,22.425,21.890,20,0
    .waypoint 49,21.588,23.647,20,0
    .waypoint 49,19.525,24.078,20,0
    .waypoint 49,20.141,21.509,20,0
    .waypoint 49,16.783,19.487,20,0
    >>Kill |cRXP_ENEMY_Blackrock Overseers|r inside Rethban Caverns. Loot them for the |cRXP_LOOT_Blackrock Orc Missive|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob *Blackrock Overseer
step
    #sticky
    #label Missive2
    #requires Missive1
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 26544 >>Turn in They've Wised Up...
    .accept 26545 >>Accept Yowler Must Die!
step
    #optional
    #completewith next
    #requires DirtScroll
    .goto 49,19.502,24.380,20,0
    .goto 49,18.121,22.037,20,0
    .goto 49,17.650,17.871,20,0
    .goto 49,19.884,17.025,15 >>Travel toward |cRXP_ENEMY_Ardo Dirtpaw|r inside Rethban Caverns
step
    #requires DirtScroll
    #label Ardo
    >>Kill |cRXP_ENEMY_Ardo Dirtpaw|r. Click the |cRXP_PICK_Ettin Control Orb|r next to him
    .complete 26519,1 --Ardo Dirtpaw (1)
    .goto 49,18.432,18.172
    .mob +Ardo Dirtpaw
    .turnin 26519 >>Turn in He Who Controls the Ettins
    .accept 26520 >>Accept Saving Foreman Oslow
    .goto 49,17.841,18.619
step
    #requires Missive1
    .goto 49,20.431,26.655,25,0
    .goto 49,21.318,27.426,40 >>Exit the Rethban Caverns
    .isOnQuest 26520
    .zoneskip 49,1 --Redridge Mountains
step
    #sticky
    #label SupplyCrates
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Loot the |cRXP_LOOT_Redridge Supply Crates|r on the ground
    >>|cRXP_WARN_Avoid pulling the |cRXP_ENEMY_Canyon Ettins|r that patrol the area|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #requires Missive2
    .goto 49,26.870,21.977
    >>Kill |cRXP_ENEMY_Yowler|r. Loot him for the |cRXP_LOOT_Blackrock Invasion Plans|r
    .complete 26545,1 --Yowler (1)
    .complete 26545,2 --Blackrock Invasion Plans (1)
    .mob Yowler
step
    #completewith next
    #requires SupplyCrates
    #loop
    .goto 49,23.859,29.302,0
    .goto 49,22.766,34.745,0
    .goto 49,24.022,35.828,0
    .goto 49,28.492,36.235,0
    .goto 49,27.799,30.853,0
    .line 49,23.859,29.302,23.973,30.595,23.762,32.089,22.766,34.745,23.014,35.134,23.619,34.381,24.022,35.828,25.529,35.789,26.902,36.339,28.492,36.235,28.357,34.410,27.054,32.432,27.799,30.853,27.502,28.865,26.595,28.355,25.013,28.408
    .goto 49,23.859,29.302,50,0
    .goto 49,23.973,30.595,50,0
    .goto 49,23.762,32.089,50,0
    .goto 49,22.766,34.745,50,0
    .goto 49,23.014,35.134,50,0
    .goto 49,23.619,34.381,50,0
    .goto 49,24.022,35.828,50,0
    .goto 49,25.529,35.789,50,0
    .goto 49,26.902,36.339,50,0
    .goto 49,28.492,36.235,50,0
    .goto 49,28.357,34.410,50,0
    .goto 49,27.054,32.432,50,0
    .goto 49,27.799,30.853,50,0
    .goto 49,27.502,28.865,50,0
    .goto 49,26.595,28.355,50,0
    .goto 49,25.013,28.408,50,0
    .cast 80704 >> Whilst standing still, use the |T332402:0|t[Ettin Control Orb] on a |cRXP_ENEMY_Canyon Ettin|r
    .use 58895
    .unitscan Canyon Ettin
    .isOnQuest 26520
step
    #requires SupplyCrates
    .goto 49,31.480,44.344
    >>Travel toward |cRXP_FRIENDLY_Foreman Oslow|r. Use the |T332402:0|t[Ettin Control Orb] next to him whilst you control a |cRXP_FRIENDLY_Subdued Canyon Ettin|r
    .complete 26520,1 --Foreman Oslow Saved (1)
    .use 58895
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 26513 >>Turn in Like a Fart in the Wind
    .target Marshal Marris
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Enter the Lakeshire Town Hall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r and |cRXP_FRIENDLY_Colonel Troteman|r inside
    .turnin 26545 >>Turn in Yowler Must Die!
    .turnin 26520 >>Turn in Saving Foreman Oslow
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    .accept 26567 >>Accept John J. Keeshan
    .goto 49,28.659,40.744,5,0
    .goto 49,28.892,40.894,5,0
    .goto 49,28.659,40.744
    .target +Colonel Troteman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    >>|cRXP_WARN_If you already accepted the Hero's Call: Duskwood! quest earlier from Stormwind, skip this step|r
    .accept 26728 >>Accept Hero's Call: Duskwood!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r and |cRXP_FRIENDLY_Magistrate Solomon|r inside
    .accept 26728 >>Accept Hero's Call: Duskwood!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26545 >>Turn in Yowler Must Die!
    .turnin 26520 >>Turn in Saving Foreman Oslow
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    --XX Level 19/20 xp gate needed? (Hero's Call req is 19)
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Exit the Lakeshire Town Hall
------Skip/remove section if Keeshan added
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Accept An Unwelcome Guest
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot her for |cRXP_LOOT_Bellygrub's Tusk|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Swim underwater and check the spawn locations. There are 10 locations with 2 spawns up at once|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Nida's Necklace|r
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Eastvale Logging Camp >> Fly to Eastvale Logging Camp
	.target Ariena Stormfeather
step << Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie Hunter|r
    +|cRXP_BUY_Buy a|r |T132261:0|t[Horse] |cRXP_BUY_from her|r
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    .train 33388,1
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Hunter|r
    .train 33388 >> Train Apprentice Riding
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step
    .train 33388,3
    .goto 37,81.830,66.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goss the Swift|r
    .fly Lakeshire, Redridge >> Fly to Lakeshire
	.target Goss the Swift
    .zoneskip 37,1
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Turn in Nida's Necklace
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nida|r whilst you're on the dock
    .turnin 26508 >>Turn in Nida's Necklace
    .target Nida
    .noflyable --Azeroth Flying
------XX Optional Section
step
    #optional
    #completewith KeeshanStart
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Enter the Lakeshire Inn
step
    .goto 49,26.393,41.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Brianna|r
    .home >> Set your Hearthstone to Lakeshire
    .target Innkeeper Brianna
    .isOnQuest 26567
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Go into the backroom, then go downstairs toward |cRXP_FRIENDLY_John J. Keeshan|r
step
    #label KeeshanStart
    .goto 49,26.297,40.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r in the Lakeshire Inn basement
    .turnin 26567 >>Turn in John J. Keeshan
    .accept 26568 >>Accept This Ain't My War
    .target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,25.990,42.754,10 >> Exit the Lakeshire Inn --Exiting West (OPTIONAL SECTION)
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Accept An Unwelcome Guest
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot her for |cRXP_LOOT_Bellygrub's Tusk|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Swim underwater and check the spawn locations. There are 10 locations with 2 spawns up at once|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Nida's Necklace|r
    .complete 26508,1 --Nida's Necklace (1)
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Turn in Nida's Necklace
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nida|r whilst you're on the dock
    .turnin 26508 >>Turn in Nida's Necklace
    .target Nida
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Enter the Lakeshire Town Hall
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r inside
    .turnin 26568 >>Turn in This Ain't My War
    .accept 26571 >>Accept Weapons of War
    .accept 26586 >>Accept In Search of Bravo Company
    .target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Exit the Lakeshire Town Hall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r and |cRXP_FRIENDLY_Marshal Marris|r
    .accept 26569 >>Accept Surveying Equipment
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .accept 26570 >>Accept Render's Army
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
	#completewith Render
    .goto 49,44.299,30.816,0
    .goto 49,41.458,35.639,0
    .goto 49,44.548,35.896,0
    .goto 49,47.950,33.981,0
    .goto 49,47.671,40.994,0
    .goto 49,51.823,42.459,0
    .goto 49,53.901,37.198,0
	>>Kill |cRXP_ENEMY_Blackrock Renegades|r and |cRXP_ENEMY_Blackrock Scouts|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Scout
	.mob Blackrock Renegade
step
    #completewith Messner1
    .goto 49,39.751,37.234,50,0
    .goto 49,44.242,39.198,50,0
    .goto 49,47.119,41.138,15,0
    .goto 49,47.529,41.955,12 >>Travel toward |cRXP_FRIENDLY_Messner|r
    .noflyable --Azeroth Flying
step
    #label Messner1
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r in the cage
    .turnin 26586 >>Turn in In Search of Bravo Company
    .accept 26587 >>Accept Breaking Out is Hard to Do
    .target Messner
step
	>>Kill |cRXP_ENEMY_Murdunk|r and |cRXP_ENEMY_Homurk|r. Loot them for |cRXP_LOOT_Keeshan's Bow|r and |cRXP_LOOT_Keeshan's Survival Knife|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .goto 49,51.525,41.398
	.mob +Homurk
    .complete 26571,1 --Keeshan's Bow (1)
    .goto 49,51.681,41.330
	.mob +Murdunk
step
    #sticky
    #label Heart
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 26571 >>Turn in Weapons of War
    .accept 26573 >>Accept His Heart Must Be In It
step
    .goto 49,49.234,38.005
    >>Open |cRXP_PICK_Blackrock Key Pouch|r in the stump. Loot it for |cRXP_LOOT_Messner's Cage Key|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Blackrock Worg Captain|r and |cRXP_ENEMY_Blackrock Battle Worgs|r|r
    .complete 26587,1 --Messner's Cage Key (1)
	.unitscan Blackrock Worg Captain
    .mob Blackrock Battle Worg
step
    #requires Heart
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r in the cage and when he reappears next to you
    .turnin 26587 >>Turn in Breaking Out is Hard to Do
    .timer 3,Messner RP
    .accept 26560 >>Accept Jorgensen
	.target Messner
step
    #optional
    #label Render
    .goto 49,44.518,27.137,70 >>Travel toward the outskirts of Render's Camp
    .isOnQuest 26560
    .noflyable --Azeroth Flying
step
    #completewith Danforth
    #label Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Kill |cRXP_ENEMY_Blackrock Summoners|r and |cRXP_ENEMY_Blackrock Trackers|r. Loot the |cRXP_ENEMY_Blackrock Trackers|r for their |cRXP_LOOT_Blackrock Spyglasses|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,<5 --Blackrock Spyglass (<5)
step
    #optional
    #completewith Danforth
    #requires Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Kill |cRXP_ENEMY_Blackrock Summoners|r and |cRXP_ENEMY_Blackrock Trackers|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,5 --Blackrock Spyglass (5)
step
    .goto 49,43.546,10.819
    >>Kill |cRXP_ENEMY_Utroka the Keymistress|r. Loot her for |cRXP_LOOT_Jorgensen's Cage Key|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
	.mob Utroka the Keymistress
step
    #optional
    #completewith next
    .goto 49,37.338,15.299,40,0
    .goto 49,35.846,14.524,40,0
    .goto 49,33.538,11.867,15 >> Travel toward |cRXP_FRIENDLY_Jorgensen|r
    .noflyable --Azeroth Flying
step
    .goto 49,33.538,11.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgensen|r in the cage and when he reappears next to you
    .turnin 26560 >>Turn in Jorgensen
    .timer 3,Jorgensen RP
    .accept 26561 >>Accept Krakauer
	.target Jorgensen
step
    #completewith BlackrockC
    #label RendersRock
    .goto 49,30.861,9.190,20 >> Enter Render's Rock
    .isOnQuest 265261
step
    #sticky
    #label Tarak
    #requires RendersRock
    .goto 49,26.057,10.450,0,0
    >>Kill |cRXP_ENEMY_Ritualist Tarak|r inside
    .complete 26561,1 --Ritualist Tarak (1)
	.mob +Ritualist Tarak
step
    #optional
	#completewith BlackrockC
    #requires RendersRock
    .goto 49,30.050,9.353,15,0
    .goto 49,29.150,10.594,15,0
    .goto 49,26.586,10.530,15 >>Travel toward the |cRXP_PICK_Blackrock Coffer|r inside
step
	#label BlackrockC
    .goto 49,26.586,10.530
    >>Open the |cRXP_PICK_Blackrock Coffer|r on the ground inside. Loot it for |cRXP_LOOT_Keeshan's Red Headband|r and |cRXP_LOOT_Keeshan's Jade Amulet|r
    .complete 26573,1 --Keeshan's Red Headband (1)
    .complete 26573,2 --Keeshan's Jade Amulet (1)
step
    #requires Tarak
    .goto 49,25.906,10.487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakauer|r inside on the altar and when he reappears next to you
    .turnin 26561 >>Turn in Krakauer
    .timer 3,Krakauer RP
    .accept 26562 >>Accept And Last But Not Least... Danforth
	.target Krakauer
step
    #optional
    #completewith next
    .goto 49,26.615,13.314,15,0
    .goto 49,25.552,14.772,15,0
    .goto 49,25.856,16.403,15,0
    .goto 49,27.634,18.155,15 >Travel toward |cRXP_ENEMY_Overlord Barbarius|r inside
step
    .goto 49,27.634,18.155
    >>Kill |cRXP_ENEMY_Overlord Barbarius|r inside. Loot him for the |cRXP_LOOT_Blackrock Lever Key|r
	>>|cRXP_WARN_Make sure your Guardians teleport down when you jump down|r
    .complete 26562,1 --Overlord Barbarius (1)
    .complete 26562,2 --Blackrock Lever Key (1)
	.mob Overlord Barbarius
step
	#completewith next
    .goto 49,27.765,17.943
	.cast 80887 >>|cRXP_WARN_Click the |cRXP_PICK_Chain Lever|r on the ground inside|r
	.isOnQuest 26562
step
    #label Danforth
    .goto 49,28.326,17.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danforth|r inside in the water and when he reappears next to you
    .turnin 26562 >>Turn in And Last But Not Least... Danforth
    .timer 3,Danforth RP
    .accept 26563 >>Accept Return of the Bravo Company
	.target Danforth
--ZXCV Logout Skip here (if it works) add solid Spyglass step
step
    #optional
	#completewith next
    .goto 49,30.100,15.657,15,0
    .goto 49,30.004,12.928,15,0
    .goto 49,29.820,10.349,15,0
    .goto 49,30.372,9.117,15,0
    .goto 49,31.635,9.630,30 >> Exit Render's Rock
step
    #optional
    #loop
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    .goto 49,45.155,23.968,55,0
    .goto 49,42.789,21.487,55,0
    .goto 49,41.185,20.004,55,0
    .goto 49,41.167,17.881,55,0
    .goto 49,43.357,17.991,55,0
    .goto 49,44.269,13.930,55,0
    .goto 49,41.899,12.146,55,0
    .goto 49,42.034,14.041,55,0
    .goto 49,40.282,16.319,55,0
    .goto 49,38.889,17.678,55,0
    .goto 49,36.291,15.982,55,0
    .goto 49,34.239,13.808,55,0
    .goto 49,34.298,11.938,55,0
    .goto 49,32.625,10.192,55,0
    >>Kill |cRXP_ENEMY_Blackrock Summoners|r and |cRXP_ENEMY_Blackrock Trackers|r. Loot the |cRXP_ENEMY_Blackrock Trackers|r for their |cRXP_LOOT_Blackrock Spyglasses|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
step
    #completewith next
    .hs >> Hearth to Lakeshire
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kimberly Hiett|r in the Lakeshire Inn
    .vendor >>Vendor and Repair
    .target Kimberly Hiett
	.isOnQuest 26573
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Enter the Lakeshire Town Hall
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26563 >>Turn in Return of the Bravo Company
    .turnin 26573 >>Turn in His Heart Must Be In It
    .accept 26607 >>Accept They Drew First Blood
	.target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Exit the Lakeshire Town Hall
step
    #optional
    #completewith Keeshan2
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Enter the Lakeshire Inn
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Go into the backroom, then go downstairs toward |cRXP_FRIENDLY_John J. Keeshan|r
step
#questguide
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r in the Lakeshire Inn basement
    .turnin 26607 >>Turn in They Drew First Blood
    .accept 26616 >>Accept It's Never Over
	.target John J. Keeshan
step
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r in the Lakeshire Inn basement
    .turnin 26607 >>Turn in They Drew First Blood
	.target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.108,42.747,10 >> Exit the Lakeshire Inn --East
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r and |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 26569 >>Turn in Surveying Equipment
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .turnin 26570 >>Turn in Render's Army
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
#questguide
	#label Boat
    .goto 49,34.426,45.914
	.vehicle >> Get into |cRXP_PICK_Keeshan's Riverboat|r
	.timer 43,It's Never Over RP
    .isOnQuest 26616
step
#questguide
    .goto 49,52.901,52.999
    >>Wait out the RP
    >>|cRXP_WARN_Manually leave the boat when the timer completes|r
    .complete 26616,1 --Keeshan's Riverboat Ride Complete
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Messner|r, and |cRXP_FRIENDLY_Danforth|r
    .turnin 26616 >>Turn in It's Never Over
    .accept 26639 >>Accept Point of Contact: Brubaker
    .goto 49,52.551,55.408
	.target +John J. Keeshan
    .accept 26636 >>Accept Bravo Company Field Kit: Camouflage
    .goto 49,52.402,55.407
	.target +Krakauer
    .accept 26637 >>Accept Bravo Company Field Kit: Chloroform
    .goto 49,52.432,55.541
	.target +Messner
    .accept 26638 >>Accept Hunting the Hunters
    .goto 49,52.533,55.557
	.target +Danforth
step
#questguide
    #loop
    .goto 49,48.669,54.976,0
    .goto 49,46.956,56.688,0
    .goto 49,43.168,55.127,0
    .goto 49,39.453,57.087,0
    .goto 49,39.358,50.183,0
    .goto 49,45.014,49.280,0
    .goto 49,48.669,54.976,55,0
    .goto 49,48.798,57.741,55,0
    .goto 49,46.786,58.420,55,0
    .goto 49,46.956,56.688,55,0
    .goto 49,44.610,54.864,55,0
    .goto 49,44.320,52.796,55,0
    .goto 49,43.168,55.127,55,0
    .goto 49,41.915,53.874,55,0
    .goto 49,40.214,54.370,55,0
    .goto 49,39.453,57.087,55,0
    .goto 49,38.895,60.012,55,0
    .goto 49,38.064,52.309,55,0
    .goto 49,39.358,50.183,55,0
    .goto 49,40.550,47.338,55,0
    .goto 49,42.860,49.655,55,0
    .goto 49,45.014,49.280,55,0
    >>Kill |cRXP_ENEMY_Muckdwellers|r underwater. Loot them for their |cRXP_LOOT_Muckdweller Glands|r
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Ol' Gummers|r
    .complete 26637,1 --Muckdweller Gland (8)
	.mob Muckdweller
	.unitscan Ol' Gummers
step
#questguide
    #sticky
    #label Hunters
    #loop
    .goto 49,55.822,66.568,0
    .goto 49,53.086,69.251,0
    .goto 49,50.922,65.688,0
    .goto 49,49.219,67.953,0
    .goto 49,47.151,66.384,0
    .goto 49,45.798,69.412,0
    .goto 49,43.679,70.878,0
    .goto 49,39.093,68.551,0
    .waypoint 49,55.822,66.568,20,0
    .waypoint 49,54.430,68.474,20,0
    .waypoint 49,53.627,69.824,20,0
    .waypoint 49,53.086,69.251,20,0
    .waypoint 49,52.089,69.305,20,0
    .waypoint 49,49.800,69.120,20,0
    .waypoint 49,50.922,65.688,20,0
    .waypoint 49,50.313,66.097,20,0
    .waypoint 49,49.024,66.516,20,0
    .waypoint 49,49.219,67.953,20,0
    .waypoint 49,48.006,68.721,20,0
    .waypoint 49,48.030,67.211,20,0
    .waypoint 49,47.151,66.384,20,0
    .waypoint 49,46.832,67.484,20,0
    .waypoint 49,45.871,66.825,20,0
    .waypoint 49,46.634,70.734,20,0
    .waypoint 49,45.798,69.412,20,0
    .waypoint 49,43.680,66.576,20,0
    .waypoint 49,43.679,70.878,20,0
    .waypoint 49,41.375,69.805,20,0
    .waypoint 49,39.093,68.551,20,0
    >>Kill |cRXP_ENEMY_Blackrock Hunters|r
    >>|cRXP_WARN_Be careful as they are|r |T136041:0|t[Camouflaged]
    .complete 26638,1 --Blackrock Hunter (8)
	.mob Blackrock Hunter
step
#questguide
    .goto 49,39.080,69.773,0
    .goto 49,41.122,69.990,0
    .goto 49,42.532,70.274,0
    .goto 49,45.198,68.405,0
    .goto 49,47.075,66.697,0
    .goto 49,39.080,69.773,40,0
    .goto 49,39.687,69.959,40,0
    .goto 49,40.424,68.797,40,0
    .goto 49,41.122,69.990,40,0
    .goto 49,41.557,68.559,40,0
    .goto 49,42.280,69.740,40,0
    .goto 49,42.532,70.274,40,0
    .goto 49,44.090,70.194,40,0
    .goto 49,43.958,67.755,40,0
    .goto 49,45.198,68.405,40,0
    .goto 49,46.057,69.072,40,0
    .goto 49,47.075,66.697,40,0
	>>Loot the |cRXP_LOOT_Piles of Leaves|r and |cRXP_LOOT_Fox Poop|r on the ground
    .complete 26636,1 --Pile of Leaves (5)
    .complete 26636,2 --Fox Poop (5)
step
#questguide
    .goto 49,53.052,67.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brubaker|r
    .turnin 26639 >>Turn in Point of Contact: Brubaker
    .accept 26640 >>Accept Unspeakable Atrocities
	.target Brubaker
step
#questguide
    #optional
    #questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r, and |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Turn in Bravo Company Field Kit: Chloroform
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Turn in Bravo Company Field Kit: Camouflage
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Turn in Hunting the Hunters
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Turn in Unspeakable Atrocities
    .accept 26646 >>Accept Prisoners of War
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step
#questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r, and |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Turn in Bravo Company Field Kit: Chloroform
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Turn in Bravo Company Field Kit: Camouflage
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Turn in Hunting the Hunters
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Turn in Unspeakable Atrocities
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step << Human
#questguide
    #completewith next
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Eastvale Logging Camp >> Fly to Eastvale Logging Camp
	.target Arlen Marsters
    .isQuestAvailable 26646 --Prisoners of War
    .skill riding,75,1
    .zoneskip 49,1
step << Human
#questguide
    .goto 37,84.321,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Hunter|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Randal Hunter
step << Human
#questguide
    .goto 37,84.150,65.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie Hunter|r
    +|cRXP_BUY_Buy any|r |T132261:0|t[Horse] |cRXP_BUY_that you like from her|r
	.target Katie Hunter
    .itemcount 2414,<1 --Pinto Bridle
    .itemcount 5655,<1 --Chestnut Mare Bridle
    .itemcount 5656,<1 --Brown Horse Bridle
    .skill riding,<75,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Use the |T132261:0|t[Pinto Bridle] to learn it
    .use 2414
    .itemcount 2414,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Use the |T132261:0|t[Chestnut Mare Bridle] to learn it
    .use 5655
    .itemcount 5655,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Use the |T132261:0|t[Brown Horse Bridle] to learn it
    .use 5656
    .itemcount 5656,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132261:0|t[Pinto] |cRXP_WARN_onto your Action Bars|r
    .cast 472 >> Mount your |T132261:0|t[Pinto]
    .train 472,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132261:0|t[Chestnut Mare] |cRXP_WARN_onto your Action Bars|r
    .cast 6648 >> Mount your |T132261:0|t[Chestnut Mare]
    .train 6648,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132261:0|t[Brown Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 458 >> Mount your |T132261:0|t[Brown Horse]
    .train 458,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #label Goss
    #completewith Duskwood
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goss the Swift|r
    .fly Darkshire >> Fly to Darkshire
    .target Goss the Swift
    .zoneskip 37,1
step
#questguide
    #optional
    #completewith Duskwood
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Darkshire >> Fly to Darkshire
	.target Arlen Marsters
    .isQuestAvailable 26646
    .skill riding,<75,1 << Human
    .zoneskip 49,1
------start of optional Keeshan questline
step
    #questguide
    #completewith SeaforiumD
    +|cRXP_WARN_Use the|r |T133878:0|t[Bravo Company Field Kit] |cRXP_WARN_in|r |cRXP_WARN_Render's Valley|r
    >>|cRXP_WARN_You can mount normally with the item, but cannot be|r |T136041:0|t[Camouflaged] << !Druid
    >>|cRXP_WARN_You can mount normally with the item and fly in|r |T132128:0|t[Flight Form] |cRXP_WARN_whilst|r |T136041:0|t[Camouflaged] << Druid
    >>Cast |T136074:0|t[Camouflage] (1) to become invisible|r
    >>Cast |T132289:0|t[Distraction] (2) to make the |cRXP_ENEMY_Blackrock Orcs|r move
    >>Cast |T136090:0|t[Chloroform] (3) to sleep the |cRXP_ENEMY_Blackrock Wardens|r and |cRXP_ENEMY_Blackrock Guards|r. This does not work on |cRXP_ENEMY_Blackrock Drake Riders|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .flyable << Druid --Azeroth Flying
step << Druid
    #questguide
    #optional
    #completewith SeaforiumD
    +|cRXP_WARN_Use the|r |T133878:0|t[Bravo Company Field Kit] |cRXP_WARN_in|r |cRXP_WARN_Render's Valley|r
    >>|cRXP_WARN_You can mount normally with the item, but cannot be|r |T136041:0|t[Camouflaged]
    >>Cast |T136074:0|t[Camouflage] (1) to become invisible|r
    >>Cast |T132289:0|t[Distraction] (2) to make the |cRXP_ENEMY_Blackrock Orcs|r move
    >>Cast |T136090:0|t[Chloroform] (3) to sleep the |cRXP_ENEMY_Blackrock Wardens|r and |cRXP_ENEMY_Blackrock Guards|r. This does not work on |cRXP_ENEMY_Blackrock Drake Riders|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #completewith next
    .goto 49,68.486,75.120,20 >> Enter the cave in Render's Valley
step
    #questguide
    .goto 49,69.525,76.315
    >>Open the |cRXP_PICK_Blackrock Key Pouch|r inside. Loot it for the |cRXP_LOOT_Blackrock Holding Pen Key|r
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
step
    #questguide
    .goto 49,69.805,59.125,-1
    .goto 49,68.970,60.132,-1
    >>Open any of the |cRXP_PICK_Blackrock Holding Pens|r
    .complete 26646,1 --Prisoners of War Freed (1)
step
    #questguide
    #sticky
    #label Prisoners
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 26646 >>Turn in Prisoners of War
    .accept 26651 >>Accept To Win a War, You Gotta Become War
step
    #questguide
    #optional
    #completewith next
    .goto 49,66.318,70.789,15 >>Go inside the tower
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,66.411,71.479
    >>With the |T133878:0|t[Bravo Company Field Kit] equipped, cast |T136173:0|t[Plant Seaforium] (4) on the middle floor in the middle of the tower
    .complete 26651,2 --Seaforium Planted at Blackrock Tower (1)
step
    #questguide
    #label SeaforiumD
    .goto 49,64.112,70.826
    >>With the |T133878:0|t[Bravo Company Field Kit] equipped, cast |T136173:0|t[Plant Seaforium] (4) on the outside wall of the hut
    .complete 26651,1 --Seaforium Planted at Munitions Hut (1)
step
    #questguide
    #optional
    #label FieldKit
    #completewith War
    .aura -82587 >> |cRXP_WARN_Click off the|r |T133878:0|t[Bravo Company Field Kit] |cRXP_WARN_buff|r
    .isOnQuest 26651
step
    #questguide
    #optional
    #requires FieldKit
    #completewith War
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Blackrock Wardens|r, |cRXP_ENEMY_Blackrock Guards|r, and|r |cRXP_ENEMY_Blackrock Drake Riders|r
    .goto 49,77.683,65.506,15 >> Travel toward |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #label War
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r
    .turnin 26651 >>Turn in To Win a War, You Gotta Become War
    .accept 26668 >>Accept Detonation
    .target John J. Keeshan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r and |cRXP_FRIENDLY_Danforth|r
    .turnin 26668 >>Turn in Detonation
    .accept 26693 >>Accept The Dark Tower
    .goto 49,77.683,65.506
    .target +John J. Keeshan
    .accept 26692 >>Accept Shadowhide Extinction
    .goto 49,77.628,65.341
    .target +Danforth
step
    #questguide
    #sticky
    #label Shadowhide
    .goto 49,73.167,48.650,0
    .goto 49,74.650,52.479,0
    .goto 49,72.277,51.252,0
    .goto 49,69.079,50.430,0
    .goto 49,67.317,43.754,0
    .goto 49,66.197,37.545,0
    .goto 49,71.332,33.267,0
    .goto 49,70.571,38.254,0
    .goto 49,73.004,43.909,0
    .waypoint 49,73.167,48.650,50,0
    .waypoint 49,73.795,49.819,50,0
    .waypoint 49,76.102,53.026,50,0
    .waypoint 49,74.650,52.479,50,0
    .waypoint 49,73.531,53.657,50,0
    .waypoint 49,73.185,50.399,50,0
    .waypoint 49,72.277,51.252,50,0
    .waypoint 49,71.567,50.196,50,0
    .waypoint 49,71.349,48.124,50,0
    .waypoint 49,69.079,50.430,50,0
    .waypoint 49,66.885,47.661,50,0
    .waypoint 49,67.015,45.857,50,0
    .waypoint 49,67.317,43.754,50,0
    .waypoint 49,65.054,40.527,50,0
    .waypoint 49,64.633,37.658,50,0
    .waypoint 49,66.197,37.545,50,0
    .waypoint 49,66.330,33.341,50,0
    .waypoint 49,68.025,35.534,50,0
    .waypoint 49,71.332,33.267,50,0
    .waypoint 49,72.209,34.231,50,0
    .waypoint 49,71.606,35.978,50,0
    .waypoint 49,70.571,38.254,50,0
    .waypoint 49,70.569,41.638,50,0
    .waypoint 49,73.004,43.909,50,0
    >>Kill |cRXP_ENEMY_Rabid Shadowhide Gnolls|r, |cRXP_ENEMY_Shadowhide Darkweavers|r, |cRXP_ENEMY_Shadowhide Assassins|r, |cRXP_ENEMY_Shadowhide Warriors|r, |cRXP_ENEMY_Shadowhide Slayers|r, |cRXP_ENEMY_Shadowhide Brutes|r and |cRXP_ENEMY_Shadowhide Gnolls|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Shadowhide Assassins|r are|r |T132320:0|t[Stealthed]
    .complete 26692,1 --Shadowhide Gnoll (20)
    .mob Rabid Shadowhide Gnoll
    .mob *Shadowhide Darkweaver
    .mob *Shadowhide Assassins
    .mob *Shadowhide Warrior
    .mob *Shadowhide Slayer
    .mob *Shadowhide Brute
    .mob *Shadowhide Gnoll
step
    #questguide
    #sticky
    #requires Shadowhide
    #label Extinction
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 26692 >>Turn in Shadowhide Extinction
step
    #questguide
    #optional
    #completewith next
    .goto 49,67.611,30.650 >>Enter |cRXP_ENEMY_General Fangore|r's cave
step
    #questguide
    .goto 49,67.542,28.902
    >>Kill |cRXP_ENEMY_General Fangore|r inside. Loot him for the |cRXP_LOOT_Key of Ilgalar|r
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
step
    #questguide
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 26693 >>Turn in The Dark Tower
    .accept 26694 >>Accept The Grand Magus Doane
step
    #questguide
    #optional
    #label Ilgalar1
    #completewith next
    .goto 49,72.538,44.629,20,0
    .goto 49,71.952,44.819,15 >>Travel toward the entrance of the Tower of Ilgalar
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #label Ilgalar2
    #requires Ilgalar1
    #completewith next
    .goto 49,71.952,44.819
    .cast 81776 >> Click the |cRXP_PICK_Ward of Ilgalar|r at the base of the Tower of Ilgalar
    .isOnQuest 26694
step
    #questguide
    .goto 49,71.491,44.896,0
    .goto 49,71.256,45.402
    >>Defeat |cRXP_ENEMY_Grand Magus Doane|r inside atop the Tower of Ilgalar
    .complete 26694,1 --Grand Magus Doane confronted (1)
    .mob Grand Magus Doane
step
    #questguide
    #optional
    #requires Extinction
    #completewith next
    .goto 49,76.973,52.844,40,0
    .goto 49,77.906,58.960,40,0
    .goto 49,77.683,65.506,15 >> Return to |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #requires Extinction
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26694 >>Turn in The Grand Magus Doane
    .timer 29,The Grand Magus Doane RP
    .target John J. Keeshan
step
    #questguide
    .goto 49,77.204,65.923
    >>|cRXP_WARN_Wait out the RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 26708 >>Accept AHHHHHHHHHHHH! AHHHHHHHHH!!!
    .target Colonel Troteman
step
    #questguide
    #completewith BlackrockInvaders
    #label BravoCompany
    .goto 49,76.916,66.133
    .vehicle >> Enter the |cRXP_FRIENDLY_Bravo Company Siege Tank|r
    .target Bravo Company Siege Tank
    .isOnQuest 26708
step
    #questguide
    #optional
    #completewith BlackrockInvaders
    #requires BravoCompany
    .goto 49,77.906,58.960,40,0
    .goto 49,76.869,54.470,40 >>|cRXP_WARN_Whilst in the |cRXP_FRIENDLY_Bravo Company Siege Tank|r, travel back toward Galardell Valley
    .isOnQuest 26708
step
    #questguide
    #label BlackrockInvaders
    .goto 49,75.045,50.854,0
    .goto 49,71.179,48.591,0
    .goto 49,67.150,44.692,0
    .goto 49,63.587,39.740,0
    .goto 49,63.587,39.740,50,0
    .goto 49,75.045,50.854,50,0
    .goto 49,60.660,36.666
    >>|cRXP_WARN_Whilst in the |cRXP_FRIENDLY_Bravo Company Siege Tank|r, drive through the |cRXP_ENEMY_Blackrock Invaders|r toward Keeshan's Post, casting|r |T252187:0|t[Ram] (1) |cRXP_WARN_on cooldown|r
    .complete 26708,1 --Blackrock Invader (200)
    .mob Blackrock Invader
step
    #questguide
    #optional
    #completewith next
    >>|cRXP_WARN_Exit the|r |cRXP_FRIENDLY_Bravo Company Siege Tank|r
    >>|cRXP_WARN_This will immediately phase you out of the phase with |cRXP_ENEMY_Blackrock Invaders|r and back into the phase with the|r |cRXP_ENEMY_Shadowhide Gnolls|r
    .goto 49,60.660,36.666,15 >> Return to |cRXP_FRIENDLY_Colonel Troteman|r
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26708 >>Turn in AHHHHHHHHHHHH! AHHHHHHHHH!!!
    .accept 26713 >>Accept Showdown at Stonewatch
    .target Colonel Troteman
step
    #questguide
    #optional
    #completewith Darkblaze
    +|cRXP_WARN_Ensure your team is with you before proceeding. They should spawn as you approach |cRXP_ENEMY_Tharil'zun|r. If they don't, log out and log back in|r
step
    #questguide
    .goto 49,60.307,47.402
    >>Kill |cRXP_ENEMY_Tharil'zun|r
    .complete 26713,1 --Tharil'zun (1)
    .mob Tharil'zun
step
    #questguide
    #optional
    #completewith next
    .goto 49,60.307,47.402,40,0
    .goto 49,57.775,56.285,45 >>Travel toward |cRXP_ENEMY_Gath'Ilzogg|r
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,57.775,56.285
    >>Kill |cRXP_ENEMY_Gath'Ilzogg|r
    .complete 26713,2 --Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    #questguide
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 26713 >>Turn in Showdown at Stonewatch
    .goto 49,58.651,55.469
    .accept 26714 >>Accept Darkblaze, Brood of the Worldbreaker
    .timer 25,Darkblaze RP
    .goto 49,60.660,36.666
step
    #questguide
    #label Darkblaze
    .goto 49,58.651,55.469
    >>|cRXP_WARN_Wait out |cRXP_ENEMY_Grand Magus Doane|r's transformation RP|r
    >>|cRXP_WARN_Defeat |cRXP_ENEMY_Darkblaze|r once the RP finishes|r
    >>|cRXP_WARN_If you fail, use the |cRXP_PICK_Horn of Summoning|r on the ground to resummon|r |cRXP_ENEMY_Grand Magus Doane|r
    .complete 26714,1 --Darkblaze Defeated (1)
    .mob Darkblaze
    .mob *Grand Magus Doane
--XX     .goto 49,58.608,55.390 Horn of Summoning
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26714 >>Turn in Darkblaze, Brood of the Worldbreaker
    .accept 26726 >>Accept Triumphant Return
    .target Colonel Troteman
step
    #questguide
    #completewith next
    .hs >> Hearth to Lakeshire
    .cooldown item,6948,>2
    .isOnQuest 26726
    .subzoneskip 69 --Yes that is Lakeshire's subzone id
step
    #questguide
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Enter the Lakeshire Town Hall
    .isOnQuest 26726
step
    #questguide
    .goto 49,28.971,41.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r inside
    .turnin 26726 >>Turn in Triumphant Return
	.target Magistrate Solomon
------End of optional Keeshan questline
step
    #optional
    #label endOfTheGuide
]])
