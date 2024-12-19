RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Draenei Starting Zones
#name 2Retail-Alliance-Draenei_Ammen Vale
#displayname Chapter 1 - Ammen Vale
#next 3Retail-Alliance-Draenei_Azuremyst Isle
#defaultfor Draenei !DK

<< Alliance

step
    #completewith next
    +Welcome to the |cRXP_WARN_Draenei Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cRXP_WARN_Exile's Reach|r For faster leveling, consider recreating your character and selecting |cRXP_WARN_Exile's Reach|r instead.
step
    .goto 468,61.21,29.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megelon|r.
    .accept 9279 >>Accept You Survived!
	.target Megelon
step
    .goto 468,52.75,35.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r.
    .turnin 9279 >>Turn in You Survived!
    .accept 9280 >>Accept Replenishing the Healing Crystals
	.target Proenitus
step
    #loop
    .goto 468,49.59,30.55,40,0
    .goto 468,53.92,27.74,40,0
    .goto 468,53.33,21.41,40,0
    .goto 468,45.1,22.63,40,0
    .goto 468,44.45,26.97,40,0
    .goto 468,46.91,34.21,40,0
    .goto 468,41.99,33.66,40,0
    .goto 468,37.3,28.15,40,0
    >>Kill |cRXP_ENEMY_Vale Moths|r and loot them for [|cRXP_LOOT_Vial of Moth Blood|r].
    .complete 9280,1 --6/6 Vial of Moth Blood
	.mob Vale Moth
step
    .goto 468,52.7,35.9,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r.
    .turnin 9280 >>Turn in Replenishing the Healing Crystals
    .accept 9409 >>Accept Urgent Delivery!
	.target Proenitus
step
    #loop
    .goto 468,52.53,41.11,20,0
    .goto 468,52.2,43.6,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r.
    .turnin 9409 >>Turn in Urgent Delivery!
    .accept 9283 >>Accept Rescue the Survivors!
	.target Zalduun
step
    .goto 468,52.67,37.18,10,0
    .goto 468,52.7,35.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r.
    .accept 9371 >>Accept Botanist Taerix
	.target Proenitus
step
    .goto 468,49.87,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r.
    .turnin 9371 >>Turn in Botanist Taerix
    .accept 10302 >>Accept Volatile Mutations
	.target Botanist Taerix
step
    #hidewindow
    #completewith Volatile Mutation
    #loop
    .goto 468,49.82,25.72,40,0
    .goto 468,43.97,27.98,40,0
    .goto 468,48.04,31.81,40,0
    .goto 468,45.6,33.35,40,0
    .goto 468,43.08,37.97,40,0
    .goto 468,40.97,38.32,40,0
    .goto 468,36.91,38.34,40,0
    .goto 468,36.71,47.07,40,0
    .goto 468,34.91,50.42,40,0
    .goto 468,40.41,45.1,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Volatile Mutations|r.
    .complete 10302,1 --8/8 Volatile Mutation slain
	.mob Volatile Mutation
step
    >>Use |T135923:0|t[Gift of the Naaru] on |cRXP_FRIENDLY_Draenei Survivor|r |cRXP_WARN_ideally|r from a distance.
    .complete 9283,1 --1/1 Draenei Survivors Saved
    .use 370626
    .target Draenei Survivor
step
    #label Volatile Mutation
    >>Kill |cRXP_ENEMY_Volatile Mutations|r.
    .complete 10302,1 --8/8 Volatile Mutation slain
	.mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r and |cRXP_FRIENDLY_Apprentice Vishael|r.
    .turnin 10302 >>Turn in Volatile Mutations
    .accept 9293 >>Accept What Must Be Done...
    .goto 468,49.87,37.34
    .accept 9799 >>Accept Botanical Legwork
    .goto 468,49.72,37.51
	.target Botanist Taerix
    .target Apprentice Vishael
step
    #hidewindow
    #completewith Corrupted Flower
    #loop
    .goto 468,40.02,39.98,40,0
    .goto 468,33.42,44.36,40,0
    .goto 468,38.59,49,40,0
    .goto 468,40.81,41.07,40,0
    .goto 468,37.55,52.77,40,0
    .goto 468,33.03,48.81,40,0
    +1
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Corrupted Flowers|r.
    .complete 9799,1 --3/3 Corrupted Flower
step
    >>Kill |cRXP_ENEMY_Mutated Root Lashers|r and loot them for their [|cRXP_LOOT_Lasher Samples|r].
    .complete 9293,1 --10/10 Lasher Sample
	.mob Root Lasher
step
    #label Corrupted Flower
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Corrupted Flowers|r.
    .complete 9799,1 --3/3 Corrupted Flower
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vishael|r and |cRXP_FRIENDLY_Botanist Taerix|r.
    .turnin 9799 >>Turn in Botanical Legwork
    .goto 468,49.72,37.54
    .turnin 9293 >>Turn in What Must Be Done...
    .accept 9294 >>Accept Healing the Lake
    .goto 468,49.87,37.34
	.target Apprentice Vishael
    .target Botanist Taerix
step
    #loop
    .goto 468,52.53,41.11,20,0
    .goto 468,52.2,43.6,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r.
    .turnin 9283 >>Turn in Rescue the Survivors!
	.target Zalduun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r and |cRXP_FRIENDLY_Vindicator Aldar|r.
    .accept 37445 >>Accept Spare Parts
    .goto 468,50.52,47.93
    .accept 37444 >>Accept Inoculation
    .goto 468,50.65,48.76
	.target Technician Zhanaa
    .target Vindicator Aldar
step
    .isOnQuest 9294
    #completewith next
    +|cFFFF0000[TIP]|r To set up keybindings for |cRXP_WARN_quest items, target and mob frames, or to delete the cheapest junk item,|r press Escape to open the Options menu, go to Keybindings, and find RestedXP Guides.
step
    .goto 468,45.85,62.9
    >>Use the |T132858:0|t[Neutralizing Agent] |cRXP_WARN_at the water|r.
    .use 22955
    .complete 9294,1 --1/1 Disperse the Neutralizing Agent
step
    #hidewindow
    #completewith inoculated
    #loop
    .goto 468,57.23,65.1,40,0
    .goto 468,56.16,60.24,30,0
    .goto 468,57.57,68.94,27,0
    .goto 468,53.48,68.31,40,0
    .goto 468,58.99,70.58,30,0
    .goto 468,64.21,65.6,30,0
    .goto 468,61.99,63.22,20,0
    .goto 468,62.18,63.4,40,0
    .goto 468,64.27,63.71,40,0
    .goto 468,64.29,67.43,40,0
    .goto 468,71.05,74.32,40,0
    .goto 468,65.41,81.11,40,0
    .goto 468,63.01,78.3,40,0
    .goto 468,60.77,78.5,40,0
    .goto 468,61.85,84.54,40,0
    .goto 468,64.18,88.65,40,0
    .goto 468,65.24,84.26,40,0
    +1
step
    #completewith next
    >>Use the |T132775:0|t[Inoculating Crystal] on |cRXP_ENEMY_Nestlewood Owlkins|r.
    .use 22962
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.mob Nestlewood Owlkin
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Spare Parts|r.
    .complete 37445,1 --4/4 Emitter Spare Part
step
    >>Use the |T132775:0|t[Inoculating Crystal] on |cRXP_ENEMY_Nestlewood Owlkins|r.
    .use 22962
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.mob Nestlewood Owlkin
step
    .isOnQuest 9294
    #label inoculated
    >>|cRXP_WARN_RXP Guides frequently employ death skips as a strategy to swiftly reach their targeted locations|r.
    .deathskip >> Die and respawn at the Crash Site
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r.
    .turnin 9294 >>Turn in Healing the Lake
    .goto 468,49.86,37.36
	.target Botanist Taerix
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r and |cRXP_FRIENDLY_Technician Zhanaa|r.
    .turnin 37445 >>Turn in Spare Parts
    .goto 468,50.5,47.9
	.target +Technician Zhanaa
    .turnin 10304 >>Turn in Vindicator Aldar
    .turnin 37444 >>Turn in Inoculation
    .accept 9309 >>Accept The Missing Scout
    .goto 468,50.6,48.7
	.target +Vindicator Aldar
step
    .goto 468,37.13,61.57,40,0
    .goto 468,33.91,69.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r.
    .turnin 9309 >>Turn in The Missing Scout
    .accept 10303 >>Accept The Blood Elves
	.target Tolaan
step
    #loop
    .goto 468,31.64,76.45,40,0
    .goto 468,28.95,71.2,40,0
    .goto 468,26.4,77.56,40,0
    .goto 468,30.91,78.83,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Scouts|r.
    .complete 10303,1 --10/10 Blood Elf Scout slain
	.mob Blood Elf Scout
step
    .goto 468,33.91,69.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r.
    .turnin 10303 >>Turn in The Blood Elves
    .accept 9311 >>Accept Blood Elf Spy
	.target Tolaan
step
    .goto 468,27.8,80.41
    >>Kill |cRXP_ENEMY_Surveyor Candress|r and loot her for her [|cRXP_LOOT_Blood Elf Plans|r].
    .complete 9311,1 --1/1 Surveyor Candress slain
step
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blood Elf Plans|r.
    .accept 9798 >>Accept Blood Elf Plans
    .use 24414
	.target Surveyor Candress
step
    .isOnQuest 9311
    #completewith next
    .goto 468,26.67,75.62,40,0
    .goto 468,29.6,78.2,40,0
    .goto 468,32.85,73.76,40,0
    .goto 468,28.99,71.46,40,0
    .deathskip >> Die and respawn at the Crash Site
step
    .goto 468,50.66,48.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r.
    .turnin 9311 >>Turn in Blood Elf Spy
    .turnin 9798 >>Turn in Blood Elf Plans
    .accept 9312 >>Accept The Emitter
	.target Vindicator Aldar
step
    .goto 468,50.51,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r.
    .turnin 9312 >>Turn in The Emitter
    .accept 9313 >>Accept Travel to Azure Watch
	.target Technician Zhanaa
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Draenei Starting Zones
#name 3Retail-Alliance-Draenei_Azuremyst Isle
#displayname Chapter 2 - Azuremyst Isle
#next RestedXP Speedrun Guide\a) The Waking Shores Fresh (A)
#defaultfor Draenei !DK

<< Alliance

step
    .goto 97,64.5,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeun|r.
    .accept 9314 >>Accept Word from Azure Watch
	.target Aeun
step
    .goto 97,49.78,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r.
    .accept 9454 >>Accept The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.68,52.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valn|r.
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 47431,1,1,1
	.target Valn
step
    .goto 97,48.68,52.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valn|r.
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47431,2,3,2
	.target Valn
step
    #completewith home
    +|cRXP_WARN_Only gather herbs or mine ores for experience when they are immediately nearby|r.
step
    #completewith next
    .vendor >>Talk to |cRXP_FRIENDLY_Otonambusi|r, buy bags if you need |cRXP_WARN_(don't sell Moongraze Stag Tenderloin)|r.
	.target Otonambusi
step
    .goto 97,48.39,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r.
    .accept 9463 >>Accept Medicinal Purpose
	.target Anchorite Fateema
step
    .goto 97,48.97,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r.
    .accept 10428 >>Accept The Missing Fisherman
	.target Dulvi
step
    .goto 97,48.72,50.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Dyvuun|r.
    .turnin 9313 >>Turn in Travel to Azure Watch
	.target Technician Dyvuun
step
    .goto 97,48.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r.
    .turnin 9314,1 >>Turn in Word from Azure Watch
    .accept 9603 >>Accept Bds, Bandages, and Beyond
	.target Caregiver Chellan
step
	#label home
    #completewith next
    .goto 97,48.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r.
    .home >>Set your |cRXP_WARN_Hearthstone to Azure Watch|r.
	.target Caregiver Chellan
step
    .goto 97,48.8,49.97,17,0
    .goto 97,49.72,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r.
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .accept 9604 >>Accept On the Wings of a Hippogryph
	.target Zaldaan
step
    #completewith Root Trapper Vine
    >>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Buck|r and loot them for [|cRXP_LOOT_Moongraze Stag Tenderloin|r].
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.mob Moongraze Stag
	.mob Moongraze Buck
step
    #loop
    .goto 97,51.48,44.08,40,0
    .goto 97,52.08,41.08,40,0
    .goto 97,49.84,40.35,40,0
    .goto 97,47.37,41.81,40,0
    .goto 97,43.6,41.92,40,0
    .goto 97,43.52,45.58,40,0
    .goto 97,45.73,45.09,40,0
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r and loot them for the [|cRXP_LOOT_Faintly Glowing Crystal|r].
	.collect 23678,1,9455
    .accept 9455 >>Accept Strange Findings
    .use 23678
	.mob Infected Nightstalker Runt
step
    #hidewindow
    #completewith Root Trapper Vine
    #loop
    .goto 97,54.34,46.83,40,0
    .goto 97,55.34,44.58,40,0
    .goto 97,57.05,44.93,40,0
    .goto 97,57.82,46.96,40,0
    .goto 97,58.52,48.68,40,0
    .goto 97,59.29,51.17,40,0
    .goto 97,54.91,50.18,40,0
    .goto 97,53.97,49.63,40,0
    .goto 97,52.69,55.47,40,0
    .goto 97,50.89,59.6,40,0
    .goto 97,50.87,61.64,40,0
    .goto 97,52.33,61.18,40,0
    .goto 97,55.12,60.71,40,0
    .goto 97,58.15,60.18,40,0
    .goto 97,59.16,56.12,40,0
    +1
step
    >>Kill |cRXP_ENEMY_Root Trappers|r and loot them for [|cRXP_LOOT_|T134196:0|t[Root Trapper Vine]|r].
    .complete 9463,1 --8/8 Root Trapper Vine
	.mob Root Trapper
step
    #label Root Trapper Vine
	>>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Buck|r and loot them for [|cRXP_LOOT_|T134025:0|t[Moongraze Stag Tenderloin.]|r].
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.mob Moongraze Stag
	.mob Moongraze Buck
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r.
    .turnin 9454 >>Turn in The Great Moongraze Hunt
    .accept 10324 >>Accept The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r.
    .turnin 9463 >>Turn in Medicinal Purpose
	.target Anchorite Fateema
step
    .goto 97,48.40,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r.
    .accept 9473 >>Accept An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r.
    .turnin 9455 >>Turn in Strange Findings
    .accept 9623 >>Accept Coming of Age
    .accept 9456 >>Accept Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    #loop
    .goto 97,47.16,54.21,40,0
    .goto 97,45.81,55.32,40,0
    .goto 97,46.65,58.67,40,0
    .goto 97,49.8,60.22,40,0
    .goto 97,52.35,59.31,40,0
    .goto 97,53.71,56.86,40,0
    .goto 97,50.31,53.83,40,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Azure Snapdragon|r located on the ground.
    *|cRXP_WARN_They should be visible on the minimap|r.
    .complete 9473,1 --5/5 Azure Snapdragon Bulb
step
    .goto 97,46.68,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r.
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
	.target "Cookie" McWeaksauce
step
    .goto 97,47.03,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .accept 9506 >>Accept A Small Start
	.target Admiral Odesyus
step
    #loop
    .goto 97,48.46,72.42,40,0
    .goto 12,32.6,29.33,40,0
    .goto 97,50.62,70.09,40,0
    .goto 97,52.19,70.56,40,0
    .goto 97,53.46,70.76,40,0
    .goto 97,55.61,70.39,40,0
    .goto 97,57.13,70.18,40,0
    .goto 97,59.12,69.89,40,0
    .goto 97,60.64,70.09,40,0
    .goto 97,61.62,68.49,40,0
    >>Kill |cRXP_ENEMY_Skittering Crawlers|r and loot them for [|cRXP_LOOT_|T134007:0|t[Skittering Crawler Meats.]|r].
    .complete 9512,1 --6/6 Skittering Crawler Meat
	.mob Skittering Crawler
step
    .goto 97,59.57,67.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nautical Compass|r |cRXP_WARN_in the small camp|r.
    .complete 9506,1 --1/1 Nautical Compass
step
    .goto 97,58.60,66.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nautical Map|r |cRXP_WARN_in the small camp|r.
    .complete 9506,2 --1/1 Nautical Map
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9506 >>Turn in A Small Start
    .accept 9530 >>Accept I've Got a Plant
    .goto 97,47.03,70.20
	.target +Admiral Odesyus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen|r and |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r.
    .accept 9513 >>Accept Reclaiming the Ruins
    .goto 97,47.13,70.28
	.target +Priestess Kyleen
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
    .goto 97,47.24,70.00
    .target +Archaeologist Adamant Ironheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r.
    .turnin 9512 >>Turn in Cookie's Jumbo Gumbo
    .goto 97,46.69,70.53
	.target +"Cookie" McWeaksauce
step
    #loop
    .goto 97,50.66,66.93,40,0
    .goto 97,51.81,65.36,40,0
    .goto 97,50.96,64.48,40,0
    .goto 97,50.19,62.67,40,0
    .goto 97,48.99,61.85,40,0
    .goto 97,49.29,63.22,40,0
    .goto 97,48.25,64.9,40,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the|cRXP_PICK_Tree Stump|r and |cRXP_PICK_Piles of Leaves|r.
    .complete 9530,2 --5/5 Pile of Leaves
    .complete 9530,1 --1/1 Hollowed Out Tree
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9530 >>Turn in I've Got a Plant
    .accept 9531 >>Accept Tree's Company
	.target Admiral Odesyus
step
    #hidewindow
    #completewith Wrathscale
    #loop
    .goto 97,45.85,71.97,30,0
    .goto 97,41.36,74.99,30,0
    .goto 97,39.63,75.2,30,0
    .goto 97,37.86,80.73,30,0
    .goto 97,35.02,80.97,30,0
    .goto 97,35.57,77.98,30,0
    .goto 97,34.43,76.67,30,0
    .goto 97,33.76,79.13,30,0
    .goto 97,31.23,77.58,30,0
    .goto 97,29.91,78.67,30,0
    .goto 97,27.92,79.45,30,0
    .goto 97,26.14,77.96,30,0
    .goto 97,29.22,76.68,30,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Nagas|r and loot them for [|cRXP_LOOT_|T134462:0|t[Rune Covered Tablet.]|r].
    -- *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune Covered Tablet|r.
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Relics|r located on the ground.
    .complete 9523,1 --8/8 Ancient Relic
step
    #label Wrathscale
    >>Kill |cRXP_ENEMY_Nagas|r and loot them for [|cRXP_LOOT_|T134462:0|t[Rune Covered Tablet.]|r].
    -- *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune Covered Tablet|r.
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
    #hidewindow
    #completewith Infected Nightstalker Runt
    #loop
    .goto 97,28.5,73.33,40,0
    .goto 97,32.05,71.43,40,0
    .goto 97,32.63,65.74,40,0
    .goto 97,24.98,73.92,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r.
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.mob Infected Nightstalker Runt
step
    >>Kill |cRXP_ENEMY_Moongraze Bucks|r and loot them for[|cRXP_LOOT_|T134346:0|tMoongraze Buck Hides|r].
    .complete 10324,1 --6/6 Moongraze Buck Hide
	.mob Moongraze Buck
step
    #label Infected Nightstalker Runt
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r.
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.mob Infected Nightstalker Runt
step
    .isOnQuest 9531
    .goto 97,18.8,83.46,10,0
    .goto 97,18.37,86.32,10,0
    .goto 97,16.59,94.46
    .aura 30298 >>Use the |T132288:0|t[Tree Disguise Kit] near the |cRXP_WARN_Red Flag|r.
    .use 23792
step
    #completewith next
    .aura -30298 >> Right click off the Tree Disguise Kit buff
    .link /cancelaura Tree Disguise Kit >>|TInterface/cursor/crosshair/interact.blp:20|tClick here for a macro. Paste this into the chat.
step
    .goto 97,15.26,92.24
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 9531,1 --1/1 The Traitor Uncovered
step
    #label QuestKeybindingsDraenei2
    .goto 97,16.59,94.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r.
    .turnin 10428 >>Turn in The Missing Fisherman
    .accept 9527 >>Accept All That Remains
	.target Cowlen
step
    .goto 97,14.58,90.66
    >>Kill |cRXP_ENEMY_Owlbeasts|r and loot them for the [|cRXP_LOOT_Remain's of Cowlen's Family|r].
    .complete 9527,1 --1/1 Remains of Cowlen's Family
step
    #sticky
    .goto 97,16.59,94.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r.
    .turnin 9527 >>Turn in All That Remains
	.target Cowlen
step
    #completewith next
    .deathskip >> Die to the |cRXP_ENEMY_Owlbeasts|r Respawn |cRXP_WARN_at Azure Watch|r.
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9531 >>Turn in Tree's Company
    .accept 9537 >>Accept Show Gnomercy
	.target Admiral Odesyus
step
    .goto 97,47.13,70.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r.
    .turnin 9513 >>Turn in Reclaiming the Ruins
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.14,70.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r.
    .turnin 9514 >>Turn in Rune Covered Tablet
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.23,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r.
    .turnin 9523 >>Turn in Precious and Fragile Things Need Special Handling
	.target Archaeologist Adamant Ironheart
step
    .goto 97,48.56,71.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer "Spark" Overgrind|r.
    >>|cRXP_WARN_Wait for the Roleplay,|r Kill |cRXP_ENEMY_Engineer "Spark" Overgrind|r and loot him for [|cRXP_LOOT_Traitor's Communication|r].
    .complete 9537,1 --1/1 Traitor's Communication
    .skipgossip
    .mob Engineer "Spark" Overgrind
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9537,1 >>Turn in Show Gnomercy
    .accept 9602 >>Accept Deliver Them From Evil...
	.target Admiral Odesyus
step
    #completewith next
    .hs >> Hearthstone |cRXP_WARN_to Azure Watch|r.
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r.
    .turnin 10324 >>Turn in The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r.
    .turnin 9473 >>Turn in An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r.
    .turnin 9602 >>Turn in Deliver Them From Evil...
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    .goto 103,81.51,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r.
    .turnin 9623 >>Turn in Coming of Age
	.target Torallius the Pack Handler
step
    .goto 103,75.17,53.85,20,0
    .goto 103,73.55,39.76,20,0
    .goto 103,66.18,33.78,20,0
    .goto 103,62.49,43.7,20,0
    .goto 103,57.03,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r |cRXP_WARN_inside The Exodar|r.
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .accept 9605 >> Accept Hippogryph Master Stephanos
	.target Nurguni
step
    .goto 103,55.07,47.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step
    .goto 103,54.49,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r.
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
	.target Stephanos
step
    .nodmf
    .goto 103,48.34,62.9,5 >> |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormwind Portal|r.
    .zoneskip 84
step
    #completewith next
    .goto 84,49.36,86.76,10,0
    .goto 84,53.58,85.4,15,0
    .goto 84,53.95,79.25,15,0
    .goto 84,55.54,76.05,20,0
    .goto 84,60.00,71.95,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r.
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
    .nodmf
step
    .goto 84,67.49,80.56,20,0
    .goto 84,67.03,83.44,20,0
    .goto 84,69.76,84.87,20,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cRXP_WARN_in Goldshire|r.
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
    .nodmf
step
    #veteran
    .goto 103,61,52.56,5,0
    .goto 103,63.23,58.75
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Iressa|r.
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
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
    .dmf
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click on this text to receive a macro that will unlearn your professions|r.
    .dmf
step
    #label DarkMoonFaire
    .goto 103,51.34,42.03
    .zoneskip 37 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
    .dmf
step
    .goto 84,62.10,32.18
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .zoneskip 37
    .skipgossip
	.target Darkmoon Faire Mystic Mage
    .dmf
]])
