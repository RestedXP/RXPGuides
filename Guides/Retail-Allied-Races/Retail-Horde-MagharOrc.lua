RXPGuides.RegisterGuide([[
#df
#version 1
#group Allied Race Unlocks
#subgroup Maghar Orc
#name 01) Maghar Orc Questline
#displayname Maghar Orc Questline

<< Horde

step
    #completewith MagharOrcStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r in Orgrimmar
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 50242 >>Accept A Choice of Allies
    .target Ji Firepaw
step
    .isOnQuest 50242
    >>Interact with the banners in any order
    .goto 85,37.65,81.43
    .complete 50242,1 -- Learn more about the Highmountain Tauren
    .complete 50242,2 -- Learn more about the nightborne
    .complete 50242,3 -- Learn more about the Maghar Orcs
    .complete 50242,4 -- Learn more about the Zandalari trolls
    .complete 50242,5 -- Learn more about the Vulpera
step
    .isQuestComplete 50242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label MagharOrcStartQuestline
    .goto 85,37.77,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 53466 >>Accept Vision of Time
    .target Ji Firepaw
step
    #completewith next
    #title Take the Portal to Zuldazar
    .goto 85,53.46,90.42,10,0
    .goto 85,58.56,91.31
    .zone 1163 >>Take the Portal to Zuldazar
step
    .goto 1163,67.03,73.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r
    .turnin 53466 >>Turn in Vision of Time
    .accept 53467 >>Accept Caverns of Time
    .target Chief Telemancer Oculeth
step
    #completewith next
    #title Take the Portal to Orgrimmar
    .goto 1163,73.83,69.92
    .zone 85 >>Take the Portal to Orgrimmar
step
    #completewith next
    #title Take the Portal to Caverns of Time downstairs
    .goto 85,54.78,89.74,7,0
    .goto 85,54.64,87.12,7,0
    .goto 85,56.02,86.85,7,0
    .goto 85,56.41,92.56
    .zone 74 >>Take the Portal to Caverns of Time downstairs
step
    .goto 74,66.05,28.47,20,0
    .goto 74,61.50,16.78,20,0
    .goto 74,65.75,26.35,20,0
    .goto 74,66.66,16.11,20,0
    .goto 74,50.46,19.50,30,0
    .goto 74,39.19,50.42,30,0
    .goto 75,41.74,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the path down. Talk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 53467 >>Turn in Caverns of Time
    .accept 53354 >>Accept Echo of Gul'dan
    .target Anachronos
step << Mage
    .isOnQuest 53354
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .isOnQuest 53354
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .isOnQuest 53354
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .isOnQuest 53354
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .zoneskip 85
    .isOnQuest 53354
    #completewith next
    .goto 74,39.19,50.42,30,0
    .goto 74,50.46,19.50,30,0
    .goto 74,66.66,16.11,20,0
    .goto 74,65.75,26.35,20,0
    .goto 74,61.50,16.78,20,0
    .goto 74,66.05,28.47,20,0
    .goto 74,58.17,26.73
    .zone 85 >>Take the Portal to Orgrimmar
step
    .isOnQuest 53354
    #completewith next
    .goto 85,53.20,90.46,10,0
    .goto 85,52.69,52.84
    .zone 50 >>Take the Zeppelin to Stranglethorn Vale
step
    >>Fly to the Time Rift and click on it. Kill the |cRXP_ENEMY_Echo of Gul'dan|r
    >>Dodge Liquid Hellfire. Sidestep Fel Efflux. Interrupt Death Coil
    .goto 17,54.42,50.49
    .complete 53354,1 --1/1 Echo of Gul'dan slain
    .mob Echo of Gul'dan
step
    .goto 17,54.40,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 53354 >>Turn in Echo of Gul'dan
    .accept 53353 >>Accept Echo of Warlord Zaela
    .target Anachronos
step
    #completewith next
    #title Take the Portal to Orgrimmar
    .goto 17,72.65,49.50
    .zone 85 >>Take the Portal to Orgrimmar
step
    #completewith next
    #title Take the Portal to Jade Forest
    .goto 85,55.90,86.85,8,0
    .goto 85,54.53,87.12,8,0
    .goto 85,54.79,90.18,8,0
    .goto 85,57.47,92.26
    .zone 371 >>Go up. Take the Portal to Jade Forest
step
    >>Fly to the Time Rift and click on it. Kill the |cRXP_ENEMY_Echo of Warlord Zaela|r
    .goto 379,68.60,46.08,15,0
    .goto 379,68.80,43.69
    .complete 53353,1 --1/1 Echo of Warlord Zaela slain
    .mob Echo of Warlord Zaela
step
    .goto 379,68.90,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 53353 >>Turn in Echo of Warlord Zaela
    .accept 53355 >>Accept Echo of Garrosh Hellscream
    .target Anachronos
step << Mage
    .isOnQuest 53355
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .isOnQuest 53355
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .isOnQuest 53355
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .isOnQuest 53355
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .zoneskip 85
    .isOnQuest 53355
    #completewith next
    .goto 371,28.52,14.02
    .zone 85 >>Take the Portal to Orgrimmar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave Orgrimmar. Talk to |cRXP_FRIENDLY_Anachronos|r
    .goto 1,40.80,16.36
    .skipgossip
    .complete 53355,1 --1/1 Meet Anachronos outside Orgrimmar
    .target Anachronos
step
    >>(No arrow possible) Jump down. Click on the Time Rift. Kill the |cRXP_ENEMY_Echo of Garrosh Hellscream|r
    >>Move away during his Whirlwind. Dodge the Ironstars (Machines of War cast)
    .complete 53355,2 --1/1 Echo of Garrosh Hellscream slain
    .mob Echo of Garrosh Hellscream
step
    #completewith next
    #title Take the Portal to Zuldazar
    >>Leave the instance group (Right-Click your character frame)
    .goto 85,53.44,90.45,10,0
    .goto 85,58.59,91.32
    .zone 1163 >>Take the Portal to Zuldazar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r and |cRXP_FRIENDLY_Eitrigg|r
    .turnin 53355 >>Turn in Echo of Garrosh Hellscream
    .goto 1163,72.00,65.50
    .accept 52942 >>Accept Restoring Old Bonds
    .goto 1163,70.33,69.75
    .target Chief Telemancer Oculeth
    .target Eitrigg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r
    .complete 52942,1 --1/1 Speak with Oculeth to go to Draenor
    .goto 1163,72.00,65.50
    .skipgossip 131443,1
    .target Chief Telemancer Oculeth
step
    >>Cross the bridge. You may have to wait for an RP
    .goto 1170,44.07,55.07,20,0
    .goto 1170,44.87,53.20
    .complete 52942,2 --Meet the Overlord
step
    .goto 1170,44.94,53.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 52942 >>Turn in Restoring Old Bonds
    .accept 52943 >>Accept Calling Out the Clans
    .target Eitrigg
step
    >>Click on the |cRXP_PICK_Blackrock banner|r. Relog if you can't click on it
    .goto 1170,45.17,52.64
    .complete 52943,1 --1/1 Blackrock
step
    >>Click on the |cRXP_PICK_Blackrock banner|r. Relog if you can't click on it
    .goto 1170,45.48,51.94
    .complete 52943,2 --1/1 Warsong
step
    >>Click on the |cRXP_PICK_Blackrock banner|r. Relog if you can't click on it
    .goto 1170,44.82,52.00
    .complete 52943,3 --1/1 Frostwolf
step
    .goto 1170,45.14,52.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 52943 >>Turn in Calling Out the Clans
    .target Overlord Geya'rah
step
    .goto 1170,45.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Grommash Hellscream|r
    .accept 52945 >>Accept Bonds Forged Through Battle
    .target Grommash Hellscream
step
    >>Kill |cRXP_ENEMY_Kor'gall Defectors|r and |cRXP_ENEMY_Kor'gall Agitators|r
    .goto 1170,40.23,65.14,25,0
    .goto 1170,39.10,65.72,25,0
    .goto 1170,38.81,67.47,25,0
    .goto 1170,38.25,67.48,25,0
    .goto 1170,37.73,68.32
    .complete 52945,1 --10/10 Kor'gall Defector slain
    .mob Kor'gall Defector
    .mob Kor'gall Agitator
step
    >>Kill |cRXP_ENEMY_Kor'gall, Greatson of Kor'gall|r after a short RP
    >>Side-step the Violent Crash. Dodge the Boulders
    .goto 1170,36.80,68.06,15,0
    .goto 1170,36.26,68.70,10,0
    .goto 1170,36.49,70.06
    .complete 52945,2 --1/1 Kor'gall, Greatson of Kor'gall slain
    .mob Kor'gall, Greatson of Kor'gall
step
    .goto 1170,36.48,70.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 52945 >>Turn in Bonds Forged Through Battle
    .accept 52955 >>Accept Tyranny of the Light
    .target Overlord Geya'rah
step
    #sticky
    #label MagharOrcTyrannyoftheLight
    .goto 1170,44.13,69.99,0,0
    .complete 52955,1 --"Tyranny of the Light" scenario completed
step
    #completewith next
    .goto 1170,38.59,67.38,10 >>Leave the cave
step
    .isOnQuest 52955
    >>Follow the arrow to Beastwatch
    .goto 1170,41.39,66.92,20,0
    .goto 1170,43.02,67.09,30,0
    .goto 1170,43.89,69.46
    .scenario 3973,1
step
    .isOnQuest 52955
    >>Destroy |cRXP_ENEMY_Lightbound Batteries|r and kill |cRXP_ENEMY_Lighbounds|r
    .goto 1170,44.76,75.62,15,0
    .goto 1170,45.18,76.10,15,0
    .goto 1170,45.94,74.77,15,0
    .goto 1170,46.00,75.66,25,0
    .goto 1170,44.04,75.25,25,0
    .goto 1170,45.22,73.85,25,0
    .goto 1170,45.17,74.45
    .mob Lightbound Battery
    .scenario 3974,1
step
    .isOnQuest 52955
    >>Follow the arrow to |cRXP_ENEMY_Exarch Orelis|r
    .goto 1170,45.49,78.58
    .scenario 3975,1
step
    .isOnQuest 52955
    >>Kill |cRXP_ENEMY_Exarch Orelis|r
    >>Side-step and dodge the Prometheus Ray. Interrupt Holy Light
    .goto 1170,45.26,80.33
    .scenario 3976,1
    .mob Exarch Orelis
step
    .isOnQuest 52955
    >>Run back to Beastwatch and meet |cRXP_FRIENDLY_Grommash Hellscream|r
    .goto 1170,44.55,71.37
    .scenario 3977,1
    .timer 55,Order RP
step
    .isOnQuest 52955
    >>Wait for the RP
    .goto 1170,43.89,70.89
    .scenario 3980,1
step
    .isOnQuest 52955
    >>Climb the tower. Mount the Mag'har Turrent. Use |T879998:0|t[Iron Lightseeker] (2) on cooldown, otherwise spam |T252185:0|t[Turret Blast] to kill the incoming mobs
    .goto 1170,43.48,71.38,10,0
    .goto 1170,43.63,71.48
    .scenario 3978,1
step
    .isOnQuest 52955
    >>Jump down. Run to the Warchief. Wait for the RP
    .goto 1170,44.55,71.37
    .scenario 3981,1
step
    .isOnQuest 52955
    >>Follow the arrow
    .goto 1170,44.13,69.99
    .scenario 3979,1
step
    #requires MagharOrcTyrannyoftheLight
    .goto 1,41.25,16.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 52955 >>Turn in Tyranny of the Light
    .accept 51479 >>Accept The Uncorrupted
    .target Overlord Geya'rah
step
    .goto 85,38.64,80.07,12,0
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 51479 >>Turn in The Uncorrupted
    .target Ji Firepaw
step
    .isQuestTurnedIn 57448
    +Congratulations! You've unlocked the Maghar Orc!
]])