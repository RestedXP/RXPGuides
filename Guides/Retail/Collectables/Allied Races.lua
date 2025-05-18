-- ================================================================
-- ================    ALLIED RACE UNLOCK   =======================
-- ================================================================

-----------------------------------------------------
--- ALLIANCE
-----------------------------------------------------

--SEPERATOR
RXPGuides.RegisterGuide([[
#retail
#group RestedXP Collectables
#subgroup Allied Races
#name 1a
#displayname |cFFFCDC00UNLOCK|r
#disabled


]])

---VoidElf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name a) Void Elf Unlock
#displayname |cFF00CCFF1|r - Void Elf
#next ab) Lightforged Draenei Unlock

<< Alliance !VoidElf

step
    #completewith next
    .zone 84 >>Travel to |cRXP_WARN_to Stormwind|r.
step
    .accept 49929 >>Accept The Call for Allies
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_inside the Stormwind Embassy|r.
    .turnin 49929 >>Turn in The Call for Allies
    .accept 50239 >>Accept A Choice of Allies
    .target Aysa Cloudsinger
step
    .goto 84,52.22,13.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Elf Banner|r.
    .complete 50239,2 --1/1 Learn about the Void Elves
step
    .goto 84,52.34,13.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Kul Tiran Banner|r.
    .complete 50239,4 --1/1 Learn about the Kul Tirans
step
    .goto 84,51.73,13.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mechagnome Banner|r.
    .complete 50239,5 --1/1 Learn about the Mechagnomes
step
    .goto 84,51.78,13.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Dark Iron Dwarf Banner|r.
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Lightforged Draenei Banner|r.
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 50239 >>Turn in A Choice of Allies
    .accept 49787 >>Accept The Ghostlands
    .target Aysa Cloudsinger
step
    .goto 84,52.44,13.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tCick on the |cRXP_PICK_Void Portal|r.
    .complete 49787,1 --1/1 Travel to the Ghostlands
step
    .goto 95,33.87,33.37,5,0
    .goto 95,33.63,34.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Umbric's Notes - Sanctum of the Moon|r.
    .complete 49787,2 --1/1 Umbric's Notes - Sanctum of the Moon
step
    .goto 95,33.7,33.59,5,0
    .goto 95,34,33.19,5,0
    .goto 95,46.88,55.00,5,0
    .goto 95,46.88,54.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Umbric's Notes - Andilien Estate|r.
    .complete 49787,3 --1/1 Umbric's Notes - Andilien Estate
step
    .goto 95,46.69,56.05,5,0
    .goto 95,57.71,51.13,10,0
    .goto 95,65.6,41.78,30,0
    .goto 95,71.04,32.02,5,0
    .goto 95,79.35,16.76,5,0
    .goto 95,79.66,17.52
    .cast 258931 >> Jump to and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Teleportation Console|r.
step
    .goto 95,79.99,19.86,5,0
    .goto 95,79.27,20.21,5,0
    .goto 95,79.66,19.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Umbric's Notes - Dawnstar Spire|r.
    .complete 49787,4 --1/1 Umbric's Notes - Dawnstar Spire
step
    .goto 95,79.68,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .turnin 49787 >>Turn in The Ghostlands
    .accept 48962 >>Accept Telogrus Rift
    .target Alleria Windrunner
step
    .goto 95,79.64,19.8
    .zone 972 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r.
step
    .goto 972,47.84,73.88
    .gossipoption 47941 >>Talk to |cRXP_FRIENDLY_Magister Umbric|r.
    .timer 66,Duration until continuation.
    .target Magister Umbric
step
    .goto 972,48.97,73.02
    .scenario 3675,1 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
step
    .goto 972,37.3,49.23
    .scenario 3490,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r.
step
    .goto 972,37.3,49.23
    .scenario 3662,1,100 >>Kill |cRXP_ENEMY_Void Creatures|r. |cRXP_WARN_Don't go near Void Bubbles|r.
    .mob Creeping Void
    .mob Netherguard Phaseblade
    .mob Curious Voidstalker
    .mob Netherguard Transmogrifier
step
    .goto 972,37.3,49.23
    .scenario 3673,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r.
step
    .goto 972,37.3,49.23
    .scenario 3495,1,100 >>Kill |cRXP_ENEMY_Void Creatures|r. |cRXP_WARN_Don't go near Void Bubbles|r.
    .mob Dark Manifestation
    .mob Curious Voidstalker
step
    .goto 972,28.96,40.21
    .scenario 3496,1 >>Kill |cRXP_ENEMY_Nhr'ghesh|r.
    .mob Nhr'ghesh
step
    .goto 972,28.89,38.2
    .scenario 3520,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r.
step
    .goto 972,29.02,27.72,5,0
    .goto 972,28.5,21.7,5,0
    .goto 972,26.23,24.46
    .scenario 3674,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidforges|r.
step
    .goto 972,27.78,24.1
    >>Kill |cRXP_ENEMY_Nether-Prince Durzaan|r.
    .complete 48962,1 --"Telogrus Rift" scenario complete
    .mob Nether-Prince Durzaan
step
    #completewith next
    .goto 972,27.98,24.48,5,0
    .cast 253691 >>Click on the |cRXP_PICK_Void Portal|r to teleport to |cRXP_WARN_Stormwind|r.
    .isOnQuest 48962
step
    .goto 84,52.05,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 48962 >>Turn in Telogrus Rift
    .target Aysa Cloudsinger
]])

--LightforgedDraenei
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name ab) Lightforged Draenei Unlock
#displayname |cFF00CCFF2|r - Lightforged Draenei
#next ac) DarkIronDwarf Unlock

<< Alliance !LightforgedDraenei

step
    #completewith next
    .zone 84 >>Travel to |cRXP_WARN_to Stormwind|r.
step
    .accept 49929 >>Accept The Call for Allies
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_inside the Stormwind Embassy|r.
    .turnin 49929 >>Turn in The Call for Allies
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
    .accept 49698 >>Accept The Lightforged
    .target Aysa Cloudsinger
step
    #completewith next
    .goto 84,52.81,14.57,5,0
    .goto 84,54.426,14.433,10 >>Travel toward the |cRXP_PICK_Lightforged Beacon|r.
    .isOnQuest 49698
step
    .goto 84,52.81,14.57,5,0
    .goto 84,54.426,14.433
    .zone 940 >>Use the |cRXP_PICK_Lightforged Beacon|r to teleport to the Vindicaar
    .complete 49698,1 --Stormwind Embassy Beacon used (1)
    .isOnQuest 49698
step
    .goto 940,43.852,27.027
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r.
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 49698 >>Turn in The Lightforged
    .accept 49266 >>Accept Forge of Aeons
    .target Captain Fareeya
step
    .goto 940,49.945,46.279
    .zone 933 >>Use the |cRXP_PICK_Lightforged Beacon|r to teleport to the Forge of Aeons
    .isOnQuest 49266
--XX no zone ID (its a scenario) so .cast must be used
step
    .goto 933,88.51,36.44,10 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .timer 27,Duration until continuation.
    -- .scenario 3547,1 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .isOnQuest 49266
step
    .goto 933,87.42,29.73
    .scenario 3549,1 >>|cRXP_WARN_Wait |cRXP_WARN_infront of the building|r|r.
    .isOnQuest 49266
step
    .goto 933,89.13,28.53,5 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .timer 14,Duration until continuation.
step
    .goto 933,75.78,31.33,5 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .isOnQuest 49266
step
    .goto 933,75.78,31.33
    .scenario 3550,1 >>|cRXP_WARN_Wait for the remaining time|r.
    .isOnQuest 49266
step
    .goto 933,66.81,29.77,5 >>Find the |cRXP_FRIENDLY_Child|r.
    .timer 15,Duration until continuation.
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,66.87,29.96
    .scenario 3553,1 >>|cRXP_WARN_Kill the |cRXP_ENEMY_Swamp Serpent|r|r.
    .mob Swamp Serpent
    .isOnQuest 49266
 step
    .goto 933,56.43,23.82,5 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .isOnQuest 49266
step
    .goto 933,56.43,23.82
    .scenario 3554,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive|r.
    .isOnQuest 49266
step
    .goto 933,46.96,27.4
    .scenario 3555,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r inside |cRXP_WARN_the cave|r.
    .isOnQuest 49266
step
    .goto 933,46.96,27.4
    .scenario 3561,1 >>Kill the |cRXP_ENEMY_Crystal Fury|r.
    .mob Crystal Fury
    .isOnQuest 49266
step
    .goto 933,57.03,23.41,5 >>Leave |cRXP_WARN_the cave|r.
    .isOnQuest 49266
step
    .goto 933,52.93,31.59,20,0
    .goto 933,41.26,46.52,20,0
    .goto 933,27.44,36.56
    .scenario 3556,1 >>Kill |cRXP_ENEMY_Doubts|r and |cRXP_ENEMY_Fears|r.
    .mob Fear
    .mob Doubt
    .isOnQuest 49266
step
    .goto 933,16.92,46.28,5 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .isOnQuest 49266
step
    .goto 933,16.92,46.28
    .scenario 3570,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive|r.
    .isOnQuest 49266
step
    .goto 933,11.35,50.13,5 >>Enter |cRXP_WARN_the cave|r.
    .timer 3, Terror activates in...
    .isOnQuest 49266
step
    .goto 933,8.57,50.04
    .scenario 3571,1 >>|cRXP_WARN_Kill |cRXP_ENEMY_Terror|r|r.
    .mob Terror
    .isOnQuest 49266
step
    .goto 933,17.25,46.42,10 >>Leave |cRXP_WARN_the cave|r.
    .isOnQuest 49266
step
    .goto 933,41.85,58.85,10 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .isOnQuest 49266
step
    .goto 933,41.85,58.85
    .scenario 3572,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive|r.
    .isOnQuest 49266
step
    .goto 933,46.79,65.98
    .scenario 3573,1 >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_T'paartos|r.
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,66.37,77.37,10 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .isOnQuest 49266
step
    .goto 933,66.37,77.37
    .scenario 3579,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive|r.
    .isOnQuest 49266
step
    .goto 933,68.51,77,5 >>|cRXP_WARN_Descend the spiral staircase|r.
    .isOnQuest 49266
step
    .goto 933,63.78,71.47,5,0
    .goto 933,61.53,75.87,5,0
    .goto 933,68.36,77.08
    .scenario 3574,1 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos|r|r(1).
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,61.53,75.87,5 >>|cRXP_WARN_Descend deeper |cRXP_WARN_into the cave|r|r.
    .isOnQuest 49266
step
    .goto 933,65.73,73.57
    .scenario 3574,2 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos|r|r(2).
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,72.31,86.51
    .scenario 3574,3 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos|r|r(3).
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,73.59,75.21,15,0
    .goto 933,69.63,68.27
    .scenario 3574,4 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos|r|r(4).
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,65.16,71.82,15,0
    .goto 933,63.03,74.51
    .scenario 3574,5 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos|r|r(5).
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,64.02,81.39,15,0
    .goto 933,69.6,77.79
    .scenario 3574,6 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos|r|r(6).
    .target T'paartos
    .isOnQuest 49266
step
    .goto 933,68.59,88.86,15,0
    .goto 933,73.39,94.59
    >>Kill |cRXP_ENEMY_T'paartos the Fallen|r.
    .complete 49266,1 --Forge of Aeons scenario completed
    .mob T'paartos the Fallen
    .isOnQuest 49266
    --x wrong scenaruio id fix
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat|r.
    +|cRXP_WARN_You can also leave using other standard methods|r.
    .isOnQuest 49266
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r and |cRXP_FRIENDLY_High Exarch Turalyon|r.
    .turnin 49266 >>Turn in Forge of Aeons
    .goto 940,48.453,39.556
    .target +Captain Fareeya
    .accept 50071 >>Accept For the Light!
    .goto 940,47.468,40.178
    .target +High Exarch Turalyon
step
    #completewith next
    .goto 941,43.180,24.938
    >>Go downstairs
    .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Stormwind|r.
step
    .goto 84,52.79,14.51,5,0
    .goto 84,52.05,13.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 50071 >>Turn in For the Light!
    .target Aysa Cloudsinger
]])

--DarkIronDwarf 
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name ac) DarkIronDwarf Unlock
#displayname |cFF00CCFF3|r - Dark Iron Dwarf
#next ad) KulTiran Unlock

<< Alliance !DarkIronDwarf

step
    #completewith next
    .zone 84 >>Travel to |cRXP_WARN_to Stormwind|r.
step
    .accept 49929 >>Accept The Call for Allies
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_inside the Stormwind Embassy|r.
    .turnin 49929 >>Turn in The Call for Allies
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
    .accept 51813 >>Accept Blackrock Depths
    .target Aysa Cloudsinger
step
    .goto 84,51.88,14.06
    .gossipoption 48178 >> Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .target Moira Thaurissan
    .isOnQuest 51813
step
    .goto 1159,56.03,31.84
    >>|cRXP_WARN_Head to the location indicated by the arrow and wait for the brief roleplay|r.
    .scenario 3830,1 --1/1
    .isOnQuest 51813
step
    .goto 1159,55.84,31.94
    .cast 274627 >>Click the |cRXP_PICK_Crate|r |cRXP_WARN_on the ground|r.
    .isOnQuest 51813
step
    .goto 1159,56.65,31.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r |cRXP_WARN_on The Black Anvil|r.
    .scenario 3847,1
    .timer 5, Time until first wave.
    .isOnQuest 51813
step
    .goto 1159,56.65,31.33
    >>|cRXP_WARN_Wait for the brief roleplay then|r. Kill |cRXP_ENEMY_Congealed Azerite|r.
    .scenario 3848,1,75
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>Kill |cRXP_ENEMY_Unleashed Azerite|r.
    .scenario 3848,1,91
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>Kill |cRXP_ENEMY_Unbound Azerite|r.
    .scenario 3848,1,100
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,49.93,41.67
    >>|cRXP_WARN_Head to the location indicated by the arrow and wait for the brief roleplay|r.
    .scenario 3849,1
    .isOnQuest 51813
    .mob Venture Co. Skyscorcher
step
    .goto 1159,49.93,41.67
    >>Kill |cRXP_ENEMY_Venture Co. Skyscorcher|r.
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
    >>Defeat |cRXP_ENEMY_Rixxa Fluxflame|r by reducing her health to 75%.
    .scenario 3852,1
    .timer 11, Duration until continuation.
    .mob Rixxa Fluxflame
    .isOnQuest 51813
step
    .goto 1159,36.79,61.65
    .cast 3365 >>Click the |cRXP_PICK_Propellant Canister|r |cRXP_WARN_on the ground|r.
    .isOnQuest 51813
step
    .goto 1159,39.37,55.18
    .cast 3365 >>Click the |cRXP_PICK_Propellant Canister|r |cRXP_WARN_on the ground|r.
    .isOnQuest 51813
step
    .goto 1159,44.33,49.55
    .cast 3365 >>Click the |cRXP_PICK_Propellant Canister|r |cRXP_WARN_on the ground|r.
    .isOnQuest 51813
step
    .goto 1159,49.23,44.38
    .cast 3365 >>Click the |cRXP_PICK_Propellant Canister|r |cRXP_WARN_on the ground|r.
    .isOnQuest 51813
step
    .goto 1159,57.11,30.41
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 51813,1 --Blackrock Depths scenario completed
step
    .goto 1159,57.04,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 51813 >>Turn in Blackrock Depths
    .accept 53351 >>Accept The MOTHERLODE!!: Ironfoe
    .target Moira Thaurissan
step
    #completewith Turn in The MOTHERLODE!!: Ironfoe
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat|r.
    +|cRXP_WARN_You can also leave using other standard methods|r.
    .isOnQuest 53351
step
    .goto 84,51.89,14.07
    .gossipoption 48181 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .target Moira Thaurissan
    .isOnQuest 53351
step
    #label Turn in The MOTHERLODE!!: Ironfoe
    .goto 84,51.89,14.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53351 >>Turn in The MOTHERLODE!!: Ironfoe
    .accept 53342 >>Accept Molten Core
    .target Moira Thaurissan
    .isOnQuest 53351
step
    .goto 84,51.89,14.07
    .gossipoption 48179 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .target Moira Thaurissan
    .isOnQuest 53342
step
    .goto 1160,29.17,26.27
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tank|r.
    .target The Tank
    .isOnQuest 53342
step
    .goto 1160,33.04,21.38,5 >>Use |T1032476:0|t[Afterburn](2) to sprint |cRXP_WARN_of the edge|r. |cRXP_WARN_Aim to land on the mountain cliff|r.
    .isOnQuest 53342
step
    .goto 1160,41.94,25.73,25,0
    .goto 1160,44.83,64.11,15 >>Use |T1032476:0|t[Afterburn](2) to sprint and |T135781:0|t[Frozen Keekers](1) to kill |cRXP_ENEMY_enemies|r |cRXP_WARN_infront of you|r.
    .timer 7, Duration until continuation.
    .isOnQuest 53342
step
    .goto 1160,61.13,61.75,10,0
    .goto 1160,62.08,53.53,10,0
    .goto 1160,59.21,48.71,10,0
    .goto 1160,56.71,54.29,10 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .timer 20, Duration until continuation.
    .isOnQuest 53342
step
    .goto 1160,56.48,54.86
    >>Kill |cRXP_ENEMY_Gezzrok the Keeper|r and then |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r |cRXP_WARN_in the middle|r.
    .complete 53342,2 --1/1 Fragment o' the Molten Core
    .mob Gezzrok the Keeper
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat|r.
    +|cRXP_WARN_You can also leave using other standard methods|r.
    .isOnQuest 53342
step
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53342 >>Turn in Molten Core
    .accept 53352 >>Accept Firelands
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .gossipoption 48180 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .target Moira Thaurissan
    .isOnQuest 53352
step
    .goto 1958,49.24,29.7
    >>|cRXP_WARN_Wait for the brief roleplay|r then Kill |cRXP_ENEMY_Dark Iron Cultist|r.
    .scenario 3982,1
    .mob Dark Iron Cultist
    .isOnQuest 53352
step
    .goto 1958,49.2,25.47,10 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
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
    .goto 1959,50.58,24.56,10 >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .timer 60, Duration until continuation.
    .isOnQuest 53352
step
    .goto 1959,50.53,20.76
    >>Kill |cRXP_ENEMY_High Justice Grimstone|r.
    .scenario 3986,1
    .mob High Justice Grimstone
    .isOnQuest 53352
step
    .goto 1959,50.53,20.76
    >>Kill |cRXP_ENEMY_High Justice Grimstone|r.
    .scenario 3984,1
    .mob High Justice Grimstone
    .isOnQuest 53352
step
    .goto 1959,50.51,19.26
    >>Stand in the Lava Bubble |cRXP_WARN_infront of the giant lava pool|r.
    .scenario 3985,1,100
    .isOnQuest 53352
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat|r.
    +|cRXP_WARN_You can also leave using other standard methods|r.
    .isOnQuest 53352
step
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 53352 >>Turn in Firelands
    .accept 51474 >>Accept Forged in Fire an' Flame
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .gossipoption 48178 >>Talk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .target Moira Thaurissan
    .isOnQuest 51474
step
    .goto 1159,56.65,31.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Yellow Orb|r |cRXP_WARN_on the anvil|r.
    .complete 51474,1 --1/1 Black Anvil repaired
step
    .goto 1159,57.19,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 51474 >>Turn in Forged in Fire an' Flame
    .accept 53566 >>Accept Dark Iron Dwarves
    .target Moira Thaurissan
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat|r.
    +|cRXP_WARN_You can also leave using other standard methods|r.
    .isOnQuest 53566
step
    .goto 84,52.02,13.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 53566 >>Turn in Dark Iron Dwarves
    .target Aysa Cloudsinger
]])

--KulTiran
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name ad) KulTiran Unlock
#displayname |cFF00CCFF4|r - Kul Tiran
#next ae) Mechagnome Unlock

<< Alliance !KulTiran

step
    #completewith next
    .zone 84 >>Travel to |cRXP_WARN_to Stormwind|r.
step
    .accept 49929 >>Accept The Call for Allies
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_inside the Stormwind Embassy|r.
    .turnin 49929 >>Turn in The Call for Allies
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
    .accept 54706 >>Accept Made in Kul Tiras
    .target Aysa Cloudsinger
step
    .goto 84,52.82,14.57,5,0
    .goto 84,49.35,86.91,5 >>Travel |cRXP_WARN_to Mage Tower|r.
    .isOnQuest 54706
step
    .goto 84,48.83,86.9,5,0
    .goto 84,49.15,87.77,5 >>Ascend |cRXP_WARN_the Spiral staircase|r.
    .isOnQuest 54706
step
    .goto 84,48.75,88.07,3 >>Walk through |cRXP_WARN_the Portal|r.
    .isOnQuest 54706
step
    .goto 84,46.77,89.79,5,0
    .goto 84,48.74,95.18
    .zone 1161 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boralus Portal|r.
    .isOnQuest 54706
step
    .goto 1161,68.85,21.18,5,0
    .goto 1161,67.44,21.29,5,0
    .goto 1161,67.99,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r.
    .skipgossip 122370,1
    .complete 54706,2 --1/1 Speak to Cyrus
    .target Cyrus Crestfall
step
    .goto 1161,67.99,21.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r.
    .turnin 54706 >>Turn in Made in Kul Tiras
    .accept 55039 >>Accept The Master Shipwright
    .target Cyrus Crestfall
step
    .goto 1161,67.95,22.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .skipgossip
    .complete 55039,1 --1/1 Letter from the Lord Admiral
    .target Lady Jaina Proudmoore
-- step
--     #completewith next
--     .goto 1161,67.09,23.33,5,0
--     .goto 1161,66.98,14.99
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joan Weber|r |cRXP_WARN_and if you don't have the flightpath you can just fly|r.
--     .fly Brennadam >>Fly |cRXP_WARN_to Brennadam|r.
--     .target Joan Weber
step
    #completewith next
    .goto 1161,67.09,23.33,5 >> Leave |cRXP_WARN_the Office|r.
step
    .goto 942,59.39,70.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r |cRXP_WARN_inside the Brennadam|r.
    .turnin 55039 >>Turn in The Master Shipwright
    .accept 55043 >>Accept Fish Tales and Distant Sails
    .target Cyrus Crestfall
step
    .goto 942,59.39,69.36
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 1|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,59.61,68.62
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 2|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,59.41,68.73
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 3|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,59.08,69.95
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 4|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.79,70.2
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 5|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.53,70.23
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 6|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.17,70.59
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 7|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.42,70.87
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 8|r.
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.66,70.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r |cRXP_WARN_inside the Hut|r.
    .turnin 55043 >>Turn in Fish Tales and Distant Sails
    .accept 54708 >>Accept Home, Home On the Range
    .target Cyrus Crestfall
step
    .goto 942,49.95,50.03
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 54708,1 --1/1 Find the homestead
step
    .goto 942,49.94,50.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sal Atwater|r |cRXP_WARN_infront of the House|r.
    .skipgossip
    .complete 54708,2 --1/1 Meet the shipwright
    .target Sal Atwater
step
    .goto 942,50.23,49.88
    >>|cRXP_WARN_Head to the location indicated by the arrow|r |cRXP_WARN_inside the the House|r.
    .complete 54708,3 --1/1 Meet the actual shipwright
    .timer 10, Shipwright RP
step
    .goto 942,50.41,49.87,5,0
    .goto 942,50.38,50.47
    .cast 291980 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Hurricane|r |cRXP_WARN_[1]|r.
    .isOnQuest 54721
step
    #loop
    .goto 942,50.39,50.71,5,0
    .goto 942,50.34,50.29,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Hurricane|r |cRXP_WARN_[2]|r.
    .complete 54721,1 --1/1 Hurricane saddled
    .isOnQuest 54721
step
    .goto 942,66.13,47.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Dorian Atwater|r.
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
    .goto 895,68.95,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r |cRXP_WARN_on the bottom floor inside of the house|r. |cRXP_WARN_Be aware that there may be a brief roleplay sequence before you are able to turn in the quest|r.
    .turnin 54726 >>Turn in Frame Work
    .accept 54727 >>Accept Team Carr
    .target Dorian Atwater
step
    .goto 895,68.73,19.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber|r.
    .complete 54727,1,1 --1/1 Follow Dorian to the drop point
step
    .goto 895,68.71,17.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber|r.
    .complete 54727,1,2 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.31,17.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber|r.
    .complete 54727,1,3 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.99,16.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber|r.
    .complete 54727,1,4 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.22,12.52
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Dorian|r and use |T236188:0|t[Call for Help](1) |cRXP_WARN_to instruct him to kill|r |cRXP_ENEMY_the attackers|r.
    .complete 54727,2 --1/1 Follow Dorian to the drop point
    .timer 10,Short Roleplay
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
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 54729,1 --1/1 Find Chelsea Wright
step
    .goto 896,33.17,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chelsea Wright|r.
    .turnin 54729 >>Turn in The Bleak Hills
    .accept 54732 >>Accept Drop It!
    .target Chelsea Wright
step
    .goto 896,34.19,30.47,10,0
    .goto 896,34.52,29.77,10,0
    .goto 896,35.9,30.32,10,0
    .goto 896,36.65,29.98,10,0
    .goto 896,36.60,28.88,5 >>|cRXP_WARN_Follow the |cRXP_ENEMY_Wicker Beast|r |cRXP_WARN_inside the cave|r.
    .timer 3,Short Roleplay
    .mob Wicker Beast
    .target Wicker Beast
    .isOnQuest 54732
step
    .goto 896,36.6,28.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Storehouse Key|r |cRXP_WARN_on the ground|r.
    .complete 54732,1 --1/1 Storehouse Key
step
    .goto 896,36.62,28.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wicker Beast|r.
    .turnin 54732 >>Turn in Drop It!
    .accept 55136 >>Accept Her Dog Days Are Over
    .target Wicker Beast
step
    .goto 896,35.31,28.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gnawed Bone|r |cRXP_WARN_on the ground|r.
    .complete 55136,3 --1/1 Gnawed Bone
step
    .goto 896,35.99,30.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Worn Collar|r |cRXP_WARN_around a tree branch|r.
    .complete 55136,1 --1/1 Worn Collar
step
    .goto 896,34.19,30.81,8,0
    .goto 896,34.60,30.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Worn Collar|r |cRXP_WARN_inside a house|r.
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
    >>Kill |cRXP_ENEMY_Vengeful Bones|r and |cRXP_ENEMY_Awoken Guardian|r. |cRXP_WARN_In addition, clicking on the stones near them will help you further fill your Drust Vessel|r.
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
    .goto 896,61.86,59.37
    .gossipoption 50185 >>Talk to |cRXP_FRIENDLY_Arthur Tradewind|r.
    .timer 3, Short Roleplay
    .target Arthur Tradewind
    .isOnQuest 54731
step
    .goto 942,59.39,69.36
    .vehicle >>Interact with |cRXP_FRIENDLY_Arthur Tradewind|r.
    .timer 107, Arthur Roleplay
    .isOnQuest 54731
step
    .goto 896,45.22,45.84
    .gossipoption 49067 >>Talk to |cRXP_FRIENDLY_Ulfar|r.
    .timer 8, Short Roleplay
    .target Ulfar
    .isOnQuest 54731
step
    .goto 896,44.97,45.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nut|r.
    .complete 54731,2 --1/1 Begin the ritual
step
    .goto 896,44.97,45.83
    >>Collect Green Orbs and kill the |cRXP_ENEMY_Drust Manifestations|r.
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
    .skipgossip
    .complete 54735,1 --1/1 Speak to Tandred Proudmoore
    .target Tandred Proudmoore
step
    .goto 1161,75.94,22.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Pike|r.
    .skipgossip
    .complete 54735,2 --1/1 Brother Pike recruited
    .target Brother Pike
step
    .goto 895,56.68,61.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Tarenfold|r.
    .skipgossip
    .complete 54735,3 --1/1 Lieutenant Tarenfold recruited
    .target Lieutenant Tarenfold
step
    .goto 895,35.26,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r.
    .skipgossip
    .complete 54735,4 --1/1 Outriggers recruited
    .target Rosaline Madison
step
    .goto 942,67.62,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r.
    .skipgossip
    .complete 54735,5 --1/1 Boatswain recruited
    .target Dorian Atwater
step
    .goto 942,67.62,44.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 54735 >>Turn in A Worthy Crew
    .accept 54851 >>Accept Blessing of the Tides
    .target Lady Jaina Proudmoore
step
    .goto 942,67.62,44.68
    .gossipoption 50743 >>|cRXP_WARN_Wait for the Roleplay and then|r Talk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .target Lady Jaina Proudmoore
    .isOnQuest 54851
step
    .goto 942,68.16,45.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boat|r.
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
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
#group RestedXP Collectables
#subgroup Allied Races
#name ae) Mechagnome Unlock
#displayname |cFF00CCFF5|r - Mechagnome
#next a) Void Elf Unlock

<< Alliance !Mechagnome

step
    #completewith next
    .zone 84 >>Travel to |cRXP_WARN_to Stormwind|r.
step
    .accept 49929 >>Accept The Call for Allies
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cRXP_WARN_inside the Stormwind Embassy|r.
    .turnin 49929 >>Turn in The Call for Allies
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick onthe |cRXP_PICK_Dark Iron Dwarf Banner|r.
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightforged Draenei Banner|r.
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 50239 >>Turn in A Choice of Allies
    .accept 58214 >>Accept Urgent Care
    .target Aysa Cloudsinger
step
    .goto 84,52.82,14.57,5,0
    .goto 84,49.35,86.91,5 >>Travel |cRXP_WARN_to Mage Tower|r.
step
    .goto 84,48.83,86.9,5,0
    .goto 84,49.15,87.77,5, >>Ascend the Spiral staircase
step
    .goto 84,48.83,86.9,5,0
    .goto 84,49.15,87.77,5, >>Ascend the Spiral staircase
step
    .goto 84,48.75,88.07,3 >>Walk through |cRXP_WARN_the Portal|r.
step
    .goto 84,46.77,89.79,5,0
    .goto 84,48.74,95.18
    .zone 1161 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boralus Portal|r.
step
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
    .goto 1161,36.73,62.63
    .cast 316417 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mekkatorgue's Escape Pod|r.
    .target Mekkatorgue's Escape Pod
step
    .goto 1161,36.85,63.48
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57487,2 --1/1 Escape Pod sent to Mechagon
    .target Homing Copter
step
    .goto 1161,36.85,63.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Homing Copter|r.
    .complete 57487,3 --1/1 Ride the Homing Copter to Mechagon
    .timer 128, Duration until continuation.
step
    .goto 1462,74.12,37.02
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57487,4 --1/1 Prince Erazmin met
step
    .goto 1462,74.12,37.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r.
    .turnin 57487 >>Turn in Someone Who Can Help
    .target Prince Erazmin
step
    .goto 1462,72.64,43.16,10,0
    .goto 1462,70.57,46.87,10,0
    .goto 1462,67.97,44.26,10,0
    .goto 1462,66.34,46.73,10,0
    .goto 1462,74.89,51.51
    >>Kill |cRXP_ENEMY_Malfunctioning Scrapbot|r and |cRXP_ENEMY_Malfunctioning Scraphound|r and loot them for their [|cRXP_LOOT_Acquisitioned Machine Part|r].
    .complete 57488,2 --6/6 Acquisitioned Machine Part
    .mob Malfunctioning Scrapbot
    .mob Malfunctioning Scraphound
step
    .goto 1462,73.61,58.36,10,0
    .goto 1462,73.36,61.51,10,0
    .goto 1462,69.93,58.88
    >>Kill |cRXP_ENEMY_Congealed Oil|r. |cRXP_WARN_If necessary, you can also kill |cRXP_ENEMY_Slime Elemental|r.|r and loot them for their [|cRXP_LOOT_Acquisitioned Machine Part|r].
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
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
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
    .goto 1462,73.12,33.33
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
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
    .goto 1462,54.49,26.94
    >>Kill |cRXP_ENEMY_Insurgent Cycloid|r and loot him for [|cRXP_LOOT_Omni Electromagnetic Amplifier|r].
    .complete 57491,2 --1/1 Omni Electromagnetic Amplifier
    .mob Insurgent Cycloid
step
    .goto 1462,37.46,46.05,10,0
    .goto 1462,36.79,58.83
    >>Kill |cRXP_ENEMY_HK-3 Aerial Dissuasion Unit|r and loot him for [|cRXP_LOOT_Neural Accelerator|r].
    .complete 57491,1 --1/1 Neural Accelerator
    .mob HK-3 Aerial Dissuasion Unit
step
    .goto 1462,52.79,51.86
    >>Kill |cRXP_ENEMY_Insurgent Crawler|, |cRXP_ENEMY_Upgraded Sentry|r and loot them for [|cRXP_LOOT_Flux Energized Servos|r].
    .complete 57491,3 --1/1 Flux Energized Servos
    .mob Upgraded Sentry
    .mob Insurgent Crawler#
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
    .goto 1462,70.56,31.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elya Codepunch|r.
    .skipgossip
    .complete 57492,1 --1/1 Speak with Elya Codepunch
    .target Elya Codepunch
step
    .goto 1462,69.92,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stuard Sharpsprocket|r.
    .skipgossip
    .complete 57492,6 --1/1 Speak with Stuard Sharpsprocket
    .target Stuard Sharpsprocket
step
    .goto 1462,71.28,34.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elya Idee Quickcoil|r.
    .skipgossip
    .complete 57492,2 --1/1 Speak with Idee Quickcoil
    .target Idee Quickcoil
step
    .goto 1462,72.09,38.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quimby Sparklighter|r.
    .skipgossip
    .complete 57492,4 --1/1 Speak with Quimby Sparklighter
    .target Quimby Sparklighter
step
    .goto 1462,75.45,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flouresce Brightgear|r.
    .skipgossip
    .complete 57492,5 --1/1 Speak with Flouresce Brightgear
    .target Flouresce Brightgear
step
    .goto 1462,74.31,34.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pegi Cogsterh|r.
    .skipgossip
    .complete 57492,3 --1/1 Speak with Pegi Cogster
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
    .goto 1462,73.57,32.1
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
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
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57494,1 --1/1 Find Kelsey
step
    .goto 1462,59.38,55.99
    >>Kill |cRXP_ENEMY_Insurgent Coilbearer|r.
    .complete 57494,2 --1/1 Insurgent Coilbearer slain
    .mob Insurgent Coilbearer
    .mob Insurgent Machinist
step
    .goto 1462,73.60,32.13
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57494,3 --1/1 Unit retrieved
step
    .goto 1462,73.60,32.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spark Reactor|r.
    .complete 57494,4 --1/1 Spark Reactor delivered
    .timer 10, Duration until continuation.
step
    .goto 1462,73.71,31.85
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57494,5 --1/1 Circuit calibrated
step
    .goto 1462,73.71,31.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Generator|r.
    .complete 57494,6 --1/1 Generator activated
step
    .goto 1462,73.56,32.08
    .cast 311518 >>|cRXP_WARN_Use your|r |T136099:0|t[ExtraActionButton] near |cRXP_FRIENDLY_Gelbin Mekkatorque|r |cRXP_WARN_to defibrillate him|r.
    .target Gelbin Mekkatorque
    .timer 5, Duration until continuation.
step
    .goto 1462,73.02,33.43
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57494,7 --1/1 Defibrillate
    .timer 5, Duration until continuation.
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
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57496,1 --1/1 Take teleporter to Mechagon City
step
    .goto 1573,56.24,70.68,10,0
    .goto 1573,65.93,47.95
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
    .goto 1573,31.37,85.80
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57495,1 --1/1 Teleport to the High Tinkertory
step
    .goto 1573,36.15,70.98,5,0
    .goto 1573,35.63,55.12,5,0
    .goto 1573,27.8,57.3,5 >> Enter the |cRXP_WARN_King's room|r.
step
    .goto 1573,18.66,67.47
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57495,2 --1/1 Speech witnessed
step
    .goto 1573,18.65,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelbin Mekkatorque|r.
    .turnin 57495 >>Turn in The Future of Mechagon
    .target Gelbin Mekkatorque
step
    .goto 1573,18.66,66.14,5,0
    .goto 1573,17.82,65.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .target Kelsey Steelspark
step
    .goto 1573,20.41,59.95
    >>|cRXP_WARN_Head to the location indicated by the arrow|r.
    .complete 57497,1 --1/1 Teleport to Stormwind
step
    .goto 84,52.05,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 57497 >>Turn in Propagate the News
    .target Aysa Cloudsinger
]])

-----------------------------------------------------
--- HORDE
-----------------------------------------------------

--Nightborne
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name a) Nightborne Unlock
#displayname |cFF00CCFF1|r - Nightborne
#next ab) Highmountain Tauren Unlock

<< Horde !Nightborne

step
    #completewith NightborneStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label NightborneStartQuestline
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
    #sticky
    #label NightborneRemembertheSunwell
    >>Complete the "Remember the Sunwell" scenario
    .goto 110,53.97,19.51,0,0
    .complete 49354,1 --1/1 "Remember the Sunwell" scenario complete
step
    .isOnQuest 49354
    #completewith next
    .goto 110,56.43,73.10,10,0
    .goto 110,53.97,19.51
    .zone 973 >>Take the Portal to Sunwell
step
    .isOnQuest 49354
    >>Go to the waypoint location. Wait for the RP
    .scenario 3583,1
    .goto 973,49.27,67.10
step
    .isOnQuest 49354
    >>Kill |cRXP_ENEMY_Void Effusions|r and |cRXP_ENEMY_Creeping Void|r.
    .goto 973,46.43,74.16,25,0
    .goto 973,36.95,61.32,25,0
    .goto 973,47.16,47.87,25,0
    .goto 973,55.03,59.13,25,0
#loop
	.line 973,46.43,74.16,36.95,61.32,47.16,47.87,55.03,59.13
	.goto 973,46.43,74.16,25,0
	.goto 973,36.95,61.32,25,0
	.goto 973,47.16,47.87,25,0
	.goto 973,55.03,59.13,25,0
    .scenario 3584,1
    .mob Void Effusion
    .mob Creeping Void
    .mob Void Fragment
step
    .isOnQuest 49354
    >>Kill |cRXP_ENEMY_Aruun the Darkener|r.
    .goto 973,49.51,66.10
    .scenario 3585,1
    .mob Aruun the Darkener
step
    .isOnQuest 49354
    >>Go to the waypoint location. Wait for the RP
    .goto 973,62.80,66.16
    .scenario 3663,1 --1/1 Void rift closed
step
    .isOnQuest 49354
    #completewith NightborneRemembertheSunwell
    >>Use the |cRXP_PICK_Silvermoon Translocator|r.
    .goto 973,62.58,66.94
    .scenario 3586,1 --1/1 Leave the Sunwell
step
    #requires NightborneRemembertheSunwell
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
step
    .isQuestTurnedIn 49614
    +Congratulations! You've unlocked the Nightborne!
]])

--HighmountainTauren
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name ab) Highmountain Tauren Unlock
#displayname |cFF00CCFF2|r - Highmountain Tauren
#next ac) Maghar Orc Unlock

<< Horde !HighmountainTauren

step
    #completewith HighmountainStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label HighmountainStartQuestline
    .isQuestTurnedIn 50242
    .goto 85,37.65,81.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .accept 48066 >>Accept A Feast for Our Kin
    .target Ji Firepaw
step
    .isOnQuest 48066
    .goto 85,53.40,90.43,10,0
    .goto 85,58.51,91.26
    .zone 1163 >>Take the portal to Zuldazar
step
    .isOnQuest 48066
    .goto 1163,73.72,77.17
    .zone 88 >>Take the portal to Thunderbluff
step
    .isOnQuest 48066
    #completewith next
    .goto 88,30.21,30.05,10 >>Leave the cave
step
    .isOnQuest 48066
    .goto 88,61.61,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r.
    .turnin 48066>>Turn in A Feast for Our Kin
    .target Bain Bloodhoof
step
    .isQuestTurnedIn 48066
    .goto 88,61.52,51.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r after a short roleplay.
    .accept 48067 >>Accept Shadow Over Thunder Bluff
    .target Bain Bloodhoof
step
    >>Kill |cRXP_ENEMY_Dark Tendrils|r or |cRXP_ENEMY_Shadow of Uul|r.
    .goto 88,56.02,48.32,25,0
    .goto 88,49.64,50.90,25,0
    .goto 88,49.82,36.89,25,0
    .goto 88,42.96,57.80,25,0
    .goto 88,38.18,53.12
    .complete 48067,1 --4/4 Dark Tendril slain
    .complete 48067,2 --12/12 Shadow of Uul slain
step
    .goto 88,42.18,57.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r next to you.
    .turnin 48066>>Turn in Shadow Over Thunder Bluff
    .accept 49756 >>Accept Dark Forces
    .target Bain Bloodhoof
step
    >>Kill |cRXP_ENEMY_Qy'telek|r.
    .goto 88,41.76,59.89
    .complete 49756,1 --1/1 Qy'telek slain
step
    .goto 88,42.18,57.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r.
    .turnin 49756 >>Turn in Dark Forces
    .accept 48079 >>Accept Return to Highmountain
    .target Bain Bloodhoof
step << Mage
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .zoneskip 85,1
    .goto 85,58.86,89.52
    .zone 630>>Use the portal to Azsuna
step
    .goto 652,54.92,63.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r.
    .turnin 48079 >>Turn in Return to Highmountain
    .target Mayla Highmountain
step
    .goto 652,68.49,73.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .accept 41884 >>Accept Dark Tales
    .target Spiritwalker Graysky
step
    .goto 650,38.51,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r in Riverbend.
    .turnin 41884 >>Turn in Dark Tales
    .accept 41764 >>Accept Walking in Their Footsteps
    .target Spiritwalker Graysky
step
    .goto 650,38.53,69.18
    >>Interact with the Water of Vision
    .complete 41764,1 --1/1 Water of Vision used
step
    >>Kill |cRXP_ENEMY_Shadow Lurkers|r and |cRXP_ENEMY_Shadows of Uul|r.eturned
    .goto 650,40.12,71.59,25,0
    .goto 650,41.51,72.60,25,0
    .goto 650,43.75,74.11,12,0
    .goto 650,44.23,75.17,15,0
    .goto 650,45.21,76.24,20,0
    .complete 41764,2 --8/8 Shadow Lurker slain
    .complete 41764,3 --15/15 Shadow of Uul slain
    .mob Shadow Lurker
    .mob Shadow of Uul
step
    >>Place the Bitestone Ward upstairs
    .goto 650,44.23,75.17,15,0
    .goto 650,45.21,76.24,20,0
    .goto 650,46.29,74.35,20,0
    .goto 650,46.16,73.68
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
    >>Interact with the Water of Vision
    .complete 41799,1 --1/1 Water of Vision used
step
    >>Kill |cRXP_ENEMY_Dark Spirits|r.
    >>Spam |T132312:0|t[Fury of the Phoenix] (1) or use |T1029585:0|t[Cyclonic Vortex] (2) when multiple mobs are around you
    .complete 41799,2 --12/12 Dark Spirit slain
    .goto 650,56.02,44.26,25,0
    .goto 650,54.76,45.12,25,0
    .goto 650,57.05,46.16,30,0
#loop
	.line 650,56.02,44.26,54.76,45.12,57.05,46.16
	.goto 650,56.02,44.26,30,0
	.goto 650,54.76,45.12,30,0
	.goto 650,57.05,46.16,30,0
    .mob Dark Spirit
step
    #completewith next
    .goto 650,54.98,44.11,10 >>Enter the cave
step
    >>Kill |cRXP_ENEMY_Shadowy Tendrils|r.
    >>Spam |T132312:0|t[Fury of the Phoenix] (1)
    .goto 650,54.43,43.16,15,0
    .goto 650,55.07,41.90
    .complete 41799,3 --6/6 Shadowy Tendril slain
    .mob Shadowy Tendril
step
    >>Kill the |cRXP_ENEMY_Shadow of the Darkness|r.
    >>Keep up 3 stacks of the dot with |T132312:0|t[Fury of the Phoenix] (1) and use |T1029585:0|t[Cyclonic Vortex] (2) on cooldown
    .complete 41799,4 --1/1 Shadow of the Darkness slain
    .goto 650,55.47,40.99
    .mob Shadow of the Darkness
step
    >>Place the Sepulcher Ward
    .complete 41799,5 --1/1 Sepulcher Ward placed
    .goto 650,54.74,40.63
step
    .goto 650,57.02,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 41799 >>Turn in Minions of the Darkness
    .accept 48190 >>Accept Huln's Mountain
    .target Spiritwalker Graysky
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r in Snowblind Mesa.
    .goto 650,53.33,64.01
    .turnin 48190 >>Turn in Huln's Mountain
    .accept 41800 >>Accept Servants of the Darkness
    .target Spiritwalker Graysky
step
    .goto 650,53.32,64.00
    >>Interact with |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .complete 41800,1 --1/1 Water of Vision used
step
    >>Kill the |cRXP_ENEMY_Necrotic Defilers|r.
    >>Use |T134174:0|t[Gore Charge] (3) on cooldown and spam |T644382:0|t[Wild Carve] (1)
    .goto 650,53.70,66.32,25,0
    .goto 650,52.99,66.76,25,0
    .goto 650,51.50,66.64,25,0
#loop
	.line 650,53.70,66.32,52.99,66.76,,51.50,66.64
	.goto 650,53.70,66.32,30,0
	.goto 650,52.99,66.76,30,0
	.goto 650,51.50,66.64,30,0
    .complete 41800,2 --10/10 Necrotic Defiler slain
    .mob Necrotic Defiler
step
    >>Kill |cRXP_ENEMY_Necrogg the Darkspear|r. He's patrolling down the mountain.
    >>Use |T135127:0|t[Harpoon Stomp] (2) after the knockback
    .goto 650,53.00,69.40
    .complete 41800,3 --1/1 Necrogg the Darkspear slain
    .mob Necrogg the Darkspear
step
    >>Place the Snowmane Ward
    .goto 650,53.32,69.47
    .complete 41800,4 --1/1 Snowmane Ward placed
step
    .goto 650,57.02,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r.
    .turnin 41800 >>Turn in Servants of the Darkness
    .accept 48434 >>Accept How Fares Ebonhorn?
    .target Spiritwalker Graysky
step
    #completewith next
    .goto 750,49.30,46.09,5 >>Take the elevator
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r and |cRXP_FRIENDLY_Mayla Highmountain|r.
    .turnin 48434 >>Turn in How Fares Ebonhorn?
    .goto 652,67.69,71.39
    .accept 41815 >>Accept Curse of the Necrodark
    .goto 652,68.85,71.08
    .target Spiritwalker Ebonhorn
    .target Mayla Highmountain
step
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
    >>Kill |cRXP_ENEMY_Necrodarks|r or |cRXP_ENEMY_Frozen Mists|r. Loot them for the [|cRXP_LOOT_Shadowice Shards|r].
    .complete 41840,1 --20/20 Shadowice Shard
step
    #title Protector freed 1/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r |cRXP_WARN_They may attack you|r.
    .goto 650,56.92,89.68
    .complete 41882,1,1 --1/6 Highmountain Protector freed
step
    #title Protector freed 2/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r |cRXP_WARN_They may attack you|r.
    .goto 650,56.83,88.47
    .complete 41882,1,2 --2/6 Highmountain Protector freed
step
    #title Protector freed 3/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r |cRXP_WARN_They may attack you|r.
    .goto 650,57.49,88.95
    .complete 41882,1,3 --3/6 Highmountain Protector freed
step
    #title Protector freed 4/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r |cRXP_WARN_They may attack you|r.
    .goto 650,57.36,90.01
    .complete 41882,1,4 --4/6 Highmountain Protector freed
step
    #title Protector freed 5/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r |cRXP_WARN_They may attack you|r.
    .goto 650,58.16,90.67
    .complete 41882,1,5 --5/6 Highmountain Protector freed
step
    #label HighmountainTaurenWhispersoftheDarkness
    #title Protector freed 6/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r |cRXP_WARN_They may attack you|r.
    .goto 650,57.61,91.11
    .complete 41882,1 --6/6 Highmountain Protector freed
step
    >>Kill |cRXP_ENEMY_Necrodarks|r or |cRXP_ENEMY_Frozen Mists|r. Loot them for the [|cRXP_LOOT_Shadowice Shards|r].
    >>|cRXP_WARN_|cRXP_ENEMY_Frozen Mists|r are the best source|r.
    .complete 41840,1 --20/20 Shadowice Shard
    .goto 650,57.15,94.63,30,0
    .goto 650,54.48,91.85,30,0
    .goto 650,58.22,91.49,30,0
#loop
	.line 650,57.15,94.63,54.48,91.85,,58.22,91.49
	.goto 650,57.15,94.63,30,0
	.goto 650,54.48,91.85,30,0
	.goto 650,58.22,91.49,30,0
step
    .goto 650,57.55,92.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r.
    .turnin 41840 >>Turn in Ice and Shadow
    .turnin 41882 >>Turn in Whispers of the Darkness
    .accept 41841 >>Accept The Final Ward
    .target Spiritwalker Ebonhorn
step
    #completewith next
    .goto 650,57.28,92.23,10 >>Enter the cave
step
    >>Place the Summit Ward
    .goto 650,56.50,91.45
    .complete 41841,1 --1/1 Place the Summit Ward
step
    .goto 650,56.82,92.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r.
    .turnin 41841 >>Turn in The Final Ward
    .accept 48403 >>Accept The Darkness
    .target Spiritwalker Ebonhorn
step
    #completewith next
    .goto 650,57.28,92.23,10 >>Leave the cave
step
    >>Kill |cRXP_ENEMY_Uul'gyneth|r. |cRXP_WARN_You can pick up Baines Totem and throw it|r.
    .goto 650,57.94,90.84
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
step << Mage
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 48433 >>Turn in Together We Are the Horde!
    .target Ji Firepaw
step
    .isQuestTurnedIn 48433
    +Congratulations! You've unlocked the Highmountain Tauren!
]])

--MagharOrc
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name ac) Maghar Orc Unlock
#displayname |cFF00CCFF3|r - Maghar Orc
#next ad) Zandalari Troll Unlock

<< Horde !MagharOrc

step
    #completewith MagharOrcStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r in Orgrimmar.
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label MagharOrcStartQuestline
    .goto 85,37.77,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the path down. Talk to |cRXP_FRIENDLY_Anachronos|r.
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
    >>Fly to the Time Rift and |TInterface/cursor/crosshair/interact.blp:20|tClick on it. Kill the |cRXP_ENEMY_Echo of Gul'dan|r.
    >>Dodge Liquid Hellfire. Sidestep Fel Efflux. Interrupt Death Coil
    .goto 17,54.42,50.49
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave Orgrimmar. Talk to |cRXP_FRIENDLY_Anachronos|r.
    .goto 1,40.80,16.36
    .skipgossip
    .complete 53355,1 --1/1 Meet Anachronos outside Orgrimmar
    .target Anachronos
step
    >>(No arrow possible) Jump down. |TInterface/cursor/crosshair/interact.blp:20|tClick on the Time Rift. Kill the |cRXP_ENEMY_Echo of Garrosh Hellscream|r.
    >>Move away during his Whirlwind. Dodge the Ironstars (Machines of War cast)
    .complete 53355,2 --1/1 Echo of Garrosh Hellscream slain
    .mob Echo of Garrosh Hellscream
step
    #completewith next
    #title Take the Portal to Zuldazar
    >>Leave the instance group (Right-|TInterface/cursor/crosshair/interact.blp:20|tClick your character frame)
    .goto 85,53.44,90.45,10,0
    .goto 85,58.59,91.32
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
    >>Cross the bridge. You may have to wait for an RP
    .goto 1170,44.07,55.07,20,0
    .goto 1170,44.87,53.20
    .complete 52942,2 --Meet the Overlord
step
    .goto 1170,44.94,53.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r.
    .turnin 52942 >>Turn in Restoring Old Bonds
    .accept 52943 >>Accept Calling Out the Clans
    .target Eitrigg
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackrock banner|r. Relog if you can't |TInterface/cursor/crosshair/interact.blp:20|tClick on it
    .goto 1170,45.17,52.64
    .complete 52943,1 --1/1 Blackrock
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackrock banner|r. Relog if you can't |TInterface/cursor/crosshair/interact.blp:20|tClick on it
    .goto 1170,45.48,51.94
    .complete 52943,2 --1/1 Warsong
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackrock banner|r. Relog if you can't |TInterface/cursor/crosshair/interact.blp:20|tClick on it
    .goto 1170,44.82,52.00
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
    >>Kill |cRXP_ENEMY_Kor'gall Defectors|r and |cRXP_ENEMY_Kor'gall Agitators|r.
    .goto 1170,40.23,65.14,25,0
    .goto 1170,39.10,65.72,25,0
    .goto 1170,38.81,67.47,25,0
    .goto 1170,38.25,67.48,25,0
    .goto 1170,37.73,68.32
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
    .isOnQuest 52955
    >>Follow the arrow to Beastwatch
    .goto 1170,41.39,66.92,20,0
    .goto 1170,43.02,67.09,30,0
    .goto 1170,43.89,69.46
    .scenario 3973,1
step
    .isOnQuest 52955
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
    .isOnQuest 52955
    >>Follow the arrow to |cRXP_ENEMY_Exarch Orelis|r.
    .goto 1170,45.49,78.58
    .scenario 3975,1
step
    .isOnQuest 52955
    >>Kill |cRXP_ENEMY_Exarch Orelis|r.
    >>Side-step and dodge the Prometheus Ray. Interrupt Holy Light
    .goto 1170,45.26,80.33
    .scenario 3976,1
    .mob Exarch Orelis
step
    .isOnQuest 52955
    >>Run back to Beastwatch and meet |cRXP_FRIENDLY_Grommash Hellscream|r.
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
step
    .isQuestTurnedIn 57448
    +Congratulations! You've unlocked the Maghar Orc!
]])

--ZandalariTroll
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name ad) Zandalari Troll Unlock
#displayname |cFF00CCFF4|r - Zandalari Troll
#next ae) Vulpera Unlock

<< Horde !ZandalariTroll

step
    #completewith ZandalariTrollStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label ZandalariTrollStartQuestline
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
    .noflyable 862
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
    .noflyable 862
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
    .noflyable 862
    >>Jump down carefully
    .goto 1165,46.06,16.57,15,0
    .goto 1165,47.06,19.23,15,0
    .goto 1165,47.55,23.59,15,0
    .goto 1165,53.14,19.35
    .fly The Great Seal >>Fly to The Great Seal
step
    #completewith ZandalariTrollAllegianceoftheZandalari
    .noflyable 862
    .isQuestTurnedIn 47436
    .isOnQuest 53719
    .vehicle 131154 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Totem of Pa'ku
    .goto 1165,51.37,40.95
step
    #completewith ZandalariTrollAllegianceoftheZandalari
    .noflyable 862
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
step
    .isQuestTurnedIn 53719
    +Congratulations! You've unlocked the Zandalari Trolls
]])

--Vulpera
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name ae) Vulpera Unlock
#displayname |cFF00CCFF5|r - Vulpera
#next a) Nightborne Unlock

<< Horde !Vulpera

step
    #completewith VulperaStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label VulperaStartQuestline
    .goto 85,37.77,81.16
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Kiro|r.
    .goto 85,48.89,72.74
    .turnin 53889 >>Turn in A Declaration of Intent
    .accept 53890 >>Accept New Allies, New Problems
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Commander Dresh|r, |cRXP_FRIENDLY_Bladeguard Sonji|r and |cRXP_FRIENDLY_First Arcanist Thalyssra|r.
    .complete 53890,1 --1/1 Commander Dresh questioned
    .goto 85,48.23,71.76
    .complete 53890,2 --1/1 Bladeguard Sonji questioned
    .goto 85,48.69,71.63
    .complete 53890,3 --1/1 First Arcanist Thalyssra questioned
    .goto 85,48.65,71.25
    .skipgossip
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .goto 241,44.11,73.47
    .turnin 53891 >>Turn in No Problem Too Small
    .accept 53892 >>Accept Where Are the Workers?
    .target Kiro
step
    >>Follow the arrow to the waypoint
    .goto 241,46.81,66.22
    .complete 53892,1 --1/1 Follow Kiro
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>Wait for the RP
    .goto 241,46.05,65.60
    .complete 53892,2 --1/1 Peon Hideout investigated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crushblow Peons|r.
    .goto 241,46.05,65.60
    .skipgossip
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
    .skipgossip 1
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
    >>Use the |T310733:0|t[Enlarging Totem] before killing |cRXP_ENEMY_beasts|r around the area. Loot them for their [|cRXP_LOOT_flanks|r], [|cRXP_LOOT_meat|r], and [|cRXP_LOOT_tidbits|r].
    .goto 241,48.40,65.62,30,0
    .goto 241,46.62,63.33,30,0
    .goto 241,44.39,67.00,30,0
    .goto 241,45.34,67.78,30,0
    .goto 241,50.10,74.37,30,0
    .goto 241,53.75,71.69,30,0
#loop
	.line 241,48.40,65.62,46.62,63.33,44.39,67.00,45.34,67.78,50.10,74.37,53.75,71.69
	.goto 241,48.40,65.62,35,0
	.goto 241,46.62,63.33,35,0
	.goto 241,44.39,67.00,35,0
	.goto 241,45.34,67.78,35,0
	.goto 241,50.10,74.37,35,0
	.goto 241,53.75,71.69,35,0
    .complete 53893,1 --100/100 Saber Flank
    .complete 53893,2 --100/100 Worg Meat
    .complete 53893,3 --100/100 Clucker Tidbits
    .use 171356
    .mob Twilight Prowler
    .mob Highlands Clucker
step
    >>Pick up |cRXP_PICK_Twilight Ore|r from the veins.
    .goto 241,51.13,68.58,30,0
    .goto 241,48.60,70.24,30,0
    .goto 241,46.42,72.89,30,0
#loop
	.line 241,51.13,68.58,48.60,70.24,46.42,72.89
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
    .skipgossip
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
    .skipgossip
    .target Foreman Magrok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r.
    .goto 241,45.04,76.24
    .turnin 53898 >>Turn in Strength and Honor
    .accept 54026 >>Accept Job's Done
    .target Kiro
step << Mage
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .isOnQuest 54026
    .zoneskip 85
    .goto 18,60.74,58.67
    .zone 85 >> Take the portal to Orgrimmar
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
    #completewith next
    .noflyable 862
    .goto 1165,51.91,41.20
    .fly Seeker's Outpost >>Fly to Seeker's Outpost
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
    >>Kill |cRXP_ENEMY_Nazeshi Overseer|r or |cRXP_ENEMY_Nazeshi Tempest-Wielder|r. Loot them for their [|cRXP_LOOT_weaponry|r].
    .goto 862,74.18,65.41,20,0
    .goto 862,75.11,66.23,20,0
    .goto 862,76.92,66.23,25,0
    .goto 862,77.14,63.93,25,0
#loop
	.line 862,74.18,65.41,75.11,66.23,76.92,66.23,77.14,63.93
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
step << Mage
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .zoneskip 85
    #completewith next
    .isOnQuest 54027
    .noflyable 862
    .goto 862,70.45,65.30
    .fly The Great Seal >>Fly to The Great Seal
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
    .skipgossip 1
    .complete 53905,2 --1/1 Boss Mida assigned
    .target Boss Mida
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micah Broadhoof|r inside the house.
    .goto 680,61.22,55.15
    .skipgossip 2
    .complete 53905,1 --1/1 Micah assigned
    .target Micah Broadhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r.
    .goto 680,62.42,57.65
    .skipgossip 1
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
    >>Kill |cRXP_ENEMY_Tattered Silkwings|r. Loot them for their [|cRXP_LOOT_Fibers|r].
    .goto 680,63.97,57.97,25,0
    .goto 680,62.87,59.77,25,0
    .goto 680,61.06,57.61,25,0
    .goto 680,62.03,55.66,25,0
#loop
	.line 680,63.97,57.97,62.87,59.77,61.06,57.61,62.03,55.66
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vintner Iltheux|r and wait for the RP
    .goto 680,58.79,55.42
    .skipgossip
    .complete 53907,2 --1/1 Deliver the sample to Vintner Iltheux
    .target Vintner Iltheux
step
    .goto 680,58.80,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r.
    .turnin 53907 >>Turn in Sip and Savor
    .accept 53908 >>Accept Awaiting Our Arrival
    .target Meerah
step << Mage
    .isOnQuest 53908
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .isOnQuest 53908
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .isOnQuest 53908
    .zoneskip 85
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .isOnQuest 53908
    .zoneskip 85
    .goto 627,55.27,23.97
    .zone 85 >>Use the Portal to Orgrimmar in Dalaran
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
step
    .isQuestTurnedIn 57448
    +Congratulations! You've unlocked the Vulpera!
]])

-- ============================================================
-- ================    HERITAGE ARMOR   =======================
-- ============================================================

-----------------------------------------------------
--- ALLIANCE
-----------------------------------------------------

--SEPERATOR
RXPGuides.RegisterGuide([[
#retail
#group RestedXP Collectables
#subgroup Allied Races
#name az
#displayname |cFFFCDC00HERITAGE ARMOR|r
#disabled


]])

--Human
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name b) Human Heritage Armor
#displayname |cFF1EFF001|r - Human
#next ba) Dwarf Heritage Armor

<< Alliance

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 84 >> Go to Stormwind
step
    .goto 84,54.47,20.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Render|r
    .accept 75265 >>Accept An Urgent Matter
    .target Agent Render
step
    .goto 84,87.45,30.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r |cRXP_WARN_behind the house.|r
    .turnin 75265 >>Turn in An Urgent Matter
    .target Master Mathias Shaw
    .accept 72405 >>Accept An Unlikely Informant
step
    .isOnQuest 72405
    .goto 37,43.06,65.68,10 >>Enter Lion's Pride Inn
step
    .goto 37,43.22,66.09,5,0
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farlay|r
    .home >>Set your Hearthstone to Lion's Pride Inn
    .target Innkeeper Farlay
step
    .isOnQuest 72405
    .goto 37,44.05,66.07,5,0
    .goto 37,44.46,65.74,10 >>Enter Lion's Pride Inn basement
step
    .isOnQuest 72405
    .goto 37,44.34,66.21
    .gossipoption 107712 >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .timer 26,RP
    .target Master Mathias Shaw
step
    .goto 37,44.34,66.19
    >>|cRXP_WARN_Wait until the objective is complete.
    .complete 72405,1 --1/1 Shaw talked to in the Lion's Pride Inn basement
step
    .goto 37,44.34,66.19
    >>|r|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 72405 >>Turn in An Unlikely Informant
    .target Master Mathias Shaw
    .accept 72408 >>Accept A Window to the Past
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaw|r
    *|cFFFF0000After completing the objective, you can skip the cutscene by pressing 'Escape' and accepting the prompt.|r
    .complete 72408,1 --1/1 Speak with Shaw
    .skipgossip
    .target Shaw
step
    .goto 37,44.34,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .turnin 72408 >>Turn in A Window to the Past
    .target Vanessa VanCleef
    .accept 72409 >>Accept Rotten Old Memories
step
    .isOnQuest 72409
    .goto 37,44.46,65.74,10,0
    .goto 37,44.09,66.04,10,0
    .goto 37,43.16,65.95,10,0
    .goto 37,43.19,65.63,8,0
    .goto 37,42.86,65.63,8 >>Leave Lion's Pride Inn basement
step
    .goto 36,72.86,64.80
    -- .gossipoption 107725
    -- .gossipoption 107724
    -- .gossipoption 107723
    -- .gossipoption 107722
    -- .gossipoption 108338 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .complete 72409,1 --1/1 Speak to Ragged John
    .skipgossip 9563,1,1,1,1,2
    .target Ragged John
step
    .isOnQuest 72409
    .goto 36,61.99,65.07,10 >>Go inside the Cave
step
    .goto 36,61.76,66.76
    >>Click on |cRXP_PICK_Hoarded Debris.|r
    .complete 72409,2,1 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    .goto 36,61.21,67.24
    >>Click on |cRXP_PICK_Hoarded Debris.|r
    .complete 72409,2,2 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    .goto 36,60.24,66.23
    >>Click on |cRXP_PICK_Hoarded Debris.|r
    .complete 72409,2,3 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    .goto 36,61.28,65.28
    >>Click on |cRXP_PICK_Hoarded Debris.|r
    .complete 72409,2,4 --4/4 Chewed Piece of Journal
    .mob Vicious Ember Worg
step
    .isOnQuest 72409
    .goto 36,61.99,65.07,10 >>Leave the Cave
step
    .goto 36,72.84,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .turnin 72409 >>Turn in Rotten Old Memories
    .target Ragged John
    .accept 72424 >>Accept Looking for Something Specific
step
    .isOnQuest 72424
    .goto 37,43.13,65.68,10,0
    .goto 37,43.2,66.1,10,0
    .goto 37,44.11,66.06,10,0
    .goto 37,44.46,65.74,10 >>Enter Lion's Pride Inn basement
step
    .goto 37,44.33,66.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 72424 >>Turn in Looking for Something Specific
    .target Master Mathias Shaw
    .accept 72426 >>Accept The New Clessington Estate
step
    .isOnQuest 72426
    .goto 37,44.46,65.74,10,0
    .goto 37,44.09,66.04,10,0
    .goto 37,43.16,65.95,10,0
    .goto 37,43.19,65.63,8,0
    .goto 37,42.86,65.63,8 >>Leave Lion's Pride Inn basement
step
    #completewith next
    .goto 47,18.04,55.13,10 >>Enter the House
step
    .goto 47,17.45,55.22,10,0
    .goto 47,18.04,54.65,5,0
    .goto 47,18.06,54.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cecilia Clessington|r
    .complete 72426,1 --1/1 Clessington Manor investigated
    .skipgossip 198912,1
    .target Cecilia Clessington
step
    #completewith escorted
    .goto 47,17.88,54.81,10,0
    .goto 47,17.54,54.72,10,0
    .goto 47,18.04,55.39,10 >>Leave the Building
    *Kill |cRXP_ENEMY_Clessington Attendants|r
    .mob Clessington Attendant
step
    #completewith escorted
    .goto 47,18.34,54.63,5 >>Follow the Arrow
    *Kill |cRXP_ENEMY_Clessington Attendants|r
    .mob Clessington Attendant
step
    #label escorted
    .goto 47,18.35,55.07
    >>Wait for the Objective to complete.
    .complete 72426,2 --1/1 Cecilia escorted from the building
    .mob Clessington Attendant
    .target Cecilia Clessington
step
    .goto 47,18.35,55.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cecilia Clessington|r
    .complete 72426,3 --1/1 Circumstances explained to Cecilia
    .skipgossip 198912,1
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
    #completewith Count Clessington
    >>Kill |cRXP_ENEMY_Clessington Attendants|r
    .complete 72432,1 --16/16 Clessington Attendant slain
    .mob Clessington Attendant
step
    .goto 52,42.60,71.96
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72431,1 --1/1 Defias Hideout entered
step
    #label Count Clessington
    .isOnQuest 72431
    .goto 52,43.36,71.91,10,0
    .goto 52,42.78,72.6,10,0
    .goto 52,43.37,72.66,5,0
    .goto 52,43.65,72.81,10,0
    .goto 52,43.3,72.98,10,0
    .goto 55,69.27,22.87,10,0
    .goto 55,65.89,25.58,10 >>|cRXP_WARN_Follow the Arrow|r
step
    .isOnQuest 72431
    .goto 55,62.34,30.28,10 >> Jump Down
step
    .isOnQuest 72431
    .goto 55,49.56,42.05,10,0
    .goto 55,51.58,53.49,10,0
    .goto 55,58.03,58.81,10 >>|cRXP_WARN_Follow the Arrow|r
    .timer 60,RP
step
    #sticky
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72431,2 --1/1 Count Clessington found
step
    .goto 55,49.41,49.63,10,0
    .goto 55,50.94,41.01,10,0
    .goto 55,63.63,15.28,10,0
    .goto 55,59.69,18.33,10,0
    .goto 55,66.17,26.3,10,0
    .goto 55,70.24,21.8,10,0
    .goto 52,43.3,72.95,10,0
    .goto 52,43.36,72.72,5,0
    .goto 52,42.89,72.73,5,0
    .goto 52,42.98,71.73,10,0
    .goto 52,42.57,72.02,5 >> Leave the Cave
step
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r |cRXP_WARN_next to you|r
    .target Vanessa VanCleef
    .turnin 72431 >>Turn in A Hungry Heritage
step
    .goto 52,45.22,68.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .target Vanessa VanCleef
    .accept 72453 >>Accept Betrayal of the Brotherhood
step
    #loop
    .goto 52,42.77,68.77,40,0
    .goto 52,45.62,68.77,40,0
    .goto 52,42.56,71.82,40,0
    >>Kill |cRXP_ENEMY_Clessington Attendants|r
    *|cRXP_WARN_You can use the|r [ExtraActionButton] to increase your movement speed.
    .complete 72432,1 --16/16 Clessington Attendant slain
    .mob Clessington Attendant
step
    #completewith next
    .goto 52,46.88,66.62,10 >>Follow the Arrow
    .timer 5, RP
step
    #title |cFFFCDC00Follow the Arrow|r
    *|cRXP_WARN_You can use the|r [ExtraActionButton] to increase your movement speed.
    .complete 72453,1 --1/1 Defias Hideout escaped
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
    #completewith next
    .hs >>Hearth to Lion's Pride Inn
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
    >>Kill |cRXP_ENEMY_Enforcer Grant.|r Loot them for [|cRXP_LOOT_Enforcer Grant's Signet|r]
    .complete 72449,1 --1/1 Enforcer Grant's Signet
    .mob Enforcer Grant
step
    .goto 425,49.52,62.61
    >>Kill |cRXP_ENEMY_Enforcer Jennive.|r Loot them for [|cRXP_LOOT_Enforcer Jennive's Signet|r]
    .complete 72449,2 --1/1 Enforcer Jennive's Signet
    .mob Enforcer Jennive
step
    .goto 425,35.32,39.05
    >>Kill |cRXP_ENEMY_Enforcer Tera.|r Loot them for [|cRXP_LOOT_Enforcer Tera's Signet|r]
    .complete 72449,3 --1/1 Enforcer Tera's Signet
    .mob Enforcer Tera
step
    #label Enforcer Horb's Signet
    .goto 425,31.25,19.24
    >>Kill |cRXP_ENEMY_Enforcer Horb.|r Loot them for [|cRXP_LOOT_Enforcer Horb's Signet|r]
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
    >>Click on the |cRXP_PICK_Barrier|r
    .complete 72450,1 --1/1 Barrier dispelled
step
    #completewith next
    .goto 425,37.6,50.33,10 >> |cRXP_WARN_Follow the Arrow|r
    .timer 15,RP
step
    .goto 425,36.98,51.16
    >>Kill |cRXP_ENEMY_Count Clessington|r and it's |cRXP_ENEMY_minions.|r
    *Use the |cRXP_WARN_[ExtraActionButton]|r if you are stunned.
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
    >>Click on the |cRXP_PICK_Amulet|r
    .complete 72451,1 --1/1 Drakefire Amulet
step
    .goto 425,36.47,51.12
    .gossipoption 108735 >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .target Master Mathias Shaw
    .timer 25,RP
step
    .goto 425,37.46,52.03
    >>Wait until the objective completes.
    .complete 72451,2 --1/1 Amulet given to Shaw
    .skipgossip
step
    #completewith [3]
    >>|cRXP_WARN_Follow the Instructions|r
    .complete 72451,3 --1/1 Resist
step
    .isOnQuest 72451
    .goto 425,37.46,52.03
    .cast 59752 >> Use |T136129:0|t[Will to Survive] |cRXP_WARN_ExtraActionButton|r |cRXP_WARN_[1]|r
step
    .isOnQuest 72451
    .goto 425,37.46,52.03
    .cast 59752 >> Use |T136129:0|t[Will to Survive] |cRXP_WARN_ExtraActionButton|r |cRXP_WARN_[2]|r
step
    .isOnQuest 72451
    #label [3]
    .goto 425,37.46,52.03
    .cast 59752 >> Use |T136129:0|t[Will to Survive] your |cRXP_WARN_ExtraActionButton|r |cRXP_WARN_[3]|r
    .timer 26, RP
step
    .goto 425,37.31,51.03
    >>Kill |cRXP_ENEMY_Shade of Onyxia|r
    *Use the |cRXP_WARN_[ExtraActionButton]|r if you are stunned.
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
    .skipgossip
step
    .goto 84,69.38,82.99
    >>Wait until the objective completes.
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
#group RestedXP Collectables
#subgroup Allied Races
#name ba) Dwarf Heritage Armor
#displayname |cFF1EFF002|r - Dwarf
#next bc) Nightelf Heritage Armor

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,54.61,18.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Digger Golad|r
    .accept 53838 >>Accept Keep Yer Feet On The Ground
    .target Digger Golad
step
    #completewith missing excavators
    .zone 27 >>Go to Dun Morogh
step
    #completewith missing excavators
    .goto 27,68.08,48.91 >> Enter the Cave
step
    #label missing excavators
    .goto 31,38.47,54.23,10,0
    .goto 31,50.87,20.89,10,0
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
    >>Click on the |cRXP_PICK_Ancient Tablet|r
    .turnin 53838 >>Turn in Keep Yer Feet On The Ground
    .accept 53835 >>Accept Something Valuable, Perhaps?
    .target Ancient Tablet
step
    #completewith Turn in Something Valuable, Perhaps?
    .goto 31,50.87,20.89
    .goto 31,38.47,54.23
    .goto 27,77.83,54.89 >>Leave the Cave
step
    #completewith Turn in Something Valuable, Perhaps?
    .goto 27,60.55,33.3
    .zone 87 >>Go to Ironforge
step
    #label Turn in Something Valuable, Perhaps?
    .goto 87,77.42,9.56,40,0
    .goto 87,22.21,78.59,20,0
    .goto 87,27.48,84.68,20,0
    .goto 87,37.43,66.74,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53835 >>Turn in Something Valuable, Perhaps?
    .accept 53836 >>Accept Ancient Armor, Ancient Mystery
    .target Brann Bronzebeard
step
    .goto 87,44.26,49.85,10,0
    .goto 87,46.37,52.83,5,0
    .goto 1361,75.76,88.5,5,0
    .goto 1361,80.96,89.21,5,0
    .goto 1361,82,53.24,5,0
    .goto 1361,57.03,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 53836 >>Turn in Ancient Armor, Ancient Mystery
    .target Advisor Belgrum
    .accept 53837 >>Accept Watch Yer Back
step
    .goto 1361,45.14,62.19,5,0
    .goto 1361,38.25,66.03,5,0
    .goto 1361,43.4,54.15,5,0
    .goto 1361,37.63,40.67,5,0
    .goto 1361,28.2,50.73,5,0
    .goto 1361,38.87,71.33,5,0
    .goto 1361,47.72,65.33,5,0
    .goto 1361,38.15,44.51,5,0
    .goto 1361,19.69,51.98
    >>Kill |cRXP_ENEMY_Trogg Invader|r and the |cRXP_ENEMY_Roc'maw the Burrower|r
    .complete 53837,1 --8/8 Trogg Invader slain
    .complete 53837,2 --1/1 Roc'maw the Burrower slain
    .mob Trogg Invader
    .mob Roc'maw the Burrower
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r |cRXP_WARN_next to you.|r
    .turnin 53837 >>Turn in Watch Yer Back
    .target Advisor Belgrum
    .accept 53839 >>Accept Aegrim's Study
step
    .isOnQuest 53839
    .goto 1361,18.65,52.4
    .zone 87 >>Click on the |cRXP_PICK_Door|r
step
    .goto 87,19.55,52.05
    >>Click on |the cRXP_PICK_Armor Stand|r
    .turnin 53839 >>Turn in Aegrim's Study
    .target Armor Stand
    .accept 53841 >>Accept Shards of the Past
step
    #completewith Ancient Golem Guards
    +Kill |cRXP_ENEMY_Ancient Golem Guards.|r
    .mob Ancient Golem Guard
step
    .goto 87,19.48,51.8
    >>Click on the |cRXP_PICK_Metal.|r
    .complete 53841,1,1 --6/6 Fragments of Shattered Armor
step
    .goto 87,20.25,52.57
    >>Click on the |cRXP_PICK_Metal.|r
    .complete 53841,1,2 --6/6 Fragments of Shattered Armor
step
    .goto 87,20.89,53.24
    >>Click on the |cRXP_PICK_Metal.|r
    .complete 53841,1,3 --6/6 Fragments of Shattered Armor
step
    .goto 87,21.96,51.53
    >>Click on the |cRXP_PICK_Metal.|r
    .complete 53841,1,4 --6/6 Fragments of Shattered Armor
step
    .goto 87,20.93,50.94
    >>Click on the |cRXP_PICK_Metal.|r
    .complete 53841,1,5 --6/6 Fragments of Shattered Armor
step
    #label Ancient Golem Guards
    .goto 87,20.7,49.65
    >>Click on the |cRXP_PICK_Metal.|r
    .complete 53841,1,6 --6/6 Fragments of Shattered Armor
step
    .goto 87,24.82,49.31
    .isOnQuest 53841
    .zone 1361 >>Click on the |cRXP_PICK_Door|r
step
    .goto 1361,38.15,44.51,5,0
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
    .goto 87,77.44,9.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53841 >>Turn in Shards of the Past
    .target Brann Bronzebeard
    .accept 53840 >>Accept Interest Yah In A Pint?
step
    #completewith next
    .goto 87,55.65,47.84
    .fly Thelsamar >>Fly to Thelsamar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
step
    .isOnQuest 53840
    .goto 48,35.23,47.77,5,0 >> Enter Thelsamar
step
    .goto 48,35.53,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >>Set your Hearthstone to Stoutlager Inn
    .target Innkeeper Hearthstove
step
    .goto 48,35.00,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grumnus Steelshaper|r
    .turnin 53840 >>Turn in Interest Yah In A Pint?
    .target Grumnus Steelshaper
step
    .goto 48,35.02,48.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .accept 53844 >>Accept Recruiting the Furnace Master
    .target Brann Bronzebeard
-- step
-- .set hs
-- step
--     #completewith next
--     .hs >>Hearth to Trade District
step
    .cast 48933 >>|T135778:0|t[Wormhole Generator: Northend]
    .itemcount 48933,1
step
    #completewith next
    .zone 120 >>Go to Northend(Storm Peaks)
step
    .goto 120,41.55,17.99
    >>Enter the Ulduar Instance Portal
    .complete 53844,1 --1/1 Travel to Ulduar
step
    #completewith next
    >>Kill |cRXP_ENEMY_Titan Flames|r
    .complete 53844,2 --6/6 Titan Flame slain
    .mob Titan Flame
step
    >>Kill |cRXP_ENEMY_Magmarion of the Furnace|r
    *|cRXP_WARN_Take the first left turn.|r
    .complete 53844,3 --1/1 Magmarion of the Furnace slain
    .mob Magmarion of the Furnace
step
    >>Kill |cRXP_ENEMY_Titan Flames|r
    .complete 53844,2 --6/6 Titan Flame slain
    .mob Titan Flame
step
    .goto 48,35.01,48.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 53844 >>Turn in Recruiting the Furnace Master
    .target Brann Bronzebeard
    .accept 53842 >>Accept Earthen Blessing
step
    #completewith next
    .goto 48,35.48,48.16,5,0
    .goto 48,35.37,47.67,5,0
    .goto 48,33.84,50.82
    .fly Ironforge >>Fly to Ironforge
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
step
    .goto 87,44.26,49.85,10,0
    .goto 87,46.37,52.83,5,0
    .goto 1361,75.76,88.5,5,0
    .goto 1361,80.96,89.21,5,0
    .goto 1361,82,53.24,5,0
    .goto 1361,36.11,54.22
    >>Click on the |cRXP_PICK_Remnant of the Earthen Ritual|r
    .complete 53842,1 --1/1 Remnant of the Earthen Ritual
step
    .goto 1361,82,53.24,5,0
    .goto 1361,80.96,89.21,5,0
    .goto 1361,75.76,88.5,5,0
    .goto 87,46.37,52.83,5,0
    .goto 87,44.26,49.85,10,0
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
    >>|cRXP_WARN_Use the|r [ExtraActionButton] inside the fiery circle.
    .complete 53845,1 --1/1 Help Bouldercrag's Ritual
step
    #completewith next
    .goto 87,49.03,44.67
    .cast 6478 >>Click on the|cRXP_PICK_Pile of Ancient Metal.|r
step
    .goto 87,51.69,43.70
    >>Mount up and fly inside the fiery circle.
    .complete 53845,2 --1/1 Present Ignis the Armor Shards
step
    #completewith next
    .goto 87,52.34,44.08
    .cast 6478 >>Click on the |cRXP_PICK_Molten Metal.|r
step
    .goto 87,50.10,43.96
    >>Mount up and fly inside the fiery circle.
    .complete 53845,3 --1/1 Bring the Molten Metal to the Great Anvil
step
    >>|cRXP_WARN_Use the|r [ExtraActionButton]
    .complete 53845,4 --1/1 Forge the Bulwark of the Mountain Kings
step
    .goto 87,49.74,43.71
    >>Click on the|cRXP_PICK_Bulwark of the Mountain King|r
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
    .turnin 53846 >>Turn in Legacy of the Bronzebeard
    .target Muradin Bronzebeard
]])

--Nightelf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bc) Nightelf Heritage Armor
#displayname |cFF1EFF003|r - Nightelf
#next bd) Gnome Heritage Armor

<< Alliance

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 84 >> Go to Stormwind
step
    .goto 84,52.3,14.2
    >>Click on the |cRXP_PICK_Scroll|r
    .accept 75890 >>Accept Clarion Call
step
    .goto 84,52.34,4.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arko'narin Starshade|r
    .turnin 75890 >>Turn in The Clarion Call
    .target Arko'narin Starshade
    .accept 75891 >>Accept Ancient Curses
step
    #completewith next
    .goto 84,76.16,18.7
    .zone 198 >> Take the Portal to Twillight Highlands
step
    .goto 12,47.67,30.61,10 >>|cRXP_WARN_Follow the Arrow|r
    .timer 30,RP
step
    .goto 12,47.67,30.61
    >>Wait for the objective to complete.
    .complete 75891,1 --1/1 Meet Maiev Shadowsong in Felwood
    .target Maiev Shadowsong
step
    .goto 12,47.67,30.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .turnin 75891 >>Turn in Ancient Curses
    .target Maiev Shadowsong
    .accept 76194 >>Accept A Grim Portent
step
    .isOnQuest 76194
    .goto 12,47.67,30.62
    .gossipoption 110344 >>Talk to |cRXP_FRIENDLY_Arko'narin|r
    .timer 30,RP
    .target Arko'narin
step
    .goto 12,47.67,30.61
    >>Wait for the objective to complete.
    .complete 76194,1 --1/1 Speak with Arko'narin
step
    .goto 12,47.68,30.61
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
    >>Kill |cRXP_ENEMY_Feltouched Trickster,|r |cRXP_ENEMY_Feltouched Conjurer,|r |cRXP_ENEMY_Jaedenar Warrior|r and |cRXP_ENEMY_Jaedenar Scoundrel|r
    .complete 76196,1 --15/15 Kill enemies in Jaedenar
    .mob Feltouched Trickster
    .mob Jaedenar Warrior
    .mob Jaedenar Scoundrel
    .mob Feltouched Conjurer
step
    >>Use |T134544:0|t[Incanter's Tome] on dead |cRXP_ENEMY_Feltouched Trickster|r and |cRXP_ENEMY_Feltouched Conjurer.|r
    .complete 76195,1 --6/6 Satyr corpses neutralized
    .use 207004
step
    #label Kill enemies in Jaedenar
    >>Kill |cRXP_ENEMY_Feltouched Trickster,|r |cRXP_ENEMY_Feltouched Conjurer,|r |cRXP_ENEMY_Jaedenar Warrior|r and |cRXP_ENEMY_Jaedenar Scoundrel|r
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
    +Stay close to |cRXP_FRIENDLY_Maiev Shadowsong|r
step
    .goto 77,36.09,57.49,5,0
    .goto 77,35.9,57.8,5,0
    .goto 77,36.19,57.79,5,0
    .goto 77,36.18,56.85
    >>Click on |cRXP_PICK_Felflame Brazier|r
    .complete 76203,2,1 --6/6 Felflame Braziers extinguished
step
    .goto 77,36.83,56.17
    >>Click on |cRXP_PICK_Felflame Brazier|r
    .complete 76203,2,2 --6/6 Felflame Braziers extinguished
step
    .goto 77,37.07,55.38
    >>Click on |cRXP_PICK_Felflame Brazier|r
    .complete 76203,2,3 --6/6 Felflame Braziers extinguished
step
    .goto 77,37.17,54.67
    >>Click on |cRXP_PICK_Felflame Brazier|r
    .complete 76203,2,4 --6/6 Felflame Braziers extinguished
step
    .goto 77,37.92,54.77
    >>Click on |cRXP_PICK_Felflame Brazier|r
    .complete 76203,2,5 --6/6 Felflame Braziers extinguished
step
    .goto 77,38.46,54.4
    >>Click on |cRXP_PICK_Felflame Brazier|r
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
    >>Kill |cRXP_ENEMY_Hel'nurathian Hel'nurathian Cultist,|r |cRXP_ENEMY_Hel'nurathian Defender|r and |cRXP_ENEMY_Hel'nurathian Felmaw.|r
    .complete 76205,1 --Enemies slain in Shadow Hold (100%)
    .mob Hel'nurathian Cultist
    .mob Hel'nurathian Defender
    .mob Hel'nurathian Felmaw
step
    .isOnQuest 76206
    .goto 77,39.03,50.3
    .cast 416036 >>Click on the |cRXP_PICK_Portal|r
step
    #hidewindow
    #completewith Portal1
    .goto 77,39.47,49.61,5,0
    .goto 77,39.69,49.86,5,0
    .goto 77,39.93,49.99,5,0
    .goto 77,39.86,49.57,5,0
    .goto 77,39.66,49.86,5,0
    .goto 77,39.96,49.87,5,0
    .goto 77,41.17,48.4
    +1
step
    .isOnQuest 76206
    #title |cFFFCDC00Follow the Arrow|r
    .complete 76206,1,1 --4/4 Portals closed
step
    #label Portal1
    .isOnQuest 76206
    .cast 416036 >>Click on the |cRXP_PICK_Portal|r
step
    #hidewindow
    #completewith Portal2
    .goto 77,40.72,48.7,15,0
    .goto 77,41.05,49.58
    +1
step
    .isOnQuest 76206
    #title |cFFFCDC00Follow the Arrow|r
    .complete 76206,1,2 --4/4 Portals closed
step
    .isOnQuest 76206
    #label Portal2
    .cast 416036 >>Click on the |cRXP_PICK_Portal|r
step
    #hidewindow
    #completewith Portal3
    .goto 77,40.5,47.76,10,0
    .goto 77,39.28,46.94
    +1
step
    .isOnQuest 76206
    #title |cFFFCDC00Follow the Arrow|r
    .complete 76206,1,3 --4/4 Portals closed
step
    #label Portal3
    .cast 416036 >>Click on the |cRXP_PICK_Portal|r
step
    #loop
    .goto 77,40.5,47.76,10,0
    .goto 77,40.53,48.05,10,0
    .goto 77,40.4,48.96,10,0
    .goto 77,41.05,49.58,10,0
    .goto 77,39.03,50.3,10,0
    >>Kill |cRXP_ENEMY_Hel'nurathian Hel'nurathian Cultist,|r |cRXP_ENEMY_Hel'nurathian Defender|r and |cRXP_ENEMY_Hel'nurathian Felmaw.|r
    .complete 76205,1 --Enemies slain in Shadow Hold (100%)
    .mob Hel'nurathian Cultist
    .mob Hel'nurathian Defender
    .mob Hel'nurathian Felmaw
step
    #hidewindow
    #completewith Turn in Balancing the Scales
    .goto 77,39.14,46.23,15,0
    .goto 77,38.74,46.88,15,0
    .goto 77,37.98,46.21
    +1
step
    .isOnQuest 76206
    #label Portals
    #title |cFFFCDC00Follow the Arrow|r
    .complete 76206,1,4 --4/4 Portals closed
step
    #label Turn in Balancing the Scales
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r and |cRXP_FRIENDLY_Arko'narin Starshade|r
    .turnin 76205 >>Turn in Balancing the Scales
    .goto 77,37.98,46.21
    .target +Maiev Shadowsong
    .turnin 76206 >>Turn in Heart of the Issue
    .goto 77,37.93,46.26
    .target +Arko'narin Starshade
step
    .goto 77,38.49,45.66,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arko'narin Starshade|r
    .accept 76207 >>Accept Wardens' Wrath
    .target Arko'narin Starshade
step
    .goto 77,38.47,45.7,10,0
    .goto 77,38.58,46.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .target Maiev Shadowsong
    .complete 76207,1 --1/1 Maiev signaled
    .skipgossip
step
    .goto 77,38.11,47.37
    >>Defend |cRXP_FRIENDLY_Lysander|r
    *|cFFFF0000After completing the objective, you can skip the cutscene by pressing 'Escape' and accepting the prompt.|r
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
    .goto 12,47.4,30.36
    .cast 421556 >>|cRXP_WARN_Use the|r [ExtraActionButton]
    .timer 82,RP
step
    >>Wait for the Objective to complete.
    .complete 76212,2 --1/1 Witness the facial marking ceremony
step
    #EndIncludePrepGuide
    #completewith next
    .goto 12,47.42,30.38
    .zone 84 >> Take the Portal to Stormwind
step
    .goto 84,49.4,86.71,5,0
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
    .timer 30,RP
    .target Maiev Shadowsong
step
    .goto 84,52.59,3.82
    >>|cRXP_WARN_Wait for the roleplay|r
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .target Maiev Shadowsong
    .turnin 76213 >>Turn in Honor of the Goddess
]])

--Gnome
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bd) Gnome Heritage Armor
#displayname |cFF1EFF004|r - Gnome
#next be) Draenei Heritage Armor

<< Alliance

step
    #label StartIncludePrepGuide
    #completewith next
    .zone 87 >>Go to Ironforge
step
    .goto 84,54.81,18.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ace Pilot Stormcrog|r
    .accept 54402 >>Accept Shifting Gears
    .target Ace Pilot Stormcrog
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
    .skipgossip
    .target Cog Captain Winklespring
step
    .goto 469,37.46,38.16,10,0
    .goto 469,38.25,39.24,5,0
    .goto 469,38.19,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emaedi Autoblast|r |cRXP_WARN_inside the house.|r
    .complete 54576,1 --1/1 Speak with Emaedi Autoblast
    .skipgossip
    .target Emaedi Autoblast
step
    .goto 469,38.23,39.32,5,0
    .goto 469,37.43,38.11,5,0
    .goto 469,37.95,33.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzi Tinkerbow|r
    .complete 54576,2 --1/1 Speak with Fizzi Tinkerbow
    .skipgossip
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
    .goto 30,45.43,13.95
    >>|cRXP_WARN_Follow the Arrow.|r
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
    >>Click on |cRXP_PICK_Prototype Arcane Engine.|r
    .complete 54577,2 --1/1 Prototype Arcane Engine
step
    #completewith next
    .goto 1380,37.81,72.24
    .cast 6478 >>Click on the|cRXP_PICK_Broken Teleporter|r
step
    .goto 469,41.77,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r
    .turnin 54577 >>Turn in Shadowed Halls and Dusty Cogs
    .target Captain Tread Sparknozzle
    .accept 54580 >>Accept A Tundra Conundrum
step
    #completewith next
    .zone 114 >>Go to Borean Tundra(Northend)
step
    #loop
    .goto 114,55.28,18.92,2,0
    .goto 114,55.36,18.82,2,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
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
    *|cRXP_WARN_Use the|r [ExtraActionButton] to deal additional damage.
    .complete 54581,1 --10/10 Ironbound Brute slain
    .mob Ironbound Brute
    .mob Ironbound Scrapthrower
step
    .goto 114,64.08,24.73
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 54581 >>Turn in Now With More Mechanical Fowl
    .accept 54582 >>Accept Smarter Than Your Average Trogg
step
    .goto 114,64.62,23.02
    >>Kill |cRXP_ENEMY_Krugg the Smart.|r Loot them for the [|cRXP_LOOT_Broken Communication Device.|r]
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
    >>Click on the |cRXP_PICK_RCV Control Switch.|r
    .complete 54579,1 --1/1 RCV Control Switch
    .timer 15,RP
step
    .goto 114,55.31,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzi Tinkerbow|r
    .turnin 54579 >>Turn in The Gnome Behind the Trogg
    .target Fizzi Tinkerbow
    .accept 54639 >>Accept A Signal in Storm Peaks
step
    .goto 114,55.18,18.83
    >>Click on the |cRXP_PICK_First Squadron Prototype.|r
    .complete 54639,1 --1/1 Jump in the First Squadron Prototype
    .timer 140,RP
    .target First Squadron Prototype
step
    >>Wait until it's arrival.
    .complete 54639,2 --1/1 Reach the signal point
step
    .goto 120,37.60,60.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .turnin 54639 >>Turn in A Signal in Storm Peaks
    .target Cog Captain Winklespring
    .accept 54640 >>Accept Gnomercy!
step
    .goto 120,37.45,60.51
    >>Click on |cRXP_PICK_Shrinkified Assault Tank|r
    .complete 54640,1 --1/1 De-Shrinkify the Assault Tank
    .target Shrinkified Assault Tank
step
    .goto 120,37.45,60.51
    >>Click on |cRXP_PICK_Gnomeregan Assault Tank|r
    .complete 54640,2 --1/1 Commandeer the Assault Tank
    .target Gnomeregan Assault Tank
step
    .isOnQuest 54640
    .exitvehicle >> |cRXP_WARN_Dismount the Gnomeregan Assault Tank by pressing the |r[Exit] |cRXP_WARN_button on your action bars.|r
    *|cRXP_WARN_Alternatively, you can use this macro;|r
    .link /leavevehicle>> CLICK HERE FOR MACRO.
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
    >>Kill |cRXP_ENEMY_Ironbound Invader|r
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
    >>Click on the |cRXP_PICK_First Squadron Prototype|r
    .complete 54850,1 --1/1 Jump in the First Squadron Prototype
    .target First Squadron Prototype
step
    .goto 120,37.43,43.02
    >>Use |T1141394:0|t1[Standard Issue Bomber Gun](1) to hit enemies in a cone infront of you and |T136111:0|t[Buster Cannon Mk. II](2) to target enemies within a circle on the ground.
    .complete 54850,2 --Defeat Sparkspanner's Army (100%)
step
    #label EndIncludePrepGuide
    .goto 120,38.73,42.67
    >>|cRXP_WARN_Click the pop-up in your questlog|r
    .turnin 54850 >>Turn in Operation: Troggageddon
step
    #completewith next
    .exitvehicle >> |cRXP_WARN_Dismount the First Squadron Prototype by pressing the |r[Exit] |cRXP_WARN_button on your action bars.|r
    *|cRXP_WARN_Alternatively, you can use this macro;|r
    .link /leavevehicle>> CLICK HERE FOR MACRO.
step
    .goto 120,56.13,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .accept 54641 >>Accept For Gnomeregan!
    .target Cog Captain Winklespring
step
    .goto 120,39.43,26.88
    >>Enter the Halls of Stone Dungeon  Portal.
    .complete 54641,1 --1/1 Enter the Halls of Stone
step
    #completewith next
    .goto 1375,44.43,36.29,20,0
    .goto 1375,48.84,28.47,20,0
    .goto 1375,50,11.5,20,0
    +Kill |cRXP_ENEMY_Smasher X900.|r
step
    .goto 1375,50.11,12.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cog Captain Winklespring|r
    .turnin 54641 >>Turn in For Gnomeregan!
    .target Cog Captain Winklespring
    .accept 54642 >>Accept G.E.A.R. Up
step
    #completewith next
    .zone 469 >>Go to Dun Morogh
step
    .goto 469,41.78,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r
    .turnin 54642 >>Turn in G.E.A.R. Up
    .target Captain Tread Sparknozzle
]])

--Draenei
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name be) Draenei Heritage Armor
#displayname |cFF1EFF005|r - Draenei
#next bf) Worgen Heritage Armor

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 13,43.79,71.79
    .accept 78068 >>Accept An Artificer's Appeal
step
    #completewith next
    .cast 426620 >>Use |T1686574:0|t[Spare Hologem]
    .use 210454
step
    .goto 103,54.78,79.84
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 78068,2 --1/1 Meet Romuul in the Exodar
step
    .goto 103,54.78,79.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .turnin 78068 >>Turn in An Artificer's Appeal
    .target Grand Artificer Romuul
    .accept 78069 >>Accept Reviving Tradition
step
    .goto 103,58.05,79.79
    >>Click on the |cRXP_PICK_Chest|r
    .complete 78069,1 --1/1 Empyrium Filament
step
    .goto 103,51.26,74.67
    >>Click on the |cRXP_PICK_Chest|r
    .complete 78069,2 --1/1 Hyperthermal Soldering Tool
step
    .goto 103,54.78,79.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .complete 78069,3 --1/1 Materials brought to Romuul
    .skipgossip 210340,1
    .target Grand Artificer Romuul
step
    .isOnQuest 78069
    .cast 3365>>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
    .goto 103,55.55,78.78
step
    .isOnQuest 78069
    .cast 3365>>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
    .goto 103,54.72,78.81
step
    .isOnQuest 78069
    .cast 3365>>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
    .goto 103,54.32,81.45
step
    .isOnQuest 78069
    .cast 3365>>Click on the |cRXP_PICK_Arcanite Pillar|r
    .target Arkonite Generator
    .goto 103,53.97,80.18
step
    #label EndIncludePrepGuide
    .goto 103,53.82,78.96
    >>Click on the |cRXP_PICK_Arkonite Generator|r in the middle.
    .complete 78069,4 --2/2 Arkonite Array connected
step
    .goto 103,54.78,79.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Artificer Romuul|r
    .turnin 78069 >>Turn in Reviving Tradition
    .target Grand Artificer Romuul
    .accept 78070 >>Accept Pressing Deadlines
step
    #completewith next
    .cast 426620 >>Use |T1686574:0|t[Spare Hologem]
    .use 210454
step
    .goto 111,38.96,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ataanya|r
    .complete 78070,2 --1/1 Speak to Ataanya
    .timer 15,RP
    .skipgossip 208494,1
    .target Ataanya
step
    .goto 111,37.95,46.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beruun|r
    .complete 78071,1 --1/1 Speak to Beruun
    .skipgossip 208496,1
    .target Beruun
step
    .goto 111,38.74,47.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Artificer Ataanya|r
    .accept 78071 >>Accept Rush Order
    .target High Artificer Ataanya
step
    .goto 108,40.51,25.07
    #title |cFFFCDC00Follow the Arrow|r
    .complete 78071,2 --1/1 Draenite miners located
step
    #loop
    .goto 108,40.63,25.2,3,0
    .goto 108,40.69,25.31,3,0
    .goto 108,40.57,25.36,3,0
    >>Click on the |cRXP_PICK_Crates|r
    .complete 78071,3 --3/3 Draenite Crates loaded
step
    .goto 108,40.64,25.1
    >>Click on the |cRXP_PICK_Fragments|r
    .complete 78071,4 --1/1 Draenite Fragments gathered
step
    .goto 111,76.12,47.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crystalsmith Laharu|r
    .complete 78071,5 --1/1 Draenite delivered to crystalsmiths
    .skipgossip
    .target Crystalsmith Laharu
step
    .goto 111,38.94,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Artificer Ataanya|r
    .complete 78071,7 --1/1 Work orders brought to Ataanya
    .skipgossip
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
    .skipgossip 210575,1,1
    .timer 13,RP
    .target Soultender Nemuraan
    .target the Auchenai soulpriests
step
    .goto 108,38.18,69.71
    >>Use your |cRXP_WARN_[ExtraActionButton]|r in the yellow circle.
    .complete 78073,2 --1/1 Commune with Exarch Larohir
step
    #loop
    .goto 108,38.71,70.01,8,0
    .goto 108,38.17,70.17,8,0
    .goto 108,38.25,69.61,8,0
    >>Interact with |cRXP_FRIENDLY_Shattrath Victims.|r
    .complete 78073,3 --8/8 Shattrath Victims returned to rest
    .target Shattrath Victim
step
    .goto 108,38.10,69.65
    >>Click on the |cRXP_PICK_Ashes|r
    .complete 78073,4 --1/1 Exarch Larohir calmed
step
    .goto 108,42.35,67.79
    >>Use your |cRXP_WARN_[ExtraActionButton]|r in the yellow circle.
    .complete 78073,5 --1/1 Commune with Exarch Kelios
step
    #loop
    .goto 108,42.26,67.86,5,0
    .goto 108,42.65,68.12,5,0
    >>Once you light a candle, it will eventually go out. The trick is to relight the candles as soon as one goes out, but only after finishing your current cast. This way, all the candles will remain lit simultaneously.
    .complete 78073,6 --1/1 Light all Karabor Prayer Candles at once
step
    .goto 108,42.34,67.92
    >>Click on the |cRXP_PICK_Ashes|r
    .complete 78073,7 --1/1 Exarch Kelios calmed
step
    .goto 108,41.53,61.88
    >>Use your |cRXP_WARN_[ExtraActionButton]|r in the yellow circle.
    .complete 78073,8 --1/1 Commune with Restalaan
step
    .goto 108,41.53,61.88
    .complete 78073,8 --1/1 Commune with Restalaan
    >>Kill |cRXP_ENEMY_Memories of Death|r
    .complete 78073,9 --2/2 Memories of Death slain
    .mob Memories of Death
step
    .goto 108,41.46,61.81
    >>Click on the |cRXP_PICK_Ashes|r
    .complete 78073,10 --1/1 Restalaan calmed
step
    .goto 108,37.09,62.88
    >>Click on the |cRXP_PICK_Ashes|r
    .complete 78074,2 --1/1 Request spoken to Hataaru's Ashes
step
    .goto 108,36.84,62.67
    >>Click on the |cRXP_PICK_Chest|r
    .complete 78074,3 --1/1 Exarch Hataaru's Artificing Lens
step
    .goto 111,39.06,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ High Artificer Ataanya|r
    .complete 78074,4 --1/1 Lens taken to Ataanya in Shattrath
    .timer 35,RP
    .skipgossip 210569,1
    .target High Artificer Ataanya
step
    #completewith next
    .cast 426620 >>Use |T1686574:0|t[Spare Hologem]
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
    >>Interact with the |cRXP_FRIENDLY_Argussian Mana Ray.|r
    .complete 78076,1 --1/1 Argussian Mana Ray mounted
    .timer 90,RP
    .target Argussian Mana Ray
step
    .goto 106,52.17,74.11
    >>wait until the objective completes.
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
    #hidewindow
    #completewith Pitted Bones
    #loop
    +1
    .goto 106,57.35,67.53,40,0
    .goto 106,54.84,68.3,40,0
    .goto 106,52.39,68.94,40,0
    .goto 106,49.79,72.78,40,0
    .goto 106,49.77,77.47,40,0
    .goto 106,52.67,80.43,40,0
step
    #completewith next
    >>Kill |cRXP_ENEMY_Infected Nightsaber|r and |cRXP_ENEMY_Corrupted Grizzly|r. Loot them for [|cRXP_LOOT_itted Bones.|r]
    .complete 78077,1 --8/8 Pitted Bones
    .mob Infected Nightsaber
    .mob Corrupted Grizzly
step
    >>Click on the |cRXP_PICK_Totems|r
    .complete 78078,1 --6/6 Satyr Totem
    .goto 106,55.53,74.1
step
    #label Pitted Bones
    .goto 106,54.08,74.12
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
    >>Click on the |cRXP_PICK_Evidence|r
    .complete 78079,2,1 --3/3 Man'ari evidence found
step
    .goto 106,35.72,80.89
    >>Click on the |cRXP_PICK_Evidence|r
    .complete 78079,2,2 --3/3 Man'ari evidence found
step
    .goto 106,36.53,71.94
    >>Click on the |cRXP_PICK_Evidence|r
    .complete 78079,2,3 --3/3 Man'ari evidence found
step
    .goto 106,39.47,67.78,20,0
    .goto 106,42.27,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 78079 >>Turn in Excision
    .target Prophet Velen
step
    .goto 106,42.22,36.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arzaal|r
    .accept 78080 >>Accept At the Source
    .timer 40,RP
    .target Arzaal
step
    .goto 106,41.47,33.07
    #title |cFFFCDC00Follow the Arrow|r
    .complete 78080,1 --1/1 Source of fel revealed
step
    .goto 106,41.47,33.07
    .cast 428008 >>Use your |cRXP_WARN_[ExtraActionButton]|r
    .timer 20,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velen|r
    .complete 78080,3 --1/1 Speak to Velen
    .skipgossip 210605,1
    .target Velen
step
    .goto 106,41.84,32.20
    >>Defend |cRXP_FRIENDLY_Velen|r the crew.
    *|cFFFF0000After completing the objective, you can skip the cutscene by pressing 'Escape' and accepting the prompt.|r
    .complete 78080,4 --1/1 Generator defended
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
    #completewith next
    .cast 426620 >>Use |T1686574:0|t[Spare Hologem]
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
    .skipgossip
    .target Grand Artificer Romuul
step
    .goto 103,55.62,78.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Artificer Ataanya|r
    .complete 78082,1,2 --10/10 Memory Stones collected
    .skipgossip
    .target High Artificer Ataanya
step
    .goto 103,57.32,92.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .complete 78082,1,3 --10/10 Memory Stones collected
    .skipgossip
    .target Vindicator Boros
step
    .goto 103,57.18,93.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arzaal|r
    .complete 78082,1,4 --10/10 Memory Stones collected
    .skipgossip
    .target Arzaal
step
    .goto 103,47.73,81.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Ishanah|r
    .complete 78082,1,5 --10/10 Memory Stones collected
    .skipgossip
    .target High Priestess Ishanah
step
    .goto 103,53.74,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Hatuun|r
    .complete 78082,1,6 --10/10 Memory Stones collected
    .skipgossip 210671,1
    .target Chieftain Hatuun
step
    .goto 103,53.86,83.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .complete 78082,1,7 --10/10 Memory Stones collected
    .skipgossip
    .target Prophet Velen
step
    .goto 103,57.18,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Naielle|r
    .complete 78082,1,8 --10/10 Memory Stones collected
    .skipgossip
    .target Exarch Naielle
step
    .goto 103,68.34,80.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .complete 78082,1,9 --10/10 Memory Stones collected
    .skipgossip 212343,1
    .target Farseer Nobundo
step
    .goto 103,67.88,85.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .complete 78082,1,10 --10/10 Memory Stones collected
    .skipgossip 212349,1
    .target Akama
step
    .goto 103,64.39,87.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Anchorite Almonen|r
    .complete 78082,2 --1/1 Personal Memory Stone created
    .skipgossip 212387,1,1
    .target Grand Anchorite Almonen
step
    .goto 103,65.15,87.66
    >>Use your |cRXP_WARN_[ExtraActionButton]|r
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
    .skipgossip 212402,1
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
#group RestedXP Collectables
#subgroup Allied Races
#name bf) Worgen Heritage Armor
#displayname  |cFF1EFF006|r - Worgen
#next bg) Void Elf

<< Alliance

step
    #label StartIncludePrepGuide
    .goto 84,54.81,18.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Claridge|r
    .accept 54976 >>Accept The Shadow of Gilneas
    .target Courier Claridge
step
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
    #loop
    .goto 47,18.29,57.21,2,0
    .goto 47,18.09,57.23,2,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .turnin 54977 >>Turn in Into Duskwood
    .target Vassandra Stormclaw
    .accept 54980 >>Accept Bane of the Nightbane
step
    .goto 47,52.01,61.63
    >>Click on the |cRXP_PICK_Pungent Meat|r
    .complete 54980,1 --1/1 Pungent Meat placed (Optional)
step
    .goto 47,52.01,61.63
    >>Kill |cRXP_ENEMY_Bloodeyes|r
    *|cRXP_WARN_Use the|r [ExtraActionButton] when it's available.
    .complete 54980,2 --1/1 Bloodeyes subdued
    .mob Bloodeyes
step
    .goto 47,18.10,57.23
    #title |cFFFCDC00Follow the Arrow|r
    .complete 54980,3 --1/1 Bloodeyes brought to Raven Hill
step
    #loop
    .goto 47,18.29,57.21,2,0
    .goto 47,18.09,57.23,2,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .turnin 54980 >>Turn in Bane of the Nightbane
    .target Vassandra Stormclaw
    .accept 54981 >>Accept Cry to the Moon
    .accept 54982 >>Accept The Spirit of the Hunter
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mistfang Alpha.|r Loot them for [|cRXP_LOOT_Bloodstained Fangs.|r]
    .complete 54982,1 --6/6 Bloodstained Fangs
    .mob Mistfang Alpha
step
    .goto 47,82.36,33.95
    >>Click on |cRXP_PICK_Elune's Grace|r
    .complete 54981,1 --1/1 Elune's Grace
step
    #label EndIncludePrepGuide
    #loop
    .goto 47,77.27,35.49,15,0
    .goto 47,77.3,30.53,15,0
    .goto 47,81.7,33.46,15,0
    >>Kill |cRXP_ENEMY_Mistfang Alpha.|r Loot them for [|cRXP_LOOT_Bloodstained Fangs.|r]
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
    .timer 56,RP
    .skipgossip
    .target Vassandra Stormclaw
step
    .goto 47,46.60,36.98
    >>Kill |cRXP_ENEMY_Spirit of Fury|r
    .complete 54983,2 --1/1 Defend Vassandra during the ritual
    .mob Spirit of Fury
step
    .goto 47,46.58,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goldrinn|r
    .turnin 54983 >>Turn in Waking a Dreamer
    .target Goldrinn
    .accept 54984 >>Accept Let Sleeping Wolves Lie
step
    #completewith scenario
    .goto 47,46.58,35.81,10 >>Enter the Portal.
step
    .isOnQuest 54984
    .goto 1577,65.91,20.95
    .cast 295507 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r |cRXP_WARN_while dismounted.|r
    *|cRXP_WARN_You might have to do a /reload to see the arrow again.|r
    .timer 23,RP
    .skipgossip 150851,2
    .target Princess Tess Greymane
step
    .isOnQuest 54984
    .goto 1577,65.24,21.1
    >>Wait until the objective completes.
    .scenario 4186,1 --Wake Tess
step
    .isOnQuest 54984
    #loop
    .goto 1577,60.87,27.63,20,0
    .goto 1577,57.23,26.71,20,0
    .goto 1577,60.08,33.58,20,0
    .goto 1577,58.63,40.39,20,0
    >>Kill |cRXP_ENEMY_Forsakens|r and click on |cRXP_PICK_Plaguethrowers|r
    .scenario 4187,1 --Fight back the Forsaken
    .mob Plague Thrower
    .mob Phantasmal Stalker
    .mob Lumbering Nightmare
step
    .isOnQuest 54984
    .goto 1577,60.07,40.7
    >>Kill |cRXP_ENEMY_Dark Ranger Thyala|r |cRXP_WARN_be careful of the ghastly horses.|r
    .scenario 4188,1
    .mob Dark Ranger Thyala
-- step
--     .isOnQuest 54984
--     .goto 1577,60.07,40.7
--     >>Kill |cRXP_ENEMY_Dark Ranger Thyala|r |cRXP_WARN_be careful of the ghastly horses.|r
--     .scenario 4189,1
--     .mob Dark Ranger Thyala
step
    .isOnQuest 54984
    .goto 1577,68.93,44.58,15,0
    .goto 1577,68.74,44.68,15,0
    .goto 1577,70.31,55.25,15,0
    .goto 1577,66.03,63.33,15,0
    .goto 1577,66.03,63.33,10 >>Follow the Arrow
    .timer 15,RP
step
    .isOnQuest 54984
    .goto 1577,66.03,63.33
    .countdown 30 >>Wait for Nathanos to Spawn and defeat him
step
    .isOnQuest 54984
    .goto 1577,66.99,79.31
    >>Follow the Arrow and Kill |cRXP_ENEMY_Phantasmal Stalker|r
    .scenario 4189,1
    .mob Phantasmal Stalker
step
    .isOnQuest 54984
    .goto 1577,58.59,68.1
    >>Kill |cRXP_ENEMY_Nathanos|r
    .scenario 4190,1
    .mob Nathanos
step
    .isOnQuest 54984
    .goto 1577,60.91,71.3,10,0
    .goto 1577,61.35,81.86,10,0
    .goto 1577,40.72,81.89,10,0
    .goto 1577,41.32,76,10,0
    .goto 1577,36.79,62.62,10 >>Follow the Arrow
    .timer 60,RP
step
    #label scenario
    .isOnQuest 54984
    .goto 1577,33.95,66.3
    >>Kill |cRXP_ENEMY_Essence of Rage|r
    .complete 54984,1 --Guide Tess through the Emerald Dream
    .mob Essence of Rage
step
    .isOnQuest 54984
    .goto 1577,33.65,67.84
    .zone 47 >>Click on the Portal
step
    .goto 47,46.34,37.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r
    .turnin 54984 >>Turn in Let Sleeping Wolves Lie
    .target Princess Tess Greymane
    .accept 54990 >>Accept The New Guard
step
    .goto 84,82.50,28.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tess at Stormwind Keep|r
    .complete 54990,1 --1/1 Speak with Tess at Stormwind Keep
    .timer 15,RP
    .skipgossip 155313,1
    .target Tess at Stormwind Keep
step
    .goto 84,82.51,27.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r
    .turnin 54990 >>Turn in The New Guard
    .target Princess Tess Greymane
]])

--Void Elf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bg) Void Elf
#displayname |cFF1EFF007|r - Void Elf
#next bh) Lightforged Draenei

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
#group RestedXP Collectables
#subgroup Allied Races
#name bh) Lightforged Draenei
#displayname |cFF1EFF008|r - Lightforged Draeanei
#next bi) Dark Iron Dwarf

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
#group RestedXP Collectables
#subgroup Allied Races
#name bi) Dark Iron Dwarf
#displayname |cFF1EFF009|r - Dark Iron Dwarf
#next bj) Kul Tiran

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
#group RestedXP Collectables
#subgroup Allied Races
#name bj) Kul Tiran
#displayname |cFF1EFF0010|r - Kul Tiran
#next bk) Mechagnome

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
#group RestedXP Collectables
#subgroup Allied Races
#name bk) Mechagnome
#displayname |cFF1EFF0011|r - Mechagnome
#next bl) Heritage EarthenDwarf

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

-----------------------------------------------------
--- HORDE
-----------------------------------------------------

--Orc
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name b) Orc Heritage Armor
#displayname |cFF1EFF001|r - Orc
#next ba) Undead Heritage Armor

<< Horde

step
    #label StartIncludePrepGuide
    #completewith next
    .goto 85,50.01,75.88,10,0 >> Enter Gromash Hold
step
    .goto 85,50.1,74.48,5,0
    .goto 85,49.26,73.73,6,0
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
    >>Click on the |cRXP_PICK_Portal.|r
    .complete 72462,1 --1/1 Portal to Alterac Valley taken
    .timer 100,RP
step
    #completewith next
    .isOnQuest 72462
    >>Wait for |cRXP_FRIENDLY_Eitrigg|r to arrive.
    .scenario 5388,1
    .target Eitrigg
step
    .isOnQuest 72462
    .goto 2162,48.83,83.96,15,0
    .goto 2162,48.73,86.09,15,0
    .goto 2162,47.8,86.44,15,0
    .goto 2162,47.51,86.19,15,0
    .goto 2162,47.11,86.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .scenario 5388,2
    .skipgossip
    .target Eitrigg
step
    .isOnQuest 72462
    .goto 2162,47.1,86.58
    >>Wait for |cRXP_FRIENDLY_Farseer Drek'Thar|r to arrive.
    .scenario 5388,1
    .target Farseer Drek'Thar
step
    .isOnQuest 72462
    .goto 2162,47.1,86.58
    >>Click on the |cRXP_PICK_Totem of Air|r
    .scenario 5389,2,1
    .target Totem of Air
step
    .isOnQuest 72462
    .goto 2162,47.31,86.35
    >>Click on the |cRXP_PICK_Totem of Water|r
    .scenario 5389,2,2
    .target Totem of Water
step
    .isOnQuest 72462
    .goto 2162,47.52,87.32
    >>Click on the |cRXP_PICK_Totem of Fire|r
    .scenario 5389,2,3
    .target Totem of Fire
step
    .isOnQuest 72462
    .goto 2162,47.26,87.3
    >>Click on the |cRXP_PICK_Totem of Earth|r
    .scenario 5389,2,4
    .target Totem of Earth
step
    .isOnQuest 72462
    .goto 2162,47.11,86.98
    >>Wait until the objective completes.
    .scenario 5389,1
step
    .isOnQuest 72462
    .goto 2162,47.11,86.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Drek'Thar|r
    .scenario 5390,1,1
    .timer 20,RP
    .skipgossip
    .target Farseer Drek'Thar
step
    .isOnQuest 72462
    .goto 2162,47.41,86.84
    >>Kill |cRXP_ENEMY_Duros|r and |cRXP_ENEMY_Drakan|r
    .timer 20,RP
    .scenario 5390,2
    .scenario 5390,3
    .mob Duros
    .mob Drakan
step
    .isOnQuest 72462
    .goto 2162,47.1,86.58,10,0
    .goto 2162,47.31,86.35,10,0
    .goto 2162,47.52,87.32,10,0
    .goto 2162,47.26,87.3,10,0
    .goto 2162,47.41,86.84
    >>Kill the |cRXP_ENEMY_Totems|r and then the |cRXP_ENEMY_Elemental Projection.|r
    .scenario 5396,1
    .mob Elemental Projection
step
    .goto 2162,47.42,86.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r and use |T413582:0|t[Thrall's Hearthstone]
    .scenario 5422,1
    .skipgossip
    .target Thrall
step
    .goto 85,54.37,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .complete 72462,2 --1/1 Complete Scenario "The Future of Our People"
    .target Aggra
step
    .goto 85,54.31,78.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .turnin 72462 >>Turn in A People in Need of Healing
    .target Aggra
    .accept 72464 >>Accept The Kosh'harg
step
    .goto 85,53.2,78.96,10,0
    .goto 1,52.21,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan to begin the Om'gora|r
    .complete 72464,2 --1/1 Talk to Farseer Aggralan to begin the Om'gora
    .skipgossip 199148,2
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thega Graveblade|r and accept the prompt.
    *|cRXP_WARN_The clan can be changed at a later time if you want.|r
    .complete 72467,1 --1/1 Clan Chosen
    .skipgossip 199151,1
    .target Thega Graveblade
step
    .goto 1,52.11,42.86
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
    >>Click on the |cRXP_PICK_Old Cookbook|r
    .complete 74374,1 --1/1 Old Cookbook Collected
step
    .goto 1,51.83,41.97,10,0
    .goto 1,51.67,42.36,10,0
    .goto 1,50.75,42.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Torka|r
    .turnin 74374 >>Turn in An Important Heirloom
    .target Cook Torka
    .accept 72477 >>Accept Orcish Groceries
step
    .goto 1,50.78,42.72
    >>Click on the |cRXP_PICK_Spoons and Forks.|r
    .complete 72477,1 --1/1 "Spoons and Forks" Read
step
    .goto 1,50.72,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nula the Butcher|r
    .complete 72477,10 --3/3 Fresh Talbuk Steak
    .skipgossip
    .buy 202027,3
    .target Nula the Butcher
step
    .goto 1,51.10,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suja|r
    .skipgossip
    .buy 202029,3
    .buy 202707,2
    .buy 204793,3
    .complete 72477,6 --3/3 Isle Lemon
    .complete 72477,7 --3/3 Suja's Sweet Salt
    .complete 72477,4 --2/2 Un'goro Coconut
    .target Suja
step
    #completewith next
    .goto 1,51.39,44.19
    .cast 6478 >>Click on the |cRXP_PICK_Crate|r
step
    #loop
    .goto 1,51.38,44.18,15,0
    .goto 1,51.08,43.86,15,0
    .goto 1,51.34,43.44,15,0
    >>Click on the |cRXP_PICK_Escaped Crabs|r
    .complete 72477,2 --2/2 Durotar Coast Crab
    .target Escaped Crab
step
    .goto 1,51.58,43.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgar|r
    .complete 72477,5 --3/3 Southfury Salmon
    .skipgossip
    .buy 202028,5
    .target Razgar
step
    .goto 1,51.30,42.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyl'kahn|r
    .complete 72477,11 --1/1 Keg of Ancestral Ale
    .skipgossip
    .target Kyl'kahn
step
    .goto 1,50.84,41.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far'kul Flametongue|r
    .buy 202706,3
    .buy 202030,3
    .buy 202031,2
    .complete 72477,9 --3/3 Zandali Piri Piri
    .complete 72477,8 --3/3 Ground Gorgrond Pepper
    .complete 72477,3 --2/2 Farahlon Fenugreek
    .skipgossip
    .target Far'kul Flametongue
step
    .goto 1,50.79,42.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r |cRXP_WARN_next to you.|r
    .turnin 72477 >>Turn in Orcish Groceries
    .target Durak
    .accept 74415 >>Accept A Worthy Offering
step
    .goto 1,40.80,26.88
    >>Click on the |cRXP_PICK_Ancient Skeleton|r
    .complete 72465,1 --1/1 Find the Spirit of Thunder Ridge
step
    .goto 1,40.59,26.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Spirit of Thunder Ridge|r
    .turnin 72465 >>Turn in The Blessing of the Land
    .target The Spirit of Thunder Ridge
    .accept 72466 >>Accept The Spirit of Thunder Ridge
step
    .goto 1,40.31,27.69
    >>Click on the |cRXP_PICK_Ancient Seed|r
    *|cRXP_WARN_Kill spawning |cRXP_ENEMY_Mud Elemental|r|r
    .complete 72466,1 --8/8 Ancient Seed
    .mob Mud Elemental
step
    #loop
    .goto 1,40.43,28.72,20,0
    .goto 1,40.34,29.63,20,0
    .goto 1,40.93,30.03,20,0
    .goto 1,40.83,30.73,20,0
    .goto 1,39.11,28.19,20,0
    .goto 1,38.92,27.84,20,0
    .goto 1,38.87,26.99,20,0
    >>Click on the |cRXP_PICK_Ancient Seed|r
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
    >>Click on |cRXP_PICK_The Spirit of Thunder Ridge.|r
    .complete 72466,3 --1/1 Seeds Planted in Ancient Skeleton
    .target The Spirit of Thunder Ridge
step
    .goto 1,52.21,42.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Aggralan|r
    .turnin 72466 >>Turn in The Spirit of Thunder Ridge
    .target Farseer Aggralan
step
    .goto 1,50.79,42.69
    >>Open the Professions Book and select Cooking; cook the following
    .complete 74415,3 --2/2 Curried Coconut Crab Cooked
    .complete 74415,1 --3/3 Grilled Southfury Salmon Cooked
    .complete 74415,2 --3/3 Seared Spicy Talbuk Steak Cooked
step
    .goto 1,50.79,42.69
    >>Cook |T2066013:0|t[Feast for the Ancestors]
    .complete 74415,4 --1/1 Feast for the Ancestors Cooked
step
    .goto 1,53.13,45.76
    >>Click on |cRXP_PICK_Feast for the Ancestors.|r
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
    .skipgossip
    .target Karranisha
step
    >>Vollow the arrow and wait near the |cRXP_FRIENDLY_Dead Peon|r
    .complete 72474,1,2 --5/5 Clues found
    .skipgossip
    .goto 461,46.01,63.39
    .target Dead Peon
step
    .goto 461,49.98,59.98
    >>Click on |cRXP_PICK_Bag of Cactus Apples|r
    .accept 72463 >>Accept Galgar's Cactus Apple Surprise...
    .target Bag of Cactus Apples
step
    .goto 461,49.98,59.98
    >>Click on |cRXP_PICK_Bag of Cactus Apples|r
    .complete 72463,1 --1/1 Bag of Cactus Apples
    .complete 72474,1,3 --5/5 Clues found
step
    .goto 461,54.25,62.52
    >>Click on |cRXP_PICK_Beast Tracks|r
    .complete 72474,1,4 --5/5 Clues found
    .skipgossip
step
    .goto 461,52.42,68.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrified Peon|r
    .complete 72474,1,5 --5/5 Clues found
    .skipgossip
    .target Terrified Peon
step
    .goto 461,45.13,68.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .turnin 72474 >>Turn in Tracking a Killer
    .target Kaltunk
    .accept 72475 >>Accept Cornering Gor'krosh
-- step
--     .goto 461,42.94,62.42
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
--     .turnin 72463 >>Turn in Galgar's Cactus Apple Surprise...
--     .target Galgar
step
    .goto 1,59.28,63.38
    #title |cFFFCDC00Follow the Arrow|r
    .complete 72475,1 --Trail Followed
step
    #completewith next
    .goto 1,59.28,63.38
    .cast 384743 >>Click on |cRXP_PICK_Raptor Nest|r
    .timer 5,RP
step
    .goto 1,59.15,63.43
    >>Kill |cRXP_ENEMY_Gor'krosh.|r Loot them for [|cRXP_LOOT_Long Knife|r]
    .complete 72475,2 --1/1 Gor'krosh slain
    .complete 72475,4 --1/1 "Long Knife" Collected
    .mob Gor'krosh
step
    #label EndIncludePrepGuide
    .goto 1,59.14,63.51
    >>Click on |cRXP_PICK_Raptor Blood|r
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
    #completewith Boss Magor
    >>Click on all the |cRXP_PICK_Food.|r Kill |cRXP_ENEMY_Rowdy Warlock|r and |cRXP_ENEMY_Rowdy Grunt.|r
    .complete 72478,1 --Enjoy the Feast! (100%)
    .mob Rowdy Warlock
    .mob Rowdy Grunt
step
    #completewith Boss Magor
    .goto 1,52.48,40.95
    .gossipoption 108372 >>Talk to |cRXP_FRIENDLY_Boss Magor|r
    .timer 10,RP
    .target Boss Magor
step
    #label Boss Magor
    .goto 1,52.06,42.15
    >>Kill |cRXP_ENEMY_Boss Magor.|r Pickup a |cRXP_PICK_Booterang|r and use your |cRXP_WARN_ExtraActionButton|r when he casts |cRXP_WARN_Bootstorm.|r
    .complete 72478,2 --1/1 Brawl with Boss Magor and the Peons
    .mob Boss Magor
    .target Boss Magor
step
    #loop
    .goto 1,52.2,42.31,30,0
    .goto 1,52.5,41.5,30,0
    .goto 1,52.95,42.85,30,0
    .goto 1,52.33,43.32,30,0
    >>Click on all the |cRXP_PICK_Food.|r Kill |cRXP_ENEMY_Rowdy Warlock|r and |cRXP_ENEMY_Rowdy Grunt.|r
    .complete 72478,1 --Enjoy the Feast! (100%)
    .mob Rowdy Warlock
    .mob Rowdy Grunt
step
    .goto 1,52.25,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 72478 >>Turn in Honor and Glory
    .target Thrall
    .accept 72479 >>Accept Aka'magosh
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
#group RestedXP Collectables
#subgroup Allied Races
#name ba) Undead Heritage Armor
#displayname |cFF1EFF002|r - Undead
#next bc) Tauren Heritage Armor

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
    .skipgossip
    .target Forsaken Dreadmage
step
    .goto 2070,60.83,51.98,10,0
    .goto 2070,60.80,51.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .turnin 65656 >>Turn in Call to Lordaeron
    .target Calia Menethil
    .accept 65657 >>Accept Assemble the Forsaken
step
    .goto 2070,61.97,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .accept 65658 >>Accept This Land is Ours
    .complete 65657,1 --1/1 Speak to Dark Ranger Velonara
    .skipgossip
    .target Dark Ranger Velonara
step
    .goto 2070,63.47,49.21
    >>Kill |cRXP_ENEMY_Blighted Soldiers and Shadowmages|r
    .complete 65658,1 --8/8 Blighted Soldiers and Shadowmages slain
    .mob Blighted Soldiers
    .mob Blighted Shadowmages
step
    .goto 2070,63.23,55.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .complete 65657,3 --1/1 Speak to Master Apothecary Faranell
    .skipgossip 185794,1
    .target Master Apothecary Faranell
step
    .goto 2070,57.57,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .complete 65657,2 --1/1 Speak to Lilian Voss
    .target Lilian Voss
    .skipgossip 185793,1
step
    .goto 2070,60.84,51.96,10,0
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
    #completewith next
    .gossipoption 54673 >>Talk to |cRXP_FRIENDLY_Lilian Voss|r
    .timer 50,RP
    .target Lilian Voss
step
    .goto 2070,60.79,51.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia|r
    .complete 65659,3 --1/1 Speak to Calia
    .skipgossip 185512,1
    .target Calia
step
    .goto 2070,61.97,55.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .turnin 65659 >>Turn in The Blight Congress
    .target Calia Menethil
    .accept 65660 >>Accept Walk of Faith
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia|r
    .complete 65660,1 --1/1 Speak to Calia to Begin
    .skipgossip
    .target Calia
step
    >>Defend |cRXP_FRIENDLY_Calia Menethil.|r Use your |cRXP_WARN_[ExtraActionButton]|r once it activates
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
    .zone 1536 >> Take the portal to Maldraxxus
step
    .goto 1536,74.76,33.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margrave Sin'dane|r
    .turnin 65661 >>Turn in Consulting Our Allies
    .target Margrave Sin'dane
    .accept 65662 >>Accept House of Plagues
step
    #completewith next
    .goto 1536,73.56,33.4,10,0
    .goto 1536,74.29,33.88,5 >>Take the Portal to the Surface
step
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
    >>Kill |cRXP_ENEMY_Plaguerocs|r, |cRXP_ENEMY_Concentrated Plague|r and |cRXP_ENEMY_Undiluted Plague|r
    .complete 65663,1 --House of Plagues cleared (100%)
    .mob Plagueroc
    .mob Concentrated Plague
    .mob Undiluted Plague
step
    .goto 1536,70.96,74.06
    >>Click on the |cRXP_PICK_Simmering Concoction|r
    .complete 65664,1 --1/1 Simmering Concoction absorbed
step
    .goto 1536,69.66,75.59
    >>Click on the |cRXP_PICK_Unstable Concoction|r
    .complete 65664,2 --1/1 Unstable Concoction absorbed
step
    #label Tumultuous Concoction
    .goto 1536,68.53,79.82
    >>Click on the |cRXP_PICK_Tumultuous Concoction|r
    .complete 65664,3 --1/1 Tumultuous Concoction absorbed
step
    #loop
    .goto 1536,69.66,75.59,40,0
    .goto 1536,70.96,74.06,40,0
    .goto 1536,68.53,79.82,40,0
    >>Kill |cRXP_ENEMY_Plaguerocs|r, |cRXP_ENEMY_Concentrated Plague|r and |cRXP_ENEMY_Undiluted Plague|r
    .complete 65663,1 --House of Plagues cleared (100%)
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
    .cast 368788 >>Use |T413582:0|t[Lilian's Hearthstone]
    .use 191029
step
    .goto 2070,60.83,52.01,10,0
    .goto 2070,65.78,60.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .complete 65666,1 --1/1 Speak to Master Apothecary Faranell
    .skipgossip 185731,1
    .target Master Apothecary Faranell
step
    .goto 2070,65.78,60.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 65666 >>Turn in Return to Brill
    .target Master Apothecary Faranell
step
    .goto 2070,65.84,60.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r
    .accept 65667 >>Accept The Remedy of Lordaeron
    .target Calia Menethil
step
    .goto 2070,65.70,59.81
    >>Interact with a |cRXP_FRIENDLY_Shadowbat|r
    .complete 65667,1 --1/1 Mount Shadowbat
    .target Shadowbat
step
    >>Use (1) and (2) on cooldown and if you are close to the purple arrow then priotize using it on it.
    .complete 65667,2 --Drop Plague Eaters in Ruins of Lordaeron (100%)
step
    .goto 2070,63.28,69.71
    >>Kill |cRXP_ENEMY_Amalgam|r using 3 and 4. 5 to heal
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
    .goto 2070,61.78,67.99
    .complete 65668,1 --1/1 Witness the Formation of the Desolate Council
    Council
step
    .goto 2070,61.79,67.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Menethil|r, |cRXP_FRIENDLY_Dark Ranger Velonara|r and |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 65668 >>Turn in The Desolate Council
    .target +Calia Menethil
    .turnin 66091 >>Turn in Path of the Dark Ranger
    .goto 2070,61.73,67.74
    .target +Dark Ranger Velonara
    .accept 65788 >>Accept A Walk with Ghosts
    .goto 2070,61.86,67.76
    .target Lilian Voss
step
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
    .goto 2070,63.76,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 76530 >>Turn in Unliving Summons
    .target Lilian Voss
    .accept 72854 >>Accept Our Enemies Abound
step
    .goto 2070,61.21,82.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belmont|r
    .complete 72854,1 --1/1 Speak to Belmont
    .skipgossip 199761,1
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
    .skipgossip
    .target Forsaken Dreadmage
step
    .goto 21,42.66,40.84,10,0
    .goto 21,42.68,41.44,10,0
    .goto 21,45.57,42.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Velonara|r
    .turnin 72855 >>Turn in To the Sepulcher
    .target Dark Ranger Velonara
    .accept 72858 >>Accept Acid Beats Paper
step
    .goto 21,45.57,42.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 72856 >>Accept Nothing Like the Classic
    .target Master Apothecary Faranell
    .accept 72857 >>Accept Boom Weed
step
    #completewith Notice to All Undead
    >>Kill |cRXP_ENEMY_Plagued Wolf,|r |cRXP_ENEMY_Sickly Deer|r and |cRXP_ENEMY_Plagued Bear.|r Loot them for [|cRXP_LOOT_Plagued Flesh|r]
    .complete 72856,1 --12/12 Plagued Flesh
    .mob Plagued Wolf
    .mob Sickly Deer
    .mob Plagued Bear
step
    #completewith Notice to All Undead
    >>Click on the |cRXP_PICK_Boom Weed.|r
    .complete 72857,1 --6/6 Boom Weed
step
    .goto 21,46.67,47.08
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,1 --4/4 Notice to All Undead destroyed
step
    .goto 21,45.61,47.37
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,2 --4/4 Notice to All Undead destroyed
step
    .goto 21,46.95,50.23
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,3 --4/4 Notice to All Undead destroyed
step
    #label Notice to All Undead
    .goto 21,48.35,48.83
    >>Use |T132104:0|t[Acid Rifle] infront of the paper.
    .complete 72858,1,4 --4/4 Notice to All Undead destroyed
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
    >>Kill |cRXP_ENEMY_Plagued Wolf,|r |cRXP_ENEMY_Sickly Deer|r and |cRXP_ENEMY_Plagued Bear.|r Loot them for [|cRXP_LOOT_Plagued Flesh|r]
    .complete 72856,1 --12/12 Plagued Flesh
    .mob Plagued Wolf
    .mob Sickly Deer
    .mob Plagued Bear
step
    >>Click on the |cRXP_PICK_Boom Weed.|r
    .complete 72857,1 --6/6 Boom Weed
step
    #label EndIncludePrepGuide
    >>Kill |cRXP_ENEMY_Plagued Wolf,|r |cRXP_ENEMY_Sickly Deer|r and |cRXP_ENEMY_Plagued Bear.|r Loot them for [|cRXP_LOOT_Plagued Flesh|r]
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
    .goto 21,52.75,27.58,10,0
    .goto 21,52.81,28.10
    >>Kill |cRXP_ENEMY_Lieutenant Hawlsey.|r Loot them for [|cRXP_LOOT_Hawlsey's Armor|r]
    .complete 72859,1 --1/1 Steal Lieutenant Hawlsey's Armor
    .mob Lieutenant Hawlsey
step
    #loop
    .goto 21,53.39,25.34,20,0
    .goto 21,51.81,25.12,20,0
    .goto 21,51.88,27.98,20,0
    .goto 21,53.55,27.53,20,0
    >>Kill |cRXP_ENEMY_Scarlet Recruits|r and |cRXP_ENEMY_Scarlet Trainers|r
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
    >>Use your |cRXP_WARN_[ExtraActionButton]|r
    .complete 72861,1 --1/1 Don Scarlet Disguise
step
    .goto 21,45.63,41.90
    >>Click on the |cRXP_PICK_Barrel|r
    .complete 72861,2 --1/1 Pick Up Faranell's Mixture
step
    .goto 21,59.92,34.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Scarlet Boatmaster|r
    .skipgossip 199804,2
    .target the Scarlet Boatmaster
step
    .goto 21,68.82,35.39
    >>Click on the |cRXP_PICK_Barrel|r
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
    >>Click on the |cRXP_PICK_Barrel|r
    .complete 72862,1,2 --3/3 Plant Explosive Plague
step
    .goto 21,78.71,24.43
    >>Kill |cRXP_ENEMY_Scarlet Archmage|r
    .complete 72862,2,3 --6/6 Scarlet Archmage slain
    .mob Scarlet Archmage
step
    .goto 21,76.36,19.97
    >>Click on the |cRXP_PICK_Barrel|r
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
    .skipgossip
    .target Velonara
step
    .goto 21,70.25,18.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Commander Belmont|r
    .turnin 72863 >>Turn in The Flight of the Banshee
    .target Deathstalker Commander Belmont
    .accept 72864 >>Accept Death to the Living
step
    .goto 21,73.76,17.22
    .goto 21,76.57,21.31
    .goto 21,78.23,25.16
    .goto 21,76.59,30.17
    .goto 21,72.12,35.08
    >>Kill |cRXP_ENEMY_Scarlet Crusaders.|r
    .complete 72864,1 --Scarlet Crusade routed (100%)
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r |cRXP_WARN_you might have to wait on |cRXP_FRIENDLY_Lilian Voss|r to spawn.|r
    .turnin 72865 >>Turn in This is the Hour of the Forsaken
    .target Lilian Voss
    .accept 72866 >>Accept Return to Lordaeron
step
    .goto 21,65.59,23.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forsaken Dreadmage|r
    .complete 72866,1 --1/1 Take the portal to Ruins of Lordaeron
    .skipgossip
    .target Forsaken Dreadmage
step
    .goto 2070,61.84,68.62
    >>|cRXP_WARN_Use the|r [ExtraActionButton] inside the blue circle.
    .complete 72867,1 --1/1 Receive the Honor of the Forsaken
step
    .goto 2070,61.83,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 72867 >>Turn in I Am Forsaken
    .target Lilian Voss
]])

--Tauren
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bc) Tauren Heritage Armor
#displayname |cFF1EFF003|r - Tauren
#next bd) Troll Heritage Armor

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
    >>Wait until the objective completes.
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
    >>Click on |cRXP_PICK_Spirit Offering|r
    .complete 54765,1 --1/1 Offering presented
step
    .goto 7,34.00,38.67
    >>Click on |cRXP_PICK_Ceremonial Tauren Garb.|r
    .turnin 54765 >>Turn in Thank Your Guide
    .target Ceremonial Tauren Garb
]])

--Troll
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bd) Troll Heritage Armor
#displayname |cFF1EFF004|r - Troll
#next be) Blood Elf Heritage Armor

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
    >>Click on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,1 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,61.65,64.44
    >>Click on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,2 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,60.65,65.34
    >>Click on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,3 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,60.6,66.2
    >>Click on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
    .complete 77871,1,4 --5/5 Destroy Mueh'zala Offerings
step
    .goto 463,60.62,66.58
    >>Click on |cRXP_PICK_Mueh'zala Offering|r |cRXP_WARN_[1]|r
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
    >>Click on |cRXP_PICK_Altar of the Loa.|r
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
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,1 --8/8 Tribute objects collected
step
    .goto 463,59.93,60.92
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,2 --8/8 Tribute objects collected
step
    .goto 463,60.03,61.07
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,3 --8/8 Tribute objects collected
step
    .goto 463,59.74,62.5,5,0
    .goto 463,60.26,61.61
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,4 --8/8 Tribute objects collected
step
    .goto 463,60.18,62.12
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,5 --8/8 Tribute objects collected
step
    .goto 463,60.87,63.34
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,6 --8/8 Tribute objects collected
step
    .goto 463,60.51,63.45
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,7 --8/8 Tribute objects collected
step
    .goto 463,60.36,63.21
    >>Click on the |cRXP_PICK_Tribute objects|r
    .complete 77874,1,8 --8/8 Tribute objects collected
step
    .goto 463,58.72,65.99
    >>Click on |cRXP_PICK_Jani's Junkpile.|r
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
    >>Click on |cRXP_PICK_Jani's Junkpile.|r
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
    >>Click on |cRXP_PICK_Jani's Junkpile|r
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
    .skipgossip
    .target Shadow Hunter Ty'jin
step
    .goto 50,66.05,40.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .complete 77880,1,2 --3/3 Ask about Lukou
    .skipgossip
    .target Shadow Hunter Ty'jin
step
    .goto 50,63.18,39.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .complete 77880,1,3 --3/3 Ask about Lukou
    .skipgossip
    .target Shadow Hunter Ty'jin
step
    .goto 50,63.48,41.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .complete 77880,2 --1/1 Speak with Rokhan
    .skipgossip 210091,1
    .target Rokhan
step
    .goto 50,65.14,47.69
    >>Follow the Arrow
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
    .skipgossip
step
    .goto 50,70.38,48.96
    >>Wait until the objective completes.
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
    >>Click on the |cRXP_PICK_Altar of Regeneration|r
    .complete 77894,1 --1/1 Repair Destroyed Effigy
    .timer 10,RP
step
    .goto 50,70.78,48.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lukou|r
    .complete 77894,2 --1/1 Calm Lukou
    .timer 9,RP
    .skipgossip
    .target Lukou
step
    .goto 50,70.63,49.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 77894 >>Turn in Heart of Lukou
    .target Rokhan
    .accept 77898 >>Accept Honor and Tribute
step
    .goto 50,70.4,49.58
    >>Click on |cRXP_PICK_Jani's Junkpile|r
    .complete 77898,1 --1/1 Return to Echo Isles using Jani's Junkpile (Optional)
step
    .goto 463,59.07,65.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzadah|r
    .complete 77898,2 --1/1 Speak with Tzadah
    .skipgossip 210086,1
    .target Tzadah
step
    .goto 463,58.64,66.3
    >>Click on |cRXP_PICK_Lukou Offering|r
    .complete 77898,4 --1/1 Lukou Offering placed
step
    .goto 463,58.85,66.28
    >>Click on |cRXP_PICK_Kevo ya Siti Offering|r
    .complete 77898,3 --1/1 Kevo ya Siti Offering placed
step
    .goto 463,58.75,66.28
    >>Click on |cRXP_PICK_Kevo ya Siti Offering|r
    .complete 77898,5 --1/1 Last Offering placed
step
    .goto 463,59.07,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tzadah|r
    .turnin 77898 >>Turn in Honor and Tribute
    .target Witch Doctor Tzadah
    .accept 77899 >>Accept The Rush'kah
step
    .goto 463,59.29,61.88
    >>Click on |cRXP_PICK_Rush'kah Paint|r
    .complete 77899,1 --1/1 Paint mixed
step
    .goto 463,59.2,61.96
    >>Click on |cRXP_PICK_Prepared Wood|r
    .complete 77899,2 --1/1 Prepared Wood
step
    .goto 463,60.13,62.17
    >>Click on |cRXP_PICK_Finished Rush'kah|r
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
    >>Click on the |cRXP_PICK_Ritual Circle|r
    .complete 77902,1,1 --3/3 Ritual Circle removed
step
    .goto 463,48.59,47.55
    >>Click on the |cRXP_PICK_Ritual Circle|r
    .complete 77902,1,2 --3/3 Ritual Circle removed
step
    #label Ritual Circle
    .goto 463,49.55,60.84
    >>Click on the |cRXP_PICK_Ritual Circle|r
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
    >>Click on the |cRXP_PICK_Feather|r
    .complete 77905,1 --1/1 Jani's Blessing
step
    .goto 463,58.55,56.29
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and click the |cRXP_PICK_Totems|r.
    .complete 77905,3,1 --4/4 Tzadah's Empowerment destroyed
    .mob Summoned Visage
step
    .goto 463,54.39,56.53
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and click the |cRXP_PICK_Totems|r.
    .complete 77905,3,2 --4/4 Tzadah's Empowerment destroyed
    .mob Summoned Visage
step
    .goto 463,54.49,47.04
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and click the |cRXP_PICK_Totems|r.
    .complete 77905,3,3 --4/4 Tzadah's Empowerment destroyed
    .mob Summoned Visage
step
    .goto 463,58.48,46.89
    >>Kill |cRXP_ENEMY_Summoned Visage|r on the pillar and click the |cRXP_PICK_Totems|r.
    *|cFFFF0000After completing the objective, you can skip the cutscene by pressing 'Escape' and accepting the prompt.|r
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
    >>Click on |cRXP_PICK_Totem|r
    .complete 77906,1 --1/1 Destroy Mueh'zala's effigy
step
    .goto 463,58.73,66.12
    >>Click on |cRXP_PICK_Loa Offering|r
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
#group RestedXP Collectables
#subgroup Allied Races
#name be) Blood Elf Heritage Armor
#displayname |cFF1EFF005|r - Blood Elf
#next bf) Goblin Heritage Armor

<< Horde

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
    .accept 53882 >>Accept Writing on the Wall
    .target Lor'themar Theron
step
    .goto 95,47.73,84.01
    >>Click on the |cRXP_PICK_Lamp|r
    .complete 53882,1 --1/1 Light the First Flame
step
    .goto 95,37.08,65.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r |cRXP_WARN_which will spawn after awhile next to you.|r
    .turnin 53882 >>Turn in Writing on the Wall
    .target Lor'themar Theron
    .accept 53735 >>Accept The First to Fall
step
    .goto 95,37.08,65.52
    >>Use the |cRXP_WARN_ExtraActionButton|r
    .complete 53735,1 --1/1 Shed light on the first battlefield
step
    .goto 95,36.61,67.25
    >>Kill |cRXP_ENEMY_Undeads|r
    .complete 53735,2 --Fight back the undead (100%)
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
    >>Click on the |cRXP_PICK_Lamp|r
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
    .fly Fairbreeze Village >>Fly to Fairbreeze Village
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Sunwing|r
    .target Skymaster Sunwing
step
    .goto 94,51.21,69.28
    >>Use your [ExtraActionButton] when you are on position.
    .complete 53737,1 --1/1 Light shed at Sylvanas' fall
step
    .goto 94,51.44,69.09
    >>Click on |cRXP_PICK_Silvermoon Ballista|r
    .complete 53737,2 --1/1 Man a Silvermoon Ballista
    .target Silvermoon Ballista
step
    .goto 94,51.41,68.90
    >>Use |T132330:0|t[Throw Glaive](1) on |cRXP_ENEMY_Undead|r
    .complete 53737,3 --50/50 Kill undead
step
    .goto 94,43.96,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r |cRXP_WARN_next to you.|r
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
    >>Click on the |cRXP_PICK_Lamp|r
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
    >>Use your [ExtraActionButton] when you are on position.
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
    #completewith next
    .goto 122,44.38,45.69,5 >> Enter the Sunwell
step
    .isOnQuest 54096
    .goto 973,46.64,23.88
    .scenario 3999,1
    >>Use the |cRXP_WARN_ExtraActionButton|r when on the position.
step
    .isOnQuest 54096
    .goto 973,46.64,23.88
    >>Kill |cRXP_ENEMY_Decrepit Stalker,|r |cRXP_ENEMY_Elven Shambler|r and |cRXP_ENEMY_Nerubis Vanguard.|r
    .scenario 4000,1
    .mob Decrepit Stalker
    .mob Elven Shambler
    .mob Nerubis Vanguard
step
    .isOnQuest 54096
    .goto 973,46.64,23.88
    >>Kill |cRXP_ENEMY_Seer Drannix.|r
    .scenario 4001,1
    .mob Seer Drannix
step
    .isOnQuest 54096
    #completewith next
    .goto 973,50.25,17.25
    .cast 284579 >> Use |T461859:0|t[Light the Way] your |cRXP_WARN_ExtraActionButton|r.
step
    .isOnQuest 54096
    .goto 973,48.33,20.52
    >>Wait until the objective completes.
    .scenario 4002,1
step
    .isOnQuest 54096
    .goto 973,48.33,20.52
    >>Use the |cRXP_WARN_ExtraActionButton|r when on the position.
    .scenario 4039,1
step
    .isOnQuest 54096
    .goto 973,28.35,63.46,20,0
    .goto 973,38.12,83.64,20,0
    .goto 973,47.18,85.34,20,0
    .goto 973,46.16,61.95
    >>Escort |cRXP_FRIENDLY_Kael'thas Sunstrider.|r Kill the incoming |cRXP_ENEMY_attackers.|r
    .scenario 4003,1
    .target Kael'thas Sunstrider
    .mob Risen Defender
    .mob Tormented Magister
step
    .isOnQuest 54096
    .goto 973,47.98,64.75
    >>Kill |cRXP_ENEMY_Necrotic Sentinel|r
    .complete 54096,1 --Complete the Fall of the Sunwell scenario
    .mob Necrotic Sentinel
step
    #completewith next
    .isOnQuest 54096
    .goto 973,55.47,72.13
    .zone 110 >>Take the |cRXP_PICK_portal|r to Silvermoon city
step
    .isOnQuest 54096
    .goto 110,68.64,35.1,10,0
    .goto 110,60.37,28.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r
    .turnin 54096 >>Turn in The Fall of the Sunwell
    .target Lor'themar Theron
]])

--Goblin
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bf) Goblin Heritage Armor
#displayname |cFF1EFF006|r - Goblin
#next bg) Nightborne Heritage Armor

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
    >>Click on |cRXP_PICK_Goblin Flying Machine|r and accept the prompt.
    .complete 57045,1 --1/1 Travel to Crapopolis
    .target Goblin Flying Machine
step
    .isOnQuest 57045
    .goto 1532,53.86,65.37,10 >> Follow the Arrow
    .timer 18,RP
step
    .isOnQuest 57045
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
    >>Wait until the objective completes.
    .complete 57047,1 --1/1 Listen to Hobart Grapplehammer
step
    .goto 1532,53.00,58.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .complete 57047,2 --1/1 Speak with Hobart Grapplehammer
    .skipgossip 156520,1
    .target Hobart Grapplehammer
step
    .isOnQuest 57047
    .goto 1532,52.51,60.29
    .cast 305728 >>Click on |cRXP_PICK_Freezing Console|r
    .timer 24,RP
step
    .goto 1532,53.23,60.13
    >>Wait until the objective completes.
    .complete 57047,3 --1/1 Freezing Console activated
step
    .isOnQuest 57047
    .goto 1532,53.21,60.08
    .cast 305733 >>Click on |cRXP_PICK_Flame Console|r
    .timer 22,RP
step
    .goto 1532,54.00,59.74
    >>Wait until the objective completes.
    .complete 57047,4 --1/1 Flame Console activated
step
    .goto 1532,54.00,59.74
    >>Click on |cRXP_PICK_Flame Console|r
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
    >>Click on the |cRXP_PICK_Test Console|r
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
    >>Click on the |cRXP_PICK_Refreshing coconut beverage.|r
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
    >>Click on |cRXP_PICK_Goblin Flying Machine|r and accept the prompt.
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
    .skipgossip
    .target Marin Noggenfogger
step
    .goto 64,75.93,74.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .complete 57078,2 --1/1 Pozzik invited
    .skipgossip 40028,1
    .target Pozzik
step
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .complete 57078,3 --1/1 Gazlowe invited
    .skipgossip 3391,1
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
    .skipgossip
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
    >>Click on the |cRXP_PICK_Chest|r
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
#group RestedXP Collectables
#subgroup Allied Races
#name bg) Nightborne Heritage Armor
#displayname |cFF1EFF007|r - Nightborne
#next bh) Highmountain Heritage Armor

<< Horde Nightborne

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
#group RestedXP Collectables
#subgroup Allied Races
#name bh) Highmountain Heritage Armor
#displayname |cFF1EFF008|r - Highmountain
#next bi) Mag'har Orc Heritage Armor

<< Horde HighmountainTauren

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
#group RestedXP Collectables
#subgroup Allied Races
#name bi) Mag'har Orc Heritage Armor
#displayname |cFF1EFF009|r - Mag'har Orc
#next bj) Zandalari Troll Heritage Armor

<< Horde MagharOrc

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
#group RestedXP Collectables
#subgroup Allied Races
#name bj) Zandalari Troll Heritage Armor
#displayname |cFF1EFF0010|r - Zandalari Troll
#next bk) Vulpera Heritage Armor

<< Horde ZandalariTroll

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
#group RestedXP Collectables
#subgroup Allied Races
#name bk) Vulpera Heritage Armor
#displayname |cFF1EFF0012|r - Vulpera
#next bm) Heritage EarthenDwarf

<< Horde Vulpera

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

-----------------------------------------------------
--- NEUTRAL
-----------------------------------------------------

--EarthenDwarf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bl) Heritage EarthenDwarf
#displayname |cFF1EFF0012|r - Earthen Dwarf

<< Alliance

step
    +PH2
]])

--EarthenDwarf
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Collectables
#subgroup Allied Races
#name bm) Heritage EarthenDwarf
#displayname |cFF1EFF007|r - Earthen Dwarf

<< Horde

step
    +PH1

]])