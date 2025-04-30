-- Siren Isle Campaign
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r 11.0.7 Siren Isle
#subweight 999.9
#name ag) Siren Isle Campaign
#displayname |cFF00CCFF1|r - Campaign
#next ah) Chapter 1 - Trust Issues


--WEEK 1 CAMPAIGN START

step
    .goto 2339,41.85,26.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r
    .accept 84719 >>Accept The Expedition Awaits
    .target Dawn
step
    .goto 2339,43.41,29.92,15,0
    .goto 2248,55.40,33.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r |cRXP_WARN_on the zeppelin|r.
    .turnin 84719 >>Turn in The Expedition Awaits
    .target Skaggit
    .accept 84720 >>Accept To the Siren Isle!
step
    .goto 2248,55.40,33.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .complete 84720,1 --1/1 Talk to Skaggit to depart from Dornogal
    .skipgossipid 124305
    .target Skaggit to depart from Dornogal
step
    #completewith next
    #hidewindow
    #title Follow the Arrow
    .goto 2369,69.34,50.86,20 >> test
    .timer 9,RP
step
    .goto 2369,69.31,48.08
    #title Follow the Arrow
    >>|cRXP_WARN_You are unable to fly here; this will be unlocked later|r.
    .complete 84720,2 --1/1 Rendezvous with Skaggit
step
    .goto 2369,69.32,48.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .turnin 84720 >>Turn in To the Siren Isle!
    .target Skaggit
    .accept 84940 >>Accept Friendly Competition
step
    .goto 2369,67.48,41.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84940 >>Turn in Friendly Competition
    .target Bargus
    .accept 84721 >>Accept To Scan a Crystal
step
    .goto 2369,67.75,40.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Prototype|r
    .complete 84721,1 --1/1 Earthen Prototype
step
    .goto 2369,70.98,40.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .complete 84721,2 --1/1 Arathi Crystals
    .skipgossipid 124803
    .target Apprentice Tanmar
step
    .goto 2369,71.09,45.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Goblin Power Source|r
    .complete 84721,3 --1/1 Goblin Power Source
step
    #completewith next
    .goto 2369,67.50,41.98
    .gossipoption 124801 >>Talk to |cRXP_FRIENDLY_Bargus|r
    .timer 3.5, Roleplay Duration
    .target Bargus
step
    .goto 2369,67.50,41.98
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    .complete 84721,4 --1/1 Device assembled
step
    .goto 2369,67.47,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84721 >>Turn in To Scan a Crystal
    .target Bargus
    .accept 84722 >>Accept Facet-nating Signals
step
    .goto 2369,57.03,47.72,40,0
    .goto 2369,48.56,44.7
    #title Follow the Arrow
    .complete 84722,1 --Meet up with Bargus
step
    .goto 2369,48.56,44.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Pylon|r at the waypoint destination
    .complete 84722,2 --1/1 First Earthen Pylon Activated
step
    .goto 2369,45.44,41.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Pylon|r at the waypoint destination
    .complete 84722,3 --1/1 Second Earthen Pylon Activated
step
    .goto 2369,44.86,44.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Pylon|r at the waypoint destination
    .complete 84722,4 --1/1 Third Earthen Pylon Activated
step
    .goto 2369,48.12,43.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84722 >>Turn in Facet-nating Signals
    .target Bargus
    .accept 84727 >>Accept The Second Signal
step
    .goto 2369,43.53,28.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84727 >>Turn in The Second Signal
    .accept 84941 >>Accept Cave Barging
    .target Bargus
step
    .isOnQuest 84941
    .goto 2369,44.64,22.43,40 >>Follow the Arrow
    #title Follow the Arrow
    .timer 10,RP
step
    .goto 2369,44.64,22.43
    >>Wait in front of the cave |cRXP_WARN_with your back facing it|r until the entrance is blown open,|cRXP_WARN_so the blast pushes you closer to the cave.|r
    .complete 84941,1 --1/1 Collapsed tunnel cleared
step
    .goto 2369,48.87,18.42
    #title Follow the Arrow
    .complete 84941,2 --Cave entered
    .timer 5,RP
step
    .goto 2369,48.83,18.43
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84941 >>Turn in Cave Barging
    .target Bargus
    .accept 84723 >>Accept Buried Secrets
step
    .goto 2369,50.32,15.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_the Singing Tablet|r
    *|cRXP_WARN_Remove "Singing Runes" debuff to save 3 seconds.|r
    .complete 84723,1 --1/1 Examine the Singing Tablet
    .skipgossipid 125532
step
    .goto 2375,47.58,44.69
    #title Follow the Arrow
    .complete 84723,1 --1/1 Examine the Singing Tablet
step
    .goto 2375,47.58,44.69
    #title Follow the Arrow
    >>Kill |cRXP_ENEMY_Crystalsworn Memory|r |cRXP_WARN_if they bother you|r and |cRXP_WARN_don't run into|r |cRXP_ENEMY_Faded Construct|r.
    .complete 84723,2 --Follow the Signal through the Vault.
    .mob Crystalsworn Memory
step
    .goto 2375,47.59,44.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Rune|r
    *Kill |cRXP_ENEMY_Crystalsworn Memory|r |cRXP_WARN_if they bother you|r and |cRXP_WARN_don't run into|r |cRXP_ENEMY_Faded Construct|r.
    .complete 84723,4 --Follow the signal into the Central Chamber
    .mob Crystalsworn Memory
    .mob Faded Construct
    .target Bargus
step
    .goto 2375,48.02,49.32,10,0
    .goto 2375,40.15,70.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    *>>Kill |cRXP_ENEMY_Crystalsworn Memory|r |cRXP_WARN_if they bother you|r.
    .complete 84723,5 --Follow the signal into the Central Chamber
    .timer 8,RP
    .target Bargus
step
    .goto 2375,40.15,70.7
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84723 >>Turn in Buried Secrets
    .target Bargus
    .accept 84724 >>Accept The Radiant Vault
step
    .goto 2375,37.43,77.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Skeletal Remains|r.
    .complete 84724,1 --1/1 Skeletal Remains Inspected
    .target Skeletal Remains
step
    .goto 2375,37.43,77.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Skeletal Remains|r.
    .complete 84724,2 --1/1 Ring Taken
    .skipgossipid 124399
step
    .goto 2375,44.86,72.79
    >>Kill the |cRXP_ENEMY_Vault Guardian|r.
    .complete 84724,3 --1/1 Tomb Guardian Defeated
    .mob Vault Guardian
step
    .goto 2375,41.37,74.38
    >>Loot |cRXP_ENEMY_Vault Guardian|r for |T6215540:0|t[|cRXP_LOOT_Cracked Citrine|r].
    .complete 84724,4 --1/1 Cracked Citrine Collected
step
    #completewith next
    .goto 2375,38.01,78.01
    .gossipoption 124775 >>Talk to |cRXP_FRIENDLY_Bargus|r
    .timer 13,RP
    .target Bargus
step
    .goto 2369,71.12,44.27
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84724 >>Turn in The Radiant Vault
    .target Bargus
step
    .goto 2369,71.09,44.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .accept 84728 >>Accept Reforged Anew
    .target Angorla
step
    .goto 2369,71.09,44.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r and finish the puzzle.
    *|cRXP_WARN_Rearrange the positions so that none of the connecting intersect|r.
    .skipgossipid 124757 -- do It
    .complete 84728,1 --1/1 Cracked Citrine Repaired
    --x .skipgossipid 131242 -- wait
step
    .goto 2369,71.09,44.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 84728 >>Turn in Reforged Anew
    .target Angorla
    .accept 84725 >>Accept The Circlet Calls
step
    .goto 2369,71.09,44.11
    >>Equip |T6215518:0|t[Cyrce's Circlet]
    .complete 84725,1 --1/1 Equip Cyrce's Circlet
    .use 228411
step
    .goto 2369,71.09,44.11
    >>Open your character panel and Shift+Right-Click on |T6215518:0|t[Cyrce's Circlet] (ring slot). Then, Left-Click and drag |T6215530:0|t[Windsinger's Runed Citrine] from your bags into the |cFFEB144Cred gem slot|r.
    .complete 84725,2 --1/1 Socket
step
    .goto 2369,71.09,44.11
    >>Open your character panel and Shift+Right-Click on |T6215518:0|t[Cyrce's Circlet]. Next, Left-Click to remove |T6215530:0|t[Windsinger's Runed Citrine] from the |cFFEB144Cred gem slot|r, then Left-Click again to reapply it.
    .complete 84725,3 --1/1 Unsocket
step
    .goto 2369,71.09,44.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 84725 >>Turn in The Circlet Calls
    .accept 84726 >>Accept Uncovered Mysteries
    .target Angorla

--CONTRUBUTION

step
    .goto 2369,69.40,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack the Hammer|r
    .accept 85059 >>Accept A Piece of the Action
    .target Jack the Hammer
step
    .goto 2369,69.32,43.18
    >>Click on |cRXP_PICK_Siren Isle Command Map|r and contribute to any of the 3 events.
    .complete 85059,1 --1/1 Contribute to an event
step
    .goto 2369,69.40,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack the Hammer|r
    .turnin 85059 >>Turn in A Piece of the Action
    .accept 86156 >>Accept Getting Involved
    .target Jack the Hammer
step
    .goto 2369,70.46,67.14,20,0
    .goto 2369,68.38,73.76
    >>|cRXP_WARN_Use the ExtraActionButton in the cave|r.
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Runed Storm Cache|r.
    .complete 84726,1 --1/1 Vrykul Ruins Searched
step
    .areapoiexists 2369,8149
    .goto 2369,61.93,74.69
    >>Complete the |cRXP_WARN_The Drain Excavation|r by killing |cRXP_ENEMY_Gravesludge|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Gravesludge
step
    .goto 2369,32.41,69.36
    >>|cRXP_WARN_Use the ExtraActionButton|r.
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Runed Storm Cache|r.
    .complete 84726,2 --1/1 Vrykul Ritual Site Searched
step
    .areapoiexists 2369,8152
    .goto 2369,33.20,64.80
    >>Complete the |cRXP_WARN_The Drowned Lair Excavation|r by killing |cRXP_ENEMY_Nerathor|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Nerathor
step
    .areapoiexists 2369,8150
    .goto 2369,44.03,56.32
    >>Complete the |cRXP_WARN_Shuddering Hallow Excavation|r by killing |cRXP_ENEMY_Stalgnarok|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Stalagnarok
step
    .goto 2369,39.48,20.23
    >>|cRXP_WARN_Use the ExtraActionButton|r.
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Runed Storm Cache|r.
    .complete 84726,3 --1/1 Vrykul Gravesite Searched
step
    .goto 2369,71.21,44.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 84726 >>Turn in Uncovered Mysteries
    .target Angorla
step
    .areapoiexists 2369,8149
    .goto 2369,61.93,74.69
    >>Complete the |cRXP_WARN_The Drain Excavation|r by killing |cRXP_ENEMY_Gravesludge|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Gravesludge
step
    .areapoiexists 2369,8150
    .goto 2369,44.03,56.32
    >>Complete the |cRXP_WARN_Shuddering Hallow Excavation|r by killing |cRXP_ENEMY_Stalgnarok|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Stalagnarok
step
    .areapoiexists 2369,8152
    .goto 2369,33.20,64.80
    >>Complete the |cRXP_WARN_The Drowned Lair Excavation|r by killing |cRXP_ENEMY_Nerathor|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Nerathor
step
    .goto 2369,69.32,43.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Siren Isle Command Map|r and contribute to any of the 3 events. |cRXP_WARN_10 times if u can.|r
    .complete 86156,1 --10/10 Contribute ten times to events
step
    .areapoiexists 2369,8149
    .goto 2369,61.93,74.69
    >>Complete the |cRXP_WARN_The Drain Excavation|r by killing |cRXP_ENEMY_Gravesludge|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Gravesludge
step
    .areapoiexists 2369,8150
    .goto 2369,44.03,56.32
    >>Complete the |cRXP_WARN_Shuddering Hallow Excavation|r by killing |cRXP_ENEMY_Stalgnarok|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Stalagnarok
step
    .areapoiexists 2369,8152
    .goto 2369,33.20,64.80
    >>Complete the |cRXP_WARN_The Drowned Lair Excavation|r by killing |cRXP_ENEMY_Nerathor|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Nerathor
step
    .goto 2369,69.40,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack the Hammer|r
    .turnin 86156 >>Turn in Getting Involved
    .target Jack the Hammer
step
    .goto 2369,72.18,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .accept 85653 >>Accept Dipping a Toe
    .target Apprentice Tanmar
step
    .goto 2369,73.34,52.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seafearer's Chest|r on the seabed.
    .complete 85653,1 --1/1 Search the East Shore
step
    .goto 2369,45.92,87.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seafearer's Chest|r on the seabed.
    .complete 85653,3 --1/1 Search the Southern Shore
step
    .goto 2369,33.07,20.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seafearer's Chest|r on the seabed.
    .complete 85653,2 --1/1 Search the Northern Shore
step
    .goto 2369,72.19,42.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .turnin 85653 >>Turn in Dipping a Toe
    .target Apprentice Tanmar

step
    .isQuestAvailable 85654
    .isQuestTurnedIn 85653
    .isOnQuest 84852
    >>Kill |cRXP_ENEMY_rares|r, |cRXP_ENEMY_enemies|r, complete repeatable quests and excavations or open |cRXP_PICK_chests|r to complete the first part of the special assignment quest
    .complete 84852,1 --Complete activities and secure the Siren Isle (100%)
step
    .isQuestAvailable 85654
    .isQuestTurnedIn 85653
    .isOnQuest 84851
    >>Kill |cRXP_ENEMY_rares|r, |cRXP_ENEMY_enemies|r, complete repeatable quests and excavations or open |cRXP_PICK_chests|r to complete the first part of the special assignment quest
    .complete 84851,1 --Complete activities and secure the Siren Isle (100%)
step
    .isQuestAvailable 85654
    .isQuestTurnedIn 85653
    .isOnQuest 84850
    >>Kill |cRXP_ENEMY_rares|r, |cRXP_ENEMY_enemies|r, complete repeatable quests and excavations or open |cRXP_PICK_chests|r to complete the first part of the special assignment quest
    .complete 84850,1 --Complete activities and secure the Siren Isle (100%)
step
    .goto 2369,71.28,45.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .accept 85654 >>Accept Juicing Up And Storming Out
    .target Didi the Wrench
step
    .goto 2369,69.07,49.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzie Boltwrench to enter Storm Mode|r
    .complete 85654,2 --1/1 Talk to Suzie Boltwrench to enter Storm Mode
    .target Suzie Boltwrench
    .skipgossipid 123657
step
    .isOnQuest 85654
    .goto 2369,69.07,49.25
    .aura 458069 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzie Boltwrench to enter Storm Mode|r
    .target Suzie Boltwrench
    .skipgossipid 123657
step
    .goto 2369,69.14,49.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_TR-06 Pummeler|r
    .complete 85654,3 --1/1 Activate the TR-06 Pummeler
step
    .isOnQuest 85654
    #hidewindow
    #completewith next
    #label NUKULARTargetPainter
    .complete 85654,4 --1/1 Use the N.U.K.U.L.A.R Target Painter
step
    .isOnQuest 85654
    #completewith NUKULARTargetPainter
    .goto 2369,69.27,47.94
    .aura 466925 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_.U.K.U.L.A.R Target Painter|r on top of the boxes
step
    .isOnQuest 85654
    #requires NUKULARTargetPainter
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim it anywhere
    .complete 85654,4 --1/1 Use the N.U.K.U.L.A.R Target Painter
step
    .isOnQuest 85654
    .goto 2369,69.23,49.26
    .aura -458069 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzie Boltwrench to leave Storm Mode|r
    .skipgossipid 125326
    .target Suzie Boltwrench
step
    .goto 2369,71.28,45.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .turnin 85654 >>Turn in Juicing Up And Storming Out
    .target Didi the Wrench
step
    .goto 2369,71.22,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .accept 85655 >>Accept Unleashing Her Power
    .target Angorla
step
    #completewith next
    #hidewindow
    #label EquipCyresCircleUnleashingPower
    .isOnQuest 85655
    .equip 11,228411 >>Equip the Cyre's Circle

step
    .isOnQuest 85655
    #completewith EquipCyresCircleUnleashingPower
    .equip 11,228411 >>Equip the Cyre's Circle
    .use 228411
step
    #requires EquipCyresCircleUnleashingPower
    #loop
    .goto 2369,63.44,76.73,35,0
    .goto 2369,34.47,65.59,35,0
    .goto 2369,45.96,56.72,35,0
    .goto 2369,45.19,23.39,45,0
    >>Run around and attack |cRXP_ENEMY_anything|r
    .complete 85655,1 --10/10 Potential Unveiled
step
    .goto 2369,71.21,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 85655 >>Turn in Unleashing Her Power
    .target Angorla
step
    .goto 2369,72.19,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .accept 85656 >>Accept The Singing Bandit Catcher
    .target Apprentice Tanmar
step
    #completewith next
    #label SpiritScarredCave
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,1 --1/1 Spirit Scarred Cave Searched
    .mob Cursed Sailor
step
    #title Enter Cave
    #completewith SpiritScarredCave
    .goto 2369,49.96,42.67,10 >>Enter the cave
step
    #requires SpiritScarredCave
    .goto 2369,52.34,38.57
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,1 --1/1 Spirit Scarred Cave Searched
    .mob Cursed Sailor
step
    .goto 2369,43.21,47.79,10,0
    .goto 2369,43.02,49.41,10,0
    .goto 2369,38.94,52.49
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,2 --1/1 Salt and Shanty Searched
    .mob Cursed Sailor
step
    .goto 2369,48.43,58.40
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,3 --1/1 Ghoststone Diggings Searched
    .mob Cursed Sailor
step
    .goto 2369,72.14,42.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .turnin 85656 >>Turn in The Singing Bandit Catcher
    .target Apprentice Tanmar
step
    .goto 2369,71.28,45.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .accept 85657 >>Accept Cyrce Would Be So Proud
    .target Didi the Wrench
step
    .goto 2369,72.19,44.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_The Skypiercer|r
    *|cRXP_WARN_Use the correct ability:|r
    - Wind on the left: Left
    - Wind on the right: Right
    - Wind in the middle: Forward
    .complete 85657,1 --1/1 Survive a ride in the Skypiercer
    .target The Skypiercer
step
    .goto 2369,71.29,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .turnin 85657 >>Turn in Cyrce Would Be So Proud
    .target Didi the Wrench
]])

-- Siren Isle Dailies/Weeklies?
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r 11.0.7 Siren Isle
#name ah) Siren Isle Weeklies
#displayname |cFF00CCFF2|r - Weeklies


step
    #loop
    .goto 2369,69.29,43.48,10,0
    .goto 2369,69.42,42.84,10,0
    .goto 2369,71.34,44.10,10,0
    .goto 2369,71.04,39.69,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r, |cRXP_FRIENDLY_Skaggit|r, |cRXP_FRIENDLY_Dawn|r, and |cRXP_FRIENDLY_Stellin Verasa|r
    .questcount <4,83932,85589,84222,84627,84430,84432,84680,83753,84299,84619 >>|cRXP_WARN_Accept the repeatable quests in the Floatsam Shoal|r
    *Skip this step when you've accepted all quests.
    .target Sky-Captain Elaena Lancekat
    .target Dawn
    .target Stellin Verasa
    .target Skaggit
step
    .isOnQuest 83932
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
    .use 227405
step
    .isOnQuest 83932
    .isQuestAvailable 84248
    .goto 2369,51.50,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .accept 84248 >>Accept A Ritual of Runes
    .target Machinist Kromleg
step
    .isOnQuest 84248
    #completewith next
    #label EnterCaveRitualRunes
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Summoning Runes|r
    .complete 84248,1 --5/5 Summoning Runes destroyed
step
    .isOnQuest 84248
    #completewith EnterCaveRitualRunes
    #title Enter the cave
    .goto 2369,50.09,42.41,8 >>Enter the cave
step
    .isOnQuest 84248
    #title |TInterface/cursor/crosshair/interact.blp:20|tSummoning Runes
    #requires EnterCaveRitualRunes
    #loop
    .goto 2369,52.58,38.46,10,0
    .goto 2369,53.10,40.69,10,0
    .goto 2369,54.11,37.70,10,0
    .goto 2369,53.32,35.62,10,0
    .goto 2369,51.41,37.53,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Summoning Runes|r
    .complete 84248,1 --5/5 Summoning Runes destroyed
step
    .isOnQuest 84248
    .goto 2369,53.02,37.76
    >>Kill |cRXP_ENEMY_Inhyldir the Cursed|r
    .complete 84248,2 --1/1 Inhyldir the Cursed slain
    .mob Inhyldir the Cursed
step
    .isOnQuest 84248
    #completewith next
    #label LeaveCaveRitualRunes
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 84248 >>Turn in A Ritual of Runes
    .target Machinist Kromleg
step
    .isOnQuest 84248
    #completewith LeaveCaveRitualRunes
    #title Leave the cave
    .goto 2369,50.09,42.41,8 >>Leave the cave
step
    .isOnQuest 84248
    #requires LeaveCaveRitualRunes
    .goto 2369,51.51,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 84248 >>Turn in A Ritual of Runes
    .target Machinist Kromleg
step
    .isOnQuest 84299
    #completewith OokerDookerLiteratureClub
    >>Kill the |cRXP_ENEMY_Bilge Rat forces|r in the area
    >>|TInterface/cursor/crosshair/interact.blp:20|tOr click on the |cRXP_PICK_Kaja'Cola Cans|r and |cRXP_PICK_Kaja'Cola Stash|r
    .complete 84299,1 --Bilge Rat forces disupted (100%)
step
    .isOnQuest 84619,84299,83753
    .isQuestAvailable 84001
    .goto 2369,48.53,53.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .accept 84001 >>Accept Cart Blanche
    .target Machinist Kromleg
step
    .isOnQuest 84001
    #loop
    .goto 2369,50.03,57.31,8,0
    .goto 2369,51.43,58.68,8,0
    .goto 2369,52.65,59.07,8,0
    .goto 2369,58.49,62.64,8,0
    .goto 2369,58.78,62.96,8,0
    .goto 2369,58.49,62.64,8,0
    .goto 2369,52.65,59.07,8,0
    .goto 2369,51.43,58.68,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crashed Ore Carts|r, |cRXP_PICK_Ore Samples|r, and |cRXP_PICK_Mine Tracks|r
    *|cRXP_WARN_Tracks and carts are on the track, most of the ore is below it|r
    .complete 84001,1 --2/2 Mine Tracks repaired
    .complete 84001,2 --5/5 Crashed Mine Carts cleared
    .complete 84001,3 --12/12 Ore Sample
step
    .isOnQuest 84001
    .isQuestComplete 84001
    .goto 2369,48.55,53.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 84001 >>Turn in Cart Blanche
    .target Machinist Kromleg
step
    .isOnQuest 83753
    .goto 2369,47.64,64.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackstell Cannonballs|r.
    >>Kill |cRXP_ENEMY_Cannon Master Jin'chu|r. Loot him for the |T252185:0|t[|cRXP_LOOT_Blacksteel Cannonballs|r].
    .complete 83753,1 --1/1 Cannon Master Jin'chu
    .complete 83753,2 --1/1 Blacksteel Cannonballs collected
    .mob Cannon Master Jin'chu
step
    .isOnQuest 83753
    .goto 2369,47.95,66.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bilge Rat Cannon|r.
    .complete 83753,3 --1/1 Bilge Rat Cannon controlled
step
    .isOnQuest 83753
    .goto 2369,47.95,66.03
    >>Spam |T252185:0|t[Cannon Shot] to kill the |cRXP_ENEMY_Bilge Rat|r forces
    .complete 83753,4 --Bilge Rat Forces destroyed (100%)
step
    .isOnQuest 84619,84299,83753
    .isQuestAvailable 83827
    .goto 2369,45.31,67.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regald Hornfyre|r
    .accept 83827 >>Accept Silence the Song
    .target Regald Hornfyre
step
    .isOnQuest 83827
    #completewith next
    >>Use the |T458645:0|t[Sonic Scrambler] on |cRXP_ENEMY_Arathor Scouts|r and |cRXP_ENEMY_Greaseguard Acquisitioner|r (|cRXP_WARN_or kill them|r)
    .complete 83827,2 --7/7 Charmed Troops dispelled
    .mob Arathor Scout
    .mob Greaseguard Acquisitioner
    .mob Alluring Songtwister
    .use 226261
step
    .isOnQuest 83827
    .goto 2369,33.05,73.80
    >>Kill |cRXP_ENEMY_Macabea The Sea Banshee|r
    .complete 83827,1 --1/1 Macabea The Sea Banshee slain
    .mob Macabea The Sea Banshee
step
    .isOnQuest 83827
    #loop
    .goto 2369,36.76,73.33,25,0
    .goto 2369,39.44,67.92,25,0
    .goto 2369,42.50,73.33,25,0
    .goto 2369,32.56,70.59,25,0
    >>Use the |T458645:0|t[Sonic Scrambler] on |cRXP_ENEMY_Arathor Scouts|r and |cRXP_ENEMY_Greaseguard Acquisitioner|r (|cRXP_WARN_or kill them|r)
    .complete 83827,2 --7/7 Charmed Troops dispelled
    .mob Arathor Scout
    .mob Greaseguard Acquisitioner
    .mob Alluring Songtwister
    .use 226261
step
    .isOnQuest 83827
    .isQuestComplete 83827
    .goto 2369,45.31,67.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regald Hornfyre|r
    .turnin 83827 >>Turn in Silence the Song
    .target Regald Hornfyre
step
    .isOnQuest 84432,84680
    #completewith next
    >>Kill the |cRXP_ENEMY_Bloodwake Vrykuls|r and |cRXP_ENEMY_Bloodbrine Horrors|r in the area
    .complete 84432,1 --15/15 Bloodwake Vrykul slain
    .complete 84680,2 --8/8 Bloodbrine Horror slain
    .mob Bloodwake Spellslinger
    .mob Bloodwake Deathdealer
    .mob Bloodwake Marauder
    .mob Bloodwake Brawler
step
    .isOnQuest 84680
    #label BrinedMonstrosity
    .goto 2369,39.39,73.45
    >>Kill the |cRXP_ENEMY_Brined Monstrosity|r
    .complete 84680,3 --1/1 Brined Monstrosity slain
    .mob Brined Monstrosity
step
    #hidewindow
    #completewith BloodwakeVrykul
    #loop
    .goto 2369,39.39,73.45,30,0
    .goto 2369,49.72,74.73,30,0
    .goto 2369,57.90,70.69,45,0
    .goto 2369,54.82,82.28,25,0
    .goto 2369,61.58,83.82,25,0
    .goto 2369,63.17,87.14,30,0
    .goto 2369,66.11,67.24,35,0
    .goto 2369,57.92,61.66,25,0
    .goto 2369,50.18,61.10,25,0
    +1
step
    .isOnQuest 83932
    #completewith RestlessBloodbrine
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
    .use 227405
step
    .isOnQuest 84432,84680
    #completewith RestlessBloodbrine
    >>Kill the |cRXP_ENEMY_Bloodwake Vrykuls|r and |cRXP_ENEMY_Bloodbrine Horrors|r in the area
    .complete 84432,1 --15/15 Bloodwake Vrykul slain
    .complete 84680,2 --8/8 Bloodbrine Horror slain
    .mob Bloodwake Spellslinger
    .mob Bloodwake Marauder
    .mob Bloodbrine Horror
step
    .isOnQuest 84680
    #label RestlessBloodbrine
    >>Use the |T511729:0|t[Rock Reviver] on |cRXP_PICK_Restless Stones|r and |cRXP_PICK_Restless Pebbles|r
    .complete 84680,1 --8/8 Restless Stones and Pebbles animated
    .use 228988
    .target Restless Stone
    .target Restless Pebble
step
    .isOnQuest 83932
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
step
    .isOnQuest 84432,84680
    #label BloodwakeVrykul
    >>Kill the |cRXP_ENEMY_Bloodwake Vrykuls|r and |cRXP_ENEMY_Bloodbrine Horrors|r in the area
    .complete 84432,1 --15/15 Bloodwake Vrykul slain
    .complete 84680,2 --8/8 Bloodbrine Horror slain
    .mob Bloodwake Spellslinger
    .mob Bloodwake Marauder
    .mob Bloodbrine Horror
step
    .isOnQuest 83932
    #label InterestingNotes
    #loop
    .goto 2369,48.19,60.36,20,0
    .goto 2369,42.30,46.05,20,0
    .goto 2369,45.95,47.72,20,0
    .goto 2369,39.75,52.98,20,0
    .goto 2369,39.02,39.07,20,0
    .goto 2369,52.22,32.87,20,0
    .goto 2369,66.49,64.54,15,0
    .goto 2369,67.39,60.92,15,0
    .goto 2369,63.95,63.12,15,0
    .goto 2369,62.48,67.31,20,0
    .goto 2369,56.01,85.92,20,0
    .goto 2369,54.01,77.09,20,0
    .goto 2369,50.80,76.44,20,0
    .goto 2369,49.17,71.57,20,0
    .goto 2369,51.91,70.01,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
step
    .isOnQuest 84430
    #completewith ThreeHeadsOfTheDeep
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Water Shells|r and afterwards on the |cRXP_PICK_Crystal Chunks|r
    >>Kill the |cRXP_ENEMY_Naga forces|r. Loot them for the |T134111:0|t[|cRXP_LOOT_Crystal Fragments|r].
    .complete 84430,1 --10/10 Crystal Chunk
    .complete 84430,2 --30/30 Crystal Fragment
    .mob Water Shell
    .mob Crystal Chunk
step
    .isOnQuest 84627
    .goto 2369,67.22,61.88
    >>Kill |cRXP_ENEMY_Warlord Thresh|r
    .complete 84627,1 --1/1 Warlord Thresh slain
    .mob Warlord Thresh
step
    .isOnQuest 84627
    .goto 2369,61.36,67.21
    >>Kill |cRXP_ENEMY_Nereu of the Silent Wave|r
    .complete 84627,3 --1/1 Nereu of the Silent Wave slain
    .mob Nereu of the Silent Wave
step
    .isOnQuest 84627
    .goto 2369,48.54,74.89
    >>Kill |cRXP_ENEMY_Extractor Silisai|r
    .complete 84627,2 --1/1 Extractor Silisai slain
    .mob Extractor Silisai
step
    .isQuestAvailable 85051
    .isOnQuest 84627,84430,85589
    .goto 2369,41.95,68.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .accept 85051 >>Accept Beach Comber
    .target Machinist Kromleg
step
    .isOnQuest 85051
    #loop
    .goto 2369,32.70,70.21,15,0
    .goto 2369,30.62,76.18,15,0
    .goto 2369,33.63,78.16,15,0
    .goto 2369,37.30,74.36,15,0
    .goto 2369,38.84,67.95,15,0
    >>|cRXP_WARN_Follow and defend |cRXP_FRIENDLY_Recycler Kerchunk|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Salvaged Scrap|r on the ground
    .complete 85051,1 --Escort Kerchunk as he searches the beach
    .complete 85051,2 --24/24 Salvageable Scrap
    .mob Driftwave Bull
    .mob Cliffreach Pridetalon
step
    .isOnQuest 85051
    .isQuestComplete 85051
    #label ThreeHeadsOfTheDeep
    .goto 2369,41.95,68.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 85051 >>Turn in Beach Comber
    .target Machinist Kromleg
step
    .isOnQuest 84430
    #loop
    .goto 2369,47.21,75.12,35,0
    .goto 2369,52.21,59.35,35,0
    .goto 2369,59.92,66.82,35,0
    .goto 2369,53.64,79.25,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Water Shells|r and afterwards on the |cRXP_PICK_Crystal Chunks|r
    >>Kill the |cRXP_ENEMY_Naga forces|r. Loot them for the |T134111:0|t[|cRXP_LOOT_Crystal Fragments|r].
    .complete 84430,1 --10/10 Crystal Chunk
    .complete 84430,2 --30/30 Crystal Fragment
    .mob Water Shell
    .mob Crystal Chunk
step
    .isOnQuest 85589
    #completewith next
    #label RuffledPagesA
    >>Kill |cRXP_ENEMY_Cliffreach Pridetalons|r. Loot them for the |T134332:0|t[|cRXP_LOOT_Ruffled Pages|r].
    .complete 85589,1 --15/15 Ruffled Pages
    .mob Cliffreach Pridetalon
    .mob Cliffreach Matriarch
step
    .isOnQuest 85589
    #completewith RuffledPagesA
    .goto 2369,46.27,65.11
    .cast 313062 >>Look up and click on the |cRXP_PICK_Grappling Hold|r.
step
    .isOnQuest 85589
    #requires RuffledPagesA
    #loop
    .goto 2369,42.31,61.27,15,0
    .goto 2369,39.70,62.48,15,0
    .goto 2369,41.94,60.27,10,0
    .goto 2369,43.18,63.49,10,0
    .goto 2369,39.59,58.73,15,0
    .goto 2369,38.83,58.94,20,0
    .goto 2369,31.29,59.51,15,0
    .goto 2369,30.69,65.57,15,0
    .goto 2369,29.57,70.49,10,0
    .goto 2369,26.74,72.44,15,0
    >>Kill |cRXP_ENEMY_Cliffreach Pridetalons|r. Loot them for the |T134332:0|t[|cRXP_LOOT_Ruffled Pages|r].
    *Look up and click on the |cRXP_PICK_Grappling Hold|r.
    .complete 85589,1 --15/15 Ruffled Pages
    .mob Cliffreach Pridetalon
    .mob Cliffreach Matriarch
step
    .isOnQuest 84222
    >>Kill |cRXP_ENEMY_Rares|r on the Siren Isle (look for stars on your map)
    *|cRXP_WARN_Just wait in the center of the isle until one appears|r
    .complete 84222,1 --2/2 Rare Siren Isle enemies slain
step
    .isOnQuest 84619
    .goto 2369,54.76,83.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bilge Rat Trunk|r
    .complete 84619,4 --1/1 Ookler's Diary
step
    .isOnQuest 84619
    .goto 2369,55.09,92.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Siren Isle Manifest|r |cRXP_WARN_on the boat|r
    .complete 84619,2 --1/1 Siren Isle Manifest
step
    .isOnQuest 84619
    #completewith next
    >>Kill |cRXP_ENEMY_First Mate Dat-Dat|r. Loot him for |T134245:0|t[|cRXP_LOOT_First Mate Dat Dat's Key|r].
    .collect 231809,1 --1/1 First Mate Dat Dat's Key
    .mob First Mate Dat-Dat
step
    .isOnQuest 84619
    .goto 2369,62.69,97.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Song's of the Siren|r book |cRXP_WARN_on the boat|r
    .complete 84619,5 --1/1 Songs of the Siren
step
    .isOnQuest 84619
    #hidewindow
    #label FirstMateDatDatsKey
    #completewith next
    .complete 84619,1 --1/1 Ashvane Co. Survry Report
step
    .isOnQuest 84619
    .goto 2369,62.92,97.25
    #completewith FirstMateDatDatsKey
    >>Kill |cRXP_ENEMY_First Mate Dat-Dat|r. Loot him for |T134245:0|t[|cRXP_LOOT_First Mate Dat Dat's Key|r].
    .collect 231809,1 --1/1 First Mate Dat Dat's Key
    .mob First Mate Dat-Dat
step
    .isOnQuest 84619
    #requires FirstMateDatDatsKey
    .goto 2369,60.36,98.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dat Dat's Book Stash|r
    .complete 84619,1 --1/1 Ashvane Co. Survry Report
step
    .isOnQuest 84619
    #label OokerDookerLiteratureClub
    #requires FirstMateDatDatsKey
    .goto 2369,66.64,87.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hozen Poetry|r
    .complete 84619,3 --1/1 Hozen Poetry
step
    .isOnQuest 84299
    #loop
    .goto 2369,68.27,60.10,35,0
    .goto 2369,59.66,67.45,35,0
    .goto 2369,47.73,65.43,35,0
    .goto 2369,46.45,75.68,35,0
    .goto 2369,66.34,86.30,35,0
    >>Kill the |cRXP_ENEMY_Bilge Rat forces|r in the area
    >>|TInterface/cursor/crosshair/interact.blp:20|tOr click on the |cRXP_PICK_Kaja'Cola Cans|r and |cRXP_PICK_Kaja'Cola Stash|r
    .complete 84299,1 --Bilge Rat forces disupted (100%)
step
    .isQuestComplete 83753
    .goto 2369,69.34,43.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .turnin 83753 >>Turn in Cannon Karma
    .target Skaggit
step
    .isQuestComplete 84299
    .goto 2369,69.34,43.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .turnin 84299 >>Turn in Pirate Plunder
    .target Skaggit
step
    .isQuestComplete 84619
    .goto 2369,71.05,39.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stellin Verasa|r
    .turnin 84619 >>Turn in Ooker Dooker Literature Club
    .target Stellin Verasa
step
    .isOnQuest 84222
    .isQuestComplete 84222
    .goto 2369,69.43,42.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r
    .turnin 84222 >>Turn in Secure the Perimeter
    .target Sky-Captain Elaena Lancekat
step
    .isOnQuest 84430
    .goto 2369,69.43,42.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r
    .turnin 84430 >>Turn in Crystal Crusade
    .target Sky-Captain Elaena Lancekat
step
    .isOnQuest 84627
    .goto 2369,69.43,42.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r
    .turnin 84627 >>Turn in Three Heads of the Deep
    .target Sky-Captain Elaena Lancekat
step
    .isOnQuest 84680
    .goto 2369,69.13,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r
    .turnin 84680 >>Turn in Rock 'n Stone Revival
    .target Dawn
step
    .isOnQuest 84432
    .goto 2369,69.13,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r
    .turnin 84432 >>Turn in Longship Landing
    .target Dawn
step
    .isOnQuest 83932
    .goto 2369,71.05,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stellin Verasa|r
    .turnin 83932 >>Turn in Historical Documents
    .target Stellin Verasa,
step
    .isOnQuest 85589
    .goto 2369,71.05,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stellin Verasa|r
    .turnin 85589 >>Turn in Ruffled Pages
    .target Stellin Verasa
]])
