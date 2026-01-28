local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#version 1
#group RestedXP Horde 1-30
#defaultfor Orc/Troll
#name 1-6 Durotar
#next 6-10 Durotar
step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in|r
step
    .goto Durotar,43.33,68.61 << wotlk
    .goto Durotar,43.29,68.53 << tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Accept Your Place In The World
    .target Kaltunk
step << Warrior/Shaman tbc/Warlock tbc
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 34 copper worth of vendor items (including your armor)|r << Warlock
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,50,0 << Warlock
    .goto Durotar,44.19,65.34,50,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock tbc
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Accept Vile Familiars
    .target Ruzan
step << Warrior/Shaman tbc
    .goto Durotar,43.49,67.35,30,0
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << Warlock/Shaman wotlk
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman tbc
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
    .target Gornek
step << Warrior/Shaman tbc
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r << Shaman tbc
    .train 6673 >>Train |T132333:0|t[Battle Shout] << Warrior
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << Shaman tbc
    .target Frang << Warrior
    .target Shikrik << Shaman tbc
step << Warlock tbc
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock tbc
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock tbc
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock tbc
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,30,6394,1 << !Hunter tbc --Refreshing Spring Water (30)
    .collect 159,10,6394,1 << !Hunter wotlk --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter tbc
    .money <0.0048 << !Hunter wotlk
    .money <0.0040 << Hunter
step << Warlock tbc
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0024
step << Warlock tbc
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r en route to the Burning Blade Coven
    >>|cRXP_WARN_Try to get to level 2 before getting there|r
    >>|cRXP_WARN_Try not to use your|r |T132794:0|t[Refreshing Spring Water] |cRXP_WARN_yet|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock tbc
    .goto Durotar,45.30,56.42,100 >> Travel toward the Burning Blade Coven
    .isOnQuest 1485
step << Warlock tbc
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,50,0
	.goto Durotar,44.53,58.62,50,0
	.goto Durotar,45.18,58.42,50,0
	.goto Durotar,45.83,58.59,50,0
	.goto Durotar,45.79,57.43,50,0
	.goto Durotar,46.46,57.57,50,0
	.goto Durotar,47.19,57.12,50,0
	.goto Durotar,46.21,56.69,50,0
	.goto Durotar,46.28,56.11,50,0
	.goto Durotar,45.65,56.90,50,0
	.goto Durotar,45.35,56.32,50,0
	.goto Durotar,44.77,56.87,50,0
	.goto Durotar,44.58,56.10,50,0
	.goto Durotar,44.27,56.59,50,0
	.goto Durotar,43.85,55.52,50,0
	.goto Durotar,43.87,58.42,50,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r. Loot them for |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,25,0 << !Warlock/wotlk
    .goto Durotar,43.89,65.84,45,0 << !Warlock/wotlk
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Accept Sarkoth
    .target Hana'zua
step
    #label Sarkoth
	.goto Durotar,40.88,66.41,40,0
	.goto Durotar,40.41,66.64,40,0
	.goto Durotar,40.43,67.36,40,0
	.goto Durotar,40.72,67.39,40,0
#loop
	.line Durotar,40.88,66.41,40.41,66.64,40.43,67.36,40.72,67.39,40.88,66.41
	.goto Durotar,40.88,66.41,20,0
	.goto Durotar,40.41,66.64,20,0
	.goto Durotar,40.43,67.36,20,0
	.goto Durotar,40.72,67.39,20,0
	.goto Durotar,40.88,66.41,20,0
    >>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for |cRXP_LOOT_Sarkoth's Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
    .target Hana'zua
step
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock tbc
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+685 >> Grind to 685+/1400xp
    .mob Mottled Boar
step << Warlock tbc/wotlk
    #xprate 1.48-1.58
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+845 >> Grind to 845+/1400xp << wotlk
    .xp 3+372 >> Grind to 372+/1400xp << Warlock tbc
    .mob Mottled Boar
--Cutting Teeth gives 50 more xp in wotlk
step << wotlk
    #xprate 1.58-1.68
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+808 >> Grind to 808+/1400xp
    .mob Mottled Boar
step << wotlk
    #xprate >1.6999
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+771 >> Grind to 771+/1400xp
    .mob Mottled Boar
step << !Warlock
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 2+520 >> Grind to 520+/900xp << wotlk
    .xp 2+570 >> Grind to 570+/900xp << tbc
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Duokna2 << wotlk
    #completewith Ruzan2 << tbc
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 95 copper worth of vendor items. You can also sell your gear for 13 copper|r
	.money >0.0095
    .mob Mottled Boar
step << Warlock
    #xprate >1.4999
    #completewith Duokna2 << wotlk
    #completewith Ruzan2 << tbc
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver 90 copper worth of vendor items. You can also sell your gear for 13 copper|r
	.money >0.0190
    .mob Mottled Boar
step << Rogue/Warlock wotlk
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
step << !Rogue !Warrior
    #label Duokna2
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_WARN_Don't buy any|r |T132794:0|t[Refreshing Spring Water] |cRXP_WARN_yet|r << !Hunter !Shaman
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1
step << Warlock tbc
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Turn in Vile Familiars
    .accept 1499 >>Accept Vile Familiars
    .target Ruzan
step << Warlock tbc
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step << Warlock tbc
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 788 >>Turn in Cutting Teeth
    .accept 789 >>Accept Sting of the Scorpid
    .accept 2383 >>Accept Simple Parchment << Orc Warrior
    .accept 3065 >>Accept Simple Tablet << Troll Warrior
    .accept 3082 >>Accept Etched Tablet << Troll Hunter
    .accept 3083 >>Accept Encrypted Tablet << Troll Rogue
    .accept 3084 >>Accept Rune-Inscribed Tablet << Troll Shaman
    .accept 3085 >>Accept Hallowed Tablet << Troll Priest
    .accept 3086 >>Accept Glyphic Tablet << Troll Mage
    .accept 3087 >>Accept Etched Parchment << Orc Hunter
    .accept 3088 >>Accept Encrypted Parchment << Orc Rogue
    .accept 3089 >>Accept Rune-Inscribed Parchment << Orc Shaman
    .accept 3090 >>Accept Tainted Parchment << Orc Warlock
    .turnin 804 >>Turn in Sarkoth
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Travel toward |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #xprate >1.4999
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .train 53 >> Train |T132090:0|t[Backstab]
    .money <0.04
    .target Rwag
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
    .money <0.01 << tbc
step << Warlock tbc
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock tbc
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
--95c for imp
step << Warlock tbc
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .train 172 >> Train |T136118:0|t[Corruption]
	.train 688 >> Train Summon Imp << wotlk
    .target Nartok
step << Warlock wotlk
    #xprate >1.4999
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .train 172 >> Train |T136118:0|t[Corruption]
	.train 688 >> Train |T136218:0|t[Summon Imp]
    .target Nartok
step << Warlock wotlk
    #xprate <1.5
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
	.train 688 >> Train |T136218:0|t[Summon Imp]
    .target Nartok
step << Warlock wotlk
    #completewith next
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Accept Galgar's Cactus Apple Surprise
    .target Galgar
step
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman tbc --Refreshing Spring Water (15)
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman wotlk --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman wotlk
    .itemcount 2512,<600 << Hunter
step
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman tbc --Refreshing Spring Water (15)
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman wotlk --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.0177 << Priest tbc/Mage tbc
    .money <0.0145 << Hunter
    .money <0.0129 << Priest wotlk/Mage wotlk
    .money <0.0072 << Warlock tbc
    .money <0.0024 << Warlock wotlk
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 2512,<600 << Hunter
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.0115
    .itemcount 2512,<200
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.0105
    .itemcount 2512,<200
step << Priest
    #xprate >1.4999
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train your class spells
    .turnin 3085 >> Turn in Hallowed Tablet
    .money <0.02
    .target Ken'jai
step << Priest
    #xprate >1.4999
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .turnin 3085 >> Turn in Hallowed Tablet
    .money <0.0105
    .target Ken'jai
step << Priest
    #xprate >1.4999
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .turnin 3085 >> Turn in Hallowed Tablet
    .money <0.0095
    .target Ken'jai
step << skip
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .turnin 3085 >> Turn in Hallowed Tablet
    .money >0.1
    .target Ken'jai
--VV stam is useless at the start
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >> Turn in Hallowed Tablet
    .target Ken'jai
step << Shaman
    #xprate >1.4999
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << wotlk
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << wotlk
    .target Shikrik
step << Mage
    #xprate >1.4999
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Turn in Glyphic Tablet << Troll
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Mai'ah
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Turn in Glyphic Tablet << Troll
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Mai'ah
step << !Warlock/wotlk
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Accept Vile Familiars
    .target Zureetha Fargaze
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.4999
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.0190
step << Warrior
    #xprate >1.4999
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 100 >> Train |T132337:0|t[Charge]
    .target Frang
    .money <0.0095
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Accept Lazy Peons
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Loot the |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10) Vanilla/TBC, (6) WOTLK
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>Use the |T133486:0|t[Foreman's Blackjack] on sleeping |cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock/wotlk
    #completewith Imps
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for |cRXP_LOOT_Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10) Vanilla/TBC, (8) WOTLK
    .mob Scorpid Worker
step << !Warlock/wotlk
    #label Imps
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,45,0
	.goto Durotar,44.53,58.62,45,0
	.goto Durotar,45.18,58.42,45,0
	.goto Durotar,45.83,58.59,45,0
	.goto Durotar,45.79,57.43,45,0
	.goto Durotar,46.46,57.57,45,0
	.goto Durotar,47.19,57.12,45,0
	.goto Durotar,46.21,56.69,45,0
	.goto Durotar,46.28,56.11,45,0
	.goto Durotar,45.65,56.90,45,0
	.goto Durotar,45.35,56.32,45,0
	.goto Durotar,44.77,56.87,45,0
	.goto Durotar,44.58,56.10,45,0
	.goto Durotar,44.27,56.59,45,0
	.goto Durotar,43.85,55.52,45,0
	.goto Durotar,43.87,58.42,45,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12) Vanilla/TBC, (8) WOTLK
    .mob Vile Familiar
step
    #label Tails
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,45,0
	.goto Durotar,42.81,58.41,45,0
	.goto Durotar,41.90,58.35,45,0
	.goto Durotar,41.97,59.20,45,0
	.goto Durotar,41.36,60.35,45,0
	.goto Durotar,40.66,61.27,45,0
	.goto Durotar,40.07,61.35,45,0
	.goto Durotar,39.42,61.29,45,0
	.goto Durotar,39.46,62.17,45,0
	.goto Durotar,39.55,63.10,45,0
	.goto Durotar,40.13,64.04,45,0
	.goto Durotar,40.84,64.06,45,0
	.goto Durotar,40.74,65.86,45,0
	.goto Durotar,39.93,66.03,45,0
	.goto Durotar,40.04,66.99,45,0
	.goto Durotar,40.09,67.66,45,0
	.goto Durotar,40.13,68.50,45,0
	.goto Durotar,40.72,68.55,45,0
	.goto Durotar,41.30,67.84,45,0
	.goto Durotar,41.37,66.72,45,0
	.goto Durotar,41.89,66.05,45,0
	.goto Durotar,41.27,65.71,45,0
	.goto Durotar,41.36,64.07,45,0
	.goto Durotar,41.33,63.12,45,0
	.goto Durotar,41.35,61.98,45,0
	.goto Durotar,41.49,61.25,45,0
	.goto Durotar,41.90,60.24,45,0
	.goto Durotar,42.51,59.34,45,0
	.goto Durotar,43.08,59.62,45,0
	.goto Durotar,43.91,59.33,45,0
	.goto Durotar,45.15,59.46,45,0
	.goto Durotar,45.81,59.30,45,0
	.goto Durotar,45.85,60.34,45,0
	.goto Durotar,46.46,61.11,45,0
	.goto Durotar,47.09,62.24,45,0
	.goto Durotar,47.08,63.15,45,0
	.goto Durotar,47.14,64.08,45,0
	.goto Durotar,47.58,64.04,45,0
	.goto Durotar,47.08,63.15,45,0
	.goto Durotar,47.09,62.24,45,0
	.goto Durotar,46.90,61.15,45,0
	.goto Durotar,46.98,60.18,45,0
	.goto Durotar,47.07,59.34,45,0
	.goto Durotar,46.47,58.28,45,0
	.goto Durotar,45.81,59.30,45,0
	.goto Durotar,45.15,59.46,45,0
	.goto Durotar,43.91,59.33,45,0
	.goto Durotar,43.26,58.28,45,0
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for |cRXP_LOOT_Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10) Vanilla/TBC, (8) WOTLK
    .mob Scorpid Worker
step
#loop
	.line Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
	.goto Durotar,44.98,69.13,40,0
	.goto Durotar,45.64,65.70,40,0
	.goto Durotar,47.37,65.67,40,0
	.goto Durotar,46.74,60.66,40,0
	.goto Durotar,47.09,57.90,40,0
	.goto Durotar,43.90,57.79,40,0
	.goto Durotar,42.70,57.25,40,0
	.goto Durotar,41.27,58.95,40,0
	.goto Durotar,40.91,60.41,40,0
	.goto Durotar,38.83,61.84,40,0
	.goto Durotar,44.98,69.13,40,0
    >>Use the |T133486:0|t[Foreman's Blackjack] on sleeping |cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 4 >> Grind to level 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 159,<2 << Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 789 >>Turn in Sting of the Scorpid
    .target Gornek
step << Shaman
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #xprate <1.5
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Mai'ah
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train your class spells
    .money <0.02
    .target Ken'jai
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.0105
    .target Ken'jai
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.0095
    .target Ken'jai
step << !Warlock/wotlk
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step << Hunter
    #xprate <1.5
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
 step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.0190
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .target Frang
    .money <0.0095
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Turn in Lazy Peons
    .accept 6394 >>Accept Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >> Grind to 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    .goto Durotar,44.67,64.92,25,0
    .goto Durotar,43.45,62.96,25,0
    .goto Durotar,43.82,62.72,25,0
    .goto Durotar,44.85,61.54,25,0
    .goto Durotar,44.88,59.66,25,0
    .goto Durotar,44.61,58.20,25,0
    .goto Durotar,45.46,58.49,25,0
    .goto Durotar,45.93,60.62,25,0
    .goto Durotar,46.87,60.36,25,0
    .goto Durotar,47.28,62.80,25,0
    .goto Durotar,46.08,62.98,25,0
#loop
	.line Durotar,44.67,64.92,43.45,62.96,43.82,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
	.goto Durotar,44.67,64.92,25,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>Loot the |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10) Vanilla/TBC, (6) WOTLK
step << !Warrior !Rogue !Shaman/wotlk
    #xprate <1.5
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,45,0
	.goto Durotar,44.53,58.62,45,0
	.goto Durotar,45.18,58.42,45,0
	.goto Durotar,45.83,58.59,45,0
	.goto Durotar,45.79,57.43,45,0
	.goto Durotar,46.46,57.57,45,0
	.goto Durotar,47.19,57.12,45,0
	.goto Durotar,46.21,56.69,45,0
	.goto Durotar,46.28,56.11,45,0
	.goto Durotar,45.65,56.90,45,0
	.goto Durotar,45.35,56.32,45,0
	.goto Durotar,44.77,56.87,45,0
	.goto Durotar,44.58,56.10,45,0
	.goto Durotar,44.27,56.59,45,0
	.goto Durotar,43.85,55.52,45,0
	.goto Durotar,43.87,58.42,45,0
    .xp 4+1720 >> Grind to 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman/wotlk
    #xprate <1.5
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,45,0
	.goto Durotar,44.53,58.62,45,0
	.goto Durotar,45.18,58.42,45,0
	.goto Durotar,45.83,58.59,45,0
	.goto Durotar,45.79,57.43,45,0
	.goto Durotar,46.46,57.57,45,0
	.goto Durotar,47.19,57.12,45,0
	.goto Durotar,46.21,56.69,45,0
	.goto Durotar,46.28,56.11,45,0
	.goto Durotar,45.65,56.90,45,0
	.goto Durotar,45.35,56.32,45,0
	.goto Durotar,44.77,56.87,45,0
	.goto Durotar,44.58,56.10,45,0
	.goto Durotar,44.27,56.59,45,0
	.goto Durotar,43.85,55.52,45,0
	.goto Durotar,43.87,58.42,45,0
    .xp 5 >> Grind to level 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>Enter the cave
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>Travel toward |cRXP_LOOT_Thazz'ril's Pick|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Kill |cRXP_ENEMY_Felstalkers|r. Loot them for |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Loot |cRXP_LOOT_Thazz'ril's Pick|r against the wall
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.33,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>Travel toward |cRXP_ENEMY_Yarrog Baneshadow|r
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Kill |cRXP_ENEMY_Yarrog Baneshadow|r. Loot him for the |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>Kill |cRXP_ENEMY_Felstalkers|r. Loot them for |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #xprate <1.5
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1635 >> Grind to 1635+/2800xp << !Shaman
    .xp 5+645 >> Grind to 645+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1255 >> Grind to 1255+/2800xp << !Shaman
    .xp 5+265 >> Grind to 265+/2800xp << Shaman
    .isOnQuest 4402
step << skip --logout skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the edge of the rock until it looks like they're floating, then logging out and back in|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLICK HERE
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_You can talk to him from outside or on top of the bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Accept Vanquish the Betrayers
    .target Gar'thok
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Travel toward the tower
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step
    #completewith next
    .hs >>Hearth to the Valley of Trials
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #xprate >1.4999
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
    .xp 5+1795,1 << !Shaman
    .xp 5+310,1 << Shaman
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Turn in Burning Blade Medallion
    .accept 805 >>Accept Report to Sen'jin Village
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Accept In Favor of Spirituality
	.train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.0190
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 3126 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .train 34428 >>Train |T132342:0|t[Victory Rush] << wotlk
    .target Frang
    .money <0.0285 << wotlk
    .money <0.0190 << tbc
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 3126 >>Train |T132269:0|t[Parry]
    .train 34428 >>Train |T132342:0|t[Victory Rush] << wotlk
    .target Frang
    .money <0.0190 << wotlk
    .money <0.0095 << tbc
step << Rogue
    #completewith Rwag2
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Travel toward |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .target Rwag
    .money <0.0190
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Rwag
    .money <0.0095
step << Warlock wotlk
    #completewith Nartok3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
step << Warlock tbc
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
step << Warlock tbc
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cRXP_BUY_from him|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Hraug
    .money <0.0285
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Nartok
    .money <0.0190
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Nartok
    .money <0.0095
step << Warlock tbc
    #completewith Leave
    .train 20397 >> Use the |T133738:0|t[Grimoire of Blood Pact]
    .itemcount 16321,1
    .use 16321
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Travel toward the |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>Use the |T134743:0|t[Earth Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Turn in Call of Earth
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
step
    #xprate >1.4999
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Exit the Valley of Trials
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 6-10 Durotar
#version 1
#group RestedXP Horde 1-30
#next 10-13 Durotar << Warrior/Shaman
#next 10-12 Eversong Woods << !Warrior !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Accept A Peon's Burden
    .target Ukor
step
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6,15,0
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6
    >>Talk to Lar Prowltusk. He patrols between 3 points
.target Lar Prowltusk
>>Talk to |cRXP_FRIENDLY_Lar Prowltusk|r
    .accept 786 >>Accept Thwarting Kolkar Aggression
    .unitscan Lar Prowltusk
step
    >> Speak with Vel'rin Fang in the hut
.target Vel'rin Fang
>>Talk to |cRXP_FRIENDLY_Vel'rin Fang|r
    .accept 817 >>Accept Practical Prey
    .goto Durotar,56.0,73.9
    >> Speak with Master Vornal and Gadrin by the pool
.target Master Vornal
>>Talk to |cRXP_FRIENDLY_Master Vornal|r
    .accept 818 >>Accept A Solvent Spirit
    .goto Durotar,55.9,74.4
>>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 805 >>Turn in Report to Sen'jin Village
    .goto Durotar,55.9,74.7
.target Master Gadrin
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
step << Shaman
    .goto Durotar,56.5,73.1
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for Walking Stick (4s 80c). You'll come back later if you don't have enough yet
step << Shaman
    .goto Durotar,56.5,73.1
    .money <0.0480
    >> Buy a Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
.goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Stiletto (3s 82c). You'll come back later if you don't have enough yet
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >> Buy a Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Large Axe (4s 60c). You'll come back later if you don't have enough yet
step << Orc Warrior
    .goto Durotar,56.5,73.1
    .money <0.0460
    >> Buy a Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Gladius (5s 9c). You'll come back later if you don't have enough yet
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >> Buy a Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Hornwood Recurve Bow (2s 71c). You'll come back later if you don't have enough yet
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >> Buy a Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
#sticky
#completewith next
.goto Durotar,59.7,71.7,0
    .goto Durotar,57.6,77.9,0
    >> Run down the beach killing as many Crawlers and Makrura as possible for Mucus and Eyes. This quest can be completed later on.
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
    .goto Durotar,52.1,83.3,75 >> Reach the end of the beach
step
.goto Durotar,50.9,79.2,15 >>Enter the Kolkar base
step
    #sticky
    #completewith Bonfire
    +If Warlord Kolkanis is up and blocking a plan, kill him when you are level 7. Be sure to use the Cactus Apple Surprise for +2 stam and use the Healing Potion from earlier.
    .unitscan Warlord Kolkanis
step
    .goto Durotar,49.81,81.29
    >>Burn the |cRXP_PICK_Attack Plan|r inside the tent on the ground
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
.goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith bonfireskip
    .deathskip >> Die at the Bonfire and respawn at the Spirit Healer, or run back to Sen'jin Village
step << Shaman
    .goto Durotar,56.6,73.1
    .money <0.0480
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .money <0.0460
    .goto Durotar,56.5,73.1
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >> Buy a Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
    >>Inside the top floor of the bunker
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cRXP_FRIENDLY_Gar'Thok|r
    .accept 784 >>Accept Vanquish the Betrayers
step
    #completewith next
    .goto Durotar,50.2,43.1,15 >>Go up this path here
step
    >>Go up the tower and talk to Furl Scornbrow
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>Talk to |cRXP_FRIENDLY_Furl Scornbrow|r
    .accept 791 >>Accept Carry Your Weight
step
    #sticky
    #label KulTiras
    .goto Durotar,59.2,58.3
>>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step
    #label bonfireskip
    .goto Durotar,59.7,58.3
    >>Go to the top floor of the Keep. Kill Lieutenant Benedict and loot his key - be careful as he uses Shield Bash (Interrupt)
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step
.goto Durotar,59.8,57.8,8 >>Go up the stairs here
step
.goto Durotar,59.9,57.5,8 >>Go up the stairs here
step
>>Loot the chest. Accept the quest from the item
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
    .use 4881
.accept 830 >>Accept The Admiral's Orders
step
    .goto Durotar,58.4,57.2
.xp 7+2195 >> Grind to 2195+/4500xp
step
    #requires KulTiras
    #completewith next
.deathskip >> Die and respawn at the Spirit Healer, or run back to Razor Hill
step
    .goto Durotar,51.9,43.5
>>Talk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
.target Gar'Thok
    .accept 825 >>Accept From The Wreckage....
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 837 >>Accept Encroachment
step
    .isOnQuest 823
    .goto Durotar,52.24,43.15
.target Orgnil Soulscar
>>Talk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 823 >> Turn in Report to Orgnil
step << Shaman/Warrior
    .goto Durotar,52.24,43.15
>>Talk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 823 >>Turn in Report to Orgnil
.target Orgnil Soulscar
    .accept 806 >>Accept Dark Storms
step << !Shaman !Warrior
    #xprate <1.5
    .goto Durotar,52.24,43.15
.target Orgnil Soulscar
>>Talk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 823 >>Turn in Report to Orgnil
step << Warlock/Shaman/Warrior
    #xprate <1.5
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cRXP_FRIENDLY_Gar'Thok|r
.accept 831 >>Accept The Admiral's Orders
step
    #xprate <1.5
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>Talk to |cRXP_FRIENDLY_Furl Scornbrow|r
    .turnin 791 >>Turn in Carry Your Weight
step
    >> Talk to Cook Torka
    .goto Durotar,51.1,42.4
.target Cook Torka
>>Talk to |cRXP_FRIENDLY_Cook Torka|r
    .accept 815 >>Accept Break a Few Eggs
step << !Shaman !Warrior
    #xprate <1.5
    .abandon 806 >>Abandon Dark Storms
step << Shaman
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0480
    >> Buy a Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0382
    >> Buy a Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0460
    >> Buy a Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0509
    >> Buy a Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    #xprate <1.5
    .goto Durotar,53.0,41.0
    .money <0.0271
    >> Buy a Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2020 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #xprate <1.5
.goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >> Train Mining.
    .cast 2580 >>Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon
step << Shaman
    #xprate <1.5
    .goto Durotar,54.419,42.588
    .train 2484 >>Train Earthbind Totem
    .train 324 >>Train Lightning Shield
    .train 8044 >>Train Earth Shock r2
    .train 8018 >>Train Rockbiter Weapon r2
step << Priest
    #xprate <1.5
    .goto Durotar,54.3,42.9
    .train 139 >>Train Renew
    .train 2052 >> Train Lesser Heal r2
>>Talk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> In Favor of Spirituality
.target Tai'jin
    .accept 5648 >> Garments of Spirituality
step << Priest
    .goto Durotar,53.1,46.5
    .cast 2052 >>Cast Lesser Heal (Rank 2) on Grunt Kor'ja
    .cast 1243 >>Cast Power Word: Fortitude (Rank 1) on Grunt Kor'ja
    .complete 5648,1 --Heal and cast Fortify on Grunt Kor'ja
step << Priest
    .goto Durotar,54.3,42.9
.target Tai'jin
>>Talk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >> Garments of Spirituality
step << Warrior
.goto Durotar,54.190,42.468
    .train 284 >>Train Heroic Strike r2
    .train 1715 >>Train Hamstring
step << Hunter
    .goto Durotar,51.8,43.5
    .train 5116 >>Train Concussive Shot
step << Rogue
.goto Durotar,52.0,43.7
    .train 6760 >>Train Eviscerate r2
    .train 5277 >>Train Evasion
step << Warlock
    .goto Durotar,54.4,41.2
    .train 980 >>Train Curse of Agony
    .train 5782 >>Train Fear
step << Warrior/Rogue
    .goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>Train First Aid
step
    .goto Durotar,54.4,42.2
    .money <0.1184
.vendor >>Buy a 6 slot bag from Jark
step << Priest/Mage/Warlock/Shaman/Druid
    .goto Durotar,51.5,41.6
    >> Talk to the innkeeper
.target Innkeeper Grosk
>>Talk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much Ice Cold Milk as you can
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    >> Talk to the innkeeper
.target Innkeeper Grosk
>>Talk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much Haunch of Meat as you can
step << Paladin
    .goto Durotar,51.5,41.6
    >> Talk to the innkeeper
.target Innkeeper Grosk
>>Talk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
step << Warrior/Rogue/Paladin
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << Paladin
    .goto Orgrimmar,49.1,94.7,20 >> Run into Orgrimmar
step << Paladin
    .goto Orgrimmar,32.272,35.794
    .trainer >> Go and train your class spells
step << Paladin
    #completewith next
    .goto Durotar,59.2,58.3,15
    .hs >>Hearth to Razor Hill
step
    #sticky
    #requires KulTiras
    #completewith Tools
    >>Kill some Makrura here for eyes/Crawlers for Mucus en route to other quests. You don't need to finish it here.
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #completewith next
    >>Check the boat closest to the shore for the Toolboxes. Check other boats if you can't find these spawns. They can be a bit hard to see
    .goto Durotar,61.9,55.5,10 >> In the window underwater
    .goto Durotar,62.3,56.3,10 >> Underwater
    .goto Durotar,61.4,56.1,10 >> Near the shore
step
    .goto Durotar,61.9,55.5,10,0
    .goto Durotar,62.3,56.3,10,0
    .goto Durotar,61.4,56.1,10,0
    .complete 825,1 --Gnomish Tools (3)
step
    #requires KulTiras
    #label Tools
    .goto Durotar,67.2,70.0,125 >>Swim to the Island
step
    #sticky
    #completewith Fur
    >>Kill all Tigers that you see for their Fur
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>Loot Taillasher eggs on the ground on this island. They're usually guarded by a Taillasher
    .goto Durotar,68.8,71.5
    .complete 815,1 --Taillasher Egg (3)
step
    #sticky
    #completewith Swim
    >>Kill some Makrura here for eyes/Crawlers for Mucus
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Swim
.goto Durotar,66.9,80.0,80 >>Swim to the other island
step
    #sticky
    #completewith Trolls
    >>Kill the trolls in the area. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Shaman
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Save your Earth Shock for when he casts Healing Wave. Loot his head
    .complete 826,3 --Zalazane's Head (1)
step << Rogue
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Save your Gouge for when he casts Healing Wave. Loot his head
    .complete 826,3 --Zalazane's Head (1)
step << !Rogue !Shaman
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Be careful as he can heal (you may need a healing potion). Loot his head
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
.goto Durotar,67.4,87.8
    >>Loot one of the skulls on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
>>Kill the rest of the trolls. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
>>Finish getting the rest of the Tiger Fur
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .complete 817,1 --Durotar Tiger Fur (4)
step
     #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Sen'jin Village
step
    >> Finish getting the rest of the items from the Makrura and Crawlers
        .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step << Mage
    >>Go inside the tent
.goto Durotar,56.3,75.1
    .train 205 >>Train Frostbolt r2
.train 118 >>Train Polymorph
step
    >>Head back to Sen'jin Village. Save the Faintly Glowing Skull for later
.goto Durotar,55.9,74.7
.target Master Gadrin
>>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826,1 >>Turn in Zalazane << Warrior
    turnin 826 >>Turn in Zalazane << !Warrior
step
    >> Talk to Master Vornal, Vel'rin, and Lar Prowltusk
.target Master Vornal
>>Talk to |cRXP_FRIENDLY_Master Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
    .goto Durotar,56.0,74.3
.target Vel'rin Fang
>>Talk to |cRXP_FRIENDLY_Vel'rin Fang|r
    .turnin 817 >>Turn in Practical Prey
    .goto Durotar,56.0,73.9
    .unitscan Lar Prowltusk
.target Lar Prowltusk
>>Talk to |cRXP_FRIENDLY_Lar Prowltusk|r
    .turnin 786 >>Turn in Thwarting Kolkar Aggression
    .goto Durotar,54.3,73.3
step
    #completewith next
    .goto Durotar,48.9,48.5
    .hs >> Hearth back to Razor Hill
step
    .goto Durotar,48.9,48.5
    >>Kill Quilboars and Scouts in the area
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    .goto Durotar,43.8,39.1
    >>Kill Dustrunners and Battleguards in the area. Dustrunners have Rejuvenation (Heal) and Battleguards are tanky
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step
    .goto Durotar,43.8,39.1
    .xp 9+5175 >>Grind to 4550+/6500xp
step
    .goto Durotar,51.9,43.5
    >> Head to the bunker
.target Gar'Thok
>>Talk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .turnin 837 >>Turn in Encroachment
step << Hunter
    .xp <10,1
    .goto Durotar,51.8,43.5
.target Thotar
>>Talk to |cRXP_FRIENDLY_Thotar|r
    .accept 6062 >>Accept Taming the Beast
    .train 13165 >>Train Aspect of the Hawk
    .train 13549 >>Train Serpent Sting r2
step << Warlock/Shaman/Warrior/Hunter
    #xprate >1.499
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cRXP_FRIENDLY_Gar'Thok|r
.accept 831 >>Accept The Admiral's Orders
step
    >> Talk to Cook Torka
    .goto Durotar,51.1,42.4
.target Cook Torka
>>Talk to |cRXP_FRIENDLY_Cook Torka|r
        .turnin 815 >>Turn in Break a Few Eggs
step << Hunter
    .isOnQuest 6062
    .use 15917 >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
step << !Shaman !Warrior
    .abandon 806 >>Abandon Dark Storms
step
    .goto Durotar,43.8,39.1
    .xp 10 >>Grind to 10
step << Paladin
    #sticky
    #completewith next
    +If you're afraid of Eversong competition, then manually select 10-13 Durotar->13-23 Barrens now
step << Shaman
    .goto Durotar,54.4,42.5
.target Swart
>>Talk to |cRXP_FRIENDLY_Swart|r
    .accept 2983 >>Accept Call of Fire
    .train 8075 >>Train Strength of Earth Totem
    .train 8050 >>Train Flame Shock
step << Priest
    .goto Durotar,54.3,42.9
    .train 2053 >>Train Lesser Heal r3
    .train 8092 >>Train Mind Blast
.train 594 >>Train Shadow Word: Pain r2
step << Orc Warrior/Troll Warrior/Undead Warrior
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>Talk to |cRXP_FRIENDLY_Krang Stonehoof|r
-->>Talk to |cRXP_FRIENDLY_Tarshaw Jaggedscar|r
-->>Talk to |cRXP_FRIENDLY_Sorek|r
    .accept 1505 >>Accept Veteran Uzzek
    .train 2687 >>Train Bloodrage
    .train 6546 >>Train Rend r2
step << Rogue
    .goto Durotar,52.0,43.7
    .train 2983 >>Train Sprint
    .train 674 >>Train Dual Wield
    .train 6770 >>Train Sap
    .train 1784 >>Train Stealth
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    .vendor >> Buy another Stiletto and equip it
step << Warrior/Rogue/Paladin
.goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>Train First Aid
step << Warlock
    .goto Durotar,54.4,41.2
.target Ophek
>>Talk to |cRXP_FRIENDLY_Ophek|r
    .accept 1506 >>Accept Gan'Rul's Summons
step << Warlock
    .goto Durotar,54.4,41.2
    .train 1120 >>Train Drain Soul
    .train 6201 >> Train Create Healthstone
    .train 696 >>Train Demon Skin r2
    .train 707 >> Train Immolate r2
step << Hunter
    .goto Durotar,51.8,43.5
.target Thotar
>>Talk to |cRXP_FRIENDLY_Thotar|r
    .accept 6062 >>Accept Taming the Beast
    .train 13165 >>Train Aspect of the Hawk
    .train 13549 >>Train Serpent Sting r2
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Vendor and stock up on level 10 arrows
step << Hunter
    .use 15917 >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
    .unitscan Dire Mottled Boar
step << Hunter
    .goto Durotar,51.8,43.5
>>Talk to |cRXP_FRIENDLY_Thotar|r
.turnin 6062 >>Turn in Taming the Beast
.target Thotar
.accept 6083 >>Accept Taming the Beast
step << Hunter
    .use 15919 >>Don't kill the Armored Scorpids you see as you need to tame one next. Head north to the beaches and tame a Surf Crawler.
.goto Durotar,59.3,27.6
.complete 6083,1 --Tame a Surf Crawler
    .unitscan Surf Crawler
step << Hunter
    >> Head back to Razor Hill
    .goto Durotar,51.8,43.5
>>Talk to |cRXP_FRIENDLY_Thotar|r
.turnin 6083 >>Turn in Taming the Beast
.target Thotar
.accept 6082 >>Accept Taming the Beast
step << Hunter
    .use 15920 >>Click the Taming Rod in your bag on a Scorpid. Try to do it at max range (30 yards)
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
    .unitscan Armored Scorpid
step << Hunter
    >> Return to Thotar
    .goto Durotar,51.8,43.5
>>Talk to |cRXP_FRIENDLY_Thotar|r
    .turnin 6082 >>Turn in Taming the Beast
.target Thotar
    .accept 6081 >>Accept Training the Beast
step << Hunter
    >> Follow the road north and talk to Rezlak
    .goto Durotar,46.4,22.9
.target Rezlak
>>Talk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
step << Warlock/Hunter
    .goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Hunter
    >> Head to the Valley of Honor and talk to Ormak Grimshot
    .goto Orgrimmar,66.046,18.526
.target Ormak Grimshot
>>Talk to |cRXP_FRIENDLY_Ormak Grimshot|r
    .turnin 6081 >>Turn in Training the Beast
step << Hunter tbc
    >>Put "Beast Training" on your bars. Remember to teach your pet skills later
.goto Orgrimmar,66.3,14.8
    .train 4195 >>Train Great Stamina
    .train 24547 >>Train Natural Armor
step << Warlock
.goto Orgrimmar,48.246,45.281
>>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
.turnin 1506 >>Turn in Gan'rul's Summons
.target Gan'rul Bloodeye
.accept 1501 >>Accept Creature of the Void
step << Warlock/Hunter
    .goto Orgrimmar,34.340,36.328
.target Vol'jin
>>Talk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 831 >>Turn in The Admiral's Orders
step << Warlock
.goto Orgrimmar,31.62,37.82
.target Thrall
>>Talk to |cRXP_FRIENDLY_Thrall|r
.accept 5726 >>Accept Hidden Enemies
step << Warlock
    #sticky
    #completewith next
.goto Orgrimmar,36.0,37.7
>> Click off your Demon Skin buff. Run on top of the brazier, and use Life Tap to die. Respawn outside of orgrimmar
step << Warlock/Hunter
.goto Orgrimmar,49.0,94.2,275 >>Run out of Orgrimmar
step << Warlock
.goto Durotar,55.0,9.7,25 >>Enter Skull Rock
step << Warlock
    #sticky
    #label Collars
>>Kill Burning Blade mobs until Lieutenant's Insignia drops
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Warlock
    #sticky
    #label Eye
    #completewith Skull
    .use 4945 >>Optionally, you can kill Gazz'uz (level 14 warlock) for a quest item. Be sure to use your Skull from earlier, any potions you have, or sticky glue on the voidwalker. You can LoS (Line of Sight) Gazz'uz to avoid his shadowbolts, and fear his pet. If you can't kill him, try to sneak past, or die and respawn past him in the water.
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .unitscan Gazz'uz
step << Warlock
    .goto Durotar,53.6,8.5,10,0
    .goto Durotar,51.8,8.1,10,0
    .goto Durotar,51.6,9.8
    >> Go into the Right path of the cave. Continue following the cave, then loot the Chest at the end of it
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #label Skull
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run to Orgrimmar
step << Warlock
.goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Warlock
.goto Orgrimmar,31.62,37.82
>>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
.target Thrall
    .accept 5727 >>Accept Hidden Enemies
step << Warlock
    .goto Orgrimmar,48.246,45.281
>>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1501 >>Turn in Creature of the Void
.target Gan'rul Bloodeye
    .accept 1504 >>Accept The Binding
step << Warlock
    .isOnQuest 832
.goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>Talk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 832 >>Turn in Burning Shadows
step << Warlock
    >>Talk to Neeru and finish his gossip options
.goto Orgrimmar,49.473,50.589
    .skipgossip
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade (1)
step << Warlock
    .goto Orgrimmar,49.5,50.0
    .use 7464>>Use the Glyphs of Summoning to summon a voidwalker. Kill it
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    >>You can now summon a Voidwalker
.goto Orgrimmar,48.246,45.281
.target Gan'rul Bloodeye
>>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1504 >>Turn in The Binding
step << Warlock
.goto Orgrimmar,31.62,37.82
.target Thrall
>>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Turn in Hidden Enemies
step << Warlock
    #sticky
    #completewith next
    .goto Orgrimmar,36.0,37.7
    >> Click off your Demon Skin buff. Run on top of the brazier, and use Life Tap to die. Respawn outside of orgrimmar
step << Warlock
    .goto Orgrimmar,49.0,94.2,275 >>Run out of Orgrimmar
step << !Shaman !Warrior !Warlock !Hunter
    .goto Durotar,46.4,22.9
.target Rezlak
>>Talk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
step << !Shaman !Warrior !Warlock
    >>Loot the small sacks on the ground
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >> Return to Rezlak
>>Talk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
.target Rezlak
    .accept 835 >>Accept Securing the Lines
step << !Shaman !Warrior !Warlock
    .goto Durotar,51.9,27.4,20 >>Go through the cave here
step << !Shaman !Warrior !Warlock
    >>Kill Harpies in the area
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step << !Shaman !Warrior !Warlock
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Rezlak
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >> Return to Rezlak
.target Rezlak
>>Talk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835,2 >>Turn in Securing the Lines << Hunter
    .turnin 835 >>Turn in Securing the Lines << !Hunter
step << Hunter tbc
    .goto Durotar,57.2,12.0
    .tame 3108 >>Tame an Encrusted Surf Crawler (They have Claw Rank 3)
step << !Shaman !Warrior
    #sticky
    #completewith next
+Go to the Zeppelin tower. Take the zeppelin to Undercity
    .goto Durotar,50.8,13.8
step << !Shaman !Warrior
.zone Tirisfal Glades >>Arrive in Tirisfal
step << !Shaman !Warrior
.goto Undercity,66.2,1.1,18 >>Go to Undercity
step << !Shaman !Warrior
.goto Undercity,62.0,11.3,18 >>Go up the stairs here
step << !Shaman !Warrior
    .goto Undercity,54.63,11.28
    .zone Silvermoon City >>Use the Orb of Translocation to teleport to Silvermoon
    .zoneskip Eversong Woods
step << Paladin
    #completewith next
    .goto Silvermoon City,91.2,36.9
    .trainer >> Go and train your class spells
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 10-13 Durotar
#version 1
#group RestedXP Horde 1-30
#defaultfor Warrior !Tauren/Shaman !Tauren
#next 13-22 The Barrens
step
    .goto Durotar,50.8,43.6
.target Takrin Pathseeker
>>Talk to |cRXP_FRIENDLY_Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
step << Undead Warrior
    >>Go up the tower
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>Talk to |cRXP_FRIENDLY_Furl Scornbrow|r
    .accept 791 >>Accept Carry Your Weight
step << Undead Warrior
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2020 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
    .skill blacksmithing,1,1
step << Undead Warrior
    .goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >> Train Mining.
    .cast 2580 >> Cast “Find Minerals” in your spellbook
step << Undead Warrior
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << Undead Warrior
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>Talk to |cRXP_FRIENDLY_Krang Stonehoof|r
-->>Talk to |cRXP_FRIENDLY_Tarshaw Jaggedscar|r
-->>Talk to |cRXP_FRIENDLY_Sorek|r
    .accept 1505 >>Accept Veteran Uzzek
step << Undead Warrior
>>Inside the bunker, top floor
.goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cRXP_FRIENDLY_Gar'Thok|r
.accept 784 >>Accept Vanquish the Betrayers
step << Undead Warrior
    #sticky
    #label KulTiras
>>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step << Undead Warrior
.goto Durotar,59.2,58.3,15 >>Go inside the keep
step << Undead Warrior
    .goto Durotar,59.7,58.3
    >>Go to the top floor of the Keep. Kill Lieutenant Benedict and loot his key - be careful as he uses Shield Bash (Interrupt)
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step << Undead Warrior
.goto Durotar,59.8,57.8,8 >>Go up the stairs here
step << Undead Warrior
.goto Durotar,59.9,57.5,8 >>Go up the stairs here
step << Undead Warrior
>>Loot the chest. Accept the quest from the item
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
.accept 830 >>Accept The Admiral's Orders
step << Undead Warrior
    >>Run down to Sen'jin
.goto Durotar,55.9,74.7
.target Master Gadrin
>>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
step << Undead Warrior
    .goto Durotar,67.3,87.1,350 >> Swim to the Island
step << Undead Warrior
    #sticky
    #completewith Trolls
    >>Kill the trolls in the area. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Undead Warrior
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Be careful as he can heal (you may need a healing potion). Loot his head
    .complete 826,3 --Zalazane's Head (1)
step << Undead Warrior
    #label Trolls
.goto Durotar,67.4,87.8
    >>Loot one of the skulls on the ground
    .complete 808,1 --Minshina's Skull (1)
step << Undead Warrior
>>Kill the rest of the trolls. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Undead Warrior
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Sen'jin Village
step << Undead Warrior
    >>Save the Faintly Glowing Skull for later
.goto Durotar,55.9,74.7
.target Master Gadrin
>>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826 >>Turn in Zalazane
step << Undead Warrior
    >>Run back to Razor Hill
    .goto Durotar,52.24,43.15
>>Talk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 823 >>Turn in Report to Orgnil
.target Orgnil Soulscar
    .accept 806 >>Accept Dark Storms
step
    #xprate >1.499
    .goto Durotar,48.9,48.5
    >>Kill Quilboars and Scouts in the area
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    #xprate >1.499
    .goto Durotar,43.8,39.1
    >>Kill Dustrunners and Battleguards in the area. Dustrunners have Rejuvenation (Heal) and Battleguards are tanky
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step
    .goto The Barrens,62.2,19.4
>>Talk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
.target Kargal Battlescar
    .accept 842 >>Accept Crossroads Conscription
step
    .goto The Barrens,62.2,19.4
    .zone The Barrens >>Run to The Barrens
step << Warrior
    .goto The Barrens,61.4,21.1
>>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
.target Uzzek
    .accept 1498 >>Accept Path of Defense
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.8,20.0
>>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 2983 >>Turn in Call of Fire
.target Kranal Fiss
    .accept 1524 >>Accept Call of Fire
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.0,30.5,150 >> Run to the Crossroads
step << Orc/Troll
#xprate <1.5
    .goto The Barrens,52.5,29.8
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
step << !Tauren
#xprate <1.5
    #completewith next
    .goto The Barrens,52.3,32.0
    .vendor >> Purchase as many 6 slot bags as you need
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.8
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.4
    .fp >>Get the The Crossroads Flight Path
step << Orc/Troll
#xprate <1.5
    >>do NOT fly to Orgrimmar
.goto The Barrens,51.5,30.3
>>Talk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
.target Devrak
    .accept 6384 >>Accept Ride to Orgrimmar
step << !Tauren
#xprate <1.5
.goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
        .accept 848 >>Accept Fungal Spores
step << !Tauren
#xprate <1.5
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools. Try to avoid mobs the best you can.
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
#xprate <1.5
>>Dive underwater to the bubble fissure
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
#xprate <1.5
>>Collect the white mushrooms around The Forgotten Pools. Try to avoid mobs the best you can.
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren tbc
#xprate <1.5
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Crossroads
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.1
    >>Talk to Helbrim. Apothecary Zamah is a TIMED QUEST, if you have to afk at any point before you turn it in, log off.
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
.target Apothecary Helbrim
    .accept 853 >>Accept Apothecary Zamah
    .timer 2700,Timer to reach Thunder Bluff
step << !Tauren
#xprate <1.5
    #completewith CampTaurajoFP
 +Apothecary Zamah is a TIMED QUEST, if you have to afk at any point before you turn it in, log off.
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >>Turn in The Forgotten Pools
.target Tonga Runetotem
    .accept 877 >>Accept The Stagnant Oasis
step << !Tauren
    #label CampTaurajoFP
#xprate <1.5
    >>Run down the road
.goto The Barrens,44.4,59.2
    .fp Camp Taurajo >>Get the Camp Taurajo Flight Path
--X add the actual flight path name to each .fp command. MAKE SURE to check it on the flight map itself as it may differ from the name of the subzone
step << !Tauren
#xprate <1.5
    .line Mulgore,69.0,60.0,58.4,61.7,51.9,59.3
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    >> The quest giver patrols along the entire road
    .unitscan Morin Cloudstalker
.target Morin Cloudstalker
>>Talk to |cRXP_FRIENDLY_Morin Cloudstalker|r
    .accept 749 >>Accept The Ravaged Caravan
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.2,53.4
.target Ahab Wheathoof
>>Talk to |cRXP_FRIENDLY_Ahab Wheathoof|r
    .accept 11129 >>Accept Kyle's Gone Missing!
step << !Tauren
#xprate <1.5
    .goto Mulgore,53.7,48.1
    >> Cross the lake then loot the chest in the middle of the caravan
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << !Tauren
#xprate <1.5
    .goto Mulgore,55.5,55.8
    >>Kill a plainstrider for Tender Strider Meat
    .collect 33009,1 --Collect Tender Strider Meat (1)
step << !Tauren
#xprate <1.5
    .line Mulgore,51.9,59.3,58.4,61.7,69.0,60.0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    .unitscan Morin Cloudstalker
.target Morin Cloudstalker
>>Talk to |cRXP_FRIENDLY_Morin Cloudstalker|r
    .turnin 751 >>Turn in The Ravaged Caravan
step << !Tauren
#xprate <1.5
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009 >> Find Kyle the Frenzied. He patrols clockwise throughout the town (so go counter-clockwise). Go up to him and use the Tender Strider Meat
    .unitscan Kyle the Frenzied
.complete 11129,1 --Kyle Fed (1)
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.3,53.3
.target Ahab Wheathoof
>>Talk to |cRXP_FRIENDLY_Ahab Wheathoof|r
    .turnin 11129 >>Turn in Kyle's Gone Missing!
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,32.0,66.9,20 >>Run to the lift and take it into Thunder Bluff
step << !Tauren !Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves << !Shaman wotlk
    .train 199 >>Train 2h Maces
step << Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 199 >>Train 2h Maces
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,45.6,52.0,15 >>Go up the tower
step << !Tauren
#xprate <1.5
    >>Go to the top floor of the tower
.goto Thunder Bluff,46.8,49.9
    .fp >>Get the Thunder Bluff Flight Path
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,29.6,29.7,15 >>Jump down into the cave
step << !Tauren
#xprate <1.5
    .goto Thunder Bluff,23.0,21.1
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 853 >>Turn in Apothecary Zamah
step << !Tauren
#xprate <1.5
    #completewith next
    .hs >>Hearth to Razor Hill
step
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>Talk to |cRXP_FRIENDLY_Misha Tor'kren|r
    .accept 816 >>Accept Lost But Not Forgotten
step
    .goto Durotar,46.4,22.9
.target Rezlak
>>Talk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
step
    >>Loot the small sacks on the ground
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.4,22.9
>>Talk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
.target Rezlak
    .accept 835 >>Accept Securing the Lines
step << wotlk
    .goto Durotar,42.103,15.0161
.target Rhinag
>>Talk to |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Accept Need for a Cure
step << tbc
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_This will start a 45 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    >>Talk to |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .target Rhinag
step
.goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,54.2,68.6
>>Talk to |cRXP_FRIENDLY_Innkeeper Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Accept Doras the Wind Rider Master
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,45.120,63.889
     >> Turn in the quests but do NOT fly back to The Crossroads
>>Talk to |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Turn in Doras the Wind Rider Master
.target Doras
    .accept 6386 >>Accept Return to the Crossroads.
step << Orc/Troll
    .goto Orgrimmar,34.340,36.328
    >> Cross the bridge from the flightpath tower
.target Vol'jin
>>Talk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 831 >>Turn in The Admiral's Orders
step
    .goto Orgrimmar,31.62,37.82
.target Thrall
>>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
step << Paladin
    .goto Orgrimmar,32.272,35.794
    .trainer >> Go and train your class spells
step
    .goto Orgrimmar,47.24,53.58
    >> Head into the Cleft of Shadow
.target Kor'ghan
>>Talk to |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Accept Finding the Antidote
step
    #completewith Fizzle
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Zone into Ragefire Chasm
	.xp >11,1
--/dump C_Map.GetBestMapForUnit("player")
step
    #completewith Fizzle
    .deathskip >> Die and respawn at the Spirit Healer
	.xp >11,1
--If player is 10 or lower
step
    #completewith next
    .goto Orgrimmar,49.0,94.2
    .zone Durotar >>Run out of Orgrimmar
	.xp <11,1
--If player is 11 or higher
step
    #label Fizzle
    >>Kill Fizzle and loot him for his Claw. Try to clear the mobs in the surrounding camps to make space
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step << !Warrior
    #completewith next
.goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
step << Warrior
    .goto Durotar,39.2,32.3
    >>Kill Lightning Hides for Singed Scales. Follow the arrow towards the exit while doing this.
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .isQuestComplete 1498
    #sticky
    #completewith next
.goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
step
    #completewith kronsamu
    .complete 813,1 --Venomtail Poison Sac (4)
step
    #label kronsamu
>>Start killing crocodiles for the Amulet
    >> Kill them while heading south. We're doing your totem quest next << Troll Shaman/Orc Shaman
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8,60,0
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8
    .complete 816,1 --Kron's Amulet (1)
step << Troll Shaman/Orc Shaman
    #completewith shamancallfire
    .complete 813,1 --Venomtail Poison Sac (4)
step << Troll Shaman/Orc Shaman
    #label shamancallfire
.goto Durotar,36.6,58.0,15 >>Run up the mountain path
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
>>Talk to |cRXP_FRIENDLY_Telf Joolam|r
    .turnin 1524 >>Turn in Call of Fire
.target Telf Joolam
    .accept 1525 >>Accept Call of Fire
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Razor Hill
step
.goto Durotar,52.24,43.15
>>Talk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 806 >>Turn in Dark Storms
.target Orgnil Soulscar
    .accept 828 >>Accept Margoz
step << Shaman
    #sticky
    #completewith next
    #level 12
    .trainer >>Train Ancestral Spirit if you're going to play with others
step << Shaman
    #level 12
    .goto Durotar,54.3,42.4
    .train 547 >>Train Healing Wave r3
    .train 1535 >>Train Fire Nova Totem
step << Warrior
    #level 12
    .goto Durotar,54.3,42.4
    .train 5242 >>Train Battle Shout r2
    .train 7384 >>Train Overpower
step << !Warrior
    .goto Durotar,54.4,42.2
.vendor >>Buy 6 slot bags from Jark until you can't equip new bags
step
    #xprate >1.499
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Turn in Encroachment
step
    >> Head out of Razor Hill to the east then head straight north
    .goto Durotar,55.6,36.6,80,0
    .goto Durotar,56.4,20.1
>>Talk to |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Turn in Margoz
.target Margoz
    .accept 827 >>Accept Skull Rock
step
    #sticky
    #completewith next
    >>Kill Scorpions for Poison Sacs as you travel
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
    #sticky
    #label Collars2
   .goto Durotar,51.8,10.0
>>Kill Burning Blade mobs in Skull Rock for Searing Collars and until Lieutenant's Insignia drops
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Orc Shaman/Troll Shaman/Orc Warrior/Troll Shaman/Troll Warrior
    .use 4945 >>Kill Gazz'uz for Eye of Burning Shadow. He can be in multiple areas of the cave. Use the Faintly Glowing Skull you saved from earlier, sticky glue on the voidwalker to reduce your damage taken, and Healing Potions to restore health. Use LoS (line of sight) to avoid his shadowbolts. Don't be afraid to die if it means killing and looting Gazz'uz
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .unitscan Gazz'uz
step << Tauren Shaman/Tauren Warrior/Undead Warrior/Paladin
    .use 4945 >>Kill Gazz'uz for Eye of Burning Shadow. He can be in multiple areas of the cave. Use healing potions to restore health if you have them. Use LoS (line of sight) to avoid his shadowbolts. Don't be afraid to die if it means killing and looting Gazz'uz
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .unitscan Gazz'uz
step
    #requires Collars2
    #sticky
    #completewith harpingme
    >>Kill Scorpions for Poison Sacs as you travel
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
.goto Durotar,56.4,20.1
>>Talk to |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Turn in Skull Rock
.target Margoz
    .accept 829 >>Accept Neeru Fireblade
step << Shaman
    .isOnQuest 1525
    .goto Durotar,56.3,28.0,60,0
    .goto Durotar,52.8,28.7,20 >> Head south then into the cave here, above the harpy area
step << Shaman
    >>Kill the Burning Blade Cultists for the Reagent Pouch
.goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,20 >> Leave the cave
step
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    >>Kill Harpies in the area
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Rezlak
step
    >>Return to Rezlak
    .goto Durotar,46.4,22.9
.target Rezlak
>>Talk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
step
    >>Kill Scorpions for Poison Sacs
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step << Warrior/Rogue
	.goto Orgrimmar,81.2,19.0
	.collect 25873,1 >> Purchase a Keen Throwing Knife from Zendo'jian
step
.goto Orgrimmar,31.62,37.82
>>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
.target Thrall
    .accept 5727 >> Accept Hidden Enemies << Shaman
step
    .goto Orgrimmar,47.24,53.58
.target Kor'ghan
>>Talk to |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Turn in Finding the Antidote
step
    .goto Orgrimmar,49.473,50.589
>>Talk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 829 >>Turn in Neeru Fireblade
.target Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
step
    .isOnQuest 832
    .goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>Talk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 832 >>Turn in Burning Shadows
step << Shaman
    .goto Orgrimmar,49.473,50.589
    >> Talk to Neeru Fireblade
    .complete 5727,1
    .skipgossip 3216,1
--If NPC has an active quest accept/turnin (available or unavailable) you must add NPCID,X (X being the TALK ONLY gossip, which is 1 99% of the time)
step
    #completewith LostBut
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Zone into Ragefire Chasm
step
    #completewith LostBut
    .deathskip >> Die and respawn at the Spirit Healer
step << tbc
    .goto Durotar,41.6,18.7
    >>You are still able to turn in this quest even if it shows 'missing pre-req'
.target Rhinag
>>Talk to |cRXP_FRIENDLY_Rhinag|r
    .turnin 812 >>Turn in Need for a Cure
step << wotlk
    .goto Durotar,42.103,15.0161
    >>You are still able to turn in this quest even if it shows 'missing pre-req'
.target Rhinag
>>Talk to |cRXP_FRIENDLY_Rhinag|r
    .turnin 812 >>Turn in Need for a Cure
step
    #label LostBut
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>Talk to |cRXP_FRIENDLY_Misha Tor'kren|r
    .turnin 816 >>Turn in Lost But Not Forgotten
step
    .goto The Barrens,62.3,20.1
>>Talk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Turn in Ak'Zeloth
.target Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
step
    .goto The Barrens,62.3,20.0
    >>Loot the Purple Stone next to Ak'Zeloth. This item has a 30 minute timer, so be sure to be quick
    .collect 4986,1
    .turnin 926 >>Turn in Flawed Power Stone
step << Warrior
    .goto The Barrens,61.4,21.1
>>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
.target Uzzek
    .accept 1502 >>Accept Thun'grim Firegaze
]])
