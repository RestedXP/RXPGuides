RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Draenei Starting Zones
#name 3Retail-Alliance-Draenei_Azuremyst Isle
#displayname Draenei_Azuremyst Isle
#next RestedXP Alliance 10-60\1Retail-Alliance_Darkmoon Faire
#defaultfor Draenei

<<Alliance
<<!DK

step << Hunter
    #completewith next
    +Tame a Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeun
    .goto 97,64.5,54.04
    .accept 9314 >>Accept Word from Azure Watch
step
    #completewith next
    >>Kill and LOOT Moongraze Stag/Buck on your way to the side of the Road
    .collect 23676,3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Acteon
    .goto 97,49.78,51.93
    .accept 9454 >>Accept The Great Moongraze Hunt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Valn
    .train 2366 >> Learn Herbalism. Mining Ores and Herbing gives Experience, only gather ores/herbs when they are on a direct path with you. We'll train mining later.
    .goto 97,48.68,52.41
step
    #completewith next
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Otonambusi, buy bags if you need (don't sell Moongraze Stag Tenderloin)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anchorite Fateema
    .goto 97,48.39,51.78
    .accept 9463 >>Accept Medicinal Purpose
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dulvi
    .goto 97,48.97,51.06
    .accept 10428 >>Accept The Missing Fisherman
    .train 2575 >> Learn Mining
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Technician Dyvuun
    .goto 97,48.72,50.27
    .turnin 9313 >>Turn in Travel to Azure Watch
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caregiver Chellan
    .goto 97,48.34,49.14
    .turnin 9314,1 >>Turn in Word from Azure Watch
    .accept 9603 >>Accept Bds, Bandages, and Beyond
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caregiver Chellan
    .goto 97,48.34,49.14
    .home >>Set your Hearthstone to Azure Watch
step
    #label MiningDraenei
    .goto 97,48.8,49.97,17,0
    .goto 97,49.72,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zaldaan
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .accept 9604 >>Accept On the Wings of a Hippogryph
step
    #completewith roottenders
    >>Kill and LOOT Moongraze Stag/Buck in the Area
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
step
    >>Kill and LOOT Infected Nightstalker Runt until you start a quest
    .goto 97,51.64,41.92
    .accept 9455 >>Accept Strange Findings
step
    #label roottenders
    >>Kill and LOOT Root Trapper in the Area
    .goto 97,57.22,47.12,25,0
    .goto 97,54.5,58.33
    .complete 9463,1 --8/8 Root Trapper Vine
step
    .goto 97,57.22,47.12,25,0
    .goto 97,54.5,58.33
    >>Kill and LOOT Moongraze Stag/Buck in the Area
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Acteon
    .turnin 9454,1 >>Turn in The Great Moongraze Hunt
    .accept 10324 >>Accept The Great Moongraze Hunt
step
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anchorite Fateema
    .turnin 9463,1 >>Turn in Medicinal Purpose
step
    .goto 97,48.40,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daedal
    .accept 9473 >>Accept An Alternative Alternative
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Exarch Menelaous
    .turnin 9455 >>Turn in Strange Findings
    .accept 9623 >>Accept Coming of Age
    .accept 9456 >>Accept Nightstalker Clean Up, Isle 2...
step
    >>Click the Herbs on the Ground in the Area
    .goto 97,46.67,52.77
    .complete 9473,1 --5/5 Azure Snapdragon Bulb
step
    .goto 97,46.68,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to "Cookie" McWeaksauce
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
step
    .goto 97,47.03,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .accept 9506 >>Accept A Small Start
step
    #completewith next
    >>Kill and LOOT Crabs in the Area 
    .complete 9512,1 --6/6 Skittering Crawler Meat
step
    >>Click the Nautical Compass
    .goto 97,59.57,67.65
    .complete 9506,1 --1/1 Nautical Compass
step
    >>Click the Nautical Map
    .goto 97,58.60,66.38
    .complete 9506,2 --1/1 Nautical Map
step
    >>Kill and LOOT Crabs in the Area 
    .goto 97,49.35,73.46
    .complete 9512,1 --6/6 Skittering Crawler Meat
step
    .goto 97,47.03,70.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .turnin 9506 >>Turn in A Small Start
step
    .goto 97,47.03,70.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .accept 9530 >>Accept I've Got a Plant
step
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Priestess Kyleen
    .accept 9513 >>Accept Reclaiming the Ruins
step
    .goto 97,47.24,70.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archaeologist Adamant Ironheart
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
step
    >>Click a Tree Stump and 5 Pile of Leaves in the Area
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
step
    .goto 97,46.69,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to "Cookie" McWeaksauce
    .turnin 9512 >>Turn in Cookie's Jumbo Gumbo
step
    #completewith next
    >>Click the Objects on the ground as you quest
    .complete 9523,1 --8/8 Ancient Relic
step
    >>Kill and LOOT Wrathscales in the Area
    .goto 97,35.23,77.39
    .accept 9514 >>Accept Rune Covered Tablet
    .complete 9513,1 --5/5 Wrathscale Myrmidon slain
    .complete 9513,2 --5/5 Wrathscale Naga slain
    .complete 9513,3 --5/5 Wrathscale Siren slain
step
    >>Click the Objects on the ground
    .goto 97,35.23,77.39
    .complete 9523,1 --8/8 Ancient Relic
step
    #completewith next
    >>Kill Infected Nightstalker Runts in the Area
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
step
    >>Kill and LOOT Moongraze in the Area
    .goto 97,32.42,66.36,60,0
    .goto 97,32.71,57.9
    .complete 10324,1 --6/6 Moongraze Buck Hide
step
    >>Kill Infected Nightstalker Runts in the Area
    .goto 97,32.42,66.36,60,0
    .goto 97,32.71,57.9
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
step
    #completewith next
    >>Use the Item "Tree Disguise Kit" in your bags near the Red Flag. Then click the Buff off to remove the disguise, then follow the Waypoints
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
step
    >>Kill and LOOT Owlkins in the Area
    .goto 97,14.58,90.66
    .complete 9527,1 --1/1 Remains of Cowlen's Family
step
    #sticky
    .goto 97,16.59,94.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cowlen
    .turnin 9527 >>Turn in All That Remains
step
    #completewith next
    .deathskip >> Pull as many Enemies as you can, Die, Release and Respawn at the Graveyard
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Odesyus
    .turnin 9531 >>Turn in Tree's Company
    .accept 9537 >>Accept Show Gnomercy
step
    .goto 97,47.13,70.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Priestess Kyleen Il'dinare
    .turnin 9513 >>Turn in Reclaiming the Ruins
step
    .goto 97,47.14,70.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Priestess Kyleen Il'dinare
    .turnin 9514 >>Turn in Rune Covered Tablet
step
    .goto 97,47.23,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archaeologist Adamant Ironheart
    .turnin 9523 >>Turn in Precious and Fragile Things Need Special Handling
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
step
    #completewith next
    .hs >> Hearthstone to Azure Watch
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Acteon
    .turnin 10324 >>Turn in The Great Moongraze Hunt
step
    .goto 97,48.39,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daedal
    .turnin 9473 >>Turn in An Alternative Alternative
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Exarch Menelaous
    .turnin 9602 >>Turn in Deliver Them From Evil...
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
step
    .goto 103,81.51,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Torallius the Pack Handler
    .turnin 9623 >>Turn in Coming of Age
step
    #fresh
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Torallius
    .goto 103,81.51,51.47
    .vendor 17584 >> Sell as much as you can. Purchase your mount
step 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aalun
    .goto 103,81.32,52.55
    .turnin 32661 >>Turn in Learn To Ride
    .skill riding,75 >> Learn Apprentice Riding
step
    .goto 103,75.17,53.85,20,0
    .goto 103,73.55,39.76,20,0
    .goto 103,66.18,33.78,20,0
    .goto 103,62.49,43.7,20,0
    .goto 103,57.03,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nurguni inside the Exodar
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .accept 9605 >> Accept Hippogryph Master Stephanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .goto 103,55.07,47.2
    .accept 46727 >>Accept Tides of War
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Stephanos
    .goto 103,54.49,36.32
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
step << Draenei
    .nodmf
    #completewith next
    .isQuestTurnedIn 9605 --x Draenei Check
    +Click the Stormwind Portal
    .goto 103,48.34,62.9
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
step << Draenei
    .nodmf
    .isQuestTurnedIn 9605 --x Draenei Check
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .goto 84,67.49,80.56,20,0
    .goto 84,67.03,83.44,20,0
    .goto 84,69.76,84.87,20,0
    .goto 37,41.71,64.64
    .fp >>Get the Goldshire Flight Path
step << Draenei
    .isQuestTurnedIn 9605  --x Draenei Check
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 103,51.34,42.03
    .accept 7905 >>Accept The Darkmoon Faire
step << Draenei
    .dmf
    .isQuestTurnedIn 9605 --x draenei check
    +Talk to the Darkmoon Faire Mystic Mage and press accept
    .goto 84,62.10,32.18
    .zoneskip 37
    .skipgossip
]])
