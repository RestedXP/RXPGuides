local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 1-6 Durotar
#version 1
#group RestedXP Horde 1-22
#defaultfor Troll/Orc
#next 6-10 Durotar

step << !Orc !Troll
    #completewith next
    +|cFFFCDC00You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kaltunk|r
    .accept 4641 >>Accept Your Place In The World
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cFFFCDC00Kill |cFFFF5722Mottled Boars|r. Loot them until you have 35 copper worth of vendor items (including your armor)|r << Warlock
    +|cFFFCDC00Kill |cFFFF5722Mottled Boars|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,50,0 << Warlock
    .goto Durotar,44.19,65.34,50,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ruzan|r
    .accept 1485 >>Accept Vile Familiars
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,43.49,67.35,30,0
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r << Shaman
    .train 6673 >>Train |T132333:0|t[Battle Shout] << Warrior
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Travel toward |cFF00FF25Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cFF00FF25Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cFF00FF25Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r << !Hunter
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>Kill |cFFFF5722Mottled Boars|r en route to the Burning Blade Coven
    >>|cFFFCDC00Try to get to level 2 before getting there|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >> Travel toward the Burning Blade Coven
    .isOnQuest 1485
step << Warlock
    .loop 50,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>Kill |cFFFF5722Vile Familiars|r. Loot them for |cFF00BCD4Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>Kill |cFFFF5722Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hana'zua|r
    .accept 790 >>Accept Sarkoth
    .target Hana'zua
step
    #label Sarkoth
	.goto Durotar,40.88,66.41,40,0
	.goto Durotar,40.41,66.64,40,0
	.goto Durotar,40.43,67.36,40,0
	.goto Durotar,40.72,67.39,40,0
	.loop 20,Durotar,40.88,66.41,40.41,66.64,40.43,67.36,40.72,67.39,40.88,66.41
    >>Kill |cFFFF5722Sarkoth|r. Loot him for |cFF00BCD4Sarkoth's Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hana'zua|r
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
    .target Hana'zua
step
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    >>Kill |cFFFF5722Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock/Warrior/Shaman/Hunter
    #som
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 2+870 >> Grind to 870+/900xp << Warlock
    .xp 3+760 >> Grind to 760+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #era
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+685 >> Grind to 685+/1400xp
    .mob Mottled Boar
step << Warlock
    #era
    #completewith Ruzan2
	>>|cFFFCDC00Grind |cFFFF5722Mottled Boars|r. Loot them until you have 1 silver worth of vendor items|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #som
    #completewith Ruzan2
	>>|cFFFCDC00Grind |cFFFF5722Mottled Boars|r. Loot them until you have 2 silver worth of vendor items|r << Warrior
	>>|cFFFCDC00Grind |cFFFF5722Mottled Boars|r. Loot them until you have 1 silver 75 copper worth of vendor items|r << Warlock
	>>|cFFFCDC00Grind |cFFFF5722Mottled Boars|r. Loot them until you have 1 silver 10 copper worth of vendor items|r << Hunter
	>>|cFFFCDC00Grind |cFFFF5722Mottled Boars|r. Loot them until you have 1 silver worth of vendor items|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ruzan|r
    .turnin 1485 >>Turn in Vile Familiars
    .accept 1499 >>Accept Vile Familiars
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .turnin 1499 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 788,2 >>Turn in Cutting Teeth << Shaman
    .turnin 788 >>Turn in Cutting Teeth << !Shaman
    .turnin 804,1 >>Turn in Sarkoth << Shaman
    .turnin 804 >>Turn in Sarkoth << !Shaman
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
    .accept 789 >>Accept Sting of the Scorpid
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Travel toward |cFF00FF25Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .train 53 >> Train |T132090:0|t[Backstab]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Travel toward |cFF00FF25Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cFF00FF25Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Nartok
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Galgar|r
    .accept 4402 >>Accept Galgar's Cactus Apple Surprise
    .target Galgar
step
    #era
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r << !Rogue !Warrior !Hunter
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter
step
    #som
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.0145 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #som
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.0115
    .itemcount 2512,<200
step << Hunter
    #som
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.0105
    .itemcount 2512,<200
step << Shaman
    #som
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #era
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .turnin 3086 >>Turn in Glyphic Tablet << Troll
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .accept 792 >>Accept Vile Familiars
    .target Zureetha Fargaze
step << Hunter
    #som
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
step << Hunter
    #era
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Warrior
    #som
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.02
step << Warrior
    #som
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
step << Warrior
    #era
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .accept 5441 >>Accept Lazy Peons
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Loot the |cFF00BCD4Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>Use the |T133486:0|t[Foreman's Blackjack] on sleeping |cFF00FF25Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Kill |cFFFF5722Scorpid Workers|r. Loot them for |cFF00BCD4Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>Kill |cFFFF5722Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    .loop 45,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>Kill |cFFFF5722Scorpid Workers|r. Loot them for |cFF00BCD4Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    .loop 40,Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
    >>Use the |T133486:0|t[Foreman's Blackjack] on sleeping |cFF00FF25Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #era
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 4 >> Grind to level 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r << !Rogue !Warrior !Hunter
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 789,2 >>Turn in Sting of the Scorpid << Shaman
    .turnin 789 >>Turn in Sting of the Scorpid << !Shaman
    .target Gornek
step << Shaman
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >> Train your class spells
    .money <0.021
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .turnin 792 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step << Hunter
    #era
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
step << Warrior
    #era
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #era
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 5441 >>Turn in Lazy Peons
    .accept 6394 >>Accept Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #era
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
    .loop 25,Durotar,44.67,64.92,43.45,62.96,43.82,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
    >>Loot the |cFF00BCD4Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #era
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    .xp 4+1720 >> Grind to 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #era
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
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
    .goto Durotar,43.72,53.79,10 >>Travel toward |cFF00BCD4Thazz'ril's Pick|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Kill |cFFFF5722Felstalkers|r. Loot them for |cFF00BCD4Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Loot |cFF00BCD4Thazz'ril's Pick|r against the wall
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.33,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>Travel toward |cFFFF5722Yarrog Baneshadow|r
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Kill |cFFFF5722Yarrog Baneshadow|r. Loot him for the |cFF00BCD4Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    >>Kill |cFFFF5722Felstalkers|r. Loot them for |cFF00BCD4Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #era
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    .xp 5+1635 >> Grind to 1635+/2800xp << !Shaman
    .xp 5+645 >> Grind to 645+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #era
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    .xp 5+1255 >> Grind to 1255+/2800xp << !Shaman
    .xp 5+265 >> Grind to 265+/2800xp << Shaman
    .isOnQuest 4402
step
    #softcore
    #completewith Betrayers
    .goto Durotar,44.70,52.47
    .deathskip >> |cFFFCDC00Alternatively, Die and respawn at the |cFF00FF25Spirit Healer|r near the arrow|r
    .target Spirit Healer
step
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cFFFCDC00Perform a Logout Skip by positioning your character on the edge of the rock until it looks like they're floating, then logging out and back in|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLICK HERE
step
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|cFFFCDC00You can talk to him from outside or on top of the bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gar'thok|r
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
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]. This will allow you to find |T135232:0|t[Rough Stones] from nodes in order to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
step
    #completewith next
    .hs >>Hearth to the Valley of Trials
    .use 6948
step
    #era
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #som
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
    .xp 5+1460,1 << !Shaman
    .xp 5,1 << Shaman
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .turnin 794 >>Turn in Burning Blade Medallion
    .accept 805 >>Accept Report to Sen'jin Village
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
	.accept 5649 >> Accept In Favor of Spirituality
	.train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Canaga|r
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Frang
step << Rogue
    #completewith Rwag2
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Travel toward |cFF00FF25Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .target Rwag
    .money <0.02
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cFF00FF25Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cFF0E8312from him|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Hraug
    .money <0.03
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Nartok
    .money <0.02
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Nartok
step << Warlock
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
    .goto Durotar,44.13,76.36,25 >>Travel toward the |cFFDB2EEFShaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>Use the |T134743:0|t[Earth Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Manifestation|r
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Turn in Call of Earth
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
step
    #som
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
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
#classic
<< Horde
#name 6-12 Durotar
#version 1
#group RestedXP Horde 1-22
#defaultfor Troll/Orc
#next 12-15 Tirisfal/Silverpine Forest << !Hunter
#next 12-15 The Barrens << Hunter

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ukor|r
    .accept 2161 >>Accept A Peon's Burden
    .target Ukor
step
	#era/som
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>Accept Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vel|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Accept Practical Prey
    .goto Durotar,55.95,73.93
    .accept 818 >>Accept A Solvent Spirit
    .goto Durotar,55.94,74.40
    .turnin 805 >>Turn in Report to Sen'jin Village
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Enter the big hut
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Buy |r |T135421:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #completewith Bonfire
    +Equip the |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Bonfire
    +Equip the |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Bonfire
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Bonfire
    +Equip the |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Bonfire
    +Equip the |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bonfire
    +Equip the |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Un'Thuwa
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals] |cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t[Rough Stones]|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_from them|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .skill mining,<1,1
step
    #era/som
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>Run down the beach. Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r. You do not have to finish this step here.
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #era/som
    .goto Durotar,52.20,83.00,75 >> Reach the end of the beach
    .isOnQuest 818
step
	#era/som
    .goto Durotar,50.9,79.2,30 >>Enter the Kolkar base
step
    .goto Durotar,50.9,79.2,40 >>Enter the Kolkar base
    .isOnQuest 786
step << Priest/Warlock
    #era/som
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you quest throughout Durotar. This will be used to make your wand later|r
    >>|cRXP_WARN_Skip this step if you've already bought a wand or can get one cheap from the AH.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest/Warlock
    #era/som
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you quest throughout Durotar. This will be used to make your wand later|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #era/som
    #completewith Bonfire
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_is up, he is a level 9 rare. You may have to use a |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it|r
    .unitscan Warlord Kolkanis
step
    #era/som
    >>Burn the |cRXP_PICK_Attack Plan|r inside the tent, on the ground
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    #era/som
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #era/som
    #label Bonfire
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
	#era/som
    #softcore
    .goto Durotar,57.5,73.3,50,0
    .deathskip >> Die at the Bonfire and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or run back
    .isQuestComplete 786
step
    #era/som
    #hardcore
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Leave the Kolkar base
    .isQuestComplete 786
step
    #hardcore
    #era/som
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>Turn in Thwarting Kolkar Aggression << Shaman
    .turnin 786 >>Turn in Thwarting Kolkar Aggression << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step << Shaman
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #era/som
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #era/som
    #completewith TravelToTiragarde
    +Equip the |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #era/som
    #completewith TravelToTiragarde
    +Equip the |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #era/som
    #completewith TravelToTiragarde
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #era/som
    #completewith TravelToTiragarde
    +Equip the |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #era/som
    #completewith TravelToTiragarde
    +Equip the |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #era/som
    #completewith TravelToTiragarde
    +Equip the |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #era/som
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
    .target Master Vornal
    .isQuestComplete 818
step
    #era/som
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Warrior/Rogue/Shaman
    .vendor >> Vendor trash
    .collect 2287,10,823,1 --Haunch of Meat (10) << Warrior/Rogue/Shaman
    .money <0.025 << Warrior/Rogue/Shaman
    .target Hai'zan
step
    #softcore
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>Turn in Thwarting Kolkar Aggression << Shaman
    .turnin 786 >>Turn in Thwarting Kolkar Aggression << !Shaman
    .target Lar Prowltusk
step
    #phase 3-6
    .goto Durotar,54.42,62.64,60,0
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Travel to Tiragarde Keep
    .isOnQuest 784
step
    #era/som
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Travel to Tiragarde Keep. Grind mobs on the way
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Watch Commander Zalaphil|r |cRXP_WARN_is up, he is a level 9 rare. You may have to use a a |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Move toward the second floor of the keep
step
    #completewith AgedEnvelope
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>Move upstairs and loot |cRXP_PICK_Benedict's Chest|r for an |T133471:0|t[|cFF00BCD4Aged Envelope|r] and accept the quest from the item
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
    .use 4881
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r and Loot them for their |cRXP_LOOT_Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest
    #era
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+2180 >> Grind to 2200+/4500xp
step << !Priest
    #som
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+2180 >> Grind to 1280+/4500xp
step << Priest
    #era
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+1730 >> Grind to 1750+/4500xp
step << Priest
    #som
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+1730 >> Grind to 650+/4500xp
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >> Die at the northern tower outside of Tiragarde Keep and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >> Travel to Razor Hill
step
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r and |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
    .goto Durotar,52.25,43.18
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 825 >>Accept From The Wreckage....
    .accept 831 >>Accept The Admiral's Orders
    .accept 837 >>Accept Encroachment
    .goto Durotar,51.95,43.50
    .accept 815 >>Accept Break a Few Eggs
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
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
    .turnin 791 >>Turn in Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575,1 >> Train |T136248:0|t[Mining]. This will allow you to find |T135232:0|t[Rough Stones] from nodes in order to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018,1 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,818,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Toolboxes
    +Equip the |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Toolboxes
    +Equip the |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Toolboxes
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Toolboxes
    +Equip the |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Toolboxes
    +Equip the |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #completewith Toolboxes
    +Equip the |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ghrawt. Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from him|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Train your class spells
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Train your class spells
    .target Swart
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >> Use the |T133738:0|t[Grimoire of Firebolt Rank 2]
    .use 16302
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r
    .train 5116 >> Train your class spells
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Train your class spells
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> In Favor of Spirituality
    .accept 5648 >> Garments of Spirituality
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Cast |T135929:0|t[Lesser Heal] and |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Turn in Garments of Spirituality
    .trainer >> Train your class spells
    .target Tai'jin
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >> Vendor Trash
    .home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Turn in A Peon's Burden
    .collect 1179,10,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (10)
    .collect 2287,10,818,1 << Rogue/Warrior --Haunch of Meat (10)
    .target Innkeeper Grosk
    .money <0.025
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r. This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label Tools
    >>Loot the |cRXP_PICK_Gnomish Toolboxes|r inside and around the boats
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Swim to the Island
step
    #completewith Fur
    >>Kill |cRXP_ENEMY_Tigers|r. Loot them for their |cRXP_LOOT_Fur|r. This does not need to be finished now
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label TaillasherEggs
    .loop 25,Durotar,67.74,69.86,67.04,71.40,67.66,73.86,68.67,74.47,69.76,74.69,70.29,73.31,70.23,70.84,69.69,70.35,69.21,69.69,67.74,69.86
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground. They're usually guarded by a |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Swim to the main island
step
    #completewith MinshinasSkull
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r.
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Loot one of the |cRXP_LOOT_Skulls|r on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    .loop 25,Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r.
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44
    >>Kill |cRXP_ENEMY_Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    .goto Durotar,59.64,73.84
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #softcore
    #completewith Zalazaneturnin
    .goto Durotar,57.5,73.3,50,0
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or run back
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Travel to Sen'Jin Village
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash and repair. You can talk to him from outside the hut
    .target Trayexir
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Train your class spells
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826,2 >>Turn in Zalazane << Shaman
    .turnin 826 >>Turn in Zalazane << !Shaman
    .goto Durotar,55.95,74.73
    .turnin 818 >>Turn in A Solvent Spirit
    .goto Durotar,55.95,74.39
    .turnin 817 >>Turn in Practical Prey
    .goto Durotar,55.95,73.93
    .target Master Gadrin
    .target Master Vornal
    .target Vel'rin Fang
step
    #completewith Stolensupplies
    +|cRXP_WARN_Bind your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_and|r |T134712:0|t[Really Sticky Glue]|cRXP_WARN_. Save them for emergency situations|r
step
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
    .mob Razormane Quilboar
    .mob Razormane Scout
step << Shaman/Hunter
    .loop 25,Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step << Shaman/Hunter
    #era
    .loop 25,Durotar,47.52,48.67,46.12,45.47,43.65,43.91,41.68,44.69,41.00,46.13,42.47,48.50,44.21,49.68,47.17,49.44,47.52,48.67
    .xp 9+4470 >> Grind to 4470+/6500xp
step << Shaman/Hunter
    #som
    .loop 25,Durotar,47.52,48.67,46.12,45.47,43.65,43.91,41.68,44.69,41.00,46.13,42.47,48.50,44.21,49.68,47.17,49.44,47.52,48.67
    .xp 9+3660 >> Grind to 3660+/6500xp
step << Shaman/Hunter
    #phase 3-6
    .loop 25,Durotar,47.52,48.67,46.12,45.47,43.65,43.91,41.68,44.69,41.00,46.13,42.47,48.50,44.21,49.68,47.17,49.44,47.52,48.67
    .xp 9+2440 >> Grind to 2440+/6500xp
step
    #softcore
    #completewith RazorTurnins2
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or run to Razor Hill
step
    #hardcore
    #completewith RazorTurnins2
    .goto Durotar,51.95,43.50,100 >>Run to Razor Hill
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Turn in Break a Few Eggs
    .goto Durotar,51.12,42.46
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
    .isQuestComplete 837
step
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Turn in Break a Few Eggs
    .goto Durotar,51.12,42.46
    .turnin 825 >>Turn in From The Wreckage....
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r
    .accept 6062 >>Accept Taming the Beast
    .trainer >> Train your class spells
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ghrawt|r
    .collect 2515,1200,837,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .accept 2983 >>Accept Call of Fire
    .trainer >> Train your class spells
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Train your class spells
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    .train 20270 >> Use the |T133738:0|t[Grimoire of Firebolt Rank 2]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Train your class spells
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Accept Hex of Weakness << Troll
    .accept 5660 >> Accept Touch of Weakness << Undead
    .trainer >> Train your class spells
    .target Tai'jin
    .xp <10,1
step << Hunter
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51
    .use 15917 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Dire Mottled Boar|r |cRXP_WARN_at max range|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 15917
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r
    .turnin 6062 >>Turn in Taming the Beast
    .accept 6083 >>Accept Taming the Beast
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r
    .accept 6083 >>Accept Taming the Beast
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38
    >>|cRXP_WARN_Don't kill the|r |cRXP_ENEMY_Armored Scorpids|r |cRXP_WARN_you see. You'll need them later|r
    .use 15919 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Surf Crawler|r |cRXP_WARN_at max range|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r
    .turnin 6083 >>Turn in Taming the Beast
    .accept 6082 >>Accept Taming the Beast
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .goto Durotar,54.84,36.94
    .use 15920 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Armored Scorpid|r |cRXP_WARN_at max range|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r
    .turnin 6082 >>Turn in Taming the Beast
    .accept 6081 >>Accept Training the Beast
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Buy|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from him|r. |cRXP_BUY_You will use this to feed your pet later|r
    .vendor >> Vendor Trash
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
    .xp <10,1
step
    .loop 25,Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
    step << Shaman
    #completewith next
    .zone The Barrens >> Travel to The Barrens
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >> Travel back to Durotar
    .zoneskip Durotar
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain to |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Travel the path back down the mountain
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #completewith next
    .zone The Barrens >> Travel back to The Barrens
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>Kill a |cRXP_ENEMY_Razormane Water Seeker|r or |cRXP_ENEMY_Razormane Thornweaver|r. Loot them for a |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #softcore
    #completewith ShamanXroadsvisit1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or run to the Crossroads
step << Shaman
    #hardcore
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> Travel to The Crossroads
step << Shaman
    #label ShamanXroadsvisit1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Gazrog|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .goto The Barrens,52.62,29.84
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .goto The Barrens,52.23,31.00
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .goto The Barrens,51.50,30.87
    .accept 869 >>Accept Raptor Thieves
    .goto The Barrens,51.93,30.32
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .target Gazrog
step << Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Devrak
step << Shaman
    #completewith Gryhskaturnin1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith NeedforaCureAccept
    +Equip the |T135154:0|t[Quarter Staff] when you are level 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
step << Shaman
    #label LeaveOrg
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << Shaman
    #label NeedforaCureAccept
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .target Rhinag
step << Hunter/Shaman
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Accept Lost But Not Forgotten
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Jump into Thunder Ridge << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Cast|r |T136095:0|t[Dismiss Pet] |cRXP_WARN_and then jump into Thunder Ridge|r << Hunter
    >>|cRXP_WARN_Dismiss your imp and then jump into Thunder Ridge|r << Warlock
step
    .goto Durotar,42.13,26.67
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional burning blade mobs|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast |T136071:0|t[polymorph] on |cRXP_ENEMY_Fizzle|r and kill the |cRXP_ENEMY_Imp|r first << Mage
    >>|cRXP_WARN_Kill the imp first.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #softcore
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 806
step
    #hardcore
    #completewith next
    .goto Durotar,39.20,32.02,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
step << !Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Travel to Rezlak
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step << !Hunter
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .goto Durotar,49.70,21.90
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
step << Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .target Rhinag
step << Hunter
    #completewith BeastTraining
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Enter Orgrimmar
    .zoneskip Orgrimmar
step << Hunter
    .goto Orgrimmar,34.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Hunter
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Accept Finding the Antidote
    .target Kor'ghan
    .isOnQuest 812
step << Hunter
    #completewith BeastTraining
    >>|cRXP_WARN_Abandon Need for a Cure. This will remove the timer on the quest but you will still be able to do it|r
    .abandon 812 >>Abandon Need for a Cure
    .isOnQuest 812
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Travel to the Valley of Honor
step << Hunter
    #label BeastTraining
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Turn in Training the Beast
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Train your pet spells
    .target Xao'tsu
step << Hunter
    #completewith Rezlak
    +|cRXP_WARN_Drag|r |T132162:0|t[Beast Training] |cRXP_WARN_onto your Action Bars. Teach skills to your pet|r
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #completewith Rezlak
    +Equip the |T135499:0|t[Laminated Recurve Bow] when you are level 11
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    .hs >> Hearth to Razor Hill
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >> Vendor Trash
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
    .goto Durotar,51.95,43.50
    .target Orgnil Soulscar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Turn in Encroachment
    .goto Durotar,51.95,43.50
    .target Gar'Thok
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546,1 >> Train your class spells
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050,1 >> Train your class spells
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120,1 >> Train your class spells
    .target Dhugru Gorelust
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r
    .train 13549,1 >> Train your class spells
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674,1 >> Train your class spells
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .train 8092,1 >> Train your class spells
    .target Tai'jin
step << Hunter
    #completewith MargozTurnIn
    +Tame a pet. A |cRXP_ENEMY_Scorpid|r or |cRXP_ENEMY_Raptor|r will have the highest dps
    .mob Venomtail Scorpid
    .mob Bloodtalon Scythemaw
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> Travel to |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
    .target Margoz
    .isQuestTurnedIn 806
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Travel toward Skull Rock
    .isQuestTurnedIn 828
step
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>Kill |cRXP_ENEMY_ Burning Blade Thugs|r, |cRXP_ENEMY_Neophytes|r and |cRXP_ENEMY_Cultists|r. Loot them for their |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>Kill |cRXP_ENEMY_Thugs|r and |cRXP_ENEMY_Neophytes|r. Loot them for their |cRXP_LOOT_Collars|r
    >>Kill |cRXP_ENEMY_Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 827,1 --Searing Collar (6)
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>Kill |cRXP_ENEMY_Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Travel to |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 828
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
step << Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Travel to Rezlak
step << Hunter
    #label Rezlak
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step << Hunter
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .goto Durotar,49.70,21.90
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step << Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Travel through the cave
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>Kill |cRXP_ENEMY_Dustwind Savages|r and |cRXP_ENEMY_Dustwind Storm Witches|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Pick the|r |T135158:0|t[Blemished Wooden Staff] |cRXP_WARN_as your quest reward and save it. You will get staff training in Orgrimmar|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .target Rezlak
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Enter Orgrimmar
step << !Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Trak'gen|r
    .vendor >> Vendor your trash
    .target K'waii
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Buy |r |T135419:0|t[Sharp Throwing Axe] |cRXP_BUY_from him|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >> Vendor your trash
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #completewith ZeptoUC1
    +Equip the |T135421:0|t[Sharp Throwing Axe] when you are level 11
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith ZeptoUC1
    +Equip the |T135154:0|t[Quarter Staff] when you are level 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
    .isOnQuest 6385
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Turn in Hex of Weakness
    .trainer >> Train your class spells
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Turn in Hex of Weakness
    .trainer >> Train your class spells
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r
    .train 122 >> Train your class spells
    .target Pephredo
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132395:0|t[Tabar] (22s 14c). You'll come back later if you don't have enough yet
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Buy a|r |T132395:0|t[Tabar] |cRXP_BUY_from him|r
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #completewith ZeptoUC1
    +Equip the |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >> Travel to the Valley of Honor
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Train your class spells
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Train Staves
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #completewith ZeptoUC1
    +Equip the |T135154:0|t[Quarter Staff] when you are level 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Accept The Shattered Hand << Orc Rogue/Troll Rogue
    .target Therzok
step << Shaman
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Accept Finding the Antidote
    .target Kor'ghan
    .isOnQuest 812
step << Shaman
    #completewith CallofFire3
    >>|cRXP_WARN_Abandon Need for a Cure. This will remove the timer on the quest but you will still be able to do it|r
    .abandon 812 >>Abandon Need for a Cure
    .isOnQuest 812
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Train your class spells
    .target Mirket
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << !Hunter !Shaman
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,52.77,48.97,10,0
    .deathskip >> Enter RFC to die on purpose. Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Hunter !Shaman
    #hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << Hunter/Shaman
    #softcore
    #completewith VenomPoisonSacs
    .goto Orgrimmar,52.77,48.97,10,0
    .deathskip >> Enter RFC to die on purpose. Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Hunter/Shaman
    #hardcore
    #completewith VenomPoisonSacs
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    #label VenomPoisonSacs
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    .goto Durotar,38.89,16.91
    >>Kill |cRXP_ENEMY_Venomtail Scorpids|r. Loot them for their |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << Hunter
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Travel south alongside the river toward Far Watch Post
    >>Kill |cRXP_ENEMY_Dreadmaw Crocolisks|r on the way. Loot them for |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Skip and abandon this quest if it won't drop|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>Travel south alongside the river. Kill |cRXP_ENEMY_Dreadmaw Crocolisks|r on the way. Loot them for |cRXP_LOOT_Kron's Amulet|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>Use the |T134732:0|t[Fire Sapta]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Kill the |cRXP_ENEMY_Minor Manifestation of Fire|r. Loot him for a |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Click the |cRXP_PICK_Brazier|r on the ground
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Travel the path back down the mountain
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>Kill |cRXP_ENEMY_Dreadmaw Crocolisks|r. Loot them for |cRXP_LOOT_Kron's Amulet|r.
    >>|cRXP_WARN_Skip and abandon this quest if it won't drop|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Turn in Lost But Not Forgotten
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Shaman/Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Shaman/Hunter
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Loot the|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_next to|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. This item has a 30 minute timer, so be sure to be quick|r
    .turnin 926 >>Turn in Flawed Power Stone
    .isOnQuest 924
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
step << Hunter
    #softcore
    #completewith HunterCrossRoadsVisit1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Hunter
    #hardcore
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> Travel to The Crossroads
step << Hunter
    #label HunterCrossRoadsVisit1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Thork|r and |cRXP_FRIENDLY_Gazrog|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .goto The Barrens,52.62,29.84
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .goto The Barrens,52.23,31.00
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .goto The Barrens,51.50,30.87
    .accept 869 >>Accept Raptor Thieves
    .goto The Barrens,51.93,30.32
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .target Gazrog
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Hunter
    #completewith DisruptTheAttacks
    +Equip the |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman
    .goto The Barrens,55.78,20.00
    >>Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    #completewith next
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step << Hunter
    .goto The Barrens,55.70,27.30
    >>Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step << Shaman/Hunter
    #label DisruptTheAttacks
    .loop 25,The Barrens,53.63,24.50,54.26,24.64,54.81,25.19,55.50,25.61,55.86,26.3,55.83,27.15,55.41,27.41,54.50,26.97,54.05,26.11,53.51,25.24,53.63,24.50
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step << Shaman/Hunter
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Shaman/Hunter
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> Travel to the top of the mountain
    .isOnQuest 924
step << Shaman/Hunter
    #completewith next
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Rathorian|r |cRXP_WARN_is up, he is a level 15 rare. Be ready to use your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_and|r |T134712:0|t[Really Sticky Glue] |cRXP_WARN_if needed|r
    .unitscan Rathorian
step << Shaman/Hunter
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Right click the Altar. Make sure you have a |T134095:0|t[Flawed Power Stone] on you
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Hunter
    .loop 25,The Barrens,53.12,28.72,53.97,28.10,54.64,27.09,55.47,26.94,55.44,25.70,55.51,24.54,54.75,23.51,53.74,23.66,53.35,25.16,52.99,26.88,53.12,28.72
    .xp 11+ >> Grind to 6980/8800xp
step << Hunter/Shaman
    #softcore
    #completewith Crossroadsvisit2
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 924
step << Shaman/Hunter
    #hardcore
    #completewith Crossroadsvisit2
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >> Travel down the mountain where you came from
    .isQuestComplete 924
step << Shaman/Hunter
    #label Crossroadsvisit2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Thork|r
    .turnin 6386 >> Turn in Return to the Crossroads
    .goto The Barrens,51.50,30.87
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 845 >>Accept The Zhevra
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Turn in The Disruption Ends
    .accept 872 >>Accept Disrupt the Attacks
    .goto The Barrens,51.50,30.87
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .isOnQuest 6386
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Thork|r
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 845 >>Accept The Zhevra
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Turn in The Disruption Ends
    .accept 872 >>Accept Disrupt the Attacks
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step << Shaman/Hunter
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Shaman
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Hunter
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Hunter
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
step << Hunter
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
step << Shaman/Hunter
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Turn in Finding the Antidote
    .target Kor'ghan
    .isQuestComplete 813
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 547 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <12,1
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135154:0|t[Quarter Staff] (30s 22c). You'll get it later if you don't have enough yet
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith ZeptoUC1
    +Equip the |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Travel to the Valley of Honor
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormakl|r
    .train 14281 >> Train your class spells
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >>Train your pet spells
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #completewith ZeptoUC1
    +Equip the |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto Orgrimmar,52.77,48.97,10,0
    .deathskip >> Enter RFC to die on purpose. Respawn at the |cRXP_FRIENDLY_Spirit Healer|r. Alternatively, run out of Orgrimmar
step << Shaman/Hunter
    #softcore
    #label Leaveorg2
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    #label FoundtheCure
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .turnin 812 >>Turn in Need for a Cure
    .target Rhinag
step << !Hunter
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    .zoneskip Tirisfal Glades
step << Hunter
    .hs >>Hearth to the Crossroads
    .use 6948

]])


RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 12-15 Tirisfal/Silverpine Forest
#version 1
#group RestedXP Horde 1-22
#defaultfor Troll/Orc
#next 15-19 The Barrens

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ in the Rogue's Quarter. Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,398,1 --Collect Cutlass (1)
    .money <0.2023
    .skill Swords,<1,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Orc Rogue/Troll Rogue
    #completewith KillDevlin
    +Equip the |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Skip in the Magic Quarter by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
    .zoneskip Tirisfal Glades
step
    #completewith DeliverytoSPF
    .goto Tirisfal Glades,61.52,53.20,80 >> Travel to Brill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r and |cRXP_FRIENDLY_Gretchen|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .accept 354 >>Accept Deaths in the Family
    .accept 362 >>Accept The Haunted Mills
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Accept The Chill of Death
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << !Warlock
    .maxlevel 13 << Warrior
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Accept Speak with Dillinger
    .target Austil de Mon << Warrior
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron|r inside the inn
    .accept 1478 >> Accept Halgar's Summons
    .target Ageron Kargal
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .accept 1885 >>Accept Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r, |cRXP_FRIENDLY_Gretchen|r and |cRXP_FRIENDLY_Anastasia|r inside the inn
    .accept 1881 >> Accept Speak with Anatasia
    .target Anastasia Hartwell
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r <<Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .vendor >> Vendor Trash
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mrs. Winters|r
    >>|cRXP_BUY_Buy one or more|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>Accept Wanted: Maggot Eye
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r inside the building
    .accept 358 >>Accept Graverobbers
    .target Magistrate Sevren
    .maxlevel 11 !Warrior !Warlock
    .maxlevel 12 << Warrior/Warlock
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .accept 367 >>Accept A New Plague
    .target Apothecary Johaanstep
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #label DeliverytoSPF
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Accept A Putrid Task
    .target Deathguard Dillinger
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Turn in Speak with Dillinger
    .accept 1819 >> Accept Ulag the Cleaver
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Click the|r |cRXP_WARN_Mausoleum Trigger|r |cRXP_WARN_on the ground. This will summon|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Kill him|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Turn in Ulag the Cleaver
    .accept 1820 >> Accept Speak with Coleman
    .target Deathguard Dillinger
step
    #completewith Pumpkins
    >>Kill any |cRXP_ENEMY_Darkhound|r you see. Loot them for their |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_You will receive|r |T133849:0|t[Slumber Sand] |cRXP_WARN_from the follow-up of this quest|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .isOnQuest 367
step
    #label Claws
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98
    >>Kill |cRXP_ENEMY_Rotting Dead|r and |cRXP_ENEMY_Ravaged Corpses|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #completewith Pumpkins
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Accept Fields of Grief
    .target Deathguard Simmer
    .maxlevel 10
step
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>Loot the |cRXP_LOOT_Pumpkins|r found in the field.
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    .loop 25,Tirisfal Glades,33.73,49.34,33.65,51.07,31.78,51.36,30.02,50.48,29.91,49.24,30.62,47.53,31.01,46.50,32.15,44.83,33.73,45.29,34.10,47.88,33.73,49.34
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #label Darkhounds1
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51
    >>Kill any |cRXP_ENEMY_Darkhound|r you see. Loot them for their |cRXP_LOOT_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step
    #softcore
    #completewith Brillturnins2
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith Brillturnins2
    .goto Tirisfal Glades,58.20,51.43,120 >> Travel back to Brill
step
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 404 >>Turn in A Putrid Task
    .accept 426 >>Accept The Mills Overrun
    .isQuestComplete 404
    .target Deathguard Dillinger
step
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .accept 426 >>Accept The Mills Overrun
    .isQuestTurnedIn 404
    .target Deathguard Dillinger
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Turn in A New Plague
    .accept 368 >>Accept A New Plague
    .isQuestComplete 367
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Accept A New Plague
    .isQuestTurnedIn 367
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 365 >> Turn in Fields of Grief
    .accept 407 >> Accept Fields of Grief
    .isQuestComplete 365
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 407 >> Accept Fields of Grief
    .isQuestTurnedIn 365
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Turn in At War With The Scarlet Crusade
    .accept 370 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestComplete 427
step
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .accept 370 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r
    .accept 374 >>Accept Proof of Demise
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step
    .goto Tirisfal Glades,61.97,51.29
    >>|cRXP_WARN_Enter the room behind the innkeeper, then go downstairs|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Scarlet Zealot|r
    .turnin 407 >>Turn in Fields of Grief
    .target Captured Scarlet Zealot
    .isOnQuest 407
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1478 >> Turn in Halgar's Summons
    .accept 1473 >> Accept Creature of the Void
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r in the Magic Quarter
    .turnin 1881 >> Turn in Speak with Anatasia
    .accept 1882 >> Accept The Balnir Farmstead
    .target Anastasia Hartwell
step << Undead Priest
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step << Undead Priest
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step << Undead Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Accept Touch of Weakness
    .turnin 5658 >> Turn in Touch of Weakness
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Turn in Mennet Carkad
    .accept 1886 >>Accept The Deathstalkers
    .target Mennet Carkad
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
    .money <0.3023
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ in the Rogue's Quarter. Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,398,1 --Collect Cutlass (1)
    .money <0.2023
    .skill Swords,<1,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #completewith KillDevlin
    +Equip the |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warlock/Mage/Rogue
    #completewith KillDevlin
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step << Undead Priest
    #completewith KillDevlin
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step
    #completewith ScarletCrusade1
    >>Collect |cRXP_LOOT_Scarlet Insignia Rings|r. You don't have to complete this step now
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Loot |cRXP_PICK_Perrine's Chest|r for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    .loop 25,Tirisfal Glades,50.07,68.87,50.23,66.94,51.16,65.73,51.75,66.04,52.93,67.62,52.72,69.33,51.96,69.57,51.03,69.55
    >>Kill |cRXP_ENEMY_Captain Perrine|r, |cRXP_ENEMY_Zealots|r and |cRXP_ENEMY_Missionaries|r.
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .mob Captain Perrine
    .mob Scarlet Zealot
    .mob Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Loot |cRXP_PICK_Perrine's Chest|r on the ground for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.07,71.51,50,0
    .zone Undercity >> Travel back into the Undercity through the sewers
step << Warlock
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1473 >> Turn in Creature of the Void
    .accept 1471 >> Accept The Binding
    .target Carendin Halgar
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>Use the |T134416:0|t[Runes of Summoning] at the Summoning Circle
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Turn in The Binding
    .target Carendin Halgar
step << Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >> Exit Undercity
    .zoneskip Tirisfal Glades



step
    #completewith next
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    .goto Tirisfal Glades,47.60,44.03,150 >> Travel northwest toward Agamand Mills
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cFF00BCD4Thurman's Letter|r] |cRXP_WARN_may drop from these mobs. Accept the quest if it does|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Accept A Letter Undelivered
    .use 2839
step
    #sticky
    #label MillsOverun
    >>Kill |cRXP_ENEMY_Soldiers|r and |cRXP_ENEMY_Bonecasters|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .isOnQuest 426
step
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Kill |cRXP_ENEMY_Devlin|r. Loot him for his |cRXP_LOOT_Remains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    .goto Tirisfal Glades,49.34,36.02
    >>Kill |cRXP_ENEMY_Nissa|r. Loot her for her |cRXP_LOOT_Remains|r. She can be inside the building
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #label ThurmanGregor
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >>Kill |cRXP_ENEMY_Thurman|r and |cRXP_ENEMY_Gregor|r. Loot them for their |cRXP_LOOT_Remains|r. They can patrol around
    .complete 354,3 --Thurman's Remains (1)
    .complete 354,1 --Gregor's Remains (1)
    .unitscan Thurman Agamand
    .unitscan Gregor Agamand
    .isOnQuest 354
step
    #requires MillsOverun
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Travel down the hills.
    >>|cRXP_WARN_Be careful. Don't take too much fall damage. Follow the waypoint for safety|r
    .isQuestComplete 354
step
    #requires MillsOverun
    #completewith next
    >>Kill |cRXP_ENEMY_Gnolls|r and |cRXP_ENEMY_Mongrels|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Kill |cRXP_ENEMY_Maggot Eye|r. Loot him for his |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Kill |cRXP_ENEMY_Murlocs|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #completewith RotHideGnolls
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #label RotHideGnolls
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Kill |cRXP_ENEMY_Mongrels|r and |cRXP_ENEMY_Graverobbers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #softcore
    #completewith 
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith
    .subzone 159 >> Travel to Brill













RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 12-15 Tirisfal/Silverpine Forest
#version 1
#group RestedXP Horde 1-22
#defaultfor Troll/Orc
#next 11-14 Silverpine Forest << Troll Rogue/Orc Rogue
#next 12-17 The Barrens << Troll !Rogue/Orc !Rogue

step << Hunter
    #completewith next
    .goto Durotar,52.98,41.03
    >>Buy the Laminated Recurve Bow (and arrows) from the vendor if you can afford it
    .collect 2507,1 --Laminated Recurve Bow (1)
step
    .goto Durotar,50.8,43.6
.target Takrin Pathseeker
>>Talk to |cFF00FF25Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
step << Warrior/Shaman
    .goto The Barrens,62.2,19.4
>>Talk to |cFF00FF25Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
.target Kargal Battlescar
    .accept 842 >>Accept Crossroads Conscription
step << Warrior
    .goto The Barrens,61.4,21.1
>>Talk to |cFF00FF25Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
.target Uzzek
    .accept 1498 >>Accept Path of Defense
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.8,20.0
>>Talk to |cFF00FF25Kranal Fiss|r
    .turnin 2983 >>Turn in Call of Fire
.target Kranal Fiss
    .accept 1524 >>Accept Call of Fire
step << Warrior/Shaman
    .goto The Barrens,52.0,30.5,150 >> Run to the Crossroads
step << Warrior/Shaman
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Talk to |cFF00FF25Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
step << Warrior/Shaman
    .goto The Barrens,52.2,31.0
>>Talk to |cFF00FF25Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << !Tauren Warrior/!Tauren Shaman
    .goto The Barrens,52.5,29.8
.target Zargh
>>Talk to |cFF00FF25Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
step << Warrior/Shaman
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Talk to |cFF00FF25Gazrog|r
    .accept 869 >>Accept Raptor Thieves
step << Warrior/Shaman
    .goto The Barrens,51.5,30.8
.target Thork
>>Talk to |cFF00FF25Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << Warrior/Shaman
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Get the The Crossroads flight path
step << !Tauren Warrior/!Tauren Shaman
    >>do NOT go to Orgrimmar
    .goto The Barrens,51.5,30.3
>>Talk to |cFF00FF25Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
.target Devrak
    .accept 6384 >>Accept Ride to Orgrimmar << !Rogue
step << Warrior/Shaman
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cFF00FF25Apothecary Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
step << Warrior/Shaman
    #hardcore
    #sticky
    #completewith next
    +This next quest can be quite hard, be extra careful
step << Warrior/Shaman
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    >>Dive underwater to the bubble fissure
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
    >>Collect the white mushrooms around The Forgotten Pools
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .goto The Barrens,45.2,23.3
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step << Warrior/Shaman
    #softcore
>>Talk to |cFF00FF25Apothecary Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
.target Apothecary Helbrim
    .accept 853 >>Accept Apothecary Zamah
step << Warrior/Shaman
    #hardcore
    >>Run back to The Crossroads
    .goto The Barrens,51.5,30.1
>>Talk to |cFF00FF25Apothecary Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
.target Apothecary Helbrim
    .accept 853 >>Accept Apothecary Zamah
step << Warrior/Shaman
    .goto The Barrens,52.2,31.8
>>Talk to |cFF00FF25Tonga Runetotem|r
    .turnin 870 >>Turn in The Forgotten Pools
.target Tonga Runetotem
    .accept 877 >>Accept The Stagnant Oasis
step << Warrior/Shaman
    >>Run down the road. Be careful of higher level mobs en route
    .goto The Barrens,44.4,59.2
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
step << Warrior/Shaman
    >>Go west into Mulgore and Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,51.1,58.6
.target Morin Cloudstalker
>>Talk to |cFF00FF25Morin Cloudstalker|r
    .accept 749 >>Accept The Ravaged Caravan
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
	#som
	#phase 3-6
    .goto Mulgore,53.7,48.1
    .turnin 749 >>Turn in The Ravaged Caravan
step << Warrior/Shaman
	#era/som
    .goto Mulgore,48.715,59.325
.target Harken Windtotem
>>Talk to |cFF00FF25Harken Windtotem|r
    .accept 761 >>Accept Swoop Hunting
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.513,60.164
.target Baine Bloodhoof
>>Talk to |cFF00FF25Baine Bloodhoof|r
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.3,62.0
.target Ruul Eagletalon
>>Talk to |cFF00FF25Ruul Eagletalon|r
    .accept 743 >>Accept Dangers of the Windfury
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.8,57.6
>>Talk to |cFF00FF25Zarlman Two-Moons|r
    .turnin 767 >>Turn in Rite of Vision
.target Zarlman Two-Moons
    .accept 771 >>Accept Rite of Vision
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.0,57.0
.target Maur Raincaller
>>Talk to |cFF00FF25Maur Raincaller|r
    .accept 766 >>Accept Mazzranache
step << Warrior/Shaman
	#era/som
    #sticky
    #label Mulgoreall
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
	#era/som
	#completewith CaravanR
	.use 4854 >>Keep an eye out for Ghost Howl (rare wolf). He patrols all over northern Mulgore. Kill and loot him for the Demon Scarred Cloak. Accept the quest from the item
	.collect 4854,1,770
	.unitscan Ghost Howl
step << Warrior/Shaman
	#era/som
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,10,0
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,0
    >>Collect the 'Acorn' looking items on the ground, below the trees
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,53.7,66.3
    >>Loot the stones around the Well
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
	#era/som
   .goto Mulgore,47.8,57.5
>>Talk to |cFF00FF25Zarlman Two-Moons|r
    .turnin 771 >>Turn in Rite of Vision
.target Zarlman Two-Moons
    .accept 772 >>Accept Rite of Vision
step << Warrior/Shaman
    .goto Thunder Bluff,32.0,66.9,60 >>Run to the lift and take it into Thunder Bluff
step << Warrior
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
    .train 199 >>Train 2h Maces
step << Warrior/Shaman
    >>Go to the top floor of the tower
    .goto Thunder Bluff,45.6,52.0,25,0
    .goto Thunder Bluff,46.8,49.9
    .fp Thunder Bluff >> Get the Thunder Bluff flight path
step << Warrior/Shaman
	>>Go into the Thunder Bluff cave
    .goto Thunder Bluff,29.6,29.7,25,0
    .goto Thunder Bluff,23.0,21.1
.target Apothecary Zamah
>>Talk to |cFF00FF25Apothecary Zamah|r
    .turnin 853 >>Turn in Apothecary Zamah
step << Warrior/Shaman
	#era/som
	>>Run out of the cave, then leave Thunder Bluff by jumping down somewhere under the bridge
	>>Run to the cave south of you
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40,0
    .goto Mulgore,32.714,36.087
>>Talk to |cFF00FF25Seer Wiserunner|r
    .turnin 772 >>Turn in Rite of Vision
.target Seer Wiserunner
    .accept 773 >>Accept Rite of Wisdom
step << Warrior/Shaman
	#era/som
    >>Kill Harpies. Loot them for their Talons
    .goto Mulgore,31.9,41.7
    .complete 743,1 --Windfury Talon (8)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,31.3,49.9
   >>Kill Dwarf mobs for Prospector's Picks
   .use 4702 >>Use the Picks on the Forge until you've broken 5 of them. This is done in the Dwarf camp.
	.collect 4702,5,746,1
    .complete 746,1 --Broken Tools (5)
--N needs testing
step << Warrior/Shaman
	#era/som
    .goto Mulgore,59.9,25.6
.target Lorekeeper Raintotem
>>Talk to |cFF00FF25Lorekeeper Raintotem|r
    .accept 833 >>Accept A Sacred Burial
step << Warrior/Shaman
	#era/som
    >>Kill Bristleback Interlopers in the area
    .goto Mulgore,61.5,21.9
    .complete 833,1 --Bristleback Interloper (8)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,61.5,21.1
.target Ancestral Spirit
>>Talk to |cFF00FF25Ancestral Spirit|r
    .turnin 773 >>Turn in Rite of Wisdom
step << Warrior/Shaman
	#era/som
    .goto Mulgore,59.8,25.6
.target Lorekeeper Raintotem
>>Talk to |cFF00FF25Lorekeeper Raintotem|r
    .turnin 833 >>Turn in A Sacred Burial
step << Warrior/Shaman
	#era/som
    #requires Mulgoreall
	#label CaravanR
    .goto Mulgore,53.7,48.1
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.0,57.2
.target Maur Raincaller
>>Talk to |cFF00FF25Maur Raincaller|r
    .turnin 766 >>Turn in Mazzranache
step << Warrior/Shaman
	#era/som
	.isOnQuest 770
	.goto Mulgore,46.75,60.23
	>>Turn in the cloak. Be careful as this removes it from your character/inventory
.target Skorn Whitecloud
>>Talk to |cFF00FF25Skorn Whitecloud|r
    .turnin 770 >>Turn in The Demon Scarred Cloak
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.513,60.164
.target Baine Bloodhoof
>>Talk to |cFF00FF25Baine Bloodhoof|r
    .turnin 746 >>Turn in Dwarven Digging
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.4,62.0
.target Ruul Eagletalon
>>Talk to |cFF00FF25Ruul Eagletalon|r
    .turnin 743 >>Turn in Dangers of the Windfury
step << Warrior/Shaman
	#era/som
    .goto Mulgore,48.7,59.4
.target Harken Windtotem
>>Talk to |cFF00FF25Harken Windtotem|r
    .turnin 761 >>Turn in Swoop Hunting
step << Warrior/Shaman
	#era/som
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,59.7,62.5
>>Talk to |cFF00FF25Morin Cloudstalker|r
    .turnin 751 >> Turn in The Ravaged Caravan
.target Morin Cloudstalker
    .accept 764 >>Accept The Venture Co.
    .accept 765 >>Accept Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
	#era/som
    #sticky
    #label Workers
    >>Kill the Venture Co mobs
    .goto Mulgore,63.0,44.3
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
step << Warrior/Shaman
	#era/som
    >>Run into the mine, then hug the right/east side. Kill Supervisor Fizsprocket. Loot him for his Clipboard
    .goto Mulgore,64.9,43.3
    .complete 765,1 --Fizsprocket's Clipboard (1)
step << Warrior/Shaman
	#era/som
    #requires Workers
    .xp 11+7150 >> Grind to 7150+/8700xp
step << Warrior/Shaman
	#era/som
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,59.7,62.5
.target Morin Cloudstalker
>>Talk to |cFF00FF25Morin Cloudstalker|r
    .turnin 764 >>Turn in The Venture Co.
    .turnin 765 >>Turn in Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith next
    .hs >>Hearth to Razor Hill
step << Shaman
	#level 12
    .goto Durotar,54.4,42.5
  .trainer >> Train your class spells
step << Orc Warrior/Troll Warrior
	#level 12
    .goto Durotar,54.190,42.468
    .trainer >> Train your class spells
step << Priest
    #sticky
    #label Linen
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    >>Skip this step if you already bought a wand, or can get one cheap from the AH
    .collect 2589,60 --Linen Cloth (60)
step << Troll Shaman/Orc Shaman
    .goto Durotar,36.6,58.0,25 >>Run up the mountain path
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
>>Talk to |cFF00FF25Telf Joolam|r
    .turnin 1524 >>Turn in Call of Fire
.target Telf Joolam
    .accept 1525 >>Accept Call of Fire
step << Warrior
    .goto Durotar,54.4,42.2
    .vendor >>Buy 6 slot bags from Jark until you can't equip new bags
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Buy Laminated Recurve Bow if you have the money.
step
    .goto Durotar,56.4,20.1
>>Talk to |cFF00FF25Margoz|r
    .turnin 828 >>Turn in Margoz
.target Margoz
    .accept 827 >>Accept Skull Rock
step << Hunter
    .goto Durotar,57.2,12.0
    .cast 1515 >>Tame A Surf Crawler
step
	#era/som
    #label scorp2
    #sticky
    >>Kill Scorpions in the area for Poison Sacs
    .goto Durotar,55.7,15.7,0
    .goto Durotar,39.67,18.83,0
    .complete 813,1 --Venomtail Poison Sac (4)
step << Hunter
    .goto Durotar,55.06,9.91,60 >> Run to Skull Rock
step
	#era/som
    #sticky
    #label Collars2
    .goto Durotar,53.08,9.19,0
    >>Kill Burning Blade mobs in Skull Rock for Searing Collars, and until Lieutenant's Insignia drops
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step
	#som
	#phase 3-6
    #sticky
    #label Collars2
    .goto Durotar,53.08,9.19,0
    >>Kill Burning Blade mobs in Skull Rock for Searing Collars
    .complete 827,1 --Searing Collar (6)
step << Warlock
    .goto Durotar,53.6,8.5,25,0
    .goto Durotar,51.8,8.1,25,0
    .goto Durotar,51.6,9.8
    >> Take the right path of the cave. Continue following the cave to loot the chest at the end of it.
    .complete 1501,1 --Tablet of Verga (1)
step
    >>Kill Gazz'uz for Eye of Burning Shadow. He can be in multiple areas of the cave.
    >>Use sticky glue on the Voidwalker to avoid being hit, and Healing Potions to restore health. Use LoS (line of sight) to avoid Gazz'uz's Shadow Bolts
    >>You can run to bodies of water found within the cave to evade the Voidwalker after killing Gazz'uz
    >>Be careful as he is VERY difficult. You can skip this quest if you need
    .goto Durotar,51.8,10.0
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
	.unitscan Gazz'uz
step
    #requires Collars2
    .goto Durotar,56.4,20.1
>>Talk to |cFF00FF25Margoz|r
    .turnin 827 >>Turn in Skull Rock
.target Margoz
    .accept 829 >>Accept Neeru Fireblade
step << Shaman
    #completewith next
    .goto Durotar,52.8,28.7,40 >> Go into the cave here
step << Shaman
    >>Kill the Burning Blade Cultists for the Pouch
    .goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step
    .goto Durotar,54.0,27.7,90,0
    .goto Durotar,51.3,23.5,90,0
    .goto Durotar,51.5,19.1,90,0
    .goto Durotar,54.0,27.7,90,0
    .goto Durotar,51.3,23.5,90,0
    .goto Durotar,51.5,19.1,90,0
    .goto Durotar,51.3,23.5
    >>Kill Harpies in the area
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step
    #softcore
    .goto Durotar,46.4,22.9
.target Rezlak
>>Talk to |cFF00FF25Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
step
    #hardcore
    >>Run back through the cave, then back to the Goblin
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.4,22.9
.target Rezlak
>>Talk to |cFF00FF25Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
step
    #completewith next
	#requires scorp2
    .goto Durotar,45.50,11.70,70 >> Run into Orgrimmar
step << Rogue
	#som
	#phase 3-6
    .goto Orgrimmar,48.13,80.55
    .vendor >> Buy your level 11 thrown from Trak'gen. Equip it when you're level 11
step << Hunter
	#som
	#phase 3-6
    #completewith next
    .goto Orgrimmar,37.40,52.32
    .vendor >> Buy some apples from Shan'ti to feed to your pet
    .collect 4536,10 --Shiny Red Apple (10)
step
	#som
	#phase 3-6
    .goto Orgrimmar,34.340,36.328
.target Vol'jin
>>Talk to |cFF00FF25Vol'jin|r
    .turnin 831 >>Turn in The Admiral's Orders
step << Hunter
	#som
	#phase 3-6
    .goto Orgrimmar,66.046,18.526
.target Ormak Grimshot
>>Talk to |cFF00FF25Ormak Grimshot|r
    .turnin 6081 >>Turn in Training the Beast
step << Warrior/Shaman
    #requires scorp2
    .goto Orgrimmar,54.097,68.407
>>Talk to |cFF00FF25Innkeeper Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >> Accept Doras the Wind Rider Master
step << Warrior/Shaman
    .goto Orgrimmar,45.120,63.889
>>Talk to |cFF00FF25Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
.target Doras
    .accept 6386 >> Accept Return to the Crossroads
step
	#era/som
    #requires scorp2
    .goto Orgrimmar,31.733,37.823
.target Thrall
>>Talk to |cFF00FF25Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
step << Rogue
	#level 12
    .goto Orgrimmar,42.8,53.4
.target Therzok
>>Talk to |cFF00FF25Therzok|r
    .accept 1963 >> Accept The Shattered Hand
	.trainer >> Train your class spells
step << Rogue
    .goto Orgrimmar,42.8,53.4
.target Therzok
>>Talk to |cFF00FF25Therzok|r
    .accept 1963 >> Accept The Shattered Hand
step << Priest
    #sticky
    #label Robes
    #requires Linen
    >>Skip this step if you already bought a wand, or can get one cheap from the AH
    >>Go to the Tailoring trainer and learn Tailoring.
    >>Turn all of your linen into bolts. Learn Brown Linen Robe from the trainer & buy as many coarse thread as you need to make all the robes you can
    .goto Orgrimmar,63.28,50.68
    .collect 6238,9 --Brown Linen Robe (9)
step << Priest
    #sticky
    #requires Robes
    >>Skip this step if you already bought a wand or can get one cheap from the AH
    >>Train Enchanting. Start disenchanting all of the Brown Linen Robes you made earlier. If you didn't get any Lesser Magic Essence, check the vendor for one and buy it, or come back later
    >>Buy a Copper Rod, then make a Runed Copper Rod.
    >>Train Lesser Magic Wand from the trainer. Craft a Lesser Magic Wand.
    .goto Orgrimmar,53.77,38.37
    .collect 11287,1 --Lesser Magic Wand (1)
step
	#era/som
    .goto Orgrimmar,47.0,53.4
.target Kor'ghan
>>Talk to |cFF00FF25Kor'ghan|r
    .turnin 813 >>Turn in Finding the Antidote
step << Warlock
    .goto Orgrimmar,48.246,45.281
>>Talk to |cFF00FF25Gan'rul Bloodeye|r
    .turnin 1501 >>Turn in Creature of the Void
.target Gan'rul Bloodeye
    .accept 1504 >>Accept The Binding
step
	.isOnQuest 832
	.goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>Talk to |cFF00FF25Neeru Fireblade|r
    .turnin 832 >>Turn in Burning Shadows
step
	.goto Orgrimmar,49.473,50.589
>>Talk to |cFF00FF25Neeru Fireblade|r
    .turnin 829 >>Turn in Neeru Fireblade
.target Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
step
	.goto Orgrimmar,49.473,50.589
>>Talk to |cFF00FF25Neeru Fireblade|r
    .turnin 829 >>Turn in Neeru Fireblade
.target Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
step << Warlock
    .goto Orgrimmar,49.5,50.0
    >>Use the Glyphs of Summoning to summon a voidwalker. Kill it
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    >>You can now summon a Voidwalker
    .goto Orgrimmar,48.246,45.281
.target Gan'rul Bloodeye
>>Talk to |cFF00FF25Gan'rul Bloodeye|r
    .turnin 1504 >>Turn in The Binding
step
	#softcore
	#completewith next
    .goto Orgrimmar,52.76,48.95
	.deathskip >> Go into Ragefire Chasm in the Cleft of Shadow. Die to the mobs inside & respawn at the Spirit Healer.
step
	#era/som
	#softcore
    .goto Durotar,41.6,18.7
.target Rhinag
>>Talk to |cFF00FF25Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .turnin 812 >>Turn in Need for a Cure
step
	#era/som
	#hardcore
	>>Run out of Orgrimmar
    .goto Durotar,41.6,18.7
.target Rhinag
>>Talk to |cFF00FF25Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .turnin 812 >>Turn in Need for a Cure
step << Warrior
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>Drop down into Thunder Ridge. Kill Lightning Hides and Thunder Lizards. Loot them for Singed Scales
    .complete 1498,1 --Singed Scale (5)
step
    >>Start killing crocodiles for the Amulet
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8
    .complete 816,1 --Kron's Amulet (1)
step
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>Talk to |cFF00FF25Misha Tor'kren|r
    .turnin 816 >>Turn in Lost But Not Forgotten
step << !Shaman !Warrior
    .goto The Barrens,62.2,19.4
>>Talk to |cFF00FF25Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
.target Kargal Battlescar
    .accept 842 >>Accept Crossroads Conscription
step
    .goto The Barrens,62.3,20.1
>>Talk to |cFF00FF25Ak'Zeloth|r
    .turnin 809 >>Turn in Ak'Zeloth
.target Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
step
    .goto The Barrens,62.3,20.0
    >>Loot the Purple Stone next to Ak'Zeloth. This item has a 30 minute timer, so be sure to be quick
    .turnin 926 >>Turn in Flawed Power Stone
step << Warrior
    .goto The Barrens,61.4,21.1
>>Talk to |cFF00FF25Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
.target Uzzek
    .accept 1502 >>Accept Thun'grim Firegaze
step << Rogue
    #label BeakCave
    .goto The Barrens,47.6,19.2,70 >>Go to the cave surrounded by Burning Blade orcs
step << Rogue
    >>Right click the Altar
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step << !Shaman !Warrior
    .goto The Barrens,52.0,30.5,150 >> Run to the Crossroads
step << !Shaman !Warrior
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Talk to |cFF00FF25Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
step << !Shaman !Warrior
    .goto The Barrens,52.2,31.0
>>Talk to |cFF00FF25Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.5,29.8
.target Zargh
>>Talk to |cFF00FF25Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
step << Shaman Troll/Shaman Orc/Warrior Orc/Warrior Troll
    .goto The Barrens,52.5,29.8
.target Zargh
>>Talk to |cFF00FF25Zargh|r
    .turnin 6386 >> Turn in Return to the Crossroads
step
    .goto The Barrens,51.99,29.89
	.home >> Set your hearth to Crossroads
step << !Shaman !Warrior
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Talk to |cFF00FF25Gazrog|r
    .accept 869 >>Accept Raptor Thieves
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.8
.target Thork
>>Talk to |cFF00FF25Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Get the The Crossroads flight path
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    >>do NOT go to Orgrimmar
    .goto The Barrens,51.5,30.3
>>Talk to |cFF00FF25Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
.target Devrak
    .accept 6384 >>Accept Ride to Orgrimmar << !Rogue
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cFF00FF25Apothecary Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
step << Mage
	#era/som
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, choose the 12-17 Barrens Guide
step << Mage
	#som
	#phase 3-6
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, choose the 12-17 Barrens Guide. Do note with recent 100% quest xp SoM changes, Mage AoE grinding is worse than the quest route
step << Rogue
    .goto The Barrens,51.5,30.3
    .fly >> Fly to Orgrimmar
step << Rogue
    .goto Orgrimmar,54.097,68.407
>>Talk to |cFF00FF25Innkeeper Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >> Accept Doras the Wind Rider Master
step << Rogue
    .goto Orgrimmar,45.120,63.889
>>Talk to |cFF00FF25Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
.target Doras
    .accept 6386 >> Accept Return to the Crossroads
step << Rogue
    #sticky
    #completewith next
    .goto Durotar,50.8,13.8,40 >> Go to the Zeppelin tower. Take the zeppelin to Undercity
step << Rogue
    .zone Tirisfal Glades >>Arrive in Tirisfal
step << Rogue
	#som
	#phase 3-6
    .goto Tirisfal Glades,61.87,65.02,40 >> Run to Undercity
step << Rogue
	#som
	#phase 3-6
    .goto Tirisfal Glades,61.81,74.42,30 >> Run to the Elevator room
step << Rogue
	#som
	#phase 3-6
    >>Take one of the elevators down
    .goto Undercity,63.25,48.56
    .fp Undercity >> Get the Undercity flight path
step << Rogue
	#som
	#phase 3-6
    .money <0.3023
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass or Scimitar. You'll train Swords soon (Save 10 silver). Skip this if your weapon is better, or there's something better on the AH
    .vendor >> Buy a Cutlass or Scimitar & Ensure you still have 10 silver left.
step << Rogue
	#som
	#phase 3-6
    #softcore
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords. If you didn't have enough to buy a cutlass earlier, check the AH for a weapon after
step << Rogue
	#completewith Barrens
    #som
    #phase 3-6
	.hs >> Hearth back to Crossroads if your hearth is up
step << Rogue
	#completewith next
    #som
    #phase 3-6
    .goto Tirisfal Glades,60.89,59.06,30,0
    .goto Tirisfal Glades,60.73,58.76
    .zone Durotar >> Take the zeppelin to Durotar
step << Rogue
    #som
    #phase 3-6
    >>Run to Razor Hill
    .goto Durotar,50.85,43.59
.target Takrin Pathseeker
>>Talk to |cFF00FF25Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
step << Rogue
	#label Barrens
    #som
    #phase 3-6
    .goto The Barrens,62.26,19.38
	.zone The Barrens >> Travel to The Barrens
step << Rogue
    #som
    #phase 3-6
    >>Run to The Barrens
    .goto The Barrens,62.26,19.38
>>Talk to |cFF00FF25Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
.target Kargal Battlescar
    .accept 842 >>Accept Crossroads Conscription
step << Rogue
    #som
    #phase 3-6
    .goto The Barrens,52.23,31.01
>>Talk to |cFF00FF25Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
]])
