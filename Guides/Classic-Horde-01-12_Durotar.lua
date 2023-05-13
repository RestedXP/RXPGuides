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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step
    #completewith next
    .hs >>Hearth to the Valley of Trials
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
#name 6-10 Durotar
#version 1
#group RestedXP Horde 1-22
#defaultfor Troll/Orc
#next 10-12 Durotar

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
    .goto Durotar,54.1,76.6,0
    >>The Questgiver patrols a little
.target Lar Prowltusk
>>Talk to |cFF00FF25Lar Prowltusk|r
    .accept 786 >>Accept Thwarting Kolkar Aggression
step
    .goto Durotar,56.0,73.9
.target Vel'rin Fang
>>Talk to |cFF00FF25Vel'rin Fang|r
    .accept 817 >>Accept Practical Prey
step
    .goto Durotar,55.9,74.4
.target Master Vornal
>>Talk to |cFF00FF25Master Vornal|r
    .accept 818 >>Accept A Solvent Spirit
step
    .goto Durotar,55.9,74.7
>>Talk to |cFF00FF25Master Gadrin|r
    .turnin 805 >>Turn in Report to Sen'jin Village
.target Master Gadrin
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
step << Rogue
    .goto Durotar,56.29,73.40
    .vendor >> Buy the level 3 thrown from K'Waii and Equip them
step << Shaman
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
	#era/som
    #sticky
    #completewith next
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    >> Run down the beach, killing as many Crawlers and Makrura as possible for Mucus and Eyes. You do not have to finish this step here.
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
	#era/som
    .goto Durotar,52.1,83.3,75 >> Reach the end of the beach
step
	#era/som
    .goto Durotar,50.9,79.2,30 >>Enter the Kolkar base
step << Priest
	#era/som
    #sticky
	#softcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    >>Skip this step if you've already bought a wand or can get one cheap from the AH.
    .collect 2589,60 --Linen Cloth (60)
step << Priest
	#era/som
    #sticky
	#hardcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    .collect 2589,60 --Linen Cloth (60)
step
	#era/som
    .unitscan Warlord Kolkanis
    #sticky
    #completewith Bonfire
    +If the rare is up, kill it when you are level 7. Be sure to use the Healing Potion from earlier.
step
	#era/som
    >>Burn the scroll inside the tent, on the ground
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
	#era/som
    >>Burn the scroll on the ground
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
	#era/som
    #label Bonfire
    >>Burn the scroll on the ground
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
	#era/som
    #softcore
    .goto Durotar,57.5,73.3,200 >> Die at the Bonfire and respawn at the Spirit Healer, or run back
step << Shaman
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2495,1 --Collect Walking Stick
step << Rogue
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
    #softcore
    #completewith next
    .goto Durotar,57.3,53.5,120 >>Die at the northern tower outside of Tiragarde Keep. Respawn in Razor Hill
step
	#era/som
    #hardcore
    #completewith next
    .goto Durotar,50.9,79.2,50,0
    .goto Durotar,52.5,44.4,120 >>Leave the Kol'Kar base. Grind mobs on your way to Razor Hill
step
	#som
	#phase 3-6
    #hardcore
    #completewith next
    .goto Durotar,52.2,43.2,120 >>Travel to Razor Hill
step
    .goto Durotar,52.2,43.2
>>Talk to |cFF00FF25Orgnil Soulscar|r
    .turnin 823 >>Turn in Report to Orgnil
.target Orgnil Soulscar
    .accept 806 >>Accept Dark Storms
step
    >>Inside the bunker, top floor
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cFF00FF25Gar'Thok|r
    .accept 784 >>Accept Vanquish the Betrayers
    .accept 837 >>Accept Encroachment
step
    .goto Durotar,51.1,42.4
.target Cook Torka
>>Talk to |cFF00FF25Cook Torka|r
    .accept 815 >>Accept Break a Few Eggs
step
    #completewith next
    .goto Durotar,50.2,43.1,15 >>Go up this path here
step
    >>Go up the tower
    .goto Durotar,49.9,40.3
.target Furl Scornbrow
>>Talk to |cFF00FF25Furl Scornbrow|r
    .accept 791 >>Accept Carry Your Weight
step << Shaman
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#completewith next
    .goto Durotar,53.0,41.0
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Ghrawt. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Buy enough arrows from Ghrawt to fill your quiver with
step << Warrior/Rogue
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue
    .goto Durotar,51.8,40.9
    .money <0.0010
    .trainer 2580 >> Train Mining. Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0081
    .collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << !Warrior !Rogue !Hunter
    .goto Durotar,51.5,41.6
.target Innkeeper Grosk
>>Talk to |cFF00FF25Innkeeper Grosk|r
    .turnin 2161,2 >>Turn in A Peon's Burden << Shaman
    .turnin 2161 >>Turn in A Peon's Burden << !Shaman
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much level 5 water as you can
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
.target Innkeeper Grosk
>>Talk to |cFF00FF25Innkeeper Grosk|r
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy up to 20 level 5 food
step << Priest
    .goto Durotar,54.3,42.9
>>Talk to |cFF00FF25Tai'jin|r
    .turnin 5649 >> In Favor of Spirituality
.target Tai'jin
    .accept 5648 >> Garments of Spirituality
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Grunt Kor'ja
    .goto Durotar,53.1,46.5
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
step << Priest
    .goto Durotar,54.3,42.9
.target Tai'jin
>>Talk to |cFF00FF25Tai'jin|r
    .turnin 5648 >>Turn in Garments of Spirituality
step << Priest
	#som
	#phase 3-6
    #sticky
	#softcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    >>Skip this step if you've already bought a wand or can get one cheap from the AH.
    .collect 2589,60 --Linen Cloth (60)
step << Priest
	#som
	#phase 3-6
    #sticky
	#hardcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #label KulTiras
    .goto Durotar,58.14,57.56,0
    >>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step
    .goto Durotar,59.2,58.3,25 >>Go inside the keep
step
    .goto Durotar,59.7,58.3
    >>Go to the top floor of the Keep. Kill Lieutenant Benedict and loot his key - be careful as he uses Shield Bash (Interrupt)
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
step
    .goto Durotar,59.8,57.8,12,0
    .goto Durotar,59.9,57.5,12 >>Go up the stairs here
    >>Loot the chest. Accept the quest from the item
    .goto Durotar,59.3,57.6
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
step
	#era
    .goto Durotar,58.4,57.2
    .xp 7+2195 >> Grind to 2195+/4500xp
step
	#som
	#phase 1-2
    .goto Durotar,58.4,57.2
    .xp 7+1890 >> Grind to 1890+/4500xp
step
	#som
	#phase 3-6
    .goto Durotar,58.4,57.2
    .xp 7+750 >> Grind to 750+/4500xp
step
    #softcore
    #requires KulTiras
    .goto Durotar,53.5,44.5,120 >> Die and respawn at the Spirit Healer, or run back
step
    #softcore
    .goto Durotar,51.9,43.5
>>Talk to |cFF00FF25Gar'Thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
.target Gar'Thok
    .accept 825 >>Accept From The Wreckage....
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders
step
    #hardcore
    #requires KulTiras
    >>Run back to Razor Hill
    .goto Durotar,51.9,43.5
>>Talk to |cFF00FF25Gar'Thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
.target Gar'Thok
    .accept 825 >>Accept From The Wreckage....
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders
step
    .goto Durotar,49.9,40.3
.target Furl Scornbrow
>>Talk to |cFF00FF25Furl Scornbrow|r
    .turnin 791 >>Turn in Carry Your Weight
step << Shaman
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#completewith next
    .goto Durotar,53.0,41.0
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Ghrawt. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Buy enough arrows from Ghrawt to fill your quiver with
step << Warrior/Rogue
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue
    .goto Durotar,51.8,40.9
    .money <0.0010
    .trainer 2580 >> Train Mining. Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0081
    .collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << Shaman
    .goto Durotar,54.419,42.588
    .trainer >> Train your class spells
step << Priest
    .goto Durotar,54.3,42.9
    .trainer >> Train your class spells
step << Warrior
    .goto Durotar,54.190,42.468
    .trainer >> Train your class spells
step << Hunter
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
step << Rogue
    .goto Durotar,52.0,43.7
    .trainer >> Train your class spells
step << Warlock
    .goto Durotar,54.4,41.2
    .trainer >> Train your class spells
    .goto Durotar,54.7,41.5
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Warrior/Rogue
    .goto Durotar,54.2,41.9
    .money <0.01
    .trainer >>Train First Aid
step
    .goto Durotar,54.4,42.2
    .money <0.1250
    .vendor >>Buy a 6 slot bag from Jark
step << Priest/Warlock/Mage
    .goto Durotar,51.5,41.6
    .vendor >> Buy as much level 5 water as you can
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    .vendor >> Buy up to 20 level 5 food
step
    #sticky
    #completewith Tools
    >>Kill some Makrura here for eyes/Crawlers for Mucus
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Tools
    >>Check the boat closest to the shore for the Toolboxes. Check other boats if you can't find these spawns. They can be a bit hard to see
    .goto Durotar,61.9,55.5,12 >> In the window underwater
    .goto Durotar,62.3,56.3,12 >> Underwater
    .goto Durotar,61.4,56.1,12 >> Near the shore
    .complete 825,1 --Gnomish Tools (3)
step
    #sticky
    #completewith Fur
    >>Kill all Tigers that you see for their Fur. This does not need to be finished now.
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>Swim to the Island. Loot Taillasher eggs on the ground on this island. They're usually guarded by a Taillasher
    .goto Durotar,68.8,71.5
    .complete 815,1 --Taillasher Egg (3)
step
    #sticky
    #completewith next
    >>Kill some Makrura here for Eyes & Crawlers for Mucus. This does not need to be finished now.
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    .goto Durotar,66.9,80.0,175 >>Swim to the other island
step
    #sticky
    #completewith Trolls
    >>Kill the trolls in the area. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Save your Earth Shock for when he casts Healing Wave. Loot his head << Shaman
    >>Kill Zalazane. Save your Gouge for when he casts Healing Wave. Loot his head << Rogue
    >>Kill Zalazane. Be careful as he can heal (you may need a healing potion). Loot his head << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
    .goto Durotar,67.4,87.8
    >>Loot one of the skulls on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
    .goto Durotar,68.34,83.54
    >>Kill the rest of the trolls. Be careful as the Voodoo Trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
    >>Get the rest of the Tiger Fur
    .goto Durotar,64.7,88.5,90,0
    .goto Durotar,65.2,80.8,90,0
    .goto Durotar,59.9,83.6,90,0
    .goto Durotar,64.7,88.5,90,0
    .goto Durotar,65.2,80.8,90,0
    .goto Durotar,59.9,83.6,90,0
    .goto Durotar,59.9,83.6
    .complete 817,1 --Durotar Tiger Fur (4)
step
    #softcore
    .goto Durotar,57.5,73.3,200 >> Die and respawn at the Spirit Healer, or run back
step
    >> Loot the remaining Eyes and Mucus from the Makrura/Crawlers
    .goto Durotar,59.7,71.7,100,0
    .goto Durotar,57.6,77.9,100,0
    .goto Durotar,59.7,71.7,100,0
    .goto Durotar,57.6,77.9,100,0
    .goto Durotar,59.7,71.7
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    .goto Durotar,56.48,73.11
    .vendor >> Vendor trash and repair at Trayexir. You can talk to him from outside the hut
step << Mage
    >>Go inside the tent
    .goto Durotar,56.3,75.1
    .trainer >> Train your class spells
step
	#completewith SkullX
    +Save the Faintly Glowing Skull from the turnin for later (you'll be told when to use it)
step
    .goto Durotar,55.9,74.7
.target Master Gadrin
>>Talk to |cFF00FF25Master Gadrin|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826,2 >>Turn in Zalazane << Shaman
    .turnin 826 >>Turn in Zalazane << !Shaman
step
    .goto Durotar,56.0,74.3
.target Master Vornal
>>Talk to |cFF00FF25Master Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
step
    .goto Durotar,56.0,73.9
.target Vel'rin Fang
>>Talk to |cFF00FF25Vel'rin Fang|r
    .turnin 817 >>Turn in Practical Prey
step
	#era/som
    .goto Durotar,54.3,73.3
.target Lar Prowltusk
>>Talk to |cFF00FF25Lar Prowltusk|r
    .turnin 786,1 >>Turn in Thwarting Kolkar Aggression << Shaman
    .turnin 786 >>Turn in Thwarting Kolkar Aggression << !Shaman
step
	#som
	#phase 3-6
    .goto Durotar,43.8,39.1
    .xp 9+4500 >> Grind to 4500+/6500xp
step
	#som
	#phase 3-6
    .goto Durotar,51.1,42.4
.target Cook Torka
>>Talk to |cFF00FF25Cook Torka|r
    .turnin 815 >>Turn in Break a Few Eggs
step
	#som
	#phase 3-6
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cFF00FF25Gar'Thok|r
    .turnin 825 >>Turn in From The Wreckage....
step << Shaman
	#som
	#phase 3-6
    .goto Durotar,54.4,42.5
.target Swart
>>Talk to |cFF00FF25Swart|r
    .accept 2983 >>Accept Call of Fire
    .trainer >> Train your class spells
step << Priest
	#som
	#phase 3-6
    .goto Durotar,54.3,42.9
    .trainer >> Train your class spells
step << Orc Warrior/Troll Warrior
	#som
	#phase 3-6
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>Talk to |cFF00FF25Krang Stonehoof|r
-->>Talk to |cFF00FF25Tarshaw Jaggedscar|r
-->>Talk to |cFF00FF25Sorek|r
    .accept 1505 >>Accept Veteran Uzzek
    .trainer >> Train your class spells
step << Rogue
	#som
	#phase 3-6
    .goto Durotar,52.0,43.7
    .trainer >> Train your class spells
step << Warrior/Rogue
	#som
	#phase 3-6
    .goto Durotar,54.2,41.9
    .money <0.01
    .train 3273 >>Train First Aid
step << Warlock
	#som
	#phase 3-6
    .goto Durotar,54.4,41.2
    .trainer >> Train your class spells
.target Ophek
>>Talk to |cFF00FF25Ophek|r
    .accept 1506 >>Accept Gan'Rul's Summons
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
.target Thotar
>>Talk to |cFF00FF25Thotar|r
    .accept 6062 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
.target Thotar
>>Talk to |cFF00FF25Thotar|r
    .accept 6062 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
    .goto Durotar,51.5,50.0
    .complete 6062,1 --Tame a Dire Mottled Boar
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
>>Talk to |cFF00FF25Thotar|r
    .turnin 6062 >>Turn in Taming the Beast
.target Thotar
    .accept 6083 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    >>Don't kill the Armored Scorpids you see. You'll need them later
    .goto Durotar,59.3,27.6
    .complete 6083,1 --Tame a Surf Crawler
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
>>Talk to |cFF00FF25Thotar|r
    .turnin 6083 >>Turn in Taming the Beast
.target Thotar
    .accept 6082 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    .use 15920 >>Click the Taming Rod in your bag on a Scorpid. Try to do it at max range (30 yards)
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
>>Talk to |cFF00FF25Thotar|r
    .turnin 6082 >>Turn in Taming the Beast
.target Thotar
    .accept 6081 >>Accept Training the Beast
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,53.0,41.0
    .vendor >>vendor trash. Buy level 10 arrows until your Quiver is full (1000 arrows)
step
    .goto Durotar,48.9,48.5
    >>Kill Quilboars and Scouts in the area
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    .goto Durotar,43.8,39.1
    >>Kill Dustrunners and Battleguards in the area. Dustrunners cast Rejuvenation (Heal) and Battleguards are tanky.
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step << Warlock/Hunter
	#era/som
    .xp 9+4500 >> Grind to 4500+/6500xp
step << Warlock/Hunter
	#era/som
    .goto Durotar,51.1,42.4
.target Cook Torka
>>Talk to |cFF00FF25Cook Torka|r
    .turnin 815 >>Turn in Break a Few Eggs
step << Warlock/Hunter
	#era/som
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cFF00FF25Gar'Thok|r
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
step << Warlock
	#era/som
    .goto Durotar,54.4,41.2
    .trainer >> Train your class spells
.target Ophek
>>Talk to |cFF00FF25Ophek|r
    .accept 1506 >>Accept Gan'Rul's Summons
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
.target Thotar
>>Talk to |cFF00FF25Thotar|r
    .accept 6062 >>Accept Taming the Beast
step << Hunter
	#era/som
    .use 15917 >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
    .goto Durotar,51.5,50.0
    .complete 6062,1 --Tame a Dire Mottled Boar
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
>>Talk to |cFF00FF25Thotar|r
    .turnin 6062 >>Turn in Taming the Beast
.target Thotar
    .accept 6083 >>Accept Taming the Beast
step << Hunter
	#era/som
   .use 15919 >>Don't kill the Armored Scorpids you see. You'll need them later
    .goto Durotar,59.3,27.6
    .complete 6083,1 --Tame a Surf Crawler
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
>>Talk to |cFF00FF25Thotar|r
    .turnin 6083 >>Turn in Taming the Beast
.target Thotar
    .accept 6082 >>Accept Taming the Beast
step << Hunter
	#era/som
    .use 15920 >>Click the Taming Rod in your bag on a Scorpid. Try to do it at max range (30 yards)
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
>>Talk to |cFF00FF25Thotar|r
    .turnin 6082 >>Turn in Taming the Beast
.target Thotar
    .accept 6081 >>Accept Training the Beast
step << Hunter
	#era/som
    .goto Durotar,53.0,41.0
    .vendor >>vendor trash. Buy level 10 arrows until your Quiver is full (1000 arrows)
step
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>Talk to |cFF00FF25Misha Tor'kren|r
    .accept 816 >>Accept Lost But Not Forgotten
step
    .goto Durotar,46.4,22.9
.target Rezlak
>>Talk to |cFF00FF25Rezlak|r
    .accept 834 >>Accept Winds in the Desert
step
    >>Loot the small sacks on the ground
    .goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step
	#label SkullX
    .goto Durotar,46.4,22.9
>>Talk to |cFF00FF25Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
.target Rezlak
    .accept 835 >>Accept Securing the Lines
step << Warlock
	#som
	#phase 3-6
	>>Run into Orgrimmar
    .goto Orgrimmar,48.246,45.281
>>Talk to |cFF00FF25Gan'rul Bloodeye|r
    .turnin 1506 >>Turn in Gan'rul's Summons
.target Gan'rul Bloodeye
    .accept 1501 >>Accept Creature of the Void
step << Warlock
	#softcore
	#som
	#phase 3-6
	#completewith next
	+Run onto a nearby Brazier. Spam Life Tap so you lose health, then die to the fire
	>>Alternatively, run into Ragefire Chasm and die to the mobs inside
step << Warlock
	#som
	#phase 3-6
    .goto Durotar,47.3,17.9,200 >> Exit Orgrimmar
step
    #completewith next
    .goto Durotar,41.7,25.5,120 >>Jump into Thunder Ridge
step
	#softcore
    .use 4945 >>Kill Fizzle and loot him for his Claw. Try to clear the mobs in the surrounding camps to make space. Killing his pet first makes sense a lot of the time. Use your Skull & health pot if needed. A good opener is to Sticky Glue him and walk back out of Shadow bolt range to kill his pet without getting hit by him.
	>>Group up for this quest if you're struggling
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step
	#hardcore
    .use 4945 >>Kill Fizzle and loot him for his Claw. Try to clear the mobs in the surrounding camps to make space. Killing his pet first makes sense a lot of the time & use your Skull & healthpot if needed. A good opener is to Sticky Glue him and walk back out of Shadow bolt range to kill his pet without getting hit by him.
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
--N add a link for warrior/rogue? Also needs more specific wording per class
step
    #softcore
	#era/som
	.goto Durotar,41.5,18.6
    >> Fight your way out of the Thunder Ridge area or deathskip to the graveyard.
.target Rhinag
>>Talk to |cFF00FF25Rhinag|r
    .accept 812 >>Accept Need for a Cure
step << !Warrior !Shaman
	#som
	#phase 3-6
	.hs >> Hearth to Razor Hill
step
    #hardcore
	#era/som
    .goto Durotar,39.18,31.65,90,0
	.goto Durotar,41.5,18.6
    >> Fight your way out of the Thunder Ridge area
.target Rhinag
>>Talk to |cFF00FF25Rhinag|r
    .accept 812 >>Accept Need for a Cure
step
	#era/som
    #completewith next
    .goto Orgrimmar,49.0,94.2,80 >>Run into Orgrimmar
step << Rogue
	#era/som
    .goto Orgrimmar,48.13,80.55
    .vendor >> Buy your level 11 thrown from Trak'gen. Equip it when you're level 11
step << Hunter
	#era/som
    #completewith next
    .goto Orgrimmar,37.40,52.32
    .vendor >> Buy some apples from Shan'ti to feed to your pet
    .collect 4536,10 --Shiny Red Apple (10)
step
	#era/som
    .goto Orgrimmar,34.340,36.328
.target Vol'jin
>>Talk to |cFF00FF25Vol'jin|r
    .turnin 831 >>Turn in The Admiral's Orders
step
	#era/som
    .goto Orgrimmar,31.9,37.7
.target Thrall
>>Talk to |cFF00FF25Thrall|r
    .accept 5726 >>Accept Hidden Enemies
step << Hunter
	#era/som
    .goto Orgrimmar,66.046,18.526
.target Ormak Grimshot
>>Talk to |cFF00FF25Ormak Grimshot|r
    .turnin 6081 >>Turn in Training the Beast
step << Warlock
	#era/som
    .goto Orgrimmar,48.246,45.281
>>Talk to |cFF00FF25Gan'rul Bloodeye|r
    .turnin 1506 >>Turn in Gan'rul's Summons
.target Gan'rul Bloodeye
    .accept 1501 >>Accept Creature of the Void
step << Rogue
	#era/som
    .goto Orgrimmar,42.72,53.56
.target Therzok
>>Talk to |cFF00FF25Therzok|r
	.accept 1963 >> Accept The Shattered Hand
	.trainer >> Train your class spells
step
	#era/som
    .goto Orgrimmar,47.2,53.4
.target Kor'ghan
>>Talk to |cFF00FF25Kor'ghan|r
    .accept 813 >>Accept Finding the Antidote
    >>Put "Beast Training" on your bars. Remember to teach your pet skills later << Hunter
step
	#era/som
    >>Abandon Need for a Cure. This will remove the timer on the quest, but still allow you to still do it
    .abandon 812 >>Abandon Need for a Cure
step
	#era/som
    #completewith next
    .hs >> Hearth to Razor Hill
step << !Warlock !Hunter
	#era/som
    .goto Durotar,51.1,42.4
.target Cook Torka
>>Talk to |cFF00FF25Cook Torka|r
    .turnin 815 >>Turn in Break a Few Eggs
step << !Warlock !Hunter
	#era/som
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cFF00FF25Gar'Thok|r
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
step
	#som
	#phase 3-6
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>Talk to |cFF00FF25Gar'Thok|r
    .turnin 837 >>Turn in Encroachment
step
    .goto Durotar,52.3,43.1
>>Talk to |cFF00FF25Orgnil Soulscar|r
    .turnin 806 >>Turn in Dark Storms
.target Orgnil Soulscar
    .accept 828 >>Accept Margoz
step << Shaman
	#era/som
    .goto Durotar,54.4,42.5
.target Swart
>>Talk to |cFF00FF25Swart|r
    .accept 2983 >>Accept Call of Fire
    .trainer >> Train your class spells
step << Priest
	#era/som
    .goto Durotar,54.3,42.9
    .trainer >> Train your class spells
step << Orc Warrior/Troll Warrior
	#era/som
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>Talk to |cFF00FF25Krang Stonehoof|r
-->>Talk to |cFF00FF25Tarshaw Jaggedscar|r
-->>Talk to |cFF00FF25Sorek|r
    .accept 1505 >>Accept Veteran Uzzek
    .trainer >> Train your class spells
step << Rogue
	#era/som
    .goto Durotar,52.0,43.7
    .trainer >> Train your class spells
step << Warrior/Rogue
	#era/som
    .goto Durotar,54.2,41.9
    .money <0.01
    .train 3273 >>Train First Aid
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 10-12 Durotar
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
