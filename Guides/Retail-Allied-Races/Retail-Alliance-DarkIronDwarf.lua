RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Allied Race Unlocks
#subgroup Dark Iron Dwarf
#name 9) Dark Iron Dwarf Questline
#displayname Final Chapter

<< Alliance

step
    #completewith next
    .zone 84 >>Travel to |cFFfa9602to Stormwind.|r
step
    .accept 49929 >>Accept The Call for Allies
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cFFfa9602inside the Stormwind Embassy.|r
    .turnin 49929 >>Turn in The Call for Allies
    .accept 50239 >>Accept A Choice of Allies
    .target Aysa Cloudsinger
step
    .goto 84,52.22,13.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Elf Banner.|r
    .complete 50239,2 --1/1 Learn about the Void Elves
step
    .goto 84,52.34,13.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kul Tiran Banner.|r
    .complete 50239,4 --1/1 Learn about the Kul Tirans
step
    .goto 84,51.73,13.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mechagnome Banner.|r
    .complete 50239,5 --1/1 Learn about the Mechagnomes
step
    .goto 84,51.78,13.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dark Iron Dwarf Banner.|r
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightforged Draenei Banner.|r
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 50239 >>Turn in A Choice of Allies
    .accept 51813 >>Accept Blackrock Depths
    .target Aysa Cloudsinger
step
    .goto 84,51.88,14.06
    .gossipoption 48178 >> Talk to |cFF00FF25Moira Thaurissan.|r
    .target Moira Thaurissan
    .isOnQuest 51813
step
    .goto 1159,56.03,31.84
    >>|cRXP_WARN_Head to the location indicated by the arrow and wait for the brief roleplay.|r
    .scenario 3830,1 --1/1
    .isOnQuest 51813
step
    .goto 1159,55.84,31.94
    .cast 274627 >> Click the |cRXP_PICK_Crate|r |cFFfa9602on the ground.|r
    .isOnQuest 51813
step
    .goto 1159,56.65,31.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r |cFFfa9602on The Black Anvil.|r
    .scenario 3847,1 
    .timer 5, Time until first wave.
    .isOnQuest 51813
step
    .goto 1159,56.65,31.33
    >>|cRXP_WARN_Wait for the brief roleplay then|r Kill |cRXP_ENEMY_Congealed Azerite.|r
    .scenario 3848,1,75
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>Kill |cRXP_ENEMY_Unleashed Azerite.|r
    .scenario 3848,1,91
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>Kill |cRXP_ENEMY_Unbound Azerite.|r
    .scenario 3848,1,100
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,49.93,41.67
    >>|cRXP_WARN_Head to the location indicated by the arrow and wait for the brief roleplay.|r
    .scenario 3849,1
    .isOnQuest 51813
    .mob Venture Co. Skyscorcher
step
    .goto 1159,49.93,41.67
    >>Kill |cRXP_ENEMY_Venture Co. Skyscorcher.|r
    .scenario 3850,1
    .isOnQuest 51813
    .mob Venture Co. Skyscorcher
step
    .goto 1159,38.09,58.9,15,0
    .goto 1159,29.93,56.72,10,0
    .goto 1159,35.73,63.84
    >>Kill every |cRXP_ENEMY_Enemy|r you encounter on your path.
    .scenario 3851,1,100
    .isOnQuest 51813
    .mob Wanton Sapper
    .mob Azerite Extractor
    .mob Fanatical Driller
    .mob Venture Co. Earthshaper
step
    .goto 1159,35.73,63.84
    >>Defeat |cRXP_ENEMY_Rixxa Fluxflame.|r by reducing her health to 75%.
    .scenario 3852,1
    .timer 11, Duration until continuation.
    .mob Rixxa Fluxflame
    .isOnQuest 51813
step
    .goto 1159,36.79,61.65
    .cast 3365 >> Click the |cRXP_PICK_Propellant Canister|r |cFFfa9602on the ground.|r
    .isOnQuest 51813
step
    .goto 1159,39.37,55.18
    .cast 3365 >> Click the |cRXP_PICK_Propellant Canister|r |cFFfa9602on the ground.|r
    .isOnQuest 51813
step
    .goto 1159,44.33,49.55
    .cast 3365 >> Click the |cRXP_PICK_Propellant Canister|r |cFFfa9602on the ground.|r
    .isOnQuest 51813
step
    .goto 1159,49.23,44.38
    .cast 3365 >> Click the |cRXP_PICK_Propellant Canister|r |cFFfa9602on the ground.|r
    .isOnQuest 51813
step
    .goto 1159,57.11,30.41
    >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .complete 51813,1 --Blackrock Depths scenario completed
step
    .goto 1159,57.04,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan.|r
    .turnin 51813 >>Turn in Blackrock Depths
    .accept 53351 >>Accept The MOTHERLODE!!: Ironfoe
    .target Moira Thaurissan
step
    #completewith Turn in The MOTHERLODE!!: Ironfoe
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat.|r 
    +|cRXP_WARN_You can also leave using other standard methods.|r
    .isOnQuest 53351
step
    .goto 84,51.89,14.07
    .gossipoption 48181 >>Talk to |cFF00FF25Moira Thaurissan.|r
    .target Moira Thaurissan
    .isOnQuest 53351
step
    #label Turn in The MOTHERLODE!!: Ironfoe
    .goto 84,51.89,14.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan.|r
    .turnin 53351 >>Turn in The MOTHERLODE!!: Ironfoe
    .accept 53342 >>Accept Molten Core
    .target Moira Thaurissan
    .isOnQuest 53351
step
    .goto 84,51.89,14.07
    .gossipoption 48179 >>Talk to |cFF00FF25Moira Thaurissan.|r
    .target Moira Thaurissan
    .isOnQuest 53342
step
    .goto 1160,29.17,26.27
    .vehicle >>Click on the |cRXP_PICK_Tank.|r
    .target The Tank
    .isOnQuest 53342
step
    .goto 1160,33.04,21.38,5 >>Use |T1032476:0|t[Afterburn](2) to sprint |cFFfa9602of the edge.|r |cRXP_WARN_Aim to land on the mountain cliff.|r
    .isOnQuest 53342
step
    .goto 1160,41.94,25.73,25,0
    .goto 1160,44.83,64.11,15 >>Use |T1032476:0|t[Afterburn](2) to sprint and |T135781:0|t[Frozen Keekers](1) to kill |cRXP_ENEMY_enemies|r |cFFfa9602infront of you.|r
    .timer 7, Duration until continuation.
    .isOnQuest 53342
step
    .goto 1160,61.13,61.75,10,0
    .goto 1160,62.08,53.53,10,0
    .goto 1160,59.21,48.71,10,0
    .goto 1160,56.71,54.29,10 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .timer 20, Duration until continuation.
    .isOnQuest 53342
step
    .goto 1160,56.48,54.86
    >>Kill |cRXP_ENEMY_Gezzrok the Keeper|r and then |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r |cFFfa9602in the middle.|r
    .complete 53342,2 --1/1 Fragment o' the Molten Core
    .mob Gezzrok the Keeper
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat.|r 
    +|cRXP_WARN_You can also leave using other standard methods.|r
    .isOnQuest 53342
step
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan.|r
    .turnin 53342 >>Turn in Molten Core
    .accept 53352 >>Accept Firelands
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .gossipoption 48180 >>Talk to |cFF00FF25Moira Thaurissan.|r
    .target Moira Thaurissan
    .isOnQuest 53352  
step
    .goto 1958,49.24,29.7
    >>|cRXP_WARN_Wait for the brief roleplay then|r then Kill |cRXP_ENEMY_Dark Iron Cultist.|r 
    .scenario 3982,1
    .mob Dark Iron Cultist
    .isOnQuest 53352
step
    .goto 1958,49.2,25.47,10 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    >>|cFFFCDC00Press "Escape" on your keyboard to skip the cinematic.|r
    .isOnQuest 53352
step
    .goto 1959,50.82,67.4,5,0
    .goto 1959,48.71,62.17,10,0
    .goto 1959,50.69,59.05,10,0
    >>Kill most |cRXP_ENEMY_enemies|r you encounter on your path.
    .scenario 3983,1,100
    .mob Blazing Elemental
    .mob Lava Spawn
    .mob Molten Giant
    .mob Flamewalker Sentinel
    .mob Ancient Core Hound
    .isOnQuest 53352
step
    .goto 1959,50.58,24.56,10 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .timer 60, Duration until continuation.
    .isOnQuest 53352
step
    .goto 1959,50.53,20.76
    >>Kill |cRXP_ENEMY_High Justice Grimstone.|r
    .scenario 3986,1
    .mob High Justice Grimstone
    .isOnQuest 53352
step
    .goto 1959,50.53,20.76
    >>Kill |cRXP_ENEMY_High Justice Grimstone.|r
    .scenario 3984,1
    .mob High Justice Grimstone
    .isOnQuest 53352
step
    .goto 1959,50.51,19.26
    >>Stand in the Lava Bubble |cFFfa9602infront of the giant lava pool.|r
    .scenario 3985,1,100
    .isOnQuest 53352
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat.|r 
    +|cRXP_WARN_You can also leave using other standard methods.|r
    .isOnQuest 53352
step
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan.|r
    .turnin 53352 >>Turn in Firelands
    .accept 51474 >>Accept Forged in Fire an' Flame
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .gossipoption 48178 >>Talk to |cFF00FF25Moira Thaurissan.|r
    .target Moira Thaurissan
    .isOnQuest 51474
step
    .goto 1159,56.65,31.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Yellow Orb|r |cFFfa9602on the anvil.|r
    .complete 51474,1 --1/1 Black Anvil repaired
step
    .goto 1159,57.19,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan.|r
    .turnin 51474 >>Turn in Forged in Fire an' Flame
    .accept 53566 >>Accept Dark Iron Dwarves
    .target Moira Thaurissan
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat.|r 
    +|cRXP_WARN_You can also leave using other standard methods.|r
    .isOnQuest 53566
step
    .goto 84,52.02,13.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 53566 >>Turn in Dark Iron Dwarves
    .target Aysa Cloudsinger
]])