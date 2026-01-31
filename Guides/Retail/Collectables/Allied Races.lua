-- ================================================================
-- ================    ALLIED RACE UNLOCK   =======================
-- ================================================================

--Nesting
if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#groupweight 996
#subgroup Allied Races
#name a) UNLOCKING
#displayname Unlocking
#chapters a) Void Elf Unlock 1;a) Lightforged Draenei Unlock 1;a) DarkIronDwarf Unlock 1;a) KulTiran Unlock 1;a) Mechagnome Unlock 1;a) Void Elf DH << Alliance
#chapters a) Nightborne Unlock 1;a) Highmountain Tauren Unlock 1;a) Maghar Orc Unlock 1;a) Zandalari Troll Unlock 1;a) Vulpera Unlock 1 << Horde
]])

---Allied Choice
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Allied Choice
#displayname |cFF00CCFF1|r - Void Elf
#next a) Allied Choice
#internal

step
    .isQuestAvailable 49929
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_inside the Stormwind Embassy|r.
    .accept 49929 >>Accept The Call for Allies
    .turnin 49929 >>Turn in The Call for Allies
    .target Aysa Cloudsinger
step
    .isQuestAvailable 49929
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_inside the Stormwind Embassy|r.
    .accept 50239 >>Accept A Choice of Allies
    .target Aysa Cloudsinger
step
    .goto 84,52.22,13.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Elf Banner|r.
    .complete 50239,2 --1/1 Learn about the Void Elves
step
    .goto 84,52.34,13.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kul Tiran Banner|r.
    .complete 50239,4 --1/1 Learn about the Kul Tirans
step
    .goto 84,51.73,13.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mechagnome Banner|r.
    .complete 50239,5 --1/1 Learn about the Mechagnomes
step
    .goto 84,51.78,13.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dark Iron Dwarf Banner|r.
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightforged Draenei Banner|r.
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 50239 >>Turn in A Choice of Allies
]])
---VoidElf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Void Elf Unlock 1
#displayname |cFF00CCFF1|r - Void Elf
#next a) Lightforged Draenei Unlock 1
#chapter

step
    #include ad) The Elves of Quel'Thalas

]])
--LightforgedDraenei
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Lightforged Draenei Unlock 1
#displayname |cFF00CCFF2|r - Lightforged Draenei
#next a) DarkIronDwarf Unlock 1
#chapter

<< Alliance !LightforgedDraenei

step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 49698 >>Accept The Lightforged
    .target Aysa Cloudsinger
step
    .goto 84,52.99,14.84,5,0
    .goto 84,48.09,11.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Beacon|r
    .complete 49698,1 --Stormwind Embassy Beacon used (1)
step
    .goto 940,43.852,27.027
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r.
    .turnin 49698 >>Turn in The Lightforged
    .accept 49266 >>Accept Forge of Aeons
    .target Captain Fareeya
step
    .goto 940,49.96,46.38
    .enterScenario 1434 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Beacon|r.
step
    .goto 933,87.87,43.29
    >>Follow the Arrow
    .scenario 3547,1
    .isInScenario 1434
step
    >>Follow |cRXP_FRIENDLY_T'paartos|r
    .scenario 3549,1
    .isInScenario 1434
    .target T'paartos
step
    .goto 933,75.78,31.33
    >>Go to the waypoint location and wait for the roleplay.
    .scenario 3550,1
    .isInScenario 1434
step
    .goto 933,84.26,31.18
    >>Go to the waypoint location and wait for the roleplay.
    .scenario 3551,1
    .isInScenario 1434
step
    .goto 933,66.87,29.96
    >>Go to the waypoint location and wait for the roleplay.
    .scenario 3552,1
    .isInScenario 1434
step
    .goto 933,66.87,29.96
    >>Kill |cRXP_ENEMY_Swamp Serpent|r after the roleplay.
    .scenario 3553,1
    .mob Swamp Serpent
    .isInScenario 1434
step
    .goto 933,56.43,23.82
    >>Follow |cRXP_FRIENDLY_T'paartos|r.
    .scenario 3554,1
    .isInScenario 1434
step
    .goto 933,46.96,27.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r inside the cave after the roleplay.
    .scenario 3555,1
    .isInScenario 1434
step
    .goto 933,46.96,27.4
    >>Kill |cRXP_ENEMY_Crystal Fury|r.
    .scenario 3561,1
    .mob Crystal Fury
    .isInScenario 1434
step
    #loop
    .goto 933,56.98,23.72,15,0
    .goto 933,55.88,25.87,10,0
    .goto 933,38.92,27.06,30,0
    .goto 933,30.22,37.69,30,0
    .goto 933,22.23,34.89,20,0
    .goto 933,17.01,46.20,0
    .scenario 3556,1 >>Kill |cRXP_ENEMY_Doubts|r and |cRXP_ENEMY_Fears|r.
    .mob Fear
    .mob Doubt
    .isInScenario 1434
step
    .goto 933,16.92,46.28
    >>Go to the waypoint location and wait for the roleplay.
    *|cRXP_WARN_Make sure |cRXP_FRIENDLY_T'paartos|r isn't stuck|r.
    .scenario 3570,1
    .isInScenario 1434
step
    .goto 933,8.57,50.04
    .scenario 3571,1 >>Kill |cRXP_ENEMY_Terror|r.
    .mob Terror
    .isInScenario 1434
step
    .goto 933,17.56,46.7,15,0
    .goto 933,41.85,58.85,20,0
    .goto 933,43.19,58.96,25,0
    >>Go to the waypoint location and wait for the roleplay.
    .scenario 3572,1
    .isInScenario 1434
step
    .goto 933,46.79,65.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3573,1
    .target T'paartos
    .isInScenario 1434
step
    >>Follow |cRXP_FRIENDLY_T'paartos|r.
    .scenario 3579,1
    .isInScenario 1434
step
    #completewith next
    #label Cliff
    .goto 933,68.89,76.11,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3574,1
    .target T'paartos
    .isInScenario 1434
step
    #completewith Cliff
    .goto 933,69.72,78.49,5 >>Jump off cliff(|cRXP_WARN_go back up if you fall down|r).
step
    #requires Cliff
    .goto 933,68.36,77.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3574,1
    .target T'paartos
    .isInScenario 1434
step
    .goto 933,67.01,73.5,10,0
    .goto 933,62.49,72.68,15,0
    .goto 933,62.76,78.06,20,0
    .goto 933,65.75,73.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3574,2
    .target T'paartos
    .isInScenario 1434
step
    .goto 933,72.31,86.51,10,0
    .goto 933,67.79,82.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3574,3
    .target T'paartos
    .isInScenario 1434
step
    .goto 933,74.96,80.02,10,0
    .goto 933,73.59,75.21,15,0
    .goto 933,69.63,68.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3574,4
    .target T'paartos
    .isInScenario 1434
step
    .goto 933,65.16,71.82,15,0
    .goto 933,63.03,74.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3574,5
    .target T'paartos
    .isInScenario 1434
step
    .goto 933,64.02,81.39,15,0
    .goto 933,69.6,77.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_T'paartos|r.
    .scenario 3574,6
    .target T'paartos
    .isInScenario 1434
step
    .goto 933,68.59,88.86,15,0
    .goto 933,73.39,94.59
    >>Kill |cRXP_ENEMY_T'paartos the Fallen|r and wait for the roleplay.
    .complete 49266,1 --Forge of Aeons scenario completed
    .mob T'paartos the Fallen
    .isInScenario 1434
step
    #completewith next
    #label Forge of Aeons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r and |cRXP_FRIENDLY_High Exarch Turalyon|r.
    .turnin 49266 >>Turn in Forge of Aeons
    .target +Captain Fareeya
    .accept 50071 >>Accept For the Light!
    .disablecheckbox
    .target +High Exarch Turalyon
step
    #completewith Forge of Aeons
    .goto 933,71.73,95.39
    .zone 940 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Beacon|r.
step
    #requires Forge of Aeons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r and |cRXP_FRIENDLY_High Exarch Turalyon|r.
    .turnin 49266 >>Turn in Forge of Aeons
    .goto 940,48.453,39.556
    .target +Captain Fareeya
    .accept 50071 >>Accept For the Light!
    .goto 940,47.468,40.178
    .target +High Exarch Turalyon
step
    #completewith next
    #label For the Light!
    .goto 941,49.66,61.2,5,0
    .goto 941,53.97,58.74,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 50071 >>Turn in For the Light!
    .target Aysa Cloudsinger
step
    #completewith For the Light!
    .goto 941,43.27,25.04
    .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Stormwind|r.
step
    #requires For the Light!
    .goto 84,52.05,13.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 50071 >>Turn in For the Light!
    .target Aysa Cloudsinger
]])
--DarkIronDwarf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) DarkIronDwarf Unlock 1
#displayname |cFF00CCFF3|r - Dark Iron Dwarf
#next a) KulTiran Unlock 1
#chapter

<< Alliance !DarkIronDwarf

step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 51813 >>Accept Blackrock Depths
    .target Aysa Cloudsinger
step
    .goto 84,51.88,14.06
    .enterScenario 1571 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .skipgossipid 48178
    .target Moira Thaurissan
    .isOnQuest 51813
step
    .goto 1159,55.84,31.94
    .isInScenario 1571
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 3830,1 --1/1
step
    #completewith next
    #label Time until first wave
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r |cRXP_WARN_on The Black Anvil|r.
    .scenario 3847,1
    .isInScenario 1571
step
    #completewith Time until first wave
    .goto 1159,55.84,31.94
    .cast 274627 >>Click on the |cRXP_PICK_Crate|r.
    .isInScenario 1571
step
    #requires Time until first wave
    .goto 1159,56.65,31.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r |cRXP_WARN_on The Black Anvil|r.
    .scenario 3847,1
    .timer 12, Time until first wave.
    .isInScenario 1571
step
    .goto 1159,56.65,31.33
    >>Kill |cRXP_ENEMY_Congealed Azerite|r after the roleplay.
    .scenario 3848,1,75
    .isInScenario 1571
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>Kill |cRXP_ENEMY_Unleashed Azerite|r.
    .scenario 3848,1,91
    .isInScenario 1571
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>Kill |cRXP_ENEMY_Unbound Azerite|r.
    .scenario 3848,1,100
    .isInScenario 1571
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,49.93,41.67
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 3849,1
    .isInScenario 1571
    .mob Venture Co. Skyscorcher
step
    .goto 1159,49.93,41.67
    >>Kill |cRXP_ENEMY_Venture Co. Skyscorcher|r.
    .scenario 3850,1,2
    .isInScenario 1571
    .mob Venture Co. Skyscorcher
step
    #loop
    .goto 1159,45.22,48.88,30,0
    .goto 1159,49.93,41.67,30,0
    >>Kill |cRXP_ENEMY_Venture Co. Skyscorcher|r.
    .scenario 3850,1,8
    .isInScenario 1571
    .mob Venture Co. Skyscorcher
step
    #loop
    .goto 1159,38.09,58.9,25,0
    .goto 1159,29.93,56.72,25,0
    .goto 1159,35.73,63.84,25,0
    >>Kill |cRXP_ENEMY_Enemies|r.
    .scenario 3851,1,100
    .isInScenario 1571
    .mob Wanton Sapper
    .mob Azerite Extractor
    .mob Fanatical Driller
    .mob Venture Co. Earthshaper
step
    .goto 1159,35.73,63.84
    >>Damage |cRXP_ENEMY_Rixxa Fluxflame|r to 75%.
    .scenario 3852,1
    .timer 11, Duration until continuation.
    .mob Rixxa Fluxflame
    .isInScenario 1571
step
    .goto 1159,57.11,30.41
    #title |cFFFCDC00Follow the Arrow|r
    .complete 51813,1 --Blackrock Depths scenario completed
step
    #completewith next
    #label Molten Core
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 51813 >>Turn in Blackrock Depths
    .accept 53351 >>Accept The MOTHERLODE!!: Ironfoe
    .disablecheckbox
    .target Moira Thaurissan
step
    #completewith Molten Core
    .zone 84 >>Press the macro in the "Active Items Frame" to leave Shadowforge City
    .macro Leave Instance,236367 >>/run C_PartyInfo.LeaveParty()
step
    #requires Molten Core
    .goto 84,51.89,14.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 51813 >>Turn in Blackrock Depths
    .accept 53351 >>Accept The MOTHERLODE!!: Ironfoe
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .complete 53351,1 --1/1 Ironfoe
    .skipgossipid  48181
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53351 >>Turn in The MOTHERLODE!!: Ironfoe
    .accept 53342 >>Accept Molten Core
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .zone 1160 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .zoneskip 84,1
    .skipgossipid 48179
    .target Moira Thaurissan
step
    .goto 1160,29.17,26.27
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tank|r.
    .target The Tank
    .isOnQuest 53342
step
    .goto 1160,33.04,21.38,5 >>Use |T1032476:0|t[Afterburn](2) to sprint |cRXP_WARN_of the edge|r.
    *|cRXP_WARN_Aim to land on the mountain cliff|r.
    .isOnQuest 53342
step
    .goto 1160,40.84,27.61,20,0
    .goto 1160,38.88,46.96,30,0
    .goto 1160,44.83,64.11,15 >>Use |T1032476:0|t[Afterburn](2) to sprint and |T135781:0|t[Frozen Keekers](1) to kill |cRXP_ENEMY_enemies|r |cRXP_WARN_infront of you|r.
    .timer 7, Duration until continuation.
    .isOnQuest 53342
step
    .goto 1160,56.48,54.86
    >>Kill |cRXP_ENEMY_Gezzrok the Keeper|r and then |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Orb|r |cRXP_WARN_in the middle|r.
    .complete 53342,2 --1/1 Fragment o' the Molten Core
    .mob Gezzrok the Keeper
step
    #completewith next
    #label Firelands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53342 >>Turn in Molten Core
    .accept 53352 >>Accept Firelands
    .disablecheckbox
    .target Moira Thaurissan
step
    #completewith Firelands
    .zone 84 >>Press the macro in the "Active Items Frame" to leave Shadowforge City
    .macro Leave Instance,236367 >>/run C_PartyInfo.LeaveParty()
step
    #requires Firelands
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53342 >>Turn in Molten Core
    .accept 53352 >>Accept Firelands
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .enterScenario 1691 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .skipgossipid 48180
    .target Moira Thaurissan
    .isInScenario 1691
step
    .goto 1958,49.24,29.7
    >>Go to the Cliff, wait for roleplay and kill a |cRXP_ENEMY_Dark Iron Cultist|r.
    .scenario 3982,1
    .mob Dark Iron Cultist
    .isInScenario 1691
step
    #loop
    .goto 1959,50.82,67.4,5,0
    .goto 1959,48.71,62.17,10,0
    .goto 1959,50.69,59.05,10,0
    >>Kill |cRXP_ENEMY_Enemies|r after the roleplay.
    .scenario 3983,1,100
    .mob Blazing Elemental
    .mob Lava Spawn
    .mob Molten Giant
    .mob Flamewalker Sentinel
    .mob Ancient Core Hound
    .isInScenario 1691
step
    #completewith next
    #label High Justice Grimstone
    >>Kill |cRXP_ENEMY_High Justice Grimstone|r.
    .scenario 3984,1
    .mob High Justice Grimstone
    .isInScenario 1691
step
    #completewith High Justice Grimstone
    .goto 1959,50.58,24.56,10 >>Follow the Arrow
    .timer 60, Duration until continuation.
    .isInScenario 1691
step
    #requires High Justice Grimstone
    .goto 1959,50.53,20.76
    >>Kill |cRXP_ENEMY_High Justice Grimstone|r.
    .scenario 3984,1
    .mob High Justice Grimstone
    .isInScenario 1691
step
    .goto 1959,50.51,19.26
    >>Stand inside the Lava Bubble.
    .scenario 3985,1,100
    .isInScenario 1691
step
    #completewith next
    #label Forged in Fire an' Flame
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53352 >>Turn in Firelands
    .accept 51474 >>Accept Forged in Fire an' Flame
    .disablecheckbox
    .target Moira Thaurissan
step
    #completewith Forged in Fire an' Flame
    .zone 84 >>Press the macro in the "Active Items Frame" to leave Shadowforge City
    .macro Leave Instance,236367 >>/run C_PartyInfo.LeaveParty()
step
    #requires Forged in Fire an' Flame
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53352 >>Turn in Firelands
    .accept 51474 >>Accept Forged in Fire an' Flame
    .target Moira Thaurissan
step
    #completewith next
    #label Black Anvil
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Yellow Orb|r |cRXP_WARN_on the anvil|r.
    .complete 51474,1 --1/1 Black Anvil repaired
step
    #completewith Black Anvil
    .goto 84,51.89,14.07
    .gossipoption 48178 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .target Moira Thaurissan
step
    #requires Black Anvil
    .goto 1159,56.65,31.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Yellow Orb|r |cRXP_WARN_on the anvil|r.
    .complete 51474,1 --1/1 Black Anvil repaired
step
    .goto 1159,57.19,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 51474 >>Turn in Forged in Fire an' Flame
    .accept 53566 >>Accept Dark Iron Dwarves
    .target Moira Thaurissan
step
    #completewith next
    #label Dark Iron Dwarves
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 53566 >>Turn in Dark Iron Dwarves
    .target Aysa Cloudsinger
step
    #completewith Dark Iron Dwarves
    .zone 84 >>Press the macro in the "Active Items Frame" to leave Shadowforge City
    .macro Leave Instance,236367 >>/run C_PartyInfo.LeaveParty()
step
    #requires Dark Iron Dwarves
    .goto 84,52.02,13.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 53566 >>Turn in Dark Iron Dwarves
    .target Aysa Cloudsinger
]])
--KulTiran
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) KulTiran Unlock 1
#displayname |cFF00CCFF4|r - Kul Tiran
#next a) Mechagnome Unlock 1
#chapter

<< Alliance !KulTiran

step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 54706 >>Accept Made in Kul Tiras
    .target Aysa Cloudsinger
step
    #completewith next
    #label Made in Kul Tiras
    .goto 84,49.4,86.89,5,0
    .goto 84,48.78,87.73,5,0
    .goto 84,48.92,86.93,5,0
    .goto 84,49.25,87.54,5,0
    .goto 84,48.74,88.1,1,0
    .goto 84,46.52,89.65,8,0
    .goto 84,44.97,90.41,8,0
    .goto 84,44.8,91.59,5,0
    .goto 84,42.89,93.83,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r.
    .complete 54706,2 --1/1 Speak to Cyrus
    .target Cyrus Crestfall
step
    #completewith Made in Kul Tiras
    .goto 84,40.9,92.79
    .zone 1161 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boralus Portal|r.
step
    #requires Made in Kul Tiras
    .goto 1161,68.85,21.18,5,0
    .goto 1161,67.44,21.29,5,0
    .goto 1161,67.99,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r.
    .complete 54706,2 --1/1 Speak to Cyrus
    .timer 15,RP
    .skipgossipid 48243
    .target Cyrus Crestfall
step
    .goto 1161,67.99,21.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r |cRXP_WARN_after the roleplay|r.
    .turnin 54706 >>Turn in Made in Kul Tiras
    .accept 55039 >>Accept The Master Shipwright
    .target Cyrus Crestfall
step
    .goto 1161,67.95,22.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .complete 55039,1 --1/1 Letter from the Lord Admiral
    .skipgossipid 50746
    .target Lady Jaina Proudmoore
step
    #completewith next
    #label Fish Tales and Distant Sails
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r.
    .turnin 55039 >>Turn in The Master Shipwright
    .accept 55043 >>Accept Fish Tales and Distant Sails
    .disablecheckbox
    .target Cyrus Crestfall
step
    #completewith Fish Tales and Distant Sails
    .goto 1161,67.1,23.63,5 >>Leave the building.
step
    #requires Fish Tales and Distant Sails
    .goto 942,59.39,70.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r.
    .turnin 55039 >>Turn in The Master Shipwright
    .accept 55043 >>Accept Fish Tales and Distant Sails
    .target Cyrus Crestfall
step
    #loop
    .goto 942,60,70.23,10,0
    .goto 942,59.61,68.63,10,0
    .goto 942,59.34,68.73,5,0
    .goto 942,59.4,69.38,10,0
    .goto 942,59.08,69.94,10,0
    .goto 942,58.8,70.18,8,0
    .goto 942,58.53,70.2,5,0
    .goto 942,58.19,70.61,5,0
    .goto 942,58.41,70.87,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Citizens|r.
    .complete 55043,1 --1/1 Learn Dorian's location
    .skipgossipid 50031
    .target Talkative Brennadam Citizen
step
    .goto 942,58.66,70.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r.
    .turnin 55043 >>Turn in Fish Tales and Distant Sails
    .accept 54708 >>Accept Home, Home On the Range
    .target Cyrus Crestfall
step
    .goto 942,49.95,50.03
    #title |cFFFCDC00Follow the Arrow|r
    .complete 54708,1 --1/1 Find the homestead
step
    .goto 942,49.94,50.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sal Atwater|r.
    .complete 54708,2 --1/1 Meet the shipwright
    .skipgossipid 51048
    .target Sal Atwater
step
    .goto 942,50.22,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r
    .turnin 54708 >>Turn in Home, Home On the Range
    .target Dorian Atwater
    .accept 54721 >>Accept I'm Too Old for This Ship
step
    .goto 942,50.23,49.88
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 54708,3 --1/1 Meet the actual shipwright
    .timer 10, Shipwright RP
step
    #completewith next
    #label Hurricane saddled
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Horse|r |cRXP_WARN_[2]|r.
    .complete 54721,1 --1/1 Hurricane saddled
step
    #completewith Hurricane saddled
    .goto 942,50.41,49.87,5,0
    .goto 942,50.38,50.47
    .cast 291980 >>Click on the |cRXP_PICK_Horse|r
    .target Hurricane
step
    #requires Hurricane saddled
    .goto 942,50.38,50.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Horse|r |cRXP_WARN_[2]|r.
    .complete 54721,1 --1/1 Hurricane saddled
step
    .goto 942,66.12,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r
    .turnin 54721 >>Turn in I'm Too Old for This Ship
    .accept 54723 >>Accept Covering Our Masts
    .accept 54725 >>Accept The Deep Ones
    .target Dorian Atwater
step
    #completewith Ward
    >>Kill |cRXP_ENEMY_Drowned Harbinger|r and |cRXP_ENEMY_Drowned Convert|r.
    .complete 54725,1 --12/12 Drowned forces slain
    .mob Drowned Harbinger
    .mob Drowned Convert
    .mob Grasp of the Deep
step
    .goto 942,66.90,44.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Southern Fog Ward|r.
    .complete 54723,1 --1/1 Southern Fog Ward placed
step
    .goto 942,67.99,41.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Northern Fog Ward|r.
    .complete 54723,3 --1/1 Northern Fog Ward placed
step
    #label Ward
    .goto 942,65.91,43.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Western Fog Ward|r.
    .complete 54723,2 --1/1 Western Fog Ward placed
step
    #loop
    .goto 942,65.92,44.97,40,0
    .goto 942,66.75,46.16,40,0
    .goto 942,67.36,44.13,40,0
    .goto 942,67.33,42.09,40,0
    .goto 942,66.52,40.17,40,0
    .goto 942,65.92,42.94,40,0
    >>Kill |cRXP_ENEMY_Drowned Harbinger|r and |cRXP_ENEMY_Drowned Convert|r.
    .complete 54725,1 --12/12 Drowned forces slain
    .mob Drowned Harbinger
    .mob Drowned Convert
    .mob Grasp of the Deep
step
    .goto 942,66.09,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r.
    .turnin 54723 >>Turn in Covering Our Masts
    .turnin 54725 >>Turn in The Deep Ones
    .accept 54726 >>Accept Frame Work
    .target Dorian Atwater
step
    #completewith next
    #label Frame Work
    .goto 895,68.88,20.44,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r |cRXP_WARN_after the roleplay|r.
    .turnin 54726 >>Turn in Frame Work
    .accept 54727 >>Accept Team Carr
    .disablecheckbox
    .target Dorian Atwater
step
    #completewith Frame Work
    .goto 895,68.95,20.55,10 >>Enter the House
    .timer 10,RP
step
    #requires Frame Work
    .goto 895,68.95,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r |cRXP_WARN_after the roleplay|r.
    .turnin 54726 >>Turn in Frame Work
    .accept 54727 >>Accept Team Carr
    .target Dorian Atwater
step
    .goto 895,68.77,19.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lumber|r.
    .complete 54727,1,1 --1/1 Follow Dorian to the drop point
step
    .goto 895,68.72,17.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lumber|r.
    .complete 54727,1,2 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.37,17.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lumber|r.
    .complete 54727,1,3 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.99,16.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lumber|r.
    .complete 54727,1,4 --1/1 Follow Dorian to the drop point
step
    >>Follow |cRXP_FRIENDLY_Dorian|r and use |T236188:0|t[Call for Help](1) to have kill|r |cRXP_ENEMY_the attackers|r.
    .complete 54727,2 --1/1 Follow Dorian to the drop point
    .timer 8,Short Roleplay
    .target Dorian Atwater
step
    .goto 895,67.10,12.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r.
    .turnin 54727 >>Turn in Team Carry
    .accept 54728 >>Accept This Lumber is Haunted
    .accept 54729 >>Accept The Bleak Hills
    .target Dorian Atwater
step
    .goto 896,33.17,30.37
    #title |cFFFCDC00Follow the Arrow|r
    .complete 54729,1 --1/1 Find Chelsea Wright
step
    .goto 896,33.17,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chelsea Wright|r.
    .turnin 54729 >>Turn in The Bleak Hills
    .accept 54732 >>Accept Drop It!
    .target Chelsea Wright
step
    #completewith next
    #label Storehouse Key
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Storehouse Key|r.
    .complete 54732,1 --1/1 Storehouse Key
step
    #completewith Storehouse Key
    .goto 896,34.19,30.47,10,0
    .goto 896,34.52,29.77,10,0
    .goto 896,35.19,29.36,10,0
    .goto 896,36.49,30.75,10,0
    .goto 896,36.76,31.47,10,0
    .goto 896,36.97,31.04,10,0
    .goto 896,36.34,29.28,10,0
    .goto 896,36.60,28.88,5 >>|cRXP_WARN_Follow the |cRXP_ENEMY_Wicker Beast|r |cRXP_WARN_inside the cave|r.
    .timer 2.5,Short Roleplay
    .mob Wicker Beast
    .target Wicker Beast
step
    #requires Storehouse Key
    .goto 896,36.6,28.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Storehouse Key|r.
    .complete 54732,1 --1/1 Storehouse Key
step
    .goto 896,36.62,28.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wicker Beast|r.
    .turnin 54732 >>Turn in Drop It!
    .accept 55136 >>Accept Her Dog Days Are Over
    .target Wicker Beast
step
    .goto 896,35.31,28.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gnawed Bone|r.
    .complete 55136,3 --1/1 Gnawed Bone
step
    .goto 896,35.99,30.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Worn Collar|r |cRXP_WARN_around a tree branch|r.
    .complete 55136,1 --1/1 Worn Collar
step
    .goto 896,34.19,30.81,8,0
    .goto 896,34.60,30.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Worn Collar|r |cRXP_WARN_inside a house|r.
    .complete 55136,2 --1/1 Squeaky Toy
step
    .goto 896,33.17,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chelsea Wright|r.
    .turnin 55136 >>Turn in Her Dog Days Are Over
    .accept 54733 >>Accept Make it Wright
    .target Chelsea Wright
step
    .goto 896,33.12,30.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r.
    .turnin 54733 >>Turn in Make it Wright
step
    .goto 896,61.88,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thornspeaker Birchgrove|r.
    .turnin 54728 >>Turn in This Lumber is Haunted
    .accept 54730 >>Accept Gorak Tul's Influence
    .target Thornspeaker Birchgrove
step
    #loop
    .goto 896,60.44,62.23,40,0
    .goto 896,59.11,65.05,40,0
    .goto 896,62.43,63.31,40,0
    .goto 896,60.11,69.55,40,0
    >>Kill |cRXP_ENEMY_Vengeful Bones|r and |cRXP_ENEMY_Awoken Guardian|r.
    *|cRXP_WARN_In addition, clicking on the stones near them will help you further fill your Drust Vessel|r.
    .complete 54730,1 --1/1 Drust Vessel filled
    .mob Awoken Guardian
    .mob Vengeful Bones
step
    .goto 896,61.88,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thornspeaker Birchgrove|r.
    .turnin 54730 >>Turn in Gorak Tul's Influence
    .accept 54731 >>Accept Balance in All Things
    .target Thornspeaker Birchgrove
step
    #completewith next
    #label Arthur Tradewind
    .goto 896,46.11,45.3,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur Tradewind|r.
    .complete 54731,1
    .target Ulfar
step
    #completewith Arthur Tradewind
    .goto 896,45.22,45.84,40 >>Enter the Cave
step
    #requires Arthur Tradewind
    .goto 896,45.22,45.84,10,0
    .goto 896,44.97,45.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur Tradewind|r.
    .complete 54731,1
    .skipgossipid 49067
    .target Ulfar
step
    .goto 896,44.97,45.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nut|r |cRXP_WARN_after the roleplay|r.
    .complete 54731,2 --1/1 Begin the ritual
step
    >>Step into the orbs and kill any incoming |cRXP_ENEMY_Manifestations|r.
    .complete 54731,3 --1/1 Balance restored
    .mob Drust Manifestation
step
    .goto 896,45.18,45.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfar|r.
    .turnin 54731 >>Turn in Balance in All Things
step
    .goto 896,45.43,45.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bound Sky|r.
    .accept 54734 >>Accept Summons from Dorian
    .target Bound Sky
step
    .goto 942,66.51,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r.
    .turnin 54734 >>Turn in Summons from Dorian
    .target Dorian Atwater
step
    .goto 942,66.5,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .accept 54735 >>Accept A Worthy Crew
    .target Lady Jaina Proudmoore
step
    .goto 1161,43.00,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tandred Proudmoore|r.
    .complete 54735,1 --1/1 Speak to Tandred Proudmoore
    .skipgossipid 50526
    .target Tandred Proudmoore
step
    .goto 1161,75.97,22.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Pike|r.
    .complete 54735,2 --1/1 Brother Pike recruited
    .skipgossipid 50940
    .target Brother Pike
step
    .goto 895,56.68,61.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Tarenfold|r.
    .complete 54735,3 --1/1 Lieutenant Tarenfold recruited
    .skipgossipid 50527
    .target Lieutenant Tarenfold
step
    .goto 895,35.26,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r.
    .complete 54735,4 --1/1 Outriggers recruited
    .skipgossipid 50528
    .target Rosaline Madison
step
    .goto 942,67.62,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r.
    .complete 54735,5 --1/1 Boatswain recruited
    .skipgossipid 50529
    .target Dorian Atwater
step
    .goto 942,67.62,44.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 54735 >>Turn in A Worthy Crew
    .accept 54851 >>Accept Blessing of the Tides
    .target Lady Jaina Proudmoore
step
    #completewith next
    #label Vessel blessed
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boat|r after the roleplay.
    .complete 54851,2 --1/1 Vessel blessed
step
    #completewith Vessel blessed
    .goto 942,67.62,44.68
    .gossipoption 50743 >>Talk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .timer 30,RP
step
    #requires Vessel blessed
    .goto 942,68.16,45.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boat|r after the roleplay.
    .complete 54851,2 --1/1 Vessel blessed
step
    .goto 942,71.13,44.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 54851 >>Turn in Blessing of the Tides
    .accept 53720 >>Accept Allegiance of Kul Tiras
    .target Lady Jaina Proudmoore
step
    .goto 942,71.18,44.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Steering Wheel|r.
    .complete 53720,1 --1/1 Sail to Stormwind Harbor
step
    .goto 84,22.53,18.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    .turnin 53720 >>Turn in Allegiance of Kul Tiras
    .target Anduin Wrynn
]])
--Mechagnome
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Mechagnome Unlock 1
#displayname |cFF00CCFF5|r - Mechagnome
#next a) Void Elf DH
#chapter

<< Alliance !Mechagnome

step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 58214 >>Accept Urgent Care
    .target Aysa Cloudsinger
step
    #completewith next
    #label Urgent Care
    .goto 84,49.4,86.89,5,0
    .goto 84,48.78,87.73,5,0
    .goto 84,48.92,86.93,5,0
    .goto 84,49.25,87.54,5,0
    .goto 84,48.74,88.1,1,0
    .goto 84,46.52,89.65,8,0
    .goto 84,44.97,90.41,8,0
    .goto 84,44.8,91.59,5,0
    .goto 84,42.89,93.83,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 58214 >>Turn in Urgent Care
    .accept 57486 >>Accept Waning Energy
    .disablecheckbox
    .target Kelsey Steelspark
step
    #completewith Urgent Care
    .goto 84,40.9,92.79
    .zone 1161 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boralus Portal|r.
step
    #requires Urgent Care
    .goto 1161,70.32,18.08,5,0
    .goto 1161,73.15,16.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 58214 >>Turn in Urgent Care
    .accept 57486 >>Accept Waning Energy
    .target Kelsey Steelspark
step
    .goto 1161,36.91,62.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 57486 >>Turn in Waning Energy
    .accept 57487 >>Accept Someone Who Can Help
    .target Kelsey Steelspark
step
    .goto 1161,49.50,40.16
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Homing Copter|r.
    .complete 57487,1 --1/1 Homing Copter acquired
    .target Homing Copter
step
    #completewith next
    #label Escape Pod
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57487,2 --1/1 Escape Pod sent to Mechagon
    .target Homing Copter
step
    #completewith Escape Pod
    .goto 1161,36.73,62.63
    .cast 316417 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mekkatorgue's Escape Pod|r.
    .timer 15,RP
    .target Mekkatorgue's Escape Pod
step
    #requires Escape Pod
    .goto 1161,36.85,63.48
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57487,2 --1/1 Escape Pod sent to Mechagon
    .target Homing Copter
step
    .goto 1161,36.85,63.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Homing Copter|r.
    .complete 57487,3 --1/1 Ride the Homing Copter to Mechagon
step
    #completewith next
    #label Prince Erazmin
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57487,4 --1/1 Prince Erazmin met
step
    #completewith Prince Erazmin
    .zoneskip 1462
    .logout >>Relog for a teleport to Mechagon
    .macro Logout,638661 >>/logout
step
    #requires Prince Erazmin
    .goto 1462,74.12,37.02
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57487,4 --1/1 Prince Erazmin met
step
    .goto 1462,74.12,37.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r.
    .turnin 57487 >>Turn in Someone Who Can Help
    .target Prince Erazmin
step
    .goto 1462,73.02,33.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waren Gearhart|r
    .accept 57488 >>Accept The Current Schematic
    .target Waren Gearhart
step
    .goto 1462,72.64,43.16,10,0
    .goto 1462,70.57,46.87,10,0
    .goto 1462,67.97,44.26,10,0
    .goto 1462,66.34,46.73,10,0
    .goto 1462,74.89,51.51
    >>Kill |cRXP_ENEMY_Robots|r.
    *Loot them for |T134070:0|t[|cRXP_LOOT_Acquisitioned Machine Part|r].
    .complete 57488,2 --6/6 Acquisitioned Machine Part
    .mob Malfunctioning Scrapbot
    .mob Malfunctioning Scraphound
step
    #loop
    .goto 1462,73.61,58.36,25,0
    .goto 1462,73.36,61.51,25,0
    .goto 1462,69.93,58.88,25,0
    >>Kill |cRXP_ENEMY_Congealed Oil|r and |cRXP_ENEMY_Slime Elemental|r.
    *Loot them for |T1500942:0|t[|cRXP_LOOT_Heat Tolerant Ooze|r].
    .complete 57488,1
    .mob Slime Elemental
    .mob Congealed Oil
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waren Gearhart|r and |cRXP_FRIENDLY_Prince Erazmin|r.
    .turnin 57488 >>Turn in The Current Schematic
    .goto 1462,73.13,33.33
    .accept 57490 >>Accept Voyage to Safety
    .goto 1462,73.03,33.42
    .target Waren Gearhart
    .target Prince Erazmin
step
    .goto 1462,63.03,37.91
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57490,1 --1/1 Piston and crew activated
step
    .goto 1462,86.92,73.79
    >>Kill |cRXP_ENEMY_Rust-Eye the Clever|r.
    .complete 57490,2 --1/1 Rust-Eye the Clever slain
    .mob Rust-Eye the Clever
step
    .goto 1462,86.92,73.79
    >>Loot him for the [|cRXP_LOOT_Pod|r].
    .complete 57490,3 --1/1 Pod retrieved
step
    .goto 1462,73.22,33.14
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57490,4 --1/1 Pod delivered
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r and |cRXP_FRIENDLY_Christy Punchcog|r.
    .turnin 57490 >>Turn in Voyage to Safety
    .goto 1462,73.22,33.14
    .accept 57491 >>Accept Better... Stronger... Less Dead
    .goto 1462,73.21,33.46
    .target Prince Erazmin
    .target Christy Punchcog
step
    #loop
    .goto 1462,55.63,24.44,10,0
    .goto 1462,54.38,27.05,10,0
    .goto 1462,52.9,28.29,10,0
    #title |cFFFCDC00NPC Patrols|r
    >>Kill |cRXP_ENEMY_Insurgent Cycloid|r.
    *Loot him for |T133873:0|t[|cRXP_LOOT_Omni Electromagnetic Amplifier|r].
    .complete 57491,2 --1/1 Omni Electromagnetic Amplifier
    .mob Insurgent Cycloid
step
    #title |cFFFCDC00NPC Patrols|r
    #loop
    .goto 1462,38.04,42.59,30,0
    .goto 1462,35.68,66.6,30,0
    >>Kill |cRXP_ENEMY_HK-3 Aerial Dissuasion Unit|r
    *Loot him for |T133870:0|t[|cRXP_LOOT_Neural Accelerator|r].
    .complete 57491,1 --1/1 Neural Accelerator
    .mob HK-3 Aerial Dissuasion Unit
step
    #title |cFFFCDC00NPC Patrols|r
    #loop
    .goto 1462,52.86,51.55,5,0
    .goto 1462,55.67,52.21,5,0
    >>Kill |cRXP_ENEMY_Insurgent Crawler|r
    *Loot him for |T133872:0|t[|cRXP_LOOT_Flux Energized Servos|r].
    .complete 57491,3 --1/1 Flux Energized Servos
    .mob Upgraded Sentry
    .mob Insurgent Crawler
step
    .goto 1462,73.53,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog|r.
    .turnin 57491 >>Turn in Better... Stronger... Less Dead
    .target Christy Punchcog
step
    .goto 1462,73.02,33.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog|r.
    .accept 57492 >>Accept Him?
    .target Prince Erazmin
step
    .goto 1462,70.48,30.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elya Codepunch|r.
    .complete 57492,1 --1/1 Speak with Elya Codepunch
    .skipgossipid 49586
    .target Elya Codepunch
step
    .goto 1462,69.92,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stuard Sharpsprocket|r.
    .complete 57492,6 --1/1 Speak with Stuard Sharpsprocket
    .skipgossipid 49520
    .target Stuard Sharpsprocket
step
    .goto 1462,71.28,34.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elya Idee Quickcoil|r.
    .complete 57492,2 --1/1 Speak with Idee Quickcoil
    .skipgossipid 49516
    .target Idee Quickcoil
step
    .goto 1462,72.09,38.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quimby Sparklighter|r.
    .complete 57492,4 --1/1 Speak with Quimby Sparklighter
    .skipgossipid 49518
    .target Quimby Sparklighter
step
    .goto 1462,75.45,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flouresce Brightgear|r.
    .complete 57492,5 --1/1 Speak with Flouresce Brightgear
    .skipgossipid 49519
    .target Flouresce Brightgear
step
    .goto 1462,74.31,34.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pegi Cogsterh|r.
    .complete 57492,3 --1/1 Speak with Pegi Cogster
    .skipgossipid 49517
    .target Pegi Cogster
step
    .goto 1462,73.02,33.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r.
    .turnin 57492 >>Turn in Him?
    .target Prince Erazmin
step
    .goto 1462,73.51,31.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog|r.
    .accept 57493 >>Accept Mental Attunement
    .target Christy Punchcog
step
    .goto 1462,73.62,32.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Synchroscope|r.
    .complete 57493,1 --1/1 Initiate synchronization
    .timer 20,Duration until continuation.
step
    .goto 1462,73.52,31.88
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57493,2 --1/1 Synchronization complete
step
    .goto 1462,73.57,32.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Escape Pod|r.
    .complete 57493,3 --1/1 Open the escape pod
step
    .goto 1462,73.51,31.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog|r.
    .turnin 57493 >>Turn in Mental Attunement
    .accept 57494 >>Accept A Strong Heart
    .target Christy Punchcog
step
    .goto 1462,58.8,56.7
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57494,1 --1/1 Find Kelsey
step
    .goto 1462,59.38,55.99
    >>Kill |cRXP_ENEMY_Insurgent Coilbearer|r.
    .complete 57494,2 --1/1 Insurgent Coilbearer slain
    .mob Insurgent Coilbearer
    .mob Insurgent Machinist
step
    .goto 1462,73.60,32.13
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57494,3 --1/1 Unit retrieved
step
    .goto 1462,73.60,32.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spark Reactor|r.
    .complete 57494,4 --1/1 Spark Reactor delivered
    .timer 10, Duration until continuation.
step
    .goto 1462,73.71,31.85
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57494,5 --1/1 Circuit calibrated
step
    .goto 1462,73.71,31.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Generator|r.
    .complete 57494,6 --1/1 Generator activated
step
    #completewith next
    #label Defibrillate
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57494,7 --1/1 Defibrillate
step
    #completewith Defibrillate
    .goto 1462,73.56,32.08
    .cast 311518 >>Use the |T136099:0|t[ExtraActionButton] near |cRXP_FRIENDLY_Gelbin Mekkatorque|r.
    .target Gelbin Mekkatorque
    .timer 10, Duration until continuation.
step
    #requires Defibrillate
    .goto 1462,73.02,33.43
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57494,7 --1/1 Defibrillate
step
    .goto 1462,73.04,33.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r.
    .turnin 57494 >>Turn in A Strong Heart
    .target Prince Erazmin
step
    .goto 1462,73.07,33.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelbin Mekkatorque|r.
    .accept 57496 >>Accept Ascension
    .target Gelbin Mekkatorque
step
    .goto 1462,72.34,31.15
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57496,1 --1/1 Take teleporter to Mechagon City
step
    .goto 1573,56.56,70.68,10,0
    .goto 1573,65.93,47.95
    >>Kill |cRXP_ENEMY_Blastatron X-81|r
    .complete 57496,2 --1/1 Blastatron X-81 slain
    .mob Mechagon Trooper
    .mob Defense Bot Mk I
    .mob Blastatron X-81
step
    .goto 1573,58.02,41.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelbin Mekkatorque|r.
    .turnin 57496 >>Turn in Ascension
    .accept 57495 >>Accept The Future of Mechagon
    .target Gelbin Mekkatorque
step
    .goto 1573,51.29,33.78,10,0
    .goto 1573,47.4,31.38,5,0
    .goto 1573,31.37,85.80
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57495,1 --1/1 Teleport to the High Tinkertory
step
    #completewith next
    #label Speech witnessed
    #hidewindow
    .complete 57495,2 --1/1 Speech witnessed
step
    #completewith Speech witnessed
    .goto 1573,36.15,70.98,10,0
    .goto 1573,34.66,54.38,10,0
    .goto 1573,18.66,67.47,100 >>Follow the Arrow
step
    #requires Speech witnessed
    .goto 1573,18.66,67.47
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57495,2 --1/1 Speech witnessed
step
    .goto 1573,18.65,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelbin Mekkatorque|r.
    .turnin 57495 >>Turn in The Future of Mechagon
    .target Gelbin Mekkatorque
step
    #title |cFFFCDC00NPC Patrols|r
    .goto 1573,19.23,66.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .accept 57497 >>Accept Propagate the News
    .target Kelsey Steelspark
step
    .goto 1573,20.41,59.95
    #title |cFFFCDC00Follow the Arrow|r
    .complete 57497,1 --1/1 Teleport to Stormwind
step
    .goto 84,52.05,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 57497 >>Turn in Propagate the News
    .target Aysa Cloudsinger
]])
---VoidElf DH
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Void Elf DH
#displayname |cFF00CCFF6|r - Void Elf Demon Hunter
#chapter

step
    #completewith next
    #label Shadowy Invitation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r in Dornogal.
    .accept 84956 >>Accept A Shadowy Invitation
    .turnin 84956 >>Turn in A Shadowy Invitation
    .target Locus-Walker
    .accept 84957 >>Accept Return to the Veiled Market
    .disablecheckbox
step
    #completewith Shadowy Invitation
    .zone 2339 >>Enter Dornogal
step
    #requires Shadowy Invitation
    .goto 2339,42.11,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r in Dornogal.
    .accept 84956 >>Accept A Shadowy Invitation
    .turnin 84956 >>Turn in A Shadowy Invitation
    .target Locus-Walker
    .accept 84957 >>Accept Return to the Veiled Market
    .timer 23,RP
step
    .goto 2339,40.41,22.89
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84957,1 --1/1 Follow Locus-Walker
step
    .goto 2339,40.30,22.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84957,2 --1/1 Take the Spatial Rift to Tazavesh
step
    .isQuestAvailable 90972
    .isQuestTurnedIn account,84959
    .goto 2371,75.87,33.11,-1 -- The Oasis
    .goto 2371,77.17,48.93,-1 -- North Sufaad
    .goto 2472,46.79,56.86,-1 -- Tazavesh, the Veiled Market
    .goto 2371,45.21,23.91,-1 -- Shadow Point
    .goto 2371,56.20,21.51,-1 -- Fracture of Laacuna
    .goto 2371,53.92,26.75,-1 -- Untethered Space
    .goto 2371,50.41,36.40,-1 -- Overlook Zo'Shuul
    .goto 2371,51.21,48.56,-1 -- Serrated Peaks
    .goto 2371,60.21,29.05,-1 -- Shan'dorah
    .goto 2371,58.90,57.89,-1 -- Naakroa
    .goto 2371,53.85,63.61,-1 -- Hosaas' Rest
    .goto 2371,51.38,67.14,-1 -- Ruins of Yaathron
    .goto 2371,65.44,47.98,-1 -- Lunnall River
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
    .fly Shan'dorah >>Fly to Shan'dorah
    .target Phase Conduit
step
    .goto 2371,60.93,27.74
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
    .macro Remove Aura,135752 >>/cancelaura Phase Diving
step
    .goto 2371,60.93,27.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .accept 90972 >>Accept A Common Cause
    .target Magister Umbric
step
    .goto 2371,60.12,29.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarus Duskblaze|r
    .complete 90972,1 --1/1 Ask Adarus about Leona's whereabouts
    .skipgossipid 134065
    .target Adarus Duskblaze
step
    .goto 2371,59.33,24.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 90972 >>Turn in A Common Cause
    .target Leona Darkstrider
    .accept 86786 >>Accept The Void Hunter
step
    #label startdarkness1
    #loop
    .goto 2371,59.52,21.91,50,0
    .goto 2371,58.29,22.31,40,0
    .goto 2371,57.94,21.04,40,0
    .goto 2371,57.4,20.13,40,0
    .goto 2371,56.84,22.69,40,0
    .goto 2371,55.38,21.88,40,0
    .goto 2371,56.18,26.42,40,0
    .goto 2371,57.2,24.92,40,0
    .goto 2371,55.15,28.54,40,0
    >>Kill |cRXP_ENEMY_Void Tempest|r and use |T5976941:0|t[Void Lure] on the corpse.
    .complete 86786,1 --3/3 Ramon'ta the Insatiable fed
    .mob Void Tempest
    .use 239074
step
    .goto 2371,57.28,18.37
    >>Use |T5976941:0|t[Void Lure] and aim it below the floating arrow.
    .complete 86786,2 --1/1 Ramon'ta the Insatiable lured
    .timer 12,RP
    .use 239074
step
    .goto 2371,57.28,18.37
    >>Kill |cRXP_ENEMY_Ramon'ta the Insatiable|r |cRXP_WARN_after the roleplay|r.
    .complete 86786,3 --1/1 Ramon'ta the Insatiable defeated
    .mob Ramon'ta the Insatiable
step
    .isQuestAvailable 90972
    .isQuestTurnedIn account,84959
    .isOnQuest 86786
    .goto 2371,56.21,21.51
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
step
    .isQuestAvailable 90972
    .isQuestTurnedIn account,84959
    .isOnQuest 86786
    .goto 2371,56.21,21.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
    .fly Shan'dorah >>Fly to Shan'dorah
    .target Phase Conduit
step
    .isQuestAvailable 90972
    .isQuestTurnedIn account,84959
    .isOnQuest 86786
    .goto 2371,60.11,29.67
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
    .macro Remove Aura,135752 >>/cancelaura Phase Diving
step
    #label enddarkness1
    .goto 2371,60.11,29.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarus Duskblaze|r
    .skipgossipid 133876
    .complete 86786,4 --1/1 Report back to Adarus in Shan'dorah
    .timer 25,RP
    .target Adarus Duskblaze
step
    .goto 2371,60.12,29.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarus Duskblaze|r |cRXP_WARN_after the roleplay|r
    .turnin 86786 >>Turn in The Void Hunter
    .target Adarus Duskblaze
    .accept 89323 >>Accept Wasted Lands
step
    .goto 2371,78.96,53.46
    #title |cFFFCDC00Follow the Arrow|r
    .complete 89323,1 --K'areshi Fragment Location Reached
    .timer 15,RP
step
    .goto 2371,78.95,53.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarus Duskblaze|r |cRXP_WARN_after the roleplay|r
    .turnin 89323 >>Turn in Wasted Lands
    .target Adarus Duskblaze
    .accept 89324 >>Accept A Piece of Something Greater
step
    #loop
    .goto 2371,79.89,51.26,40,0
    .goto 2371,80.81,50.49,40,0
    >>Kill |cRXP_ENEMY_Relictor Qunash'i|r.
    *Loot him for |T5872055:0|t[|cRXP_LOOT_Key of the Waning Moon|r].
    .complete 89324,2 --1/1 Key of the Waning Moon Recovered
    .mob Relictor Qunash'i
step
    #loop
    .goto 2371,79.74,47.4,40,0
    .goto 2371,79,47.32,40,0
    >>Kill |cRXP_ENEMY_Relictor Lay'sha|r.
    *Loot him for |T5872061:0|t[|cRXP_LOOT_Key of the Eternal Night|r].
    .complete 89324,1 --1/1 Key of the Eternal Night Recovered
    .mob Relictor Lay'sha
step
    #loop
    .goto 2371,76.08,49.27,40,0
    .goto 2371,77.23,50.16,40,0
    .goto 2371,76.67,52.1,40,0
    >>Kill |cRXP_ENEMY_Relictor Efrat|r.
    *Loot him for |T5872057:0|t[|cRXP_LOOT_Key of the Dark Sun|r].
    .complete 89324,3 --1/1 Key of the Dark Sun Recovered
    .mob Relictor Efrat
step
    .goto 2371,78.85,53.6
    #title |cFFFCDC00Follow the Arrow|r
    .complete 89324,4 --Return to the Relic Chamber
step
    #title Pylons deactivated (1/3)
    .goto 2371,78.85,53.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pylon|r
    .complete 89324,5,1 --3/3 Pylons Deactivated
step
    #title Pylons deactivated (2/3)
    .goto 2371,79.13,53.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pylon|r
    .complete 89324,5,2 --3/3 Pylons Deactivated
step
    #title Pylons deactivated (3/3)
    .goto 2371,79.11,53.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pylon|r
    .complete 89324,5,3 --3/3 Pylons Deactivated
step
    .goto 2371,79.02,53.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragment|r
    .complete 89324,6 --1/1 Fragment Retrieved
step
    .goto 2371,78.98,53.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarus Duskblaze|r
    .turnin 89324 >>Turn in A Piece of Something Greater
    .target Adarus Duskblaze
    .accept 89325 >>Accept The Void Confluence
step
    #completewith next
    #hidewindow
    #label VoidConfluenceA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 89325 >>Turn in The Void Confluence
    .target Leona Darkstrider
    .accept 89326 >>Accept Distilled Darkness
    .disablecheckbox
step
    #completewith VoidConfluenceA
    .goto 2371,56.82,24.13,15,0
    .goto 2477,33.6,83.46,10 >>Enter Cave
step
    #completewith next
    #label VoidConfluenceB
    #requires VoidConfluenceA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 89325 >>Turn in The Void Confluence
    .target Leona Darkstrider
    .accept 89326 >>Accept Distilled Darkness
    .disablecheckbox
step
    #title Go up the ramp
    #completewith next
    #label VoidConfluenceC
    #requires VoidConfluenceA
    .goto 2477,61.89,30.11,15 >>Go up the ramp
    *|cRXP_WARN_You can also try to jump up using the crystals but it's not recommended|r
step
    #hidewindow
    #requires VoidConfluenceA
    #completewith VoidConfluenceB
    .goto 2477,62.03,53.16,3 >>1
step
    #requires VoidConfluenceB
    .goto 2477,62.03,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 89325 >>Turn in The Void Confluence
    .target Leona Darkstrider
    .accept 89326 >>Accept Distilled Darkness
step
    #completewith next
    #label Fragment1
    .goto 2477,60.99,76.16,20,0
    >>Kill the waves of enemies
    .complete 89326,2 --1/1 Southern Fragment location aligned
step
    #completewith Fragment1
    .goto 2477,47.53,73.94
    .cast 1228273 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragment|r
step
    #requires Fragment1
    .goto 2477,52.55,76.33
    >>Kill the waves of enemies
    .complete 89326,2 --1/1 Southern Fragment location aligned
    .mob Void Tunneler
    .mob Void Stalker
    .mob Relnath the Merciless
step
    #completewith next
    #label Fragment2
    .goto 2477,35.69,63.47,20,0
    .goto 2477,31.59,52.91,20,0
    >>Kill the waves of enemies
    .complete 89326,1 --1/1 Northern Fragment location aligned
step
    #completewith Fragment2
    .goto 2477,37.78,34.78
    .cast 1228273 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragment|r
    .mob Void Tunneler
    .mob Void Stalker
    .mob Void Tunneler
    .mob Void Stalker
    .mob Relnath the Merciless
step
    #requires Fragment2
    .goto 2477,33.04,44.35
    >>Kill the waves of enemies
    .complete 89326,1 --1/1 Northern Fragment location aligned
    .mob Void Tunneler
    .mob Void Stalker
    .mob Ekisath the Prideful
step
    #completewith next
    #label Distilled Darkness
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 89326 >>Turn in Distilled Darkness
    .target Leona Darkstrider
    .accept 89327 >>Accept Chaos
    .disablecheckbox
step
    #hidewindow
    #completewith Distilled Darkness
    .goto 2477,44.62,26.91,15,0
    .goto 2477,55.03,20.06,15,0
    .goto 2477,63.4,29.23,15,0
    .goto 2477,59.85,39.85,15,0
    .goto 2477,59.85,39.85,40 >>1
step
    #requires Distilled Darkness
    .goto 2477,61.98,53.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 89326 >>Turn in Distilled Darkness
    .target Leona Darkstrider
    .accept 89327 >>Accept Chaos
step
    .goto 2477,63.79,53.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragment|r
    .complete 89327,1 --1/1 K'areshi Fragment Placed
step
    .goto 2477,63.64,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarus|r
    .complete 89327,2 --1/1 Speak to Adarus
    .timer 51,RP
    .skipgossipid 132974
    .target Adarus
step
    .goto 2477,63.64,52.76
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 89327,3 --1/1 Ritual Witnessed
step
    #completewith next
    #label Adarus Kicked
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 89327,4 --1/1 Adarus Kicked
    .target Adarus Duskblaze
step
    #completewith Adarus Kicked
    .goto 2477,62.82,52.96
    .cast 1228731 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Adarus|r
    .target Adarus Duskblaze
step
    #requires Adarus Kicked
    .goto 2477,61.99,54.49
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 89327,4 --1/1 Adarus Kicked
    .target Adarus Duskblaze
step
    .goto 2477,61.94,53.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 89327 >>Turn in Chaos
    .target Leona Darkstrider
    .accept 91044 >>Accept Hunger of the Void
step
    #completewith Magister Umbric
    #hidewindow
    #label Hunger of the Void
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 91044 >>Turn in Hunger of the Void
step
    #completewith Hunger of the Void
    #label Hunger of the Void1
    .goto 2477,61.96,74.14,20,0
    .goto 2371,56.81,24.3,15 >>Leave Cave
step
    #requires Hunger of the Void1
    #label Magister Umbric
    .goto 2371,60.92,27.74
    .gossipoption 134092 >>Talk to |cRXP_FRIENDLY_Magister Umbric|r
    .target Magister Umbric
step
    .goto 2371,60.91,27.73
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 91044,1 --1/1 Report back to Umbric
step
    .goto 2371,60.92,27.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 91044 >>Turn in Hunger of the Void
    .accept 92630 >>Accept The Pursuit Continues
    .target Magister Umbric
step
    #title |cFFFCDC00Follow the Arrow|r
    .goto 2371,65.03,40.63
    .complete 92630,2 --Leona and Allari found
step
    .goto 2371,65.03,40.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leona Darkstrider|r
    .turnin 92630 >>Turn in The Pursuit Continues
    .accept 92631 >>Accept Abhorrent Gauntlet
    .target Leona Darkstrider
step
    #loop
    .goto 2371,68.04,40.04,30,0
    .goto 2371,66.5,42.88,30,0
    .goto 2371,63.77,45.13,30,0
    >>Kill |cRXP_ENEMY_Voidbeings|r.
    *Loot them for |T3004126:0|t[|cRXP_LOOT_Aberration Part|r].
    .complete 92631,1 --24/24 Aberration Part
    .mob Void Terror
    .mob Observling
step
    .goto 2371,65.02,40.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 92631 >>Turn in Abhorrent Gauntlet
    .target Allari the Souleater
    .accept 92632 >>Accept Trial of Wrath
step
    .goto 2371,65.09,49.90
    >>Kill |cRXP_ENEMY_Vraxik|r
    .complete 92632,1 --1/1 Vraxik slain
    .mob Vraxik
step
    .goto 2371,60.91,27.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 92632 >>Turn in Trial of Wrath
    .target Allari the Souleater
]])

---Allied Choice
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Allied Choice
#displayname |cFF00CCFF1|r - Void Elf
#next a) Allied Choice
#internal

-- step
--     #completewith HighmountainStartQuestline
--     .zone 85 >>Get to Orgrimmar
-- step
--     .isOnQuest 49930
--     .isQuestAvailable 49930
--     .goto 85,53.23,90.47,10,0
--     .goto 85,37.76,81.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
--     .turnin 49930 >>Turn in The Call for Allies
--     .target Ji Firepaw
-- step
--     .isQuestAvailable 50242
--     .goto 85,37.76,81.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
--     .accept 50242 >>Accept A Choice of Allies
--     .target Ji Firepaw
-- step
--     .isOnQuest 50242
--     >>Interact with the banners in any order
--     .goto 85,37.65,81.43
--     .complete 50242,1 -- Learn more about the Highmountain Tauren
--     .complete 50242,2 -- Learn more about the nightborne
--     .complete 50242,3 -- Learn more about the Maghar Orcs
--     .complete 50242,4 -- Learn more about the Zandalari trolls
--     .complete 50242,5 -- Learn more about the Vulpera
-- step
--     .isQuestComplete 50242
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
--     .goto 85,37.65,81.44
--     .turnin 50242 >>Turn in A Choice of Allies
--     .target Ji Firepaw
]])
--Nightborne
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Nightborne Unlock 1
#displayname |cFF00CCFF1|r - Nightborne
#next a) Highmountain Tauren Unlock 1
#chapter

step
    #include ad) The Elves of Quel'Thalas
]])
--HighmountainTauren
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Highmountain Tauren Unlock 1
#displayname |cFF00CCFF2|r - Highmountain Tauren
#next a) Maghar Orc Unlock 1
#chapter

<< Horde !HighmountainTauren

step
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .accept 48066 >>Accept A Feast for Our Kin
    .target Ji Firepaw
step
    .goto 88,59.65,51.68,10,0
    .goto 88,61.61,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r.
    .turnin 48066 >>Turn in A Feast for Our Kin
    .timer 30,RP
    .target Baine Bloodhoof
step
    .goto 88,61.52,51.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r after a short roleplay.
    .accept 48067 >>Accept Shadow Over Thunder Bluff
    .target Bain Bloodhoof
step
    #loop
    .goto 88,59.82,51.38,30,0
    .goto 88,55.16,48.65,30,0
    .goto 88,48.93,51.59,30,0
    .goto 88,43.51,58.36,30,0
    .goto 88,38.41,49.99,30,0
    .goto 88,37.78,63.22,30,0
    >>Kill |cRXP_ENEMY_Dark Tendrils|r or |cRXP_ENEMY_Shadow of Uul|r.
    .complete 48067,1 --4/4 Dark Tendril slain
    .complete 48067,2 --12/12 Shadow of Uul slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r next to you.
    .turnin 48067 >>Turn in Shadow Over Thunder Bluff
    .accept 49756 >>Accept Dark Forces
    .target Bain Bloodhoof
step
    #title |cFFFCDC00NPC Patrols|r
    #loop
    .goto 88,43.21,57.36,30,0
    .goto 88,37.71,51.6,30,0
    .goto 88,37.35,60.68,30,0
    >>Kill |cRXP_ENEMY_Qy'telek|r.
    .complete 49756,1 --1/1 Qy'telek slain
step
    .goto 88,42.18,57.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r.
    .turnin 49756 >>Turn in Dark Forces
    .accept 48079 >>Accept Return to Highmountain
    .target Bain Bloodhoof
step
    .goto 652,68.78,71.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r.
    .turnin 48079 >>Turn in Return to Highmountain
    .target Mayla Highmountain
step
    .goto 652,68.49,73.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .accept 41884 >>Accept Dark Tales
    .target Spiritwalker Graysky
step
    #completewith next
    #label Dark Tales
    .goto 652,41.56,74.33,10,0
    .goto 652,25.91,80.53,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 41884 >>Turn in Dark Tales
    .accept 41764 >>Accept Walking in Their Footsteps
    .disablecheckbox
    .target Spiritwalker Graysky
step
    #completewith Dark Tales
    .goto 650,38.51,69.10,595 >>Leave the building
step
    #requires Dark Tales
    .goto 650,38.51,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 41884 >>Turn in Dark Tales
    .accept 41764 >>Accept Walking in Their Footsteps
    .target Spiritwalker Graysky
step
    .goto 650,38.53,69.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pot|r
    .complete 41764,1 --1/1 Water of Vision used
step
    #loop
    .goto 650,40.12,71.59,25,0
    .goto 650,41.51,72.60,25,0
    .goto 650,43.75,74.11,12,0
    .goto 650,44.23,75.17,15,0
    .goto 650,45.21,76.24,20,0
    >>Kill |cRXP_ENEMY_Shadow Lurkers|r and |cRXP_ENEMY_Shadows of Uul|r.
    .complete 41764,2 --8/8 Shadow Lurker slain
    .complete 41764,3 --15/15 Shadow of Uul slain
    .mob Shadow Lurker
    .mob Shadow of Uul
step
    .goto 650,44.23,75.17,15,0
    .goto 650,45.21,76.24,20,0
    .goto 650,46.29,74.35,20,0
    .goto 650,46.16,73.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ward|r
    .complete 41764,4 --1/1 Bitestone Ward placed
step
    .goto 650,38.51,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 41764 >>Turn in Walking in Their Footsteps
    .accept 48185 >>Accept Shadow of the Sepulcher
    .target Spiritwalker Graysky
step
    .goto 650,57.02,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 48185 >>Turn in Shadow of the Sepulcher
    .accept 41799 >>Accept Minions of the Darkness
    .target Spiritwalker Graysky
step
    .goto 650,57.05,46.16
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pot|r
    .complete 41799,1 --1/1 Water of Vision used
step
    #loop
    .goto 650,56.02,44.26,25,0
    .goto 650,54.76,45.12,25,0
    .goto 650,57.05,46.16,30,0
    >>Kill |cRXP_ENEMY_Dark Spirits|r.
    *Spam |T132312:0|t[Fury of the Phoenix] (1) or use |T1029585:0|t[Cyclonic Vortex] (2) when multiple mobs are around you
    .complete 41799,2 --12/12 Dark Spirit slain
    .mob Dark Spirits
step
    #completewith next
    #label Shadowy Tendril
    >>Kill |cRXP_ENEMY_Shadowy Tendrils|r.
    >>Spam |T132312:0|t[Fury of the Phoenix] (1)
    .complete 41799,3 --6/6 Shadowy Tendril slain
    .mob Shadowy Tendril
step
    #completewith Shadowy Tendril
    .goto 650,54.98,44.11,10 >>Enter the cave
step
    #requires Shadowy Tendril
    #loop
    .goto 650,54.47,43.12,25,0
    .goto 650,55.14,42.43,25,0
    .goto 650,55.22,41.85,25,0
    .goto 650,55.35,41.69,25,0
    .goto 650,54.37,42.28,25,0
    >>Kill |cRXP_ENEMY_Shadowy Tendrils|r.
    >>Spam |T132312:0|t[Fury of the Phoenix] (1)
    .complete 41799,3 --6/6 Shadowy Tendril slain
    .mob Shadowy Tendril
step
    .goto 650,55.47,40.99
    >>Kill the |cRXP_ENEMY_Shadow of the Darkness|r.
    *Keep up 3 stacks of the dot with |T132312:0|t[Fury of the Phoenix] (1) and use |T1029585:0|t[Cyclonic Vortex] (2) on cooldown.
    .complete 41799,4 --1/1 Shadow of the Darkness slain
    .mob Shadow of the Darkness
step
    .goto 650,54.74,40.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ward|r
    .complete 41799,5 --1/1 Sepulcher Ward placed
step
    .goto 650,57.02,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 41799 >>Turn in Minions of the Darkness
    .accept 48190 >>Accept Huln's Mountain
    .target Spiritwalker Graysky
step
    .goto 650,56.75,46.07,5,0
    .goto 650,53.33,64.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 48190 >>Turn in Huln's Mountain
    .accept 41800 >>Accept Servants of the Darkness
    .target Spiritwalker Graysky
step
    .goto 650,53.32,64.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pot|r.
    .complete 41800,1 --1/1 Water of Vision used
step
    #loop
    .goto 650,53.70,66.32,25,0
    .goto 650,52.99,66.76,25,0
    .goto 650,51.50,66.64,25,0
    >>Kill |cRXP_ENEMY_Necrotic Defilers|r.
    *Use |T134174:0|t[Gore Charge] (3) on cooldown and spam |T644382:0|t[Wild Carve] (1)
    .complete 41800,2 --10/10 Necrotic Defiler slain
    .mob Necrotic Defiler
step
    #title |cFFFCDC00NPC Patrols|r
    .goto 650,53.00,69.40
    >>Kill |cRXP_ENEMY_Necrogg the Darkspear|r.
    *Use |T135127:0|t[Harpoon Stomp] (2) after the knockback
    .complete 41800,3 --1/1 Necrogg the Darkspear slain
    .mob Necrogg the Darkspear
step
    .goto 650,53.32,69.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ward|r
    .complete 41800,4 --1/1 Snowmane Ward placed
step
    .goto 650,53.32,64.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 41800 >>Turn in Servants of the Darkness
    .accept 48434 >>Accept How Fares Ebonhorn?
    .target Spiritwalker Graysky
step
    #completewith next
    #label How Fares Ebonhorn?
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r and |cRXP_FRIENDLY_Mayla Highmountain|r.
    .turnin 48434 >>Turn in How Fares Ebonhorn?
    .accept 41815 >>Accept Curse of the Necrodark
    .disablecheckbox
    .target Spiritwalker Ebonhorn
    .target Mayla Highmountain
step
    #completewith How Fares Ebonhorn?
    .goto 652,26.24,79.84,15 >>Enter the lowest level in Thunder Totem
step
    #requires How Fares Ebonhorn?
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r and |cRXP_FRIENDLY_Mayla Highmountain|r.
    .turnin 48434 >>Turn in How Fares Ebonhorn?
    .goto 652,67.69,71.39
    .accept 41815 >>Accept Curse of the Necrodark
    .goto 652,68.85,71.08
    .target Spiritwalker Ebonhorn
    .target Mayla Highmountain
step
    #completewith next
    #label Curse of the Necrodark
    .goto 652,57.53,79,10,0
    .goto 652,41.55,74.31,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r and |cRXP_FRIENDLY_Jale Rivermane|r on top of the mountain.
    .turnin 41815 >>Turn in Curse of the Necrodark
    .accept 41840 >>Accept Ice and Shadow
    .disablecheckbox
    .accept 41882 >>Accept Whispers of the Darkness
    .disablecheckbox
    .target Baine Bloodhoof
    .target Jale Rivermane
step
    #completewith Curse of the Necrodark
    .goto 652,26.09,80.31,10 >>Leave the building
step
    #requires Curse of the Necrodark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r and |cRXP_FRIENDLY_Jale Rivermane|r on top of the mountain.
    .turnin 41815 >>Turn in Curse of the Necrodark
    .accept 41840 >>Accept Ice and Shadow
    .goto 650,56.49,89.23
    .accept 41882 >>Accept Whispers of the Darkness
    .goto 650,56.45,89.33
    .target Baine Bloodhoof
    .target Jale Rivermane
step
    #completewith HighmountainTaurenWhispersoftheDarkness
    >>Kill |cRXP_ENEMY_Necrodarks|r or |cRXP_ENEMY_Frozen Mists|r.
    *Loot them for |T237235:0|t[|cRXP_LOOT_Shadowice Shard|r].
    .complete 41840,1 --20/20 Shadowice Shard
step
    #title Protector freed 1/6
    .goto 650,56.92,89.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highmountain Protector|r
    *|cRXP_WARN_They may attack you|r
    .complete 41882,1,1 --1/6 Highmountain Protector freed
    .target Highmountain Protector
step
    #title Protector freed 2/6
    .goto 650,56.83,88.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highmountain Protector|r
    *|cRXP_WARN_They may attack you|r
    .complete 41882,1,2 --2/6 Highmountain Protector freed
    .target Highmountain Protector
step
    #title Protector freed 3/6
    .goto 650,57.49,88.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highmountain Protector|r
    *|cRXP_WARN_They may attack you|r
    .complete 41882,1,3 --3/6 Highmountain Protector freed
    .target Highmountain Protector
step
    #title Protector freed 4/6
    .goto 650,57.36,90.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highmountain Protector|r
    *|cRXP_WARN_They may attack you|r
    .complete 41882,1,4 --4/6 Highmountain Protector freed
    .target Highmountain Protector
step
    #title Protector freed 5/6
    .goto 650,58.16,90.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highmountain Protector|r
    *|cRXP_WARN_They may attack you|r
    .complete 41882,1,5 --5/6 Highmountain Protector freed
    .target Highmountain Protector
step
    #label HighmountainTaurenWhispersoftheDarkness
    #title Protector freed 6/6
    .goto 650,57.61,91.11
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highmountain Protector|r
    *|cRXP_WARN_They may attack you|r
    .complete 41882,1 --6/6 Highmountain Protector freed
    .target Highmountain Protector
step
    #loop
    .goto 650,57.14,90.96,25,0
    .goto 650,57.15,94.63,30,0
    .goto 650,54.48,91.85,30,0
    .goto 650,58.22,91.49,30,0
    >>Kill |cRXP_ENEMY_Necrodarks|r or |cRXP_ENEMY_Frozen Mists|r.
    *Loot them for |T237235:0|t[|cRXP_LOOT_Shadowice Shard|r].
    .complete 41840,1 --20/20 Shadowice Shard
step
    .goto 650,57.55,92.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r.
    .turnin 41840 >>Turn in Ice and Shadow
    .turnin 41882 >>Turn in Whispers of the Darkness
    .accept 41841 >>Accept The Final Ward
    .target Spiritwalker Ebonhorn
step
    #completewith next
    #label The Final Ward
    .goto 650,57.11,92.09,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ward|r
    .complete 41841,1 --1/1 Place the Summit Ward
step
    #completewith The Final Ward
    .goto 650,56.50,91.45,52 >>Enter the cave
step
    #requires The Final Ward
    .goto 650,56.50,91.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ward|r
    .complete 41841,1 --1/1 Place the Summit Ward
step
    .goto 650,56.82,92.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r.
    .turnin 41841 >>Turn in The Final Ward
    .accept 48403 >>Accept The Darkness
    .target Spiritwalker Ebonhorn
step
    #completewith next
    #label Uul'gyneth
    .goto 650,57.54,92.31,10,0
    >>Kill |cRXP_ENEMY_Uul'gyneth|r.
    .complete 48403,1 --1/1 Uul'gyneth slain
    .mob Uul'gyneth
step
    #completewith Uul'gyneth
    .goto 650,57.92,91.43,70 >>Leave the cave
step
    #requires Uul'gyneth
    .goto 650,57.92,91.43
    >>Kill |cRXP_ENEMY_Uul'gyneth|r.
    .complete 48403,1 --1/1 Uul'gyneth slain
    .mob Uul'gyneth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r and |cRXP_FRIENDLY_Bain Bloodhoof|r.
    .turnin 48403 >>Turn in The Darkness
    .goto 650,56.66,92.71
    .accept 48433 >>Accept Together We Are the Horde!
    .goto 650,56.70,92.77
    .target Mayla Highmountain
    .target Baine Bloodhoof
step
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r in Orgrimmar.
    .turnin 48433 >>Turn in Together We Are the Horde!
    .target Ji Firepaw
]])
--MagharOrc
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Maghar Orc Unlock 1
#displayname |cFF00CCFF3|r - Maghar Orc
#next a) Zandalari Troll Unlock 1
#chapter

<< Horde !MagharOrc

step
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .accept 53466 >>Accept Vision of Time
    .target Ji Firepaw
step
    #completewith next
    #label Vision of Time
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r.
    .turnin 53466 >>Turn in Vision of Time
    .accept 53467 >>Accept Caverns of Time
    .disablecheckbox
    .target Chief Telemancer Oculeth
step
    #completewith Vision of Time
    #title Take the Portal to Zuldazar
    .goto 85,52.35,86.28,15,0
    .goto 85,53.47,90.38,15,0
    .goto 85,54.72,89.1,5,0
    .goto 85,54.67,87.18,5,0
    .goto 85,55.95,87.09,5,0
    .goto 85,57.58,89.86
    .zone 862 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Zuldazar|r
step
    #requires Vision of Time
    .goto 1165,49.92,41.71,15,0
    .goto 1163,53.85,70,15,0
    .goto 1163,67.03,73.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r inside the building.
    .turnin 53466 >>Turn in Vision of Time
    .accept 53467 >>Accept Caverns of Time
    .target Chief Telemancer Oculeth
step
    #completewith next
    #label Caverns of Time
    #hidewindow
    .turnin 53467 >>Turn in Caverns of Time
    .target Anachronos
step
    #completewith Caverns of Time
    .goto 1163,73.6,70.03
    .zone 85 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Orgrimmar|r
step
    #requires Caverns of Time
    #completewith next
    #label Caverns of Time 2
    #hidewindow
    .turnin 53467 >>Turn in Caverns of Time
    .target Anachronos
step
    #requires Caverns of Time
    #completewith Caverns of Time 2
    .goto 85,54.85,90.02,5,0
    .goto 85,54.79,87.14,5,0
    .goto 85,55.91,87.15,5,0
    .goto 85,56.42,92.49
    .zone 85 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Caverns of Time|r
step
    #requires Caverns of Time 2
    #completewith next
    #label Caverns of Time 3
    .goto 74,64.59,24,20,0
    .goto 74,60.63,22.3,20,0
    .goto 74,66.4,24.16,20,0
    .goto 74,64.54,17.01,20,0
    .goto 74,48.59,22.87,20,0
    .goto 74,39.95,48.87,20,0
    .goto 74,37.81,71.5,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 53467 >>Turn in Caverns of Time
    .target Anachronos
    .accept 53354 >>Accept Echo of Gul'dan
    .target Anachronos
step
    #requires Caverns of Time 2
    #completewith Caverns of Time 3
    .goto 75,41.81,49.81,100 >>Follow the Arrow
step
    #requires Caverns of Time 3
    .goto 75,41.81,49.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 53467 >>Turn in Caverns of Time
    .target Anachronos
    .accept 53354 >>Accept Echo of Gul'dan
    .target Anachronos
step
    #completewith next
    #label Echo of Gul'dan
    #hidewindow
    .complete 53354,1 --1/1 Echo of Gul'dan slain
    .mob Echo of Gul'dan
step
    #completewith Echo of Gul'dan
    .goto 74,39.76,74.9,15,0
    .goto 74,42.21,62.3,15,0
    .goto 74,41.18,39.03,15,0
    .goto 74,54.13,18.71,15,0
    .goto 74,64.11,17.75,15,0
    .goto 74,66.6,23.85,15,0
    .goto 74,62.86,17.89,15,0
    .goto 74,63.49,29.61,15,0
    .goto 74,58.1,26.64
    .zone 85 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Orgrimmar|r
step
    #requires Echo of Gul'dan
    .complete 53354,1 --1/1 Echo of Gul'dan slain
    .mob Echo of Gul'dan
step
    .goto 17,54.40,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r.
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
    >>Fly to the Time Rift and |TInterface/cursor/crosshair/interact.blp:20|tClick on it. Kill the |cRXP_ENEMY_Echo of Warlord Zaela|r.
    .goto 379,68.60,46.08,15,0
    .goto 379,68.80,43.69
    .complete 53353,1 --1/1 Echo of Warlord Zaela slain
    .mob Echo of Warlord Zaela
step
    .goto 379,68.90,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r.
    .turnin 53353 >>Turn in Echo of Warlord Zaela
    .accept 53355 >>Accept Echo of Garrosh Hellscream
    .target Anachronos
step
    .goto 1,40.80,16.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r.
    .complete 53355,1 --1/1 Meet Anachronos outside Orgrimmar
    .target Anachronos
step
    .complete 53355,2 --1/1 Echo of Garrosh Hellscream slain
    .mob Echo of Garrosh Hellscream
step
    #completewith next
    #title Take the Portal to Zuldazar
    .goto 85,53.44,90.45,10,0
    .goto 85,58.59,91.32
    >>Leave the instance group (Right-|TInterface/cursor/crosshair/interact.blp:20|tClick your character frame)
    .zone 1163 >>Take the Portal to Zuldazar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r and |cRXP_FRIENDLY_Eitrigg|r.
    .turnin 53355 >>Turn in Echo of Garrosh Hellscream
    .goto 1163,72.00,65.50
    .accept 52942 >>Accept Restoring Old Bonds
    .goto 1163,70.33,69.75
    .target Chief Telemancer Oculeth
    .target Eitrigg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r.
    .complete 52942,1 --1/1 Speak with Oculeth to go to Draenor
    .goto 1163,72.00,65.50
    .skipgossip 131443,1
    .target Chief Telemancer Oculeth
step
    .goto 1170,44.07,55.07,20,0
    .goto 1170,44.87,53.20
    >>Cross the bridge. You may have to wait for an RP
    .complete 52942,2 --Meet the Overlord
step
    .goto 1170,44.94,53.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r.
    .turnin 52942 >>Turn in Restoring Old Bonds
    .accept 52943 >>Accept Calling Out the Clans
    .target Eitrigg
step
    .goto 1170,45.17,52.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackrock banner|r. Relog if you can't |TInterface/cursor/crosshair/interact.blp:20|tClick on it
    .complete 52943,1 --1/1 Blackrock
step
    .goto 1170,45.48,51.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackrock banner|r. Relog if you can't |TInterface/cursor/crosshair/interact.blp:20|tClick on it
    .complete 52943,2 --1/1 Warsong
step
    .goto 1170,44.82,52.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackrock banner|r. Relog if you can't |TInterface/cursor/crosshair/interact.blp:20|tClick on it
    .complete 52943,3 --1/1 Frostwolf
step
    .goto 1170,45.14,52.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r.
    .turnin 52943 >>Turn in Calling Out the Clans
    .target Overlord Geya'rah
step
    .goto 1170,45.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Grommash Hellscream|r.
    .accept 52945 >>Accept Bonds Forged Through Battle
    .target Grommash Hellscream
step
    .goto 1170,40.23,65.14,25,0
    .goto 1170,39.10,65.72,25,0
    .goto 1170,38.81,67.47,25,0
    .goto 1170,38.25,67.48,25,0
    .goto 1170,37.73,68.32
    >>Kill |cRXP_ENEMY_Kor'gall Defectors|r and |cRXP_ENEMY_Kor'gall Agitators|r.
    .complete 52945,1 --10/10 Kor'gall Defector slain
    .mob Kor'gall Defector
    .mob Kor'gall Agitator
step
    >>Kill |cRXP_ENEMY_Kor'gall, Greatson of Kor'gall|r after a short RP.
    >>Side-step the Violent Crash. Dodge the Boulders
    .goto 1170,36.80,68.06,15,0
    .goto 1170,36.26,68.70,10,0
    .goto 1170,36.49,70.06
    .complete 52945,2 --1/1 Kor'gall, Greatson of Kor'gall slain
    .mob Kor'gall, Greatson of Kor'gall
step
    .goto 1170,36.48,70.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r.
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
    .isInScenario
    >>Follow the arrow to Beastwatch
    .goto 1170,41.39,66.92,20,0
    .goto 1170,43.02,67.09,30,0
    .goto 1170,43.89,69.46
    .scenario 3973,1
step
    .isInScenario
    >>Destroy |cRXP_ENEMY_Lightbound Batteries|r and kill |cRXP_ENEMY_Lighbounds|r.
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
    .isInScenario
    >>Follow the arrow to |cRXP_ENEMY_Exarch Orelis|r.
    .goto 1170,45.49,78.58
    .scenario 3975,1
step
    .isInScenario
    >>Kill |cRXP_ENEMY_Exarch Orelis|r.
    >>Side-step and dodge the Prometheus Ray. Interrupt Holy Light
    .goto 1170,45.26,80.33
    .scenario 3976,1
    .mob Exarch Orelis
step
    .isInScenario
    >>Run back to Beastwatch and meet |cRXP_FRIENDLY_Grommash Hellscream|r.
    .goto 1170,44.55,71.37
    .scenario 3977,1
    .timer 55,Order RP
step
    .isInScenario
    >>Wait for the RP
    .goto 1170,43.89,70.89
    .scenario 3980,1
step
    .isInScenario
    >>Climb the tower. Mount the Mag'har Turrent. Use |T879998:0|t[Iron Lightseeker] (2) on cooldown, otherwise spam |T252185:0|t[Turret Blast] to kill the incoming mobs
    .goto 1170,43.48,71.38,10,0
    .goto 1170,43.63,71.48
    .scenario 3978,1
step
    .isInScenario
    >>Jump down. Run to the Warchief. Wait for the RP
    .goto 1170,44.55,71.37
    .scenario 3981,1
step
    .isInScenario
    >>Follow the arrow
    .goto 1170,44.13,69.99
    .scenario 3979,1
step
    #requires MagharOrcTyrannyoftheLight
    .goto 1,41.25,16.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r.
    .turnin 52955 >>Turn in Tyranny of the Light
    .accept 51479 >>Accept The Uncorrupted
    .target Overlord Geya'rah
step
    .goto 85,38.64,80.07,12,0
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 51479 >>Turn in The Uncorrupted
    .target Ji Firepaw
]])
--ZandalariTroll
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Zandalari Troll Unlock 1
#displayname |cFF00CCFF4|r - Zandalari Troll
#next a) Vulpera Unlock 1
#chapter

<< Horde !ZandalariTroll

step
    .goto 85,37.75,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .accept 53831 >>Accept A Royal Occasion
    .target Ji Firepaw
step
    .isOnQuest 53831
    #completewith next
    .goto 85,53.40,90.43,10,0
    .goto 85,58.48,91.26
    .complete 53831,1 --1/1 Use the portal to Zuldazar (Optional)
step
    >>Follow the arrow
    .goto 1163,48.94,29.53
    .complete 53831,2 --1/1 Meet the Zandalari emissary
step
    .goto 1163,48.53,21.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Natal'hakata|r.
    .turnin 53831 >>Turn in A Royal Occasion
    .accept 53823 >>Accept A Queen's Entourage
    .target Natal'hakata
step << !DemonHunter !Dracthyr
    #completewith next

    .goto 1165,48.51,38.00,15,0
    .goto 1165,45.15,47.02,20,0
    .goto 1165,42.06,26.50,20 >>Jump down the pyramid carefully
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r and |cRXP_FRIENDLY_High Prelate Rata|r.
    .turnin 53823 >>Turn in A Queen's Entourage
    .goto 1165,42.58,22.81
    .accept 53824 >>Accept The Rite of Kings and Queens
    .goto 1165,42.58,22.53
    .target Princess Talanji
    .target High Prelate Rata
step
    >>Mount the |cRXP_FRIENDLY_Ceremonial Warbeast|r.
    .goto 1165,42.51,23.26
    .complete 53824,1 --1/1 Ride the Ceremonial Warbeast
    .timer 76,Ride RP
step
    >>Wait for the RP
    .goto 1165,39.83,12.82
    .complete 53824,2 --1/1 Ride in procession with Talanji
step
    .goto 1165,40.28,12.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Prelate Rata|r.
    .turnin 53824 >>Turn in The Rite of Kings and Queens
    .timer 9,Zolani RP
    .target High Prelate Rata
step
    .goto 1165,40.28,12.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r.
    .accept 53826 >>Accept The Instigator Among Us
    .accept 54419 >>Accept Quelling the Masses
    .target Zolani
step
    #completewith next
    >>Defeat |cRXP_ENEMY_Rioting Speakers|r.
    .complete 54419,1 --12/12 Rioters subdued
    .mob Rioting Speaker
step
    >>Jump down. Defeat |cRXP_ENEMY_Enforcer Malzon|r.
    .goto 1165,36.72,10.43,12,0
    .goto 1165,37.29,10.46
    .complete 53826,1 --1/1 Enforcer Malzon confronted
    .mob Enforcer Malzon
step
    >>Defeat |cRXP_ENEMY_Rioting Speakers|r or talk to |cRXP_ENEMY_Rioting Zocalo Druges|r.
    .goto 1165,36.17,7.69,20,0
    .goto 1165,34.96,10.72,20,0
    .goto 1165,36.49,15.16,20,0
    .goto 1165,39.96,20.07,20,0
#loop
	.line 1165,36.17,7.69,34.96,10.72,36.49,15.16,39.96,20.07
	.goto 1165,36.17,7.69,22,0
	.goto 1165,34.96,10.72,22,0
	.goto 1165,36.49,15.16,22,0
	.goto 1165,39.96,20.07,22,0
    .skipgossip 147781,1
    .complete 54419,1 --12/12 Rioters subdued
    .mob Rioting Speaker
    .mob Rioting Zocalo Druges
step
    #completewith next

    .goto 1165,42.61,22.91,12,0
    .goto 1165,41.41,18.05,12 >>Go back up
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r, |cRXP_FRIENDLY_High Prelate Rata|r and |cRXP_FRIENDLY_Zolani|r.
    .turnin 53826 >>Turn in The Instigator Among Us
    .turnin 54419 >>Turn in Quelling the Masses
    .accept 54301 >>Accept Talanji's Mercy
    .goto 1165,40.51,11.91
    .accept 54925 >>Accept Heresy!
    .goto 1165,40.17,11.91
    .accept 54300 >>Accept Breaking the Faith
    .goto 1165,40.49,12.41
    .target Princess Talanji
    .target High Prelate Rata
    .target Zolani
step
    #completewith ZandalariTrollHeresy
    >>Defeat |cRXP_ENEMY_Furious Raptari Druids|r and |cRXP_ENEMY_Incensed Rastari Prelates|r.
    .complete 54300,1 --12/12 Angered faithful subdued
    .mob Furious Raptari Druid
    .mob Incensed Rastari Prelate
step
    #completewith ZandalariTrollHeresy
    >>Evacuate |cRXP_FRIENDLY_Priests of Akunda|r.
    .complete 54301,1 --10/10 Innocent bystanders evacuated
step
    #label ZandalariTrollHeresy
    >>Kill |cRXP_ENEMY_Prelate Kaj'ra|r.
    .groundgoto 1165,45.50,19.77,20,0
    .goto 1165,50.72,16.60,20,0
    .goto 1165,50.86,11.01,20,0
    .goto 1165,50.72,16.60,20,0
    .goto 1165,50.86,11.01,20,0
    .goto 1165,50.84,13.63
    .complete 54925,1 --1/1 Prelate Kaj'ra slain
    .mob Prelate Kaj'ra
step
    >>Defeat |cRXP_ENEMY_Furious Raptari Druids|r and |cRXP_ENEMY_Incensed Rastari Prelates|r.
    >>Evacuate the |cRXP_FRIENDLY_Priests|r.
    .goto 1165,52.00,11.87,20,0
    .goto 1165,49.21,14.52,15,0
    .goto 1165,50.31,7.20,20,0
    .goto 1165,49.08,11.45,20,0
    .goto 1165,49.07,15.55,20,0
    .goto 1165,50.49,19.18,20,0
    .complete 54300,1 --12/12 Angered faithful subdued
    .complete 54301,1 --10/10 Innocent bystanders evacuated
    .mob Furious Raptari Druid
    .mob Incensed Rastari Prelate
    .target Priest of Akunda
    .target Priest of Krag'wa
    .target Raptari Druid
    .target Balina
step
    .groundgoto 1165,41.81,17.15,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Prelate Rata|r, |cRXP_FRIENDLY_Zolani|r and |cRXP_FRIENDLY_Princess Talanji|r.
    .turnin 54925 >>Turn in Heresy!
    .goto 1165,40.49,11.85
    .turnin 54300 >>Turn in Breaking the Faith
    .goto 1165,40.43,11.95
    .turnin 54301 >>Turn in Talanji's Mercy
    .accept 53825 >>Accept The New Zanchuli Council
    .goto 1165,40.56,11.97
    .target High Prelate Rata
    .target Zolani
    .target Princess Talanji
step
    #completewith next
    .goto 1167,46.53,40.27,10,0
    .goto 1167,37.33,24.93,10,0
    .goto 1167,45.02,15.53,10,0
    .goto 1166,56.09,44.27,20 >>Go into the pyramid
step
    >>Follow the arrow
    .goto 1166,61.24,38.93
    .complete 53825,1 --1/1 Meet the new Zanchuli Council
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r, |cRXP_FRIENDLY_Lashk|r, |cRXP_FRIENDLY_Jo'nok|r, |cRXP_FRIENDLY_General Rakera|r and |cRXP_FRIENDLY_Hexlord Raal|r.
    .complete 53825,2 --1/1 Greet Wardruid Loti
    .goto 1166,63.05,24.49
    .complete 53825,3 --1/1 Greet Lash
    .goto 1166,64.62,26.47
    .complete 53825,4 --1/1 Greet Jo'nok
    .goto 1166,67.02,31.67
    .complete 53825,5 --1/1 Greet General Rakera
    .goto 1166,68.44,34.00
    .complete 53825,5 --1/1 Greet Hexlord Raal
    .goto 1166,69.73,36.00
    .target Wardruid Loti
    .target Lashk
    .target Jo'nok, Bulwark of Torcall
    .target General Rakera
    .target Hexlord Raal
step
    .goto 1166,60.47,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r.
    .turnin 53825 >>Turn in The New Zanchuli Council
    .accept 53827 >>Accept The Council Has Spoken
    .timer 56,Blessing RP
    .target Princess Talanji
step
    >>Wait for the RP
    .goto 1166,60.47,38.75
    .complete 53827,1 --1/1 Zanchuli blessing given
step
    >>Kill the |cRXP_ENEMY_Widow's Eyes|r.
    .goto 1166,60.47,38.75
    .complete 53827,2 --1/1 Survive the ambush
    .mob Widow's Eyes
step
    >>Kill the |cRXP_ENEMY_Samara|r.
    .goto 1166,65.16,33.13
    .complete 53827,3 --1/1 Samara slain
    .mob Samara
step
    .goto 1166,60.48,38.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r.
    .turnin 53827 >>Turn in The Council Has Spoken
    .accept 53828 >>Accept Gaze of the Loa
    .target Princess Talanji
step
    #completewith ZandalariTrollGazeoftheLoa
    .goto 1166,65.29,68.73,10,0
    .goto 1166,78.84,85.80,10,0
    .goto 1165,44.57,14.38
    .zone 1165 >>Follow the arrow to leave the pyramid
step
    .goto 1165,44.57,14.38
    .complete 53828,1 --1/1 Follow Talanji
step
    #label ZandalariTrollGazeoftheLoa
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r and |cRXP_FRIENDLY_Krag'wa the Huge|r.
    .turnin 53828 >>Turn in Gaze of the Loa
    .goto 1165,44.57,14.38
    .accept 54031 >>Accept Gaze of the Loa: Krag'wa
    .goto 1165,44.21,14.92
    .target Princess Talanji
    .target Krag'wa the Huge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r.
    .complete 54031,1 --1/1 Speak to Krag'wa
    .goto 1165,44.21,14.92
    .skipgossip 146208,1
    .timer 15,RP
    .target Krag'wa the Huge
step
    >>Just run away from the frogs with |T132307:0|t[Dash] (1) that attack you and wait until |cRXP_FRIENDLY_Princess Talanji|r has defeated them all.
    .goto 1165,45.13,16.82
    .complete 54031,2 --1/1 Krag'wa's trial complete
step
    .goto 1165,44.25,14.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r.
    .turnin 54031 >>Turn in Gaze of the Loa: Krag'wa
    .accept 54033 >>Accept Gaze of the Loa: Gonk
    .target Krag'wa the Huge
step
    >>Follow the arrow up the pyramid
    .groundgoto 1165,46.06,16.17,15,0
    .goto 1165,46.30,12.28
    .complete 54033,1 --1/1 Follow Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r.
    .goto 1165,46.51,12.02
    .skipgossip 146214,1
    .complete 54033,2 --1/1 Speak to Gonk
    .timer 44,Gonk RP
    .target Gonk
step
    .goto 1165,46.51,12.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r.
    .turnin 54033 >>Turn in Gaze of the Loa: Gonk
    .accept 54032 >>Accept Gaze of the Loa: Pa'ku
    .target Gonk
step
    >>Follow the arrow up the pyramid
    .goto 1165,44.70,9.09
    .complete 54032,1 --1/1 Follow Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r.
    .goto 1165,44.58,8.89
    .skipgossip 146209,1
    .complete 54032,2 --1/1 Speak to Pa'ku
    .timer 44,Gonk RP
    .target Pa'ku
step
    >>Dodge the tornadoes and run back to |cRXP_FRIENDLY_Pa'ku|r.
    .goto 1165,44.58,8.89
    .complete 54032,3 --1/1 Pa'ku's trial complete
step
    .goto 1165,44.58,8.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r.
    .turnin 54032 >>Turn in Gaze of the Loa: Pa'ku
    .accept 54034 >>Accept Gaze of the Loa: Bwonsamdi
    .target Pa'ku
step
    >>Follow |cRXP_FRIENDLY_Princess Talanji|r.
    .goto 1165,43.63,7.41
    .complete 54034,1 --1/1 Follow Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bwonsamdi|r.
    .goto 1165,43.29,6.88
    .skipgossip 146215,1
    .timer 51,Bwonsamdi RP
    .complete 54034,2 --1/1 Speak to Bwonsamdi
    .timer 25,Talanji RP
step
    .goto 1165,42.73,8.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r.
    .turnin 54034 >>Turn in Gaze of the Loa: Bwonsamdi
    .accept 53830 >>Accept Queen of the Zandalari
    .target Princess Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r.
    *|cRXP_WARN_Press "ESC" to skip the upcoming cutscene|r
    .skipgossip 145359,1
    .goto 1165,42.73,8.73
    .complete 53830,1 --1/1 Witness Talanji's address
    .target Princess Talanji
step
    .goto 1165,42.41,9.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Talanji|r.
    .turnin 53830 >>Turn in Queen of the Zandalari
    .accept 53719 >>Accept Allegiance of the Zandalari
    .target Queen Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r.
    .goto 1165,41.41,10.62
    .complete 53719,1 --1/1 Talanji's invitation extended
    .target Lady Sylvanas Windrunner
step
    #completewith next

    >>Jump down carefully
    .goto 1165,46.06,16.57,15,0
    .goto 1165,47.06,19.23,15,0
    .goto 1165,47.55,23.59,15,0
    .goto 1165,53.14,19.35
    .fly The Great Seal >>Fly to The Great Seal
step
    #completewith ZandalariTrollAllegianceoftheZandalari

    .isQuestTurnedIn 47436
    .isOnQuest 53719
    .vehicle 131154 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the Totem of Pa'ku
    .goto 1165,51.37,40.95
step
    #completewith ZandalariTrollAllegianceoftheZandalari

    .isQuestTurnedIn 47443
    .isOnQuest 53719
    .goto 1165,49.93,42.24,10,0
    .goto 1164,37.75,71.70,10,0
    .goto 1164,20.56,72.09,5 >>Take the elevator to |cRXP_FRIENDLY_Queen Talanji|r.
step
    #label ZandalariTrollAllegianceoftheZandalari
    .goto 1165,49.92,46.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r.
    .turnin 53719 >>Turn in Allegiance of the Zandalari
    .target Lady Sylvanas Windrunner
]])
--Vulpera
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Vulpera Unlock 1
#displayname |cFF00CCFF5|r - Vulpera
#chapter

<< Horde !Vulpera

step
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .accept 53870 >>Accept Guests at Grommash Hold
    .target Ji Firepaw
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Enter Grommash Hold
step
    .goto 85,48.90,72.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .turnin 53870 >>Turn in Guests at Grommash Hold
    .accept 53889 >>Accept A Declaration of Intent
    .target Kiro
step
    .goto 85,48.89,72.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .turnin 53889 >>Turn in A Declaration of Intent
    .accept 53890 >>Accept New Allies, New Problems
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Dresh|r, |cRXP_FRIENDLY_Bladeguard Sonji|r and |cRXP_FRIENDLY_First Arcanist Thalyssra|r.
    .complete 53890,1 --1/1 Commander Dresh questioned
    .goto 85,48.23,71.76
    .complete 53890,2 --1/1 Bladeguard Sonji questioned
    .goto 85,48.69,71.63
    .complete 53890,3 --1/1 First Arcanist Thalyssra questioned
    .goto 85,48.65,71.25
    .target Commander Dresh
    .target Bladeguard Sonji
    .target First Arcanist Thalyssra
step
    .goto 85,48.88,72.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .turnin 53890 >>Turn in New Allies, New Problems
    .accept 53891 >>Accept No Problem Too Small
    .target Kiro
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Leave Grommash Hold
step
    .isOnQuest 53891
    .goto 85,50.22,39.46
    .zone 241 >>Take the Portal to Twilight Highlands
step
    .goto 241,44.11,73.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .turnin 53891 >>Turn in No Problem Too Small
    .accept 53892 >>Accept Where Are the Workers?
    .target Kiro
step
    .goto 241,46.81,66.22
    #title |cFFFCDC00Follow the Arrow|r
    .complete 53892,1 --1/1 Follow Kiro
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .goto 241,46.05,65.60
    .complete 53892,2 --1/1 Peon Hideout investigated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crushblow Peons|r.
    .goto 241,46.05,65.60
    .complete 53892,3 --3/3 Peons questioned
    .target Crushblow Peon
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    .goto 241,46.81,66.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .turnin 53892 >>Turn in Where Are the Workers?
    .accept 53893 >>Accept A Little Goodwill
    .accept 53894 >>Accept Worthwhile Repairs
    .accept 53895 >>Accept Peon Promotions!
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crushblow Peons|r.
    .goto 241,46.09,65.59
    .complete 53895,1 --3/3 Peons promoted
    .target Crushblow Peon
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    #completewith next
    >>Pick up |cRXP_PICK_Twilight Ore|r from the veins.
    .complete 53894,1 --15/15 Twilight Ore
step
    #loop
    .goto 241,48.40,65.62,35,0
    .goto 241,46.62,63.33,35,0
    .goto 241,44.39,67.00,35,0
    .goto 241,45.34,67.78,35,0
    .goto 241,50.10,74.37,35,0
    .goto 241,53.75,71.69,35,0
    >>Use the |T310733:0|t[Enlarging Totem] before killing |cRXP_ENEMY_beasts|r around the area. Loot them for their [|cRXP_LOOT_flanks|r], [|cRXP_LOOT_meat|r], and [|cRXP_LOOT_tidbits|r].
    .complete 53893,1 --100/100 Saber Flank
    .complete 53893,2 --100/100 Worg Meat
    .complete 53893,3 --100/100 Clucker Tidbits
    .use 171356
    .mob Twilight Prowler
    .mob Highlands Clucker
step
    #loop
    >>Pick up |cRXP_PICK_Twilight Ore|r from the veins.

    .goto 241,51.13,68.58,30,0
    .goto 241,48.60,70.24,30,0
    .goto 241,46.42,72.89,30,0
    .complete 53894,1 --15/15 Twilight Ore
step
    .goto 241,46.81,66.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .turnin 53893 >>Turn in A Little Goodwill
    .turnin 53894 >>Turn in Worthwhile Repairs
    .turnin 53895 >>Turn in Peon Promotions!
    .accept 53897 >>Accept A Party in Your Honor
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Magrok|r and defeat him
    .goto 241,45.93,65.50
    .complete 53897,1 --1/1 Foreman Magrok invited
    .target Foreman Magrok
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .goto 241,45.04,76.24
    .turnin 53897 >>Turn in A Party in Your Honor
    .accept 53898 >>Accept Strength and Honor
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Magrok|r and defaet him
    .goto 241,45.67,76.42
    .complete 53898,1 --1/1 Foreman Magrok confronted
    .complete 53898,2 --1/1 Foreman Magrok defeated
    .target Foreman Magrok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .goto 241,45.04,76.24
    .turnin 53898 >>Turn in Strength and Honor
    .accept 54026 >>Accept Job's Done
    .target Kiro
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Enter Grommash Hold
step
    .goto 85,48.21,71.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Dresh|r.
    .turnin 54026 >>Turn in Job's Done
    .target Commander Dresh
step
    .goto 85,49.02,73.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .accept 53899 >>Accept On the Outskirts
    .target Kiro
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Leave Grommash Hold
step
    .isOnQuest 53899
    .goto 85,53.42,90.44,10,0
    .goto 85,58.55,91.31
    .zone 1163 >>Take the Portal to Zuldazar
step
    #completewith VulperaOntheOutskirts
    .goto 1165,49.94,42.02,10 >>Leave The Great Seal
step
    #label VulperaOntheOutskirts
    .goto 862,74.86,63.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r.
    .turnin 53899 >>Turn in On the Outskirts
    .accept 53901 >>Accept Explosions Always Work
    .accept 53900 >>Accept We'll Use Their Weapons
    .accept 58087 >>Accept Destroying the Source
    .target Nisha
step
    #completewith VulperaExplosionsAlwaysWork
    >>Kill |cRXP_ENEMY_Nazeshi Overseer|r or |cRXP_ENEMY_Nazeshi Tempest-Wielder|r. Loot them for their [|cRXP_LOOT_weaponry|r].
    .complete 53900,1 --10/10 Nazeshi Weaponry collected
    .mob Nazeshi Tempest-Wielder
    .mob Nazeshi Overseer
step
    #title Powercell 1/3
    >>Destroy the Powercell
    .goto 862,77.13,63.87
    .complete 58087,1,1 --1/3 Nazeshi Powercell destroyed
step
    #title Powercell 2/3
    >>Destroy the Powercell
    .goto 862,75.64,64.94
    .complete 58087,1,2 --2/3 Nazeshi Powercell destroyed
step
    #title Powercell 3/3
    >>Destroy the Powercell
    .goto 862,76.61,66.54
    .complete 58087,1 --3/3 Nazeshi Powercell destroyed
step
    #title Explosives placed 2/8
    >>Place the explosives at the highlightes locations
    .goto 862,75.73,67.67
    .complete 53901,1,2 --2/8 Explosives placed
step
    #title Explosives placed 4/8
    >>Place the explosives at the highlightes locations
    .goto 862,75.03,67.89
    .complete 53901,1,4 --4/8 Explosives placed
step
    #title Explosives placed 6/8
    >>Place the explosives at the highlightes locations
    .goto 862,74.31,67.83
    .complete 53901,1,6 --6/8 Explosives placed
step
    #label VulperaExplosionsAlwaysWork
    #title Explosives placed 8/8
    >>Place the explosives at the highlightes locations
    .goto 862,73.71,66.84
    .complete 53901,1 --8/8 Explosives placed
step
#loop
    >>Kill |cRXP_ENEMY_Nazeshi Overseer|r or |cRXP_ENEMY_Nazeshi Tempest-Wielder|r. Loot them for their [|cRXP_LOOT_weaponry|r].
    .goto 862,74.18,65.41,30,0
    .goto 862,75.11,66.23,30,0
    .goto 862,76.92,66.23,30,0
    .goto 862,77.14,63.93,30,0
    .complete 53900,1 --10/10 Nazeshi Weaponry collected
    .mob Nazeshi Tempest-Wielder
    .mob Nazeshi Overseer
step
    >>Use your [ExtraActionButton]
    .goto 862,73.72,66.84
    .complete 53901,2 --1/1 Explosives detonated
step
    .goto 862,74.86,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r.
    .turnin 53901 >>Turn in Explosions Always Work
    .turnin 53900 >>Turn in We'll Use Their Weapons
    .turnin 58087 >>Turn in Destroying the Source
    .accept 53902 >>Accept Taking Out the Tidecaller
    .target Nisha
step
    >>Kill |cRXP_ENEMY_Tidecaller Nezara|r. |cRXP_WARN_Make sure to dodge the Aquabomb (big blue swirl on the ground) if you're lvl 60|r.
    .goto 862,77.18,65.30
    .complete 53902,1 --1/1 Tidecaller Nezara slain
    .mob Tidecaller Nezara
step
    .goto 862,77.18,65.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r next to you.
    .turnin 53902 >>Turn in Taking Out the Tidecaller
    .accept 54027 >>Accept Threat Contained
    .target Nisha
step
    .zoneskip 85
    .isOnQuest 54027
    #completewith VulperaOntheOutskirts
    .goto 1165,49.94,42.02,10 >>Enter The Great Seal
step
    .isOnQuest 54027
    .zoneskip 85
    .goto 1163,73.72,70.00
    .zone 85 >> Take the portal to Orgrimmar
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Enter Grommash Hold
step
    .goto 85,48.68,71.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bladeguard Sonji
    .turnin 54027 >>Turn in Threat Contained
    .target Bladeguard Sonji
step
    .goto 85,49.02,73.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .accept 53903 >>Accept Meet with Meerah
    .target Kiro
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Leave Grommash Hold
step
    .isOnQuest 53899
    .goto 85,53.42,90.44,10,0
    .goto 85,58.86,89.52
    .zone 630 >>Take the Portal to Azsuna
step
    .goto 680,58.94,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r.
    .turnin 53903 >>Turn in Meet with Meerah
    .accept 53904 >>Accept The Vintner's Assistants
    .target Meerah
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Mida|r.
    .goto 680,60.69,56.38
    .skipgossip
    .complete 53904,2 --1/1 Speak to Boss Mida
    .target Boss Mida
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micah Broadhoof|r inside the house.
    .goto 680,61.22,55.15
    .complete 53904,1 --1/1 Speak to Micah Broadhoof
    .target Micah Broadhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r.
    .goto 680,62.42,57.64
    .complete 53904,3 --1/1 Speak to Nomi
    .target Nomi
step
    .goto 680,58.94,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r.
    .turnin 53904 >>Turn in The Vintner's Assistants
    .accept 53905 >>Accept Playing to Their Strengths
    .target Meerah
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Mida|r.
    .goto 680,60.69,56.38
    .complete 53905,2 --1/1 Boss Mida assigned
    .target Boss Mida
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micah Broadhoof|r inside the house.
    .goto 680,61.22,55.15
    .complete 53905,1 --1/1 Micah assigned
    .target Micah Broadhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r.
    .goto 680,62.42,57.65
    .complete 53905,3 --1/1 Nomi assigned
    .target Nomi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vintner Iltheux|r inside the house.
    .goto 680,58.79,55.43
    .complete 53905,4 --1/1 Vintner Iltheux informed
    .target Vintner Iltheux
step
    .goto 680,58.80,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r.
    .turnin 53905 >>Turn in Playing to Their Strengths
    .accept 54036 >>Accept A Particular Process
    .target Meerah
step
    .goto 680,60.59,56.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r.
    .turnin 54036 >>Turn in A Particular Process
    .accept 53906 >>Accept Fermented for the Horde
    .target Nomi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Mida|r and buy 10 |cRXP_BUY_Fermented Fireblooms|r.
    .goto 680,61.36,55.36
    .complete 53906,2 --10/10 Fermented Firebloom
    .target Boss Mida
step
    #loop
    >>Kill |cRXP_ENEMY_Tattered Silkwings|r. Loot them for their [|cRXP_LOOT_Fibers|r].
    .goto 680,63.97,57.97,25,0
    .goto 680,62.87,59.77,25,0
    .goto 680,61.06,57.61,25,0
    .goto 680,62.03,55.66,25,0
    .complete 53906,1 --20/20 Silkwing Fibers
    .mob Tattered Silkwing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r and interact with the Nightborne Vat
    .turnin 53906 >>Turn in Fermented for the Horde
    .accept 53907 >>Accept Sip and Savor
    .goto 680,60.60,56.22
    .complete 53907,1 --1/1 Collect a sample
    .goto 680,60.59,56.34
    .target Nomi
step
    .goto 680,58.79,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vintner Iltheux|r and wait for the RP
    .complete 53907,2 --1/1 Deliver the sample to Vintner Iltheux
    .target Vintner Iltheux
step
    .goto 680,58.80,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r.
    .turnin 53907 >>Turn in Sip and Savor
    .accept 53908 >>Accept Awaiting Our Arrival
    .target Meerah
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Enter Grommash Hold
step
    .goto 85,48.31,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r and wait for the RP
    .turnin 53908 >>Turn in Awaiting Our Arrival
    .accept 57448 >>Accept New Allies Among Us
    .complete 57448,1 --1/1 Witness Baine welcome the vulpera to the Horde
    .target Baine Bloodhoof
step
    .goto 85,48.43,71.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .turnin 57448 >>Turn in New Allies Among Us
    .target Kiro
]])
--EarthenDwarf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Earth
#displayname |cFF00CCFF5|r - Vulpera
#next a) Earth
#chapter
#internal

+PH
]])

-- ============================================================
-- ================    HERITAGE ARMOR   =======================
-- ============================================================

--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#subgroup Allied Races
#name a) HERITAGE ARMOR
#displayname Heritage Armors
#chapters a) Human Heritage Armor;a) Dwarf Heritage Armor;a) Nightelf Heritage Armor;a) Gnome Heritage Armor;a) Draenei Heritage Armor;a) Worgen Heritage Armor;a) EarthenDwarf Heritage Armor;a) Void Elf Heritage Armor;a) Lightforged Draenei Heritage Armor;a) Dark Iron Dwarf Heritage Armor;a) Kul Tiran Heritage Armor;a) Heritage Pandaren;a) Haranir Heritage Armor << Alliance
#chapters a) Orc Heritage Armor;a) Undead Heritage Armor;a) Tauren Heritage Armor;a) Troll Heritage Armor;a) Blood Elf Heritage Armor;a) Goblin Heritage Armor;a) Nightborne Heritage Armor;a) Highmountain Heritage Armor;a) Mag'har Orc Heritage Armor;a) Zandalari Troll Heritage Armor;a) Vulpera Heritage Armor;a) Heritage Pandaren;a) Haranir Heritage Armor << Horde
]])

--Human
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Human Heritage Armor
#displayname |cFF1EFF001|r - Human
#next a) Dwarf Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,54.47,20.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r in Stormwind.
    .acceptmultiple 75265,72644 >>Accept An Urgent Matter
    .target Aysa Cloudsinger
step
    #completewith next
    #label Urgent Matter
    .goto 84,52.96,14.69,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r |cRXP_WARN_behind the house.|r
    .turninmultiple 75265,72644 >>Turn in An Urgent Matter
    .accept 72405 >>Accept An Unlikely Informant
    .disablecheckbox
    .target Master Mathias Shaw
step
    #completewith Urgent Matter
    .goto 84,87.45,30.79,625 >>Leave the building
step
    #requires Urgent Matter
    .goto 84,87.45,30.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r |cRXP_WARN_behind the house.|r
    .turninmultiple 75265,72644 >>Turn in An Urgent Matter
    .accept 72405 >>Accept An Unlikely Informant
    .target Master Mathias Shaw
step
    #completewith next
    #label Shaw talked 0
    #hidewindow
    .goto 37,42.98,65.66,5,0
    .goto 37,43.24,65.99,5,0
    .complete 72405,1 --1/1 Shaw talked to in the Lion's Pride Inn basement
step
    #completewith Shaw talked 0
    .goto 37,44.06,66.05,30 >>Enter Lion's Pride Inn
step
    #requires Shaw talked 0
    #completewith next
    #label Shaw talked 1
    #hidewindow
    .goto 37,44.06,66.05,5,0
    .goto 37,44.51,65.74,5,0
    .complete 72405,1 --1/1 Shaw talked to in the Lion's Pride Inn basement
step
    #requires Shaw talked 0
    #completewith Shaw talked 1
    .goto 37,44.34,66.22
    .gossipoption 107712 >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r in the basement.
    .timer 26,RP
    .target Master Mathias Shaw
step
    #requires Shaw talked 1
    #completewith next
    #label Shaw talked 2
    .goto 37,44.52,65.76,5,0
    .goto 37,44.12,65.71,5,0
    .goto 37,43.98,66.07,5,0
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 72405,1 --1/1 Shaw talked to in the Lion's Pride Inn basement
step
    #requires Shaw talked 1
    #completewith Shaw talked 2
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farlay|r
    .home >>Set your Hearthstone to Lion's Pride Inn
    .skipgossipid 28605
    .target Innkeeper Farlay
step
    #requires Shaw talked 2
    .goto 37,43.98,66.07,5,0
    .goto 37,44.12,65.71,5,0
    .goto 37,44.52,65.76,5,0
    .goto 37,44.34,66.19
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 72405,1 --1/1 Shaw talked to in the Lion's Pride Inn basement
step
    .goto 37,44.34,66.19
    >>|r|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 72405 >>Turn in An Unlikely Informant
    .target Master Mathias Shaw
    .accept 72408 >>Accept A Window to the Past
step
    .goto 37,44.34,66.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaw|r
    .complete 72408,1 --1/1 Speak with Shaw
    .skipgossipid 107715
    .target Shaw
step
    .goto 37,44.34,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .turnin 72408 >>Turn in A Window to the Past
    .target Vanessa VanCleef
    .accept 72409 >>Accept Rotten Old Memories
step
    #completewith next
    #label Ragged John
    .goto 37,44.54,65.78,5,0
    .goto 37,44.11,65.69,5,0
    .goto 37,44.02,66.07,5,0
    .goto 37,43.17,65.97,5,0
    .goto 37,43.2,65.66,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .complete 72409,1 --1/1 Speak to Ragged John
    .target Ragged John
step
    #completewith Ragged John
    .goto 37,42.9,65.65,8 >>Leave Lion's Pride Inn
step
    #requires Ragged John
    .goto 36,72.86,64.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .complete 72409,1 --1/1 Speak to Ragged John
    .skipgossipid 107725
    .skipgossipid 107724
    .skipgossipid 107723
    .skipgossipid 107722
    .skipgossipid 108338
    .target Ragged John
step
    #completewith next
    #label Hoarded Debris
    .goto 36,62.36,64.02,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Hoarded Debris|r.
    .complete 72409,2,1 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    #completewith Hoarded Debris
    .goto 36,61.76,66.76,50 >>Enter the Cave
step
    #requires Hoarded Debris
    .goto 36,61.76,66.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Hoarded Debris|r.
    .complete 72409,2,1 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    .goto 36,61.21,67.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Hoarded Debris|r.
    .complete 72409,2,2 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    .goto 36,60.24,66.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Hoarded Debris|r.
    .complete 72409,2,3 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    .goto 36,61.28,65.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Hoarded Debris|r.
    .complete 72409,2,4 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    #completewith next
    #label Rotten Old Memories
    .goto 36,62.4,64.32,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .turnin 72409 >>Turn in Rotten Old Memories
    .target Ragged John
    .accept 72424 >>Accept Looking for Something Specific
    .disablecheckbox
step
    #completewith Rotten Old Memories
    .goto 36,72.84,64.81,330 >>Leave the Cave
step
    #requires Rotten Old Memories
    .goto 36,72.84,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .turnin 72409 >>Turn in Rotten Old Memories
    .target Ragged John
    .accept 72424 >>Accept Looking for Something Specific
step
    #completewith next
    #label New Clessington Estate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 72424 >>Turn in Looking for Something Specific
    .target Master Mathias Shaw
    .accept 72426 >>Accept The New Clessington Estate
    .disablecheckbox
step
    #completewith New Clessington Estate
    .hs >>Hearth to Lion's Pride Inn
step
    #requires New Clessington Estate
    .goto 37,44.33,66.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r in the basement.
    .turnin 72424 >>Turn in Looking for Something Specific
    .target Master Mathias Shaw
    .accept 72426 >>Accept The New Clessington Estate
step
    #completewith next
    #label Clessington Manor 1
    #hidewindow
    .goto 37,44.54,65.78,5,0
    .goto 37,44.11,65.69,5,0
    .goto 37,44.02,66.07,5,0
    .goto 37,43.17,65.97,5,0
    .goto 37,43.2,65.66,5,0
    .complete 72426,1 --1/1 Clessington Manor investigated
step
    #completewith Clessington Manor 1
    .goto 37,42.9,65.65,8 >>Leave Lion's Pride Inn
step
    #requires Clessington Manor 1
    .goto 47,18.07,55.31,5,0
    .goto 47,17.47,54.99,5,0
    .goto 47,17.98,55.1,5,0
    .goto 47,18.06,54.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cecilia Clessington|r
    .complete 72426,1 --1/1 Clessington Manor investigated
    .timer 5,RP
    .skipgossipid 107754
    .target Cecilia Clessington
step
    .goto 47,18.04,54.75,5,0
    .goto 47,17.59,54.78,5,0
    .goto 47,18.1,55.38,5,0
    .goto 47,18.41,55.37,5,0
    .goto 47,18.32,54.95
    #title |cFFFCDC00Follow the Arrow|r
    >>Leave the building; Kill |cRXP_ENEMY_Attendants|r.
    .complete 72426,2 --1/1 Cecilia escorted from the building
    .mob Clessington Attendant
    .target Cecilia Clessington
step
    .goto 47,18.35,55.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cecilia Clessington|r
    .complete 72426,3 --1/1 Circumstances explained to Cecilia
    .skipgossipid 108160
    .target Cecilia Clessington
step
    .goto 47,18.35,55.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cecilia Clessington|r
    .turnin 72426 >>Turn in The New Clessington Estate
    .target Cecilia Clessington
step
    .goto 47,18.32,54.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 72430 >>Accept Misdeeds in Moonbrook
    .target Vanessa VanCleef
step
    .goto 52,46.72,66.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .turnin 72430 >>Turn in Misdeeds in Moonbrook
    .target Vanessa VanCleef
step
    .goto 52,46.72,66.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 72431 >>Accept A Hungry Heritage
    .target Vanessa VanCleef
step
    .goto 52,46.74,66.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cecilia Clessington|r
    .accept 72432 >>Accept Supply Only the Finest Goons
    .target Cecilia Clessington
step
    #completewith Betrayal of the Brotherhood
    >>Kill |cRXP_ENEMY_Clessington Attendants|r
    .complete 72432,1 --16/16 Clessington Attendant slain
    .mob Clessington Attendant
step
    .goto 52,42.60,71.96
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72431,1 --1/1 Defias Hideout entered
step
    #completewith next
    #label Count Clessington
    .goto 52,43.36,71.9,5,0
    .goto 52,43.33,72.58,5,0
    .goto 52,42.92,72.66,5,0
    .goto 52,43.4,72.86,5,0
    .goto 52,43.33,73.16,5,0
    .goto 52,43.79,73.48,5,0
    .goto 55,67.5,25.53,5,0
    .goto 55,63.18,25.65,5,0
    .goto 55,54.37,39.18,10,0
    .goto 55,47.96,43.83,10,0
    .goto 55,49.23,52.25,10,0
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72431,2 --1/1 Count Clessington found
step
    #completewith Count Clessington
    .goto 55,54.23,58.57,30 >>Traverse the Mine
    .timer 30,RP
step
    #requires Count Clessington
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 72431,2 --1/1 Count Clessington found
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r |cRXP_WARN_next to you|r
    .turnin 72431 >>Turn in A Hungry Heritage
    .target Vanessa VanCleef
step
    .goto 52,45.22,68.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 72453 >>Accept Betrayal of the Brotherhood
    .target Vanessa VanCleef
step
    #completewith next
    #label Defias Hideout escaped
    #title |cFFFCDC00Follow the Arrow|r
    .goto 55,48.71,47.5,10,0
    .goto 55,55.81,37.52,10,0
    .goto 55,64.34,14.57,10,0
    .goto 55,59.71,15.81,5,0
    .goto 55,63.67,23.83,5,0
    .goto 55,67.82,26.56,5,0
    .goto 55,69.27,21.43,5,0
    .goto 52,43.41,72.83,5,0
    .goto 52,43.62,73.31,5,0
    .goto 52,43.61,72.79,5,0
    .goto 52,42.91,72.75,5,0
    .goto 52,42.83,72.05,5,0
    .goto 52,42.57,71.71,5,0
    *Use [ExtraActionButton] to increase your movement speed.
    .complete 72453,1 --1/1 Defias Hideout escaped
step
    #completewith Defias Hideout escaped
    .goto 52,46.72,66.75,100 >>Leave the Mine
step
    #requires Defias Hideout escaped
    #label Betrayal of the Brotherhood
    #title |cFFFCDC00Follow the Arrow|r
    *Use [ExtraActionButton] to increase your movement speed.
    .complete 72453,1 --1/1 Defias Hideout escaped
step
    #loop
    .goto 52,44.74,69.96,30,0
    .goto 52,42.5,71.32,30,0
    .goto 52,42.7,66.8,30,0
    >>Kill |cRXP_ENEMY_Clessington Attendants|r
    .complete 72432,1 --16/16 Clessington Attendant slain
    .mob Clessington Attendant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r, |cRXP_FRIENDLY_Cecilia Clessington|r and |cRXP_FRIENDLY_Master Mathias Shaw.|r
    .turnin 72453 >>Turn in Betrayal of the Brotherhood
    .goto 52,46.65,66.78
    .target +Vanessa VanCleef
    .turnin 72432 >>Turn in Supply Only the Finest Goons
    .goto 52,46.74,66.75
    .target +Cecilia Clessington
    .accept 72445 >>Accept To Northshire
    .goto 52,46.72,66.71
    .target +Master Mathias Shaw
step
    .goto 425,27.90,66.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 72445 >>Turn in To Northshire
    .target Master Mathias Shaw
    .accept 72449 >>Accept Knock It Off!
step
    .goto 425,27.70,66.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 72446 >>Accept What's Their Problem?
    .target Marshal McBride
step
    #completewith Enforcer Horb's Signet
    >>Kill |cRXP_ENEMY_Defias,|r |cRXP_ENEMY_Confused Citizens|r and |cRXP_ENEMY_Clessington Attendant|r
    .complete 72446,1 --Northshire defended (100%)
    .mob Clessington Attendant
    .mob Confused Acolyte
    .mob Confused Commoner
    .mob Confused Recruit
    .mob Defias Bandit
    .mob Defias Mage
step
    .goto 425,35.61,61.23
    >>Kill |cRXP_ENEMY_Enforcer Grant|r
    *Loot him for |T1011899:0|t[|cRXP_LOOT_Enforcer Grant's Signet|r].
    .complete 72449,1 --1/1 Enforcer Grant's Signet
    .mob Enforcer Grant
step
    .goto 425,49.52,62.61
    >>Kill |cRXP_ENEMY_Enforcer Jennive|r
    *Loot her for |T1011898:0|t[|cRXP_LOOT_Enforcer Jennive's Signet|r].
    .complete 72449,2 --1/1 Enforcer Jennive's Signet
    .mob Enforcer Jennive
step
    .goto 425,35.32,39.05
    >>Kill |cRXP_ENEMY_Enforcer Tera|r
    *Loot her for |T1011900:0|t[|cRXP_LOOT_Enforcer Tera's Signet|r].
    .complete 72449,3 --1/1 Enforcer Tera's Signet
    .mob Enforcer Tera
step
    #label Enforcer Horb's Signet
    .goto 425,31.25,19.24
    >>Kill |cRXP_ENEMY_Enforcer Horb|r
    *Loot them for |T1011901:0|t[|cRXP_LOOT_Enforcer Horb's Signet|r].
    .complete 72449,4 --1/1 Enforcer Horb's Signet
    .mob Enforcer Horb
step
    #label EndIncludePrepGuide
    #loop
    .goto 425,26.88,48.3,40,0
    .goto 425,32.24,54.67,40,0
    .goto 425,37.41,59.37,40,0
    .goto 425,47.25,59.06,40,0
    .goto 425,43.14,46.45,40,0
    .goto 425,31.35,21.82,40,0
    >>Kill |cRXP_ENEMY_Defias,|r |cRXP_ENEMY_Confused Citizens|r and |cRXP_ENEMY_Clessington Attendant|r
    .complete 72446,1 --Northshire defended (100%)
    .mob Clessington Attendant
    .mob Confused Acolyte
    .mob Confused Commoner
    .mob Confused Recruit
    .mob Defias Bandit
    .mob Defias Mage
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride,|r |cRXP_FRIENDLY_Master Mathias Shaw|r and |cRXP_FRIENDLY_Cecilia Clessington|r
    .turnin 72446 >>Turn in What's Their Problem?
    .goto 425,27.68,66.66
    .target +Marshal McBride
    .turnin 72449 >>Turn in Knock It Off!
    .goto 425,27.89,66.73
    .target +Master Mathias Shaw
    .accept 72450 >>Accept The Clessington Will
    .goto 425,28.02,67.31
    .target +Cecilia Clessington
step
    .goto 425,35.42,51.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrier|r
    .complete 72450,1 --1/1 Barrier dispelled
    .timer 30,RP
step
    .goto 425,37.58,50.36
    >>Kill |cRXP_ENEMY_Count Clessington|r and it's |cRXP_ENEMY_minions|r.
    *Use the |cRXP_WARN_ExtraActionButton|r whenever you are stunned.
    .complete 72450,2 --1/1 Count Clessington slain
    .mob Count Clessington
    .mob Clessington Attendant
    .mob Defias Rebel
    .mob Confused Recruit
step
    .goto 425,36.4,50.82,5,0
    .goto 425,37.59,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cecilia Clessington|r
    .turnin 72450 >>Turn in The Clessington Will
    .target Cecilia Clessington
step
    .goto 425,36.40,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 72451 >>Accept Will to Survive
    .target Master Mathias Shaw
step
    .goto 425,37.53,50.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amulet|r.
    .complete 72451,1 --1/1 Drakefire Amulet
step
    #completewith next
    #label Amulet given
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 72451,2 --1/1 Amulet given to Shaw
step
    #completewith Amulet given
    .goto 425,36.47,51.12
    .gossipoption 108735 >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .target Master Mathias Shaw
    .timer 25,RP
step
    #requires Amulet given
    .goto 425,37.46,52.03
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 72451,2 --1/1 Amulet given to Shaw
step
    .goto 425,37.46,52.03
    >>Use the |cRXP_WARN_ExtraActionButton|r whenever you are stunned.
    .complete 72451,3 --1/1 Resist
step
    .goto 425,37.31,51.03
    >>Kill |cRXP_ENEMY_Shade of Onyxia|r
    *Use the |cRXP_WARN_ExtraActionButton|r whenever you are stunned.
    .complete 72451,4 --1/1 Shade of Onyxia slain
    .mob Shade of Onyxia
step
    .goto 425,36.56,51.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .turnin 72451 >>Turn in Will to Survive
    .target Vanessa VanCleef
step
    .goto 425,36.75,51.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 72452 >>Accept Go with Honor, Friend
    .target Master Mathias Shaw
step
    .goto 84,71.06,85.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .complete 72452,1 --1/1 Shaw met outside Stormwind
    .skipgossipid 107986
step
    .goto 84,69.38,82.99
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 72452,2 --1/1 General Hammond Clay approached
step
    .goto 84,69.38,82.99
    >>Use the |cRXP_WARN_[ExtraActionButton]|r.
    .complete 72452,3 --1/1 Honor received
step
    .goto 84,69.21,82.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hammond Clay|r
    .turnin 72452 >>Turn in Go with Honor, Friend
    .target General Hammond Clay
]])
--Dwarf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Dwarf Heritage Armor
#displayname |cFF1EFF002|r - Dwarf
#next a) Nightelf Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,52.06,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 53838 >>Accept Keep Yer Feet On The Ground
    .target Aysa Cloudsinger
step
    #completewith next
    #label excavators
    #title |cFFFCDC00Follow the Arrow|r
    .goto 31,37.98,92.39,15,0
    .complete 53838,1 --1/1 Find the missing excavators
step
    #completewith excavators
    .goto 31,39.69,22.64,175 >>Enter the Cave
step
    #requires excavators
    .goto 31,38.68,64.98,5,0
    .goto 31,39.27,57.82,5,0
    .goto 31,50.86,20.39,10,0
    .goto 31,39.69,22.64
    #title |cFFFCDC00Follow the Arrow|r
    .complete 53838,1 --1/1 Find the missing excavators
step
    .goto 31,39.80,22.55
    >>Kill |cRXP_ENEMY_Maw'roc the Thief|r
    .complete 53838,2 --1/1 Maw'roc the Thief slain
    .mob Maw'roc the Thief
step
    .goto 31,39.80,22.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Tablet|r
    .turnin 53838 >>Turn in Keep Yer Feet On The Ground
    .accept 53835 >>Accept Something Valuable, Perhaps?
    .target Ancient Tablet
step
    #completewith next
    #label Perhaps?
    .goto 31,50.94,20.72,10,0
    .goto 31,36.44,48.05,10,0
    .goto 31,43.55,48.51,10,0
    .goto 31,38.25,56.34,10,0
    .goto 31,41.29,69.2,10,0
    .goto 27,77.81,54.88,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53835 >>Turn in Something Valuable, Perhaps?
    .accept 53836 >>Accept Ancient Armor, Ancient Mystery
    .disablecheckbox
    .target Brann Bronzebeard
step
    #completewith Perhaps?
    .goto 27,60.59,33.23,1100 >>Leave the Cave
step
    #requires Perhaps?
    .goto 87,25.26,73.8,20,0
    .goto 87,37.67,66.07,20,0
    .goto 87,77.44,9.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53835 >>Turn in Something Valuable, Perhaps?
    .accept 53836 >>Accept Ancient Armor, Ancient Mystery
    .target Brann Bronzebeard
step
    #completewith next
    #label Ancient Mystery
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 53836 >>Turn in Ancient Armor, Ancient Mystery
    .target Advisor Belgrum
    .accept 53837 >>Accept Watch Yer Back
    .disablecheckbox
step
    #completewith Ancient Mystery
    .goto 87,43.84,50.56,260 >>Leave the No Mount Zone.
step
    #requires Ancient Mystery
    .goto 87,46.42,52.94,10,0
    .goto 1361,77.81,87.89,10,0
    .goto 1361,80.34,53.58,10,0
    .goto 1361,56.85,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 53836 >>Turn in Ancient Armor, Ancient Mystery
    .target Advisor Belgrum
    .accept 53837 >>Accept Watch Yer Back
step
    #loop
    .goto 1361,55.63,60.41,8,0
    .goto 1361,40.01,67.8,5,0
    .goto 1361,39.23,60.22,5,0
    .goto 1361,43.54,52.84,5,0
    .goto 1361,38.13,40.77,5,0
    .goto 1361,32.18,42.8,5,0
    .goto 1361,28.3,52.67,5,0
    .goto 1361,39.93,71.5,5,0
    .goto 1361,46.24,68.92,5,0
    .goto 1361,47.27,57.89,5,0
    .goto 1361,34.14,42.98,10,0
    .goto 1361,19.46,51.87,5,0
    .goto 1361,34.14,42.98,10,0
    .goto 1361,47.27,57.89,5,0
    .goto 1361,46.24,68.92,5,0
    .goto 1361,39.93,71.5,5,0
    .goto 1361,28.3,52.67,5,0
    .goto 1361,32.18,42.8,5,0
    .goto 1361,38.13,40.77,5,0
    .goto 1361,43.54,52.84,5,0
    .goto 1361,39.23,60.22,5,0
    .goto 1361,40.01,67.8,5,0
    .goto 1361,55.63,60.41,8,0
    .goto 1361,55.63,60.41,8,0
    .goto 1361,40.01,67.8,5,0
    .goto 1361,39.23,60.22,5,0
    .goto 1361,43.54,52.84,5,0
    .goto 1361,38.13,40.77,5,0
    .goto 1361,32.18,42.8,5,0
    .goto 1361,28.3,52.67,5,0
    .goto 1361,39.93,71.5,5,0
    .goto 1361,46.24,68.92,5,0
    .goto 1361,47.27,57.89,5,0
    .goto 1361,34.14,42.98,10,0
    .goto 1361,19.46,51.87,5,0
    >>Kill |cRXP_ENEMY_Troggs|r and the |cRXP_ENEMY_Roc'maw the Burrower|r
    .complete 53837,1 --8/8 Trogg Invader slain
    .complete 53837,2 --1/1 Roc'maw the Burrower slain
    .mob Trogg Invader
    .mob Roc'maw the Burrower
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r |cRXP_WARN_next to you|r.
    .turnin 53837 >>Turn in Watch Yer Back
    .target Advisor Belgrum
    .accept 53839 >>Accept Aegrim's Study
step
    #completewith next
    #label Armor Stand
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Armor Stand|r
    .turnin 53839 >>Turn in Aegrim's Study
    .target Armor Stand
    .accept 53841 >>Accept Shards of the Past
    .disablecheckbox
step
    #completewith Armor Stand
    .goto 1361,18.65,52.4
    .zone 87 >>Click on the |cRXP_PICK_Door|r
step
    #requires Armor Stand
    .goto 87,19.55,52.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Armor Stand|r
    .turnin 53839 >>Turn in Aegrim's Study
    .target Armor Stand
    .accept 53841 >>Accept Shards of the Past
step
    #completewith Ancient Golem Guards
    +Kill |cRXP_ENEMY_Ancient Golem Guards|r that turn hostile.
    .mob Ancient Golem Guard
step
    .goto 87,19.48,51.8
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Metal|r.
    .complete 53841,1,1 --6/6 Fragments of Shattered Armor
step
    .goto 87,20.25,52.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Metal|r.
    .complete 53841,1,2 --6/6 Fragments of Shattered Armor
step
    .goto 87,20.89,53.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Metal|r.
    .complete 53841,1,3 --6/6 Fragments of Shattered Armor
step
    .goto 87,21.96,51.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Metal|r.
    .complete 53841,1,4 --6/6 Fragments of Shattered Armor
step
    .goto 87,20.93,50.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Metal|r.
    .complete 53841,1,5 --6/6 Fragments of Shattered Armor
step
    #label Ancient Golem Guards
    .goto 87,20.7,49.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Metal|r.
    .complete 53841,1,6 --6/6 Fragments of Shattered Armor
step
    #completewith next
    #label Shards of the Past
    #hidewindow
    .turnin 53841 >>Turn in Shards of the Past
step
    #completewith Shards of the Past
    .goto 87,24.82,49.31
    .zone 1361 >>Click on the |cRXP_PICK_Door|r
step
    #requires Shards of the Past
    #completewith next
    #label Shards of the Past 2
    .goto 1361,38.15,44.51,10,0
    .goto 1361,47.72,65.33,5,0
    .goto 1361,38.87,71.33,5,0
    .goto 1361,28.2,50.73,5,0
    .goto 1361,37.63,40.67,5,0
    .goto 1361,43.4,54.15,5,0
    .goto 1361,38.25,66.03,5,0
    .goto 1361,45.14,62.19,5,0
    .goto 1361,63.29,48.61,5,0
    .goto 1361,81.67,53.71,5,0
    .goto 1361,79.76,88.88,5,0
    .goto 1361,75.6,88.32,5,0
    .goto 87,46.51,52.75,5,0
    .goto 87,43.95,51.91,5,0
    .goto 87,44.86,49.14,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53841 >>Turn in Shards of the Past
    .target Brann Bronzebeard
    .accept 53840 >>Accept Interest Yah In A Pint?
step
    #requires Shards of the Past
    #completewith Shards of the Past 2
    .goto 87,77.44,9.55,320 >>Follow the Arrow
step
    #requires Shards of the Past 2
    .goto 87,77.44,9.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53841 >>Turn in Shards of the Past
    .target Brann Bronzebeard
    .accept 53840 >>Accept Interest Yah In A Pint?
step
    #completewith next
    #label Interest Yah In A Pint?
    .goto 87,40.34,60.24,20,0
    .goto 87,24.32,75.49,20,0
    .goto 27,60.51,33.34,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grumnus Steelshaper|r
    .turnin 53840 >>Turn in Interest Yah In A Pint?
    .target Grumnus Steelshaper
step
    #completewith Interest Yah In A Pint?
    .goto 48,35.34,47.73,5,0
    .goto 48,35.53,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >>Set your Hearthstone to Stoutlager Inn
    .skipgossipid 28267
    .target Innkeeper Hearthstove
step
    #requires Interest Yah In A Pint?
    .goto 48,35.00,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grumnus Steelshaper|r
    .turnin 53840 >>Turn in Interest Yah In A Pint?
    .target Grumnus Steelshaper
step
    .goto 48,35.02,48.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .accept 53844 >>Accept Recruiting the Furnace Master
    .target Brann Bronzebeard
step
    .goto 120,41.59,17.67
    >>Enter Ulduar through it's portal in Northend(Storm Peaks).
    .complete 53844,1 --1/1 Travel to Ulduar
step
    #completewith Titan Flame
    +|cRXP_WARN_The Arrow can't be displayed here|r.
step
    #completewith next
    >>Kill |cRXP_ENEMY_Titan Flames|r
    .complete 53844,2 --6/6 Titan Flame slain
    .mob Titan Flame
step
    >>Kill |cRXP_ENEMY_Magmarion of the Furnace|r.
    *|cRXP_WARN_Take the first turn left|r.
    .complete 53844,3 --1/1 Magmarion of the Furnace slain
    .mob Magmarion of the Furnace
step
    #label Titan Flame
    >>Kill |cRXP_ENEMY_Titan Flames|r
    .complete 53844,2 --6/6 Titan Flame slain
    .mob Titan Flame
step
    #completewith next
    #label Earthen Blessing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53844 >>Turn in Recruiting the Furnace Master
    .target Brann Bronzebeard
    .accept 53842 >>Accept Earthen Blessing
    .disablecheckbox
step
    #completewith Earthen Blessing
    .hs >>Hearth to Thelsamar
step
    #requires Earthen Blessing
    .goto 48,35.01,48.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53844 >>Turn in Recruiting the Furnace Master
    .target Brann Bronzebeard
    .accept 53842 >>Accept Earthen Blessing
step
    #completewith next
    #label Remnant of the Earthen Ritual
    .goto 48,35.47,48.18,5,0
    .goto 48,35.29,47.73,5,0
    .goto 48,35.05,47.67,5,0
    .goto 87,15.16,86.02,15,0
    .goto 87,24.26,74.89,15,0
    .goto 87,32.44,56.65,15,0
    .goto 87,44.71,48.87,10,0
    .goto 87,44.14,51.81,5,0
    .goto 87,46.43,53.21,5,0
    .goto 1361,78.19,89.32,5,0
    .goto 1361,80.95,53.72,5,0
    .goto 1361,58.76,48.8,10,0
    .goto 1361,54.37,63.8,10,0
    .goto 1361,48.02,69.7,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Remnant|r
    .complete 53842,1 --1/1 Remnant of the Earthen Ritual
step
    #completewith Remnant of the Earthen Ritual
    .goto 1361,35.93,53.94,40 >>Follow the Arrow
step
    #requires Remnant of the Earthen Ritual
    .goto 1361,35.93,53.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Remnant|r
    .complete 53842,1 --1/1 Remnant of the Earthen Ritual
step
    #completewith next
    #label Earthen Blessing
    .goto 1361,47.69,69.77,10,0
    .goto 1361,56,61.11,10,0
    .goto 1361,63.9,47.87,10,0
    .goto 1361,81.68,56.31,10,0
    .goto 1361,78.5,89.97,10,0
    .goto 87,46.17,52.47,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 53842 >>Turn in Earthen Blessing
    .target Bouldercrag the Rockshaper
step
    #completewith Earthen Blessing
    .goto 87,43.75,50.37,10 >>Follow the Arrow
step
    #requires Earthen Blessing
    .goto 87,49.23,45.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 53842 >>Turn in Earthen Blessing
    .target Bouldercrag the Rockshaper
step
    .goto 87,48.79,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grumnus Steelshaper|r
    .accept 53845 >>Accept Forging the Armor
    .target Grumnus Steelshaper
step
    .goto 87,49.13,44.88
    >>Use the [ExtraActionButton] inside the circle.
    .complete 53845,1 --1/1 Help Bouldercrag's Ritual
step
    #completewith next
    #label Armor Shards
    >>Carry the metal into the circle.
    .complete 53845,2 --1/1 Present Ignis the Armor Shards
step
    #completewith Armor Shards
    .goto 87,49.03,44.67
    .cast 6478 >>Click on the |cRXP_PICK_Pile of Ancient Metal|r.
step
    #requires Armor Shards
    .goto 87,51.69,43.70
    >>Carry the metal into the circle.
    .complete 53845,2 --1/1 Present Ignis the Armor Shards
step
    #completewith next
    #label Molten Metal
    >>Carry the metal into the circle.
    .complete 53845,3 --1/1 Bring the Molten Metal to the Great Anvil
step
    #completewith Molten Metal
    .goto 87,52.34,44.08
    .cast 6478 >>Click on the |cRXP_PICK_Molten Metal|r.
step
    #requires Molten Metal
    .goto 87,50.10,43.96
    >>Carry the metal into the circle.
    .complete 53845,3 --1/1 Bring the Molten Metal to the Great Anvil
step
    .goto 87,49.97,44.02
    >>Use the [ExtraActionButton]
    .complete 53845,4 --1/1 Forge the Bulwark of the Mountain Kings
step
    .goto 87,49.74,43.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Armor|r
    .complete 53845,5 --1/1 Heritage of the Bronzebeard
step
    #EndIncludePrepGuide
    .goto 87,46.10,50.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grumnus Steelshaper|r
    .turnin 53845 >>Turn in Forging the Armor
    .target Grumnus Steelshaper
step
    .goto 87,45.88,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .accept 53846 >>Accept Legacy of the Bronzebeard
    .target Brann Bronzebeard
step
    .goto 87,39.14,56.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muradin Bronzebeard|r
    .turnin 53846 >>Turn in Legacy of the Bronzebeard
    .target Muradin Bronzebeard
]])
--Nightelf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Nightelf Heritage Armor
#displayname |cFF1EFF003|r - Nightelf
#next a) Gnome Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,52.3,14.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 75890 >>Accept Clarion Call
    .target Aysa Cloudsinger
step
    #completewith next
    #label The Clarion Call
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arko'narin Starshade|r
    .turnin 75890 >>Turn in The Clarion Call
    .accept 75891 >>Accept Ancient Curses
    .disablecheckbox
    .target Arko'narin Starshade
step
    #completewith The Clarion Call
    .goto 84,52.99,14.8,10 >>Leave the house
step
    #requires The Clarion Call
    .goto 84,52.34,4.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arko'narin Starshade|r
    .turnin 75890 >>Turn in The Clarion Call
    .accept 75891 >>Accept Ancient Curses
    .target Arko'narin Starshade
step
    #completewith next
    #label Meet Maiev Shadowsong in Felwood
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r after the roleplay.
    .complete 75891,1 --1/1 Meet Maiev Shadowsong in Felwood
    .target Maiev Shadowsong
step
    #completewith Meet Maiev Shadowsong in Felwood
    .goto 84,76.17,18.7
    .zone 198 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal Hyjal|r
step
    #requires Meet Maiev Shadowsong in Felwood
    .goto 12,47.67,30.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r after the roleplay.
    .complete 75891,1 --1/1 Meet Maiev Shadowsong in Felwood
    .target Maiev Shadowsong
step
    .goto 12,47.67,30.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .turnin 75891 >>Turn in Ancient Curses
    .target Maiev Shadowsong
    .accept 76194 >>Accept A Grim Portent
step
    #completewith next
    #label Speak with Arko'narin
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 76194,1 --1/1 Speak with Arko'narin
step
    #completewith Speak with Arko'narin
    .goto 12,47.67,30.62
    .gossipoption 110344 >>Talk to |cRXP_FRIENDLY_Arko'narin|r
    .timer 34,RP
    .target Arko'narin
step
    #requires Speak with Arko'narin
    .goto 12,47.67,30.62
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 76194,1 --1/1 Speak with Arko'narin
step
    .goto 12,47.67,30.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .turnin 76194 >>Turn in A Grim Portent
    .target Maiev Shadowsong
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lysander Starshade|r and |cRXP_FRIENDLY_Arko'narin Starshade|r
    .accept 76195 >>Accept Countering Corruption
    .goto 12,47.68,30.62
    .target +Lysander Starshade
    .accept 76196 >>Accept Mercy or Misery
    .goto 12,47.66,30.61
    .target +Arko'narin Starshade
step
    #hidewindow
    #completewith Kill enemies in Jaedenar
    #loop
    .goto 12,47.55,30.78,30,0
    .goto 12,47.42,30.62,30,0
    .goto 12,47.33,30.47,30,0
    .goto 12,47.34,30.36,30,0
    .goto 12,47.47,30.44,30,0
    .goto 12,47.48,30.3,30,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Feltouched|r and |cRXP_ENEMY_Jaedenar's|r.
    .complete 76196,1 --15/15 Kill enemies in Jaedenar
    .mob Feltouched Trickster
    .mob Feltouched Conjurer
    .mob Jaedenar Warrior
    .mob Jaedenar Scoundrel
step
    >>Use |T134544:0|t[Incanter's Tome] near |cRXP_ENEMY_Feltouched|r corpses.
    .complete 76195,1 --6/6 Satyr corpses neutralized
    .use 207004
step
    #label Kill enemies in Jaedenar
    >>Kill |cRXP_ENEMY_Feltouched|r and |cRXP_ENEMY_Jaedenar's|r.
    .complete 76196,1 --15/15 Kill enemies in Jaedenar
    .mob Feltouched Trickster
    .mob Jaedenar Warrior
    .mob Jaedenar Scoundrel
    .mob Feltouched Conjurer
step
    .goto 77,36.14,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .turnin 76195 >>Turn in Countering Corruption
    .turnin 76196 >>Turn in Mercy or Misery
    .target Maiev Shadowsong
    .accept 76203 >>Accept Stepping into the Shadows
step
    .goto 77,36.14,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .complete 76203,1 --1/1 Speak with Maiev Shadowsong
    .skipgossip 202702,1
    .target Maiev Shadowsong
step
    #completewith Maiev Shadowsong1
    +Stay close to |cRXP_FRIENDLY_Maiev Shadowsong|r, leaving only to complete nearby objectives.
step
    .goto 77,36.18,56.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brazier|r.
    .complete 76203,2,1 --6/6 Felflame Braziers extinguished
step
    .goto 77,36.83,56.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brazier|r.
    .complete 76203,2,2 --6/6 Felflame Braziers extinguished
step
    .goto 77,37.07,55.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brazier|r.
    .complete 76203,2,3 --6/6 Felflame Braziers extinguished
step
    .goto 77,37.17,54.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brazier|r.
    .complete 76203,2,4 --6/6 Felflame Braziers extinguished
step
    .goto 77,37.92,54.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brazier|r.
    .complete 76203,2,5 --6/6 Felflame Braziers extinguished
step
    .goto 77,38.46,54.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brazier|r.
    .complete 76203,2,6 --6/6 Felflame Braziers extinguished
step
    #label Maiev Shadowsong1
    .goto 77,39,54.04,10,0
    .goto 77,38.85,54.36,10,0
    .goto 77,38.19,53.7,10,0
    .goto 77,38.05,53.68
    #title |cFFFCDC00Follow the Arrow|r
    .complete 76203,3 --1/1 Discover what lurks in the depths of Shadow Hold
    .timer 5, RP
step
    .goto 77,38.06,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .turnin 76203 >>Turn in Stepping into the Shadows
    .target Maiev Shadowsong
    .accept 76197 >>Accept A Glimpse of Terro
step
    .goto 77,37.85,52.77
    >>Kill |cRXP_ENEMY_Cultist Nethus|r
    .complete 76197,1 --1/1 Cultist Nethus slain
    .mob Cultist Nethus
step
    .goto 77,36.71,51.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .turnin 76197 >>Turn in A Glimpse of Terror
    .target Maiev Shadowsong
    .accept 76205 >>Accept Balancing the Scales
step
    .goto 77,36.68,51.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lysander Starshade|r
    .accept 76206 >>Accept Heart of the Issue
    .target Lysander Starshade
step
    #completewith Portals
    >>Kill |cRXP_ENEMY_Hel'nurathians|r
    .complete 76205,1,100 --Enemies slain in Shadow Hold (100%)
    .mob Hel'nurathian Cultist
    .mob Hel'nurathian Defender
    .mob Hel'nurathian Felmaw
step
    .goto 77,39.04,50.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r and kill the incoming enemies.
    .complete 76206,1,1 --4/4 Portals closed
step
    #completewith next
    #label Portal2NightElf
    .goto 77,39.47,49.63,5,0
    .goto 77,39.7,49.88,5,0
    .goto 77,39.89,50.01,5,0
    .goto 77,39.94,49.68,5,0
    .goto 77,39.69,49.68,5,0
    .goto 77,39.8,50.02,5,0
    .goto 77,39.95,49.85,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r and kill the incoming enemies.
    .complete 76206,1,2 --4/4 Portals closed
step
    #completewith Portal2NightElf
    .goto 77,41.16,48.34,50 >>Follow the Arrow
step
    #requires Portal2NightElf
    .goto 77,41.16,48.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r and kill the incoming enemies.
    .complete 76206,1,2 --4/4 Portals closed
step
    .goto 77,40.82,48.84,5,0
    .goto 77,40.87,49.31,5,0
    .goto 77,41.04,49.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r and kill the incoming enemies.
    .complete 76206,1,3 --4/4 Portals closed
step
    .goto 77,40.73,48.96,5,0
    .goto 77,40.42,47.5,10,0
    .goto 77,39.3,46.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r and kill the incoming enemies.
    .complete 76206,1,4 --4/4 Portals closed
step
    #loop
    .goto 77,40.42,47.5,10,0
    .goto 77,40.73,48.96,10,0
    .goto 77,41.04,49.59,10,0
    .goto 77,40.87,49.31,10,0
    .goto 77,40.82,48.84,10,0
    >>Kill |cRXP_ENEMY_Hel'nurathians|r
    .complete 76205,1 --Enemies slain in Shadow Hold (100%)
    .mob Hel'nurathian Cultist
    .mob Hel'nurathian Defender
    .mob Hel'nurathian Felmaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r and |cRXP_FRIENDLY_Arko'narin Starshade|r
    .turnin 76205 >>Turn in Balancing the Scales
    .goto 77,37.98,46.21
    .target +Maiev Shadowsong
    .turnin 76206 >>Turn in Heart of the Issue
    .accept 76207 >>Accept Wardens' Wrath
    .goto 77,37.93,46.26
    .target +Arko'narin Starshade
step
    .goto 77,38.47,45.7,10,0
    .goto 77,38.58,46.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .complete 76207,1 --1/1 Maiev signaled
    .skipgossipid 110454
    .target Maiev Shadowsong
step
    .goto 77,38.48,47.36,10,0
    .goto 77,38.11,47.37
    >>Defend |cRXP_FRIENDLY_Lysander|r
    .complete 76207,2 --1/1 Lysander protected
    .mob Hel'nurathian Eye
    .mob Hel'nurathian Felmaw
step
    .goto 12,47.41,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lysander Starshade|r
    .turnin 76207 >>Turn in Wardens' Wrath
    .target Lysander Starshade
step
    .goto 12,47.42,30.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .accept 76212 >>Accept A Mark For A Protector
    .target Maiev Shadowsong
step
    .goto 12,47.4,30.36
    #title |cFFFCDC00Follow the Arrow|r
    .complete 76212,1 --1/1 Take your position
step
    #completewith next
    #label marking ceremony
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 76212,2 --1/1 Witness the facial marking ceremony
step
    #completewith marking ceremony
    .goto 12,47.4,30.36
    .cast 421556 >>|cRXP_WARN_Use the|r [ExtraActionButton]
    .timer 81,RP
step
    #requires marking ceremony
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 76212,2 --1/1 Witness the facial marking ceremony
step
    #completewith next
    #label Mark For A Protector
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lysander Starshade|r
    .turnin 76212 >>Turn in A Mark For A Protector
    .target Lysander Starshade
step
    #EndIncludePrepGuide
    #completewith Mark For A Protector
    .goto 12,47.42,30.38
    .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Stormwind|r
step
    #requires Mark For A Protector
    .goto 84,49.37,86.76,2,0
    .goto 84,49.36,87.41,5,0
    .goto 84,48.92,86.78,5,0
    .goto 84,48.66,87.69,5,0
    .goto 84,49.42,86.83,5,0
    .goto 84,52.42,4.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lysander Starshade|r
    .turnin 76212 >>Turn in A Mark For A Protector
    .target Lysander Starshade
step
    .goto 84,52.59,3.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .accept 76213 >>Accept Honor of the Goddess
    .timer 28,RP
    .target Maiev Shadowsong
step
    .goto 84,52.59,3.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r |cRXP_WARN_after the roleplay|r.
    .turnin 76213 >>Turn in Honor of the Goddess
    .target Maiev Shadowsong
]])
--Gnome
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Gnome Heritage Armor
#displayname |cFF1EFF004|r - Gnome
#next a) Draenei Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,52.06,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 54402 >>Accept Shifting Gears
    .target Aysa Cloudsinger
step
    .goto 469,41.77,31.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r
    .turnin 54402 >>Turn in Shifting Gears
    .target Captain Tread Sparknozzle
    .accept 54576 >>Accept Gnomeregan's Finest
step
    .goto 469,40.28,38.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .complete 54576,3 --1/1 Speak with Cog Captain Winklespring
    .skipgossipid 50896
    .target Cog Captain Winklespring
step
    .goto 469,37.49,38.17,5,0
    .goto 469,38.19,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emaedi Autoblast|r |cRXP_WARN_inside the house on the second floor|r.
    .complete 54576,1 --1/1 Speak with Emaedi Autoblast
    .skipgossipid 4996
    .target Emaedi Autoblast
step
    .goto 469,37.46,38.1,5,0
    .goto 469,37.95,33.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzi Tinkerbow|r
    .complete 54576,2 --1/1 Speak with Fizzi Tinkerbow
    .skipgossipid 50895
    .target Fizzi Tinkerbow
step
    .goto 469,41.78,31.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r
    .turnin 54576 >>Turn in Gnomeregan's Finest
    .target Captain Tread Sparknozzle
    .accept 54577 >>Accept Shadowed Halls and Dusty Cogs
step
    .goto 27,31.18,38.02,10,0
    .goto 30,69.88,83.03,10,0
    .goto 30,56.49,81.13,10,0
    .goto 30,54.09,75.64,10,0
    .goto 30,53.88,14.98,10,0
    .goto 30,44.36,14.3
    #title |cFFFCDC00Follow the Arrow|r
    >>Take the elevator into Gnomeregan and enter the portal in the Workshop Entrance.
    .complete 54577,1 --1/1 Enter Gnomeregan through the Workshop Entrance
step
    .goto 1380,83.17,63.81,20,0
    .goto 1380,78.3,63.53,20,0
    .goto 1380,75.05,67.25,20,0
    .goto 1380,72.05,73.19,20,0
    .goto 1380,65.41,72.47,20,0
    .goto 1380,56.56,62.8,20,0
    .goto 1380,52.9,67.83,20,0
    .goto 1380,50.66,89.67,20,0
    .goto 1380,46.39,89.92,20,0
    .goto 1380,36.7,86.26,20,0
    .goto 1380,35.95,73.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Engine|r.
    *|cRXP_WARN_Dodge the hazards along the way|r
    .complete 54577,2 --1/1 Prototype Arcane Engine
step
    #completewith next
    #label A Tundra Conundrum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r
    .turnin 54577 >>Turn in Shadowed Halls and Dusty Cogs
    .target Captain Tread Sparknozzle
    .accept 54580 >>Accept A Tundra Conundrum
    .disablecheckbox
step
    #completewith A Tundra Conundrum
    .goto 1380,37.81,72.24
    .zone 469 >>Click on the |cRXP_PICK_Broken Teleporter|r
step
    #requires A Tundra Conundrum
    .goto 469,41.77,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r
    .turnin 54577 >>Turn in Shadowed Halls and Dusty Cogs
    .target Captain Tread Sparknozzle
    .accept 54580 >>Accept A Tundra Conundrum
step
    .goto 114,55.28,18.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r in the Borean Tundra(Northend)
    .turnin 54580 >>Turn in A Tundra Conundrum
    .target Cog Captain Winklespring
step
    .goto 114,55.32,18.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzi Tinkerbow|r
    .accept 54581 >>Accept Now With More Mechanical Fowl
    .target Fizzi Tinkerbow
step
    #loop
    .goto 114,60.31,21.08,30,0
    .goto 114,62.12,20.23,30,0
    .goto 114,63.06,19.3,30,0
    .goto 114,64.2,19.82,30,0
    .goto 114,64.41,22.12,30,0
    >>Kill |cRXP_ENEMY_Ironbound Brute|r and |cRXP_ENEMY_Ironbound Scrapthrower|r
    *Use the [ExtraActionButton] to deal additional damage.
    .complete 54581,1 --10/10 Ironbound Brute slain
    .mob Ironbound Brute
    .mob Ironbound Scrapthrower
step
    .goto 114,64.08,24.73
    >>Click on the Quest Turnin Pop-Up in your Questlog.
    .turnin 54581 >>Turn in Now With More Mechanical Fowl
    .accept 54582 >>Accept Smarter Than Your Average Trogg
step
    .goto 114,64.62,23.02
    >>Kill |cRXP_ENEMY_Krugg the Smart|r
    *Loot them for |T465876:0|t[|cRXP_LOOT_Broken Communication Device|r].
    .complete 54582,1 --1/1 Krugg the Smart slain
    .complete 54582,2 --1/1 Broken Communication Device
    .mob Krugg the Smart
step
    .goto 114,55.31,18.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzi Tinkerbow|r
    .turnin 54582 >>Turn in Smarter Than Your Average Trogg
    .target Fizzi Tinkerbow
    .accept 54579 >>Accept The Gnome Behind the Trogg
step
    .goto 114,55.28,18.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_RCV Control Switch|r
    .complete 54579,1 --1/1 RCV Control Switch
    .timer 12.5,RP
step
    .goto 114,55.31,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzi Tinkerbow|r after the roleplay.
    .turnin 54579 >>Turn in The Gnome Behind the Trogg
    .target Fizzi Tinkerbow
    .accept 54639 >>Accept A Signal in Storm Peaks
step
    .goto 114,55.18,18.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Plane|r.
    .complete 54639,1 --1/1 Jump in the First Squadron Prototype
    .timer 360,RP
    .target First Squadron Prototype
step
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 54639,2 --1/1 Reach the signal point
step
    .goto 120,37.60,60.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .turnin 54639 >>Turn in A Signal in Storm Peaks
    .target Cog Captain Winklespring
    .accept 54640 >>Accept Gnomercy!
step
    .goto 120,37.45,60.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tank|r |cRXP_WARN_[1]|r
    .complete 54640,1 --1/1 De-Shrinkify the Assault Tank
    .target Shrinkified Assault Tank
step
    .goto 120,37.45,60.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tank|r |cRXP_WARN_[2]|r
    .complete 54640,2 --1/1 Commandeer the Assault Tank
    .target Gnomeregan Assault Tank
step
    #loop
    .goto 120,38.23,59.93,40,0
    .goto 120,40.17,60.55,40,0
    .goto 120,42.49,59.35,40,0
    .goto 120,43.22,57.1,40,0
    .goto 120,42.66,54.85,40,0
    .goto 120,41.48,53.15,40,0
    .goto 120,39.53,53.8,40,0
    .goto 120,38.01,57.05,40,0
    >>Use |T135975:0|t[Rail Shot] and |T135265:0|t[Flame Spray] to kill |cRXP_ENEMY_Ironbound Invaders|r
    *Use |T2437249:0|t[Quick Repairs] to heal the tank.
    .complete 54640,3 --30/30 Ironbound Invader slain
    .mob Ironbound Invader
step
    .goto 120,56.12,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .turnin 54640 >>Turn in Gnomercy!
    .target Cog Captain Winklespring
    .accept 54850 >>Accept Operation: Troggageddon
step
    .goto 120,56.17,51.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Plane|r
    .complete 54850,1 --1/1 Jump in the First Squadron Prototype
    .target First Squadron Prototype
step
    .goto 120,37.43,43.02
    >>Use |T1141394:0|t1[Standard Issue Bomber Gun](1) to hit enemies in a cone in front of you, and |T136111:0|t[Buster Cannon Mk. II](2) to hit enemies in a targeted circle on the ground.
    .complete 54850,2,100 --Defeat Sparkspanner's Army (100%)
step
    #label EndIncludePrepGuide
    .goto 120,38.73,42.67
    >>Click on the Quest Turnin Pop-Up in your Questlog.
    .turnin 54850 >>Turn in Operation: Troggageddon
step
    .goto 120,56.13,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .accept 54641 >>Accept For Gnomeregan!
    .target Cog Captain Winklespring
step
    .goto 120,39.43,26.88
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 54641,1 --1/1 Enter the Halls of Stone
step
    .goto 1375,45.17,34.77,10,0
    .goto 1375,49.25,28.28,10,0
    .goto 1375,49.93,11.7
    >>Kill |cRXP_ENEMY_Smasher X900|r
    .complete 54641,2
step
    .goto 1375,50.11,12.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .turnin 54641 >>Turn in For Gnomeregan!
    .target Cog Captain Winklespring
    .accept 54642 >>Accept G.E.A.R. Up
step
    .goto 469,41.78,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r in Dun Morogh
    .turnin 54642 >>Turn in G.E.A.R. Up
    .target Captain Tread Sparknozzle
]])
--Draenei
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Draenei Heritage Armor
#displayname |cFF1EFF005|r - Draenei
#next a) Worgen Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,52.07,13.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 78068 >>Accept An Artificer's Appeal
    .target Aysa Cloudsinger
step
    >>Use |T1686574:0|t[Spare Hologem]
    .complete 78068,1 --1/1 Spare Hologem used (Optional)
    .use 210454
step
    .goto 103,54.78,79.83
    #title |cFFFCDC00Follow the Arrow|r
    .complete 78068,2 --1/1 Meet Romuul in the Exodar
step
    .goto 103,54.78,79.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .turnin 78068 >>Turn in An Artificer's Appeal
    .accept 78069 >>Accept Reviving Tradition
    .target Grand Artificer Romuul
step
    .goto 103,58.05,79.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r.
    .complete 78069,1 --1/1 Empyrium Filament
step
    .goto 103,51.26,74.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r.
    .complete 78069,2 --1/1 Hyperthermal Soldering Tool
step
    .goto 103,54.78,79.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .complete 78069,3 --1/1 Materials brought to Romuul
    .skipgossipid 114137
    .target Grand Artificer Romuul
step
    .isOnQuest 78069
    .goto 103,55.55,78.78
    .cast 3365 >>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
step
    .isOnQuest 78069
    .goto 103,54.72,78.81
    .cast 3365 >>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
step
    .isOnQuest 78069
    .goto 103,54.32,81.45
    .cast 3365 >>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
step
    .isOnQuest 78069
    .goto 103,53.97,80.18
    .cast 3365 >>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
step
    #label EndIncludePrepGuide
    .goto 103,53.82,78.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arkonite Generator|r in the middle.
    .complete 78069,4 --2/2 Arkonite Array connected
step
    .goto 103,54.78,79.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .turnin 78069 >>Turn in Reviving Tradition
    .target Grand Artificer Romuul
    .accept 78070 >>Accept Pressing Deadlines
step
    >>Use |T1686574:0|t[Spare Hologem]
    .complete 78070,1 --1/1 Spare Hologem used (Optional)
    .use 210454
step
    .goto 111,38.96,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ataanya|r
    .complete 78070,2 --1/1 Speak to Ataanya
    .skipgossipid 114139
    .timer 15,RP
    .target Ataanya
step
    .goto 111,38.94,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Artificer Ataanya|r
    .turnin 78070 >>Turn in Pressing Deadlines
    .target High Artificer Ataanya
    .accept 78071 >>Accept Rush Order
step
    .goto 111,37.95,46.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beruun|r
    .complete 78071,1 --1/1 Speak to Beruun
    .skipgossipid 114140
    .target Beruun
step
    .goto 108,40.51,25.07
    #title |cFFFCDC00Follow the Arrow|r
    .complete 78071,2 --1/1 Draenite miners located
step
    #loop
    .goto 108,40.63,25.2,3,0
    .goto 108,40.69,25.31,3,0
    .goto 108,40.57,25.36,3,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r
    .complete 78071,3 --3/3 Draenite Crates loaded
step
    .goto 108,40.64,25.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragments|r
    .complete 78071,4 --1/1 Draenite Fragments gathered
    .skipgossipid 114147
step
    .goto 111,76.12,47.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crystalsmith Laharu|r
    .complete 78071,5 --1/1 Draenite delivered to crystalsmiths
    .skipgossipid 120519
    .target Crystalsmith Laharu
step
    .goto 111,38.94,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Artificer Ataanya|r
    .complete 78071,7 --1/1 Work orders brought to Ataanya
    .target High Artificer Ataanya
step
    .goto 111,37.96,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Beruun|r
    .turnin 78071 >>Turn in Rush Order
    .target Apprentice Beruun
    .accept 78072 >>Accept An Old Wound
step
    .goto 108,37.5,64.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soultender Nemuraan|r
    .complete 78072,1 --1/1 Speak to the Auchenai soulpriests
    .skipgossipid 113996
    .skipgossipid 119948
    .timer 13,RP
    .target Soultender Nemuraan
step
    .goto 108,37.50,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Maladaar|r
    .turnin 78072 >>Turn in An Old Wound
    .target Exarch Maladaar
    .accept 78073 >>Accept Lingering Scars
step
    .goto 108,38.18,69.71
    >>Use the |cRXP_WARN_[ExtraActionButton]|r in the designated area |cRXP_WARN_on the elevated platform|r.
    .complete 78073,2 --1/1 Commune with Exarch Larohir
step
    #loop
    .goto 108,38.71,70.01,12,0
    .goto 108,38.17,70.17,12,0
    .goto 108,38.25,69.61,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Victims|r
    .complete 78073,3 --8/8 Shattrath Victims returned to rest
    .target Shattrath Victim
step
    .goto 108,38.10,69.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vase|r
    .complete 78073,4 --1/1 Exarch Larohir calmed
step
    .goto 108,42.35,67.79
    >>Use the |cRXP_WARN_[ExtraActionButton]|r in the designated area.
    .complete 78073,5 --1/1 Commune with Exarch Kelios
step
    #loop
    .goto 108,42.26,67.86,5,0
    .goto 108,42.65,68.12,5,0
    >>Keep lighting the candles until all go out.
    .complete 78073,6 --1/1 Light all Karabor Prayer Candles at once
step
    .goto 108,42.34,67.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vase|r
    .complete 78073,7 --1/1 Exarch Kelios calmed
step
    .goto 108,41.53,61.88
    >>Use the |cRXP_WARN_[ExtraActionButton]|r in the designated area.
    .complete 78073,8 --1/1 Commune with Restalaan
    .timer 5.5,RP
step
    .goto 108,41.51,61.87
    >>Kill |cRXP_ENEMY_Memories of Death|r.
    .complete 78073,9 --2/2 Memories of Death slain
    .mob Memories of Death
step
    .goto 108,41.46,61.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vase|r
    .complete 78073,10 --1/1 Restalaan calmed
step
    .goto 108,41.60,61.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Maladaar|r
    .turnin 78073 >>Turn in Lingering Scars
    .target Exarch Maladaar
    .accept 78074 >>Accept To See Clearly
step
    .goto 108,37.09,62.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vase|r
    .complete 78074,2 --1/1 Request spoken to Hataaru's Ashes
    .skipgossipid 114044
step
    .goto 108,36.84,62.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r
    .complete 78074,3 --1/1 Exarch Hataaru's Artificing Lens
step
    .goto 111,39.06,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ High Artificer Ataanya|r
    .complete 78074,4 --1/1 Lens taken to Ataanya in Shattrath
    .skipgossipid 120282
    .timer 33,RP
    .target High Artificer Ataanya
step
    .goto 111,39.06,46.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Artificer Ataanya|r
    .turnin 78074 >>Turn in To See Clearly
    .target High Artificer Ataanya
    .accept 78075 >>Accept Moving Past
step
    >>Use |T1686574:0|t[Spare Hologem]
    .complete 78075,1 --1/1 Spare Hologem used (Optional)
    .use 210454
step
    .goto 103,55.36,79.03
    #title |cFFFCDC00Follow the Arrow|r
    .complete 78075,2 --1/1 Return to Romuul in the Exodar
step
    .goto 103,55.36,79.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .turnin 78075 >>Turn in Moving Past
    .target Grand Artificer Romuul
step
    .goto 103,53.97,76.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Hatuun|r
    .accept 78076 >>Accept Emergency Efforts
    .target Chieftain Hatuun
step
    .goto 103,53.68,75.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mana Ray|r
    .complete 78076,1 --1/1 Argussian Mana Ray mounted
    .timer 68,RP
    .target Argussian Mana Ray
step
    .goto 106,52.17,74.11
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 78076,2 --1/1 Ride to Bloodmyst Isle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r, |cRXP_FRIENDLY_Arzaal|r and |cRXP_FRIENDLY_Chieftain Hatuun|r
    .turnin 78076 >>Turn in Emergency Efforts
    .goto 106,52.02,75.59
    .target +Prophet Velen
    .accept 78078 >>Accept Assessing the Enemy
    .goto 106,51.92,75.68
    .target +Arzaal
    .accept 78077 >>Accept Beneath the Skin
    .goto +106,51.88,75.54
    .target Chieftain Hatuun
step
    #completewith Pitted Bones
    >>Kill |cRXP_ENEMY_Infected Nightsaber|r and |cRXP_ENEMY_Corrupted Grizzly|r.
    *Loot them for |T133795:0|t[|cRXP_LOOT_Pitted Bones|r].
    .complete 78077,1 --8/8 Pitted Bones
    .mob Infected Nightsaber
    .mob Corrupted Grizzly
step
    .goto 106,49.93,77.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totems|r
    .complete 78078,1,1 --6/6 Satyr Totem
step
    .goto 106,49.43,75.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totems|r
    .complete 78078,1,2 --6/6 Satyr Totem
step
    .goto 106,49.86,71.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totems|r
    .complete 78078,1,3 --6/6 Satyr Totem
step
    .goto 106,52.38,68.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totems|r
    .complete 78078,1,4 --6/6 Satyr Totem
step
    .goto 106,54.7,72.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totems|r
    .complete 78078,1,5 --6/6 Satyr Totem
step
    #label Pitted Bones
    .goto 106,54.48,74.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totems|r
    .complete 78078,1,6 --6/6 Satyr Totem
step
    #loop
    .goto 106,53.58,79.42,30,0
    .goto 106,51.87,78.46,30,0
    .goto 106,49.8,79.59,30,0
    .goto 106,50.25,73.8,30,0
    .goto 106,53.01,71.25,30,0
    >>Kill |cRXP_ENEMY_Infected Nightsaber|r and |cRXP_ENEMY_Corrupted Grizzly|r.
    *Loot them for |T133795:0|t[|cRXP_LOOT_Pitted Bones|r].
    .complete 78077,1 --8/8 Pitted Bones
    .mob Infected Nightsaber
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Hatuun,|r |cRXP_FRIENDLY_Arzaal|r and |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 78077 >>Turn in Beneath the Skin
    .goto 106,51.87,75.51
    .target +Chieftain Hatuun
    .turnin 78078 >>Turn in Assessing the Enemy
    .goto 106,51.92,75.68
    .target +Arzaal
    .accept 78079 >>Accept Excision
    .goto 106,52.02,75.59
    .target +Prophet Velen
step
    .goto 106,43.85,77.68
    #title |cFFFCDC00Follow the Arrow|r
    .complete 78079,1 --1/1 Meet Velen and Hatuun in Nazzivian
step
    .goto 106,41.6,77.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Evidence|r.
    .complete 78079,2,1 --3/3 Man'ari evidence found
step
    .goto 106,35.72,80.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Evidence|r.
    .complete 78079,2,2 --3/3 Man'ari evidence found
step
    .goto 106,36.53,71.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Evidence|r.
    .complete 78079,2,3 --3/3 Man'ari evidence found
step
    #completewith next
    #label Excision
    .goto 106,39.47,67.78,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 78079 >>Turn in Excision
    .target Prophet Velen
step
    #completewith Excision
    #hidewindow
    .goto 106,42.27,36.85,670 >>Follow the Arrow
step
    #requires Excision
    .goto 106,42.27,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 78079 >>Turn in Excision
    .target Prophet Velen
step
    .goto 106,42.22,36.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arzaal|r
    .accept 78080 >>Accept At the Source
    .timer 39.5,RP
    .target Arzaal
step
    .goto 106,41.47,33.07
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 78080,1 --1/1 Source of fel revealed
step
    #completewith next
    #label Source of fel
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 78080,2 --1/1 Romuul called for aid
step
    #completewith Source of fel
    .goto 106,41.47,33.07
    .cast 428008 >>Use the |cRXP_WARN_[ExtraActionButton]|r
    .timer 20,RP
step
    #requires Source of fel
    .goto 106,41.47,33.07
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 78080,2 --1/1 Romuul called for aid
step
    .goto 106,41.47,33.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velen|r
    .complete 78080,3 --1/1 Speak to Velen
    .skipgossipid 114169
    .target Velen
step
    .goto 106,41.84,32.20
    >>Defend |cRXP_FRIENDLY_Velen|r.
    .complete 78080,4 --1/1 Generator defended
    .skipgossipid 114169
    .mob Axxarien Fleshrender
    .mob Axxarien Ragehide
    .mob Sironas
step
    .goto 106,41.47,33.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 78080 >>Turn in At the Source
    .target Prophet Velen
    .accept 78081 >>Accept Pain Recedes
step
    >>Use |T1686574:0|t[Spare Hologem]
    .complete 78081,1 --1/1 Spare Hologem used (Optional)
    .use 210454
step
    .goto 103,54.72,80.66
    #title |cFFFCDC00Follow the Arrow|r
    .complete 78081,2 --1/1 Return to Velen in the Exodar
step
    .goto 103,54.72,80.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 78081 >>Turn in Pain Recedes
    .target Prophet Velen
    .accept 78082 >>Accept A Burden Shared
step
    .goto 103,55.47,79.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .complete 78082,1,1 --10/10 Memory Stones collected
    .skipgossipid 114201
    .target Grand Artificer Romuul
step
    .goto 103,55.62,78.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Artificer Ataanya|r
    .complete 78082,1,2 --10/10 Memory Stones collected
    .skipgossipid 114202
    .target High Artificer Ataanya
step
    .goto 103,57.32,92.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .complete 78082,1,3 --10/10 Memory Stones collected
    .skipgossipid 114215
    .target Vindicator Boros
step
    .goto 103,57.18,93.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arzaal|r
    .complete 78082,1,4 --10/10 Memory Stones collected
    .skipgossipid 114205
    .target Arzaal
step
    .goto 103,54.7,86.95,15,0
    .goto 103,47.73,81.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Ishanah|r
    .complete 78082,1,5 --10/10 Memory Stones collected
    .skipgossipid 114214
    .target High Priestess Ishanah
step
    .goto 103,53.74,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Hatuun|r
    .complete 78082,1,6 --10/10 Memory Stones collected
    .skipgossipid 114204
    .target Chieftain Hatuun
step
    .goto 103,53.86,83.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .complete 78082,1,7 --10/10 Memory Stones collected
    .skipgossipid 122500
    .target Prophet Velen
step
    .goto 103,60.12,74.6,15,0
    .goto 103,57.18,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Naielle|r
    .complete 78082,1,8 --10/10 Memory Stones collected
    .skipgossipid 114209
    .target Exarch Naielle
step
    .goto 103,68.34,80.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .complete 78082,1,9 --10/10 Memory Stones collected
    .skipgossipid 114213
    .target Farseer Nobundo
step
    .goto 103,67.88,85.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .complete 78082,1,10 --10/10 Memory Stones collected
    .skipgossipid 114206
    .target Akama
step
    .goto 103,64.39,87.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Anchorite Almonen|r
    .complete 78082,2 --1/1 Personal Memory Stone created
    .skipgossipid 119877
    .skipgossipid 119887
    .target Grand Anchorite Almonen
step
    .goto 103,65.15,87.66
    >>Use the |cRXP_WARN_[ExtraActionButton]|r in the designated area.
    .complete 78082,3 --1/1 Memory Stones dissolved
step
    .goto 103,64.40,87.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Anchorite Almonen|r
    .turnin 78082 >>Turn in A Burden Shared
    .target Grand Anchorite Almonen
    .accept 78083 >>Accept Our Path Forward
step
    .goto 103,54.74,80.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .complete 78083,1 --1/1 Ask Velen to begin the ceremony
    .skipgossipid 114223
    .target Prophet Velen
step
    .goto 103,54.74,80.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 78083 >>Turn in Our Path Forward
    .target Prophet Velen
]])
--Worgen
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Worgen Heritage Armor
#displayname  |cFF1EFF006|r - Worgen
#next a) Void Elf Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,52.06,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 54976 >>Accept The Shadow of Gilneas
    .target Aysa Cloudsinger
step
    .goto 84,52.88,14.66,10,0
    .goto 84,82.50,28.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r
    .turnin 54976 >>Turn in The Shadow of Gilneas
    .target Princess Tess Greymane
step
    .goto 84,82.35,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mia Greymane|r
    .accept 54977 >>Accept Into Duskwood
    .target Mia Greymane
step
    #title |cFFFCDC00NPC Patrols|r
    .goto 47,18.1,57.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .turnin 54977 >>Turn in Into Duskwood
    .target Vassandra Stormclaw
    .accept 54980 >>Accept Bane of the Nightbane
step
    .goto 47,52.01,61.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Meat|r
    .complete 54980,1 --1/1 Pungent Meat placed (Optional)
step
    .goto 47,52.01,61.63
    >>Kill |cRXP_ENEMY_Bloodeyes|r
    *Use the [ExtraActionButton] when it's available.
    .complete 54980,2 --1/1 Bloodeyes subdued
    .mob Bloodeyes
step
    .goto 47,18.09,57.23
    #title |cFFFCDC00Follow the Arrow|r
    .complete 54980,3 --1/1 Bloodeyes brought to Raven Hill
step
    .goto 47,18.09,57.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .turnin 54980 >>Turn in Bane of the Nightbane
    .target Vassandra Stormclaw
    .accept 54981 >>Accept Cry to the Moon
    .accept 54982 >>Accept The Spirit of the Hunter
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mistfang Alpha|r
    *Loot them for |T133721:0|t[|cRXP_LOOT_Bloodstained Fangs|r].
    .complete 54982,1 --6/6 Bloodstained Fangs
    .mob Mistfang Alpha
step
    .goto 47,82.36,33.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flower|r.
    .complete 54981,1 --1/1 Elune's Grace
step
    #label EndIncludePrepGuide
    #loop
    .goto 47,77.27,35.49,15,0
    .goto 47,77.3,30.53,15,0
    .goto 47,81.7,33.46,15,0
    >>Kill |cRXP_ENEMY_Mistfang Alpha|r
    *Loot them for |T133721:0|t[|cRXP_LOOT_Bloodstained Fangs|r].
    .complete 54982,1 --6/6 Bloodstained Fangs
    .mob Mistfang Alpha
step
    .goto 47,46.39,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .turnin 54981 >>Turn in Cry to the Moon
    .target Vassandra Stormclaw
    .turnin 54982 >>Turn in The Spirit of the Hunter
    .accept 54983 >>Accept Waking a Dreamer
step
    .goto 47,46.39,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .complete 54983,1 --1/1 Speak with Vassandra Stormclaw
    .skipgossipid 51037
    .target Vassandra Stormclaw
step
    .goto 47,46.60,36.98
    >>Defend |cRXP_FRIENDLY_Vassandra|r from the attackers.
    .complete 54983,2 --1/1 Defend Vassandra during the ritual
    .mob Spirit of Fury
step
    .goto 47,46.58,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goldrinn|r
    .turnin 54983 >>Turn in Waking a Dreamer
    .target Goldrinn
    .accept 54984 >>Accept Let Sleeping Wolves Lie
step
    .isOnQuest 54984
    .goto 47,46.57,35.31
    .enterScenario 1732 >>Go trough the Portal
step
    .isInScenario 1732
    #completewith next
    #label Wake Tess
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 4186,1 --Wake Tess
step
    #completewith Wake Tess
    .goto 1577,65.89,20.92
    .gossipoption 50360 >>Talk to |cRXP_FRIENDLY_Princess Tess Greymane|r |cRXP_WARN_unmounted|r.
    .timer 27,RP
    .target Princess Tess Greymane
step
    #requires Wake Tess
    .isInScenario 1732
    .goto 1577,64.89,20.05
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 4186,1 --Wake Tess
step
    .isInScenario 1732
    #loop
    .goto 1577,61.56,17.31,20,0
    .goto 1577,55.11,16.28,20,0
    .goto 1577,57.25,18.2,20,0
    .goto 1577,57.05,25.14,20,0
    .goto 1577,60.77,28.22,20,0
    .goto 1577,57.96,39.49,20,0
    >>Kill |cRXP_ENEMY_Forsakens|r
    *|TInterface/cursor/crosshair/interact.blp:17|tClick on the |cRXP_PICK_Plague Throwers|r
    .scenario 4187,1,100 --Fight back the Forsaken
    .mob Plague Thrower
    .mob Phantasmal Stalker
    .mob Lumbering Nightmare
step
    .isInScenario 1732
    .goto 1577,60.07,40.7
    >>Kill |cRXP_ENEMY_Dark Ranger Thyala|r |cRXP_WARN_dodge the horses|r.
    .scenario 4188,1
    .mob Dark Ranger Thyala
step
    .isInScenario 1732
    #loop
    .goto 1577,68.38,45.32,20,0
    .goto 1577,70.49,55.5,20,0
    .goto 1577,69.68,64.6,20,0
    .goto 1577,66.22,63.61,20,0
    .goto 1577,66.51,74.12,15,0
    .goto 1577,66.83,79.07,10,0
    >>Pursue |cRXP_ENEMY_Nathanos Blightcaller|r
    *Each time you encounter him, kill his minions to advance.
    .scenario 4189,1
    .mob Phantasmal Stalker
step
    .isInScenario 1732
    .goto 1577,58.59,68.1
    >>Kill |cRXP_ENEMY_Nathanos Blightcaller|r
    .scenario 4190,1
    .mob Nathanos Blightcaller
step
    .goto 1577,60.61,71.12,10,0
    .goto 1577,53.29,82.97,20,0
    .goto 1577,40.35,82.07,15,0
    .goto 1577,33.55,73.67,15,0
    .goto 1577,34.05,66.14
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 4191,1
step
    .goto 1577,33.95,66.3
    >>Kill |cRXP_ENEMY_Essence of Rage|r
    .complete 54984,1 --Guide Tess through the Emerald Dream
    .mob Essence of Rage
step
    #completewith next
    #label The New Guard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r
    .turnin 54984 >>Turn in Let Sleeping Wolves Lie
    .target Princess Tess Greymane
    .accept 54990 >>Accept The New Guard
    .disablecheckbox
step
    #completewith The New Guard
    .goto 1577,33.65,67.84
    .zone 47 >>Click on the Portal
step
    #requires The New Guard
    .goto 47,46.34,37.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r
    .turnin 54984 >>Turn in Let Sleeping Wolves Lie
    .target Princess Tess Greymane
    .accept 54990 >>Accept The New Guard
step
    .goto 84,82.50,28.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r
    .complete 54990,1 --1/1 Speak with Tess at Stormwind Keep
    .skipgossipid 49931
    .timer 15,RP
    .target Tess
step
    .goto 84,82.51,27.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r |cRXP_WARN_after the roleplay|r.
    .turnin 54990 >>Turn in The New Guard
    .target Princess Tess Greymane
]])
--Void Elf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Void Elf Heritage Armor
#displayname |cFF1EFF007|r - Void Elf
#next a) Lightforged Draenei Heritage Armor
#chapter

<< Allianc

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 84 >>Go to Stormwind
step
    .goto 84,50.7,8.44
    .zone 971 >>Click on the |cRXP_PICK_Rift to Telogrus|r
step
    .goto 971,28.53,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 49928 >>Turn in Heritage of the Void
    .target Alleria Windrunner
]])
--Lightforged Draenei
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Lightforged Draenei Heritage Armor
#displayname |cFF1EFF008|r - Lightforged Draeanei
#next a) Dark Iron Dwarf Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 84 >>Go to Stormwind
step
    .goto 84,48.08,11.13
    .zone 940 >>Click on the |cRXP_PICK_Lightforged Beacon|r
step
    .goto 940,49.21,43.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r
    .target Captain Fareeya
    .turnin 49782 >>Turn in Heritage of the Lightforged
]])
--Dark Iron Dwarf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Dark Iron Dwarf Heritage Armor
#displayname |cFF1EFF009|r - Dark Iron Dwarf
#next a) Kul Tiran Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    #completewith Heritage of the
    .goto 84,49.73,10.66
    >>Click on the |cRXP_PICK_Mole Machine to Shadowforge City.|r
    .target Mole Machine to Shadowforge City
step
    #completewith Heritage of the
    >>Use the |T1786409:0|t[Mole Machine] to Shadowforge City.
    .use 265225
step
    #label Heritage of the
    .goto 971,28.53,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 51483 >>Turn in Heritage of the Dark Iron
    .target Alleria Windrunner
]])
--Kul Tiran
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Kul Tiran Heritage Armor
#displayname |cFF1EFF0010|r - Kul Tiran
#next a) Mechagnome Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 1161 >>Go to Boralus
step
    .goto 1161,43.94,62.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine Proudmoore|r
    .turnin 53722 >>Turn in Heritage of the Kul Tiran
    .target Katherine Proudmoore
]])
--Mechagnome
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Mechagnome Heritage Armor
#displayname |cFF1EFF0011|r - Mechagnome
#next a) EarthenDwarf Heritage Armor
#chapter

<< Alliance

step
    #label StartIncludePrepGuide
    #completewith Heritage of the Mechagnome
    .zone 84 >>Go to Stormwind
step
    #completewith Heritage of the Mechagnome
    .goto 84,48.47,8.65
    .zone 1573 >>Step on teleporter to Mechagnome.
step
    #label Heritage of the Mechagnome
    .goto 1573,18.67,67.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r
    .turnin 58436 >>Turn in Heritage of the Mechagnome
    .target Prince Erazmin
]])
--EarthenDwarf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) EarthenDwarf Heritage Armor
#displayname |cFF1EFF007|r - Earthen Dwarf
#chapter

<< Alliance

step
    >>Log into a level 50+ Earthen character to get this quest when you enter Dornogal.
    .accept 82771 >>Accept Heritage of the Earthen
step
    #completewith next
    #label Upload Experiences
    .goto 2339,30.48,59.54,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Console|r.
    .complete 82771,1 --Upload Experiences
step
    #completewith Upload Experiences
    .goto 2339,29.24,59.69,25 >>Enter the Building
step
    .goto 2339,29.24,59.69
    #requires Upload Experiences
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Console|r.
    .complete 82771,1 --Upload Experiences
step
    .goto 2339,28.91,59.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 82771 >>Turn in Heritage of the Earthen
    .target Dawn
]])
--Orc
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Orc Heritage Armor
#displayname |cFF1EFF001|r - Orc
#next a) Undead Heritage Armor
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    .goto 85,37.77,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 73703 >>Accept A Summon to Orgrimmar
    .target Ji Firepaw
step
    #completewith next
    #label A Summon to Orgrimmar
    .goto 85,38.65,80.03,5,0
    .goto 85,50.02,76.06,5,0
    .goto 85,49.89,74.64,5,0
    .goto 85,49.33,73.9,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 73703 >>Turn in A Summon to Orgrimmar
    .accept 72462 >>Accept A People in Need of Healing
    .target Eitrigg
step
    #completewith A Summon to Orgrimmar
    .goto 85,49.21,72.28,20 >>Enter Grommash Hold
step
    #requires A Summon to Orgrimmar
    .goto 85,49.21,72.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 73703 >>Turn in A Summon to Orgrimmar
    .accept 72462 >>Accept A People in Need of Healing
    .target Eitrigg
step
    .goto 85,49.26,73.78,5,0
    .goto 85,49.99,74.61,5,0
    .goto 85,49.94,75.75,5,0
    .goto 85,51.15,78.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 72462,1 --1/1 Portal to Alterac Valley taken
    .timer 107,RP
step
    .isOnQuest 72462
    .enterScenario 2137 >>Enter the scenario
step
    .isInScenario 2137
    .goto 2162,48.83,83.96,15,0
    .goto 2162,48.73,86.09,15,0
    .goto 2162,47.8,86.44,15,0
    .goto 2162,47.51,86.19,15,0
    .goto 2162,47.1,86.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Drek'Thar|r
    .scenario 5388,2
    .skipgossipid 108255
    .skipgossipid 108254
    .target Farseer Drek'Thar
step
    .isInScenario 2137
    .goto 2162,47.32,86.35
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 5388,1
    .target Eitrigg
step
    .isInScenario 2137
    .goto 2162,47.32,86.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totem|r
    .scenario 5389,2,1
    .target Totem of Water
step
    .isInScenario 2137
    .goto 2162,47.09,86.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totem|r
    .scenario 5389,2,2
    .target Totem of Air
step
    .isInScenario 2137
    .goto 2162,47.26,87.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totem|r
    .scenario 5389,2,3
    .target Totem of Earth
step
    .isInScenario 2137
    .goto 2162,47.54,87.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Totem|r
    .scenario 5389,2,4
    .target Totem of Fire
step
    .isInScenario 2137
    .goto 2162,47.11,86.98
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 5389,1
step
    .isInScenario 2137
    .goto 2162,47.11,86.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Drek'Thar|r
    .scenario 5390,1,1
    .skipgossipid 107861
    .timer 15,RP
    .target Farseer Drek'Thar
step
    .isInScenario 2137
    .goto 2162,47.41,86.84
    >>Kill |cRXP_ENEMY_Duros|r and |cRXP_ENEMY_Drakan|r.
    .timer 20,RP
    .scenario 5390,2
    .scenario 5390,3
    .mob Duros
    .mob Drakan
step
    .isInScenario 2137
    #loop
    .goto 2162,47.1,86.58,10,0
    .goto 2162,47.31,86.35,10,0
    .goto 2162,47.52,87.32,10,0
    .goto 2162,47.26,87.3,10,0
    .goto 2162,47.41,86.84,10,0
    >>Kill the |cRXP_ENEMY_Totems|r and then the |cRXP_ENEMY_Elemental Projection.|r
    .scenario 5396,1
    .mob Elemental Projection
step
    .isInScenario 2137
    .goto 2162,47.42,86.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r.
    .scenario 5422,1
    .skipgossipid 107865
    .target Thrall
step
    .isInScenario 2137
    >>Use the ExtraActionButton.
    .scenario 5422
step
    .goto 85,54.37,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .complete 72462,2 --1/1 Complete Scenario "The Future of Our People"
    .target Aggra
step
    .goto 85,54.31,78.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .turnin 72462 >>Turn in A People in Need of Healing
    .accept 72464 >>Accept The Kosh'harg
    .target Aggra
step
    #completewith next
    #label Farseer Aggralan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .complete 72464,2 --1/1 Talk to Farseer Aggralan to begin the Om'gora
    .target Farseer Aggralan
step
    #completewith Farseer Aggralan
    .goto 85,53.2,78.96,10 >>Leave the building
step
    #requires Farseer Aggralan
    .goto 1,52.21,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .complete 72464,2 --1/1 Talk to Farseer Aggralan to begin the Om'gora
    .skipgossipid 108548
    .target Farseer Aggralan
step
    .goto 1,52.20,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .turnin 72464 >>Turn in The Kosh'harg
    .target Farseer Aggralan
step
    .goto 1,52.20,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .turnin 72464 >>Turn in The Kosh'harg
    .target Farseer Aggralan
    .accept 72465 >>Accept The Blessing of the Land
    .accept 72476 >>Accept The Blessing of the Ancestors
    .accept 72467 >>Accept The Blessing of the Clan
step
    .goto 1,53.54,42.61,10,0
    .goto 1,53.91,42.89,10,0
    .goto 1,54.01,42.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thega Graveblade|r.
    *|cRXP_WARN_The clan can be changed at a later time if you want|r.
    .complete 72467,1 --1/1 Clan Chosen
    .skipgossipid 107984
    .target Thega Graveblade
step
    .goto 1,52.21,42.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .turnin 72467 >>Turn in The Blessing of the Clan
    .target Farseer Aggralan
step
    .goto 1,52.32,42.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 74581 >>Accept The Long Knives
    .target Eitrigg
step
    .goto 1,50.73,42.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Torka|r
    .turnin 72476 >>Turn in The Blessing of the Ancestors
    .target Cook Torka
    .accept 74374 >>Accept An Important Heirloom
step
    .goto 1,50.76,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arugi|r and learn cooking.
    .complete 74374,2 --Cooking Learned
    .target Arugi
step
    .goto 1,51.67,42.36,10,0
    .goto 1,51.83,41.97,10,0
    .goto 1,51.66,41.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Book|r.
    .complete 74374,1 --1/1 Old Cookbook Collected
step
    .goto 1,51.83,41.97,10,0
    .goto 1,50.75,42.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Torka|r
    .turnin 74374 >>Turn in An Important Heirloom
    .target Cook Torka
    .accept 72477 >>Accept Orcish Groceries
step
    .goto 1,50.78,42.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Book|r.
    .complete 72477,1 --1/1 "Spoons and Forks" Read
step
    .goto 1,50.72,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nula the Butcher|r
    .complete 72477,10 --3/3 Fresh Talbuk Steak
    .buy 202027,3
    .skipgossipid 108370
    .target Nula the Butcher
step
    .goto 1,51.10,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suja|r
    .complete 72477,6 --3/3 Isle Lemon
    .complete 72477,7 --3/3 Suja's Sweet Salt
    .complete 72477,4 --2/2 Un'goro Coconut
    .buy 202029,3
    .buy 202707,2
    .buy 204793,3
    .target Suja
step
    #completewith next
    #label Durotar Coast Crab
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crabs|r
    .complete 72477,2 --2/2 Durotar Coast Crab
    .target Escaped Crab
step
    #completewith Durotar Coast Crab
    .goto 1,51.39,44.19
    .cast 6478 >>Click on the |cRXP_PICK_Crate|r
step
    #requires Durotar Coast Crab
    #loop
    .goto 1,51.38,44.18,15,0
    .goto 1,51.08,43.86,15,0
    .goto 1,51.34,43.44,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crabs|r
    .complete 72477,2 --2/2 Durotar Coast Crab
    .target Escaped Crab
step
    .goto 1,51.58,43.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgar|r
    .complete 72477,5 --3/3 Southfury Salmon
    .buy 202028,5
    .target Razgar
step
    .goto 1,51.30,42.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyl'kahn|r
    .complete 72477,11 --1/1 Keg of Ancestral Ale
    .skipgossipid 108056
    .target Kyl'kahn
step
    .goto 1,50.84,41.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far'kul Flametongue|r
    .complete 72477,9 --3/3 Zandali Piri Piri
    .complete 72477,8 --3/3 Ground Gorgrond Pepper
    .complete 72477,3 --2/2 Farahlon Fenugreek
    .skipgossipid 108410
    .buy 202706,3
    .buy 202030,3
    .buy 202031,2
    .target Far'kul Flametongue
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r |cRXP_WARN_next to you.|r
    .turnin 72477 >>Turn in Orcish Groceries
    .target Durak
    .accept 74415 >>Accept A Worthy Offering
step
    .goto 1,40.80,26.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Skeleton|r
    .complete 72465,1 --1/1 Find the Spirit of Thunder Ridge
step
    .goto 1,40.59,26.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Spirit of Thunder Ridge|r
    .turnin 72465 >>Turn in The Blessing of the Land
    .target The Spirit of Thunder Ridge
    .accept 72466 >>Accept The Spirit of Thunder Ridge
step
    #loop
    .goto 1,40.84,30.71,25,0
    .goto 1,40.33,27.71,25,0
    .goto 1,39.1,28.21,25,0
    .goto 1,38.89,26.87,25,0
    .goto 1,38.81,25.44,25,0
    .goto 1,39.49,24.31,25,0
    .goto 1,42.98,23.59,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seeds|r in the water.
    *|cRXP_WARN_Kill spawning |cRXP_ENEMY_Mud Elemental|r|r
    .complete 72466,1 --8/8 Ancient Seed
    .mob Mud Elemental
    .mob Eroded Stone Elemental
    .mob Flood Elemental
step
    .goto 1,40.48,26.90
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72466,2 --1/1 Return to the Ancient Skeleton
step
    .goto 1,40.60,26.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_SKeleton|r
    .complete 72466,3 --1/1 Seeds Planted in Ancient Skeleton
    .target The Spirit of Thunder Ridge
step
    .goto 1,52.21,42.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .turnin 72466 >>Turn in The Spirit of Thunder Ridge
    .target Farseer Aggralan
step
    .goto 1,50.79,42.69
    >>Stand near the open fire and press the macro "In the Active Items Frame" to open cooking.
    *Cook the following:
    .complete 74415,3 --2/2 Curried Coconut Crab Cooked
    .complete 74415,1 --3/3 Grilled Southfury Salmon Cooked
    .complete 74415,2 --3/3 Seared Spicy Talbuk Steak Cooked
    .macro Cooking,4620671 >>/use Cooking
step
    .goto 1,50.79,42.69
    >>Stand near the open fire and press the macro "In the Active Items Frame" to open cooking.
    *Cook |T2066013:0|t[Feast for the Ancestors]
    .complete 74415,4 --1/1 Feast for the Ancestors Cooked
    .macro Cooking,4620671 >>/use Cooking
step
    .goto 1,53.13,45.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Feast|r
    .complete 74415,5 --1/1 Feast for the Ancestors Placed
step
    .goto 461,45.20,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .turnin 74581 >>Turn in The Long Knives
    .target Kaltunk
    .accept 72474 >>Accept Tracking a Killer
step
    .goto 461,43.4,70.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karranisha|r
    .complete 72474,1,1 --5/5 Clues found
    .skipgossipid 108002
    .target Karranisha
step
    .goto 461,46.01,63.39
    >>Stand on the waypoint location.
    .complete 72474,1,2 --5/5 Clues found
    .target Dead Peon
step
    .goto 461,49.98,59.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag|r |cRXP_WARN_twice|r.
    .accept 72463 >>Accept Galgar's Cactus Apple Surprise...
    .complete 72463,1 --1/1 Bag of Cactus Apples
    .complete 72474,1,3 --5/5 Clues found
step
    .goto 461,54.25,62.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Footprints|r.
    .complete 72474,1,4 --5/5 Clues found
    .skipgossipid 108010
step
    .goto 461,52.42,68.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrified Peon|r
    .complete 72474,1,5 --5/5 Clues found
    .skipgossipid 108005
    .target Terrified Peon
step
    .goto 461,45.13,68.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .turnin 72474 >>Turn in Tracking a Killer
    .target Kaltunk
    .accept 72475 >>Accept Cornering Gor'krosh
step
    .goto 1,59.28,63.38
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72475,1 --Trail Followed
step
    #completewith next
    #label Raptor Nest
    >>Kill |cRXP_ENEMY_Gor'krosh|r
    .complete 72475,2 --1/1 Gor'krosh slain
    .mob Gor'krosh
step
    #completewith Raptor Nest
    .goto 1,59.28,63.38
    .cast 384743 >>Click on |cRXP_PICK_Raptor Nest|r
    .timer 5,RP
step
    #requires Raptor Nest
    .goto 1,59.15,63.43
    >>Kill |cRXP_ENEMY_Gor'krosh|r
    .complete 72475,2 --1/1 Gor'krosh slain
    .mob Gor'krosh
step
    .goto 1,59.27,63.46
    >>Loot him for |T1508499:0|t[|cRXP_LOOT_Long Knife|r].
    .complete 72475,4 --1/1 "Long Knife" Collected
    .mob Gor'krosh
step
    #label EndIncludePrepGuide
    .goto 1,59.24,63.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blood Clot|r
    .complete 72475,3 --1/1 Blood of Gor'krosh
step
    .goto 1,52.20,42.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .turnin 72467 >>Turn in The Blessing of the Clan
    .turnin 74415 >>Turn in A Worthy Offering
    .turnin 72475 >>Turn in Cornering Gor'krosh
    .target Farseer Aggralan
    .accept 72478 >>Accept Honor and Glory
step
    #completewith next
    #label Boss Magor
    >>Kill |cRXP_ENEMY_Rowdies|r.
    *|TInterface/cursor/crosshair/interact.blp:17|tClick on the |cRXP_PICK_Objects|r.
    .complete 72478,1,100 --Enjoy the Feast! (100%)
    .mob Rowdy Warlock
    .mob Rowdy Grunt
step
    #completewith Boss Magor
    .goto 1,52.48,40.95
    .gossipoption 108372 >>Talk to |cRXP_FRIENDLY_Boss Magor|r
    .timer 10,RP
    .target Boss Magor
step
    #requires Boss Magor
    .goto 1,52.06,42.15
    >>Kill |cRXP_ENEMY_Boss Magor|r.
    *Pickup a |cRXP_PICK_Booterang|r and then use the |cRXP_WARN_ExtraActionButton|r when he casts |cRXP_WARN_Bootstorm|r.
    .complete 72478,2 --1/1 Brawl with Boss Magor and the Peons
    .mob Boss Magor
    .target Boss Magor
step
    #loop
    .goto 1,52.2,42.31,30,0
    .goto 1,52.5,41.5,30,0
    .goto 1,52.95,42.85,30,0
    .goto 1,52.33,43.32,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Foods|r
    *Kill |cRXP_ENEMY_Rowdy Warlock|r and |cRXP_ENEMY_Rowdy Grunt.|r
    .complete 72478,1 --Enjoy the Feast! (100%)
    .mob Rowdy Warlock
    .mob Rowdy Grunt
step
    .goto 1,52.25,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 72478 >>Turn in Honor and Glory
    .accept 72479 >>Accept Aka'magosh
    .target Thrall
step
    .goto 1,52.26,43.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 72479 >>Turn in Aka'magosh
    .target Eitrigg
]])
--Undead
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Undead Heritage Armor
#displayname |cFF1EFF002|r - Undead
#next a) Tauren Heritage Armor
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    .goto 85,50.70,75.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .accept 65656 >>Accept Call to Lordaeron
    .target Calia Menethil
step
    .goto 85,50.85,75.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forsaken Dreadmage|r
    .complete 65656,1 --1/1 Speak to Forsaken Dreadmage for a teleport
    .skipgossipid 54680
    .target Forsaken Dreadmage
step
    #completewith next
    #label Call to Lordaeron
    .goto 2070,60.84,51.93,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .turnin 65656 >>Turn in Call to Lordaeron
    .target Calia Menethil
    .accept 65657 >>Accept Assemble the Forsaken
    .disablecheckbox
step
    #completewith Call to Lordaeron
    .goto 2070,60.80,51.37,15 >>Enter the building
step
    #requires Call to Lordaeron
    .goto 2070,60.80,51.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .turnin 65656 >>Turn in Call to Lordaeron
    .target Calia Menethil
    .accept 65657 >>Accept Assemble the Forsaken
step
    #completewith next
    #label This Land is Ours
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .accept 65658 >>Accept This Land is Ours
    .complete 65657,1 --1/1 Speak to Dark Ranger Velonara
    .disablecheckbox
step
    #completewith This Land is Ours
    .goto 2070,60.83,52.02,10 >>Leave the building
step
    #requires This Land is Ours
    .goto 2070,61.97,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .accept 65658 >>Accept This Land is Ours
    .complete 65657,1 --1/1 Speak to Dark Ranger Velonara
    .target Dark Ranger Velonara
step
    #loop
    .goto 2070,61.83,50.01,30,0
    .goto 2070,62.32,50.01,30,0
    .goto 2070,63.16,47.24,30,0
    .goto 2070,60.83,46.8,30,0
    >>Kill |cRXP_ENEMY_Blighted|r
    .complete 65658,1 --8/8 Blighted Soldiers and Shadowmages slain
    .mob Blighted Soldiers
    .mob Blighted Shadowmages
step
    .goto 2070,63.23,55.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .complete 65657,3 --1/1 Speak to Master Apothecary Faranell
    .skipgossipid 54569
    .target Master Apothecary Faranell
step
    .goto 2070,57.57,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .complete 65657,2 --1/1 Speak to Lilian Voss
    .skipgossipid 54570
    .target Lilian Voss
step
    #completewith next
    #label Land is Ours
    .goto 2070,60.83,51.96,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .turnin 65658 >>Turn in This Land is Ours
    .target Dark Ranger Velonara
step
    #completewith Land is Ours
    .goto 2070,60.80,51.56,10 >>Enter the building
step
    #requires Land is Ours
    .goto 2070,60.80,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .turnin 65658 >>Turn in This Land is Ours
    .target Dark Ranger Velonara
step
    .goto 2070,60.90,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 65657 >>Turn in Assemble the Forsaken
    .target Lilian Voss
    .accept 65659 >>Accept The Blight Congress
step
    .goto 2070,60.8,51.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .complete 65659,1 --1/1 Speak to Calia
    .timer 50,RP
    .skipgossipid 54673
    .target Calia
step
    .goto 2070,60.8,51.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia|r
    .complete 65659,1,3 --1/1 Speak to Calia to Begin
    .skipgossipid 54676
    .target Calia
step
    #completewith next
    #label Blight Congress
    .goto 2070,60.83,51.96,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r |cRXP_WARN_after the roleplay|r.
    .turnin 65659 >>Turn in The Blight Congress
    .target Calia Menethil
    .accept 65660 >>Accept Walk of Faith
    .disablecheckbox
step
    #completewith Blight Congress
    .goto 2070,61.98,55.66,121 >>Follow the Arrow
step
    #requires Blight Congress
    .goto 2070,61.98,55.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r |cRXP_WARN_after the roleplay|r.
    .turnin 65659 >>Turn in The Blight Congress
    .target Calia Menethil
    .accept 65660 >>Accept Walk of Faith
step
    .goto 2070,61.98,55.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .complete 65660,1 --1/1 Speak to Calia to Begin
    .skipgossipid 54677
    .target Calia Menethil
step
    >>Defend |cRXP_FRIENDLY_Calia Menethil|r
    *Use the |cRXP_WARN_[ExtraActionButton]|r once it's there.
    .complete 65660,2 --1/1 Collect Pure Plague Sample
    .target Calia Menethil
    .mob Blighted Soldier
    .mob Blighted Lieutenant
step
    >>Defend |cRXP_FRIENDLY_Calia Menethil.|r
    .complete 65660,3 --1/1 Escape the Blight with Calia
    .target Calia Menethil
    .mob Blighted Soldier
    .mob Blighted Lieutenant
step
    .goto 2070,61.92,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 65660 >>Turn in Walk of Faith
    .target Lilian Voss
    .accept 65661 >>Accept Consulting Our Allies
step
    #completewith next
    #label Consulting Our Allies
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margrave Sin'dane|r
    .turnin 65661 >>Turn in Consulting Our Allies
    .target Margrave Sin'dane
    .accept 65662 >>Accept House of Plagues
    .disablecheckbox
step
    #completewith Consulting Our Allies
    .goto 2070,62.22,55.21
    .zone 1536 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Maldraxxus|r.
step
    #requires Consulting Our Allies
    .goto 1536,74.76,33.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margrave Sin'dane|r
    .turnin 65661 >>Turn in Consulting Our Allies
    .target Margrave Sin'dane
    .accept 65662 >>Accept House of Plagues
step
    #completewith next
    #label House of Plagues
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plague Deviser Marileth|r and |cRXP_FRIENDLY_Calia Menethil|r
    .turnin 65662 >>Turn in House of Plagues
    .target Plague Deviser Marileth
    .accept 65664 >>Accept Essence of Plague
    .disablecheckbox
    .accept 65663 >>Accept Feed the Eater
    .disablecheckbox
    .target Calia Menethil
step
    #completewith House of Plagues
    .goto 1536,73.57,33.43
    .cast 350876 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    #requires House of Plagues
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plague Deviser Marileth|r and |cRXP_FRIENDLY_Calia Menethil|r
    .turnin 65662 >>Turn in House of Plagues
    .target Plague Deviser Marileth
    .accept 65664 >>Accept Essence of Plague
    .goto 1536,71.15,71.47
    .accept 65663 >>Accept Feed the Eater
    .goto 1536,71.15,71.38
    .target Calia Menethil
step
    #completewith Tumultuous Concoction
    >>Kill |cRXP_ENEMY_Plagues|r.
    .complete 65663,1,100 --House of Plagues cleared (100%)
    .mob Plagueroc
    .mob Concentrated Plague
    .mob Undiluted Plague
step
    .goto 1536,70.96,74.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Simmering Concoction|r
    .complete 65664,1 --1/1 Simmering Concoction absorbed
step
    .goto 1536,69.66,75.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Concoction|r
    .complete 65664,2 --1/1 Unstable Concoction absorbed
step
    #label Tumultuous Concoction
    .goto 1536,68.53,79.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tumultuous Concoction|r
    .complete 65664,3 --1/1 Tumultuous Concoction absorbed
step
    #loop
    .goto 1536,69.66,75.59,40,0
    .goto 1536,70.96,74.06,40,0
    .goto 1536,68.53,79.82,40,0
    >>Kill |cRXP_ENEMY_Plagues|r.
    .complete 65663,1,100 --House of Plagues cleared (100%)
    .mob Plagueroc
    .mob Concentrated Plague
    .mob Undiluted Plague
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r and |cRXP_FRIENDLY_Plague Deviser Marileth|r
    .turnin 65663 >>Turn in Feed the Eater
    .goto 1536,68.66,81.69
    .target +Calia Menethil
    .turnin 65664 >>Turn in Essence of Plague
    .goto 1536,68.67,81.76
    .target +Plague Deviser Marileth
    .accept 65665 >>Accept Embodiment
step
    .goto 1536,68.27,84.58
    >>Kill |cRXP_ENEMY_Lordaeron Blight|r
    .complete 65665,1 --1/1 Lordaeron Blight slain
    .mob Lordaeron Blight
step
    .goto 1536,68.61,81.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 65665 >>Turn in Embodiment
    .target Lilian Voss
    .accept 65666 >>Accept Return to Brill
step
    #completewith next
    #label Lilian's Hearthstone
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .complete 65666,1 --1/1 Speak to Master Apothecary Faranell
    .target Master Apothecary Faranell
step
    #completewith Lilian's Hearthstone
    .cast 368788 >>Use |T413582:0|t[Lilian's Hearthstone]
    .use 191029
step
    #requires Lilian's Hearthstone
    .goto 2070,60.83,52.01,10,0
    .goto 2070,65.78,60.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .complete 65666,1 --1/1 Speak to Master Apothecary Faranell
    .timer 30,RP
    .skipgossipid 54622
    .target Master Apothecary Faranell
step
    .goto 2070,65.78,60.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r after the roleplay.
    .turnin 65666 >>Turn in Return to Brill
    .target Master Apothecary Faranell
step
    .goto 2070,65.84,60.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .accept 65667 >>Accept The Remedy of Lordaeron
    .target Calia Menethil
step
    .goto 2070,65.70,59.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowbat|r
    .complete 65667,1 --1/1 Mount Shadowbat
    .target Shadowbat
step
    >>Use |T135975:0|t[Call Batriders] and |T136182:0|t[Deploy] on the barrels.
    .complete 65667,2,100 --Drop Plague Eaters in Ruins of Lordaeron (100%)
step
    .goto 2070,63.28,69.71
    >>Use |T136201:0|t[Shadow Conflagration] on cooldown and |T136197:0|t[Shadowbolt] to kill |cRXP_ENEMY_Amalgam|r
    *Use |T135940:0|t[Pallid Shield] to protect and heal yourself.
    .complete 65667,3 --1/1 Amalgam slain
    .mob Amalgam
step
    .goto 2070,61.85,67.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 65667 >>Turn in The Remedy of Lordaeron
    .target Lilian Voss
    .accept 65668 >>Accept The Desolate Council
    .timer 60,RP
step
    .goto 2070,61.79,67.78
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 65668,1 --1/1 Witness the Formation of the Desolate Council
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r, |cRXP_FRIENDLY_Dark Ranger Velonara|r and |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 65668 >>Turn in The Desolate Council
    .goto 2070,61.79,67.78
    .target +Calia Menethil
    .turnin 66091 >>Turn in Path of the Dark Ranger
    .goto 2070,61.93,67.78
    .target +Dark Ranger Velonara
    .accept 65788 >>Accept A Walk with Ghosts
    .goto 2070,61.86,67.76
    .target Lilian Voss
step
    #completewith next
    #label Belmont
    #title |cFFFCDC00Follow the Arrow|r
    .goto 2070,61.78,69.49,5,0
    .goto 2070,61.42,70.13,5,0
    .goto 2070,61.84,70.7,5,0
    .complete 65788,1 --1/1 Enter the Throne Room of Lordaeron
step
    #completewith Belmont
    .goto 2070,61.21,82.75,25 >>Enter the building
step
    #requires Belmont
    .goto 2070,61.84,71.51
    #title |cFFFCDC00Follow the Arrow|r
    .complete 65788,1 --1/1 Enter the Throne Room of Lordaeron
step
    .goto 2070,61.84,72.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .turnin 65788 >>Turn in A Walk with Ghosts
    .target Calia Menethil
    .accept 76530 >>Accept Unliving Summons
step
    #completewith next
    #label Our Enemies Abound
    .goto 2070,61.85,71.86,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 76530 >>Turn in Unliving Summons
    .target Lilian Voss
    .accept 72854 >>Accept Our Enemies Abound
    .disablecheckbox
step
    #completewith Our Enemies Abound
    .goto 2070,63.76,68.16,142 >>Leave the building
step
    #requires Our Enemies Abound
    .goto 2070,63.76,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 76530 >>Turn in Unliving Summons
    .target Lilian Voss
    .accept 72854 >>Accept Our Enemies Abound
step
    .goto 2070,61.21,82.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belmont|r
    .complete 72854,1 --1/1 Speak to Belmont
    .skipgossipid 108124
    .target Belmont
step
    .goto 2070,61.21,82.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Commander Belmont|r
    .turnin 72854 >>Turn in Our Enemies Abound
    .target Deathstalker Commander Belmont
    .accept 72855 >>Accept To the Sepulcher
step
    .goto 2070,61.17,82.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forsaken Dreadmage|r
    .complete 72855,1 --1/1 Speak to Forsaken Dreadmage
    .skipgossipid 107793
    .target Forsaken Dreadmage
step
    #completewith next
    #label To the Sepulcher
    .goto 21,42.66,40.84,10,0
    .goto 21,42.68,41.44,10,0
    .goto 21,43.11,41.41,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .turnin 72855 >>Turn in To the Sepulcher
    .target Dark Ranger Velonara
    .accept 72858 >>Accept Acid Beats Paper
    .disablecheckbox
step
    #completewith To the Sepulcher
    .goto 21,45.57,42.05,105 >>Leave the building
step
    #requires To the Sepulcher
    .goto 21,45.57,42.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .turnin 72855 >>Turn in To the Sepulcher
    .target Dark Ranger Velonara
    .accept 72858 >>Accept Acid Beats Paper
step
    .goto 21,45.63,41.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 72856 >>Accept Nothing Like the Classic
    .accept 72857 >>Accept Boom Weed
    .target Master Apothecary Faranell
step
    #completewith Notice to All Undead
    >>Kill |cRXP_ENEMY_Plagued Wolf,|r |cRXP_ENEMY_Sickly Deer|r and |cRXP_ENEMY_Plagued Bear.|r
    *Loot them for |T134358:0|t[|cRXP_LOOT_Plagued Flesh|r].
    .complete 72856,1 --12/12 Plagued Flesh
    .mob Plagued Wolf
    .mob Sickly Deer
    .mob Plagued Bear
step
    #completewith Notice to All Undead
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boom Weed.|r
    .complete 72857,1 --6/6 Boom Weed
step
    .goto 21,46.67,47.08
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,1 --4/4 Notice to All Undead destroyed
    .use 202182
step
    .goto 21,45.61,47.37
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,2 --4/4 Notice to All Undead destroyed
    .use 202182
step
    .goto 21,46.95,50.23
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,3 --4/4 Notice to All Undead destroyed
    .use 202182
step
    #label Notice to All Undead
    .goto 21,48.35,48.83
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,4 --4/4 Notice to All Undead destroyed
    .use 202182
step
    #hidewindow
    #completewith EndIncludePrepGuide
    #loop
    .goto 21,48.05,52.44,40,0
    .goto 21,46.47,54.45,40,0
    .goto 21,43.59,50.86,40,0
    .goto 21,46.69,44.83,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Plagued Wolf,|r |cRXP_ENEMY_Sickly Deer|r and |cRXP_ENEMY_Plagued Bear|r.
    *Loot them for |T134358:0|t[|cRXP_LOOT_Plagued Flesh|r].
    .complete 72856,1 --12/12 Plagued Flesh
    .mob Plagued Wolf
    .mob Sickly Deer
    .mob Plagued Bear
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boom Weed|r.
    .complete 72857,1 --6/6 Boom Weed
step
    #label EndIncludePrepGuide
    >>Kill |cRXP_ENEMY_Plagued Wolf,|r |cRXP_ENEMY_Sickly Deer|r and |cRXP_ENEMY_Plagued Bear|r.
    *Loot them for |T134358:0|t[|cRXP_LOOT_Plagued Flesh|r].
    .complete 72856,1 --12/12 Plagued Flesh
    .mob Plagued Wolf
    .mob Sickly Deer
    .mob Plagued Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r and |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 72858 >>Turn in Acid Beats Paper
    .goto 21,45.56,42.04
    .target +Dark Ranger Velonara
    .turnin 72856 >>Turn in Nothing Like the Classic
    .target +Master Apothecary Faranell
    .turnin 72857 >>Turn in Boom Weed
    .goto 21,45.63,41.99
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r and |cRXP_FRIENDLY_Lilian Voss|r
    .accept 72859 >>Accept A Proper Disguise
    .goto 21,45.55,41.58
    .target Calia Menethil
    .accept 72860 >>Accept Fear is Our Weapon
    .goto 21,45.51,41.58
    .target Lilian Voss
step
    .goto 21,45.41,41.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margix|r.
    .complete 72860,1 --1/1 Pick a Banshee
    .skipgossipid 111035
step
    .goto 21,52.75,27.58,10,0
    .goto 21,52.81,28.10
    >>Kill |cRXP_ENEMY_Lieutenant Hawlsey|r
    *Loot them for |T5366050:0|t[|cRXP_LOOT_Hawlsey's Armor|r].
    .complete 72859,1 --1/1 Steal Lieutenant Hawlsey's Armor
    .mob Lieutenant Hawlsey
step
    #loop
    .goto 21,53.39,25.34,20,0
    .goto 21,51.81,25.12,20,0
    .goto 21,51.88,27.98,20,0
    .goto 21,53.55,27.53,20,0
    >>Kill |cRXP_ENEMY_Scarlet Recruits|r and |cRXP_ENEMY_Scarlet Trainers|r.
    .complete 72860,2 --12/12 Scarlet Recruits or Trainers slain
    .mob Scarlet Recruits
    .mob Scarlet Trainers
step
    .goto 21,45.48,41.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 72859 >>Turn in A Proper Disguise
    .target Lilian Voss
    .turnin 72860 >>Turn in Fear is Our Weapon
    .accept 72861 >>Accept The Scarlet Spy
step
    .goto 21,45.63,41.90
    >>Use the |cRXP_WARN_[ExtraActionButton]|r.
    .complete 72861,1 --1/1 Don Scarlet Disguise
step
    .goto 21,45.63,41.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    .complete 72861,2 --1/1 Pick Up Faranell's Mixture
step
    .goto 21,59.95,34.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Scarlet Boatmaster|r
    .complete 72861,3 --1/1 Speak to the Scarlet Boatmaster
    .skipgossipid 109067
    .target the Scarlet Boatmaster
step
    .goto 21,64.02,33.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Newlem|r
    .turnin 72861 >>Turn in The Scarlet Spy
    .target Quartermaster Newlem
    .accept 72862 >>Accept Among Us
step
    .goto 21,68.82,35.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    .complete 72862,1,1 --3/3 Plant Explosive Plague
step
    .goto 21,70.53,35.49
    >>Kill |cRXP_ENEMY_Scarlet Archmage|r
    .complete 72862,2,1 --6/6 Scarlet Archmage slain
    .mob Scarlet Archmage
step
    .goto 21,76.11,33.34
    >>Kill |cRXP_ENEMY_Scarlet Archmage|r
    .complete 72862,2,2 --6/6 Scarlet Archmage slain
    .mob Scarlet Archmage
step
    .goto 21,75.77,31.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    .complete 72862,1,2 --3/3 Plant Explosive Plague
step
    .goto 21,78.71,24.43
    >>Kill |cRXP_ENEMY_Scarlet Archmage|r
    .complete 72862,2,3 --6/6 Scarlet Archmage slain
    .mob Scarlet Archmage
step
    .goto 21,76.36,19.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    .complete 72862,1,3 --3/3 Plant Explosive Plague
step
    .goto 21,75.09,19.44
    >>Kill |cRXP_ENEMY_Scarlet Archmage|r
    .complete 72862,2,4 --6/6 Scarlet Archmage slain
    .mob Scarlet Archmage
step
    .goto 21,74.17,16.39
    >>Kill |cRXP_ENEMY_Scarlet Archmage|r
    .complete 72862,2,5 --6/6 Scarlet Archmage slain
    .mob Scarlet Archmage
step
    .goto 21,73.5,16.33
    >>Kill |cRXP_ENEMY_Scarlet Archmage|r
    .complete 72862,2,6 --6/6 Scarlet Archmage slain
    .mob Scarlet Archmage
step
    .goto 21,70.45,18.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .turnin 72862 >>Turn in Among Us
    .target Dark Ranger Velonara
    .accept 72863 >>Accept The Flight of the Banshee
step
    .goto 21,70.46,18.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velonara|r
    .complete 72863,1 --1/1 Speak to Velonara
    .skipgossipid 109161
    .target Velonara
step
    .goto 21,70.25,18.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Commander Belmont|r
    .turnin 72863 >>Turn in The Flight of the Banshee
    .target Deathstalker Commander Belmont
    .accept 72864 >>Accept Death to the Living
step
    #loop
    .goto 21,73.76,17.22,30,0
    .goto 21,76.57,21.31,30,0
    .goto 21,78.23,25.16,30,0
    .goto 21,76.59,30.17,30,0
    .goto 21,72.12,35.08,30,0
    >>Kill |cRXP_ENEMY_Scarlet Crusaders|r.
    .complete 72864,1,100 --Scarlet Crusade routed (100%)
    .mob Scarlet Footsoldier
    .mob Alert Hound
    .mob Scarlet Confessor
step
    .goto 21,66.33,31.09
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72864,2 --1/1 Meet Lilian Voss Ouside Fenris Keep
step
    .goto 21,66.33,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 72864 >>Turn in Death to the Living
    .target Lilian Voss
    .accept 72865 >>Accept This is the Hour of the Forsaken
step
    .goto 21,65.74,24.72
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72865,1 --1/1 Reach Fenris Keep
step
    .goto 21,65.19,24.42,10,0
    .goto 21,65.21,23.95,10,0
    .goto 21,65.6,23.93,10,0
    .goto 21,65.71,23.35,10,0
    .goto 21,65.89,23.89,10,0
    .goto 21,66.24,23.88,10,0
    .goto 21,66.01,24.59,10,0
    .goto 21,65.74,23.77
    >>Kill |cRXP_ENEMY_Scarlet Commander Forsythe|r
    .complete 72865,2 --1/1 Scarlet Commander Forsythe slain
    .mob Scarlet Commander Forsythe
step
    .goto 21,66.15,24.56,10,0
    .goto 21,66.04,23.88,10,0
    .goto 21,65.61,23.36,10,0
    .goto 21,65.62,23.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r.
    .turnin 72865 >>Turn in This is the Hour of the Forsaken
    .target Lilian Voss
    .accept 72866 >>Accept Return to Lordaeron
step
    .goto 21,65.53,23.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Lordaeron|r
    .complete 72866,1 --1/1 Take the portal to Ruins of Lordaeron
    .target Forsaken Dreadmage
step
    .goto 2070,61.84,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 72866 >>Turn in Return to Lordaeron
    .target Lilian Voss
    .accept 72867 >>Accept I Am Forsaken
step
    .goto 2070,61.84,68.62
    >>Use the [ExtraActionButton] inside the circle.
    .complete 72867,1 --1/1 Receive the Honor of the Forsaken
step
    #completewith next
    #label I Am Forsaken
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 72867 >>Turn in I Am Forsaken
    .target Lilian Voss
step
    #completewith I Am Forsaken
    .aura -416270 >>Click on the macro in the active items frame to remove the stun.
    .macro Cancelaura,255143>>/cancelaura Honor of the Forsaken
step
    #requires I Am Forsaken
    .goto 2070,61.83,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 72867 >>Turn in I Am Forsaken
    .target Lilian Voss
]])
--Tauren
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Tauren Heritage Armor
#displayname |cFF1EFF003|r - Tauren
#next a) Troll Heritage Armor
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    .goto 88,60.29,51.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ussoh|r
    .turnin 54759 >>Turn in When Spirits Whisper
    .accept 54760 >>Accept The Spiritwalkers
    .target Spiritwalker Ussoh
step
    .goto 462,12.18,31.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 54760 >>Turn in The Spiritwalkers
    .accept 54761 >>Accept Spirit Guide
    .target Baine Bloodhoof
step
    #completewith next
    .goto 462,12.55,31.36
    .cast 6478,1 >>Click on the |cRXP_PICK_Spiritwalker's Incense|r
    .timer 23,RP
step
    .isOnQuest 54761
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 54761,1 --1/1 Light Spiritwalker's Incense
step
    .goto 462,12.15,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ussoh|r
    .turnin 54761 >>Turn in Spirit Guide
    .target Spiritwalker Ussoh
    .accept 54762 >>Accept A Small Retreat
step
    .goto 65,49.18,60.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ussoh|r
    .turnin 54762 >>Turn in A Small Retreat
    .accept 54763 >>Accept Crossing Over
    .target Spiritwalker Ussoh
step
    .goto 65,49.18,60.93
    >>Use the |T921387:0|t[Spiritwalker's Hallowed Vessel]
    .complete 54763,1 --1/1 Entered Spirit Realm
    .use 166899
step
    #completewith next
    .goto 65,49.54,61.46,20,0
    .goto 65,49.2,62.98,20,0
    .goto 65,48.15,63.06,20,0
    .goto 65,48.05,64.45,20,0
    .goto 65,48.86,65.36,20 >> Follow the Arrow |cRXP_WARN_stay close to the|r |cRXP_FRIENDLY_Ancient Kodo|r
    .target Ancient Kodo
step
    .goto 65,50.05,65.68
    >>Kill |cRXP_ENEMY_Necrofiends|r
    .complete 54763,2 --1/1 Followed Spirit Guide
    .mob Necrofiend
step
    .goto 65,49.17,60.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ussoh|r
    .turnin 54763 >>Turn in Crossing Over
    .target Spiritwalker Ussoh
step
    .goto 65,49.17,60.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ussoh|r
    .target Spiritwalker Ussoh
    .accept 54764 >>Accept Storm in Bloodhoof
step
    .goto 7,47.49,55.94
    >>Follow the Arrow
    .complete 54764,1 --1/1 Travel to Bloodhoof Village
step
    #loop
    .goto 7,46.84,56.95,30,0
    .goto 7,47.68,59.2,30,0
    .goto 7,48.43,57.22,30,0
    >>Interact with |cRXP_FRIENDLY_Bloodhoof Villager|r and |cRXP_FRIENDLY_Trapped Kodo.|r
    *Click on |cRXP_PICK_Spirit Portals|r
    *Kill |cRXP_ENEMY_Necrofiends|r and |cRXP_ENEMY_Malicious Spirits.|r
    .complete 54764,2 --Save the people of Bloodhoof Village (100%)
    .mob Necrofiend
    .mob Malicious Spirit
    .target Bloodhoof Villager
    .target Trapped Kodo
step
    .goto 88,58.21,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 54764 >>Turn in Storm in Bloodhoof
    .target Baine Bloodhoof
step
    .goto 88,58.21,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .target Baine Bloodhoof
    .accept 54766 >>Accept Answer the Call
step
    #completewith next
    .goto 88,58.21,51.78
    .gossipoption 49999 >>Talk to |cRXP_FRIENDLY_Baine Bloodhoof|r
step
    #label EndIncludePrepGuide
    .goto 88,55.63,50.91
    >>Kill |cRXP_ENEMY_Malevolent Spirit|r
    .complete 54766,1 --1/1 Malevolent Spirit slain
    .mob Malevolent Spirit
step
    #completewith next
    .logout >>|cRXP_WARN_Press Escape and select Log Out|r
step
    .goto 88,60.32,51.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 54766 >>Turn in Answer the Call
    .target Baine Bloodhoof
step
    .goto 88,60.32,51.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .target Baine Bloodhoof
    .accept 54765 >>Accept Thank Your Guide
step
    .goto 7,33.97,38.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Spirit Offering|r
    .complete 54765,1 --1/1 Offering presented
step
    .goto 7,34.00,38.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Ceremonial Tauren Garb.|r
    .turnin 54765 >>Turn in Thank Your Guide
    .target Ceremonial Tauren Garb
]])
--Troll
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Troll Heritage Armor
#displayname |cFF1EFF004|r - Troll
#next a) Blood Elf Heritage Armor
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    .goto 85,32.70,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zi'guma|r
    .accept 77869 >>Accept Return to the Echo Isles
    .target Zi'guma
step
    .goto 463,61.13,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77869 >>Turn in Return to the Echo Isles
    .target Rokhan
step
    .goto 463,61.39,65.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .accept 77871 >>Accept De Old Loa
    .target Master Gadrin
step
    .goto 463,61.9,65.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,1 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,61.65,64.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,2 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,60.65,65.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,3 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,60.6,66.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,4 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,60.62,66.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,5 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,61.37,65.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .accept 77871 >>Accept De Old Loa
    .target Master Gadrin
step
    #completewith next
    +Jump out of the house
step
    .goto 463,58.75,66.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Altar of the Loa.|r
    .complete 77871,2 --1/1 Assist Tzadah with loa ritual
step
    .goto 463,59.16,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77871 >>Turn in De Old Loa
    .target Rokhan
step
    .goto 463,59.16,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .target Rokhan
    .accept 77874 >>Accept De Loa of de Past
step
    .goto 463,59.22,62.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,1 --8/8 Tribute objects collected
step
    .goto 463,59.93,60.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,2 --8/8 Tribute objects collected
step
    .goto 463,60.03,61.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,3 --8/8 Tribute objects collected
step
    .goto 463,59.74,62.5,5,0
    .goto 463,60.26,61.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,4 --8/8 Tribute objects collected
step
    .goto 463,60.18,62.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,5 --8/8 Tribute objects collected
step
    .goto 463,60.87,63.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,6 --8/8 Tribute objects collected
step
    .goto 463,60.51,63.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,7 --8/8 Tribute objects collected
step
    .goto 463,60.36,63.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,8 --8/8 Tribute objects collected
step
    .goto 463,58.72,65.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Jani's Junkpile.|r
    .complete 77874,2 --1/1 Create a Jani tribute
    .timer 32,RP
step
    .goto 463,58.37,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jani|r
    .complete 77874,3 --1/1 Consult Jani
    .skipgossip
    .target Jani
step
    .goto 463,58.71,66.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Jani's Junkpile.|r
    .complete 77874,4 --1/1 Jani's Junkpile
step
    .goto 50,84.60,40.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77874 >>Turn in De Loa of de Past
    .target Rokhan
    .accept 77879 >>Accept Stalking the Stalker
step
    #loop
    .goto 50,88.01,45.74,20,0
    .goto 50,89.17,49.06,20,0
    .goto 50,87.18,49.64,20,0
    >>Kill |cRXP_ENEMY_Animated Offering|r, |cRXP_ENEMY_Hakkari Ritualist|r and |cRXP_ENEMY_Foul Offering.|r Loot them for [|cRXP_LOOT_Offering to Hakkar|r]
    .complete 77879,1 --6/6 Offering to Hakkar
    .mob Animated Offering
    .mob Hakkari Ritualist
    .mob Foul Offering
step
    .goto 50,81.77,47.86
    #title |cFFFCDC00Follow the Arrow|r
    .complete 77879,2 --1/1 Return to Jani
    .timer 20,RP
step
    .goto 50,81.81,48.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kevo ya Siti|r
    .turnin 77879 >>Turn in Stalking the Stalker
    .target Kevo ya Siti
    .accept 77881 >>Accept There is Another
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Jani's Junkpile|r
    .goto 50,81.84,47.61
    .complete 77881,1 --1/1 Use Jani's Junkpile to travel to Bambala (Optional)
    .complete 77881,2 --1/1 Return to Bambala
step
    .goto 50,63.59,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kevo ya Siti|r
    .turnin 77881 >>Turn in There is Another
    .target Kevo ya Siti
step
    .goto 50,63.48,41.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .accept 77880 >>Accept Looking for Lukou
    .target Rokhan
step
    .goto 50,65.03,42.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .complete 77880,1,1 --3/3 Ask about Lukou
    .target Shadow Hunter Ty'jin
step
    .goto 50,66.05,40.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .complete 77880,1,2 --3/3 Ask about Lukou
    .target Shadow Hunter Ty'jin
step
    .goto 50,63.18,39.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .complete 77880,1,3 --3/3 Ask about Lukou
    .target Shadow Hunter Ty'jin
step
    .goto 50,63.48,41.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .complete 77880,2 --1/1 Speak with Rokhan
    .target Rokhan
step
    .goto 50,65.14,47.69
    #title |cFFFCDC00Follow the Arrow|r
    .complete 77880,3 --1/1 Find Kevo ya Siti by the Ogre Mound
step
    .goto 50,65.09,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77880 >>Turn in Looking for Lukou
    .target Rokhan
step
    .goto 50,65.06,47.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kevo ya Siti|r
    .accept 77877 >>Accept One with the Loa
    .target Kevo ya Siti
step
    .goto 50,65.06,47.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kevo ya Siti|r
    .complete 77877,1 --1/1 Tell Kevo you're ready
    .timer 20,RP
step
    .goto 50,70.38,48.96
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 77877,2 --1/1 Ogre cave infiltrated
step
    .goto 50,70.63,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77877 >>Turn in One with the Loa
    .target Rokhan
    .accept 77882 >>Accept Stolen but Not Forgotten
    .accept 78875 >>Accept The Unkillable
step
    >>Kill |cRXP_ENEMY_Mosh'Ogg Witch Doctor|r and |cRXP_ENEMY_Mosh'Ogg Spellcrafter.|r Loot them for [|cRXP_LOOT_Altar Fragment.|r]
    *Click on |cRXP_PICK_Dusty Bags|r
    .complete 77882,1 --8/8 Altar Fragment
    .mob Mosh'Ogg Witch Doctor
    .mob Mosh'Ogg Spellcrafter
step
    .goto 50,69.24,48.6,10,0
    .goto 50,68.6,49.63,10,0
    .goto 50,68.44,49.04,10,0
    .goto 50,67.92,47,10,0
    .goto 50,69.18,46.97
    >>Kill |cRXP_ENEMY_Mai'Zoth.|r Loot them for [|cRXP_LOOT_Lukou's Altar Centerpiece|r]
    .complete 78875,1 --1/1 Lukou's Altar Centerpiece
    .mob Mai'Zoth
step
    #loop
    .goto 50,69.64,47.11,10,0
    .goto 50,67.93,47.09,10,0
    .goto 50,67.52,47.92,10,0
    .goto 50,67.28,49.01,10,0
    .goto 50,67.64,48.91,10,0
    .goto 50,68.34,48.88,10,0
    .goto 50,68.76,49.38,10,0
    .goto 50,68.97,48.84,10,0
    >>Kill |cRXP_ENEMY_Mosh'Ogg Witch Doctor|r and |cRXP_ENEMY_Mosh'Ogg Spellcrafter.|r Loot them for [|cRXP_LOOT_Altar Fragment.|r]
    *Click on |cRXP_PICK_Dusty Bags|r
    .complete 77882,1 --8/8 Altar Fragment
step
    .goto 50,70.62,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77882 >>Turn in Stolen but Not Forgotten
    .target Rokhan
    .turnin 78875 >>Turn in The Unkillable
    .accept 77894 >>Accept Heart of Lukou
step
    .goto 50,70.71,48.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Altar of Regeneration|r
    .complete 77894,1 --1/1 Repair Destroyed Effigy
    .timer 10,RP
step
    .goto 50,70.78,48.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lukou|r
    .complete 77894,2 --1/1 Calm Lukou
    .timer 9,RP
    .target Lukou
step
    .goto 50,70.63,49.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77894 >>Turn in Heart of Lukou
    .target Rokhan
    .accept 77898 >>Accept Honor and Tribute
step
    .goto 50,70.4,49.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Jani's Junkpile|r
    .complete 77898,1 --1/1 Return to Echo Isles using Jani's Junkpile (Optional)
step
    .goto 463,59.07,65.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzadah|r
    .complete 77898,2 --1/1 Speak with Tzadah
    .target Tzadah
step
    .goto 463,58.64,66.3
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Lukou Offering|r
    .complete 77898,4 --1/1 Lukou Offering placed
step
    .goto 463,58.85,66.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Kevo ya Siti Offering|r
    .complete 77898,3 --1/1 Kevo ya Siti Offering placed
step
    .goto 463,58.75,66.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Kevo ya Siti Offering|r
    .complete 77898,5 --1/1 Last Offering placed
step
    .goto 463,59.07,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tzadah|r
    .turnin 77898 >>Turn in Honor and Tribute
    .target Witch Doctor Tzadah
    .accept 77899 >>Accept The Rush'kah
step
    .goto 463,59.29,61.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Rush'kah Paint|r
    .complete 77899,1 --1/1 Paint mixed
step
    .goto 463,59.2,61.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Prepared Wood|r
    .complete 77899,2 --1/1 Prepared Wood
step
    .goto 463,60.13,62.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Finished Rush'kah|r
    .complete 77899,3 --1/1 Rush'kah mask created
step
    .goto 463,60.09,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77899 >>Turn in The Rush'kah
    .target Rokhan
step
    .goto 463,60.09,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .target Rokhan
    .accept 77900 >>Accept The Loa Trials
step
    #completewith next
    .goto 463,58.77,65.92
    .cast 427573 >>Use |T136194:0|t[Loa Trial Ritual]
    .use 427573
    .timer 46,RP
step
    .goto 463,58.5,65.57
    >>Wait until the objective completes
    .complete 77900,1 --1/1 Participate in trial ritual
step
    .goto 463,58.52,65.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77900 >>Turn in The Loa Trials
    .target Rokhan
    .accept 77903 >>Accept De Power of Death
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lukou|r and |cRXP_FRIENDLY_Kevo ya Siti|r
    .accept 77902 >>Accept Ritual Recovery
    .goto 463,58.48,66.15
    .target +Lukou
    .accept 77901 >>Accept Retraining the Trainees
    .goto 463,59.02,66.17
    .target +Kevo ya Siti
step
    #completewith Ritual Circle
    >>Kill |cRXP_ENEMY_Devotee of Mueh'zala,|r |cRXP_ENEMY_Raised Boneripper,|r  |cRXP_ENEMY_Unfinished Rush'kah|r and |cRXP_ENEMY_Empowered Boneguard.|r
    .complete 77903,1 --12/12 Minions of Mueh'zala slain
    .mob Devotee of Mueh'zala
    .mob Raised Boneripper
    .mob Empowered Boneguard
    .mob Unfinished Rush'kah
step
    #completewith Ritual Circle
    >>When the |cRXP_ENEMY_Lost Trainee's|r health drops to 50%, click on them for credit.
    .complete 77901,1 --8/8 Lost Trainee darkness removed
    .use 211000
    .mob Lost Trainee Warrior
    .mob Lost Trainee Rogue
    .mob Lost Trainee Druid
    .mob Lost Trainee Hunter
    .mob Lost Trainee Priest
    .mob Lost Trainee Shaman
    .mob Lost Trainee Warlock
step
    .goto 463,59.72,51.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ritual Circle|r
    .complete 77902,1,1 --3/3 Ritual Circle removed
step
    .goto 463,48.59,47.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ritual Circle|r
    .complete 77902,1,2 --3/3 Ritual Circle removed
step
    #label Ritual Circle
    .goto 463,49.55,60.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ritual Circle|r
    .complete 77902,1,3 --3/3 Ritual Circle removed
step
    #hidewindow
    #completewith EndIncludePrepGuide
    #loop
    .goto 463,53.86,64.39,25,0
    .goto 463,56.74,51.61,25,0
    .goto 463,56,42.86,25,0
    .goto 463,49.53,44.43,25,0
    .goto 463,47.62,53.04,25,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Devotee of Mueh'zala,|r |cRXP_ENEMY_Raised Boneripper,|r  |cRXP_ENEMY_Unfinished Rush'kah|r and |cRXP_ENEMY_Empowered Boneguard.|r
    .complete 77903,1 --12/12 Minions of Mueh'zala slain
    .mob Devotee of Mueh'zala
    .mob Raised Boneripper
    .mob Empowered Boneguard
    .mob Unfinished Rush'kah
step
    >>When the |cRXP_ENEMY_Lost Trainee's|r health drops to 50%, click on them for credit.
    .complete 77901,1 --8/8 Lost Trainee darkness removed
    .use 211000
    .mob Lost Trainee Warrior
    .mob Lost Trainee Rogue
    .mob Lost Trainee Druid
    .mob Lost Trainee Hunter
    .mob Lost Trainee Priest
    .mob Lost Trainee Shaman
    .mob Lost Trainee Warlock
step
    #label EndIncludePrepGuide
    >>Kill |cRXP_ENEMY_Devotee of Mueh'zala,|r |cRXP_ENEMY_Raised Boneripper,|r  |cRXP_ENEMY_Unfinished Rush'kah|r and |cRXP_ENEMY_Empowered Boneguard.|r
    .complete 77903,1 --12/12 Minions of Mueh'zala slain
    .mob Devotee of Mueh'zala
    .mob Raised Boneripper
    .mob Empowered Boneguard
    .mob Unfinished Rush'kah
step
    .goto 463,56.96,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77901 >>Turn in Retraining the Trainees
    .target Rokhan
    .turnin 77902 >>Turn in Ritual Recovery
    .turnin 77903 >>Turn in De Power of Death
    .accept 77905 >>Accept Avatar of Mueh'zala
step
    .goto 463,56.27,56.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Feather|r
    .complete 77905,1 --1/1 Jani's Blessing
step
    .goto 463,58.55,56.29
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and Click on the |cRXP_PICK_Totems|r.
    .complete 77905,3,1 --4/4 Tzadah's Empowerment destroyed
    .mob Summoned Visage
step
    .goto 463,54.39,56.53
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and Click on the |cRXP_PICK_Totems|r.
    .complete 77905,3,2 --4/4 Tzadah's Empowerment destroyed
    .mob Summoned Visage
step
    .goto 463,54.49,47.04
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and Click on the |cRXP_PICK_Totems|r.
    .complete 77905,3,3 --4/4 Tzadah's Empowerment destroyed
    .mob Summoned Visage
step
    .goto 463,58.48,46.89
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and Click on the |cRXP_PICK_Totems|r.
    .complete 77905,3,4 --4/4 Tzadah's Empowerment destroyed
    .mob Summoned Visage
step
    .goto 463,58.50,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77905 >>Turn in Avatar of Mueh'zala
    .target Rokhan
    .accept 77906 >>Accept De Darkspear Loa
step
    .goto 463,58.73,66.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Totem|r
    .complete 77906,1 --1/1 Destroy Mueh'zala's effigy
step
    .goto 463,58.73,66.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Loa Offering|r
    .complete 77906,2 --1/1 Replace Mueh'zala's effigy with Jani's
step
    .goto 463,59.05,65.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 77906 >>Turn in De Darkspear Loa
    .target Master Gadrin
]])
--BloodElf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Blood Elf Heritage Armor
#displayname |cFF1EFF005|r - Blood Elf
#next a) Goblin Heritage Armor
#chapter

step
    #label StartIncludePrepGuide
    .goto 85,39.13,79.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Dawnsworn|r
    .accept 53791 >>Accept The Pride of the Sin'dorei
    .target Ambassador Dawnsworn
step
    .goto 110,53.75,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r
    .turnin 53791 >>Turn in The Pride of the Sin'dorei
    .target Lor'themar Theron
step
    .goto 110,53.75,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r
    .target Lor'themar Theron
    .accept 53734 >>Accept Walk Among Ghosts
step
    #completewith next
    .goto 110,72.29,44.21,10,0
    .goto 110,75.61,59.19,10,0
    .goto 110,74.53,56.19,10,0
    .goto 110,73.1,59.08,10,0
    .goto 110,72.32,86.03,10,0
    .goto 110,70.13,87.82,10,0
    .goto 94,56.61,49.61,10,0
    .goto 94,54.38,50.79
    .fly Tranquillien >>Fly to Tranquillien
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymistress Gloaming|r
    .target Skymistress Gloaming
step
    .goto 95,46.31,31.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|
    .turnin 53734 >>Turn in Walk Among Ghosts
    .target Lor'themar Theron
step
    .goto 95,46.31,31.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|
    .accept 53882 >>Accept Writing on the Wall
    .target Lor'themar Theron
step
    .goto 95,47.73,84.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lamp|r
    .complete 53882,1 --1/1 Light the First Flame
step
    #label Writing on the Wall
    .isOnQuest 53882
    .goto 95,45.47,75.66,15 >>Follow the Arrow
step
    .goto 95,37.08,65.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r |cRXP_WARN_next to you.|r
    .turnin 53882 >>Turn in Writing on the Wall
    .target Lor'themar Theron
    .accept 53735 >>Accept The First to Fall
step
    .goto 95,37.08,65.52
    >>Use the |cRXP_WARN_ExtraActionButton|r
    .complete 53735,1 --1/1 Shed light on the first battlefield
step
    #label Writing on the Wall2
    .goto 95,36.61,67.25
    *|cRXP_WARN_You can cancel the stun by pressing the macro in the "active items frame"|r
    >>Kill |cRXP_ENEMY_Undeads|r
    .complete 53735,2 --Fight back the undead (100%)
    .timer 26,RP
    .macro Remove Aura,461859 >>/cancelaura Light the Way
    .mob Risen Attacker
    .mob Risen Abomination
    .mob Necrotic Echo
step
    .goto 95,12.39,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r |cRXP_WARN_next to you|r
    .turnin 53735 >>Turn in The First to Fall
    .target Lor'themar Theron
    .accept 53736 >>Accept Lament of the Highborne
step
    .goto 95,18.72,58.43,30,0
    .goto 95,12.17,56.37
    >>Kill |cRXP_ENEMY_Tormented Ranger|r
    .complete 53736,1 --6/6 Tormented Ranger slain
    .mob Tormented Ranger
step
    .goto 95,12.42,56.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lamp|r
    .complete 53736,2 --1/1 Light the Second Flame
step
    .goto 95,12.48,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r
    .turnin 53736 >>Turn in Lament of the Highborne
    .target Lor'themar Theron
step
    .goto 95,12.48,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r
    .target Lor'themar Theron
    .accept 53737 >>Accept The Day Hope Died
step
    .goto 95,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Sunwing|r
    .fly Fairbreeze Village >>Fly to Fairbreeze Village
    .target Skymaster Sunwing
step
    .goto 94,51.21,69.28
    >>Use your [ExtraActionButton] on the illuminated spot.
    .complete 53737,1 --1/1 Light shed at Sylvanas' fall
step
    #label TheDayHopeDiedStart
    .goto 94,51.44,69.09
    *|cRXP_WARN_You can cancel the stun by pressing the macro in the "active items frame"|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Silvermoon Ballista|r
    .complete 53737,2 --1/1 Man a Silvermoon Ballista
    .macro Remove Aura,461859 >>/cancelaura Light the Way
    .target Silvermoon Ballista
step
    #label TheDayHopeDiedEnd
    .goto 94,51.41,68.90
    >>Use |T132330:0|t[Throw Glaive](1) on the |cRXP_ENEMY_Undeads|r
    .complete 53737,3 --50/50 Kill undead
step
    .goto 94,43.96,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r |cRXP_WARN_next to you|r.
    .turnin 53737 >>Turn in The Day Hope Died
    .target Lor'themar Theron
    .accept 53738 >>Accept Defense of Quel'Danas
step
    .goto 94,43.96,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r
    .complete 53738,1 --1/1 Talk to Skymaster Brightdawn
    .timer 151,RP
    .skipgossip 44036,2
    .target Skymaster Brightdawn
step
    .goto 122,48.35,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r
    .turnin 53738 >>Turn in Defense of Quel'Danas
    .target Lady Liadrin
    .accept 53725 >>Accept A People Shattered
step
    .goto 122,48.55,37.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lamp|r
    .complete 53725,1 --1/1 Light the Final Flame
step
    #loop
    .goto 122,48.33,36,8,0
    .goto 122,48.83,36.94,8,0
    .goto 122,48.6,36.93,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r
    .turnin 53725 >>Turn in A People Shattered
    .target Lady Liadrin
    .accept 53853 >>Accept The Setting Sun
step
    .goto 122,41.24,45.28,40,0
    .goto 122,38.77,47.59,40,0
    .goto 122,38.22,51.35,40,0
    .goto 122,38.94,54.56,40,0
    .goto 122,47.4,75.11,40,0
    .goto 122,50.3,84.11,40,0
    .goto 122,53.49,87.16
    >>Use your [ExtraActionButton] on the illuminated spot.
    .complete 53853,1 --1/1 Light shed on Anasterian's Fall
step
    .goto 122,53.25,85.67
    >>Kill |cRXP_ENEMY_Blightgut|r
    .complete 53853,2 --1/1 Blightgut slain
    .mob Blightgut
step
    .goto 122,50.3,84.11,40,0
    .goto 122,47.4,75.11,40,0
    .goto 122,38.94,54.56,40,0
    .goto 122,38.22,51.35,40,0
    .goto 122,38.77,47.59,40,0
    .goto 122,41.24,45.28,40,0
    .goto 122,48.36,35.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r
    .turnin 53853 >>Turn in The Setting Sun
    .target Lady Liadrin
    .accept 54096 >>Accept The Fall of the Sunwell
step
    #label SunwellStart1
    .isOnQuest 54096
    .goto 122,44.28,45.68
    .zone 973 >>Enter the Sunwell
step
    .isInScenario 1699
    .goto 973,46.64,23.88
    >>Use your [ExtraActionButton] on the illuminated spot.
    .scenario 3999,1
step
    .isInScenario 1699
    .goto 973,46.64,23.88
    *|cRXP_WARN_You can cancel the stun by pressing the macro in the "active items frame"|r
    >>Kill incoming waves of enemies.
    .scenario 4000,1,100
    .mob Decrepit Stalker
    .mob Elven Shambler
    .mob Nerubis Vanguard
    .macro Remove Aura,461859 >>/cancelaura Light the Way
step
    .isInScenario 1699
    .goto 973,46.64,23.88
    >>Kill |cRXP_ENEMY_Seer Drannix.|r
    .scenario 4001,1
    .mob Seer Drannix
step
    .isInScenario 1699
    #completewith next
    #label Arthas
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 4002,1
step
    .isInScenario 1699
    #completewith Arthas
    .goto 973,50.25,17.25
    .cast 284579 >>Use |T461859:0|t[Light the Way] your |cRXP_WARN_ExtraActionButton|r.
    .timer 22,RP
step
    #requires Arthas
    .isInScenario 1699
    .goto 973,48.33,20.55
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 4002,1
step
    .isInScenario 1699
    .goto 973,48.33,20.55
    >>Use the |cRXP_WARN_ExtraActionButton|r on the illuminated spot.
    .scenario 4039,1
    .timer 50,RP
step
    .isInScenario 1699
    .goto 973,52.27,13.69,10,0
    .goto 973,28.35,63.46,20,0
    .goto 973,38.12,83.64,20,0
    .goto 973,47.18,85.34,20,0
    .goto 973,46.16,61.95
    *|cRXP_WARN_You can cancel the stun by pressing the macro in the "active items frame"|r
    >>Escort |cRXP_FRIENDLY_Kael'thas Sunstrider.|r Kill the incoming |cRXP_ENEMY_attackers.|r
    .scenario 4003,1
    .timer 45,RP
    .macro Remove Aura,461859 >>/cancelaura Light the Way
    .target Kael'thas Sunstrider
    .mob Risen Defender
    .mob Tormented Magister
step
    .isInScenario 1699
    .goto 973,47.98,64.75
    >>Kill |cRXP_ENEMY_Necrotic Sentinel|r
    .complete 54096,1 --Complete the Fall of the Sunwell scenario
    .scenario 4004,1
    .mob Necrotic Sentinel
step
    #label The Fall of the Sunwell
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r
    .turnin 54096 >>Turn in The Fall of the Sunwell
    .target Lor'themar Theron
step
    #completewith The Fall of the Sunwell
    .goto 973,55.47,72.13
    .zone 110 >>Click on the |cRXP_PICK_Portal|r
step
    #requires The Fall of the Sunwell
    #label SunwellEnd1
    .goto 110,68.64,35.1,10,0
    .goto 110,63.98,31.85,10,0
    .goto 110,60.37,28.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r
    .turnin 54096 >>Turn in The Fall of the Sunwell
    .target Lor'themar Theron
]])
--Goblin
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Goblin Heritage Armor
#displayname |cFF1EFF006|r - Goblin
#next a) Nightborne Heritage Armor
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    .goto 85,39.51,80.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r
    .accept 57043 >>Accept Old Friends, New Opportunities
    .target Izzy
step
    .goto 210,34.61,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 57043 >>Turn in Old Friends, New Opportunities
    .target Sassy Hardwrench
    .accept 57045 >>Accept A Special Delivery
step
    .goto 210,32.82,26.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Goblin Flying Machine|r and accept the prompt.
    .complete 57045,1 --1/1 Travel to Crapopolis
    .target Goblin Flying Machine
step
    .goto 1532,53.86,65.37,10 >> Follow the Arrow
    .timer 18,RP
step
    .goto 1532,53.86,65.37
    .countdown 18 >> |cRXP_WARN_Wait for Gallywix departure.|r
step
    .goto 1532,53.57,61.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 57045 >>Turn in A Special Delivery
    .target Hobart Grapplehammer
    .accept 57047 >>Accept A Simple Experiment
    .timer 22,RP
step
    .goto 1532,53.00,58.56
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57047,1 --1/1 Listen to Hobart Grapplehammer
step
    .goto 1532,53.00,58.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .complete 57047,2 --1/1 Speak with Hobart Grapplehammer
    .target Hobart Grapplehammer
step
    .goto 1532,52.51,60.29
    .cast 305728 >>Click on |cRXP_PICK_Freezing Console|r
    .timer 24,RP
step
    .goto 1532,53.23,60.13
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57047,3 --1/1 Freezing Console activated
step
    .isOnQuest 57047
    .goto 1532,53.21,60.08
    .cast 305733 >>Click on |cRXP_PICK_Flame Console|r
    .timer 22,RP
step
    .goto 1532,54.00,59.74
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 57047,4 --1/1 Flame Console activated
step
    .goto 1532,54.00,59.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Flame Console|r
    .complete 57047,5 --1/1 Explosive Console activated
step
    .goto 1532,52.99,58.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 57047 >>Turn in A Simple Experiment
    .target Hobart Grapplehammer
    .accept 57048 >>Accept Shopping For Parts
step
    .goto 1532,56.11,78.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Greasefuse|r
    .turnin 57048 >>Turn in Shopping For Parts
    .target Crank Greasefuse
    .accept 57051 >>Accept Debt Collection!
step
    #loop
    .goto 1532,54.92,76.22,20,0
    .goto 1532,52.86,76.19,20,0
    .goto 1532,53.42,72.68,20,0
    .goto 1532,53.87,70.96,20,0
    .goto 1532,53.17,69.77,20,0
    .goto 1532,55.88,69.89,20,0
    .goto 1532,55.7,74.02,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shady Thug.|r
    *|cRXP_WARN_If you have to kill them|r Loot them for [|cRXP_LOOT_Unpaid Debt|r]
    .skipgossip
    .complete 57051,1 --8/8 Unpaid Debt
    .target Shady Thug
    .mob Shady Thug
step
    .goto 1532,56.12,78.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Greasefuse|r
    .turnin 57051 >>Turn in Debt Collection!
    .target Crank Greasefuse
    .accept 57052 >>Accept I've Got What You Need
step
    .goto 1532,58.75,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 57052 >>Turn in I've Got What You Need
    .target Hobart Grapplehammer
    .accept 57053 >>Accept Blunt Force Testing
step
    .goto 1532,53.23,59.97
    >>Use |T431762:0|t[X-52 Body Armor]
    .complete 57053,1 --1/1 X-52 Body Armor Equipped
    .use 171114
step
    .goto 1532,53.23,59.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Test Console|r
    .complete 57053,2 --1/1 Mechanized Lab Assistant activated
    .timer 6,RP
step
    .goto 1532,53.13,59.34
    >>Kill |cRXP_ENEMY_Mechanized Lab Assistant|r
    .complete 57053,3 --1/1 Mechanized Lab Assistant slain
    .mob Mechanized Lab Assistant
step
    .goto 1532,58.74,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 57053 >>Turn in Blunt Force Testing
    .target Hobart Grapplehammer
    .accept 57058 >>Accept Fun With Landmines
step
    .goto 1532,46.24,47.98
    >>Use |T431762:0|t[X-52 Body Armor]
    .complete 57058,1 --1/1 X-52 Personnel Armor equipped
    .use 174059
step
    #completewith next
    .goto 1532,47.84,50.61,10,0
    .cast 69070 >>Run into the bombs for an uplift; when close enough to the middle, use |T370769:0|t[Rocket Jump] while midair to get near the Refreshing coconut beverage
step
    .goto 1532,46.02,48.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Refreshing coconut beverage.|r
    .complete 57058,2 --1/1 Refreshing coconut beverage
step
    .goto 1532,51.77,62.22,10,0
    .goto 1532,52.09,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 57058 >>Turn in Fun With Landmines
    .target Hobart Grapplehammer
    .accept 57059 >>Accept Let's Rumble!
step
    #loop
    .goto 1532,54.02,58.66,15,0
    .goto 1532,53.55,61.22,15,0
    .goto 1532,52.21,60.38,15,0
    >>Kill |cRXP_ENEMY_Hired Scoundrel|r
    .complete 57059,1 --8/8 Hired Scoundrel slain
    .mob Hired Scoundrel
step
    .goto 1532,53.29,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gallywix|r
    .complete 57059,2 --1/1 Speak with Gallywix
    .skipgossip
    .target Gallywix
step
    .goto 1532,52.10,59.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 57059 >>Turn in Let's Rumble!
    .target Hobart Grapplehammer
    .accept 57077 >>Accept Buyers Wanted!
step
    .goto 1532,50.69,94.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Goblin Flying Machine|r and accept the prompt.
    .complete 57077,1 --1/1 Take the Flying Machine
    .target Goblin Flying Machine
step
    .goto 210,34.61,28.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 57077 >>Turn in Buyers Wanted!
    .target Sassy Hardwrench
    .accept 57078 >>Accept The VIP List
step
    .goto 71,51.20,29.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .complete 57078,1 --1/1 Noggenfogger invited
    .target Marin Noggenfogger
step
    .goto 64,75.93,74.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .complete 57078,2 --1/1 Pozzik invited
    .target Pozzik
step
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .complete 57078,3 --1/1 Gazlowe invited
    .target Gazlowe
step
    .goto 210,34.61,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 57078 >>Turn in The VIP List
    .target Sassy Hardwrench
    .accept 57079 >>Accept Beat The Crapopolis Outta Him!
step
    .isOnQuest 57079
    .goto 210,32.86,26.18
    .cast 306977 >>Click on the |cRXP_PICK_Goblin Flying Machine|r
    .target Goblin Flying Machine
step
    .goto 1531,52.31,84.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .scenario 4367,1 --Speak with Gazlowe at dock.
step
    #loop
    .goto 1531,53.13,59.45,5,0
    .goto 1531,52.58,58.9,5,0
    >>Kill |cRXP_ENEMY_Dax Blitzblaster|r and |cRXP_ENEMY_Street Thug|r to rescue |cRXP_FRIENDLY_Hobart Grapplehammer.|r
    .scenario 4368,1
    .mob Street Thug
    .mob Dax Blitzblaster
    .target Hobart Grapplehammer
step
    .isOnQuest 57079
    .goto 1531,52.58,58.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r
    .scenario 4369,1
step
    #label EndIncludePrepGuide
    .goto 1531,51.36,62.77,15,0
    .goto 1531,46.29,48.2
    >>Kill |cRXP_ENEMY_Gallywix|r, but be aware that he will repair himself three times before you can finally destroy him using your |cRXP_WARN_[ExtraActionButton]|r.
    *If you are struggling with survivability, you can use your |cRXP_WARN_[ExtraActionButton]|r to defend yourself from incoming fire damage as well.
    .complete 57079,1 --1/1 Crapopolis saved
    .mob Trade Prince Gallywix
step
    .goto 1531,47.86,50.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 57079 >>Turn in Beat The Crapopolis Outta Him!
    .target Hobart Grapplehammer
    .accept 57080 >>Accept A Fitting Reward
    .turnin 57080 >>Turn in *undefined*
]])
--Nightborne
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Nightborne Heritage Armor
#displayname |cFF1EFF007|r - Nightborne
#next a) Highmountain Heritage Armor
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    #completewith next
    .goto 85,38.59,75.92
    .zone 680 >>Click on the |cRXP_PICK_Portal|r to Nighthold
step
    .goto 680,59.33,85.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Arcanist Thalyssra|r
    .turnin 49784 >>Turn in Heritage of the Nightborne
    .target First Arcanist Thalyssra
]])
--HighmountainTauren
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Highmountain Heritage Armor
#displayname |cFF1EFF008|r - Highmountain
#next a) Mag'har Orc Heritage Armor
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    #completewith Heritage of Highmountain
    .zone 85 >>Go to Orgrimmar
step
    #completewith Heritage of Highmountain
    .goto 85,38.17,75.3
    .zone 652 >>Take the Portal from Orgrimmar to Highmountain
step
    #label Heritage of Highmountain
    .goto 652,54.95,63.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r
    .turnin 49783 >>Turn in Heritage of Highmountain
    .target Mayla Highmountain
]])
--MagharOrc
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Mag'har Orc Heritage Armor
#displayname |cFF1EFF009|r - Mag'har Orc
#next a) Zandalari Troll Heritage Armor
#chapter
<< Horde

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 85 >>Go to Orgrimmar
step
    .goto 85,70.61,44.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 51484 >>Turn in Heritage of the Mag'har
    .target Overlord Geya'rah
]])
--ZandalariTroll
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Zandalari Troll Heritage Armor
#displayname |cFF1EFF0010|r - Zandalari Troll
#next a) Vulpera Heritage Armor
#chapter
<< Horde

step
    #label StartIncludePrepGuide
    #completewith Heritage of Highmountain
    .zone 85 >>Go to Orgrimmar
step
    #completewith next
    .goto 85,52.98,90.58,15,0
    .goto 85,58.54,91.29
    .zone 862 >>Take the |cRXP_PICK_Portal|r from Orgrimmar to Zuldazar
step
    .goto 971,28.53,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 53721 >>Turn in Heritage of the Zandalari
    .target Alleria Windrunner
]])
--Vulpera
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Vulpera Heritage Armor
#displayname |cFF1EFF0011|r - Vulpera
#next a) Heritage Pandaren
#chapter

<< Horde

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 864 >>Go to Vol'dun
step
    .goto 864,56.78,49.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagashi|r
    .turnin 58435 >>Turn in Heritage of the Vulpera
    .target Hagashi
]])
--Pandaren
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Heritage Pandaren
#displayname |cFF1EFF0012|r - Pandaren
#next a) Haranir Heritage Armor
#chapter

step << Horde
    .isOnQuest 84444
    .goto 85,70.32,38.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 84444 >>Turn in Invitation to the Spirit Festival
    .target Ji Firepaw
step << Horde
    .goto 85,70.48,39.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .accept 84452 >>Accept The Wanderers
    .target Li Li Stormstout
step << Horde
    #completewith next
    #label air balloon
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84452,1 --1/1 Ride the hot air balloon
step << Horde
    #completewith air balloon
    .goto 85,70.82,38.89
    .vehicle >>Click on the Balloon
    .timer 65,RP
step << Horde
    #requires air balloon
    .goto 2366,49.51,24.58
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84452,1 --1/1 Ride the hot air balloon
step << Horde
    .goto 2366,50.68,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84452 >>Turn in The Wanderers
    .target Li Li Stormstout
step << Alliance
    .isOnQuest 84442
    .goto 84,68.39,16.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 84442 >>Turn in Invitation to the Spirit Festival
    .target Aysa Cloudsinger
step << Alliance
    .goto 84,68.17,16.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .accept 84451 >>Accept The Wanderers
    .target Li Li Stormstout
step << Alliance
    #completewith next
    #label air balloon2
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84451,1 --1/1 Ride the hot air balloon
step << Alliance
    #completewith air balloon2
    .goto 84,68.64,17.07
    .vehicle >>Click on the Balloon
    .timer 63,RP
step << Alliance
    #requires air balloon2
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84451,1 --1/1 Ride the hot air balloon
step << Alliance
    .goto 2366,50.69,19.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84451 >>Turn in The Wanderers
    .target Li Li Stormstout
step
    .goto 2366,50.59,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
    .accept 84453 >>Accept To Dai-Lo Farmstead
    .target Chen Stormstout
step << Horde
    .goto 2366,50.34,20.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 84457 >>Accept To Morning Breeze
    .target Ji Firepaw
step << Alliance
    .goto 2366,50.36,20.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 84456 >>Accept To Morning Breeze
    .target Aysa Cloudsinger
step << Horde
    .goto 2366,30.13,41.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 84457 >>Turn in To Morning Breeze
    .accept 84459 >>Accept Scamps Ain't It!
    .target Ji Firepaw
step << Alliance
    .goto 2366,30.15,41.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 84456 >>Turn in To Morning Breeze
    .accept 84458 >>Accept Devil's in the Details
    .target Aysa Cloudsinger
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r |cRXP_WARN_next to you|r.
    .accept 84459 >>Accept Scamps Ain't It!
    .target Ji Firepaw
step << Horde
    .goto 2366,30.15,41.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 84458 >>Accept Devil's in the Details
    .target Aysa Cloudsinger
step
    .goto 2366,28.57,41.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels|r
    *|cRXP_WARN_Kill any |cRXP_ENEMY_Amberleaf Scamp|r that might spawn|r.
    .complete 84459,1,2 --8/8 Wooden Barrels searched
    .mob Amberleaf Scamp
step
    .goto 2366,28.47,42.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Clue|r inside the house.
    .complete 84458,1,1 --3/3 Clues found
step
    .goto 2366,30.22,43.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    *|cRXP_WARN_Kill any |cRXP_ENEMY_Amberleaf Scamp|r that might spawn|r.
    .complete 84459,1,4 --8/8 Wooden Barrels searched
step
    .goto 2366,31.61,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morning Breeze Witness|r
    .complete 84458,1,2 --3/3 Clues found
    .skipgossipid 124332
    .target Morning Breeze Witness
step
    .goto 2366,32.44,42.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    *|cRXP_WARN_Kill any |cRXP_ENEMY_Amberleaf Scamp|r that might spawn|r.
    .complete 84459,1,6 --8/8 Wooden Barrels searched
step
    .goto 2366,31.51,39.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    *|cRXP_WARN_Kill any |cRXP_ENEMY_Amberleaf Scamp|r that might spawn|r.
    .complete 84459,1,7 --8/8 Wooden Barrels searched
step
    .goto 2366,30.44,38.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bananas|r
    .complete 84458,1,3 --3/3 Clues found
step
    .goto 2366,30.24,37.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    *|cRXP_WARN_Kill any |cRXP_ENEMY_Amberleaf Scamp|r that might spawn|r.
    .complete 84459,1,8 --8/8 Wooden Barrels searched
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r and |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_next to you|r.
    .turnin 84459 >>Turn in Scamps Ain't It!
    .turnin 84458 >>Turn in Devil's in the Details
    .accept 84460 >>Accept Red Hand or Herring?
    .target Aysa Cloudsinger
    .target Ji Firepaw
step
    .goto 2366,26.36,30.62
    >>Defeat |cRXP_ENEMY_Huk Huk|r
    .complete 84460,1 --1/1 Huk Huk the Hozen Chieftain confronted
    .mob Huk Huk
step
    .goto 2366,22.43,33.79
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84460,2 --1/1 Special Fireworks found
step
    .goto 2366,22.43,33.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 84460 >>Turn in Red Hand or Herring?
    .target Aysa Cloudsinger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r and |cRXP_FRIENDLY_Chon Po Stormstout|r
    .turnin 84453 >>Turn in To Dai-Lo Farmstead
    .accept 84454 >>Accept Tide of Virmen
    .goto 2366,69.72,67.63
    .target +Chen Stormstout
    .accept 84455 >>Accept Big Bertha
    .goto 2366,69.86,67.55
    .target +Chon Po Stormstout
step
    #completewith Yak Eater
    >>Kill |cRXP_ENEMY_Virmen|r and |cRXP_ENEMY_Insects|r
    .complete 84454,1,100 --Take back the farm! (100%)
    .mob Swarming Nymph
    .mob Emerald Superpest
    .mob Plump Virmen
step
    #completewith next
    #label Big Bertha found
    .goto 2366,72.14,70.68,20,0
    #hidewindow
    .complete 84455,1 --1/1 Big Bertha found
step
    #completewith Big Bertha found
    #title |cFFFCDC00Follow the Arrow|r
    .goto 2366,74.65,73.69,50 >>Enter the Burrow
step
    #requires Big Bertha found
    .goto 2366,74.65,73.69
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84455,1 --1/1 Big Bertha found
step
    #label Yak Eater
    .goto 2366,74.65,73.69
    >>Kill |cRXP_ENEMY_Yak Eater|r
    .complete 84455,2 --1/1 Yak Eater slain
    .mob Yak Eater
step
    #completewith next
    #label Take back the farm
    >>Kill |cRXP_ENEMY_Virmen|r and |cRXP_ENEMY_Insects|r
    .complete 84454,1,100 --Take back the farm! (100%)
    .mob Swarming Nymph
    .mob Emerald Superpest
    .mob Plump Virmen
step
    #completewith Take back the farm
    #title |cFFFCDC00Follow the Arrow|r
    .goto 2366,75.05,69.25,30 >>Leave the Burrow
step
    #requires Take back the farm
    #loop
    .goto 2366,74.56,67.01,25,0
    .goto 2366,70.75,69.75,30,0
    .goto 2366,67.54,75.1,30,0
    .goto 2366,68.96,82.38,30,0
    .goto 2366,74.57,77.23,30,0
    .goto 2366,74.61,72,30,0
    >>Kill |cRXP_ENEMY_Virmen|r and |cRXP_ENEMY_Insects|r
    *>>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Objects|r
    .complete 84454,1,100 --Take back the farm! (100%)
    .mob Swarming Nymph
    .mob Emerald Superpest
    .mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chon Po Stormstout|r and |cRXP_FRIENDLY_Chen Stormstout|r
    .turnin 84455 >>Turn in Big Bertha
    .goto 2366,69.85,67.52
    .target +Chon Po Stormstout
    .turnin 84454 >>Turn in Tide of Virmen
    .accept 84468 >>Accept Brew You One Better
    .goto 2366,69.73,67.6
    .target +Chen Stormstout
step
    .goto 2366,69.73,67.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brews|r and give it to the |cRXP_FRIENDLY_Dai-Lo Villager|r.
    .complete 84468,1 --3/3 Chen Stormstout's Brew offered
    .complete 84468,2 --3/3 Chon Po's Brew offered
    .target Dai-Lo Villager
step
    .goto 2366,69.71,67.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
    .turnin 84468 >>Turn in Brew You One Better
    .target Chen Stormstout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mr. Crane|r |cRXP_WARN_next to you|r.
    .accept 84461 >>Accept It's Not a Spirit Festival Without Spirits
    .target Mr. Crane
step
    #completewith next
    #label Without Spirits
    .goto 2366,53.25,47.43,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84461 >>Turn in It's Not a Spirit Festival Without Spirits
    .target Li Li Stormstout
    .accept 84462 >>Accept Patterns in Static
    .disablecheckbox
step
    #completewith Without Spirits
    .goto 2366,51.51,46.25,50 >>Enter the Temple
step
    #requires Without Spirits
    .goto 2366,51.51,46.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84461 >>Turn in It's Not a Spirit Festival Without Spirits
    .target Li Li Stormstout
    .accept 84462 >>Accept Patterns in Static
step
    #loop
    .goto 2366,51.14,44.14,10,0
    .goto 2366,49.96,45.04,10,0
    .goto 2366,49.25,47.01,10,0
    .goto 2366,47.55,47.14,10,0
    .goto 2366,49.4,47.78,10,0
    .goto 2366,49.88,49.53,10,0
    .goto 2366,51.15,50.49,10,0
    .goto 2366,51.4,52.34,10,0
    .goto 2366,51.8,50.41,10,0
    .goto 2366,53.54,48.28,10,0
    .goto 2366,55.45,47.51,10,0
    .goto 2366,53.75,47.05,10,0
    >>Mount UP and Run into the Clouds
    .complete 84462,1 --30/30 Remnants of Wind
step
    .goto 2366,51.51,43.96
    >>Use the |cRXP_WARN_ExtraActionButton|r on the spot.
    .complete 84462,2 --1/1 Cast Updraft at a windy location
    .timer 13,RP
    .usespell 463163
step
    .goto 2366,51.71,48.32
    >>Glide to |cRXP_FRIENDLY_Dafeng|r
    .complete 84462,3 --1/1 Dafeng, Ancient Spirit of Wind found
    .target Dafeng
step
    .goto 2366,51.71,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dafeng|r
    .turnin 84462 >>Turn in Patterns in Static
    .timer 20,RP
    .target Dafeng
step
    .goto 2366,50.88,76.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .accept 84463 >>Accept Codependency
    .target Jojo Ironbrow
step
    .goto 2366,45.70,69.90
    >>Kill |cRXP_ENEMY_Mud Amalgam|r
    .complete 84463,1 --1/1 Mud Amalgam slain
    .mob Mud Amalgam
step
    .goto 2366,39.67,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84463 >>Turn in Codependency
    .target Li Li Stormstout
    .accept 84464 >>Accept Lost My Spark
step
    .goto 2366,39.97,63.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shu|r
    .complete 84464,1 --1/1 Speak to Shu
    .skipgossipid 131528
    .target Shu
step
    .goto 2366,40.28,56.65
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84464,2 --1/1 Steam trail followed
step
    .goto 2366,40.30,56.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wugou|r
    .complete 84464,3 --1/1 Speak to Wugou
    .skipgossipid 124540
    .target Wugou
step
    .goto 2366,39.27,57.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dafeng|r
    .complete 84464,4 --1/1 Speak to Dafeng
    .skipgossipid 124541
    .target Dafeng
step
    .goto 2366,39.59,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84464 >>Turn in Lost My Spark
    .target Li Li Stormstout
    .accept 84465 >>Accept Of Water and Blood
step
    #completewith next
    #label Thornbranch Scamp
    >>Kill |cRXP_ENEMY_Thornbranch Scamp|r. Loot them for |T463856:0|t[|cRXP_LOOT_Blue Floristar|r].
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flowers|r
    .complete 84465,2 --10/10 Thornbranch Scamp slain
    .complete 84465,1 --10/10 Blue Floristar
    .mob Thornbranch Scamp
step
    #completewith Thornbranch Scamp
    .goto 2366,38.69,56.08,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires Thornbranch Scamp
    #loop
    .goto 2366,24.1,64.96,30,0
    .goto 2366,21.02,67.78,30,0
    .goto 2366,20.06,60.7,30,0
    .goto 2366,18.39,54.69,30,0
    .goto 2366,24.22,60.77,30,0
    .goto 2366,23.5,42.92,30,0
    .goto 2366,18.52,40,30,0
    .goto 2366,19.16,46.16,30,0
    >>Kill |cRXP_ENEMY_Thornbranch Scamp|r. Loot them for |T463856:0|t[|cRXP_LOOT_Blue Floristar|r].
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flowers|r
    .complete 84465,2 --10/10 Thornbranch Scamp slain
    .complete 84465,1 --10/10 Blue Floristar
    .mob Thornbranch Scamp
step
    .goto 2366,19.44,49.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flowers|r
    .complete 84465,3 --1/1 Flowers placed by Strongbo's memorial
step
    .goto 2366,22.23,56.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flowers|r
    .complete 84465,4 --1/1 Flowers placed by Xiu Li's memorial
step
    .goto 2366,21.88,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84465 >>Turn in Of Water and Blood
    .target Li Li Stormstout
    .accept 84466 >>Accept Thousands of Years Ago...
step
    .goto 2366,52.63,18.19
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84466,2 --1/1 Return to Li Li in Wu-Song Village
step
    .goto 2366,52.63,18.19
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fireworks|r
    .complete 84466,3 --1/1 Fireworks lit
    .skipgossipid 124545
step
    .goto 2366,52.47,19.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 84466 >>Turn in Thousands of Years Ago...
    .target Li Li Stormstout
step
    .goto 2366,52.35,19.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 84467 >>Accept This Was Home
    .target Lorewalker Cho
step
    .goto 2366,52.41,19.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Table|r
    .complete 84467,1,10 --Celebrate the Spirit Festival! (100%)
step
    .goto 2366,51.62,19.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Food|r
    .complete 84467,1,40 --Celebrate the Spirit Festival! (100%)
step
    .goto 2366,50.87,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wugou|r
    .complete 84467,1,50 --Celebrate the Spirit Festival! (100%)
    .target Wugou
step
    .goto 2366,50.49,19.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chon Po Stormstout|r and |cRXP_FRIENDLY_Chen Stormstout|r
    .complete 84467,1,70 --Celebrate the Spirit Festival! (100%)
    .target Chen Stormstout
    .target Chon Po Stormstout
step
    .goto 2366,49.42,19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huk Huk|r
    .complete 84467,1,80 --Celebrate the Spirit Festival! (100%)
    .target Huk Huk
step
    .goto 2366,50.36,18.7,5,0
    .goto 2366,50.84,18.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tushui Monk|r and defeat her.
    .complete 84467,1,90 --Celebrate the Spirit Festival! (100%)
    .skipgossip
    .target Tushui Monk
step
    .goto 2366,50.84,18.77,5,0
    .goto 2366,52.33,19.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fireworks|r and use them
    .complete 84467,1 --Celebrate the Spirit Festival! (100%)
    .use 235818
step
    .goto 2366,52.33,19.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 84467 >>Turn in This Was Home
    .target Lorewalker Cho
    .accept 92030 >>Accept A New Tradition
step
    .goto 2366,50.58,19.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chon Po Stormstout|r
    .turnin 92030 >>Turn in A New Tradition
    .target Chon Po Stormstout
]])
--Haranir
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Haranir Heritage Armor
#displayname |cFF1EFF0013|r - Haranir
#internal
#chapter

step
    >>zone 2413 >>Enter Harandar
    *|cRXP_WARN_Use|r |T5927658:0|t[Rootwalking]
    .use 1238686
step
    .goto 2413,50.84,53.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r.
    .turnin 82771 >>Turn in Heritage of the Haranir
    .target Orweyna
]])



--Nightborne
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Nightborne Unlock 112213
#displayname |cFF00CCFF1|r - Nightborne
#next a) Highmountain Tauren Unlock 12123123
#internal

-- step
--     #completewith NightborneStartQuestline
--     .zone 85 >>Get to Orgrimmar
-- step
--     .isOnQuest 49930
--     .isQuestAvailable 49930
--     .goto 85,53.23,90.47,10,0
--     .goto 85,37.76,81.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
--     .turnin 49930 >>Turn in The Call for Allies
--     .target Ji Firepaw
-- step
--     .isQuestAvailable 50242
--     .goto 85,37.76,81.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
--     .accept 50242 >>Accept A Choice of Allies
--     .target Ji Firepaw
-- step
--     .isOnQuest 50242
--     >>Interact with the banners in any order
--     .goto 85,37.65,81.43
--     .complete 50242,1 -- Learn more about the Highmountain Tauren
--     .complete 50242,2 -- Learn more about the nightborne
--     .complete 50242,3 -- Learn more about the Maghar Orcs
--     .complete 50242,4 -- Learn more about the Zandalari trolls
--     .complete 50242,5 -- Learn more about the Vulpera
-- step
--     .isQuestComplete 50242
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
--     .goto 85,37.65,81.44
--     .turnin 50242 >>Turn in A Choice of Allies
--     .target Ji Firepaw
step
    -- #label NightborneStartQuestline
    .goto 85,37.65,81.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .accept 49973 >>Accept Thalyssra's Estate
    .target Ji Firepaw
step << Mage
    #completewith NightborneThalyssraEstate
    .train 224869,3
    .cast 224869 >>Use Teleport: Dalaran - Broken Ilses
step
    #completewith NightborneThalyssraEstate
    .goto 85,53.38,90.45,10,0
    .goto 85,58.90,89.51
    .zone 630 >>Take the Portal to Azsuna
step
    #label NightborneThalyssraEstate
    .goto 680,65.88,63.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r.
    *|cRXP_WARN_Press "ESC" to skip the upcoming cutscene|r
    .turnin 49973 >>Turn in Thalyssra's Estate
    .accept 49613 >>Accept Silvermoon City
    .target Lady Liadrin
step << Mage
    .isOnQuest 49613
    #completewith NightborneThalyssraEstate
    .train 32272,3
    .cast 32272 >>Use Teleport: Silvermoon
step
    .isOnQuest 49613
    .zoneskip 110
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .goto 680,65.88,63.71
    .zone 85 >>Use the Cloak of Coordination
step
    .isOnQuest 49613
    #completewith next
    .zoneskip 110
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .isOnQuest 49613
    .zoneskip 110
    .goto 627,55.27,23.93
    .zone 85 >>Take the Portal to Orgrimmar
step
    .zoneskip 85,1
    .goto 85,56.02,88.25
    .zone 110 >>Take the Portal to Silvermoon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to
    *|cRXP_WARN_Press "ESC" to skip the upcoming cutscene|r
    .goto 110,58.11,19.87
    .turnin 49613 >>Turn in Silvermoon City
    .accept 49354 >>Accept Remember the Sunwell
    .target Lady Liadrin
step
    #label RemembertheSunwellStart
    .isOnQuest 49354
    .goto 110,53.95,19.49
    .zone 973 >>Click on the |cRXP_PICK_Portal|r
step
    .goto 973,56.85,72.72
    .isInScenario 1443
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 3580,1
    .timer 60,RP
step
    .isInScenario 1443
    .goto 973,49.44,65.97
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 3583,1
step
    #loop
    .goto 973,46.43,74.16,25,0
    .goto 973,36.95,61.32,25,0
    .goto 973,47.16,47.87,25,0
    .goto 973,55.03,59.13,25,0
    .isInScenario 1443
    >>Kill |cRXP_ENEMY_Voidbeings|r
    .scenario 3584,1,100
    .mob Void Fragment
    .mob Void Effusion
    .mob Creeping Void
step
    .isInScenario 1443
    .goto 973,48.59,67.07
    >>Kill |cRXP_ENEMY_Aruun the Darkener|r
    .scenario 3585,1
    .timer 32,RP
    .mob Aruun the Darkener
step
    .isInScenario 1443
    .goto 973,48.59,67.07
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 3663,1
    .timer 60,RP
step
    .isInScenario 1443
    .goto 973,62.03,67.6
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 3586,1
    .complete 49354,1 --"Remember the Sunwell" scenario complete
step
    #label RemembertheSunwellEnd
    .isOnQuest 49354
    .goto 973,62.03,67.6
    .zone 110 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Silvermoon Translocator|r
step
    .goto 110,58.44,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r.
    .turnin 49354 >>Turn in Remember the Sunwell
    .accept 49614 >>Accept The Nightborne
    .target Lady Liadrin
step << Mage
    .isOnQuest 49614
    #completewith NightborneTheNightborne
    .zoneskip 85
    .goto 110,58.44,19.13
    .cast 3567>>Use Teleport: Orgrimmar
step
    .isOnQuest 49614
    #completewith next
    .zoneskip 85
    .itemcount 140192,1
    .cooldown item,140192,>0,1
    .goto 680,65.88,63.71
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .isOnQuest 49614
    .zoneskip 627,1
    .goto 627,55.27,23.93
    .zone 85 >>Take the Portal to Orgrimmar
step
    #completewith next
    .zoneskip 85
    .goto 110,51.93,18.06,10,0
    .goto 110,48.52,14.91,10,0
    .goto 110,49.80,13.85,8,0
    .goto 110,49.52,14.80
    .zone 18 >>Use the |cRXP_PICK_Orb of Translocation|r.
step
    #completewith next
    .goto 18,60.74,58.68
    .zone 85 >>Take the Portal to Orgrimmar on top of the tower. |cRXP_WARN_You may have to talk to Zidormi (speech bubble on the map) to get to the correct phase|r.
step
    #label NightborneTheNightborne
    .goto 85,37.76,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 49614 >>Turn in The Nightborne
    .target Ji Firepaw
]])
---VoidElf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Void Elf Unlock 1hjkjh
#displayname |cFF00CCFF1|r - Void Elf
#next a) Lightforged Draenei Unlock 1hgjjg
#internal


step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 49787 >>Accept The Ghostlands
    .target Aysa Cloudsinger
step
    .goto 84,52.44,13.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tCick on the |cRXP_PICK_Void Portal|r.
    .complete 49787,1 --1/1 Travel to the Ghostlands
step
    #label SanctumoftheMoonStart
    #completewith next
    .goto 95,33.8,33.52,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Notes|r.
    .complete 49787,2 --1/1 Umbric's Notes - Sanctum of the Moon
step
    #completewith SanctumoftheMoonStart
    .goto 95,33.63,34.46,25 >>Enter the building
step
    #requires SanctumoftheMoonStart
    .goto 95,33.63,34.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Notes|r.
    .complete 49787,2 --1/1 Umbric's Notes - Sanctum of the Moon
step
    #label SanctumoftheMoonEnd
    .goto 95,33.79,33.39,10,0
    .goto 95,47.11,56.39,10,0
    .goto 95,46.65,56.13,10,0
    .goto 95,46.88,54.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Notes|r.
    .complete 49787,3 --1/1 Umbric's Notes - Andilien Estate
step
    .goto 95,46.69,56.05,5,0
    .goto 95,57.71,51.13,10,0
    .goto 95,65.6,41.78,30,0
    .goto 95,71.04,32.02,5,0
    .goto 95,79.35,16.76,5,0
    .goto 95,79.66,17.52
    .cast 258931 >>Jump to and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Teleportation Console|r.
step
    #label SanctumoftheMoonStart2
    .goto 95,79.99,19.86,5,0
    .goto 95,79.27,20.21,5,0
    .goto 95,79.66,19.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Book|r.
    .complete 49787,4 --1/1 Umbric's Notes - Dawnstar Spire
step
    .goto 95,79.68,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .turnin 49787 >>Turn in The Ghostlands
    .accept 48962 >>Accept Telogrus Rift
    .target Alleria Windrunner
step
    .isOnQuest 48962
    .goto 95,79.64,19.8
    .zone 972 >>Click on the |cRXP_PICK_Void Portal|r.
step
    .isOnQuest 48962
    .goto 972,47.84,73.88
    .gossipoption 47941 >>Talk to |cRXP_FRIENDLY_Magister Umbric|r.
    .timer 66,Duration until continuation.
    .target Magister Umbric
step
    .isInScenario 1410
    .goto 972,48.97,73.02
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 3675,1
step
    .isInScenario 1410
    .goto 972,37.3,49.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r.
    .scenario 3490,1
step
    .isInScenario 1410
    .goto 972,37.3,49.23
    >>Kill |cRXP_ENEMY_Void Creatures|r.
    *|cRXP_WARN_Don't be close to black pulsating bubbles|r.
    .scenario 3662,1,100
    .mob Creeping Void
    .mob Netherguard Phaseblade
    .mob Curious Voidstalker
    .mob Netherguard Transmogrifier
step
    .isInScenario 1410
    .goto 972,37.3,49.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r.
    .scenario 3673,1
step
    .isInScenario 1410
    .goto 972,28.96,40.21
    >>Kill |cRXP_ENEMY_Void Creatures|r.
    *|cRXP_WARN_Don't be close to black pulsating bubbles|r.
    .scenario 3495,1,100
    .mob Dark Manifestation
    .mob Curious Voidstalker
step
    .isInScenario 1410
    .goto 972,28.96,40.21
    >>Kill |cRXP_ENEMY_Nhr'ghesh|r.
    .scenario 3496,1
    .mob Nhr'ghesh
step
    .isInScenario 1410
    .goto 972,28.89,38.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r.
    .scenario 3520,1
step
    .isInScenario 1410
    .goto 972,29.02,27.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidforge|r.
    .scenario 3674,1,1
step
    .isInScenario 1410
    .goto 972,28.5,21.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidforge|r.
    .scenario 3674,1,2
step
    .isInScenario 1410
    .goto 972,26.23,24.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidforge|r.
    .scenario 3674,1,3
step
    #label SanctumoftheMoonEnd2
    .isInScenario 1410
    .goto 972,27.78,24.1
    >>Kill |cRXP_ENEMY_Nether-Prince Durzaan|r.
    .complete 48962,1 --"Telogrus Rift" scenario complete
    .scenario 3491,1
    .mob Nether-Prince Durzaan
step
    #completewith next
    #label Telogrus Rift
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 48962 >>Turn in Telogrus Rift
    .target Aysa Cloudsinger
step
    #completewith Telogrus Rift
    .goto 972,27.98,24.48
    .cast 253691 >>Click on the |cRXP_PICK_Void Portal|r to teleport to |cRXP_WARN_Stormwind|r.
    .isOnQuest 48962
step
    #requires Telogrus Rift
    .goto 84,52.05,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 48962 >>Turn in Telogrus Rift
    .target Aysa Cloudsinger

]])
