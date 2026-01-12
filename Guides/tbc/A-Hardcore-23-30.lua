RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 23-24 Wetlands
#next 24-27 Redridge/Duskwood

step
.dungeon SFK
    #completewith FinalAccept
    +|cRXP_WARN_Begin looking for a Shadowfang Keep group. You will soon head to Silverpine Forest to run Shadowfang Keep|r
step
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Accept Young Crocolisk Skins
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    .target Karl Boran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >> Accept Claws from the Deep
step << Draenei/NightElf
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Accept The Third Fleet
    .accept 463 >> Accept The Greenwarden
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Set your Hearthstone to Menethil Harbor
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .isQuestComplete 942
    #completewith AMP
    .goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
step
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
    .target Archaeologist Flagongut
    .turnin 942 >> Turn in The Absent Minded Prospector
    .accept 943 >>Accept The Absent Minded Prospector
step
    #label AMP
    .isQuestTurnedIn 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
    .target Archaeologist Flagongut
    .accept 943 >>Accept The Absent Minded Prospector
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Turn in The Third Fleet
step
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .accept 470 >> Accept Digging Through the Ooze
    .target Sida
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step
    #label FinalAccept
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .accept 305 >> Accept In Search of The Excavation Team
step
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Grind |cRXP_ENEMY_Mosshides Gnolls|r while looking for a group for Shadowfang Keep
step
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>There are no quests for Shadowfang Keep. You will have to run from Wetlands to Silverpine Forest. Ensure you stay on the road while running through Arathi Highlands, and watchout for the |cRXP_ENEMY_Forsaken Courier|r
    >>|cRXP_WARN_You don't need to get the Arathi Highlands flight path yet|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Get the Southshore Flight Path
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Enter Shadowfang Keep
step
.dungeon SFK
    +There are no quests for Shadowfang Keep
    >>Clear Shadowfang Keep. Leave when you are finished
    .zoneskip 209,1
step
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Hearth to Menethil Harbor
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
    #completewith FinishGnolls
    >>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,13.73,39.38,50,0
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,16.26,39.41
    >>Kill |cRXP_ENEMY_Bluegill Murlocs|r
    >>Kill |cRXP_ENEMY_Gobbler|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Gobbler|r |cRXP_WARN_patrols the Marshlands slightly|r
    .complete 279,1 -- Bluegill Murloc slain (12)
    .mob +Bluegill Murloc
    .complete 279,2 -- Gobbler's Head
    .unitscan +Gobbler
step
    .goto Wetlands,26.40,25.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Fradd Swiftgear|r doesn't have one|r
	.target Fradd Swiftgear
    .bronzetube
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >> Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto Wetlands,38.909,52.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 305 >> Turn in In Search of The Excavation Team
    .accept 306 >> Accept In Search of The Excavation Team
    .target Merrin Rockweaver
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
    .complete 943,2 -- Flagongut's Fossil (1)
step
    .goto Wetlands,49.916,39.368
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >> Accept Daily Delivery
step
    #completewith next
    .goto Wetlands,50.200,37.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kixxle|r
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_Buy|r |T134413:0|t[Liferoot] |cRXP_WARN_if |cRXP_FRIENDLY_Kixxle|r has any in stock. You need them for the|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
--    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
    >>|cRXP_WARN_These are limited supply items. Skip this step if |cRXP_FRIENDLY_Kixxle|r doesn't have any|r << Warrior
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Kixxle|r doesn't have any|r << !Warrior
    .target Kixxle
    .zoneskip Wetlands,1
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 463 >> Turn in The Greenwarden
    .accept 276 >> Accept Tramping Paws
    .target Rethiel the Greenwarden
step
    #label
    #loop
    .goto Wetlands,63.93,63.54,0
    .goto Wetlands,61.58,73.07,0
    .goto Wetlands,63.93,63.54,60,0
    .goto Wetlands,62.34,69.34,60,0
    .goto Wetlands,61.58,73.07,60,0
    .goto Wetlands,62.34,69.34
	>>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
    .complete 276,1 -- Mosshide Gnoll slain (15)
    .mob +Mosshide Gnoll
    .complete 276,2 -- Mosshide Mongrel slain (10)
    .mob +Mosshide Mongrel
step
    #label FinishGnolls
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 276 >> Turn in Tramping Paws
    .accept 277 >> Accept Fire Taboo
    .target Rethiel the Greenwarden
step
    #loop
    .goto Wetlands,54.95,44.84,0
    .goto Wetlands,51.84,37.13,0
    .goto Wetlands,37.13,35.68,0
    .goto Wetlands,31.21,37.86,0
    .goto Wetlands,26.48,40.44,0
    .goto Wetlands,20.52,45.70,0
    .goto Wetlands,17.83,50.26,0
    .goto Wetlands,14.53,47.67,0
    .goto Wetlands,20.37,45.21,0
    .goto 1437/0,-2944.700,-3675.000,70,0
    .goto 1437/0,-3024.300,-4196.400,70,0
    .goto Wetlands,54.95,44.84,50,0
    .goto Wetlands,51.84,37.13,50,0
    .goto Wetlands,37.13,35.68,50,0
    .goto Wetlands,31.21,37.86,50,0
    .goto Wetlands,26.48,40.44,50,0
    .goto Wetlands,20.52,45.70,50,0
    .goto Wetlands,17.83,50.26,50,0
    .goto Wetlands,14.53,47.67,50,0
    .goto Wetlands,20.37,45.21,50,0
    >>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
    .complete 484,1
    .mob Young Wetlands Crocolisk

step << !NightElf !Draenei
    .isOnQuest 470,306,469,484,279
	.hs >> Hearth to Menethil Harbor
    .cooldown item,6948,>2,1
    .subzoneskip 150
    .bindlocation 2104,1
    .xp <25,1 -- hs if over 25, otherwise dark threat looms
step << !NightElf !Draenei
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Turn in Digging Through the Ooze
    .target Sida
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Turn in In Search of The Excavation Team
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Turn in Daily Delivery
    .turnin 484 >> Turn in Young Crocolisk Skins
    .target James Halloran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Turn in Claws from the Deep
    .target Karl Boran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
    .subzoneskip 150,1


-- only going loch if draenei/nightelf or not 25 yet
step
    #optional
    #completewith LochArrive
    .zone Loch Modan >> Follow the tunnel network to travel to Loch Modan
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .xp >25,1 << !Draenei !NightElf
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2426.200,-4093.000,15 >> Travel through the first tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2374.900,-4011.600,15,0
    .goto 1437/0,-2462.600,-4119.400,10 >> Travel to the second tunnel
    .mob Dragonmaw Grunt
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2464.400,-4312.900,10 >> Travel through the second tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2480.400,-4423.400,10 >> Travel to the third tunnel entrance
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2674.500,-4451.100,10 >> Travel through the third tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2690.400,-4482.800,10 >> Enter the fourth tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1432/0,-2698.800,-4681.800,10 >> Travel through the fourth tunnel into Loch Modan
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >> Travel to the Stonewrought Dam
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .accept 250 >> Accept A Dark Threat Looms
    .target Chief Engineer Hinderweir VII
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .isOnQuest 250
    .goto Loch Modan,56.05,13.24
    >>Click the |cRXP_PICK_Suspicious Barrel|r
    .turnin 250 >> Turn in A Dark Threat Looms
    .accept 199 >> Accept A Dark Threat Looms
step
    .isQuestTurnedIn 250
    .goto Loch Modan,56.05,13.24
    >>Click the |cRXP_PICK_Suspicious Barrel|r
    .accept 199 >> Accept A Dark Threat Looms
    .zoneskip Loch Modan,1
step
    .isOnQuest 199
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .turnin 199 >> Turn in A Dark Threat Looms
    .target Chief Engineer Hinderweir VII
    .zoneskip Loch Modan,1
step
    #label LochArrive
    #optional
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Get the Thelsamar flight path << NightElf/Draenei
    .fly Ironforge >> Fly to Ironforge << !NightElf !Draenei
    .target Thorgrum Borrelson
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .zoneskip Ironforge
step << NightElf/Draenei
    #optional
    .goto Loch Modan,21.30,68.60,50 >> Travel south to the tunnel leading to Dun Morogh
step << NightElf/Draenei
    #optional
    .goto 1432/0,-2582.400,-5738.400,15,0
    .goto 1432/0,-2578.000,-5679.900,15,0
    .goto 1432/0,-2535.500,-5643.700,10 >> Travel to the tunnel entrance
step << NightElf/Draenei
    #optional
    #sticky
    .zone Ironforge >> Travel to Ironforge
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2441.900,-5559.800,10 >> Travel through the tunnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2347.800,-5560.700,10 >> Travel to the second tunnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2243.100,-5634.800,10 >> Travel through the second tunnel
step << NightElf/Draenei
    #optional
    .goto Dun Morogh,47.85,41.42,55 >> Travel west along the road towards Ironforge
step << NightElf/Draenei
    #optional
    .goto 1426/0,-726.200,-5193.300,20,0
    .goto 1455/0,-862.200,-4998.700,70 >> Travel up the road

step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
    >>|cRXP_WARN_You can buy these from the Auction House, trade players for them or use|r |T136240:0|t[Alchemy] |cRXP_WARN_if you have it to make them|r
    >>|cRXP_WARN_If you are unable to acquire them, skip this step|r
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
    >>|cRXP_WARN_You can buy these from the Auction House or trade players for them|r
    >>|cRXP_WARN_If you are unable to acquire them, skip this step|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ssf
    #optional
    >>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
    >>|cRXP_WARN_Use your|r |T136240:0|t[Alchemy] |cRXP_WARN_profession to craft them if possible|r
    >>|cRXP_WARN_If you are unable to acquire them, skip this step|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .isOnQuest 1072
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milstaff Stormeye|r
    .trainer >> Train |T135757:0|t[Teleport: Ironforge]
    .target Milstaff Stormeye
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
step
    #optional
    >>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
    .accept 968 >> Accept The Powers Below
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 968 >> Turn in The Powers Below
    .target Gerrig Bonegrip
    .isOnQuest 968
step
.dungeon BFD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 971 >> Turn in Knowledge in the Deeps
    .target Gerrig Bonegrip
    .isQuestComplete 971
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Javad|r
    .trainer >> Train your class spells
    .target Farseer Javad
step << NightElf/Draenei
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r
    .goto Ironforge,69.872,82.890
    .trainer >> Train your class spells
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .goto Ironforge,70.856,85.839
    .trainer >> Train your pet skills
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .goto Ironforge,65.905,88.405
    .trainer >> Train your class spells
    .target Bilban Tosslespanner
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Train 2H Axes << !Rogue
	.train 266 >> Train Guns << Hunter/Warrior/Rogue
    .train 199 >> Train 2H Maces << Warrior/Shaman
    .train 54 >> Train Maces << Rogue/Shaman
    .train 44 >> Train Axes << Shaman
step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r
	.target Gearcutter Cogspinner
    .bronzetube
step
    .goto 1455/0,-1283.600,-4843.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .target Lomac Gearstrip
    .turnin 1072 >>Turn in An Old Colleague
step
    #optional
    .isQuestTurnedIn 1072
    .goto Ironforge,72.08,51.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .accept 1073 >> Accept Ineptitude + Chemicals = Fun
    .turnin 1073 >> Turn in Ineptitude + Chemicals = Fun
    .itemcount 2455,4 -- Minor Mana Potion (4)
    .itemcount 2458,2 -- Elixir of Minor Fortitude (2)
    .target Lomac Gearstrip
step
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Take the tram to Stormwind
step << skip
    #label exit2
	.goto Ironforge,56.2,46.8
	.goto Ironforge,76.4,51.2,50 >> Hop ontop of the gryphon's head then logout and back in to logout skip to the tram.
    .zone Stormwind City >>Take the tram to Stormwind
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 24-27 Redridge/Duskwood
#next 27-29 Wetlands

step
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
    .bronzetube
    .target Billibub Cogspinner
step << Draenei
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >> Travel to the Stormwind Keep
step << Draenei
    .goto Stormwind City,78.508,18.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Taluun|r  
    .accept 9429 >> Accept Travel to Darkshire
    .target Emissary Taluun
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Make sure you train|r |T136058:0|t[Pick Lock] |cRXP_WARN_as you'll need it later|r
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Rogue
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Travel toward |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Master Mathias Shaw|r inside SI:7 upstairs
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2281 >> Accept Redridge Rendezvous
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Accept Mathias and the Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
    .bindlocation 1519
step << Paladin
    #optional
    #completewith next
    .goto Stormwind City,42.917,34.221,15,0
    .goto Stormwind City,41.385,31.547,15,0
    .goto Stormwind City,39.810,29.788,15,0
    .goto Stormwind City,42.51,33.51,20 >> Travel to |cRXP_FRIENDLY_Duthorian Rall|r inside the Stormwind Cathedral
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
    .use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step
    #optional
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Gump|r
    >>|cRXP_BUY_Buy|r |T133849:0|t[Stormwind Seasoning Herbs]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
step
    .isOnQuest 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Turn in A Scroll from Mauren
    .accept 1076 >> Accept Devils in Westfall
    .target Collin Mauren
step
    #optional
    .isQuestTurnedIn 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .accept 1076 >> Accept Devils in Westfall
    .target Collin Mauren
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb. Go downstairs
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .isQuestComplete 1738
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[Voidwalker]   
    .target Spackle Thornberry
step << Warlock
    .isOnQuest 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Turn in Heartswood
    .accept 1739 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1739 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    .isOnQuest 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 65602 >> Turn in What Is Love?
    .accept 65603 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 65603 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .cast 8674 >> |cRXP_WARN_Use the|r |T136065:0|t[Heartswood Core] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Succubus|r
    .use 6913
step << Warlock
    .isOnQuest 1739
    .goto StormwindClassic,25.154,77.406
    .use 6913 >> Kill the |cRXP_ENEMY_Summoned Succubus|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Succubus
step << Warlock
    .isOnQuest 65603
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .use 190186 >> |cRXP_WARN_Use the|r |T136065:0|t[Wooden Figurine] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Incubus|r
    .complete 65603,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
step << Warlock
    #completewith next
    +|cRXP_WARN_You may now use either the|r |T136220:0|t[Succubus] |cRXP_WARN_or|r |T136221:0|t[Voidwalker] |cRXP_WARN_as your pet|r
    >>|cRXP_WARN_The|r |T136220:0|t[Succubus] |cRXP_WARN_deals significant damage whereas the|r |T136221:0|t[Voidwalker] |cRXP_WARN_provides more survivability|r
step << Warlock
    .isOnQuest 1739,65603
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >> Turn in The Binding
    .turnin 65603 >> Turn in The Binding
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Travel to the Mage Tower
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Train |T135763:0|t[Teleport: Stormwind]
    .target Larimaine Purdue
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|cRXP_WARN_Note: You should also level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 for an easy 2,000XP quest in Duskwood. Buy as many|r |T133970:0|t[Chunk of Boar Meat] |cRXP_WARN_or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_as you need to level it to 50. You can cook them once you get to the Inn at Duskwood|r
    >>|T133024:0|t[Bronze Tube]
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T134321:0|t[Gooey Spider Leg]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T133024:0|t[Bronze Tube]
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T134321:0|t[Gooey Spider Leg]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 23750 >> Deposit the following items into your bank: << Shaman
    >>|T132824:0|t[Filled Bota Bag] << Shaman -- 23750
    .target Newton Burnside
step << Draenei/NightElf
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path
    .target Dungar Longdrink
step
    #completewith next
    .goto 1429/0,395.900,-9114.200,80 >> Exit Stormwind
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> Travel to the Tower of Azora. Ascend the tower
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r at the top
    .accept 94 >> Accept A Watchful Eye
step
    #optional
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_has has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_BUY_and|r |T134850:0|t|T134830:0|t[Potions] |cRXP_BUY_as well, which you should buy if available|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_has has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_BUY_and|r |T134830:0|t[Potions] |cRXP_BUY_as well, which you should buy if available|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
    #completewith RRQuests
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .zoneskip Elwynn Forest,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Accept Encroaching Gnolls
step
    .goto Redridge Mountains,30.70,60.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .turnin 244 >> Turn in Encroaching Gnolls
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Accept Blackrock Menace
    .target Marshal Marris
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >> Accept Solomon's Law
    .target Bailiff Conacher
step
    #label RRQuests
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >> Accept Selling Fish
    .accept 150 >> Accept Murloc Poachers
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Turn in Redridge Rendevous
    .accept 2282 >> Accept Alther's Mill
    .target Lucius
step
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step
    >>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
    >>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|r and the |cRXP_ENEMY_Murlocs|r marked on the map southwest|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    .goto Redridge Mountains,56.4,51.8
    >>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step << Rogue
    #completewith Token
    .goto Redridge Mountains,51.846,45.116,100 >> Head toward Alther's Mill
step << Rogue
    .goto Redridge Mountains,51.846,45.116
    >>|cRXP_WARN_You MUST do this for your|r |T132290:0|t[Poisons] |cRXP_WARN_quest later|r
    >>|cRXP_WARN_Stand on the waypoint location. Position your camera and cursor until you can click 3 |cRXP_PICK_Practice Lockboxes|r at once without having to move|r
    >>|cRXP_WARN_Open the |cRXP_PICK_Practice Lockboxes|r on the ground in Alther's Mill until your|r |T136058:0|t[Lockpicking] skill is 80|r
    .skill lockpicking,80,1
step << Rogue
    #label Token
	.goto Redridge Mountains,52.05,44.69
    >>Open |cRXP_PICK_Lucius's Lockbox|r. Loot it for the |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery (1)
    .skill lockpicking,<80,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Turn in Blackrock Menace
step
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >> Turn in Selling Fish
    .turnin 150 >> Turn in Murloc Poachers
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Turn in Alther's Mill
    .target Lucius
step
    .goto Redridge Mountains,26.75,46.43
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 180 >> Accept Wanted: Lieutenant Fangore
step
    .goto Redridge Mountains,21.85,46.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .accept 34 >> Accept An Unwelcome Guest
step
    .goto Redridge Mountains,15.68,49.30
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto Redridge Mountains,21.85,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    #completewith next
    .subzone 42 >> Travel to Darkshire in Duskwood
step
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >> Accept The Legend of Stalvan
    .accept 101 >> Accept The Totem of Infliction
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Set your Hearthstone to Duskwood
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
    .accept 90 >> Accept Seasoned Wolf Kabobs
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 56 >> Accept The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 66 >> Turn in The Legend of Stalvan
    .accept 67 >> Accept The Legend of Stalvan
    .target Clerk Daltry
step << Draenei
    .goto Duskwood,71.815,46.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Delan|r  
    .turnin 9429 >> Turn in Travel to Darkshire
    .target Anchorite Delan
step
    .goto Duskwood,75.33,48.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Accept Raven Hill
    .accept 164 >> Accept Deliveries to Sven
    .accept 165 >> Accept The Hermit
    .target Elaine Carevin
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fp Duskwood>> Get the Duskwood Flight Path
    .target Felicia Maline
    .subzoneskip 42,1
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] start the quest. This is a zone-wide drop in Duskwood|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
	#completewith next
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    #loop
    .goto Duskwood,80.35,69.31,50,0
    .goto Duskwood,77.49,71.30,50,0
    .goto Duskwood,79.38,73.70,50,0
    .goto Duskwood,79.38,70.28
	#label HistoryBook1
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    #completewith Level25
    >>Kill |cRXP_ENEMY_Spiders|r in Duskwood. Loot them for their |cRXP_LOOT_Gooey Spider Legs|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #completewith next
    .goto Duskwood,18.203,56.215,50 >> Travel towards |cRXP_FRIENDLY_Jitters|r in western Duskwood
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >> Turn in Raven Hill
    .accept 5 >> Accept Jitters' Growling Gut
    .target Jitters
step
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Turn in Deliveries to Sven
    .accept 95 >> Accept Sven's Revenge
    .target Sven Yorgen
step
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    .accept 226 >> Accept Wolves at Our Heels
    .target Lars
step
    #completewith SFD
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #completewith SFD
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label SFD
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Turn in The Hermit
    .accept 148 >> Accept Supplies from Darkshire
    .target Abercrombie
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    .isQuestComplete 226
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    .turnin 226 >> Turn in Wolves at Our Heels
    .target Lars
step
    #label Level25
    .xp 25
step
	.goto Duskwood,32.4,36.6,0
	.goto Duskwood,29.6,50.4,0
    .goto Duskwood,33.6,60.4,0
    .goto Duskwood,12.2,69.8,0
    .goto Duskwood,10.6,37.0,0
    .goto Duskwood,33.6,60.4,70,0
    .goto Duskwood,12.2,69.8,70,0
    .goto Duskwood,10.6,37.0,70,0
    .goto Duskwood,12.8,55.6,70,0
	.goto Duskwood,32.4,36.6,70,0
	.goto Duskwood,29.6,50.4,70,0
    >>Kill |cRXP_ENEMY_Spiders|r in Duskwood. Loot them for their |cRXP_LOOT_Gooey Spider Legs|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    >>Click |cRXP_PICK_A Weathered Grave|r
    .goto Duskwood,17.72,29.07
    .accept 225 >> Accept The Weathered Grave
step
    #completewith MoonbrookSt
    .zone Westfall >> Travel to Westfall
step
    .goto Westfall,63.6,51.4,60,0
    .goto Westfall,60.6,34.0,60,0
    .goto Westfall,45.4,49.6
    .goto Westfall,63.8,52.0,0
    .goto Westfall,61.8,34.4,0
    .goto Westfall,54.6,41.0,0
    .goto Westfall,46.8,48.6,0
    .goto Westfall,43.6,42.0,0
    .goto Westfall,41.0,21.0,0
    .goto Westfall,35.8,34.4,0
    .goto Westfall,33.8,50.6,0
    .goto Westfall,42.6,60.2,0
    .goto Westfall,38.8,61.4,0
    .goto Westfall,34.8,67.4,0
    >>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
    >>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find them|r << Hunter
    .complete 1076,1
    .unitscan Dust Devil
    .isOnQuest 1076
step --xx
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
    >>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
    >>|cRXP_WARN_Additionally, it's recommended you enable Enemy Nameplates (Default Key: V) as it allows you to see enemies behind some of the corners inside the tower|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    >>|cRXP_WARN_You MUST do this quest your|r |T132290:0|t[Poisons]
    .turnin 2360 >> Turn in Mathias and the Defias
    .accept 2359 >> Accept Klaven's Tower
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Defias Tower Key|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r spawns at the entrance to the tower, then patrols around the outside of it|r
    >>|cRXP_WARN_Be careful as he deals a LOT of damage. If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, quickly use|r |T132307:0|t[Sprint] |cRXP_WARN_and run away|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equip the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Travel up to 2nd top floor of the tower. Whilst in|r |T132320:0|t[Stealth] |cRXP_WARN_and the |cRXP_ENEMY_Defias Tower Sentries|r aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location|r
    >>|cRXP_WARN_Manually|r |T132320:0|t[Unstealth]|cRXP_WARN_, then press your "Interact with Target" keybind to open the |cRXP_PICK_Duskwood Chest|r. Loot it for|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_NOTE: Your|r |T132320:0|t[Stealth] |cRXP_WARN_will temporarily stop working after looting|r |cRXP_LOOT_Klaven Mortwake's Journal|r 
    >>|cRXP_WARN_Be prepared to run if you don't kill the |cRXP_ENEMY_Defias Tower Sentries|r on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot|r
    >>|cRXP_WARN_If you have a|r |T135641:0|t[Dagger] |cRXP_WARN_in your bags or equipped, you can cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Defias Tower Patrollers|r and |cRXP_ENEMY_Defias Tower Sentries|r inside to kill them instantly. Be prepared to run after you kill the first |cRXP_ENEMY_Defias Tower Sentry|r and remember you can be hit from above. This is slower, but a LOT safer|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Malformed Defias Drone|r and |cRXP_ENEMY_Defias Drones|r can be at the entrance of the tower if you have to run out of it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step
    #completewith MoonbrookSt
    .subzone 20 >> Travel to Moonbrook
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>Click the |cRXP_PICK_Old Footlocker|r on the ground
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1650 >>Turn in The Tome of Valor
    .target Daphne Stilwell
    .accept 1651 >>Accept The Tome of Valor
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1651 >>Turn in The Tome of Valor
    .target Daphne Stilwell
    .accept 1652 >>Accept The Tome of Valor
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Swim out to sea
step << Druid
    .goto Westfall,17.928,33.099
    >>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,36.0,41.4
    .use 15883 >>|cRXP_WARN_Use the|r |T133443:0|t[Half Pendant of Aquatic Agility] |cRXP_WARN_to combine it with the|r |T133442:0|t[Half Pendant of Aquatic Endurance] |cRXP_WARN_at the Shrine of Remulos|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    >>|cRXP_WARN_This will save you time from running back|r
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 272 >> Turn in Trial of the Sea Lion
    .accept 5061 >> Accept Aquatic Form
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Fly to Teldrassil
    .target Silva Fil'naveth
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5061 >> Turn in Aquatic Form
step 
    .isOnQuest 68,225,148,95,56
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
	.hs >> Hearth to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step 
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Duskwood >> Fly to Darkshire
    .target Thor
    .zoneskip Duskwood
step << Rogue
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .zoneskip Stormwind City
	.cooldown item,6948,<0
step << Rogue
    #optional
    #completewith KlavenEnd
	.hs >> Hearth to Stormwind
	.cooldown item,6948,>0,1
    .zoneskip Stormwind City
    .bindlocation 1519,1
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Travel toward |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .skill firstaid,80 >> |cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .train 7934 >> |cRXP_WARN_Train|r |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Remember to re-equip your main weapon if you switched to a|r |T135641:0|t[Dagger] |cRXP_WARN_earlier|r << Rogue
    .turnin 2359 >> Turn in Klaven's Tower
    .target Master Mathias Shaw
step << Rogue
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood>> Fly to Duskwood
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    >>If you just completed your Poison quest now set your Hearthstone to Darkshire
    >>If your Hearthstone was already set to Darkshire, skip this step
    .home >> Set your hearthstone to Darkshire
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr

--
step << Rogue skip
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >> Turn in Klaven's Tower
    .accept 2607 >> Accept The Touch of Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Head to the basement
    .turnin 2607 >> Turn in The Touch of Zanzil
    .accept 2608 >> Accept The Touch of Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Type /lay on the chat and wait until the quest complete itself
    .complete 2608,1 --Diagnosis Complete
step << Rogue skip
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >> Turn in The Touch of Zanzil
    .accept 2609 >> Accept The Touch of Zanzil
step << Rogue skip
    .goto Stormwind City,78.2,59.0
    >>Buy a Leaded Vial from the Shady Dealer
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue skip
    >>Head to the flower vendor
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << Rogue skip
    >>Buy a Bronze Tube at the Auction House
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>Head to the shop next to the bridge between the Cathedral Square and the Park
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>If you can't find a bronze tube, you will have to skip this quest, train First Aid to 80, farm a small venom sac from spiders in Duskwood, craft an Anti-Venom and remove the Zanzil poison.
step << Rogue skip
    .goto Stormwind City,78.0,58.9
    .turnin 2609 >> Turn in The Touch of Zanzil
--

step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
    .accept 90 >> Accept Seasoned Wolf Kabobs
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >> Turn in Jitters' Growling Gut
    .accept 93 >> Accept Dusky Crab Cakes
    .turnin 93 >> Turn in Dusky Crab Cakes
    .accept 240 >> Accept Return to Jitters
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >> Turn in The Night Watch
    .target Commander Althea Ebonlocke
    .accept 57 >> Accept The Night Watch
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 68 >> Turn in The Legend of Stalvan
    .accept 69 >> Accept The Legend of Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Turn in The Weathered Grave
    .accept 227 >> Accept Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 227 >> Turn in Morgan Ladimore
    .target Commander Althea Ebonlocke
step
    #sticky
    .destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >> Turn in Supplies from Darkshire
    .target Madame Eva
    .accept 149 >> Accept Ghost Hair Thread
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 149 >> Turn in Ghost Hair Thread
    .accept 154 >> Accept Return the Comb
    .target Blind Mary
step
	#completewith next
    >>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] start the quest. This is a zone-wide drop in Duskwood|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
    .accept 181 >> Accept Look To The Stars
    .target Viktori Prism'Antras
step
	.isQuestTurnedIn 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Accept Look To The Stars
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >> Turn in Return the Comb
    .accept 157 >> Accept Deliver the Thread
    .target Madame Eva
step
    .goto Duskwood,49.85,77.71
    >>Click the |cRXP_PICK_Mound of loose dirt|r on the ground
    .turnin 95 >> Turn in Sven's Revenge
    .accept 230 >> Accept Sven's Camp   
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >> Turn in Deliver the Thread
    .target Abercrombie
    .accept 158 >> Accept Zombie Juice
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Turn in Sven's Camp
    .target Sven Yorgen
    .accept 262 >> Accept The Shadowy Figure
step
    #completewith BlackrockChampion
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Thor
    .zoneskip Redridge Mountains
    .maxlevel 27
step
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >> Accept Blackrock Bounty
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 19 >> Accept Tharil'zun
    .accept 115 >> Accept Shadow Magic
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .solo
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 115 >> Accept Shadow Magic
	.isQuestTurnedIn 20
    .maxlevel 27
step
#optional
    .group
    .dungeon Stockades
    #completewith next
    .abandon 386 >> Abandon What Comes Around...
    >>|cRXP_WARN_Abandon this quest if your quest log is full. You'll accept it again shortly|r
    .zoneskip Redridge Mountains,1
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 169 >> Accept Wanted: Gath'Ilzogg
    .maxlevel 27
step
    #completewith LookingFurther
    >>Kill the |cRXP_ENEMY_Shadowhides|r. Loot them for their |cRXP_LOOT_Pendants|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #label fangore
    .goto Redridge Mountains,80.17,37.05
    >>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional|r |cRXP_ENEMY_Gnolls|r
    >>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step
    .goto Redridge Mountains,84.50,46.80
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .turnin 94 >> Turn in A Watchful Eye
    .accept 248 >> Accept Looking Further
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #label LookingFurther
    .goto Redridge Mountains,84.50,46.80
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .accept 248 >> Accept Looking Further
    .isQuestTurnedIn 94
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    >>Kill the |cRXP_ENEMY_Shadowhides|r. Loot them for their |cRXP_LOOT_Pendants|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #completewith Gath
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .group 3
    .goto Redridge Mountains,71.40,55.07
    >>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    .group 4
    .goto Redridge Mountains,69.599,55.797
    >>Enter Stonewatch Keep
    >>Kill |cRXP_ENEMY_Gath'Ilzogg|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 169,1 -- Head of Gath'Ilzogg
    .mob Gath'Ilzogg
    .isOnQuest 169
step
    #label Gath
step
    .goto Redridge Mountains,66.68,56.26    
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,63.246,49.840
    >>Click |cRXP_PICK_An Empty Jar|r on the barrel at the top of Stonewatch Tower
    >>|cRXP_WARN_Don't accept the follow up|r
    .turnin 248 >> Turn in Looking Further
    .isOnQuest 248
step
    #label BlackrockChampion
    .goto Redridge Mountains,28.89,13.20
    >>Kill |cRXP_ENEMY_Blackrock Champions|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step
    #completewith ReturnLakeshire
    .subzone 69 >> Return to Lakeshire
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 19 >> Turn in Tharil'zun
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 115 >> Turn in Shadow Magic
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .turnin 91 >> Turn in Solomon's Law
    .isQuestComplete 91
    .target Bailiff Conacher
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 180 >> Turn in Wanted: Lieutenant Fangore
    .isQuestComplete 180
    .target Magistrate Solomon
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 169 >> Turn in Wanted: Gath'Ilzogg
    .target Magistrate Solomon
    .isQuestComplete 169
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
    .zoneskip Redridge Mountains,1
step
    #label ReturnLakeshire
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .turnin 128 >> Turn in Blackrock Bounty
	.isQuestComplete 128
step
    .isOnQuest 158,156,266,453,228,231,262
	.hs >> Hearth to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Duskwood >> Fly to Darkshire
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    #completewith DaughterWhoLived
    .subzone 42 >> Travel to Darkshire
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Turn in The Shadowy Figure
    .target Madame Eva
    .accept 265 >> Accept The Shadowy Search Continues
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 265 >> Turn in The Shadowy Search Continues
    .accept 266 >> Accept Inquire at the Inn
    .target Clerk Daltry
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .accept 377 >> Accept Crime and Punishment
    .target Councilman Millstipe
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >> Turn in Zombie Juice
    .accept 156 >> Accept Gather Rot Blossoms
    .turnin 266 >> Turn in Inquire at the Inn
    .accept 453 >> Accept Finding the Shadowy Figure
    .target Tavernkeep Smitts
step
    #label DaughterWhoLived
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
    .target Watcher Ladimore
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
    .accept 228 >> Accept Mor'Ladim
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Accept Worgen in the Woods
    .target Calor
step
    #loop
    .goto Duskwood,66.0,44.6,0
    .goto Duskwood,64.2,38.8,0
    .goto Duskwood,60.8,37.4,0
    .goto Duskwood,61.2,46.0,0
    .goto Duskwood,67.6,46.6,0
    .goto Duskwood,63.6,41.2,0
    .goto Duskwood,66.0,44.6,60,0
    .goto Duskwood,64.2,38.8,60,0
    .goto Duskwood,60.8,37.4,60,0
    .goto Duskwood,61.2,46.0,60,0
    .goto Duskwood,67.6,46.6,60,0
    .goto Duskwood,63.6,41.2,60,0
	>>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 173,1 --6/6 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Turn in Worgen in the Woods
    .target Calor
step
    #completewith HistoryB3
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Fly to Westfall
    .target Felicia Maline
step
	#completewith HistoryB3
    >>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] start the quest. This is a zone-wide drop in Duskwood|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >> Turn in Finding the Shadowy Figure
    .accept 268 >> Accept Return to Sven
    .turnin 240 >> Turn in Return to Jitters
    .target Jitters
step
    #loop
    .goto Duskwood,22.95,44.75,0
    .goto Duskwood,20.39,47.02,0
    .goto Duskwood,15.65,42.81,0
    .goto Duskwood,22.11,46.93,0
    .goto Duskwood,21.21,47.07,0
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07,70,0
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Rot Blossoms|r and |cRXP_LOOT_Fingers|r
    .complete 57,1 -- Skeletal Fiend slain (15)
    .mob +Skeletal Fiend
    .complete 57,2 -- Skeletal Horror slain (15)
    .mob +Skeletal Horror
    .complete 156,1 -- Rot Blossom (8)
    .complete 101,3 --10/10 Skeleton Finger
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >> Turn in Return to Sven
    .accept 323 >> Accept Proving Your Worth
    .target Sven Yorgen
step
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Click |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Turn in A Daughter's Love
step
    .goto Duskwood,16.01,38.79
    >>Kill |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r and |cRXP_ENEMY_Skeletal Warders|r
    >>|cRXP_WARN_Enter the Dawning Wood Catacombs for the|r |cRXP_ENEMY_Skeletal Warders|r
    .complete 323,1 -- Skeletal Raider slain (15)
    .mob +Skeletal Raider
    .complete 323,2 -- Skeletal Healer slain (3)
    .mob +Skeletal Healer
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob +Skeletal Warder
step
	.xp 27 >> Grind to level 27. If you're planning on running The Stockades, you can skip this step
step
    .group 5
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_is a level 30 Elite which hits very hard but moves quite slow. Try to kite him around any large trees if required|r
    >>|cRXP_WARN_You will have another chance later to complete this step if you're unable to find a group now|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    #label HistoryB3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >> Turn in Proving Your Worth
    .accept 269 >> Accept Seeking Wisdom
    .target Sven Yorgen

step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Fly to Darkshire
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .subzone 42 >> Travel to Darkshire
step << Warrior/Paladin
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
    .turnin 57 >> Turn in The Night Watch
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
    .target Watcher Ladimore
step << Warrior/Paladin
    .isQuestTurnedIn 228
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Turn in Gather Rot Blossoms
    .target Tavernkeep Smitts
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
step << Warrior/Paladin
    .isOnQuest 231
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Fly to Westfall
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Click |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Turn in A Daughter's Love
step
#completewith RunStocks
.dungeon Stockades
    +|cRXP_WARN_You are about to head to Stormwind soon, try to find a group for The Stockades|r
step
    #completewith next
    .subzone 87 >> Travel to Goldshire
    .isOnQuest 69
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r   
    .trainer >> Train your class spells
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step
    #label TLOS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 69 >> Turn in The Legend of Stalvan
    .accept 70 >> Accept The Legend of Stalvan
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Go upstairs
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.trainer >> Train your class spells
    .target Priestess Josetta
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Train your class spells
    .target Keryn Sylvius
step
    .goto Elwynn Forest,44.302,65.823
    >>Open the |cRXP_PICK_Storage Chest|r. Loot it for |cRXP_LOOT_An Undelivered Letter|r
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << !Mage
    #label RunStocks
    #completewith next
    .zone Stormwind City >> Travel to Stormwind City
step << Mage
    #label RunStocks
    #completewith next
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> |cRXP_WARN_Cast|r |T135763:0|t[Teleport: Stormwind]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Turn in Devils in Westfall
    .target Collin Mauren
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Umbrua|r
	.trainer >> Train your class spells
    .target Farseer Umbrua
step
    #completewith GRB
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood >> Fly to Darkshire
    .target Dungar Longdrink
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
    .turnin 57 >> Turn in The Night Watch
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
    .turnin 229 >> Turn in The Daughter Who Lived
    .target Watcher Ladimore
step
    #label GRB
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Turn in Gather Rot Blossoms
    .target Tavernkeep Smitts
step
.dungeon Stockades
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << !Mage
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Stormwind >> Fly to Stormwind
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
.dungeon Stockades
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> |cRXP_WARN_Cast|r |T135763:0|t[Teleport: Stormwind]
step << !Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Turn in Devils in Westfall
    .target Collin Mauren
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step
    .goto Stormwind City,26.44,78.66
    .target Zardeth of the Black Claw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .accept 335 >> Accept A Noble Brew
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Folsom|r
    .turnin 70 >> Turn in The Legend of Stalvan
    .target Caretaker Folsom
    .accept 72 >> Accept The Legend of Stalvan
step
    .goto Stormwind City,29.44,61.52
    >>Click the |cRXP_PICK_Sealed Crate|r on the ground
    .turnin 72 >> Turn in The Legend of Stalvan
    .accept 74 >> Accept The Legend of Stalvan
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
    .trainer >> Train your class spells
    .target Sheldras Moontree
step
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .target Duthorian Rall
    .turnin 1652 >>Turn in The Tome of Valor
step
    .goto Stormwind City,40.551,30.959
    .target Brother Sarno
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sarno|r
    .accept 2923 >> Accept Tinkmaster Overspark
step
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
    .turnin 269 >> Turn in Seeking Wisdom
    .accept 270 >> Accept The Doomed Fleet
    .target Bishop Farthing
step
.dungeon Stockades
    #optional
    .isQuestTurnedIn 373
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step << Mage
    .goto Stormwind City,43.500,26.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Cassius|r
    >>|cRXP_BUY_Buy 2|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Brother Cassius
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    #label AcceptSouthshore
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Accept Southshore
    .target Milton Sheaf
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .accept 388 >> Accept The Color of Blood
    .unitscan Nikova Raskol
step
.dungeon Stockades
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Accept Quell The Uprising
    .turnin 389 >> Turn in Bazil Thredd
    .accept 391 >> Accept The Stockade Riots
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 391 >> Accept The Stockade Riots
    .accept 387 >> Accept Quell The Uprising
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Accept Quell The Uprising
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,39.834,54.360
    +Find a group to The Stockades
    .zoneskip Stormwind City,1 --skips the step upon entering stockades, for some reason this dungeon has no subzone ID
step
.dungeon Stockades
    #label stock1
    #sticky
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 387,1 -- Defias Prisoner slain (10)
    .complete 387,2 -- Defias Convict slain (8)
    .complete 387,3 -- Defias Insurgent slain (8)
    .complete 388,1 -- Red Wool Bandana (10)
step
.dungeon Stockades
    #label stock2
    #sticky
    >>Kill |cRXP_ENEMY_Targorr the Dread|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r has a random spawn location
    >>Kill |cRXP_ENEMY_Dextren Ward|r on the west prison wing. Loot him for his |cRXP_LOOT_Hand|r
    .complete -386,1 -- Head of Targorr
    .complete -377,1 -- Hand of Dextren Ward
    .mob Targorr the Dread
    .mob Dextren Ward
step
.dungeon Stockades
    #label Bazil
    >>Kill |cRXP_ENEMY_Bazil Thredd|r on the east prison wing. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for the follow up of this quest chain|r
    .complete 391,1 -- Head of Bazil Thredd
    .collect 4306,3,2746,1 -- Silk Cloth (3)
    .isOnQuest 391
    .mob Bazil Thredd
step
.dungeon Stockades
    #requires stock1
step
.dungeon Stockades
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .turnin 391 >> Turn in The Stockade Riots
    .accept 392 >> Accept The Curious Visitor
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 392 >> Turn in The Curious Visitor
    .accept 393 >> Accept Shadow of the Past
    .target Baros Alexston
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .turnin 388 >> Turn in The Color of Blood
    .unitscan Nikova Raskol
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 393 >> Turn in Shadow of the Past
    .accept 350 >> Accept Look to an Old Friend
    .target Master Mathias Shaw
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 350 >> Turn in Look to an Old Friend
    .accept 2745 >> Accept Infiltrating the Castle
    .target Elling Trias
    .isQuestTurnedIn 389
step
    #completewith AcceptSouthshore
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >> Turn in Infiltrating the Castle
    .accept 2746 >> Accept Items of Some Consequence
    .target Tyrion
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >> Exit Stormwind. Travel to Clara's Farm House in Elwynn Forest
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ah
    >>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
    >>|cRXP_WARN_If you still need|r |T132905:0|t[Silk Cloth] |cRXP_WARN_buy some from the Auction House|r
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
    #ssf
    >>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Ensure your party has all turned in Items of Some Consequence before you accept The Attack!|r
    >>|cRXP_WARN_Automatic quest accept has been turned off for this step. Note you may not be able to accept the quest if someone else is in the process of doing it|r
    .turnin 2746 >> Turn in Items of Some Consequence
    .accept 434,1 >> Accept The Attack!
    .timer 124,The Attack! RP
    .target Tyrion
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_Wait in the center of the courtyard for |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r to arrive. This takes roughly 2 minutes|r
    >>Kill |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r
    .complete 434,1 -- Lord Gregor Lescovar slain
    .complete 434,2 -- Marzon the Silent Blade slain
    .complete 434,3 -- Overhear Lescovar and Marzon's Conversation
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 434 >> Turn in The Attack!
    .accept 394 >> Accept The Head of the Beast
    .target Elling Trias
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 394 >> Turn in The Head of the Beast
    .accept 395 >> Accept Brotherhood's End
    .target Master Mathias Shaw
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 395 >> Turn in Brotherhood's End
    .accept 396 >> Accept An Audience with the King
    .target Baros Alexston
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .turnin 396 >> Turn in An Audience with the King
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Dungar Longdrink
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .turnin 386 >> Turn in What Comes Around...
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Cast|r |T135763:0|t[Teleport: Stormwind]
    .usespell 3561
    .zoneskip Redridge Mountains,1
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +|cRXP_WARN_Begin looking for a Gnomeregan group. You will shortly run Gnomeregan|r
    .subzoneskip 133--outside gnomer
    .subzoneskip 721,2--inside the instance
step
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2928 >> Accept Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step << Mage
    #completewith next
    .zone Ironforge >> |cRXP_WARN_Cast|r |T135757:0|t[Teleport: Ironforge]
step << !Mage
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
step
.dungeon !Gnomer
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2923 >> Turn in Tinkmaster Overspark
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 2927 >> Accept The Day After
    .target +Gnoarn
    .goto Ironforge,69.182,50.556
    .turnin -2923 >> Turn in Tinkmaster Overspark
    .accept 2922 >> Accept Save Techbot's Brain!
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .accept 2929 >> Accept The Grand Betrayal
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .accept 2930 >> Accept Data Rescue
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .accept 2924 >> Accept Essential Artificials
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .goto Ironforge,18.10,51.60
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2927 >> Turn in The Day After
    .accept 2926 >> Accept Gnogaine
    .target Ozzie Togglevolt
step
.dungeon Gnomer
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Travel to Gnomeregan
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    .use 9283 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Invader|r or|r |cRXP_ENEMY_Irradiated Pillager|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Invader|r or |cRXP_ENEMY_Irradiated Pillager|r must be ALIVE when you use it|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2926,1 -- Full Leaden Collection Phial (1)
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >> Travel to |cRXP_FRIENDLY_Ozzie Togglevolt|r in Kharanos
    >>|cRXP_WARN_You will get a follow up for when you go inside the dungeon|r
    .isOnQuest 2926
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2926 >> Turn in Gnogaine
    .target Ozzie Togglevolt
    .isQuestComplete 2926
step
.dungeon Gnomer
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2962 >> Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestTurnedIn 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Travel to Gnomeregan
    .isOnQuest 2962
step
.dungeon Gnomer
    .goto 1415/0,733.8032,-4996.5115,70,0
    .goto 1415/0,828.8429,-4926.1117
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>Kill |cRXP_ENEMY_Techbot|r. Loot him for his |cRXP_LOOT_Memory Core|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2922,1 -- Techbot's Memory Core (1)
    .mob Techbot
    .isOnQuest 2922
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1 -- White Punch Card (1)
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,735.9152,-4945.3543,-1
    .goto 1415/0,719.3712,-4946.7623,-1
    .goto 1415/0,722.5392,-4893.7278,-1
    .goto 1415/0,712.6833,-4894.4318,-1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_White Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-A|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .collect 9280,1,2930,1 -- Yellow Punch Card (1)
    .itemcount 9279,1 -- White Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,804.2030,-5055.1780,40,0
    .goto 1415/0,941.4826,-5160.7777
    .subzone 721,2 >> Enter the Gnomeregan instance portal
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Yellow Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-B|r
    >>The console looking machine is located at the gnomish safe zone at the bottom floor, next to the big circular room where the slimes are located
    .collect 9282,1,2930,1 -- Blue Punch Card (1)
    .itemcount 9280,1 -- Yellow Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernobee|r
    >>|cRXP_WARN_This will start an escort quest. |cRXP_FRIENDLY_Kernobee|r spawns randomly in The Dormitory, right outside of the gnomish safe zone|r
    .accept 2904 >> Accept A Fine Mess
    .unitscan Kernobee
step
.dungeon Gnomer
    >>Escort |cRXP_FRIENDLY_Kernobee|r back to the start of the dungeon
    .complete 2904,1 -- Kernobee Rescue
    .isOnQuest 2904
step
.dungeon Gnomer
    .use 9364 >>|cRXP_WARN_Use the|r |T132788:0|t[Heavy Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or|r |cRXP_ENEMY_Irradiated Horror|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or |cRXP_ENEMY_Irradiated Horror|r must be ALIVE when you use it|r
    >>|cRXP_WARN_Note: You must turn this quest in within 2 hours of acquiring the|r |T136006:0|t[High Potency Radioactive Fallout]
    .complete 2962,1 -- High Potency Radioactive Fallout (1)
    .mob Irradiated Slime
    .mob Irradiated Lurker
    .mob Irradiated Horror
    .isOnQuest 2962
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Blue Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-C|r
    >>The Punchograph is located on the suspended platform right next to the |cRXP_ENEMY_Electrocutioner 6000|r
    .collect 9281,1,2930,1 -- Red Punch Card (1)
    .itemcount 9282,1 -- Blue Punch Card (1)
    .skipgossip
    .isOnQuest 2930
    .unitscan Electrocutioner 6000
step
.dungeon Gnomer
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Red Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-D|r
    .complete 2930,1 -- Prismatic Punch Card (1)
    .itemcount 9281,1 -- Red Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    #label Thermaplugg
    >>Kill |cRXP_ENEMY_Mekgineer Thermaplugg|r
    .complete 2929,1 -- Mekgineer Thermaplugg slain
    .isOnQuest 2929
step
.dungeon Gnomer
    #completewith Finished
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    >>If you still haven't finished this quest, go back to places where you looted them before, since they respawn after a few minutes
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    #completewith Finished
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Use the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to start the quest|r
    .accept 2945 >> Accept Grime-Encrusted Ring
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
    >>|cRXP_WARN_Take the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to |cRXP_PICK_The Sparklematic 5200|r in The Clean Zone|r
    *You will have to back track to The Clean Zone near the instance entrance, make sure your teamates are there to help you on your trip back
    .turnin 2945 >> Turn in Grime-Encrusted Ring
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
    >>Click the |cRXP_PICK_The Sparklematic 5200|r one more time
    .accept 2947 >> Accept Return of the Ring
    .isQuestTurnedIn 2945

-- Turn ins:
step
.dungeon Gnomer
    .hs >> Hearth to Ironforge
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .bindlocation 1537,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step -- needs to be turned in asap because 2hr time limit
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >> Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step << Gnome !Warlock -- checking if gnomes can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
    .zoneskip Dun Morogh,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >> Travel to Ironforge
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >> Turn in Return of the Ring
    .accept 2948 >> Accept Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2947
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    >>|cRXP_WARN_If you are able to obtain a|r |T133215:0|t[Silver Bar] |cRXP_WARN_and a|r |T134105:0|t[Moss Agate] |cRXP_WARN_finish this quest. If not, abandon it|r
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >> Turn in Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2948
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin -2922,1 >> Turn in Save Techbot's Brain!
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >> Turn in The Grand Betrayal
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >> Turn in Data Rescue
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >> Turn in Essential Artificials
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
	#label end
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 27-29 Wetlands
#next 29-30 Ashenvale

step
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Turn in Claws from the Deep
    .accept 281 >> Accept Reclaiming Goods
    .target Karl Boran
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Turn in Daily Delivery
    .turnin 484 >> Turn in Young Crocolisk Skins
    .accept 471 >> Accept Apprentice's Duties
    .target James Halloran
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 289 >> Accept The Cursed Crew
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >> Turn in The Doomed Fleet
    .accept 321 >> Accept Lightforge Iron
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .target Innkeeper Helbrek
    .home >> Set your Hearthstone to Menethil Harbor
    .bindlocation 2104
step
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Turn in Digging Through the Ooze
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .accept 470 >> Accept Digging Through the Ooze
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Accept Fall of Dun Modr
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >> Travel upstairs in Menethil Keep
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .accept 464 >> Accept War Banners
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Turn in In Search of The Excavation Team
step
    .isOnQuest 943
    #loop    
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
    >>|cRXP_WARN_If you do not find this by the time you have finished killing 10 of each, skip it. You will complete it later|r
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .mob +Mottled Raptor
    .mob +Mottled Screecher
step
    #loop    
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Click the |cRXP_PICK_Damaged Crate|r on the ground
    .turnin 281 >> Turn in Reclaiming Goods
    .accept 284 >> Accept The Search Continues
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Click the |cRXP_PICK_Sealed Barrel|r on the ground
    .turnin 284 >> Turn in The Search Continues
    .accept 285 >> Accept Search More Hovels
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
    .turnin 285 >> Turn in Search More Hovels
    .accept 286 >> Accept Return the Statuette
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>Kill |cRXP_ENEMY_Cursed Sailors|r, |cRXP_ENEMY_Cursed Marines|r and |cRXP_ENEMY_First Mate Snellig|r. Loot him for his |cRXP_LOOT_Snuffbox|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .mob +Cursed Sailor
    .complete 289,2 -- Cursed Marine slain (5)
    .mob +Cursed Marine
    .complete 289,3 -- Snellig's Snuffbox
    .mob +First Mate Snellig  
step
    #loop
    .isOnQuest 471
    .goto Wetlands,18.0,27.0,0
    .goto Wetlands,22.8,21.8,0
    .goto Wetlands,28.0,18.8,0
    .goto Wetlands,18.0,27.0,70,0
    .goto Wetlands,22.8,21.8,70,0
    .goto Wetlands,28.0,18.8,70,0
    >>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 471,1 -- Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
step
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    >>Kill the |cRXP_ENEMY_Mosshides|r. Loot them for their |cRXP_LOOT_Crude Flints|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    .goto Wetlands,44.25,25.61
    >>Kill |cRXP_ENEMY_Crimson Oozes|r, |cRXP_ENEMY_Monstrous Oozes|r and |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
    .complete 470,1 -- Sida's Bag (1)
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .mob Black Ooze
step    
    #loop
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .goto Wetlands,30.8,31.0,80,0
    .goto Wetlands,37.8,29.6,80,0
    .goto Wetlands,43.0,33.2,80,0
    >>Kill the |cRXP_ENEMY_Mosshides|r. Loot them for their |cRXP_LOOT_Crude Flints|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    #loop
    .goto Wetlands,43.009,41.675,0
    .goto Wetlands,40.828,45.966,0
    .goto Wetlands,43.009,41.675,50,0
    .goto Wetlands,40.828,45.966,50,0
    .goto Wetlands,45.222,44.251
    >>Kill |cRXP_ENEMY_Dragonmaw Orcs|r. Loot them for their |cRXP_LOOT_War Banners|r
    >>|cRXP_WARN_Be aware the |cRXP_ENEMY_Dragonmaw Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
    .complete 464,1 -- Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Battlemaster
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Centurion
    .mob Dragonmaw Bonewarder
step
    #completewith next
    .goto 1437/0,-1993.600,-3498.400,20 >> Take the shortcut to Whelgar's Excavation Site
    .subzoneskip 1036,1 -- angerfang encampment (orcs)
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >>Turn in Ormer's Revenge
    .accept 295 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 299 >> Accept Uncovering the Past
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
    .complete 943,2 -- Flagongut's Fossil (1)
step
    #completewith Sarltooth
    .goto Wetlands,34.71,49.95,0
    >>Open the |cRXP_PICK_Ancient Relics|r and |cRXP_PICK_Loose Soil|r. Loot them for the |cRXP_LOOT_Fragments|r
    >>|cRXP_WARN_The |cRXP_LOOT_Fragments|r have random spawn locations in the Excavation Site|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .isOnQuest 943
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >>Turn in Ormer's Revenge
    .accept 296 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    #optional
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Turn in Uncovering the Past
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    #completewith FragmentDone
    >>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    #label Sarltooth
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>Kill |cRXP_ENEMY_Sarltooth|r. Loot him for his |cRXP_LOOT_Talon|r
    >>|cRXP_WARN_He is usually on the hill above the main excavation site but can sometimes patrol down|r
    .complete 296,1 --1/1 Sarltooth's Talon
    .unitscan Sarltooth
step
    #label FragmentDone
    #loop
    .goto Wetlands,34.32,51.79,40,0
    .goto Wetlands,35.73,49.06,40,0
    .goto Wetlands,33.86,46.85,40,0
    .goto Wetlands,34.91,44.22,40,0
    .goto Wetlands,36.62,42.16,40,0
    >>Open the |cRXP_PICK_Ancient Relics|r and |cRXP_PICK_Loose Soil|r. Loot them for the |cRXP_LOOT_Fragments|r
    >>|cRXP_WARN_The |cRXP_LOOT_Fragments|r have random spawn locations in the Excavation Site, including the elevated terrain where |cRXP_ENEMY_Sarltooth|r is|r
    >>|cRXP_WARN_Be sure to check behind the Large Tree marked on your map as well|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Turn in Uncovering the Past
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isQuestComplete 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 277 >> Turn in Fire Taboo
    .target Rethiel the Greenwarden
    .accept 275 >> Accept Blisters on The Land
step
    .isQuestTurnedIn 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .target Rethiel the Greenwarden
    .accept 275 >> Accept Blisters on The Land
step
    .goto Wetlands,64.78,75.31
    >>Loot the |cRXP_LOOT_Musquash Root|r on the ground
    .complete 335,2 -- Musquash Root
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .cooldown item,6948,>2,1
step
    #completewith MenethilTurnins
    .hs >> Hearth to Menethil Harbor
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 2104,1
    .subzoneskip 2104
    .subzoneskip 150
step
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
step
    .isQuestTurnedIn 942
    .goto Wetlands,10.84,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .turnin 943 >>Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >> Turn in The Cursed Crew
    .accept 290 >> Accept Lifting the Curse
    .target First Mate Fitzsimmons
step
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Turn in Digging Through the Ooze
    .target Sida
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Turn in Return the Statuette
    .target Karl Boran
step
    #label MenethilTurnins
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >>Turn in Apprentice's Duties
    .target James Halloran
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >> Travel upstairs in Menethil Keep
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 464 >> Turn in War Banners
    .accept 465 >> Accept Nek'rosh's Gambit
    .target Captain Stoutfist
step
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>Run up the mast of the ship
    >>Kill |cRXP_ENEMY_Captain Halyndor|r. Loot him for the |cRXP_LOOT_Strongbox Key|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    .mob Captain Halyndor
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>Enter through the large hole on the side of the ship
    >>Click |cRXP_PICK_Intrepid's Locked Strongbox|r on the ground
    .turnin 290 >>Turn in Lifting the Curse
    .accept 292 >>Accept The Eye of Paleth
step
    #loop
    .goto Wetlands,27.6,37.2,50,0
    .goto Wetlands,40.8,32.8,50,0
    .goto Wetlands,46.6,29.6,50,0
    .goto Wetlands,48.8,37.2,50,0
    .goto Wetlands,54.8,37.8,50,0
    .goto Wetlands,27.6,37.2,0
    .goto Wetlands,40.8,32.8,0
    .goto Wetlands,46.6,29.6,0
    .goto Wetlands,48.8,37.2,0
    .goto Wetlands,54.8,37.8,0
    .goto Wetlands,20.72,28.74,50,0
    >>Kill |cRXP_ENEMY_Fen Creepers|r 
    >>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_along the river streams|r
    .complete 275,1 --12/12 Fen Creeper
    .mob Fen Creeper
    .isOnQuest 275
step
    .goto Wetlands,47.45,47.01
    >>Click the |cRXP_PICK_Dragonmaw Catapult|r
    .turnin 465 >>Turn in Nek'rosh's Gambit
    .accept 474 >>Accept Defeat Nek'rosh
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >>Turn in Blisters on The Land
    .target Rethiel the Greenwarden
    .isQuestComplete 275
step
    #completewith next
    .goto 1437/0,-2673.700,-3708.900,45,0
    .goto 1437/0,-2601.200,-3707.000,40 >> |cRXP_WARN_Approach |cRXP_ENEMY_Chieftain Nek'rosh|r from the rear. It will be easier to pull some of the |cRXP_ENEMY_Orcs|r surrounding him|r
step
    .goto Wetlands,53.459,54.663
    >>Kill |cRXP_ENEMY_Chieftain Nek'rosh|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 474,1 --1/1 Nek'rosh's Head
    .mob Chieftain Nek'rosh
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 472 >>Turn in Fall of Dun Modr
    .accept 304 >> Accept A Grim Task
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Accept The Dark Iron War
    .target Motley Garmason
step
    #completewith next
    >>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
    >>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
    >>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
    >>|cRXP_WARN_Stay at Direforge Hill to the east. Avoid killing them at Dun Modr if possible|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>Kill |cRXP_ENEMY_Balgaras the Foul|r. Loot him for his |cRXP_LOOT_Ear|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
step
    #loop
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,61.83,26.27,0
    .goto Wetlands,60.01,24.35,0
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
    >>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
    >>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
    >>|cRXP_WARN_Stay at Direforge Hill to the east. Avoid killing them at Dun Modr if possible|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 304 >> Turn in A Grim Task
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Turn in The Dark Iron War
    .target Motley Garmason
    .isQuestComplete 303
step
    #completewith MenethilTurnins2
    .subzone 150 >> Return to Menethil Harbor
    .subzoneskip 2104
step
    .isQuestComplete 474
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r upstairs
    .goto Wetlands,9.86,57.48
    .turnin 474 >> Turn in Defeat Nek'rosh
    .target Captain Stoutfist
step
    #label MenethilTurnins2
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >>Turn in The Eye of Paleth
    .accept 293 >>Accept Cleansing the Eye
    .target Glorin Steelbrow
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 29-30 Ashenvale
#next 30-31 Wetlands

step
    #completewith next
    .goto Wetlands,5.429,57.485,25 >> Travel to the Menethil Harbor Dock
step
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Take the boat to Darkshore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    #completewith FSL
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Astranaar >> Fly to Astranaar
	.target Caylais Moonfeather
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    .goto 1440/1,-300.900,2796.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r 
    .target Shindrell Swiftfire
    .accept 4581 >>Accept Kayneth Stillwind
step
    #label FSL
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .accept 1035 >> Accept Fallen Sky Lake
step
    #completewith ShamefulWaste
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Forest Song >> Fly to Forest Song
    .target Daelyshia
step
    .goto 1440/1,-3149.800,2899.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    >>|cRXP_FRIENDLY_Gnarl|r |cRXP_WARN_patrols slightly|r
    .target Gnarl
    .accept 9526 >>Accept Reclaiming Felfire Hill
step
    .goto 1440/1,-3215.500,2954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .target Kayneth Stillwind
    .turnin 4581 >>Turn in Kayneth Stillwind
    .accept 1011 >>Accept Forsaken Diseases
    .accept 9519 >>Accept The Lost Chalice
step
    .goto 1440/1,-3260.400,2966.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r 
    .target Sentinel Luciel Starwhisper
    .accept 9518 >>Accept Agents of Destruction
step
    .goto 1440/1,-3286.700,2996.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r 
    .target Vindicator Vedaar
    .accept 9516 >>Accept Destroy the Legion
step
    .goto 1440/1,-3323.700,3001.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r 
    .target Illiyana
    .accept 1021 >>Accept Vile Satyr! Dryads in Danger!
step
    #label ShamefulWaste
    .goto 1440/1,-3307.000,2949.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Architect Nemos|r 
    .target Architect Nemos
    .accept 9517 >>Accept A Shameful Waste
step
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r 
    .fp Azshara>> Get the Azshara flight path
    .target Jarrodenus
    .isOnQuest 1017
step
    #completewith next
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r 
    .fly Forest Song>> Fly to Forest Song
    .target Jarrodenus
    .subzoneskip 2358
    .subzoneskip 430
step
    .goto 1440/1,-2994.000,2793.600
    >>Loot the |cRXP_PICK_Chalice of Elune|r on the large monument
    .complete 9519,1 --|Chalice of Elune: 1/1
step
    #loop
    .goto 1440/1,-3023.600,2772.900,0
    .goto 1440/1,-2958.200,2698.000,15,0
    .goto 1440/1,-2914.100,2763.800,15,0
    .goto 1440/1,-3023.600,2772.900,15,0
    .goto 1440/1,-2974.000,2686.500,15,0
    >>Loot the |cRXP_PICK_Tainted Wood|r on the ground. They look like small bundles of wood next to the trees around Satyrnaar
    .complete 9517,2 --|Satyrnaar Fel Wood: 5/5
step
#completewith next
#optional
    >>Kill |cRXP_ENEMY_Warsong Shredders|r, |cRXP_ENEMY_Horde Deforesters|r and |cRXP_ENEMY_Horde Scouts|r
    >>Loot the |cRXP_PICK_Lumber Piles|r on the ground. They look like stacked piles of wood
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    >>Kill |cRXP_ENEMY_Overseer Gorthak|r
    .goto 1440/1,-3419.300,2383.000
    .complete 9518,1 --|Overseer Gorthak slain: 1/1
    .mob Overseer Gorthak
step
#loop
    .goto 1440/1,-3329.900,2429.100,0
    .goto 1440/1,-3345.300,2238.000,40,0
    .goto 1440/1,-3141.600,2410.000,40,0
    .goto 1440/1,-3306.200,2618.000,40,0
    .goto 1440/1,-3412.900,2651.100,40,0
    >>Kill |cRXP_ENEMY_Warsong Shredders|r, |cRXP_ENEMY_Horde Deforesters|r and |cRXP_ENEMY_Horde Scouts|r
    >>Loot the |cRXP_PICK_Lumber Piles|r on the ground. They look like stacked piles of wood
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    #completewith demons
    >>Kill |cRXP_ENEMY_Mannoroc Lashers|r, |cRXP_ENEMY_Roaming Felguards|r and |cRXP_ENEMY_Searing Infernals|r. Loot them for the |T134943:0|t[|cRXP_LOOT_Diabolical Plans|r]
    .use 23777 >>|cRXP_WARN_Use the|r |T134943:0|t[|cRXP_LOOT_Diabolical Plans|r] |cRXP_WARN_to begin the quest|r
    >>|cRXP_WARN_This item has a very low drop rate, don't go out of your way to get it|r
    .collect 23777,1,9520
    .accept 9520 >> Accept Diabolical Plans
    .mob Roaming Felguard
    .mob Searing Infernal
    .mob Mannoroc Lasher
    --Seems low drop rate? might be worth skipping if bad luck
step
#label dirtmound
#sticky
#loop    
    .goto 1440/1,-3122.900,2067.800,40,0
    .goto 1440/1,-2950.700,2155.900,40,0
    .goto 1440/1,-2993.200,1968.600,40,0
    .goto 1440/1,-3057.000,1953.400,40,0
    .goto 1440/1,-3155.700,1903.900,40,0
    .goto 1440/1,-3026.300,2057.500,0
    >>Click the |cRXP_PICK_Fertile Dirt Mounds|r on the ground
    .complete 9526,1
step
#label demons
    .goto 1440/1,-3122.900,2067.800,40,0
    .goto 1440/1,-2950.700,2155.900,40,0
    .goto 1440/1,-3057.000,1953.400,40,0
    .goto 1440/1,-3155.700,1903.900,40,0
    .goto 1440/1,-3157.000,1725.400,40,0
    .goto 1440/1,-3061.900,1624.000,40,0
    .goto 1440/1,-3147.000,1935.900,40,0
    .goto 1440/1,-3168.500,1855.500,0
    >>Kill |cRXP_ENEMY_Mannoroc Lashers|r, |cRXP_ENEMY_Roaming Felguards|r and |cRXP_ENEMY_Searing Infernals|r
    .complete 9516,1 --|Mannoroc Lasher slain: 6/6
    .mob +Mannoroc Lasher
    .complete 9516,2 --|Roaming Felguard slain: 6/6
    .mob +Roaming Felguard
    .complete 9516,3 --|Searing Infernal slain: 6/6
    .mob +Searing Infernal
step
#optional
    .use 23777 >>|cRXP_WARN_Use the|r |T134943:0|t[|cRXP_LOOT_Diabolical Plans|r] |cRXP_WARN_to begin the quest|r
    .collect 23777,1,9520
    .accept 9520 >> Accept Diabolical Plans
    .itemcount 23777,1
step
#requires dirtmound
    .goto Ashenvale,75.29,72.00
    >>Loot the |cRXP_LOOT_Bottle of Disease|r on the table
    >>|cRXP_WARN_Be cautious as the |cRXP_ENEMY_Forsaken|r defending it can be in|r |T132320:0|t[Stealth]
    .complete 1011,1 -- Bottle of Disease (1)
step
    .goto Ashenvale,66.649,82.189
    >>Kill the |cRXP_ENEMY_Shadethicket Oracle|r. Loot it for the |cRXP_LOOT_Fallen Moonstone|r
    .complete 1035,1
    .mob Shadethicket Oracle
step
    #requires slimes
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >> Travel to The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >> Ascend Dreadmist Peak. Follow the Arrow to the top
    .isOnQuest 1017
step
    .goto The Barrens,48.22,19.15
    >>Kill |cRXP_ENEMY_Sarilus Foulborne|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_The surrounding |cRXP_ENEMY_Burning Blade|r are only level 10-12|r
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,48.98,20.01,20,0
    .goto The Barrens,50.42,21.93,25,0
    .goto The Barrens,51.60,24.87,25,0
    .goto The Barrens,58.76,25.28,60,0
    .goto The Barrens,63.08,37.16
    .subzone 392>> Travel to Ratchet. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path
    .disablecheckbox
    .fly Forest Song >> Fly to Forest Song
    .target Bragok
    .isOnQuest 1017
    .zoneskip The Barrens,1

step
    .goto 1440/1,-3215.400,2954.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .target Kayneth Stillwind
    .turnin 9519 >>Turn in The Lost Chalice
    .turnin 1011 >>Turn in Forsaken Diseases
step
    .goto 1440/1,-3262.000,2967.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .target Sentinel Luciel Starwhisper
    .turnin 9518 >>Turn in Agents of Destruction
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .target Vindicator Vedaar
    .turnin 9516 >>Turn in Destroy the Legion
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .target Vindicator Vedaar
    .turnin 9520 >>Turn in Diabolical Plans
    .isOnQuest 9520
step
    .goto 1440/1,-3154.100,2898.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    >>|cRXP_FRIENDLY_Gnarl|r |cRXP_WARN_patrols slightly|r
    .target Gnarl
    .turnin 9517 >>Turn in A Shameful Waste
    .turnin 9526 >>Turn in Reclaiming Felfire Hill
step
    .goto 1440/1,-2817.500,2949.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
    .target Anilia
    .turnin 1021 >>Turn in Vile Satyr! Dryads in Danger!
    .accept 1031 >>Accept The Branch of Cenarius
step
    .goto Ashenvale,77.99,42.41
    >>Kill |cRXP_ENEMY_Geltharis|r. Loot him for his |cRXP_LOOT_Branch of Cenarius|r
    .complete 1031,1
    .mob Geltharis
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1031 >>Turn in The Branch of Cenarius
    .accept 1032 >> Accept Satyr Slaying!
    .xp <31,1
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1031 >>Turn in The Branch of Cenarius
step
    >>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
    .goto 1440/1,-2818.000,2925.500
    .complete 1032,1 --|Satyr Horns: 16/16
    --Kill Xavian satyrs
    .isOnQuest 1032
step
    .goto 1440/1,-3323.100,3001.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1032 >>Turn in Satyr Slaying!
    .isQuestComplete 1032
step
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suralais Farwind|r
    .target Suralais Farwind
    .goto 1440/1,-3205.700,3001.200
    .fly Astranaar >>Fly to Astranaar
step
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1035 >> Turn in Fallen Sky Lake
step
    .goto Ashenvale,49.79,67.21    
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >> Turn in Mage Summoner
	>>|cRXP_WARN_This quest will reward you with the|r |T134754:0|t[Light of Elune]
    >>|T134754:0|t[Light of Elune] |cRXP_WARN_- Grants immunity from all damage and spells for 10 sec.|r
    >>|cRXP_WARN_This is a ONE time use only. Use it in an emergency|r
    .target Sentinel Velene Starstrike
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .hs >> Hearth to Menethil
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 30-31 Wetlands
#next 31-32 Duskwood/STV

step
    #optional
    #completewith BlessedArm
    .zone Wetlands >> Travel to Wetlands
step
    >>Click the |cRXP_PICK_Waterlogged Chest|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Turn in Lightforge Iron
    .accept 324 >>Accept The Lost Ingots
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Ingots|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    #label BlessedArm
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >>Turn in The Lost Ingots
    .accept 322 >>Accept Blessed Arm
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step
    #completewith PleaTurnin
    .subzone 205 >> Travel to Dun Modr
step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Head down the spiral staircase on the bridge
    >>Click on |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
    .turnin 631 >>Turn in The Thandol Span
    .accept 632 >>Accept The Thandol Span
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Turn in The Thandol Span
    .accept 633 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foggy MacKreel|r
    >>|cRXP_WARN_Jump down onto the invisible chain first, then onto the broken beam on the bridge. All classes are able to do this jump. If you are unable to do it, skip this step|r
    .accept 647 >>Accept MacKreel's Moonshine
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_Click here for a video guide|r
step
    .goto Arathi Highlands,44.28,92.877
    >>Dive down underwater
    >>Open the |cRXP_PICK_Waterlogged Letter|r. Loot it for the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r]
    >>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r] to start the quest|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Accept Sully Balloo's Letter
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Swim east toward the ramp here
step
    .goto Arathi Highlands,48.789,88.058
    >>Click the |cRXP_PICK_Cache of Explosives|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Turn in The Thandol Span
    .accept 634 >>Accept Plea To The Alliance
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >> Travel to Refuge Point
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Turn in Plea To The Alliance
    .target Captain Nials
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >> Get the Arathi Highlands Flight Path
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r in the basement
    >>|cRXP_WARN_If you fail this timed quest, abandon it and skip this step|r
    .turnin 647 >>Turn in MacKreel's Moonshine
    .target Brewmeister Bilger
    .isOnQuest 647
step
    #optional
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Turn in Southshore
    .target Loremaster Dibbs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Get the Southshore Flight Path
    .target Darla Harris
    .zoneskip Hillsbrad Foothills,1
step
    #completewith next
    .goto Hillsbrad Foothills,56.8,50.2,85,0
    .goto Hillsbrad Foothills,61.8,43.2,85,0
    .goto Hillsbrad Foothills,67.0,35.4,85,0
    .goto Hillsbrad Foothills,68.6,17.0,85,0
    .goto Hillsbrad Foothills,71.6,8.0,85,0
    >>Head north along the stream killing |cRXP_ENEMY_Snapjaws|r along the way for their |cRXP_LOOT_Turtle Meat|r
    >>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Turtle Meat|r now|r
    .collect 3712,10,555,1
    .zoneskip Western Plaguelands
    .mob Snapjaw
step
    #completewith next
    .zone Western Plaguelands >> Travel to Western Plaguelands
    >>|cRXP_WARN_NOTE: You may encounter a level 34 |cRXP_ENEMY_Mountain Lion|r on the way there. Just run away from it if you agro it|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>> Get the Western Plaguelands Flight Path
    .fly Ironforge >>Fly to Ironforge << !Mage
    .target Bibilfaz Featherwhistle
step << Mage
    #completewith KingsTribute
    .zone Ironforge >> |cRXP_WARN_Cast|r |T135757:0|t[Teleport: Ironforge]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Javad|r
    .accept 9551 >> Accept Call of Air
    .trainer >> Train your class spells
    .target Farseer Javad
step << Rogue/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .trainer >> Train your class spells
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Turn in Sully Balloo's Letter
    .timer 17,Sully Balloo's Letter RP
    .accept 683 >> Accept Sara Balloo's Plea
    .target Sara Balloo
step << Hunter/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelv Sternhammer|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto 1455/0,-1269.700,-5047.600 << Warrior
    .trainer >> Train your class spells
    .accept 1718 >> Accept The Islander << Warrior
    .target Regnus Thundergranite << Hunter
    .target Kelv Sternhammer << Warrior
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 1179 >>Accept The Brassbolts Brothers
    .target Pilot Longbeard
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r downstairs
    >>|cRXP_BUY_Buy a|r |T134402:0|t[|cRXP_FRIENDLY_Heavy Quiver|r]
	.collect 7371,1
    .target Thalgus Thunderfist
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >> Turn in Sara Balloo's Plea
    .accept 686 >> Accept A King's Tribute
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Turn in A King's Tribute
    .accept 689 >> Accept A King's Tribute
    .target Grand Mason Marblesten
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Travel to Kharanos and buy your|r |T132247:0|t[Mechanostrider] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Travel to Amberstill Ranch and buy your|r |T132248:0|t[Ram] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    .goto Ironforge,16.57,84.04
    .zone Ironforge >> Head back to Ironforge
step << !Mage
    #completewith CleansingtheEye
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Take the tram to Stormwind
step << !Mage
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
    .bronzetube
    .target Billibub Cogspinner
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 31-32 Duskwood/STV
#next 32-33 Shimmering Flats

step << !Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
    .isQuestComplete 2928
step << !Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Turn in Blessed Arm
    .accept 325 >> Accept Armed and Ready
    .target Grimand Elmore
    .isQuestTurnedIn 324
step
    #completewith CleansingtheEye
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua
step
    #completewith CleansingtheEye
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
    .accept 1274 >> Accept The Missing Diplomat
    .target Thomas
step
    #label CleansingtheEye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 293 >> Turn in Cleansing the Eye
    .target Archbishop Benedictus
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
    .accept 1274 >> Accept The Missing Diplomat
    .target Thomas
step << Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Turn in Blessed Arm
    .accept 325 >> Accept Armed and Ready
    .target Grimand Elmore
    .isQuestTurnedIn 324
step << Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
    .isQuestComplete 2928
step
    #optional
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Accept Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop DeLavey|r
    .turnin 1274 >> Turn in The Missing Diplomat
    .accept 1241 >> Accept The Missing Diplomat
    .target Bishop DeLavey
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Turn in The Missing Diplomat
    .accept 1242 >> Accept The Missing Diplomat
    .target Jorgen
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Turn in The Missing Diplomat
    .accept 1243 >> Accept The Missing Diplomat
    .target Elling Trias
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849 >> Deposit the following items into your bank:
    >>|T134187:0|t[Musquash Root] -- 2784
    >>|T132765:0|t[Crate of Crash Helmets] -- 5849
    .target Newton Burnside
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>|T133024:0|t[Bronze Tube]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .target Auctioneer Jaxon
step
    #completewith dusk2
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood>> Fly to Duskwood
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .turnin 377 >> Turn in Crime and Punishment
    .target Councilman Millstipe
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    >>|cRXP_WARN_Skip this step if you haven't found a bronze tube|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .isQuestTurnedIn 174
    .target Blind Mary 
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Accept Look To The Stars
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .accept 159 >> Accept Juice Delivery
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Set your Hearthstone to Duskwood
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
    .accept 58 >> Accept The Night Watch
    .target Commander Althea Ebonlocke
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
    .accept 228 >> Accept Mor'Ladim
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1243 >> Turn in The Missing Diplomat
    .accept 1244 >> Accept The Missing Diplomat
    .target Watcher Backus
step
    #completewith next 
    .goto Elwynn Forest,84.60,69.37,100 >> Travel to the Eastvale Logging Camp 
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 74 >> Turn in The Legend of Stalvan
    .accept 75 >> Accept The Legend of Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Head upstairs in the House
    >>Open |cRXP_PICK_Marshal Haggard's Chest|r. Loot it for |cRXP_LOOT_A Faded Journal Page|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 75 >> Turn in The Legend of Stalvan
    .accept 78 >> Accept The Legend of Stalvan
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie Hunter|r and |cRXP_FRIENDLY_Randal Hunter|r
    .vendor >>|cRXP_BUY_Buy a|r |T132261:0|t[|cFF0070FFHorse|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Shaman
    #completewith next
    .isOnQuest 335,98
	.hs >> Hearth to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Turn in The Legend of Stalvan
    .accept 79 >> Accept The Legend of Stalvan
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
    .turnin 79 >> Turn in The Legend of Stalvan
    .accept 80 >> Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >> Turn in The Legend of Stalvan
    .accept 97 >> Accept The Legend of Stalvan
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >> Turn in The Legend of Stalvan
    .accept 98 >> Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Loot the |cRXP_LOOT_Tear of Tilloa|r on the ground
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >> Kill |cRXP_ENEMY_Stalvan Mistmantle|r. Loot him for his |cRXP_LOOT_Family Ring|r
	>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_can hit quite hard. Kite him back to town and get help from the |cRXP_FRIENDLY_Watchers|r if needed|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r inside
    .turnin 98 >> Turn in The Legend of Stalvan
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>> Fly to Westfall
    .target Felicia Maline
step << !Shaman
    #completewith JuiceDelivery
    .goto Duskwood,28.10,31.46,100 >> Travel towards |cRXP_FRIENDLY_Abercrombie|r in Duskwood
step << !Shaman
    #completewith JuiceDelivery
    >>Kill |cRXP_ENEMY_Black Widow Hatchlings|r on the way to |cRXP_FRIENDLY_Abercrombie|r. Loot them for |cRXP_LOOT_Vials of Spider Venom|r
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    #label JuiceDelivery
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Turn in Juice Delivery
    .accept 133 >> Accept Ghoulish Effigy
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>Kill |cRXP_ENEMY_Plague Spreaders|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Other |cRXP_ENEMY_Ghouls|r may also drop |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r but focus on|r |cRXP_ENEMY_Plague Spreaders|r
    .complete 58,1 --20/20 Plague Spreader slain
    .mob +Plague Spreader
    .complete 133,1 --7/7 Ghoul Rib
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
    .complete 101,1 --10/10 Ghoul Fang
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Turn in Ghoulish Effigy
    .accept 134 >> Accept Ogre Thieves
    .target Abercrombie
step
    #completewith next
    >>Kill |cRXP_ENEMY_Black Widow Hatchlings|r on the way to the Defias House
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,23.926,72.075
    >>Open the |cRXP_PICK_Defias Strongbox|r. Loot it for the |cRXP_LOOT_Defias Docket|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>Loot |cRXP_LOOT_Abercrombie's Crate|r on the ground
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >> Enter the Vul'Gol Ogre Cave
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Kill |cRXP_ENEMY_Zzarc' Vul|r. Loot him for his |cRXP_LOOT_Monocle|r
    >>|cRXP_ENEMY_Zzarc' Vul|r |cRXP_WARN_has 2 spawn points inside the Cave|r
    .complete 181,1 --1/1 Ogre's Monocle
    .mob Zzarc' Vul
    .isQuestTurnedIn 174
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Loot them for their |cRXP_LOOT_Spider Venom|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Turn in Ogre Thieves
    .accept 160 >> Accept Note to the Mayor
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Click |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Turn in A Daughter's Love
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Turn in Armed and Ready
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 55 >> Accept Morbent Fel
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group 3
    #completewith next
    >>Clear your way to the 2nd floor of the house
    .cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
    >>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
    >>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
    .use 7297
step
    .group 3
    .goto Duskwood,16.90,33.40
    >>Kill |cRXP_ENEMY_Morbent Fel|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Turn in Morbent Fel
    .isQuestComplete 55
    .target Sven Yorgen
step
    .group 3
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_is a level 30 Elite which hits very hard but moves quite slow. Try to kite him around any large trees if required|r
    >>|cRXP_WARN_You will have another chance later to complete this step if you're unable to find a group now|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    .isOnQuest 181,101,78,58,160
    .hs >> Hearth to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >> |T136010:0|t[Astral Recall] back to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Fly to Darkshire
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Turn in The Legend of Stalvan
    .accept 79 >> Accept The Legend of Stalvan
    .target Tavernkeep Smitts
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
    .target Watcher Ladimore
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
    .turnin 58 >> Turn in The Night Watch
    .turnin 79 >> Turn in The Legend of Stalvan << !Shaman
    .accept 80 >> Accept The Legend of Stalvan << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >> Turn in The Legend of Stalvan
    .accept 97 >> Accept The Legend of Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >> Turn in Note to the Mayor
    .accept 251 >> Accept Translate Abercrombie's Note
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Turn in Translate Abercrombie's Note
    .target Sirra Von'Indi
    .accept 401 >> Accept Wait for Sirra to Finish
    .turnin 401 >> Turn in Wait for Sirra to Finish
    .accept 252 >> Accept Translation to Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >> Turn in Translation to Ello
    .target Lord Ello Ebonlocke
step
    .group
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 253 >> Accept Bride of the Embalmer
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Throw away the |T134939:0|t[Translated Letter from The Embalmer] you no longer need it
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >> Turn in The Legend of Stalvan
    .accept 98 >> Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Turn in Look To The Stars
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r inside
    .turnin 101 >> Turn in The Totem of Infliction
    .target Madame Eva
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1244 >> Turn in The Missing Diplomat
    .accept 1245 >> Accept The Missing Diplomat
    .target Watcher Backus
step << !Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Loot the |cRXP_LOOT_Tear of Tilloa|r on the ground
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,77.30,36.20
    >> Kill |cRXP_ENEMY_Stalvan Mistmantle|r. Loot him for his |cRXP_LOOT_Family Ring|r
	>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_can hit quite hard. Kite him back to town and get help from the |cRXP_FRIENDLY_Watchers|r if needed|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r inside
    .turnin 98 >> Turn in The Legend of Stalvan
    .target Madame Eva
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 221 >> Accept Worgen in the Woods
    .target Calor
step
    #loop
    .goto Duskwood,63.8,51.8,0
    .goto Duskwood,61.2,40.2,0
    .goto Duskwood,65.2,51.6,0
    .goto Duskwood,61.4,41.2,0
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2,60,0
	>>Kill |cRXP_ENEMY_Nightbane Dark Runners|r
    >>|cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_move very fast and have a larger than normal agro radius|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Turn in Worgen in the Woods
    .accept 222 >> Accept Worgen in the Woods
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >> Kill |cRXP_ENEMY_Nightbane Vile Fangs|r and |cRXP_ENEMY_Nightbane Tainted Ones|r
	>>|cRXP_WARN_Be careful as all the mobs in the area respawn at once after a few minutes|r
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    #completewith stvEnd2
    .goto Duskwood,44.7,88.3
    .zone Stranglethorn Vale >> Head south to Stranglethorn Vale
step
    .goto Stranglethorn Vale,38.237,4.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nizzle|r
    .fp Rebel >> Get the Rebel Camp flight path
    .target Nizzle
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
    >>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
    >>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
    .accept 215 >> Accept Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 583 >> Accept Welcome to the Jungle
    .target +Barnil Stonepot
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Turn in Welcome to the Jungle
    .target +Hemet Nesingwary Jr.
    .goto Stranglethorn Vale,35.658,10.808
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Accept Tiger Mastery
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Accept Panther Mastery
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    #completewith next
	>>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #loop
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,0
    .goto Stranglethorn Vale,31.76,9.00,0
    .goto Stranglethorn Vale,35.40,12.50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
	>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    #loop
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,42.74,12.40,0
    .goto Stranglethorn Vale,41.43,9.77,0
    .goto Stranglethorn Vale,40.67,11.65,0
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
	>>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    >>|cRXP_WARN_Don't accept the follow ups yet|r
    .turnin 185 >> Turn in Tiger Mastery
    --.accept 186 >> Accept Tiger Mastery
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >> Turn in Panther Mastery
    --.accept 191 >> Accept Panther Mastery
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    >>|cRXP_WARN_Don't accept the follow up yet|r
    .turnin 215 >> Turn in Jungle Secrets
    .target Lieutenant Doren
step
    #completewith next
    .goto Stranglethorn Vale,40.64,3.44,20,0
    .goto Duskwood,28.8,30.9
    .zone Duskwood >> Run back to Duskwood
step
    .group 2
    .goto Duskwood,28.864,30.765
    >>Click |cRXP_PICK_Eliza's Grave Dirt|r to summon |cRXP_ENEMY_Eliza|r
    >>Kill |cRXP_ENEMY_Eliza|r. Loot her for the |cRXP_LOOT_Embalmer's Heart|r
    >>|cRXP_ENEMY_Eliza|r |cRXP_WARN_will cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] |cRXP_WARN_along with summoning multiple|r |cRXP_ENEMY_Guards|r
    .complete 253,1 --1/1 The Embalmer's Heart
    .mob Eliza
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Click |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Turn in A Daughter's Love
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .isOnQuest 253,222
    .hs >> Hearth to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 253,222
    .cast 556 >> |T136010:0|t[Astral Recall] back to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith WITW
    .subzone 42 >> Run back to Darkshire
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 253 >> Turn in Bride of the Embalmer
    .isQuestComplete 253
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Turn in Worgen in the Woods
    .accept 223 >> Accept Worgen in the Woods
    .target Calor
step
    #label WITW
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >> Turn in Worgen in the Woods
    .target Jonathan Carevin
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>> Fly to Stormwind
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >> |cRXP_WARN_Cast|r |T135763:0|t[Teleport: Stormwind]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Accept Malin's Request
    .target Archmage Malin
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Accept James Hyal
    .target Connor Rivers
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849 >> Withdraw the following items from your bank:
    >>|T134187:0|t[Musquash Root] -- 2784
    >>|T132765:0|t[Crate of Crash Helmets] -- 5849
    .target Newton Burnside    
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Umbrua|r
	.trainer >> Train your class spells
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Turn in The Missing Diplomat
    .accept 1246 >> Accept The Missing Diplomat
    .target Elling Trias
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will become hostile after accepting the follow up quest. Defeat him|r
    .turnin 1246 >> Turn in The Missing Diplomat
    .accept 1447,1 >> Accept The Missing Diplomat
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Defeat |cRXP_ENEMY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will also attack with 2 |cRXP_ENEMY_Old Town Thugs|r. Ignore them and focus on|r |cRXP_ENEMY_Dashel Stonefist|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
    .turnin 1447 >> Turn in The Missing Diplomat
    .accept 1247 >> Accept The Missing Diplomat
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Turn in The Missing Diplomat
    .accept 1248 >> Accept The Missing Diplomat
    .target Elling Trias
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >> Withdraw the following items from your bank:
    >>|T134187:0|t[Musquash Root] -- 2784
    >>|T132765:0|t[Crate of Crash Helmets] -- 5849
    >>|T132824:0|t[Filled Bota Bag] << Shaman
    .target Newton Burnside
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Accept Malin's Request
    .target Archmage Malin
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Accept James Hyal
    .target Connor Rivers
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .turnin 335 >> Turn in A Noble Brew
    .accept 336 >> Accept A Noble Brew
    .target Zardeth of the Black Claw
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1798 >> Accept Seeking Strahad
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demisette Cloyce|r
    >>|cRXP_WARN_Skip this step if you picked up the same quest from Ironforge earlier|r
    .accept 4738 >> Accept In Search of Menara Voidrender
    .target Demisette Cloyce
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua    
step
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
    .turnin 336 >> Turn in A Noble Brew
    .target Lord Baurles K. Wishock
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Accept Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,74.010,30.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .accept 543 >>Accept The Perenolde Tiara
    .target Count Remington Ridgewell
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Southshore soon
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>10 |T134026:0|t[Turtle Meat]
    .collect 3712,10,555,1 
    .target Auctioneer Jaxon
step << Druid
    #completewith DruidMount
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
	.zoneskip Moonglade
step << Druid
    #completewith DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Fly to Teldrassil
    .target Silva Fil'naveth
step << Druid
    #completewith DruidMount
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    #label DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lelanai|r and |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FFNightsaber|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << !Mage
    #completewith FlyWetlands
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
    .zoneskip Wetlands
step << Mage
    #completewith FlyWetlands
    .zone Ironforge >> |cRXP_WARN_Cast|r |T135757:0|t[Teleport: Ironforge]  
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Travel to Kharanos and buy your|r |T132247:0|t[Mechanostrider] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Travel to Amberstill Ranch and buy your|r |T132248:0|t[Ram] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    #completewith next
    .goto Ironforge,16.57,84.04
    .zone Ironforge >> Head back to Ironforge
step
    #label FlyWetlands
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
	.fly Wetlands >> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Darnassus
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Set your Hearthstone to Menethil Harbor
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Accepting this quest will make |cRXP_ENEMY_Tapoke "Slim" Jahn|r by the Inn entrance|r |T132320:0|t[Stealth] |cRXP_WARN_and run away outside|r
    .turnin 1248 >> Turn in The Missing Diplomat
    .accept 1249,1 >> Accept The Missing Diplomat
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_Quickly run outside!|r
    >>|cRXP_WARN_Defeat |cRXP_ENEMY_Tapoke "Slim" Jahn|r. |cRXP_ENEMY_Slim's Friend|r will run away once |cRXP_ENEMY_Tapoke "Slim" Jahn|r submits|r
    >>|cRXP_WARN_Use any Crowd Control (CC) on |cRXP_ENEMY_Slim's Friend|r if needed|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
    >>|cRXP_WARN_Wait out the RP|r
    .turnin 1249 >> Turn in The Missing Diplomat
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >> Accept The Missing Diplomat
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Turn in The Missing Diplomat
    .accept 1264 >> Accept The Missing Diplomat
    .target Mikhail
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Take the boat to Darkshore
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lelanai|r and |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FFNightsaber|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #optional
	.hs >> Hearth to Menethil Harbor
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Take the boat to Darkshore
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >> Take the boat to Azuremyst Isle
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >> Enter The Exodar through the back enterance
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Farseer Nobundo|r up the ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r
    .target Farseer Nobundo
    .turnin 9551 >> Turn in Call of Air
    .accept 9552 >> Accept Call of Air
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Exit The Exodar
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r and |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Buy a|r |T132255:0|t[|cFF0070FFElekk|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    .target Torallius the Pack Handler
    .target Aalun
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Fly to Blood Watch
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r underwater
    .turnin 9504 >> Turn in Call of Water
    .accept 9508 >> Accept Call of Water
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >> Click the |cRXP_PICK_Barrel of Filth|r to summon |cRXP_ENEMY_Tel'athion the Impure|r
    .timer 3,Call of Water RP
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>Kill |cRXP_ENEMY_Tel'athion the Impure|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r underwater
    .turnin 9508 >> Turn in Call of Water
    .accept 9509 >> Accept Call of Water
    .target Aqueous
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >> Travel to Blood Watch
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fly to The Exodar
    .target Laando
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >> Follow the arrow closely around the outside of The Exodar to get to Wildwind Path
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >> Continue to follow the path up Wildwind Path
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Turn in Call of Air
    .accept 9553 >> Accept Call of Air
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Turn in Call of Air
    .accept 9554 >> Accept Call of Air
    .target Susurrus
step << Shaman
    .gossip 17435,0 >> Talk to |cRXP_FRIENDLY_Susurrus|r again to return to The Exodar
    .timer 89,Call of Air RP
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >> Head down into The Exodar again
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r
    >>|cRXP_WARN_You will gain the|r |T136022:0|t[Swift Wind] |cRXP_WARN_buff for 1 hour after turning in this quest, increasing your movement speed by 40% and attack speed by 30%|r
    >>|cRXP_WARN_Be sure not to AFK while you have this buff!|r
    .target Farseer Nobundo
    .turnin 9509 >> Turn in Call of Water
    .turnin 9554 >> Turn in Call of Air
step << Draenei
    #optional
	.hs >> Hearth to Menethil Harbor
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >> |T136010:0|t[Astral Recall] to Wetlands
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Take the boat to Darkshore
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Wetlands
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Turn in James Hyal
    .accept 1302 >> Accept James Hyal
    .target Vincent Hyal
step
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >> Take the boat to Theramore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
    .zoneskip Thousand Needles
    .zoneskip The Barrens
]])