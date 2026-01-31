if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Draenei
#group RXP TBC Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#name 1-12 Azuremyst Isle
#next 12-14 Darkshore

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Accept You Survived!
    .target Megelon
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >> |cRXP_WARN_Kill 2-3 |cRXP_ENEMY_Vale Moths|r or |cRXP_ENEMY_Volatile Mutations|r for vendor trash (worth 10c+)|r
    >>|cRXP_WARN_Vendor trash at |cRXP_FRIENDLY_Aurok|r inside|r
    .mob Vale Moth
    .mob Volatile Mutation
    .target Aurok
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
	.train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .target Firmanvaar
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Kore
step << Priest/Mage
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_Vale Moths|r and |cRXP_ENEMY_Volatile Mutations|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r
    .mob Vale Moth
    .mob Volatile Mutation
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Turn in You Survived!
    .accept 9280 >> Accept Replenishing the Healing Crystals
    .target Proenitus
step << Priest/Mage
    .goto Azuremyst Isle,79.253,50.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ryosh|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Ryosh
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .accept 10302 >> Accept Volatile Mutations
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,0
    .goto Azuremyst Isle,75.27,43.70,0
    .goto Azuremyst Isle,73.4,51.4,0
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Kill |cRXP_ENEMY_Volatile Mutations|r
    >>Kill |cRXP_ENEMY_Vale Moths|r. Loot them for their |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_Volatile Mutations|r as you will turn in the quest and complete |cRXP_ENEMY_Vale Moths|r after|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob +Volatile Mutation
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob +*Vale Moth
    .disablecheckbox
step
    #optional
    .isQuestComplete 9280
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Turn in Replenishing the Healing Crystals
    .accept 9409 >> Accept Urgent Delivery!
    .target Proenitus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r and |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 10302 >> Turn in Volatile Mutations
    .accept 9293 >> Accept What Must Be Done...
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >> Accept Botanical Legwork
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #completewith next
    >>Kill |cRXP_ENEMY_Vale Moths|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.94,52.21,0
    .goto Azuremyst Isle,72.26,49.29,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Kill |cRXP_ENEMY_Mutated Root Lashers|r. Loot them for their |cRXP_LOOT_Lasher Samples|r
    >>Loot the |cRXP_LOOT_Corrupted Flowers|r on the ground
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step
    #loop
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
    >>Kill |cRXP_ENEMY_Vale Moths|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #optional
    .isQuestTurnedIn 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-420 >>Grind until you are 420xp away from level 4 (980/1400)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    #optional
    .isQuestAvailable 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-500 >>Grind until you are 500xp away from level 4 (900/1400)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r and |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9293 >> Turn in What Must Be Done...
    .accept 9294 >> Accept Healing the Lake
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >> Turn in Botanical Legwork
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Turn in Replenishing the Healing Crystals
    .accept 9409 >> Accept Urgent Delivery!
    .target Proenitus
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendor trash
    .target Aurok
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
	.accept 9290 >> Accept Mage Training
	.turnin 9290 >> Turn in Mage Training
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
	.accept 9287 >> Accept Paladin Training
	.turnin 9287 >> Turn in Paladin Training
    .train 465 >>Train |T135893:0|t[Devotion Aura]
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Aurelon
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9409 >> Turn in Urgent Delivery!
    .accept 9283 >> Accept Rescue the Survivors!
    .accept 9291 >> Accept Priest Training << Priest
    .turnin 9291 >> Turn in Priest Training << Priest
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude] << Priest
    .train 2052 >> Train |T135929:0|t[Lesser Heal] << Priest
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain] << Priest
    .target Zalduun
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .accept 9421 >> Accept Shaman Training
	.turnin 9421 >> Turn in Shaman Training
    .accept 9449 >> Accept Call of Earth
	.train 8042 >> Train |T136026:0|t[Earth Shock]
    .target Firmanvaar
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a |cRXP_FRIENDLY_Draenei Survivor|r if you see one|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of the Vale|r
    .turnin 9449 >> Turn in Call of Earth
    .accept 9450 >> Accept Call of Earth
    .target Spirit of the Vale
step << Shaman
    #loop
    .goto Azuremyst Isle,69.62,35.13,0
    .goto Azuremyst Isle,70.73,37.74,40,0
    .goto Azuremyst Isle,69.62,35.13,60,0
    >>Kill |cRXP_ENEMY_Restless Spirits of Earth|r
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
    .mob Restless Spirit of Earth
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of the Vale|r
    .turnin 9450 >> Turn in Call of Earth
    .accept 9451 >> Accept Call of Earth
    .target Spirit of the Vale
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a |cRXP_FRIENDLY_Draenei Survivor|r if you see one|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 9451 >> Turn in Call of Earth
    .target Firmanvaar
step << Shaman
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >> Turn in Rescue the Survivors!
    .target Zalduun
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .accept 9289 >> Accept Warrior Training
	.turnin 9289 >> Turn in Warrior Training
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Kore
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
	.accept 9288 >> Accept Hunter Training
	.turnin 9288 >> Turn in Hunter Training
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
    .target Keilnei


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ryosh|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Ryosh
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mura|r
	.vendor >> Vendor trash
    >>|cRXP_BUY_Buy 5 stacks of|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Mura
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >> Accept Spare Parts
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .accept 9303 >> Accept Inoculation
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    .usespell 28880 >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Click the |cRXP_PICK_Irradiated Power Crystal|r in the lake
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Channel the|r |T132775:0|t[Inoculating Crystal] |cRXP_WARN_on |cRXP_ENEMY_Nestlewood Owlkins|r for 4 seconds|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Loot the |cRXP_LOOT_Emitter Spare Parts|r on the ground
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Channel the|r |T132775:0|t[Inoculating Crystal] |cRXP_WARN_on |cRXP_ENEMY_Nestlewood Owlkins|r for 4 seconds|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    #completewith next
    .subzone 3527 >> Return to the Crash Site
step
    .goto 1943/1,3865.399,6144.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .target Vindicator Aldar
    .turnin 9303 >>Turn in Inoculation
    .accept 9309 >>Accept The Missing Scout
step
    .goto 1943/1,3865.000,6157.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .target Technician Zhanaa
    .turnin 9305 >>Turn in Spare Parts
step
    .goto 1943/1,3877.000,6284.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .target Botanist Taerix
    .turnin 9294 >>Turn in Healing the Lake
step
    .goto 1943/1,3838.800,6221.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    .target Zalduun
    .turnin 9283 >>Turn in Rescue the Survivors!
step
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >> Turn in Rescue the Survivors!
    .target Zalduun
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendor trash
    .target Aurok
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >> Turn in Healing the Lake
    .target Botanist Taerix
step
    #completewith SurveyorCandress
    .usespell 28880 >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >> Turn in The Missing Scout
    .accept 10303 >> Accept The Blood Elves
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>Kill |cRXP_ENEMY_Blood Elf Scouts|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >> Turn in The Blood Elves
    .accept 9311 >> Accept Blood Elf Spy
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Kill |cRXP_ENEMY_Surveyor Candress|r. Loot her for the |T132319:0|t[|cRXP_LOOT_Blood Elf Plans|r]
    .use 24414 >>|cRXP_WARN_Use the|r |T132319:0|t[|cRXP_LOOT_Blood Elf Plans|r] |cRXP_WARN_to start the quest|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >> Accept Blood Elf Plans
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,0
    .goto Azuremyst Isle,77.6,56.0,0
    .goto Azuremyst Isle,74.8,43.4,0
    .goto Azuremyst Isle,80.2,42.6,0
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>Grind |cRXP_ENEMY_Blood Elf Scouts|r until you are 1450xp away from level 6 (1350/2800)
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Grind |cRXP_ENEMY_Blood Elf Scouts|r until you are 1230xp away from level 6 (1570/2800)
    .mob Blood Elf Scout
step
    #completewith next
    .subzone 3527 >> Return to the Crash Site
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >> Turn in Blood Elf Spy
    .turnin 9798 >> Turn in Blood Elf Plans
    .accept 9312 >> Accept The Emitter
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >> Turn in The Emitter
    .accept 9313 >> Accept Travel to Azure Watch
    .target Technician Zhanaa
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >> Turn in Rescue the Survivors!
    .target Zalduun
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >> Accept Word from Azure Watch
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >> Accept Red Snapper - Very Tasty!
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >> |cRXP_WARN_Swim north up the river|r
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net] |cRXP_WARN_on|r |cRXP_PICK_Schools of Red Snapper|r |cRXP_WARN_you see along the way. Skip this step once you get to the top of the river, you'll complete it later|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r. Loot them for a |T134072:0|t[|cRXP_LOOT_Faintly Glowing Crystal|r]
    .use 23678 >>|cRXP_WARN_Use the|r |T134072:0|t[|cRXP_LOOT_Faintly Glowing Crystal|r] |cRXP_WARN_to start the quest|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >> Accept Strange Findings
    .mob Infected Nightstalker Runt
step
    #completewith NightstalkerCleanUp
    .goto 1943/1,4776.600,6457.500,55,0
    .goto 1943/1,4807.399,6348.100,55,0
    .goto 1943/1,4860.899,6302.500,55,0
    .subzone 3576 >> Travel to Azure Watch. Follow the arrow to get there safely
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >> Accept Medicinal Purpose
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
	.turnin 9612 >> Turn in A Hearty Thanks!
    .turnin 9455 >> Turn in Strange Findings
    .accept 9456 >> Accept Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9455 >> Turn in Strange Findings
    .accept 9456 >> Accept Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >> Turn in Travel to Azure Watch
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >> Turn in Word from Azure Watch
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .home >> Set your Hearthstone to Azure Watch
    .target Caregiver Chellan
    .bindlocation 3576
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Accept Help Tavara
    .train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Guvan
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Semid
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 3044 >> Train |T132218:0|t[Arcane Shot]
    .train 1130 >> Train |T132212:0|t[Hunter's Mark]
    .target Acteon
step << Shaman/Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman/Warrior
    #sticky
    .equip 16,2495 >> |cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Buy and equip a|r |T133053:0|t[Wooden Mallet]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Nabek
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >> |cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Dulvi
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from him|r
    .collect 2901,1 --Mining Pick (1)
    .target Ziz
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >> |cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]
    .usespell 2580
    .train 2575,3 --Mining
step
	#completewith level8
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Kill |cRXP_ENEMY_Root Trappers|r. Loot them for their |cRXP_LOOT_Vines|r
    >>Kill |cRXP_ENEMY_Moongraze Stags|r. Loot them for their |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>|cRXP_WARN_NOTE: Soon you will train and level|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshore later. You will need 6 |cRXP_LOOT_Moongraze Stag Tenderloins|r for the quest now and 9 for later. Do NOT vendor them|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_on|r |cRXP_FRIENDLY_Tavara|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >> Accept A Small Start
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >> Accept Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step << Warrior/Paladin
    .goto Azuremyst Isle,46.355,71.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blacksmith Calypso|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_and|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Loot the |cRXP_LOOT_Nautical Map|r on the small cage
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Loot the |cRXP_LOOT_Nautical Compass|r on the small box
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,0
    .goto Azuremyst Isle,50.8,69.4,0
    .goto Azuremyst Isle,46.0,75.6,0
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Kill |cRXP_ENEMY_Skittering Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Meat|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >> Turn in Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r and |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9506 >> Turn in A Small Start
    .accept 9530 >> Accept I've Got a Plant
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9513 >> Accept Reclaiming the Ruins
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >> Accept Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Loot a |cRXP_LOOT_Hollowed Out Tree|r on the ground
    >>Loot |cRXP_LOOT_Piles of Leaves|r on the ground
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Kill |cRXP_ENEMY_Root Trappers|r. Loot them for their |cRXP_LOOT_Vines|r
    >>Kill |cRXP_ENEMY_Moongraze Stags|r. Loot them for their |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>|cRXP_WARN_NOTE: Soon you will train and level|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshore later. You will need 6 |cRXP_LOOT_Moongraze Stag Tenderloins|r for the quest now and 9 for later. Do NOT vendor them|r    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >> Turn in I've Got a Plant
    .accept 9531 >> Accept Tree's Company
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >> Grind until you are 950xp away from level 8 (3550/4500)
    >>|cRXP_WARN_Try to finish near Azure Watch|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >> Accept The Great Moongraze Hunt
    .turnin 9454 >> Turn in The Great Moongraze Hunt
    .accept 10324 >> Accept The Great Moongraze Hunt
    .target Acteon
step
    #completewith TenderloinRecipe
    +|cRXP_WARN_Do NOT vendor the|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin]
    >>|cRXP_WARN_You will learn it soon once you've trained|r |T133971:0|t[Cooking] |cRXP_WARN_which is required for a quest in Darkshore later|r
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 5116 >> Train |T135860:0|t[Concussive Shot]
    .train 14260 >> Train |T132223:0|t[Raptor Strike]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r and |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >> Turn in Medicinal Purpose
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Accept An Alternative Alternative
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >> Turn in A Hearty Thanks!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Train your class spells
    .target Tuluun
    .subzoneskip 3576,1
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >> Accept The Missing Fisherman
    .target Dulvi
step
    #label TenderloinRecipe
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >> Accept Learning the Language
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_Use the|r |T133741:0|t[Stillpine Furbolg Language Primer]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Akida|r
    .turnin 9538 >> Turn in Learning the Language
    .accept 9539 >> Accept Totem of Coo
    .target Totem of Akida
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Turn in Help Tavara
    .trainer >> Train your class spells
    .target Guvan
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .trainer >> Train your class spells
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .trainer >> Train your class spells
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Ruada
    .subzoneskip 3576,1
step
	#completewith AncientRelics
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for their |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Coo|r
    .turnin 9539 >> Turn in Totem of Coo
    .accept 9540 >> Accept Totem of Tikti
    .target Totem of Coo
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto 1943/1,5114.300,6462.700,60,0
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Loot the |cRXP_LOOT_Azure Snapdragons|r on the ground
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Tikti|r
    .turnin 9540 >> Turn in Totem of Tikti
    .accept 9541 >> Accept Totem of Yor
    .timer 30,Totem of Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >> |cRXP_WARN_Follow|r |cRXP_FRIENDLY_Stillpine Ancestor Tikti|r|cRXP_WARN_. He will buff you with|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_which grants 150% increased swim speed and water breathing|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net] |cRXP_WARN_on|r |cRXP_PICK_Schools of Red Snapper|r
    >>|cRXP_WARN_If a |cRXP_ENEMY_Murloc|r spawns out of the pool, swim away fast! Casting any hostils spells will cause you to lose the|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_buff|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >> Turn in Red Snapper - Very Tasty!
    .accept 9453 >> Accept Find Acteon!
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Yor|r underwater
    .turnin 9541 >> Turn in Totem of Yor
    .accept 9542 >> Accept Totem of Vark
    .timer 71,Totem of Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >> |cRXP_WARN_Follow|r |cRXP_FRIENDLY_Stillpine Ancestor Yor|r|cRXP_WARN_. He will buff you with|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_which grants increased movement speed and invisibility|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> |cRXP_WARN_Travel to western Azuremyst Isle|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Vark|r
    .turnin 9542 >> Turn in Totem of Vark
    .accept 9544 >> Accept The Prophecy of Akida
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Click off the|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_buff|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,0
    .goto Azuremyst Isle,27.87,66.78,0
    .goto Azuremyst Isle,25.04,67.67,0
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Kill |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r and |cRXP_ENEMY_Bristlelimb Ursas|r. Loot them for their |cRXP_LOOT_Bristlelimb Keys|r
    >>Open the |cRXP_PICK_Bristlelimb Cages|r to free |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,0
    .goto Azuremyst Isle,31.6,70.4,0
    .goto Azuremyst Isle,33.6,60.4,0
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for their |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>Loot the |cRXP_LOOT_Ancient Relics|r on the ground
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Kill |cRXP_ENEMY_Wrathscale Nagas|r, |cRXP_ENEMY_Wrathscale Myrmidons|r and |cRXP_ENEMY_Wrathscale Sirens|r. Loot them for the |T134462:0|t[|cRXP_LOOT_Rune Covered Tablet|r]
    .use 23759 >>|cRXP_WARN_Use the|r |T134462:0|t[|cRXP_LOOT_Rune Covered Tablet|r] |cRXP_WARN_to start the quest|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>> Rune Covered Tablet
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Loot the |cRXP_LOOT_Ancient Relics|r on the ground
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >> Swim across to Traitor's Cove
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >> |cRXP_WARN_Use the|r |T132288:0|t[Tree Disguise Kit] |cRXP_WARN_at the naga flag|r
    .timer 73,Tree's Company RP
    .use 23792
step
    >>|cRXP_WARN_Wait out the RP|r
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_Click off the|r |T132288:0|t[Tree Disguise] |cRXP_WARN_buff|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >> Turn in The Missing Fisherman
    .accept 9527 >> Accept All That Remains
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Kill |cRXP_ENEMY_Owlbeasts|r. Loot them for the |cRXP_LOOT_Remains of Cowlen's Family|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >> Turn in All That Remains
    .target Cowlen
step
    #completewith next
	.hs >> Hearth to Azure Watch
    .bindlocation 3576,1
step
    .goto 1943/1,5182.200,6172.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .target Exarch Menelaous
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
step
    .goto 1943/1,5129.899,6148.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .target Daedal
    .turnin 9473 >>Turn in An Alternative Alternative
step
    .goto 1943/1,5090.399,6159.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .target Arugoo of the Stillpine
    .turnin 9544 >>Turn in The Prophecy of Akida
    .accept 9559 >>Accept Stillpine Hold
step
    .goto 1943/1,5073.300,6136.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .target Acteon
    .turnin 9453 >>Turn in Find Acteon!
    .turnin 10324 >>Turn in The Great Moongraze Hunt
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >> Turn in Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >> Turn in Tree's Company
    .accept 9537 >> Accept Show Gnomercy
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9513 >> Turn in Reclaiming the Ruins
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9514 >> Turn in Rune Covered Tablet
    .target Priestess Kyleen Il'dinare
step
    #completewith next
    .goto Azuremyst Isle,46.219,70.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logan Daniel|r
    .vendor >> |cRXP_WARN_Vendor trash while waiting for the RP to finish|r << !Hunter
    >>|cRXP_BUY_Buy more stacks of|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from him while waiting for the RP to finish|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Logan Daniel
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9515 >> Accept Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Talk to |cRXP_FRIENDLY_Engineer "Spark" Overgrind|r patrolling the beach
    >>Kill |cRXP_ENEMY_Engineer "Spark" Overgrind|r after the short RP. Loot him for the |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >> Turn in Show Gnomercy
    .accept 9602 >> Accept Deliver Them From Evil...
    .target Admiral Odesyus
step << !Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Enter the Tides Hollow' cave
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Drop down to the lower level
step << !Hunter
    >>Kill |cRXP_ENEMY_Warlord Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << !Hunter
    .xp 9+5360 >> Grind until 5360+/6500xp
step << !Hunter
    #optional
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides Hollow' cave
    .subzoneskip 3569,1
step << !Hunter
	#completewith next
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step << !Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >> Turn in Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << !Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target "Cookie" McWeaksauce
step << !Hunter
    .cast 33277 >> |cRXP_WARN_Use the|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin] |cRXP_WARN_to learn the|r |T133971:0|t[Cooking] |cRXP_WARN_recipe|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9602 >> Turn in Deliver Them From Evil...
    .accept 9623 >> Accept Coming of Age
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >> Turn in A Hearty Thanks!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .accept 9464 >> Accept Call of Fire
    .trainer >> Train your class spells
    .target Tuluun
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .accept 9757 >> Accept Seek Huntress Kella Nightbow
    .trainer >> Train your class spells
    .target Acteon
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .trainer >> Train your class spells
    .target Guvan
    .subzoneskip 3576,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .trainer >> Train your class spells
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .trainer >> Train your class spells
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .trainer >> Train your class spells
    .accept 9582 >> Accept Strength of One
    .target Ruada
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9757 >> Turn in Seek Huntress Kella Nightbow
    .accept 9591 >> Accept Taming the Beast
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >> |cRXP_WARN_Use the|r |T135139:0|t[Taming Totem] |cRXP_WARN_on a |cRXP_ENEMY_Barbed Crawler|r in the water|r
    .complete 9591,1 --Tame a Barbed Crawler
    .mob Barbed Crawler
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Enter the Tides Hollow' cave
step << Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Drop down to the lower level
step << Hunter
    >>Kill |cRXP_ENEMY_Warlord Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides Hollow' cave
    .subzoneskip 3569,1
step << Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >> Turn in Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target "Cookie" McWeaksauce
step << Hunter
    .cast 33277 >> |cRXP_WARN_Use the|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin] |cRXP_WARN_to learn the|r |T133971:0|t[Cooking] |cRXP_WARN_recipe|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9591 >> Turn in Taming the Beast
    .accept 9592 >> Accept Taming the Beast
    .target Huntress Kella Nightbow
step
    .goto The Exodar,81.488,51.449
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >> Turn in Coming of Age
    .accept 9625 >> Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
step << Hunter
    .goto Azuremyst Isle,34.56,34.04,60,0
	.goto Azuremyst Isle,41.0,30.4,50,0
    .goto Azuremyst Isle,43.6,26.2
	.use 23897 >> |cRXP_WARN_Use the|r |T135139:0|t[Taming Totem] |cRXP_WARN_on a|r |cRXP_ENEMY_Greater Timberstrider|r
    .complete 9592,1 --Tame a Greater Timberstrider
    .mob Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9592 >> Turn in Taming the Beast
    .accept 9593 >> Accept Taming the Beast
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,35.0,33.9,50,0
    .goto Azuremyst Isle,41.2,28.6
	.use 23898 >> |cRXP_WARN_Use the|r |T135139:0|t[Taming Totem] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightstalker|r
    .complete 9593,1 --Tame a Nightstalker
    .mob Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9593 >> Turn in Taming the Beast
    .accept 9675 >> Accept Beast Training
    .target Huntress Kella Nightbow
step << Hunter
    .isOnQuest 9675
    .goto Azuremyst Isle,24.6,49.0,20 >>Enter The Exodar through the backdoor
step << Hunter
	.goto The Exodar,53.79,86.11,30,0
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ganaar|r
    .turnin 9675 >> Turn in Beast Training
	.trainer >> Train your pet spells
    .target Ganaar
step << Hunter
    #completewith next
    .destroy 2512 >> Destroy all your |T132382:0|t[Rough Arrows]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy 6 stacks of|r |T132382:0|t[Sharp Arrows]
    .collect 2515,1200
    .target Avelii
step << Hunter
	#completewith next
	.goto The Exodar,53.696,78.280,15 >> Travel up the ramp towards |cRXP_FRIENDLY_Handiir|r
step << Hunter
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Train 2h Swords
    .target Handiir
step << Hunter
	#completewith next
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.34,34.07,25,0
	.goto The Exodar,64.0,36.5,20,0
    .goto The Exodar,69.34,32.03,20,0
    .goto The Exodar,74.48,54.09,20 >>Jump down and head out of The Exodar
	-->> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	--.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .accept 9560 >> Accept Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurf|r
    .target Gurf
    .accept 9562 >> Accept Murlocs... Why Here? Why Now?
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .turnin 9559 >> Turn in Stillpine Hold
step << Hunter
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >> |cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a|r |cRXP_ENEMY_Ravager Specimen|r |cRXP_WARN_to tame it|r
    .mob Ravager Specimen
step << Shaman
	#completewith next
	>>Kill |cRXP_ENEMY_Ravager Specimens|r. Loot them for their |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Temper|r
    .turnin 9464 >> Turn in Call of Fire
    .accept 9465 >> Accept Call of Fire
    .target Temper
step
    #loop
    .goto Azuremyst Isle,54.6,23.8,0
    .goto Azuremyst Isle,55.6,18.2,0
    .goto Azuremyst Isle,53.0,11.6,0
    .goto Azuremyst Isle,54.6,23.8,70,0
    .goto Azuremyst Isle,55.6,18.2,70,0
    .goto Azuremyst Isle,53.0,11.6,70,0
	>>Kill |cRXP_ENEMY_Ravager Specimens|r. Loot them for their |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Warrior
    #completewith next
    .goto Azuremyst Isle,54.021,9.956
    .cast 30767 >> Click the |cRXP_PICK_Ravager Cage|r to release |cRXP_ENEMY_Death Ravager|r
step << Warrior
    .goto Azuremyst Isle,54.084,9.721
    >>Kill |cRXP_ENEMY_Death Ravager|r
    .complete 9582,1 --Kill Death Ravager (x1)
    .mob Death Ravager
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9560 >> Turn in Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .accept 9573 >> Accept Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .accept 9565 >> Accept Search Stillpine Hold
step
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,45.391,18.194,20 >> Enter the Stillpine Hold cave
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,47.453,16.078,10 >> Head to the upper section of the cave
step
	.goto Azuremyst Isle,47.394,14.121
    >>Kill |cRXP_ENEMY_Chieftain Oomooroo|r
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r. Loot them for their |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .mob +Chieftain Oomooroo
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .disablecheckbox
    .mob +Crazed Wildkin
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .disablecheckbox
    .mob +Crazed Wildkin
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,48.26,13.78,10 >> Drop down and head to the back of the cave
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r. Loot them for their |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,50.632,11.544
    >>Click the |cRXP_PICK_Blood Crystal|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_The Kurken|r if possible as you will need to kill him shortly|r
    .turnin 9565 >> Turn in Search Stillpine Hold
    .accept 9566 >> Accept Blood Crystals
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r. Loot them for their |cRXP_LOOT_Ritual Torch|r << Shaman
    >>|cRXP_WARN_You will finish this shortly if you havn't yet|r
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isOnQuest 9573,9566
    .goto Azuremyst Isle,45.391,18.194,12 >> Exit the cave
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .turnin 9566 >> Turn in Blood Crystals
step
    #optional
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .turnin 9573 >> Turn in Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .target Kurz the Revelator
    .accept 9570 >> Accept The Kurken is Lurkin'
step
	.goto Azuremyst Isle,46.964,22.011
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parkat Steelfur|r
    .vendor >> |cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch]
    .target Parkat Steelfur
    .subzoneskip 3572,1
step
    .isOnQuest 9570,9573
    .goto Azuremyst Isle,45.391,18.194,20 >> Enter the Stillpine Hold cave again
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r. Loot them for their |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,48.26,13.78,10,0
    .goto Azuremyst Isle,49.9,12.8
	>>Kill |cRXP_ENEMY_The Kurken|r. Loot him for his |cRXP_LOOT_Hide|r
    .complete 9570,1 --Collect The Kurken's Hide (x1)
    .mob The Kurken
step
    .goto Azuremyst Isle,47.394,14.121
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r. Loot them for their |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .turnin 9573 >> Turn in Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .target Kurz the Revelator
    .turnin 9570 >> Turn in The Kurken is Lurkin'
    .accept 9571 >> Accept The Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >> Accept Warn Your People
    .target High Chief Stillpine
step
	#label end
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9571 >> Turn in The Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Temper|r
    .turnin 9465 >> Turn in Call of Fire
    .accept 9467 >> Accept Call of Fire
    .target Temper
step << Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >> Turn in Warn Your People
    .target Exarch Menelaous
step << Shaman
    #completewith Wickerman
    .subzone 3639 >> Travel to Silvermyst Isle
step << Shaman
    #completewith Wickerman
    .use 24336 >>Open the |T133655:0|t[Fireproof Satchel] for the |T135432:0|t[Ritual Torch]
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    #completewith Wickerman
    .goto Azuremyst Isle,11.442,82.273
    .cast 30212 >>Click the |cRXP_PICK_Wickerman Effigy|r to summon |cRXP_ENEMY_Hauteur|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>Kill |cRXP_ENEMY_Hauteur|r. Loot him for his |cRXP_LOOT_Ashes|r
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
    .mob Hauteur
step << Shaman
    #completewith next
    .cast 31613 >>|cRXP_WARN_Use the|r |T134337:0|t[Orb of Returning] |cRXP_WARN_to teleport back to Emberglade|r
    .use 24335
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Temper|r
    .turnin 9467 >> Turn in Call of Fire
    .accept 9468 >> Accept Call of Fire
    .target Temper
step
    #completewith next
    >>Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r and |cRXP_ENEMY_Siltfin Hunters|r. Loot them for their |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Kill |cRXP_ENEMY_Murgurgula|r. Loot him for |T134350:0|t[|cRXP_LOOT_Gurf's Dignity|r]
    .use 23850 >> |cRXP_WARN_Use|r |T134350:0|t[|cRXP_LOOT_Gurf's Dignity|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_ENEMY_Murgurgula|r |cRXP_WARN_patrols along the coast|r
	.collect 23850,1,9564,1 --Gurf's Dignity (1)
    .accept 9564 >> Accept Gurf's Dignity
	.unitscan Murgurgula
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r and |cRXP_ENEMY_Siltfin Hunters|r. Loot them for their |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >> Turn in Gurf's Dignity
    .turnin 9562 >> Turn in Murlocs... Why Here? Why Now?
    .target Gurf
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Travel to Bloodmyst Isle
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .accept 9624 >> Accept A Favorite Treat
step
    .isOnQuest 9625
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .turnin 9625 >> Turn in Elekks Are Serious Business
    .accept 9634 >> Accept Alien Predators
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .accept 9634 >> Accept Alien Predators
step
    #completewith next
	>>Loot the |cRXP_LOOT_Sand Pears|r on the ground
    >>|cRXP_WARN_They can be hard to spot, check around trees|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    >>Kill |cRXP_ENEMY_Bloodmyst Hatchlings|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
	>>Loot the |cRXP_LOOT_Sand Pears|r on the ground
    >>|cRXP_WARN_They can be hard to spot, check around trees|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .turnin 9624 >> Turn in A Favorite Treat
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .turnin 9634 >> Turn in Alien Predators
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >> Accept Saving Princess Stillpine
    .target Princess Stillpine
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Kill |cRXP_ENEMY_Bristlelimb Warriors|r and |cRXP_ENEMY_Bristlelimb Shamans|r until |cRXP_ENEMY_High Chief Bristlelimb|r spawns
    >>Kill |cRXP_ENEMY_High Chief Bristlelimb|r. Loot him for |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Click on |cRXP_PICK_Princess Stillpine's Cage|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept The Kessel Run
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Travel north to Blood Watch
    >>|cRXP_WARN_Follow the arrow closely! Ensure you do not cross the bridge otherwise you will be dismounted!|r
    >>|cRXP_WARN_Do not engage any mobs, attack, or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r
    >>|cRXP_WARN_Once you get to Blood Watch or if you become dismounted, abandon the quest "The Kessel Run"|r
step
    #optional
    #completewith next
    .subzone 3584 >> Travel to Blood Watch
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .target Caregiver Topher Loaal
    .accept 9603 >> Accept Beds, Bandages, and Beyond
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine Ambassador Olorg|r
    .turnin 9667 >> Turn in Saving Princess Stillpine
    .target Stillpine Ambassador Olorg
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >> Accept Maatparm Mushroom Menagerie
step
    #completewith next
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >> Turn in Beds, Bandages, and Beyond
step
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>> Get the Blood Watch flight path
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >> Turn in Beds, Bandages, and Beyond
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .accept 9693 >> Accept What Argus Means to Me
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >> Accept Learning from the Crystals
    .target Harbinger Mikolaas
step
    .solo
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Turn in What Argus Means to Me
step
    .group
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Turn in What Argus Means to Me
    .accept 9694 >> Accept Blood Watch
step
    #optional
    #sticky
    .abandon 9663 >> Abandon The Kessel Run
step
    .group 2
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Kill |cRXP_ENEMY_Sunhawk Spies|r
    >>|cRXP_WARN_Be cautious as |cRXP_ENEMY_Sunhawk Spies|r are very strong at this level. Only engage one at a time|r
    >>|cRXP_WARN_Do NOT attempt this quest if you are solo|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .isQuestComplete 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Turn in Blood Watch
step
    #completewith ImpactSiteCrystalSample
    .xp 12
step
	#completewith next
	>>Loot a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These appear throughout Bloodmyst Isle|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Kill a |cRXP_ENEMY_Stinkhorn Striker|r. Loot it for the |cRXP_LOOT_Aquatic Stinkhorn|r
    >>|cRXP_WARN_You may also loot the |cRXP_LOOT_Aquatic Stinkhorn|r underwater|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #label ImpactSiteCrystalSample
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Impact Site Crystal|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    .goto Bloodmyst Isle,64.2,76.8,60,0 -- furbolgs
    .goto Bloodmyst Isle,64.2,76.8,0-- furbolgs
    .xp 12
    .mob Bloodmyst Hatchling
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept The Kessel Run
    .target Kessel
step
    #completewith next
    .goto Azuremyst Isle,42.18,2.88,20,0
    .goto Azuremyst Isle,43.23,11.58,70,0
    .goto Azuremyst Isle,50.99,13.09,70,0
    .goto Azuremyst Isle,49.40,23.09,80,0
    .goto Azuremyst Isle,46.685,20.617
	.subzone 3572 >> |cRXP_WARN_NOTE: Do not engage any mobs, attack or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r
    *|cRXP_WARN_Follow the road south|r
step << !Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >> Accept Warn Your People
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,49.25,49.53
    .isOnQuest 9663
    .subzone 3576 >> |cRXP_WARN_Continue following the road south to Azure Watch|r
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .trainer >> Train your class spells
    .target Semid
    .subzoneskip 3576,1
    .xp <12,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >> Turn in Strength of One
    .accept 10350 >> Accept Behomat
    .target Ruada
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .trainer >> Train your class spells
    .target Ruada
    .subzoneskip 3576,1
    .xp <12,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .trainer >> Train your class spells
    .target Acteon
    .subzoneskip 3576,1
    .xp <12,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .trainer >> Train your class spells
    .target Guvan
    .subzoneskip 3576,1
    .xp <12,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .trainer >> Train your class spells
    .target Tullas
    .subzoneskip 3576,1
    .xp <12,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >> Turn in Call of Fire
    .accept 9461 >> Accept Call of Fire
    .target Tuluun
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Train your class spells
    .target Tuluun
    .subzoneskip 3576,1
    .xp <12,1
step
    #optional
    .use 23910 >> |cRXP_WARN_Use the|r |T133473:0|t[Blood Elf Communication] |cRXP_WARN_to start the quest|r
    .accept 9616 >> Accept Bandits!
    .itemcount 23910,1
step
    #optional
    .isOnQuest 9616
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9616 >> Turn in Bandits!
    .target Exarch Menelaous
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >> Turn in A Hearty Thanks!
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Anchorite Fateema
step
    .goto 1943/1,5143.700,6130.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otonambusi|r
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_too from him if needed|r << !Warrior !Shaman !Paladin -- saving money for weps soon
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Otonambusi
    .skill cooking,<1,1 -- shows if cooking is >1
step << !Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >> Turn in Warn Your People
    .target Exarch Menelaous
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Head down into The Exodar
step
    .goto 1947/1,5903.899,6593.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Breel|r
    .target Caregiver Breel
    .home >> Set your Hearthstone to The Exodar
    .bindlocation 3557
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133912:0|t[Darkshore Grouper]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Shaman/Warrior
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from her or check the Auction House for a better weapon|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman/Warrior
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from her|r
    .goto The Exodar,73.625,84.814
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    .money <0.2871
step << Shaman/Warrior
    #optional
    #sticky
    .equip 16,854 >> |cRXP_WARN_Equip the|r |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
step << Paladin
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r |cRXP_BUY_from him or check the Auction House for a better weapon|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133477:0|t[Giant Mace] |cRXP_BUY_from her|r
    .goto The Exodar,73.625,84.814
    .collect 1197,1 -- Giant Mace
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
    #optional
    #sticky
    .equip 16,1197 >> |cRXP_WARN_Equip the|r |T133477:0|t[Giant Mace]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
	#completewith next
	.goto The Exodar,53.696,78.280,15 >> Travel up the ramp towards |cRXP_FRIENDLY_Handiir|r
step << Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Train 2h Swords
    .target Handiir
step << Paladin
    #optional
    #sticky
    .equip 16,1198 >> |cRXP_WARN_Equip the|r |T135350:0|t[Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Behomat|r on the top floor
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >> Turn in Behomat
    .target Behomat
step << Shaman
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .turnin 9461 >> Turn in Call of Fire
    .accept 9555 >> Accept Call of Fire
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Farseer Nobundo|r up the ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r
    .target Farseer Nobundo
    .turnin 9555 >> Turn in Call of Fire
step
    #completewith DarkshoreBoat
    .goto 1947/1,6179.200,6216.100,20 >> Exit The Exodar
    .zoneskip The Exodar,1
step
    #completewith DarkshoreBoat
    #label Cooking1
    #optional
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith DarkshoreBoat
    #requires Cooking1
    #optional
    +|T133971:0|t[Cook] |cRXP_WARN_the|r |cRXP_LOOT_Moongraze Stag Tenderloins|r |cRXP_WARN_into|r |T134016:0|t[Roasted Moongraze Tenderloin]
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Take the boat to Darkshore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat|r
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Take the boat to Darkshore
]])
