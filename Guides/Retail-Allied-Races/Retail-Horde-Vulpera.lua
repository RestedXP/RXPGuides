RXPGuides.RegisterGuide([[
#df
#version 1
#group Allied Race Unlocks
#subgroup Vulpera
#name 1) Vulpera Questline
#displayname Vulpera Questline

<< Horde

step
    #completewith VulperaStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
    .turnin 53870 >>Turn in Guests at Grommash Hold
    .accept 53889 >>Accept A Declaration of Intent
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Kiro|r
    .goto 85,48.89,72.74
    .turnin 53889 >>Turn in A Declaration of Intent
    .accept 53890 >>Accept New Allies, New Problems
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Commander Dresh|r, |cRXP_FRIENDLY_Bladeguard Sonji|r, and |cRXP_FRIENDLY_First Arcanist Thalyssra|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crushblow Peons|r
    .goto 241,46.05,65.60
    .skipgossip
    .complete 53892,3 --3/3 Peons questioned
    .target Crushblow Peon
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    .goto 241,46.81,66.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
    .turnin 53892 >>Turn in Where Are the Workers?
    .accept 53893 >>Accept A Little Goodwill
    .accept 53894 >>Accept Worthwhile Repairs
    .accept 53895 >>Accept Peon Promotions!
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crushblow Peons|r
    .goto 241,46.09,65.59
    .skipgossip 1
    .complete 53895,1 --3/3 Peons promoted
    .target Crushblow Peon
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    #completewith next
    >>Pick up |cRXP_PICK_Twilight Ore|r from the veins
    .complete 53894,1 --15/15 Twilight Ore
step
    >>Use the |T310733:0|t[Enlarging Totem] before killing |cRXP_ENEMY_beasts|r around the area. Loot them for their |cRXP_LOOT_flanks|r, |cRXP_LOOT_meat|r, and |cRXP_LOOT_tidbits|r
    .goto 241,48.40,65.62,30,0
    .goto 241,46.62,63.33,30,0
    .goto 241,44.39,67.00,30,0
    .goto 241,45.34,67.78,30,0
    .goto 241,50.10,74.37,30,0
    .goto 241,53.75,71.69,30,0
    .loop 35,241,48.40,65.62,46.62,63.33,44.39,67.00,45.34,67.78,50.10,74.37,53.75,71.69
    .complete 53893,1 --100/100 Saber Flank
    .complete 53893,2 --100/100 Worg Meat
    .complete 53893,3 --100/100 Clucker Tidbits
    .use 171356
    .mob Twilight Prowler
    .mob Highlands Clucker
step
    >>Pick up |cRXP_PICK_Twilight Ore|r from the veins
    .goto 241,51.13,68.58,30,0
    .goto 241,48.60,70.24,30,0
    .goto 241,46.42,72.89,30,0
    .loop 30,241,51.13,68.58,48.60,70.24,46.42,72.89
    .complete 53894,1 --15/15 Twilight Ore
step
    .goto 241,46.81,66.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Dresh|r
    .turnin 54026 >>Turn in Job's Done
    .target Commander Dresh
step
    .goto 85,49.02,73.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
    .turnin 53899 >>Turn in On the Outskirts
    .accept 53901 >>Accept Explosions Always Work
    .accept 53900 >>Accept We'll Use Their Weapons
    .accept 58087 >>Accept Destroying the Source
    .target Nisha
step
    #completewith VulperaExplosionsAlwaysWork
    >>Kill |cRXP_ENEMY_Nazeshi Overseer|r or |cRXP_ENEMY_Nazeshi Tempest-Wielder|r. Loot them for their |cRXP_LOOT_weaponry|r
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
    >>Kill |cRXP_ENEMY_Nazeshi Overseer|r or |cRXP_ENEMY_Nazeshi Tempest-Wielder|r. Loot them for their |cRXP_LOOT_weaponry|r
    .goto 862,74.18,65.41,20,0
    .goto 862,75.11,66.23,20,0
    .goto 862,76.92,66.23,25,0
    .goto 862,77.14,63.93,25,0
    .loop 30,862,74.18,65.41,75.11,66.23,76.92,66.23,77.14,63.93
    .complete 53900,1 --10/10 Nazeshi Weaponry collected
    .mob Nazeshi Tempest-Wielder
    .mob Nazeshi Overseer
step
    >>Use your [ExtraActionButton]
    .goto 862,73.72,66.84
    .complete 53901,2 --1/1 Explosives detonated
step
    .goto 862,74.86,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
    .turnin 53901 >>Turn in Explosions Always Work
    .turnin 53900 >>Turn in We'll Use Their Weapons
    .turnin 58087 >>Turn in Destroying the Source
    .accept 53902 >>Accept Taking Out the Tidecaller
    .target Nisha
step
    >>Kill |cRXP_ENEMY_Tidecaller Nezara|r. |cRXP_WARN_Make sure to dodge the Aquabomb (big blue swirl on the ground) if you're lvl 60|r
    .goto 862,77.18,65.30
    .complete 53902,1 --1/1 Tidecaller Nezara slain
    .mob Tidecaller Nezara
step
    .goto 862,77.18,65.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r next to you
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
    .turnin 53903 >>Turn in Meet with Meerah
    .accept 53904 >>Accept The Vintner's Assistants
    .target Meerah
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Mida|r
    .goto 680,60.69,56.38
    .skipgossip
    .complete 53904,2 --1/1 Speak to Boss Mida
    .target Boss Mida
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micah Broadhoof|r inside the house
    .goto 680,61.22,55.15
    .complete 53904,1 --1/1 Speak to Micah Broadhoof
    .target Micah Broadhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r
    .goto 680,62.42,57.64
    .complete 53904,3 --1/1 Speak to Nomi
    .target Nomi
step
    .goto 680,58.94,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
    .turnin 53904 >>Turn in The Vintner's Assistants
    .accept 53905 >>Accept Playing to Their Strengths
    .target Meerah
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Mida|r
    .goto 680,60.69,56.38
    .skipgossip 1
    .complete 53905,2 --1/1 Boss Mida assigned
    .target Boss Mida
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micah Broadhoof|r inside the house
    .goto 680,61.22,55.15
    .skipgossip 2
    .complete 53905,1 --1/1 Micah assigned
    .target Micah Broadhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r
    .goto 680,62.42,57.65
    .skipgossip 1
    .complete 53905,3 --1/1 Nomi assigned
    .target Nomi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vintner Iltheux|r inside the house
    .goto 680,58.79,55.43
    .complete 53905,4 --1/1 Vintner Iltheux informed
    .target Vintner Iltheux
step
    .goto 680,58.80,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
    .turnin 53905 >>Turn in Playing to Their Strengths
    .accept 54036 >>Accept A Particular Process
    .target Meerah
step
    .goto 680,60.59,56.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r
    .turnin 54036 >>Turn in A Particular Process
    .accept 53906 >>Accept Fermented for the Horde
    .target Nomi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Mida|r and buy 10 |cRXP_BUY_Fermented Fireblooms|r
    .goto 680,61.36,55.36
    .complete 53906,2 --10/10 Fermented Firebloom
    .target Boss Mida
step
    >>Kill |cRXP_ENEMY_Tattered Silkwings|r. Loot them for their |cRXP_LOOT_Fibers|r
    .goto 680,63.97,57.97,25,0
    .goto 680,62.87,59.77,25,0
    .goto 680,61.06,57.61,25,0
    .goto 680,62.03,55.66,25,0
    .loop 25,680,63.97,57.97,62.87,59.77,61.06,57.61,62.03,55.66
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kiro|r
    .turnin 57448 >>Turn in New Allies Among Us
    .target Kiro
step
    .isQuestTurnedIn 57448
    +Congratulations! You've unlocked the Vulpera!
]])