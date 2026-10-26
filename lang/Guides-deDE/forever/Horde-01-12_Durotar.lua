if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 1-6 Durotar
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Ihr habt einen Leitfaden ausgewählt, der für Orks und Trolle bestimmt ist. Ihr solltet dieselbe Startzone wählen, in der ihr startet|r
step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Akzeptiert die Quest Euer Platz in der Welt
    .target Kaltunk
step << Warrior/Shaman/Warlock/Mage/Priest
    #completewith next
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 35 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Warlock
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 60 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Maget
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 50 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Priest
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 10 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Warrior/Shaman
    .goto 1411/1,-4281.07,-720.15,30,0 << Warlock/Mage/Priest
    .goto 1411/1,-4299.05,-494.9,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto 1411/1,-4214.45,-623.92.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Nehmt die Quest Üble Familiare an
    .target Ruzan
step << Warrior/Shaman
    .goto 1411/1,-4214.45,-565.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    .vendor >> Verkauft Müll
    .target Duokna
    .money >0.01
step
    .goto 1411/1,-4198.05,-605.59,12,0 << !Warrior !Shaman
    .goto 1411/1,-4198.58,-602.41,12,0 << Warrior/Shaman
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Gebt die Quest Euer Platz in der Welt ab
    .accept 788 >>Akzeptiert die Quest Scharfe Zähne
    --.accept 97279 >>Accept Wayward Weapons
    .target Gornek
    --97279 not worth doing, bad xp loot quest, no followup
step << Warrior/Shaman
    .goto 1411/1,-4198.05,-605.59,10,0
    .goto 1411/1,-4230.31,-639.43 << Warrior
    .goto 1411/1,-4203.87,-623.92 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf] << Warrior
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Reisen zu |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
step << Warlock
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand]
    .target Nartok
step << Hunter/Mage/Priest
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Hunter
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,10,6394,1 << !Hunter --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << skip
    #completewith Boars
    >>Plündert |cRXP_PICK_Zurückgelassene Übungswaffe|r auf dem Boden
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith next
    .goto 1411/1,-4266.26,-563.29,25,0
    >>Tötet |cRXP_ENEMY_Scheckige Eber|r auf dem Weg zu Koven der Brennenden Klinge
    >>|cRXP_WARN_Versucht, Stufe 2 zu erreichen, bevor ihr dort ankommt|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto 1411/1,-4357.74,-180.47,100 >> Reist zum Koven der Brennenden Klinge
    .isOnQuest 1485
step << Warlock
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Tötet |cRXP_ENEMY_Üble Familiare|r. Plündert sie für |cRXP_LOOT_Kopf eines schändlichen Familiars|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto 1411/1,-4266.26,-563.29,35,0 << !Warlock
    .goto 1411/1,-4283.18,-512.53,45,0 << !Warlock
    >>Tötet |cRXP_ENEMY_Scheckiger Eber|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Akzeptiert die Quest Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto 1411/1,-4109.22,-546.370
    >>Tötet |cRXP_ENEMY_Sarkoth|r. Plündert ihn für |cRXP_LOOT_Sarkoths zerstückelte Klaue|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Gebt die Quest Sarkoth ab
    .accept 804 >>Akzeptiert die Quest Sarkoth
    .target Hana'zua
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    >>Tötet |cRXP_ENEMY_Scheckiger Eber|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #loop
	.goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 3+685 >> Farmt bis 685+/1400xp
    .mob Mottled Boar
step
    #optional
    #label Boars
step << skip
    .goto 1411/1,-4260.000,-404.200
    >>Plündert |cRXP_PICK_Zurückgelassene Übungswaffe|r auf dem Boden
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 1 Silber habt|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    #label Duokna2
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    .vendor >> Verkauft Müll
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto 1411/1,-4214.400,-624.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Gebt die Quest Üble Familiare ab
    .accept 1499 >>Nehmt die Quest Üble Familiare an
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step << Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Gebt die Quest Üble Familiare ab
    .accept 794 >>Nehmt die Quest Medaillon der Burning Blade an
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto 1411/1,-4198.05,-605.59,12,0 << Warlock
    .goto 1411/1,-4198.58,-602.41,12,0 << !Warlock
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Gebt die Quest Scharfe Zähne ab << Shaman
    .turnin 788 >>Gebt die Quest Scharfe Zähne ab << !Shaman
    .accept 789 >>Akzeptiert die Quest Stich des Skorpiden
    .accept 2383 >>Akzeptiert die Quest Einfaches Pergament << Orc Warrior
    .accept 3065 >>Akzeptiert die Quest Einfache Schrifttafel << Troll Warrior
    .accept 3082 >>Akzeptiert die Quest Geätzte Schrifttafel << Troll Hunter
    .accept 3083 >>Akzeptiert die Quest Verschlüsselte Schrifttafel << Troll Rogue
    .accept 3084 >>Akzeptiert die Quest Mit Runen beschriftete Schrifttafel << Troll Shaman
    .accept 3085 >>Akzeptiert die Quest Geheiligte Schrifttafel << Troll Priest
    .accept 3086 >>Akzeptiert die Quest Glyphen-Schrifttafel << Troll Mage
    .accept 98575 >>Akzeptiert die Quest Besudelt Tafel << Troll Warlock
    .accept 3087 >>Akzeptiert die Quest Geätztes Pergament << Orc Hunter
    .accept 3088 >>Akzeptiert die Quest Verschlüsseltes Pergament << Orc Rogue
    .accept 3089 >>Akzeptiert die Quest Mit Runen beschriftetes Pergament << Orc Shaman
    .accept 3090 >>Akzeptiert die Quest Besudeltes Pergament << Orc Warlock
    .accept 98576 >>Akzeptiert die Quest Glyphenpergament << Orc Mage
    .turnin 804,1 >>Gebt die Quest Sarkoth ab << Shaman
    .turnin 804 >>Gebt die Quest Sarkoth ab << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Reist zu |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Gebt die Quest Verschlüsselte Schrifttafel ab << Troll Rogue
    .turnin 3088 >>Gebt die Quest Verschlüsseltes Pergament ab << Orc Rogue
    .train 53 >> Erlernt |T132090:0|t[Meucheln]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Gebt die Quest Verschlüsselte Schrifttafel ab << Troll Rogue
    .turnin 3088 >>Gebt die Quest Verschlüsseltes Pergament ab << Orc Rogue
    .target Rwag
step
    #optional
    .goto 1411/1,-4102.400,-588.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kzan Thornslash|r hinten in der Höhle
    .turnin 97279 >>Gebt die Quest Verlorene Waffen ab
    .target Kzan Thornslash
    .isQuestComplete 97279
step
    #optional
    .abandon 97279 >>Brecht die Quest Abtrünnige Waffen ab
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kzan|r
    .vendor >> Verkauft trash. Verkaufe deine Waffe, wenn sie dir genug Geld für einen |T135139:0|t[Kurzstab] (97c) bringt
    .target Kzan Thornslash
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kzan|r
    >>|cRXP_BUY_Kauft einen|r |T135139:0|t[Kurzstab] |cRXP_BUY_von ihm|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0097
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step << Rogue/Warrior
    .goto 1411/1,-4106.000,-593.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norzsh|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Norzsh
step << Warlock
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Gebt die Quest Besudeltes Pergament ab << Orc Warlock
    .turnin 98575 >>Gebt die Quest Besudelt Tafel ab << Troll Warlock
    .train 172 >> Erlernt |T136118:0|t[Verderbnis]
    .target Nartok
step
    #label Galgar
    .goto 1411/1,-4221.85,-561.52,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Akzeptiert die Quest Galgars Kaktusapfel Surprise
    .target Galgar
step << !Rogue !Shaman
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Verkauft Müll
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Abgeben Glyphen-Schrifttafel << Troll Mage
    .turnin 98576 >>Gebt die Quest Glyphenpergament ab << Orc Mage
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Nehmt die Quest Üble Familiare an
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Annehmen Faule Peons
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Beute |cRXP_LOOT_Kaktusapfel|r in der Nähe der Kakteen
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto 1411/1,-4340.82,-628.50,20,0
    .goto 1411/1,-4375.71,-507.590,45,0
    .goto 1411/1,-4467.19,-506.53,45,0
    >>|cRXP_WARN_Benutzt den|r |T133486:0|t[Großknecht-Totschläger] |cRXP_WARN_auf die schlafenden |r|cRXP_FRIENDLY_Faulen Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Tötet |cRXP_ENEMY_Skorpidarbeiter|r. Plündert sie für |cRXP_LOOT_Skorpidarbeiterschwanz|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto 1411/1,-4177.96,-248.5,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto 1411/1,-4146.24,-583.03,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto 1411/1,-4177.96,-315.13,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4442.34,-347.2,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    >>Tötet |cRXP_ENEMY_Skorpidarbeiter|r. Plündert sie für |cRXP_LOOT_Skorpidarbeiterschwanz|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto 1411/1,-4340.82,-628.50,0
	.goto 1411/1,-4340.82,-628.50,25,0
	.goto 1411/1,-4375.71,-507.590,25,0
	.goto 1411/1,-4467.19,-506.53,25,0
	.goto 1411/1,-4433.88,-329.93,25,0
	.goto 1411/1,-4452.38,-232.640,25,0
	.goto 1411/1,-4283.71,-228.76,25,0
	.goto 1411/1,-4220.26,-209.73,25,0
	.goto 1411/1,-4144.65,-269.65,25,0
	.goto 1411/1,-4125.62,-321.12,25,0
	.goto 1411/1,-4015.64,-371.53,25,0
    >>|cRXP_WARN_Benutzt den|r |T133486:0|t[Großknecht-Totschläger] |cRXP_WARN_auf die schlafenden |r|cRXP_FRIENDLY_Faulen Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 4 >> Farmt bis Stufe 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Gebt die Quest Galgars Kaktusapfel Surprise ab
    .target Galgar
    .isQuestComplete 4402
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Verkauft Müll
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto 1411/1,-4198.58,-602.41,12,0
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Gebt die Quest Stich des Skorpiden ab << Shaman
    .turnin 789 >>Gebt die Quest Stich des Skorpiden ab << !Shaman
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Erlernt |T136026:0|t[Erdschock]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .goto 1411/1,-4204.4,-629.91
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Mai'ah
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.01
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Trainiere deine Klassenfähigkeiten
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.021
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Gebt die Quest Üble Familiare ab
    .accept 794 >>Nehmt die Quest Medaillon der Burning Blade an
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .target Frang
    .money <0.01
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Gibt die Quest Faule Peons ab
    .accept 6394 >>Annehmen Thazz'rils Hacke
    .target Foreman Thazz'ril
step
    #completewith next
    .xp 4+1720 >> Farmt bis 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto 1411/1,-4324.43,-480.10,0
	.goto 1411/1,-4259.92,-411.01,25,0
	.goto 1411/1,-4279.48,-402.55,25,0
	.goto 1411/1,-4333.94,-360.95,25,0
	.goto 1411/1,-4335.53,-294.68,25,0
	.goto 1411/1,-4321.25,-243.220,25,0
	.goto 1411/1,-4366.20,-253.44,25,0
	.goto 1411/1,-4391.05,-328.52,25,0
	.goto 1411/1,-4440.75,-319.36,25,0
	.goto 1411/1,-4462.43,-405.370,25,0
	.goto 1411/1,-4398.98,-411.71,25,0
	.goto 1411/1,-4324.43,-480.10,25,0
    >>Beute |cRXP_LOOT_Kaktusapfel|r in der Nähe der Kakteen
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 4+1720 >> Farmt bis 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 5 >> Farmt bis Stufe 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto 1411/1,-4360.38,-175.18,30 >>Betretet die Höhle
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto 1411/1,-4361.44,-144.16,15,0
    .goto 1411/1,-4311.74,-113.14,15,0
    .goto 1411/1,-4274.19,-87.76,10 >>Reist zu |cRXP_LOOT_Thazz'ril's Hacke|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Tötet |cRXP_ENEMY_Teufelspirscher|r. Plündert sie für |cRXP_LOOT_Teufelspirscherhufe|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto 1411/1,-4274.19,-87.76
    >>Plündert |cRXP_LOOT_Thazz'rils Hacke|r an der Wand
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto 1411/1,-4220.26,-59.56
    >>Tötet |cRXP_ENEMY_Yarrog Schattenbann|r. Plündert ihn für das |cRXP_LOOT_Medaillon der Burning Blade|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto 1411/1,-4220.26,-59.56,0
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    >>Tötet |cRXP_ENEMY_Teufelspirscher|r. Plündert sie für |cRXP_LOOT_Teufelspirscherhufe|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1680 >> Farmt bis 1680+/2800xp << !Shaman
    .xp 5+690 >> Farmt bis 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1300 >> Farmt bis 1300+/2800xp << !Shaman
    .xp 5+310 >> Farmt bis 310+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto 1411/1,-4326.01,-41.23
    .goto 1411/1,-4793.96,233.36,30 >>|cRXP_WARN_Führt einen Logout-Skip durch, indem ihr den Charakter von Euch an der Kante des Steins positioniert, bis es aussieht, als würde er schweben, dann loggt euch aus und wieder ein|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> KLICKT HIER für ein Beispiel
step
    #softcore
    #completewith RazorHill1
    .goto 1411/1,-4326.01,-41.23
    .deathskip >> |cRXP_WARN_Sterbt und erscheint neu beim |cRXP_FRIENDLY_Geistheiler|r in der Nähe des Pfeils|r
    .target Geistheiler
step
    #softcore
    #label Betrayers
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Ihr könnt mit ihm von außen oder oben auf dem Bunker sprechen|r
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .target Gar'thok
step
    #softcore
    .goto 1411/1,-4665.400,311.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Koch Torka|r
    .accept 96825 >>Akzeptiert die Quest Diese Frucht beißt zurück
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Reist zum Turm
step
    #softcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Reist den Turm hinauf zu Furl
step
    #softcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step -- (Barracks)
    #softcore
    #label RazorHill1
    .goto 1411/1,-4815.200,306.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Akzeptiert die Quest Für die Ehre
    .target Turroc
step
    #completewith next
    .hs >>Ruhestein zum Tal der Prüfungen
    .use 6948
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Gebt die Quest Thazz'rils Hacke ab
    .target Foreman Thazz'ril
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Gebt die Quest Galgars Kaktusapfel Surprise ab
    .target Galgar
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    .vendor >> Verkauft Müll
    .target Duokna
    .isOnQuest 794
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target +Shikrik
    .goto 1411/1,-4203.87,-623.92
    .turnin 1516 >>Gebt die Quest Ruf der Erde ab
    .accept 1517 >>Akzeptiert die Quest Ruf der Erde
    .target +Canaga Earthcaller
    .goto 1411/1,-4204.4,-629.91
    .xp <6,1
step << Shaman
    .goto 1411/1,-4204.4,-629.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Gebt die Quest Ruf der Erde ab
    .accept 1517 >>Akzeptiert die Quest Ruf der Erde
    .target Canaga Earthcaller
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Gebt die Quest Medaillon der Burning Blade ab
    .accept 805 >>Nehmt die Quest Bericht erstatten in Sen'jin an
    .target Zureetha Fargaze
step
    .goto 1411/1,-4223.800,-631.000
    >>Klickt auf das |cRXP_PICK_Verschollene Tagebuch|r oben auf dem Fass
    .accept 96652 >>Akzeptiert die Quest Der Abenteurer
    .isQuestTurnedIn 794
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Annehmen Der Spiritualität geneigt
	.train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Ken'jai
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Mai'ah
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Frang
    .money <0.02
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Reist zu |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .train 1776 >> Erlernt |T132155:0|t[Solarplexus]
    .target Rwag
    .money <0.02
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts] |cRXP_BUY_von ihm|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Verkauft Müll
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .target Nartok
    .money <0.02
step << Warlock
    #optional
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto 1411/1,-4255.16,-645.07,25,0
    .goto 1411/1,-4245.64,-691.95,25,0
    .goto 1411/1,-4146.77,-787.12,12,0
    .goto 1411/1,-4120.86,-813.21,8,0
    .goto 1411/1,-4220.79,-841.76,10,0
    .goto 1411/1,-4266.26,-853.39,15,0
    .goto 1411/1,-4295.87,-883.36,25 >>Reist zum |cRXP_PICK_Schamanenschrein|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Benutzt den|r |T134743:0|t[Erdsapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto 1411/1,-4290.59,-878.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit der |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Gebt die Quest Ruf der Erde ab
    .accept 1518 >>Akzeptiert die Quest Ruf der Erde
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Canaga|r
    .goto 1411/1,-4204.4,-629.91
    .turnin 1518 >>Gebt die Quest Ruf der Erde ab
    .target Canaga Earthcaller
step << Shaman
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
step
    #label Leave
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto 1411/1,-4600.96,-603.82,25 >>Verlasst Das Tal der Prüfungen
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 6-10 Durotar
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto 1411/1,-4715.17,-599.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Akzeptiert die Quest Die Bürde eines Peons
    .target Ukor
step
    #completewith next
    .subzone 367 >>Reist ins Dorf Sen'Jin
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Er patrouilliert ein bisschen|r
    .accept 786 >>Akzeptiert die Quest Vereitelung der Kolkaraggression
    .target Lar Prowltusk
step
    .goto 1411/1,-4885.200,-852.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xar'Ti|r
    .accept 97223 >>Akzeptiert die Quest Blutkrallenmatriarchin
    .target Xar'Ti
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Akzeptiert die Quest Praktische Beute
    .accept 96821 >>Akzeptiert die Quest Nehmt die Beine in die Hand
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
    .accept 818 >>Akzeptiert die Quest Ein geistvolles Getränk
    .accept 97225 >>Akzeptiert die Quest Vergessene Loagötzen
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.270
    .turnin 805 >>Gebt die Quest Bericht erstatten in Sen'jin ab
    .accept 808 >>Akzeptiert die Quest Minshinas Schädel
    .accept 826 >>Akzeptiert die Quest Zalazane
    .accept 823 >>Akzeptiert die Quest Bericht an Orgnil
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    #completewith next
    .goto 1411/1,-4931.96,-815.32,8,0
    .goto 1411/1,-4939.89,-793.12,8 >> Betretet die große Hütte
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pa'zula|r
    >>|cRXP_WARN_Dies wird eine Quest freischalten. Überspringt diesen Schritt, falls ihr bereits 2 Berufe habt|r
    .train 7411 >> Erlernt |T136244:0|t[Verzauberkunst]
    .target Pa'zula
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pa'zula|r
    .accept 96873 >>Akzeptiert die Quest Ein Dorn im Nacken
    .target Pa'zula
    .skill enchanting,<1,1
step << Rogue
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Kauft|r |T132414:0|t[Beschwerte Wurfaxt] |cRXP_BUY_von ihr|r
    .collect 3131,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
    .money <0.07
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkäuft trash. Verkauft eure Waffe, falls dies genug Geld für einen |T135145:0|t[Wanderstecken] (4s 79c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (3s 81c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft |r |T135641:0|t[Stilett] |cRXP_BUY_bei ihm|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 60c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft eine |r |T132401:0|t[Große Axt] |cRXP_BUY_bei ihm|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 13c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft trash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135499:0|t[Hornholz-Doppelbogen] (2s 71c) bringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto 1411/1,-4939.36,-838.941
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Un'Thuwa
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto 1411/1,-4722.57,-1117.42,40,0
    >>Rennt den Strand hinunter. Tötet |cRXP_ENEMY_Kriecher|r und |cRXP_ENEMY_Makruras|r. Sammelt Beute von ihnen für |cRXP_LOOT_Kriechersekret|r und |cRXP_LOOT_Augen|r. Ihr müsst diesen Schritt hier nicht beenden
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto 1411/1,-4722.57,-1117.42,75 >> Erreicht das Ende des Strandes
    .isOnQuest 818
step
    #completewith Bonfire
    >>Tötet |cRXP_ENEMY_Zwangsarbeiter der Kolkar|r und |cRXP_ENEMY_Kundschafter der Kolkar|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    .goto 1411/1,-4653.84,-983.47,30 >>BETRETET das Kolkar-Lager
    .isOnQuest 786
step << Priest
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_während ihr in Durotar Quests absolviert. Das wird später verwendet, um deinen Zauberstab herzustellen|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr bereits einen Zauberstab gekauft habt oder einen billig aus dem Auktionshaus bekommen könnt.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_während ihr in Durotar Quests absolviert. Das wird später verwendet, um deinen Zauberstab herzustellen|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_aktiv ist, er ist ein seltener mob der Stufe 9. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr ihn habt|r
    .unitscan Warlord Kolkanis
step
    .goto 1411/1,-4596.20,-1057.14
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r im Zelt auf dem Boden auf
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r auf dem Boden
    .goto 1411/1,-4482.52,-917.90
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r auf dem Boden
    .goto 1411/1,-4406.91,-974.30
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #softcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Dies startet eine Begleitquest|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Pal'juh|r nicht dort ist, könnt ihr diesen Schritt gerne überspringen und per Death-Skip am Lagerfeuer zurück zum Dorf Sen'jin gelangen.|r
    .accept 99123,1 >>Akzeptiert die Quest In den Schatten verloren
    .target Pal'juh
step
    #hardcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Dies startet eine Begleitquest|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Pal'juh|r nicht dort ist, könnt ihr diesen Schritt gerne überspringen|r
    .accept 99123,1 >>Akzeptiert die Quest In den Schatten verloren
    .target Pal'juh
step
    #softcore
    .goto 1411/1,-4681.300,-986.800
    >>Eskortiert |cRXP_FRIENDLY_Pal'juh|r aus der Kolkar Klippe
    .complete 99123,1 --
    .target Pal'juh
    .isOnQuest 99123
step << skip
    #softcore
    .goto 1411/1,-4417.49,-985.23,-1
    .goto 1411/1,-5002.81,-774.08,-1
    .deathskip >> Sterbt am Lagerfeuer und belebt euch am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 786
step << skip
    #hardcore
    #completewith next
    .goto 1411/1,-4656.48,-981.35,30 >>Verlasst das Kolkar-Lager
    .isQuestComplete 786
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Er patrouilliert ein bisschen|r
    .turnin 786,1 >>Gebt die Quest Vereitelung der Kolkaraggression ab << Shaman
    .turnin 786 >>Gebt die Quest Vereitelung der Kolkaraggression ab << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step
    .goto 1411/1,-4920.900,-814.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Vornal|r
    .turnin 99123 >>Gebt die Quest In den Schatten verloren ab
    .target Master Vornal
    .isQuestComplete 99123
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkäuft trash. Verkauft eure Waffe, falls dies genug Geld für einen |T135145:0|t[Wanderstecken] (4s 79c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (3s 81c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft |r |T135641:0|t[Stilett] |cRXP_BUY_bei ihm|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 60c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft eine |r |T132401:0|t[Große Axt] |cRXP_BUY_bei ihm|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 13c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft trash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135499:0|t[Hornholz-Doppelbogen] (2s 71c) bringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #optional
    .goto 1411/1,-4920.86,-813.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Gebt die Quest Ein geistvolles Getränk ab
    .target Master Vornal
    .isQuestComplete 818
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .vendor >> Verkauft Müll
    .collect 159,20,784,1
    .target K'waii
step << !Warlock !Mage !Priest
    .goto 1411/1,-4903.41,-786.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_von ihm, wenn ihr es euch leisten könnt|r << Warrior/Rogue
    .vendor >> Verkauft Müll
    .target Hai'zan
step
    #softcore
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Er patrouilliert ein bisschen|r
    .turnin 786,1 >>Gebt die Quest Vereitelung der Kolkaraggression ab << Shaman
    .turnin 786 >>Gebt die Quest Vereitelung der Kolkaraggression ab << !Shaman
    .target Lar Prowltusk
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Kammschattenlauerer|r und |cRXP_ENEMY_Kammschattenkrabbler|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step
    .goto 1411/1,-4565.700,-192.300
    >>Tötet |cRXP_ENEMY_Ukorsbane|r (elite). Plündert ihn für |T133628:0|t[|cRXP_LOOT_Ukors verlorener Beutel|r]
    >>|cRXP_WARN_Das ist schwer! Bildet eine Gruppe, falls möglich. Überspringt diesen Schritt, falls ihr ihn nicht töten könnt|r
    .collect 275722,1,96876 --Ukor's Lost Pack (x1)
    .accept 96876 >>Akzeptiert die Quest Ukors verlorener Beutel
    .mob Ukorsbane
step
    .goto 1411/1,-4710.400,-209.400
    >>Tötet |cRXP_ENEMY_Kammschattenlauerer|r und |cRXP_ENEMY_Kammschattenkrabbler|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step --camp quest
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Gebt die Quest Die Abenteurerin ab
    .accept 96604 >>Akzeptiert die Quest Die große weite Welt
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #hardcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Akzeptiert die Quest Die große weite Welt
    .target Brakk
step
    #hardcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Tippt am Lagerfeuer /sitzen und wartet eine Minute, bis ihr den Buff "Camp Belohnungen" bekommt|r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sitzen
    .timer 59, RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Gebt die Quest Die große weite Welt
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Akzeptiert die QuestGrundlagen des Zeltens: Kochkunst
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #hardcore
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #hardcore
    #label Betrayers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r und |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .accept 806 >>Akzeptiert die Quest Dunkle Stürme
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Akzeptiert die Quest Zerbrecht ein paar Eier
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r
    .train 2550 >>Erlerne Kochkunst
    .turnin 96655 >>Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .target Cook Torka
step
    #hardcore
    .goto 1411/1,-4665.400,311.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Torka|r
    .accept 96825 >>Akzeptiert die Quest This Fruit Could Biss Zurück
    .target Cook Torka
step
    #hardcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Reist zum Turm
step
    #hardcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Reist den Turm hinauf zu Furl
step
    #hardcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step -- (Barracks)
    #hardcore
    #label RazorHill1
    .goto 1411/1,-4815.200,306.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Akzeptiert die Quest For Ehre
    .target Turroc
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >> Reist zur Burg Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >> Reist zur Burg Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #completewith AgedEnvelope
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step --south/west of keep
    #completewith next
    .goto 1411/1,-4992.700,-234.400,0
    .goto 1411/1,-5101.700,-178.500,0
    .goto 1411/1,-4992.700,-234.400,25,0
    .goto 1411/1,-5101.700,-178.500,25,0
    >>Plündert den |cRXP_PICK_Räuberbogen|r vom Boden
    >>|cRXP_WARN_Es gibt zwei verschiedene Spawnpositionen|r
    .complete 96822,1 --|1/1 Raider's Bow
step --center in keep
    .goto 1411/1,-4994.900,-182.300
    >>Plündert die |cRXP_PICK_Räuberstreitaxt|r vom Boden
    .complete 96822,2 --|1/1 Raider's Battleaxe
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Wachkommandant Zalaphil|r |cRXP_WARN_aktiv ist, da er ein seltener mob der Stufe 9 ist. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr einen habt|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto 1411/1,-5124.95,-243.92,8,0
    .goto 1411/1,-5115.96,-251.68,8,0
    .goto 1411/1,-5111.21,-232.29,8,0
    .goto 1411/1,-5097.46,-232.29,8 >> Bewegt euch zum zweiten Stock der Burg
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Tötet |cRXP_ENEMY_Lieutenant Benedict|r. Plündert ihn für seinen |cRXP_LOOT_Schlüssel|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    .goto 1411/1,-5128.13,-231.58,5,0
    .goto 1411/1,-5126.01,-221.36,5,0
    .goto 1411/1,-5124.42,-229.82,5,0
    .goto 1411/1,-5131.83,-229.82,5,0
    .goto 1411/1,-5131.83,-222.42,5,0
    .goto 1411/1,-5096.40,-223.83
    >>|cRXP_WARN_Geht die Treppen in der Burg hinauf|r
    >>Öffnet |cRXP_PICK_Benedict's Truhe|r. Plündert sie für |T133471:0|t[|cRXP_LOOT_Vergilbter Umschlag|r]
    >>Benutzt den |T133471:0|t[|cRXP_LOOT_Vergilbter Umschlag|r] um die Quest zu starten
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Akzeptiert die Quest Die Befehle des Admirals
    .use 4881
step --south/west of keep
    #loop
    .goto 1411/1,-4992.700,-234.400,0
    .goto 1411/1,-5101.700,-178.500,0
    .goto 1411/1,-5101.700,-178.500,25,0
    .goto 1411/1,-4992.700,-234.400,25,0
    >>Plündert |cRXP_PICK_Raider's Verbeugen|r auf dem Boden
    >>|cRXP_WARN_Es gibt zwei verschiedene Spawnpositionen|r
    .complete 96822,1 --|1/1 Raider's Bow
step  --northern tower
    #label AgedEnvelope
    .goto 1411/1,-4951.500,-59.600
    >>Plündert das |cRXP_PICK_Räuberschild|r vom Boden
    .complete 96822,3 --|1/1 Raider's Shield
step
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2520 >> Farmt bis 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2200 >> Farmt bis 2200+/4500 XP
    .isOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2070 >> Farmt bis 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+1750 >> Farmt bis 1750+/4500 XP
    .isOnQuest 823
step << skip
    #softcore
    #completewith RazorTurnins1
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >> Sterbt am nördlichen Turm außerhalb von Burg Tiragarde und lasst euch beim |cRXP_FRIENDLY_Geistheiler|r wiederbeleben
step --camp quest
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Gebt die Quest Die Abenteurerin ab
    .accept 96604 >>Akzeptiert die Quest Die große weite Welt
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #softcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Akzeptiert die Quest Die große weite Welt
    .target Brakk
step
    #softcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Tippt am Lagerfeuer /sitzen und wartet eine Minute, bis ihr den Buff "Camp Belohnungen" bekommt|r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sitzen
    .timer 59, RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Gebt die Quest Die große weite Welt
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Akzeptiert die QuestGrundlagen des Zeltens: Kochkunst
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r und |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .accept 806 >>Akzeptiert die Quest Dunkle Stürme
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .turnin 96821 >>Gebt die Quest Nehmt die Beine in die Hand ab
    .accept 825 >>Akzeptiert die Quest Aus den Wrackteilen geborgen....
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Akzeptiert die Quest Zerbrecht ein paar Eier
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    #label RazorTurnins1
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 825 >>Akzeptiert die Quest Aus den Wrackteilen geborgen....
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .target +Gar'Thok
step
    #optional
    .goto 1411/1,-4724.900,287.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r
    .accept 99048 >>Akzeptiert die Quest Hand vermisst
    .target Orgnil Soulscar
    .xp <8,1
step
    #softcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r
    .train 2550 >>Erlerne Kochkunst
    .turnin 96655 >>Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .target Cook Torka
step
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Reist zum Turm
step
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Reist den Turm hinauf zu Furl
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Gebt die Quest Akzeptiert Euer Schicksal ab
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkäuft trash. Verkauft eure Waffe, falls dies genug Geld für einen |T135145:0|t[Wanderstecken] (4s 79c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (3s 81c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 60c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T132401:0|t[Große Axt] |cRXP_BUY_von ihm|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 13c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Verkauft Trödel. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135499:0|t[Hornholz-Doppelbogen] (2s 83c) bringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft|r |T132382:0|t[Raue Pfeile] |cRXP_BUY_von ihm|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<800 << Hunter
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .home >> Setzt euren Ruhestein in Klingenhügel
    .bindlocation 362
    .target Innkeeper Grosk
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    >>|cRXP_WARN_Behaltet 4 Silber für eure Klassenzauber!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Behaltet 2 Silber für eure Klassenzauber!|r << Priest
    .vendor >> Verkauft Müll
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
step << !Mage !Hunter !Druid
    #optional
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
step
    .goto 1411/1,-4815.400,306.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Turroc|r
    .turnin 96822 >>Gebt die Quest Für die Ehre ab
    .target Turroc
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Gebt die Quest Der Spiritualität geneigt ab
    .accept 5648 >> Akzeptiert die Quest Gewänder der Spiritualität
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .target Tai'jin
step << Priest
    .goto 1411/1,-4770.16,170.62
    >>Wirkt |T135929:0|t[Geringes Heilen] und |T135987:0|t[Machtwort: Seelenstärke] auf |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Gebt die Quest Gewänder der Spiritualität ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Rogue/Warrior
    .goto 1411/1,-4826.74,330.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Rawrk
step
    .goto 1411/1,-4838.37,321.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    .goto 1411/1,-4724.900,287.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r
    .accept 99048 >>Akzeptiert die Quest Hand vermisst
    .target Orgnil Soulscar
step
    .goto 1411/1,-5061.700,201.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Heglan Shadeeye|r
    .turnin 99048 >>Gebt die Quest Hand vermisst ab
    .accept 99049 >>Akzeptiert die Quest Bedrohung von unten
    .target Heglan Shadeeye
step
    .goto 1411/1,-5073.900,244.700
    >>Plündert den |cRXP_PICK_Zurückgelassenen Dolch|r vom Boden
    .complete 99049,1 --|1/1 Orcish Dagger
step
    .goto 1411/1,-5140.800,229.100
    >>Plündert die |cRXP_PICK_Waffenteile|r vom Boden
    .complete 99049,3 --|1/1 Broken Bone Trident
step
    .goto 1411/1,-5138.000,314.100
    >>Plündert die |cRXP_PICK_Seltsamen Trümmer|r vom Boden
    .complete 99049,2 --|1/1 Banner Scrap
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto 1411/1,-5238.63,-146.63,0
    .goto 1411/1,-5238.63,-146.63,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    .goto 1411/1,-5263.49,-301.03,20,0
    .goto 1411/1,-5245.51,-330.64,20,0
    .goto 1411/1,-5267.72,-326.41,20,0
    .goto 1411/1,-5306.31,-239.690,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    >>Plündert den |cRXP_PICK_Gnomen-Werkzeugkasten|r in und um die Boote herum
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith MartEgg
    .goto 1411/1,-5510.41,-634.14,100 >> Schwimmt zur Insel
step
    #completewith TigerFur
    >>Sammelt die |cRXP_PICK_Schwanzpeitscher-Eier|r vom Boden
    >>|cRXP_WARN_Sie werden normalerweise von einem|r |cRXP_ENEMY_Blutkrallenschwanzpeitscher|r bewacht
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #optional
    #completewith MainIsland
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step --center of first small island
    #label MartEgg
    .goto 1411/1,-5599.500,-716.700
    >>Tötet die |cRXP_ENEMY_Blutklauenmatriarchin|r. Plündert sie für |cRXP_LOOT_Blutklauenmatriachin Eier|r
    .complete 97223,1 --|1/1 Bloodtalon Matriarch Eggs
    .mob Bloodtalon Matriarch
step
    #label MainIsland
    .goto 1411/1,-5501.95,-1167.12,150 >>Schwimmt zur Hauptinsel
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>Tötet |cRXP_ENEMY_Verhexter Troll|r und |cRXP_ENEMY_Voodootroll|r. Plündert sie für |cRXP_LOOT_Verhexter Anhänger|r
    >>|cRXP_WARN_Benutzt|r |T135952:0|t[Entzaubern] |cRXP_WARN_auf|r Verhexter Anhänger|cRXP_LOOT_ um|r |T1500915:0|t[|cRXP_WARN_Leuchtende Rückstände|r] |cRXP_LOOT_zu erhalten|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #completewith ZalazaneKill
    >>Tötet |cRXP_ENEMY_Verhexte Trolle|r und |cRXP_ENEMY_Voodootrolle|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #completewith VooHexTrolls
    >>Plündert die |cRXP_PICK_Loagötze|r auf dem Boden
    >>|cRXP_WARN_Sie sind hauptsächlich in der Nähe der Steinmauern in der Umgebung zu finden|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Spart euren|r |T136026:0|t[Erdschock] |cRXP_WARN_für die|r |T136052:0|t[Welle der Heilung] falls er sie wirkt << Shaman
    >>|cRXP_WARN_Spart euren|r |T132155:0|t[Solarplexus] |cRXP_WARN_auf, wenn er|r |T136052:0|t[Welle der Heilung] wirkt << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto 1411/1,-5526.27,-1286.62
    >>Plündert einen der |cRXP_LOOT_Schädel|r vom Boden
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto 1411/1,-5526.27,-1286.62
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Spart euren|r |T136026:0|t[Erdschock] |cRXP_WARN_für die|r |T136052:0|t[Welle der Heilung] falls er sie wirkt << Shaman
    >>|cRXP_WARN_Spart euren|r |T132155:0|t[Solarplexus] |cRXP_WARN_auf, wenn er|r |T136052:0|t[Welle der Heilung] wirkt << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith VooHexTrolls
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Tötet |cRXP_ENEMY_Verhexter Troll|r und |cRXP_ENEMY_Voodootroll|r. Plündert sie für |cRXP_LOOT_Verhexter Anhänger|r
    >>|cRXP_WARN_Benutzt|r |T135952:0|t[Entzaubern] |cRXP_WARN_auf|r Verhexter Anhänger|cRXP_LOOT_ um|r |T1500915:0|t[|cRXP_WARN_Leuchtende Rückstände|r] |cRXP_LOOT_zu erhalten|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Tötet |cRXP_ENEMY_Verhexte Trolle|r und |cRXP_ENEMY_Voodootrolle|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #label VooHexTrolls
    #loop
    .goto 1411/1,-5393.900,-1215.300,0
    .goto 1411/1,-5393.900,-1215.300,30,0
    .goto 1411/1,-5373.300,-1153.000,30,0
    .goto 1411/1,-5427.400,-1114.900,30,0
    .goto 1411/1,-5501.500,-1123.600,30,0
    .goto 1411/1,-5587.600,-1212.000,30,0
    .goto 1411/1,-5479.000,-1212.000,30,0
    >>Plündert die |cRXP_PICK_Loagötze|r auf dem Boden
    >>|cRXP_WARN_Sie sind hauptsächlich in der Nähe der Steinmauern in der Umgebung zu finden|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #completewith TaillasherEggs
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TigerFur
    #loop
    .goto 1411/1,-5123.90,-1132.93,0
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label TaillasherEggs
    #loop
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Sammelt die |cRXP_PICK_Schwanzpeitscher-Eier|r vom Boden
    >>|cRXP_WARN_Sie werden normalerweise von einem|r |cRXP_ENEMY_Blutkrallenschwanzpeitscher|r bewacht
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #loop
    .goto 1411/1,-5115.96,-794.53,0
    .goto 1411/1,-5115.96,-794.53,60,0
    .goto 1411/1,-5035.07,-916.490,60,0
    .goto 1411/1,-4990.65,-989.81,60,0
    .goto 1411/1,-4905.52,-1028.23,60,0
    .goto 1411/1,-4807.17,-1122.35,60,0
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith next
    .goto 1411/1,-5002.81,-774.08,50,0
    .deathskip >> Sterbt und lasst euch beim |cRXP_FRIENDLY_Geistheiler|r wiederbeleben, oder lauft zurück
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Reist ins Dorf Sen'Jin
step
    .goto 1411/1,-4948.88,-768.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Springt in die Hütte|r
    .vendor >> Verkauft trash und repariert
    .target Trayexir
    .isOnQuest 808
step
    .goto 1411/1,-4960.100,-791.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pa'zula|r
    .turnin 96873 >>Gebt die Quest Ein Dorn im Nacken ab
    .target Pa'zula
    .isQuestComplete 96873
    .skill enchanting,<1,1
step << Mage
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Trainiere deine Klassenfähigkeiten
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Gebt die Quest Minshinas Schädel ab
    .turnin 826,2 >>Gebt die Quest Zalazane ab << Shaman
    .turnin 826 >>Gebt die Quest Zalazane ab << !Shaman
    .turnin 97225 >>Gebt die Quest Vergessene Loagötzen ab
    .target +Master Gadrin
    .goto 1411/1,-4920.86,-825.90
    .turnin 818 >>Gebt die Quest Ein geistvolles Getränk ab
    .target +Master Vornal
    .goto 1411/1,-4920.86,-813.91
    .turnin 817 >>Gebt die Quest Praktische Beute ab
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
step
    .goto 1411/1,-4885.400,-852.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xar'Ti|r
    .turnin 97223 >>Gebt die Quest Blutkrallenmatriarchin ab
    .target Xar'Ti
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Bindet euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_und|r |T134712:0|t[Echt klebriger Leim]|cRXP_WARN_. Behaltet sie für Notfälle|r
step
    .goto 1411/1,-4715.100,-599.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ukor|r
    .turnin 96876 >>Gebt die Quest Ukors verlorener Beutel ab
    .target Ukor
    .isOnQuest 96876
step --at low lvl razormanes
    #completewith QuilboarsScouts
    >>Plündert die |cRXP_PICK_Kaktusfeige|r auf dem Boden
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #label QuilboarsScouts
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4615.77,72.98,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4570.29,109.99,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4526.41,70.86,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4450.80,62.40,30,0
    .goto 1411/1,-4442.34,112.46,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Tötet |cRXP_ENEMY_Stacheleber der Grimmhauer|r und |cRXP_ENEMY_Späher der Grimmhauer|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step --at low lvl razormanes
    #loop
    .goto 1411/1,-4543.300,82.500,0
    .goto 1411/1,-4543.300,82.500,40,0
    .goto 1411/1,-4459.000,66.300,40,0
    >>Plündert die |cRXP_PICK_Kaktusfeige|r auf dem Boden
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step << Hunter
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.8,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto 1411/1,-4251.99,384.23,50,0
    >>Tötet |cRXP_ENEMY_Staubläufer der Grimmhauer|r und |cRXP_ENEMY_Schlachtwache der Grimmhauer|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #loop
	.goto 1411/1,-4475.12,92.72,0
	.goto 1411/1,-4475.12,92.72,50,0
	.goto 1411/1,-4401.09,205.52,50,0
	.goto 1411/1,-4270.49,260.51,50,0
	.goto 1411/1,-4166.33,233.01,50,0
	.goto 1411/1,-4130.37,182.25,50,0
	.goto 1411/1,-4208.1,98.71,50,0
	.goto 1411/1,-4300.1,57.11,50,0
	.goto 1411/1,-4456.61,65.57,50,0
    .xp 9+4960 >> Farmt bis 4960+/6500xp
step
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 825 >>Gebt die Quest Aus den Wrackteilen geborgen... ab
    .turnin 837 >>Gebt die Quest Übergriff ab << Hunter
    .target Gar'Thok
step
    .goto 1411/1,-4725.000,287.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 99049 >>Gebt die Quest Bedrohung von unten ab
    --.accept 99051 >>Accept Threat from Below
    .target Orgnil Soulscar
step
    .goto 1411/1,-4665.47,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .turnin 96825 >>Gebt die Quest Diese Frucht beißt zurück ab
    .target Cook Torka
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .accept 6062 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Thotar
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft |T132382:0|t[Scharfe Pfeile] und einen |T134410:0|t[Mittleren Köcher] von ihm|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft |T132382:0|t[Scharfe Pfeile] von ihm|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto 1411/1,-4693.49,-183.64,0
    .goto 1411/1,-4699.31,101.88,40,0
    .goto 1411/1,-4696.14,37.73,40,0
    .goto 1411/1,-4693.49,-1.4,40,0
    .goto 1411/1,-4701.42,-66.26,40,0
    .goto 1411/1,-4649.61,-82.83,40,0
    .use 15917 >> |cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Scheckigen Terroreber|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6062 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6083 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .accept 6083 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Gebt euren |cRXP_ENEMY_Scheckiger Terroreber|r frei, indem ihr mit der rechten Maustaste auf seinen Einheitenrahmen klickt und auf Freigeben klickt. Andernfalls könnt ihr einen |rBrandungskriecher|cRXP_ENEMY_ nicht zähmen|r
step << Hunter
    #loop
    .goto 1411/1,-5115.44,984.19,0
    .goto 1411/1,-5091.64,809.0,40,0
    .goto 1411/1,-5129.18,877.03,40,0
    .goto 1411/1,-5137.11,934.49,40,0
    >>|cRXP_WARN_Tötet nicht die|r |cRXP_ENEMY_Gepanzerter Skorpid|r |cRXP_WARN_die ihr seht. Ihr braucht sie später|r
    .use 15919 >> |cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Brandungskriecher|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6083 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6082 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Gebt euren |cRXP_ENEMY_Ausgewachsener Brandungskriecher|r frei, indem ihr auf sein Einheitenfenster rechtsklickt und auf Freigeben klickt, sonst könnt ihr keinen|r |cRXP_ENEMY_Gepanzerter Skorpid|r zähmen
step << Hunter
    #loop
    .goto 1411/1,-4862.16,506.2,0
    .goto 1411/1,-4862.16,506.2,40,0
    .goto 1411/1,-4818.28,616.53,40,0
    .goto 1411/1,-4829.38,733.21,40,0
    .goto 1411/1,-4908.17,727.57,40,0
    .goto 1411/1,-4933.55,776.21,40,0
    .goto 1411/1,-4973.73,846.71,40,0
    .goto 1411/1,-4984.31,906.29,40,0
    .use 15920 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Gepanzerten Skorpid|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6082 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6081 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith Rezlak1
    +|cRXP_WARN_Zieht|r |T132164:0|t[Wildtier zähmen]|cRXP_WARN_,|r |T136095:0|t[Tier freigeben]|cRXP_WARN_, und|r |T132161:0|t[Begleiter rufen] |cRXP_WARN_in eure Aktionsleisten|r
step << Hunter
    .goto 1411/1,-4666.0,305.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Kauft|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihm|r. |cRXP_BUY_Ihr werdet dies später verwenden, um euer Haustier zu füttern|r
    .vendor >> Verkauft Müll
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step << Hunter
    #optional
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
    .xp <10,1
step << Hunter/Shaman
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Akzeptiert die Quest Verloren, aber nicht vergessen
    .target Misha Tor'kren
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    --.accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .accept 2983 >>Akzeptiert die Quest Ruf des Feuers
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .target Swart
    .xp <10,1
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
    .xp <10,1
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Akzeptiert die Quest Verhexung der Schwäche << Troll
    .accept 5660 >> Akzeptiert die Quest Berührung der Schwäche << Undead
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
    .xp <10,1
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .xp <10,1
step << !Hunter
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.8,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto 1411/1,-4251.99,384.23,50,0
    >>Tötet |cRXP_ENEMY_Staubläufer der Grimmhauer|r und |cRXP_ENEMY_Schlachtwache der Grimmhauer|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #completewith next
    .goto 1411/1,-4414.31,999.70,50 >> Reist nach Rezlak
step
    #label Rezlak1
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
step
    #loop
    .goto 1411/1,-4590.39,1036.36,0
    .goto 1411/1,-4590.39,1036.36,40,0
    .goto 1411/1,-4590.39,950.7,40,0
    .goto 1411/1,-4613.12,902.410,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4693.49,832.97,40,0
    .goto 1411/1,-4598.32,854.12,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto 1411/1,-4505.79,597.14,40,0
    .goto 1411/1,-4466.13,630.980,40,0
    .goto 1411/1,-4526.41,679.98,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Plündert die |cRXP_PICK_Gestohlenen Vorratssäcke|r auf dem Boden
    .complete 834,1 --Sack of Supplies (5)
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Gebt die Quest Wind in der Wüste ab
    .accept 835 >>Akzeptiert die Quest Sicherung der Linien
    .target Rezlak
step
    #completewith next
    .goto 1411/1,-4327.07,932.02,40,0
    .goto 1411/1,-4198.05,911.22,30,0
    .goto 1411/1,-4165.27,903.11,20 >>Springt in den Donnergrat << !Hunter !Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Gebt euren|r |T136218:0|t[Wichtel] |cRXP_WARN_frei indem ihr auf den Einheitenrahmen und dann auf freigeben klickt |r << Warlock
    .cast 2641 >>|cRXP_WARN_Wirkt|r |T136095:0|t[Tier freigeben] |cRXP_WARN_und springt dann in Donnergrat|r << Hunter
step
    #softcore
    .goto 1411/1,-4190.12,868.22
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
    >>|cRXP_WARN_Habt keine Angst davor, für die |cRXP_LOOT_Klaue|r zu sterben, da ihr danach beim |cRXP_FRIENDLY_Geistheiler|r wieder aufleben werdet|r
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T132155:0|t[Solarplexus] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Rogue
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T136026:0|t[Erdschock] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Shaman
    >>|cRXP_WARN_Ihr könnt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Fizzle|r wirken |cRXP_WARN_und tötet|r |cRXP_ENEMY_Wichtel|r |cRXP_WARN_zuerst|r << Mage
    >>|cRXP_WARN_Tötet den Wichtel zuerst|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << !Warlock
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank], |T133728:0|t[Schwacher Gesundheitsstein] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #hardcore
    .goto 1411/1,-4190.12,868.22
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T132155:0|t[Solarplexus] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Rogue
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T136026:0|t[Erdschock] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Shaman
    >>|cRXP_WARN_Ihr könnt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Fizzle|r wirken |cRXP_WARN_und tötet|r |cRXP_ENEMY_Wichtel|r |cRXP_WARN_zuerst|r << Mage
    >>|cRXP_WARN_Tötet den Wichtel zuerst|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << !Warlock
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank], |T133728:0|t[Schwacher Gesundheitsstein] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4449.74,1188.64
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 806
    .xp >10,1
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4035.2,679.63,60 >> Kämpft euch den Weg hinaus aus Donnergrat
    .isQuestComplete 806
    .xp <10,1
step << Hunter/Shaman
    #hardcore
    .goto 1411/1,-4035.2,679.63,60 >> Kämpft euch den Weg hinaus aus Donnergrat
    .isQuestComplete 806
step << Hunter/Shaman
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Dies startet einen 45-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .target Rhinag
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    .xp 9+2520 >>Farmt auf 2520+/6500 bis Stufe 9
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    +Farmt bis euer Ruhestein auf  <5 minuten Ablinkzeit ist
    .cooldown item,6948,<0
step << Hunter/Shaman
    #label EnterOrg
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
step << Hunter/Shaman
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Er ist oben im Gebäude.|r
    .accept 97246 >>Akzeptiert die Quest Mahlzeit oder Spielzeit
    .target Thatog
step << Hunter/Shaman
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borstan|r
    .turnin 97246 >>Gebt die QuestMahlzeit oder Spielzeit ab
    .accept 97249 >>Akzeptiert die Quest Lieblingsessen
    .target Borstan
step << Hunter/Shaman
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Gebt die Quest Halikors Huf ab
    .target Kamari
    .isOnQuest 96877
step << Hunter/Shaman
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'geld|r
    .accept 97242 >>Akzeptiert die Quest Yelmaks Mischmasch
    .target Kor'geld
step << Hunter/Shaman
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Reist in Das Tal der Ehre
step << Hunter/Shaman
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Plündert die |cRXP_PICK_Handvoll Rohrkolben|r und |cRXP_PICK_Speergrasstecklinge|r im Wasser
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Gebt die Quest Die Ausbildung des Tiers ab
    .target Ormak Grimshot
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
step << Hunter
    #completewith FindAntidote
    +|cRXP_WARN_Legt|r |T132162:0|t[Wildtierausbildung]|cRXP_WARN_(unter dem Allgemein-Reiter),|r |T132163:0|t[Tier wiederbeleben]|cRXP_WARN_, und|r |T132165:0|t[Tier füttern] |cRXP_WARN_auf eure Aktionsleisten|r
    >>|cRXP_WARN_Erinnert euch daran, euer tier zu trainieren, wenn es Trainingspunkte für|r |T132162:0|t[Wildtierausbildung] erhält
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Legt den|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_WARN_wenn ihr auf Stufe 11 seid an|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Legt |r |T135499:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Hunter/Shaman
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Gebt die Quest Yelmaks Mischmasch ab
    .target Kor'geld
step << Hunter/Shaman
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Ihr müsst möglicherweise etwa 10 Sek. warten, bevor ihr diese Quest annehmen könnt|r
    .accept 97275 >>Akzeptiert die Quest Whuut Ding will Weile haben
    .target Yelmak
step << Hunter/Shaman
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Whuut|r
    .turnin 97275 >>Gebt die Quest Whuut Ding will Weile haben ab
    .target Whuut
step << Hunter/Shaman
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Gebt die Quest Lieblingsessen ab
    .target Migi
step << Hunter/Shaman
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thra|r
    .accept 97326 >>Akzeptiert die Quest Felsen zum Faulenzen
    .target Thra
step << Hunter/Shaman
    .goto 1454/1,-4293.600,1949.900
    >>Plündert die orangenen |cRXP_PICK_Felsen|r auf dem Boden
    >>|cRXP_WARN_Überspringt diese Quest, wenn es viel Konkurrenz gibt! Es gibt nicht so viele |cRXP_PICK_Felsen|r und sie erscheinen nicht schnell wieder.|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step << Hunter/Shaman
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Gebt die Quest Felsen zum Faulenzen ab
    .target Thra
    .isQuestComplete 97326
step << Hunter/Shaman
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step << Hunter/Shaman
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
step << Hunter/Shaman
    #label FindAntidote
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'ghan|r in der Kluft der Schatten
    .accept 813 >>Akzeptiert die Quest Suche nach dem Gegengift
    .target Kor'ghan
    .isOnQuest 812
step << Hunter/Shaman
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Brecht die Quest Heilmittel benötigt ab. Dies entfernt den Timer der Quest, aber ihr könnt sie dennoch machen|r
    .abandon 812 >>Brecht die Quest Heilmittel benötigt ab
    .isOnQuest 812
step << Priest
    #optional
    #loop
    .goto 1411/1,-4162.63,943.30,40,0--c:Durotar,41.61,24.54
    .goto 1411/1,-4073.80,953.87,40,0--c:Durotar,39.93,24.24
    .goto 1411/1,-4026.21,866.10,40,0--c:Durotar,39.03,26.73
    .goto 1411/1,-4035.20,687.38--c:Durotar,39.20,31.80
    .xp 9+3150 >>Farmt auf 3150+/6500 bis Stufe 9
step
    #completewith RazorTurnins2
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0,1
step
    #completewith RazorTurnins2
    .subzone 362 >>Reist nach Klingenhügel
    .isQuestComplete 806
    .cooldown item,6948,<0
step
    #requires NeedACure
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .vendor >> Verkauft Müll
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .collect 1179,15,828,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,828,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Gebt die Quest Dunkle Stürme ab
    .accept 828 >>Akzeptiert die Quest Margoz
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    --.accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .accept 2983 >>Akzeptiert die Quest Ruf des Feuers
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Akzeptiert die Quest Verhexung der Schwäche << Troll
    .accept 5660 >> Akzeptiert die Quest Berührung der Schwäche << Undead
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .train 13549 >> Trainiere deine Klassenfähigkeiten
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orc/Troll) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 das Brachland << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step << Shaman/Hunter
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step << Shaman
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
    .isOnQuest 840,2983,1522,2984,1523
step << Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << Shaman
    #completewith next
    >>Tötet |cRXP_ENEMY_Schaudermagenkrokilisk|r auf dem Weg. Plündert sie für |cRXP_LOOT_Krons Amulett|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Reist den Weg den Berg hinauf zu |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Seid vorsichtig und fallt nicht vom Berg. Der Weg ist sehr schmal. Ihr könntet sterben, wenn ihr fallt|r
step << Shaman
    #label CallofFire3
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Gebt die Quest Ruf des Feuers ab
    .accept 1525 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << skip --Shaman
    #completewith MargozTurnIn
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Hunter
    #completewith MargozTurnIn
    +Zähmt einen |cRXP_ENEMY_Siechstachelskorpid|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #completewith next
    .subzone 371 >>Reist zu Staubwindhöhle
step << Shaman
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Tötet |cRXP_ENEMY_Kultist der Burning Blade|r. Plündert sie für |cRXP_LOOT_Reagenzienbeutel|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4939.36,824.51,80,0
    .goto 1411/1,-4945.18,1101.92,50 >> Reist zu |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Gebt die Quest Margoz ab
    .accept 827 >>Akzeptiert die Quest Die Knochenhöhle
    .target Margoz
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4949.41,925.67,50,0
    .goto 1411/1,-4929.32,823.45,50,0
    .goto 1411/1,-4774.39,780.80,50 >> Reist zu Staubwindhöhle
    .isQuestTurnedIn 828
step << !Shaman !Hunter
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4749.01,822.39,12,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Plündert sie für |cRXP_LOOT_Senghalsband|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step
    #label Ravine
    #completewith next
    .subzone 370 >> Springt runter in den Staubwindklamm
step
    #loop
    .goto 1411/1,-4816.69,972.910,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    .goto 1411/1,-4816.69,972.910,40,0
    >>Tötet |cRXP_ENEMY_Wilde der Staubschwingen|r und |cRXP_ENEMY_Sturmhexe der Staubschwingen|r
    .use 277661 >>Plündert |cRXP_ENEMY_Sturmhexe der Staubschwingen|r für eine |T134336:0|t[|cRXP_LOOT_Matte Sturmkugel|r]. Benutzt sie, um die Quest anzunehmen
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .collect 277661,1,97281 --Dull Storm Orb (x1)
    .accept 97281 >>Akzeptiert die Quest Ein Sturm braut sich zusammen
step << skip
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #hardcore
    #completewith next
    .goto 1411/1,-4804.53,830.5,60,0
    .goto 1411/1,-4698.78,842.48,60,0
    .goto 1411/1,-4414.31,999.70,60 >> Reist durch die Höhle in Richtung |cRXP_FRIENDLY_Rezlak|r
step
    #label SecuringLinesTurnIn
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Gebt die Quest Sicherung der Linien ab
    .turnin 97281 >>Gebt die Quest Ein Sturm braut sich zusammen ab
    .accept 97282 >>Akzeptiert die Quest Elektrisierende Aussichten
    .target Rezlak
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4010.35,1031.42,0
    .goto 1411/1,-4217.09,1087.47,60,0
    .goto 1411/1,-4100.24,1113.2,60,0
    .goto 1411/1,-4108.7,1229.88,60,0
    .goto 1411/1,-4013.52,1209.08,60,0
    .goto 1411/1,-4010.35,1031.42,60,0
    >>Beendet das töten von |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Donnerechsen|r und |cRXP_ENEMY_Blitzechsen|r. Plündert sie für |cRXP_LOOT_Geladenes Donnerechsenorgan|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step
    #loop
    .goto 1411/1,-4248.400,972.300,0
    .goto 1411/1,-4117.500,747.200,0
    .goto 1411/1,-4248.400,972.300,40,0
    .goto 1411/1,-4117.500,747.200,40,0
    >>Tötet |cRXP_ENEMY_Halikor|r (elite). Plündert ihn für |T134061:0|t[|cRXP_LOOT_Halikors Huf|r]
    >>|cRXP_WARN_Das ist schwierig! Macht eine Gruppt, falls möglich. Er hat 800 Leben, aber sein Schaden ist bewältigbar. Überspringt diesen Schritt, wenn ihr ihn nicht töten könnt|r
    >>|cRXP_WARN_Er hat mindestens zwei verschiedene Spawnplätze im Donnergrat|r
    .collect 275723,1,96877 --Halikor's Hoof (x1)
    .accept 96877 >>Akzeptiert die Quest Halikors Huf
    .mob Halikor
step
    .goto 1411/1,-4047.300,918.400
    >>Tötet |cRXP_ENEMY_Donnerechsen|r und |cRXP_ENEMY_Blitzechsen|r. Plündert sie für |cRXP_LOOT_Geladenes Donnerechsenorgan|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step << skip
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto 1411/1,-4414.500,999.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 97282 >>Gebt die Quest Elektrisierende Aussichten ab
    .target Rezlak
step << Shaman/Hunter
    #completewith next
    .goto 1411/1,-4945.18,1101.92,50 >> Reist zu |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Gebt die Quest Margoz ab
    .accept 827 >>Akzeptiert die Quest Die Knochenhöhle
    .target Margoz
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4876.97,1452.310,60 >> Reist zur Knochenhöhle
step << Shaman/Hunter
    #completewith Gazzuz
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Sammelt Beute für |cRXP_LOOT_Senghalsband|r und für |cRXP_LOOT_Insignien des Lieutenants|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #label Gazzuz
    .goto 1411/1,-4701.42,1455.83
    >>Tötet |cRXP_ENEMY_Gazz'uz|r. Plündert ihn für |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r]
    >>|cRXP_WARN_Benutzt |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r] um die Quest zu starten|r
    >>|cRXP_WARN_Benutzt euren|r |T134712:0|t[Echt klebriger Leim] |cRXP_WARN_auf den|r |cRXP_ENEMY_Leerwandler|r |cRXP_WARN_, um Treffer zu vermeiden, und|r |T134829:0|t[Heiltränke] |cRXP_WARN_um die Gesundheit wiederherzustellen. Nutzt LoS (Sichtlinie), um|r |cRXP_ENEMY_Gazz'uz|r |cRXP_WARN_Schattenblitzen auszuweichen|r
    >>|cRXP_WARN_Ihr könnt zu Gewässern innerhalb der Höhle fliehen um dem|r Leerwandler|cRXP_ENEMY_ nach dem Töten von|r |cRXP_WARN_Gazz'uz|r |cRXP_ENEMY_zu entkommen|r
    >>|cRXP_WARN_Seid vorsichtig, da er SEHR schwierig ist. Ihr könnt diese Quest überspringen, falls nötig|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Akzeptiert die Quest Brennende Schatten
    .use 4903
	.unitscan Gazz'uz
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Sammelt Beute für |cRXP_LOOT_Senghalsband|r und für |cRXP_LOOT_Insignien des Lieutenants|r
    >>|cRXP_WARN_Überspringt die|r |cRXP_LOOT_Insignien des Lieutenants|r |cRXP_WARN_falls ihr pech mit den Drops habt|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #completewith Ravine
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Gebt die Quest Die Knochenhöhle ab
    .accept 829 >>Akzeptiert die Quest Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
step
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
step << !Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Trak'gen|r
    .vendor >> Verkaufe deinen trash
    .target Trak'gen
    .isQuestAvailable 97246
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Kauft|r |T135419:0|t[Scharfe Wurfaxt] |cRXP_BUY_von ihm|r
    .collect 3135,1,354,1 --Sharp Throwing Axe (200)
    .vendor >> Verkaufe deinen trash
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .money <0.03
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Legt die|r |T135421:0|t[Scharfe Wurfaxt] an |cRXP_WARN_wenn ihr Stufe 11 seid|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Gebt die Quest Verhexung der Schwäche ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Gebt die Quest Verhexung der Schwäche ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
step
    .goto 1454/1,-4460.000,1598.600
    .goto 1454/1,-4460.600,1584.300,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Er ist oben im Gebäude.|r
    .accept 97246 >>Akzeptiert die Quest Mahlzeit oder Spielzeit
    .target Thatog
step << Shaman
    .goto 1454/1,-4347.54,1634.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Kauft ein|r |T135154:0|t[Hirtenstab] |cRXP_BUY_von ihm|r
    .collect 854,1,924,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith NeeruFireblade
    +Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borstan|r
    .turnin 97246 >>Gebt die QuestMahlzeit oder Spielzeit ab
    .accept 97249 >>Akzeptiert die Quest Lieblingsessen
    .target Borstan
step
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Gebt die Quest Halikors Huf ab
    .target Kamari
    .isOnQuest 96877
step
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'geld|r
    .accept 97242 >>Akzeptiert die Quest Yelmaks Mischmasch
    .target Kor'geld
step
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Reist in Das Tal der Ehre
step
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Plündert die |cRXP_PICK_Handvoll Rohrkolben|r und |cRXP_PICK_Speergrasstecklinge|r im Wasser
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >> Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
    .xp <12,1
step
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Gebt die Quest Yelmaks Mischmasch ab
    .target Kor'geld
step
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Ihr müsst möglicherweise etwa 10 Sek. warten, bevor ihr diese Quest annehmen könnt|r
    .accept 97275 >>Akzeptiert die Quest Whuut Ding will Weile haben
    .target Yelmak
step
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Whuut|r
    .turnin 97275 >>Gebt die Quest Whuut Ding will Weile haben ab
    .target Whuut
step
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Gebt die Quest Lieblingsessen ab
    .target Migi
step
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thra|r
    .accept 97326 >>Akzeptiert die Quest Felsen zum Faulenzen
    .target Thra
step
    .goto 1454/1,-4293.600,1949.900
    >>Plündert die orangen |cRXP_PICK_Steine|r auf dem Boden
    >>|cRXP_WARN_Überspringt diese Quest, wenn es viel Konkurrenz gibt! Es gibt nicht so viele |cRXP_PICK_Steine|r und sie erscheinen nicht schnell wieder.|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Gebt die Quest Felsen zum Faulenzen ab
    .target Thra
    .isQuestComplete 97326
step << !Shaman !Hunter
    #label Admiralorders1
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step << !Shaman !Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .dungeon RFC
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Gebt die Quest Verborgene Feinde ab
    .accept 5727 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Gebt die Quest Verborgene Feinde ab
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
step
    .goto 1454/1,-4320.700,1750.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kareth|r
    .vendor >>Repariert euer Equip
    .target Kareth
    .isOnQuest 829
step << Rogue
    .goto 1454/1,-4280.21,1773.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Akzeptiert die Quest Die Shattered-Hand << Orc Rogue/Troll Rogue
    .target Therzok
step << Shaman/Hunter
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|rSprecht mit|cRXP_FRIENDLY_ Kor'ghan|r
    .turnin 813 >>Gebt die Quest Suche nach dem Gegengift ab
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto 1454/1,-4362.13,1834.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
step << Shaman/Hunter
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .turnin 832 >>Gebt die Quest Brennende Schatten ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Betretet Der Flammenschlund
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Sterbt und spawnt beim |cRXP_FRIENDLY_Geistheiler|r
step << !Shaman !Hunter
    --#hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Betretet Der Flammenschlund
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Sterbt und spawnt beim |cRXP_FRIENDLY_Geistheiler|r
step << Shaman/Hunter
    --#hardcore
    #completewith FoundtheCure
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    #label FoundtheCure
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .turnin 812 >>Gebt die Quest Heilmittel benötigt ab
    .target Rhinag
step << Shaman/Hunter
    .goto 1411/1,-3802.55,650.72,50,0
    .goto 1411/1,-3803.08,503.38,50,0
    .goto 1411/1,-3783.51,238.65,50,0
    .goto 1411/1,-3774.53,150.88,50,0
    .goto 1411/1,-3797.79,317.260
    >>Reist südlich entlang des Flusses zur Fernwacht
    >>Tötet |cRXP_ENEMY_Schaudermagenkrokilisk|r auf dem Weg. Plündert sie für |cRXP_LOOT_Krons Amulett|r
    >>|cRXP_WARN_Überspringt und brecht die Quest ab, falls es nicht droppt.|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Gebt die Quest Verloren, aber nicht vergessen ab
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step << Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Gebt die Quest Ak'zeloth ab
    .accept 924 >>Akzeptiert die Quest Die Dämonensaat
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Shaman/Hunter
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_Plündert den|r |T134095:0|t[Fehlerhaften Kraftstein] |cRXP_WARN_neben|r |cRXP_FRIENDLY_Ak'zeloth|r|cRXP_WARN_. Dieser Gegenstand hat einen 30-Minuten-Timer, daher müsst ihr schnell sein|r
    .turnin 926 >>Gebt die Quest Fehlerhafter Kraftstein ab
    .isOnQuest 924
step << !Shaman !Hunter
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Plündert sie für |cRXP_LOOT_Insignien des Lieutenants|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .dungeon RFC
    .isOnQuest 5726
step << !Shaman !Hunter
    #label ZeptoUC1
    .goto 1411/1,-4648.55,1321.88,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    >>|cRXP_WARN_Beschwört Wasser, während ihr wartet|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Brecht die Quest Verloren, aber nicht vergessen ab
]])


RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 10-12 Tirisfal (Orc/Troll)
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Silberwald << !Hunter !Shaman !Tauren !Skyborne !Undead

step
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Lauf nach Brill
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Terrence|r
    .accept 96895 >>Akzeptiert die Quest Der Argentumabgesandte
    .target Deathguard Terrence
step << Warrior
    #optional
    .abandon 1505 >>Brecht die Quest Veteran Uzzek ab
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Brecht die Quest Weg der Verteidigung ab
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Akzeptiert die Quest Gespräch mit Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ageron|r im Gasthaus
    .accept 1478 >> Akzeptiert die Quest Halgars Beschwörung
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r im Gasthaus
    .accept 1885 >>Akzeptiert die Quest Mennet Carkad
    .target Marion Call
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Gebt die Quest Gespräch mit Dillinger ab
    .accept 1819 >> Akzeptiert die Quest Ulag der Spalter
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Klickt auf den|r |cRXP_WARN_Mausoleum Auslöser|r |cRXP_WARN_am Boden. Dies wird|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_beschwören. Tötet ihn|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Gebt die Quest Ulag der Spalter ab
    .accept 1820 >> Akzeptiert die Quest Gespräch mit Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .target Apothecary Johaan
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Gebt die Quest Gespräch mit Coleman ab
    .target Coleman Farthing
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.train 588 >>Erlernt |T135926:0|t[Inneres Feuer]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 145 >> Erlernt |T135812:0|t[Feuerball Rang 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Erlernt |T132223:0|t[Überwältigen]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 1766 >> Erlernt |T132219:0|t[Tritt]
    .target Marion Call
    .money <0.08
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Erlernt |T136168:0|t[Lebenslinie]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock/Hunter
    .vendor >> Verkauft Müll
    .collect 1179,20,96897,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,96897,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,96897,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,96897,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .accept 356 >>Akzeptiert die Quest Patrouille zur Rückendeckung
    .target Deathguard Linnea
    .maxlevel 11
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Gebt die Quest Der Argentumabgesandte ab
    .accept 96897 >>Akzeptiert die Quest Der Kult der Verdammten
    .accept 96898 >>Akzeptiert die Quest Überreste des Krieges
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Tötet |cRXP_ENEMY_Dunkler Vollstrecker|r und |cRXP_ENEMY_Dunkler Neophyt|r. Plündert sie für |cRXP_LOOT_Nekrotisches Kristallfragment|r
    >>|cRXP_LOOT_Nekrotisches Kristallfragment|r |cRXP_WARN_kann auch vom Boden gelootet werden|r
    >>|cRXP_WARN_Passt auf! Diese Mobs schlagen hart zu. |cRXP_ENEMY_Dunkler Vollstrecker|r haben auch eine sofort wirkende Fähigkeit mit 50-70 Schaden.|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    #label HorrorsandSpirits
    #loop
	.goto 1420/0,-324.55,2000.48,0
	.goto 1420/0,-324.55,2000.48,50,0
	.goto 1420/0,-330.88,2040.84,50,0
	.goto 1420/0,-359.34,2073.38,50,0
	.goto 1420/0,-421.25,2070.07,50,0
	.goto 1420/0,-464.63,2070.37,50,0
	.goto 1420/0,-516.14,2017.05,50,0
	.goto 1420/0,-466.44,1986.02,50,0
	.goto 1420/0,-436.61,1951.670,50,0
	.goto 1420/0,-355.28,1970.35,50,0
    >>Tötet |cRXP_ENEMY_Blutender Schrecken|r und |cRXP_ENEMY_Wandernder Geist|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Gebt die Quest Der Kult der Verdammten ab
    .turnin 96898 >>Gebt die Quest Überreste des Krieges ab
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson
step
    #label LinneaTurnin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Gebt die Quest Patrouille zur Rückendeckung ab
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #completewith UCflightpath1
    .goto 1420/0,240.75,1877.57,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << !Undead
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Gebt die Quest Mennet Carkad ab
    .accept 1886 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Archibald|r im Kriegsviertel
    .train 201 >>Erlernt 1h Schwerter
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto 1458/0,308.89,1667.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Kauft ein|r |T135154:0|t[Hirtenstab] |cRXP_BUY_von ihm|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Cain|r
    >>|cRXP_BUY_Kauft Drei|r |T133884:0|t[Murloc Augen] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
    .zoneskip Undercity,1
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r im Magierviertel
    .turnin 1478 >> Gebt die Quest Halgars Beschwörung ab
    .accept 1473 >> Akzeptiert die Quest Kreatur der Leere
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Tirisfal Glades
step << Warlock
    #optional
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Beute |cRXP_PICK_Perrines Truhe|r für |T133733:0|t[Egalins Zauberfoliant]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    .goto 1420/0,726.06,1801.95
    >>Beute |cRXP_PICK_Perrine's Truhe|r auf dem Boden für |T133733:0|t[Egalins Zauberfoliant]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >> Reist zurück nach Unterstadt durch die Kanalisation
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r im Magierviertel
    .turnin 1473 >> Gebt die Quest Kreatur der Leere ab
    .accept 1471 >> Die Bindung annehmen
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,41.99,1704.480
    .cast 9221 >>|cRXP_WARN_Benutzt die|r |T134416:0|t[Runen der Beschwörung] |cRXP_WARN_am Beschwörungskreis|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Gebt die Quest Die Bindung ab
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Priest
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Erlernt |T136244:0|t[Verzauberkunst]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.24,1681.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Josef|r
    .train 3908 >> Erlernt |T136249:0|t[Schneiderei]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Verarbeitet all euren|r |T132889:0|t[Leinenstoff] |cRXP_WARN_in|r |T132890:0|t[Leinenstoffballen]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Josef|r
    .train 7623 >> Erlernt |T132662:0|t[Braune Leinenrobe]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Kauft|r |T132891:0|t[Grober Faden] |cRXP_BUY_von ihr|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Stellt so viele|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_wie ihr könnt|r her
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Kauft|r |T133942:0|t[Kupferrute] |cRXP_BUY_und|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Entzaubert alle|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_die ihr gemacht habt und erstellt eine|r |T135225:0|t[Runenverzierte Kupferrute]
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Erlernt |T135139:0|t[Geringer Magiezauberstab]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Stellt einen |r |T135139:0|t[Geringer Magiezauberstab] her
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +Legt |T135139:0|t[Geringer Magiezauberstab] |cRXP_WARN_an|r
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carolyn|r
    .train 1766 >> Erlernt |T132219:0|t[Tritt]
    .target Carolyn Ward
    .xp <12,1
    .money <0.08
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anastasia|r
    .train 145 >> Erlernt |T135812:0|t[Feuerball Rang 3]
    .target Anastasia Hartwell
    .xp <12,1
    .money <0.08
step << Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Richard|r
    .train 755 >> Erlernt |T136168:0|t[Lebenslinie]
    .target Richard Kerwin
    .xp <12,1
    .money <0.08
step << Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lazarus|r
	.train 588 >>Erlernt |T135926:0|t[Inneres Feuer]
    .target Father Lazarus
    .xp <12,1
    .money <0.08
step << Warrior
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baltus Fowler|r
    .train 7384 >>Erlernt |T132223:0|t[Überwältigen]
    .target Baltus Fowler
    .xp <12,1
    .money <0.08
step
    #optional
    .abandon 806 >> Brecht die Quest Dunkle Stürme ab.
step
    #optional
    .abandon 408 >> Brecht die Quest Die Familiengruft ab.
step << Warrior
    #optional
    .abandon 1821 >> Brecht die Quest Agamand-Erbstücke ab
step
    #optional
    .abandon 375 >>Brecht die Quest Die Kälte des Todes ab
step
    #label LeaveUndercity3
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Silverpine Forest
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Reist nach Silberwald
    .zoneskip Silverpine Forest
]])
