RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Allied Race Unlocks
#subgroup Void Elf
#name 4) Void Elf Scenario Questline
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Elf Banner.|r
    .complete 50239,2 --1/1 Learn about the Void Elves
step
    .goto 84,52.34,13.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Kul Tiran Banner.|r
    .complete 50239,4 --1/1 Learn about the Kul Tirans
step
    .goto 84,51.73,13.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mechagnome Banner.|r
    .complete 50239,5 --1/1 Learn about the Mechagnomes
step
    .goto 84,51.78,13.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Dark Iron Dwarf Banner.|r
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Lightforged Draenei Banner.|r
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 50239 >>Turn in A Choice of Allies
    .accept 49787 >>Accept The Ghostlands
    .target Aysa Cloudsinger
step
    .goto 84,52.44,13.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tCick on the |cRXP_PICK_Void Portal.|r
    .complete 49787,1 --1/1 Travel to the Ghostlands
step
    .goto 95,33.87,33.37,5,0
    .goto 95,33.63,34.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Umbric's Notes - Sanctum of the Moon.|r
    .complete 49787,2 --1/1 Umbric's Notes - Sanctum of the Moon
step
    .goto 95,33.7,33.59,5,0
    .goto 95,34,33.19,5,0
    .goto 95,46.88,55.00,5,0
    .goto 95,46.88,54.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Umbric's Notes - Andilien Estate.|r
    .complete 49787,3 --1/1 Umbric's Notes - Andilien Estate
step
    .goto 95,46.69,56.05,5,0
    .goto 95,57.71,51.13,10,0
    .goto 95,65.6,41.78,30,0
    .goto 95,71.04,32.02,5,0
    .goto 95,79.35,16.76,5,0
    .goto 95,79.66,17.52
    .cast 258931 >> Jump to and Click the |cRXP_PICK_Teleportation Console.|r
step
    .goto 95,79.99,19.86,5,0
    .goto 95,79.27,20.21,5,0
    .goto 95,79.66,19.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Umbric's Notes - Dawnstar Spire.|r
    .complete 49787,4 --1/1 Umbric's Notes - Dawnstar Spire
step    
    .goto 95,79.68,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner.|r
    .turnin 49787 >>Turn in The Ghostlands
    .accept 48962 >>Accept Telogrus Rift
    .target Alleria Windrunner
step
    .goto 95,79.64,19.8
    .zone 972 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal.|r
step
    .goto 972,47.84,73.88
    .gossipoption 47941 >>Talk to |cRXP_FRIENDLY_Magister Umbric.|r
    .timer 66,Duration until continuation.
    .target Magister Umbric
step
    .goto 972,48.97,73.02
    .scenario 3675,1 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
step
    .goto 972,37.3,49.23
    .scenario 3490,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal.|r
step
    .goto 972,37.3,49.23
    .scenario 3662,1,100 >>Kill |cRXP_ENEMY_Void Creatures.|r |cRXP_WARN_Don't go near Void Bubbles.|r
    .mob Creeping Void
    .mob Netherguard Phaseblade
    .mob Curious Voidstalker
    .mob Netherguard Transmogrifier
step
    .goto 972,37.3,49.23
    .scenario 3673,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal.|r
step
    .goto 972,37.3,49.23
    .scenario 3495,1,100 >>Kill |cRXP_ENEMY_Void Creatures.|r |cRXP_WARN_Don't go near Void Bubbles.|r
    .mob Dark Manifestation
    .mob Curious Voidstalker
step
    .goto 972,28.96,40.21
    .scenario 3496,1 >>Kill |cRXP_ENEMY_Nhr'ghesh.|r
    .mob Nhr'ghesh
step
    .goto 972,28.89,38.2
    .scenario 3520,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal.|r
step
    .goto 972,29.02,27.72,5,0
    .goto 972,28.5,21.7,5,0
    .goto 972,26.23,24.46
    .scenario 3674,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidforges.|r
step
    .goto 972,27.78,24.1
    >>Kill |cRXP_ENEMY_Nether-Prince Durzaan.|r
    .complete 48962,1 --"Telogrus Rift" scenario complete 
    .mob Nether-Prince Durzaan
step
    #completewith next
    .goto 972,27.98,24.48,5,0
    .cast 253691 >> |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Portal|r to teleport to |cFFfa9602Stormwind.|r
    .isOnQuest 48962
step
    .goto 84,52.05,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 48962 >>Turn in Telogrus Rift
    .target Aysa Cloudsinger
]])