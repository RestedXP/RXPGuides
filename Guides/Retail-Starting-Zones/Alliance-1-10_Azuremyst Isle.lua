RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Draenei Starting Zones
#groupweight 8
#name 2Retail-Alliance-Draenei_Ammen Vale
#displayname Chapter 1 - Ammen Vale
#next 3Retail-Alliance-Draenei_Azuremyst Isle
#defaultfor Draenei

<<Alliance !DK

step
    #completewith next
    +Welcome to the |cFFfa9602Draenei Starting Zone|r Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cFFfa9602Exile's Reach.|r For faster leveling, consider recreating your character and selecting |cFFfa9602Exile's Reach|r instead.
step
    .goto 468,61.21,29.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megelon.|r
    .accept 9279 >>Accept You Survived!
	.target Megelon
step
    .goto 468,52.75,35.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus.|r
    .turnin 9279 >>Turn in You Survived!
    .accept 9280 >>Accept Replenishing the Healing Crystals
	.target Proenitus
step
    .goto 468,52.47,31.08,25,0
    .goto 468,50.96,26.54,25,0
    .goto 468,49.20,26.20,25,0
    .goto 468,44.84,30.01,25,0
    .loop 15,468,52.47,31.08,50.96,26.54,49.20,26.20,44.84,30.01
    >>Kill |cRXP_ENEMY_Vale Moths|r and loot them for |cRXP_LOOT_Vial of Moth Blood.|r
    .complete 9280,1 --6/6 Vial of Moth Blood
	.mob Vale Moth
step
    .goto 468,52.7,35.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus.|r
    .turnin 9280 >>Turn in Replenishing the Healing Crystals
    .accept 9409 >>Accept Urgent Delivery!
	.target Proenitus
step
    .goto 468,52.2,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun.|r
    .turnin 9409 >>Turn in Urgent Delivery!
    .accept 9283 >>Accept Rescue the Survivors!
	.target Zalduun
step
    .goto 468,52.67,37.18,10,0
    .goto 468,52.7,35.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus.|r
    .accept 9371 >>Accept Botanist Taerix
	.target Proenitus
step
    .goto 468,49.87,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix.|r
    .turnin 9371 >>Turn in Botanist Taerix
    .accept 10302 >>Accept Volatile Mutations
	.target Botanist Taerix
step
    #completewith next
    >>Kill |cRXP_ENEMY_Volatile Mutations.|r
    .complete 10302,1 --8/8 Volatile Mutation slain
	.mob Volatile Mutation
step
    .goto 468,47.05,25.98,20,0
    .goto 468,56.00,29.87
    >>Target |cRXP_FRIENDLY_Draenei Survivor|r, then use |T135923:0|t[Gift of the Naaru] on them from a distance.
    .complete 9283,1 --1/1 Draenei Survivors Saved
    .use 370626
    .target Draenei Survivor
step
    .goto 468,52.47,31.08,25,0
	.goto 468,50.96,26.54,25,0
	.goto 468,49.20,26.20,25,0
	.goto 468,44.84,30.01,25,0
	.loop 15,468,52.47,31.08,50.96,26.54,49.20,26.20,44.84,30.01
    >>Kill |cRXP_ENEMY_Volatile Mutations.|r
    .complete 10302,1 --8/8 Volatile Mutation slain
	.mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r and |cRXP_FRIENDLY_Apprentice Vishael.|r
    .turnin 10302 >>Turn in Volatile Mutations
    .accept 9293 >>Accept What Must Be Done...
    .goto 468,49.87,37.34
    .accept 9799 >>Accept Botanical Legwork
    .goto 468,49.72,37.51
	.target Botanist Taerix
    .target Apprentice Vishael
step
    #completewith next 
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Corrupted Flowers.|r
    .complete 9799,1 --3/3 Corrupted Flower
step
    .goto 468,40.41,42.32,15,0
    .goto 468,33.22,49.4,15,0
    .goto 468,37.59,51.92,15,0
    .goto 468,35.66,52.75,15,0
    .goto 468,39.6,50.1,15,0
    .loop 15,468,40.41,42.32,37.51,44.62,33.22,49.4,37.59,51.92,35.66,52.75,39.6,50.1
    >>Kill |cRXP_ENEMY_Mutated Root Lashers|r and loot them for their |cRXP_LOOT_Lasher Samples.|r
    .complete 9293,1 --10/10 Lasher Sample
	.mob Root Lasher
step
    .loop 15,468,40.77,42.25,39,50.27,34.95,37.36,35.24,52.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Corrupted Flowers.|r
    .complete 9799,1 --3/3 Corrupted Flower
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vishael|r and |cRXP_FRIENDLY_Botanist Taerix.|r
    .turnin 9799 >>Turn in Botanical Legwork
    .goto 468,49.72,37.54
    .turnin 9293 >>Turn in What Must Be Done...
    .accept 9294 >>Accept Healing the Lake
    .goto 468,49.87,37.34
	.target Apprentice Vishael
    .target Botanist Taerix
step
    .goto 468,52.68,37.05,5,0
    .goto 468,51.97,42.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun.|r
    .turnin 9283 >>Turn in Rescue the Survivors!
	.target Zalduun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r and |cRXP_FRIENDLY_Vindicator Aldar.|r
    .accept 37445 >>Accept Spare Parts
    .goto 468,50.52,47.93
    .accept 37444 >>Accept Inoculation
    .goto 468,50.65,48.76
	.target Technician Zhanaa
    .target Vindicator Aldar
step
    .isOnQuest 9294
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r 
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    .goto 468,46.36,63.99
    >>Use the |T132858:0|t[Neutralizing Agent] |cFFfa9602at the Irradiated Power Crystal near the water.|r
    .use 22955
    .complete 9294,1 --1/1 Disperse the Neutralizing Agent
step
    #completewith next
    >>Use the |T22962:0|t[Inoculating Crystal] on |cRXP_ENEMY_Nestlewood Owlkins.|r
    .use 22962 
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.mob Nestlewood Owlkin
step
    .goto 468,55.91,66.37,10,0
    .goto 468,58.26,70.67,10,0
    .goto 468,61.21,78.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Spare Parts.|r 
    .complete 37445,1 --4/4 Emitter Spare Part
step
    .goto 468,55.91,66.37,10,0
    .goto 468,58.26,70.67,10,0
    .goto 468,62.13,85.75,15,0
    .goto 468,65.01,84.99,15,0
    .goto 468,65.63,77.91,15,0
    .goto 468,71.23,71.71,15,0
    .goto 468,61.21,78.37
    >>Use the |T22962:0|t[Inoculating Crystal] on |cRXP_ENEMY_Nestlewood Owlkins.|r
    .use 22962
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.mob Nestlewood Owlkin
step
    .isOnQuest 9294
    >>|cRXP_WARN_RXP Guides frequently employ death skips as a strategy to swiftly reach their targeted locations.|r
    .deathskip >> Die and respawn at the Crash Site
step
    .goto 468,49.86,37.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix.|r
    .turnin 9294 >>Turn in Healing the Lake
	.target Botanist Taerix
step
    .goto 468,50.5,47.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa.|r
    .turnin 37445 >>Turn in Spare Parts
	.target Technician Zhanaa
step
    .goto 468,50.6,48.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar.|r
    .turnin 10304 >>Turn in Vindicator Aldar
    .turnin 37444 >>Turn in Inoculation
    .accept 9309 >>Accept The Missing Scout
	.target Vindicator Aldar
step
    .goto 468,33.91,69.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan.|r
    .turnin 9309 >>Turn in The Missing Scout
    .accept 10303 >>Accept The Blood Elves
	.target Tolaan
step
    .goto 468,33.0,73.9
    >>Kill |cRXP_ENEMY_Blood Elf Scouts|r
    .complete 10303,1 --10/10 Blood Elf Scout slain
	.mob Blood Elf Scout
step
    .goto 468,33.91,69.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan.|r
    .turnin 10303 >>Turn in The Blood Elves
    .accept 9311 >>Accept Blood Elf Spy
	.target Tolaan
step
    .goto 468,27.8,80.41
    >>Kill |cRXP_ENEMY_Surveyor Candress|r and loot her for her |cRXP_LOOT_Blood Elf Plans.|r
    .complete 9311,1 --1/1 Surveyor Candress slain
step
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blood Elf Plans.|r
    .accept 9798 >>Accept Blood Elf Plans
    .use 24414 
	.target Surveyor Candress
step
    .isOnQuest 9311
    .deathskip >> Die and respawn at the Crash Site
step
    .goto 468,50.66,48.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar.|r
    .turnin 9311 >>Turn in Blood Elf Spy 
    .turnin 9798 >>Turn in Blood Elf Plans
    .accept 9312 >>Accept The Emitter
	.target Vindicator Aldar
step
    .goto 468,50.69,47.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa.|r
    .turnin 9312 >>Turn in The Emitter
    .accept 9313 >>Accept Travel to Azure Watch
	.target Technician Zhanaa
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Draenei Starting Zones
#name 3Retail-Alliance-Draenei_Azuremyst Isle
#displayname Chapter 2 - Azuremyst Isle
#next RestedXP Alliance 10-60\1A_Elwynn Forest
#defaultfor Draenei

<<Alliance !DK

step
    .goto 97,64.5,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeun.|r
    .accept 9314 >>Accept Word from Azure Watch
	.target Aeun
step
    #completewith next
    >>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Buck|r and loot them for |cRXP_LOOT_Moongraze Stag Tenderloin.|r
	>>|cRXP_WARN_You don't have to complete this right now|r
    .collect 23676,3
	.mob Moongraze Stag
	.mob Moongraze Buck
step
    .goto 97,49.78,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon.|r
    .accept 9454 >>Accept The Great Moongraze Hunt
	.target Acteon	
step
	#completewith next
    .goto 97,48.68,52.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valn.|r
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 47431,1,1,1
	.target Valn
step
    .goto 97,48.68,52.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valn.|r
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47431,2,3,2
	.target Valn
step
    #completewith home
    +|cRXP_WARN_Herbing and Mining Ores gives Experience. Only do this when the herbs/ores are right next to you.	|r
step
    #completewith next
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otonambusi|r, buy bags if you need |cRXP_WARN_(don't sell Moongraze Stag Tenderloin).|r
	.target Otonambusi
step
    .goto 97,48.39,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema.|r
    .accept 9463 >>Accept Medicinal Purpose
	.target Anchorite Fateema
step
    .goto 97,48.97,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi.|r
    .accept 10428 >>Accept The Missing Fisherman
	.target Dulvi
step
    .goto 97,48.72,50.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Dyvuun.|r
    .turnin 9313 >>Turn in Travel to Azure Watch
	.target Technician Dyvuun
step
    .goto 97,48.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan.|r
    .turnin 9314,1 >>Turn in Word from Azure Watch
    .accept 9603 >>Accept Bds, Bandages, and Beyond
	.target Caregiver Chellan
step
	#label home
    #completewith next
    .goto 97,48.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan.|r
    .home >>Set your |cFFfa9602Hearthstone to Azure Watch.|r
	.target Caregiver Chellan
step
    #label MiningDraenei
    .goto 97,48.8,49.97,17,0
    .goto 97,49.72,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan.|r
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .accept 9604 >>Accept On the Wings of a Hippogryph
	.target Zaldaan
step
    #completewith roottenders	
    >>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Buck|r and loot them for |cRXP_LOOT_Moongraze Stag Tenderloin.|r
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.mob Moongraze Stag
	.mob Moongraze Buck
step
    .goto 97,51.64,41.92
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r and loot them for the |cRXP_LOOT_Faintly Glowing Crystal.|r
	.collect 23678,1,9455
    .accept 9455 >>Accept Strange Findings
    .use 23678
	.mob Infected Nightstalker Runt
step
    #label roottenders
    .goto 97,57.22,47.12,25,0
	.goto 97,57.79,63.89,25,0
	.goto 97,54.09,65.10,25,0
	.goto 97,50.55,60.29,25,0
	.goto 97,52.40,55.02,25,0
    .goto 97,54.5,58.33
    >>Kill |cRXP_ENEMY_Root Trappers|r and loot them for their |cRXP_LOOT_Vine|r
    .complete 9463,1 --8/8 Root Trapper Vine
	.mob Root Trapper
step
    .goto 97,57.22,47.12,25,0
    .goto 97,54.5,58.33
	>>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Buck|r and loot them for their |cRXP_LOOT_Moongraze Stag Tenderloin.|r
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.mob Moongraze Stag
	.mob Moongraze Buck
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon.|r
    .turnin 9454,1 >>Turn in The Great Moongraze Hunt
    .accept 10324 >>Accept The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema.|r
    .turnin 9463,1 >>Turn in Medicinal Purpose
	.target Anchorite Fateema
step
    .goto 97,48.40,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal.|r
    .accept 9473 >>Accept An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous.|r
    .turnin 9455 >>Turn in Strange Findings
    .accept 9623 >>Accept Coming of Age
    .accept 9456 >>Accept Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    .goto 97,46.67,52.77,15,0
    .goto 97,49.32,55.25,15,0
    .goto 97,44.65,57.20,15,0
    .goto 97,49.27,58.63,15,0
    .goto 97,46.67,52.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Azure Snapdragon|r located |cFFfa9602on the ground.|r
    .complete 9473,1 --5/5 Azure Snapdragon Bulb
step
    .goto 97,46.68,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce.|r
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
	.target "Cookie" McWeaksauce
step
    .goto 97,47.03,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus.|r
    .accept 9506 >>Accept A Small Start
	.target Admiral Odesyus
step
    #completewith next
    >>Kill |cRXP_ENEMY_Skittering Crawlers|r and loot them for their |cRXP_LOOT_Skittering Crawler Meats.|r
	>>|cRXP_WARN_You will kill more shortly.|r
    .complete 9512,1 --6/6 Skittering Crawler Meat
	.mob Skittering Crawler
step
    .goto 97,58.60,66.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nautical Map|r |cFFfa9602in the small camp.|r
    .complete 9506,2 --1/1 Nautical Map
step
    .goto 97,59.57,67.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nautical Compass|r |cFFfa9602in the small camp.|r
    .complete 9506,1 --1/1 Nautical Compass
step
    .goto 97,49.35,73.46
    >>Kill |cRXP_ENEMY_Skittering Crawlers|r and loot them for their |cRXP_LOOT_Skittering Crawler Meats.|r
    .complete 9512,1 --6/6 Skittering Crawler Meat
	.mob Skittering Crawler
step
    .goto 97,47.03,70.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus.|r
    .turnin 9506 >>Turn in A Small Start
	.target Admiral Odesyus
step
    .goto 97,47.03,70.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus.|r
    .accept 9530 >>Accept I've Got a Plant
	.target Admiral Odesyus
step
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen.|r
    .accept 9513 >>Accept Reclaiming the Ruins
	.target Priestess Kyleen
step
    .goto 97,47.24,70.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart.|r
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
	.target Archaeologist Adamant Ironheart
step
    .goto 97,48.34,64.76,40,0
    .goto 97,50.68,64.53,40,0
    .goto 97,52.91,64.36,40,0
    .goto 97,48.34,64.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the|cRXP_PICK_Tree Stump|r and |cRXP_PICK_Piles of Leaves.|r
    .complete 9530,2 --5/5 Pile of Leaves
    .complete 9530,1 --1/1 Hollowed Out Tree
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus.|r
    .turnin 9530 >>Turn in I've Got a Plant
    .accept 9531 >>Accept Tree's Company
	.target Admiral Odesyus
step
    .goto 97,46.69,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce.|r
    .turnin 9512 >>Turn in Cookie's Jumbo Gumbo
	.target "Cookie" McWeaksauce
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Relics|r located |cFFfa9602on the ground|r
    .complete 9523,1 --8/8 Ancient Relic
step
    .goto 97,39.11,75.21,35,0
    .goto 97,35.21,80.17,35,0
    .goto 97,35.23,77.39,35,0
    .goto 97,30.63,77.71,35,0
    .goto 97,28.33,79.05,35,0
    .goto 97,35.21,80.17
    >>Kill |cRXP_ENEMY_Wrathscale Myrmidons|r, |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Sirens|r and loot them for the |cRXP_LOOT_Rune Covered Tablet.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune Covered Tablet|r
	.collect 23759,1,9514
    .accept 9514 >>Accept Rune Covered Tablet
    .complete 9513,1 --5/5 Wrathscale Myrmidon slain
    .complete 9513,2 --5/5 Wrathscale Naga slain
    .complete 9513,3 --5/5 Wrathscale Siren slain
	.mob Wrathscale Myrmidon
	.mob Wrathscale Naga
	.mob Wrathscale Siren
    .use 23759 
step
    .goto 97,39.11,75.21,35,0
    .goto 97,35.21,80.17,35,0
    .goto 97,35.23,77.39,35,0
    .goto 97,30.63,77.71,35,0
    .goto 97,28.33,79.05,35,0
    .goto 97,35.21,80.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ancient Relics|r located |cFFfa9602on the ground|r
    .complete 9523,1 --8/8 Ancient Relic
step
    #completewith next
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.mob Infected Nightstalker Runt
step
    .goto 97,32.42,66.36,60,0
    .goto 97,32.71,57.9
    >>Kill |cRXP_ENEMY_Moongraze Bucks|r and loot them for their |cRXP_LOOT_ Moongraze Buck Hides.|r
    .complete 10324,1 --6/6 Moongraze Buck Hide
	.mob Moongraze Buck
step
    .goto 97,32.42,66.36,60,0
    .goto 97,32.71,57.9
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts.|r
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.mob Infected Nightstalker Runt
step
    #completewith next
    .goto 97,18.8,83.46,10,0
    .goto 97,18.37,86.32,10,0
    .goto 97,16.59,94.46,5,0
    .goto 97,15.26,92.24
    >>Use the |T132288:0|t[Tree Disguise Kit] near |cFFfa9602the Red Flag|r, then click the Buff off to remove the disguise, then follow the Waypoints
	>>|cRXP_WARN_DO NOT wait at the flag|r
    .complete 9531,1 --1/1 The Traitor Uncovered
    .use 23792
step
    #label QuestKeybindingsDraenei2
    .goto 97,16.59,94.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen.|r
    .turnin 10428 >>Turn in The Missing Fisherman
    .accept 9527 >>Accept All That Remains
	.target Cowlen
step
    .goto 97,14.58,90.66
    >>Kill |cRXP_ENEMY_|rOwlbeasts and loot them for the |cRXP_LOOT_Remain's of Cowlen's Family.|r
    .complete 9527,1 --1/1 Remains of Cowlen's Family
step
    #sticky
    .goto 97,16.59,94.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen.|r
    .turnin 9527 >>Turn in All That Remains
	.target Cowlen
step
    #completewith next
    .deathskip >> Die to the |cRXP_ENEMY_Owlbeasts.|r Respawn |cFFfa9602at Azure Watch.|r
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus.|r
    .turnin 9531 >>Turn in Tree's Company
    .accept 9537 >>Accept Show Gnomercy
	.target Admiral Odesyus
step
    .goto 97,47.13,70.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare.|r
    .turnin 9513 >>Turn in Reclaiming the Ruins
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.14,70.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare.|r
    .turnin 9514 >>Turn in Rune Covered Tablet
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.23,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart.|r
    .turnin 9523 >>Turn in Precious and Fragile Things Need Special Handling
	.target Archaeologist Adamant Ironheart
step
    .goto 97,48.56,71.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer "Spark" Overgrind.|r
    >>|cRXP_WARN_Wait for the Roleplay,|r Kill |cRXP_ENEMY_Engineer "Spark" Overgrind|r and loot him for |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --1/1 Traitor's Communication
    .skipgossip
    .mob Engineer "Spark" Overgrind
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus.|r
    .turnin 9537,1 >>Turn in Show Gnomercy
    .accept 9602 >>Accept Deliver Them From Evil...
	.target Admiral Odesyus
step
    #completewith next
    .hs >> Hearthstone |cFFfa9602to Azure Watch|r
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon.|r
    .turnin 10324 >>Turn in The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal.|r
    .turnin 9473 >>Turn in An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous.|r
    .turnin 9602 >>Turn in Deliver Them From Evil...
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    .goto 103,81.51,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler.|r
    .turnin 9623 >>Turn in Coming of Age
	.target Torallius the Pack Handler
step
    .goto 103,75.17,53.85,20,0
    .goto 103,73.55,39.76,20,0
    .goto 103,66.18,33.78,20,0
    .goto 103,62.49,43.7,20,0
    .goto 103,57.03,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r |cFFfa9602inside The Exodar.|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .accept 9605 >> Accept Hippogryph Master Stephanos
	.target Nurguni
step
    .goto 103,55.07,47.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald.|r
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step
    .goto 103,54.49,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos.|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
	.target Stephanos
step
    .nodmf 
    .goto 103,48.34,62.9,5 >> |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormwind Portal|r
    .zoneskip 84
step
    #completewith next
    .goto 84,49.36,86.76,10,0
    .goto 84,53.58,85.4,15,0
    .goto 84,53.95,79.25,15,0
    .goto 84,55.54,76.05,20,0
    .goto 84,60.00,71.95,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald.|r
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
    .nodmf
step
    .goto 84,49.36,86.76,10,0
    .goto 84,53.58,85.4,15,0
    .goto 84,53.95,79.25,15,0
    .goto 84,55.54,76.05,20,0
    .goto 84,60.00,71.95,20,0
    .goto 84,63.77,73.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina.|r
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
    .nodmf
step
    .goto 84,67.49,80.56,20,0
    .goto 84,67.03,83.44,20,0
    .goto 84,69.76,84.87,20,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cFFfa9602in Goldshire.|r
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
    .nodmf
step
    #veteran
    .goto 103,61,52.56,5,0
    .goto 103,63.23,58.75
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this.|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases.|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items.|r
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Iressa|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Iressa
    .dmf
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
    .dmf
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click on this text to receive a macro that will unlearn your professions.|r
    .dmf
step
    #label DarkMoonFaire
    .goto 103,51.34,42.03
    .zoneskip 37 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
    .dmf
step
    .goto 84,62.10,32.18
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .zoneskip 37
    .skipgossip
	.target Darkmoon Faire Mystic Mage
    .dmf
]])
