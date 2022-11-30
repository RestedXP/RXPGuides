RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Draenei Starting Zones
#name 3Retail-Alliance-Draenei_Azuremyst Isle
#displayname Chapter2-Draenei_Azuremyst Isle
#next RestedXP Alliance 10-60\1A_Elwynn Forest
#defaultfor Draenei

<<Alliance !DK

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeun
    .goto 97,64.5,54.04
    .accept 9314 >>Accept Word from Azure Watch
	.target Aeun
step
    #completewith next
    >>Kill Moongraze Stags and Bucks on your way to Azure Watch. Loot them for their Tenderloin
	>>You don't have to complete this right now
    .collect 23676,3
	.target Moongraze Stag
	.target Moongraze Buck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Acteon
    .goto 97,49.78,51.93
    .accept 9454 >>Accept The Great Moongraze Hunt
	.target Acteon	
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Valn
    .goto 97,48.68,52.41
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 47431,1,1,1
	.target Valn
step
    .goto 97,48.68,52.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Valn
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47431,2,3,2
	.target Valn
step
    #completewith home
    +Herbing and Mining Ores gives Experience. Only do this when the herbs/ores are right next to you	
step
    #completewith next
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Otonambusi, buy bags if you need (don't sell Moongraze Stag Tenderloin)
	.target Otonambusi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anchorite Fateema
    .goto 97,48.39,51.78
    .accept 9463 >>Accept Medicinal Purpose
	.target Anchorite Fateema
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dulvi
    .goto 97,48.97,51.06
    .accept 10428 >>Accept The Missing Fisherman
	.target Dulvi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Technician Dyvuun
    .goto 97,48.72,50.27
    .turnin 9313 >>Turn in Travel to Azure Watch
	.target Technician Dyvuun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caregiver Chellan
    .goto 97,48.34,49.14
    .turnin 9314,1 >>Turn in Word from Azure Watch
    .accept 9603 >>Accept Bds, Bandages, and Beyond
	.target Caregiver Chellan
step
	#label home
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caregiver Chellan
    .goto 97,48.34,49.14
    .home >>Set your Hearthstone to Azure Watch
	.target Caregiver Chellan
step
    #label MiningDraenei
    .goto 97,48.8,49.97,17,0
    .goto 97,49.72,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zaldaan
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .accept 9604 >>Accept On the Wings of a Hippogryph
	.target Zaldaan
step
    #completewith roottenders	
    >>Kill Moongraze Stags and Bucks. Loot them for their Tenderloin
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.target Moongraze Stag
	.target Moongraze Buck
step
    >>Kill Infected Nightstalker Runts. Loot them for the Faintly Glowing Crystal
	.goto 97,51.64,41.92
	.collect 23678,1,9455
	.use 23678 >>Right click on the Faintly Glowing Crystal in your bags
    .accept 9455 >>Accept Strange Findings
	.target Infected Nightstalker Runt
step
    #label roottenders
    >>Kill Root Trappers. Loot them for their Vine
    .goto 97,57.22,47.12,25,0
	.goto 97,57.79,63.89,25,0
	.goto 97,54.09,65.10,25,0
	.goto 97,50.55,60.29,25,0
	.goto 97,52.40,55.02,25,0
    .goto 97,54.5,58.33
    .complete 9463,1 --8/8 Root Trapper Vine
	.target Root Trapper
step
	>>Kill Moongraze Stags and Bucks. Loot them for their Tenderloin
    .goto 97,57.22,47.12,25,0
    .goto 97,54.5,58.33
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.target Moongraze Stag
	.target Moongraze Buck
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Acteon
    .turnin 9454,1 >>Turn in The Great Moongraze Hunt
    .accept 10324 >>Accept The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anchorite Fateema
    .turnin 9463,1 >>Turn in Medicinal Purpose
	.target Anchorite Fateema
step
    .goto 97,48.40,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daedal
    .accept 9473 >>Accept An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Exarch Menelaous
    .turnin 9455 >>Turn in Strange Findings
    .accept 9623 >>Accept Coming of Age
    .accept 9456 >>Accept Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    >>Loot the Azure Snapdragon on the Ground in the Area
    .goto 97,46.67,52.77,15,0
	.goto 97,49.32,55.25,15,0
	.goto 97,44.65,57.20,15,0
	.goto 97,49.27,58.63,15,0
	.goto 97,46.67,52.77
    .complete 9473,1 --5/5 Azure Snapdragon Bulb
step
    .goto 97,46.68,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to "Cookie" McWeaksauce
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
	.target "Cookie" McWeaksauce
step
    .goto 97,47.03,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .accept 9506 >>Accept A Small Start
	.target Admiral Odesyus
step
    #completewith next
    >>Kill Skittering Crawlers en route. Loot them for their Meat
	>>You will kill more shortly
    .complete 9512,1 --6/6 Skittering Crawler Meat
	.target Skittering Crawler
step
    >>Loot the Nautical Map in the small camp
    .goto 97,58.60,66.36
    .complete 9506,2 --1/1 Nautical Map
step
    >>Loot the Nautical Compass in the small camp
    .goto 97,59.57,67.65
    .complete 9506,1 --1/1 Nautical Compass
step
    >>Kill Skittering Crawlers. Loot them for their Meat
    .goto 97,49.35,73.46
    .complete 9512,1 --6/6 Skittering Crawler Meat
	.target Skittering Crawler
step
    .goto 97,47.03,70.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .turnin 9506 >>Turn in A Small Start
	.target Admiral Odesyus
step
    .goto 97,47.03,70.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .accept 9530 >>Accept I've Got a Plant
	.target Admiral Odesyus
step
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Priestess Kyleen
    .accept 9513 >>Accept Reclaiming the Ruins
	.target Priestess Kyleen
step
    .goto 97,47.24,70.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archaeologist Adamant Ironheart
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
	.target Archaeologist Adamant Ironheart
step
    >>Loot a Tree Stump and Piles of Leaves in the Area
    .goto 97,48.34,64.76,40,0
    .goto 97,50.68,64.53,40,0
    .goto 97,52.91,64.36,40,0
    .goto 97,48.34,64.76
    .complete 9530,2 --5/5 Pile of Leaves
    .complete 9530,1 --1/1 Hollowed Out Tree
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .turnin 9530 >>Turn in I've Got a Plant
    .accept 9531 >>Accept Tree's Company
	.target Admiral Odesyus
step
    .goto 97,46.69,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to "Cookie" McWeaksauce
    .turnin 9512 >>Turn in Cookie's Jumbo Gumbo
	.target "Cookie" McWeaksauce
step
    #completewith next
    >>Loot Ancient Relics on the ground
    .complete 9523,1 --8/8 Ancient Relic
step
    >>Kill Wrathscale Myrmidons, Nagas and Sirens. Loot them for the Rune Covered Tablet
    .goto 97,39.11,75.21,35,0
	.goto 97,35.21,80.17,35,0
	.goto 97,35.23,77.39,35,0
	.goto 97,30.63,77.71,35,0
	.goto 97,28.33,79.05,35,0
	.goto 97,35.21,80.17
	.collect 23759,1,9514
	.use 23759 >>Right click on the Rune Covered Tablet in your bags
    .accept 9514 >>Accept Rune Covered Tablet
    .complete 9513,1 --5/5 Wrathscale Myrmidon slain
    .complete 9513,2 --5/5 Wrathscale Naga slain
    .complete 9513,3 --5/5 Wrathscale Siren slain
	.target Wrathscale Myrmidon
	.target Wrathscale Naga
	.target Wrathscale Siren
step
    >>Loot Ancient Relics on the ground
    .goto 97,39.11,75.21,35,0
	.goto 97,35.21,80.17,35,0
	.goto 97,35.23,77.39,35,0
	.goto 97,30.63,77.71,35,0
	.goto 97,28.33,79.05,35,0
	.goto 97,35.21,80.17
    .complete 9523,1 --8/8 Ancient Relic
step
    #completewith next
    >>Kill Infected Nightstalker Runts in the Area
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.target Infected Nightstalker Runt
step
    >>Kill Moongraze Bucks. Loot them for their Hides
    .goto 97,32.42,66.36,60,0
    .goto 97,32.71,57.9
    .complete 10324,1 --6/6 Moongraze Buck Hide
	.target Moongraze Buck
step
    >>Kill Infected Nightstalker Runts in the Area
    .goto 97,32.42,66.36,60,0
    .goto 97,32.71,57.9
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.target Infected Nightstalker Runt
step
    #completewith next
    >>Use the Tree Disguise Kit in your bags near the Red Flag. Then click the Buff off to remove the disguise, then follow the Waypoints
	>>DO NOT wait at the flag
    .use 23792
    .goto 97,18.8,83.46,10,0
    .goto 97,18.37,86.32,10,0
    .goto 97,16.59,94.46,5,0
    .goto 97,15.26,92.24
    .complete 9531,1 --1/1 The Traitor Uncovered
step
    #label QuestKeybindingsDraenei2
    .goto 97,16.59,94.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cowlen
    .turnin 10428 >>Turn in The Missing Fisherman
    .accept 9527 >>Accept All That Remains
	.target Cowlen
step
    >>Kill Owlbeasts. Loot them for the Remain's of Cowlen's Family
    .goto 97,14.58,90.66
    .complete 9527,1 --1/1 Remains of Cowlen's Family
step
    #sticky
    .goto 97,16.59,94.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cowlen
    .turnin 9527 >>Turn in All That Remains
	.target Cowlen
step
    #completewith next
    .deathskip >> Die to the Owlbeasts. Respawn at Azure Watch
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .turnin 9531 >>Turn in Tree's Company
    .accept 9537 >>Accept Show Gnomercy
	.target Admiral Odesyus
step
    .goto 97,47.13,70.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Priestess Kyleen Il'dinare
    .turnin 9513 >>Turn in Reclaiming the Ruins
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.14,70.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Priestess Kyleen Il'dinare
    .turnin 9514 >>Turn in Rune Covered Tablet
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.23,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archaeologist Adamant Ironheart
    .turnin 9523 >>Turn in Precious and Fragile Things Need Special Handling
	.target Archaeologist Adamant Ironheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer "Spark" Overgrind 
    >>Wait for the Roleplay, Kill and LOOT the Engineer
    .goto 97,48.56,71.71
    .skipgossip
    .complete 9537,1 --1/1 Traitor's Communication
    .unitscan Engineer "Spark" Overgrind
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .turnin 9537,1 >>Turn in Show Gnomercy
    .accept 9602 >>Accept Deliver Them From Evil...
	.target Admiral Odesyus
step
    #completewith next
    .hs >> Hearthstone to Azure Watch
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Acteon
    .turnin 10324 >>Turn in The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daedal
    .turnin 9473 >>Turn in An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Exarch Menelaous
    .turnin 9602 >>Turn in Deliver Them From Evil...
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    .goto 103,81.51,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Torallius the Pack Handler
    .turnin 9623 >>Turn in Coming of Age
	.target Torallius the Pack Handler
step
    #fresh
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Torallius
    .goto 103,81.51,51.47
    .vendor 17584 >> Sell as much as you can. Purchase your mount
	.target Torallius
step 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aalun
    .goto 103,81.32,52.55
    .turnin 32661 >>Turn in Learn To Ride
	.train 33388 >> Train Apprentice Riding
    .skill riding,75
	.target Aalun
step
    .goto 103,75.17,53.85,20,0
    .goto 103,73.55,39.76,20,0
    .goto 103,66.18,33.78,20,0
    .goto 103,62.49,43.7,20,0
    .goto 103,57.03,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nurguni inside The Exodar
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .accept 9605 >> Accept Hippogryph Master Stephanos
	.target Nurguni
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .goto 103,55.07,47.2
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Stephanos
    .goto 103,54.49,36.32
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
	.target Stephanos
step << Draenei
    .nodmf
    .isQuestTurnedIn 9605 --x Draenei Check    
    .goto 103,48.34,62.9,5 >> Go through the Stormwind Portal
    .zoneskip 84
step << Draenei
    #completewith next
    .nodmf
    .isQuestTurnedIn 9605 --x Draenei Check
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .accept 46727 >>Accept Tides of War
    .goto 84,49.36,86.76,10,0
    .goto 84,53.58,85.4,15,0
    .goto 84,53.95,79.25,15,0
    .goto 84,55.54,76.05,20,0
    .goto 84,60.00,71.95,20,0
	.target Hero's Herald
step << Draenei
    .nodmf
    .isQuestTurnedIn 9605 --x Draenei Check
    >>Go down the Spiral Staircase
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .goto 84,49.36,86.76,10,0
    .goto 84,53.58,85.4,15,0
    .goto 84,53.95,79.25,15,0
    .goto 84,55.54,76.05,20,0
    .goto 84,60.00,71.95,20,0
    .goto 84,63.77,73.60
    .accept 332 >>Accept Wine Shop Advert
	.target Renato
step << Draenei
    .nodmf
    .isQuestTurnedIn 9605 --x Draenei Check
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .goto 84,67.49,80.56,20,0
    .goto 84,67.03,83.44,20,0
    .goto 84,69.76,84.87,20,0
    .goto 37,41.71,64.64
    .fp >>Get the Goldshire Flight Path
	.target Bartlett
step << Draenei
    .isQuestTurnedIn 9605  --x Draenei Check
    .dmf
    .zoneskip 37 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 103,51.34,42.03
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
step << Draenei
    .dmf
    .isQuestTurnedIn 9605 --x draenei check
    +Talk to the Darkmoon Faire Mystic Mage and press accept
    .goto 84,62.10,32.18
    .zoneskip 37
    .skipgossip
	.target Darkmoon Faire Mystic Mage
]])
